import React from 'react'
import LeftColumn from './LeftColumn'

describe('<LeftColumn />', () => {
  it('renders', () => {
    // see: https://on.cypress.io/mounting-react
    cy.mount(<LeftColumn />)
  })
})