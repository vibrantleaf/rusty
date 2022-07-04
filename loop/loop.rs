fn main(){
    let mut count = 0u32;
    println!("Let's count until 20!");
    loop {
        if count == 21 {
            println!("breaking");
            break;
        }
        else{
        println!("{}", count);
        count += 1;
        }
    }
}