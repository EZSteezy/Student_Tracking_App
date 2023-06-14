import React from 'react'
import LeftColumnNames from './LeftColumnNames'

describe('<LeftColumnNames />', () => {
  it('renders', () => {
    // see: https://on.cypress.io/mounting-react
    cy.mount(<LeftColumnNames />)
  })
})