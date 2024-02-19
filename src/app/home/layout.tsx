import { ReactNode } from "react";

export default async function HomeLayout({
  children,
}: {
  children: ReactNode;
}) {
  return (
    <div className="container mx-auto">
      Home Layout
      {children}
    </div>
  );
}
