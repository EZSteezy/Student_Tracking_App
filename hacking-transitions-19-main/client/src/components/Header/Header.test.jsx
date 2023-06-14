import React from 'react';
import { render, screen } from '@testing-library/react';
import Header from './Header';
import { expect, describe, it } from "vitest";


describe('Header', () => {
  it('renders the title', () => {
    render(<Header />);
    const titleElement = screen.getAllByText('Hacking Transitions');
    expect(titleElement).toBeDefined();
  });

  it('renders the Galvanize logo', () => {
    render(<Header />);
    const logoElement = screen.getAllByAltText('Galvanize Logo');
    expect(logoElement).toBeDefined();
  });

  it('renders the greeting with the username', () => {
    render(<Header username="Galvanize Staff Member" />);
    const greetingElement = screen.getAllByText('Hello, Galvanize Staff Member');
    expect(greetingElement).toBeDefined();
  });
});