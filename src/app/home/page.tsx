import Image from "next/image";

export default function Home() {
  return (
    <main>
      <div className="p-6 max-w-xl mx-auto bg-amber-300 rounded-xl shadow-lg flex items-center space-x-4">
        <div className="shrink-0"></div>
        <div>
          <div className="text-xl font-medium text-black">tailwind Test</div>
          <p className="text-slate-500 text-lg">great !</p>
        </div>
      </div>
    </main>
  );
}
