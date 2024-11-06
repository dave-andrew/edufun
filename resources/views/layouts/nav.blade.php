@php
    use Illuminate\Support\Str;
@endphp

<nav class="w-100 d-flex p-2 align-items-center bg-white shadow">
    <img src="https://picsum.photos/200" alt="" width="50" height="50">
    <div class="d-flex gap-4 w-100 justify-content-end align-items-center pe-4">
        <div>
            <a href="{{ route('home') }}" 
               class="text-decoration-none {{ Str::contains(request()->route()->getName(), 'home') ? 'text-primary' : 'text-black' }}">
                <b>Home</b>
            </a>
        </div>
        
        <!-- Dropdown for Category -->
        <div class="dropdown">
            <a href="#" 
               id="dropdownMenuButton"
               data-bs-toggle="dropdown"
               aria-expanded="false"
               class="text-decoration-none btn dropdown-toggle {{ Str::contains(request()->route()->getName(), 'category') ? 'text-primary' : 'text-black' }}">
                <b>Category</b>
            </a>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <li><a class="dropdown-item" href="{{ route('category', ['categories' => 'Interactive Multimedia']) }}">Interactive Multimedia</a></li>
                <li><a class="dropdown-item" href="{{ route('category', ['categories' => 'Software Engineering']) }}">Software Engineering</a></li>
            </ul>
        </div>
        
        <div>
            <a href="{{ route('writers') }}" 
               class="text-decoration-none {{ Str::contains(request()->route()->getName(), 'writers') ? 'text-primary' : 'text-black' }}">
                <b>Writers</b>
            </a>
        </div>
        <div>
            <a href="{{ route('about') }}" 
               class="text-decoration-none {{ Str::contains(request()->route()->getName(), 'about') ? 'text-primary' : 'text-black' }}">
                <b>About Us</b>
            </a>
        </div>
        <div>
            <a href="{{ route('popular') }}" 
               class="text-decoration-none {{ Str::contains(request()->route()->getName(), 'popular') ? 'text-primary' : 'text-black' }}">
                <b>Popular</b>
            </a>
        </div>
    </div>
</nav>
