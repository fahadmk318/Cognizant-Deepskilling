import "./App.css";

import BookDetails, { books } from "./BookDetails";
import BlogDetails, { blogs } from "./BlogDetails";
import CourseDetails, { courses } from "./CourseDetails";

function App() {

    const showBooks = true;
    const showBlogs = true;
    const showCourses = true;

    return (

        <div className="container">

            <div className="section">

                <h1>Course Details</h1>

                {showCourses && <CourseDetails courses={courses} />}

            </div>

            <div className="section">

                <h1>Book Details</h1>

                {showBooks && <BookDetails books={books} />}

            </div>

            <div className="section">

                <h1>Blog Details</h1>

                {showBlogs && <BlogDetails blogs={blogs} />}

            </div>

        </div>

    );

}

export default App;