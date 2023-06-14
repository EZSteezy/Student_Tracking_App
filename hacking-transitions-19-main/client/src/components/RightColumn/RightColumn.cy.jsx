import React from 'react'
import RightColumn from './RightColumn'

describe('<RightColumn />', () => {
  it('renders', () => {
    // see: https://on.cypress.io/mounting-react
    cy.mount(<RightColumn />)
  })
})