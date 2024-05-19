import { Route, Routes } from "react-router-dom";
import { Landing } from "./components/Landing";
import { Home } from "./components/Home";

export const App = () => {
  return (
    <div>
      <Routes>
        <Route path="/" element={<Landing />} />
        <Route path="/home" element={<Home />} />
      </Routes>
    </div>
  )
}