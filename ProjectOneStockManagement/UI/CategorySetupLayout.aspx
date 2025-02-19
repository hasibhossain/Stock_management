﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CategorySetupLayout.aspx.cs" Inherits="ProjectOneStockManagement.UI.CategorySetupLayout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2 class="text-center bg-success custom-h2">Category Setup</h2>
    <div class="container">
        <br />
        <br />
        <div>
            <div class="row form-group justify-content-center">
                <asp:Label ID="Label2" CssClass="col-sm-3 col-form-label text-right" runat="server" Text="Category:"></asp:Label>
                <div class="col-sm-6 d-flex">
                    <asp:TextBox ID="textBoxAddCategory" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="textBoxAddCategory" ErrorMessage="Category Name is required"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row form-group justify-content-center">
                <div class="col-sm-6 offset-sm-3">
                    <asp:Button ID="btnSaveCategoryName" CssClass="btn btn-success" runat="server" Text="Save" OnClick="btnSaveCategoryName_Click" />
                    <br />
                    <asp:Label ID="lblCategorySaveStatus" CssClass="text-success" runat="server"></asp:Label>
                </div>
            </div>
        </div>
            
        
        
        <div class="row justify-content-center">
            <div class="col-md-6 d-flex justify-content-center">
                <asp:GridView CssClass="table" ID="gridViewCategoryList" runat="server" CellPadding="4" Font-Size="Medium" Width="400px" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
                <Columns>
                    <asp:TemplateField HeaderText="SL">
                        <ItemTemplate>
                            <%#Eval("ID") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <%#Eval("Name") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            </div>
        </div>
        
    </div>
</asp:Content>
