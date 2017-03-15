﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class BusinessRule
{
    public int BusinessRuleKey { get; set; }
    public string BusinessRuleText { get; set; }
}

public partial class Contact
{
    public int ContactKey { get; set; }
    public string ContactNumber { get; set; }
    public Nullable<int> ContactTypeKey { get; set; }
    public Nullable<int> PersonKey { get; set; }

    public virtual ContactType ContactType { get; set; }
    public virtual Person Person { get; set; }
}

public partial class ContactType
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public ContactType()
    {
        this.Contacts = new HashSet<Contact>();
    }

    public int ContactTypeKey { get; set; }
    public string ContactTypeName { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Contact> Contacts { get; set; }
}

public partial class Donation
{
    public int DonationKey { get; set; }
    public Nullable<int> PersonKey { get; set; }
    public System.DateTime DonationDate { get; set; }
    public decimal DonationAmount { get; set; }
    public Nullable<System.Guid> DonationConfirmation { get; set; }

    public virtual Person Person { get; set; }
}

public partial class Employee
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Employee()
    {
        this.GrantReviews = new HashSet<GrantReview>();
        this.GrantReviewComments = new HashSet<GrantReviewComment>();
        this.Positions = new HashSet<Position>();
    }

    public int EmployeeKey { get; set; }
    public Nullable<int> PersonKey { get; set; }
    public System.DateTime EmployeeHireDate { get; set; }
    public Nullable<decimal> EmployeeAnnualSalary { get; set; }

    public virtual Person Person { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<GrantReview> GrantReviews { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<GrantReviewComment> GrantReviewComments { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Position> Positions { get; set; }
}

public partial class GrantRequest
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public GrantRequest()
    {
        this.GrantReviews = new HashSet<GrantReview>();
    }

    public int GrantRequestKey { get; set; }
    public System.DateTime GrantRequestDate { get; set; }
    public Nullable<int> PersonKey { get; set; }
    public Nullable<int> GrantTypeKey { get; set; }
    public string GrantRequestExplanation { get; set; }
    public Nullable<decimal> GrantRequestAmount { get; set; }

    public virtual GrantType GrantType { get; set; }
    public virtual Person Person { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<GrantReview> GrantReviews { get; set; }
}

public partial class GrantReview
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public GrantReview()
    {
        this.GrantReviewComments = new HashSet<GrantReviewComment>();
    }

    public int GrantReviewKey { get; set; }
    public System.DateTime GrantReviewDate { get; set; }
    public Nullable<int> GrantRequestKey { get; set; }
    public string GrantRequestStatus { get; set; }
    public Nullable<decimal> GrantAllocationAmount { get; set; }
    public Nullable<int> EmployeeKey { get; set; }

    public virtual Employee Employee { get; set; }
    public virtual GrantRequest GrantRequest { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<GrantReviewComment> GrantReviewComments { get; set; }
}

public partial class GrantReviewComment
{
    public int GrantReviewCommentKey { get; set; }
    public Nullable<int> GrantReviewKey { get; set; }
    public Nullable<int> EmployeeKey { get; set; }
    public System.DateTime GrantReviewCommentDate { get; set; }
    public string GrantReviewNote { get; set; }

    public virtual Employee Employee { get; set; }
    public virtual GrantReview GrantReview { get; set; }
}

public partial class GrantType
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public GrantType()
    {
        this.GrantRequests = new HashSet<GrantRequest>();
    }

    public int GrantTypeKey { get; set; }
    public string GrantTypeName { get; set; }
    public decimal GrantTypeMaximum { get; set; }
    public decimal GrantTypeLifetimeMaximum { get; set; }
    public string GrantTypeDescription { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<GrantRequest> GrantRequests { get; set; }
}

public partial class LoginHistoryTable
{
    public int LoginHistoryKey { get; set; }
    public Nullable<int> PersonKey { get; set; }
    public System.DateTime LoginTimeStamp { get; set; }

    public virtual Person Person { get; set; }
}

public partial class Person
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Person()
    {
        this.Contacts = new HashSet<Contact>();
        this.Donations = new HashSet<Donation>();
        this.Employees = new HashSet<Employee>();
        this.GrantRequests = new HashSet<GrantRequest>();
        this.LoginHistoryTables = new HashSet<LoginHistoryTable>();
        this.PersonAddresses = new HashSet<PersonAddress>();
    }

    public int PersonKey { get; set; }
    public string PersonLastName { get; set; }
    public string PersonFirstName { get; set; }
    public string PersonEmail { get; set; }
    public byte[] PersonPassWord { get; set; }
    public System.DateTime PersonEntryDate { get; set; }
    public Nullable<int> PersonPassWordSeed { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Contact> Contacts { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Donation> Donations { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Employee> Employees { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<GrantRequest> GrantRequests { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<LoginHistoryTable> LoginHistoryTables { get; set; }
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<PersonAddress> PersonAddresses { get; set; }
}

public partial class PersonAddress
{
    public int PersonAddressKey { get; set; }
    public string PersonAddressApt { get; set; }
    public string PersonAddressStreet { get; set; }
    public string PersonAddressCity { get; set; }
    public string PersonAddressState { get; set; }
    public string PersonAddressZip { get; set; }
    public Nullable<int> PersonKey { get; set; }

    public virtual Person Person { get; set; }
}

public partial class Position
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public Position()
    {
        this.Employees = new HashSet<Employee>();
    }

    public int PositionKey { get; set; }
    public string PositionName { get; set; }
    public string PositionDescription { get; set; }

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
    public virtual ICollection<Employee> Employees { get; set; }
}

public partial class sysdiagram
{
    public string name { get; set; }
    public int principal_id { get; set; }
    public int diagram_id { get; set; }
    public Nullable<int> version { get; set; }
    public byte[] definition { get; set; }
}

public partial class vw_employees
{
    public string last { get; set; }
    public string first { get; set; }
    public System.DateTime hiredate { get; set; }
    public Nullable<decimal> salary { get; set; }
    public string position { get; set; }
}

public partial class fx_employeegrants_Result
{
    public int GRantrEQUEStKeY { get; set; }
    public Nullable<int> pERSONkeY { get; set; }
    public System.DateTime grAnTrEQUesTDAtE { get; set; }
    public string GRaNtRequEstexplAnaTion { get; set; }
    public Nullable<decimal> GrANtalLOcAtIONAmoUNt { get; set; }
}

public partial class sp_helpdiagramdefinition_Result
{
    public Nullable<int> version { get; set; }
    public byte[] definition { get; set; }
}

public partial class sp_helpdiagrams_Result
{
    public string Database { get; set; }
    public string Name { get; set; }
    public int ID { get; set; }
    public string Owner { get; set; }
    public int OwnerID { get; set; }
}
