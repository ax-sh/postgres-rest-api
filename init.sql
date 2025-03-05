-- Create users table
CREATE TABLE IF NOT EXISTS users (
                                     id SERIAL PRIMARY KEY,
                                     username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
                             );

-- Insert some initial data
INSERT INTO public.users (username, email)
VALUES
    ('admin', 'admin@example.com'),
    ('user1', 'user1@example.com')
ON CONFLICT (username) DO NOTHING;