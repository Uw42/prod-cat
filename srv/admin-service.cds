using my.domain from '../db/schema';

@path: '/admin'
service AdminService {
  entity Products as projection on domain.Products;
  entity Suppliers as projection on domain.Suppliers;
  entity Orders as projection on domain.Orders;
}