describe('template spec', () => {
  it('passes', () => {
    cy.visit('http://localhost:3000')

    cy.get('.leftColumnArrow').each(($arrow) => {
      cy.wrap($arrow).click()
      cy.get('.leftColumnNames').should('be.visible')

      cy.wrap($arrow).click()
      cy.get('.leftColumnNames').should('not.exist')
    })

    cy.get('.LcCohort').each(($cohort) => {
      const cohortText = $cohort.text().trim(); // Extract the text from $cohort

      cy.wrap($cohort).click()

      cy.get('.cohortInfoContainer')
        .should('be.visible')
        .find('.cohortInfoName')
        .should('have.text', `${cohortText}X`)
        .get('.cohortClose').click()
        .should('not.exist')

    })
  })
})
