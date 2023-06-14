// studentDetail.spec.js

// Import the necessary Cypress commands
import { mount } from 'cypress-react-unit-test';

// Import the component to be tested
import StudentDetail from './StudentDetail';

describe('StudentDetail component', () => {
  it('displays student details correctly', () => {
    // Define mock data for the test
    const studentdata = [
      {
        firstname: 'John',
        lastname: 'Doe',
        dutystatus: 'Active',
        base: 'Installation',
        location: 'Location',
        email: 'test@example.com',
        phonenumber: '1234567890',
        ets_date: '2023-05-19',
        branch_id: 10,
      },
    ];
    const branchdata = [
      {
        id: 10,
        name: 'Branch Name',
      },
    ];

    // Mount the component with the mock data
    mount(
      <LeftColumnContext.Provider value={{ studentdata, branchdata }}>
        <StudentDetail />
      </LeftColumnContext.Provider>
    );

    // Assertions
    cy.get('#details-0').should('contain', 'Name');
    cy.get('#details-1').should('contain', 'Branch');
    cy.get('#details-4').should('contain', 'Installation');
    cy.get('#details-5').should('contain', 'Location');
    cy.get('#details-6').should('contain', 'Phone Number');
    cy.get('#details-7').should('contain', 'Email');
    cy.get('#details-8').should('contain', 'ETS Date');
    cy.get('#details-9').should('contain', 'Outprocessing Status');

    cy.get('.column2').eq(0).should('contain', 'John Doe');
    cy.get('.column2').eq(1).should('contain', 'Branch Name');
    cy.get('.column2').eq(2).should('contain', 'Installation');
    cy.get('.column2').eq(3).should('contain', 'Location');
    cy.get('.column2').eq(4).should('contain', '(123)-456-7890');
    cy.get('.column2').eq(5).should('contain', 'test@example.com');
    cy.get('.column2').eq(6).should('contain', '5/19/2023');
    cy.get('.circle-student').should('have.attr', 'id').and('not.be.empty');
  });
});
