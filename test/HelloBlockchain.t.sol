// SPDX-License-Identifier: MIT
// خط ۱: لایسنس فایل تست (MIT = آزاد برای استفاده)

pragma solidity ^0.8.19;
// خط ۲: نسخه‌ی سالیدیتی مورد نیاز (۰.۸.۱۹ یا بالاتر)

import {Test} from "forge-std/Test.sol";
// خط ۳: وارد کردن کتابخانه‌ی استاندارد تست Foundry (شامل توابعی مثل assertEq)

import {HelloBlockchain} from "../contracts/HelloBlockchain.sol";
// خط ۴: وارد کردن قرارداد اصلی که می‌خوایم تستش کنیم (از پوشه‌ی contracts)

contract HelloBlockchainTest is Test {
// خط ۵: تعریف قرارداد تست که از Test ارث‌بری می‌کنه (یعنی به ابزارهای تست دسترسی داره)

    HelloBlockchain public myContract;
    // خط ۶: متغیری برای نگه‌داری نمونه‌ی قرارداد اصلی (مثل رزرو جای پارک برای ماشین تحت آزمایش)

    function setUp() public {
    // خط ۷: تابع ویژه‌ی Foundry که قبل از هر تست به صورت خودکار اجرا می‌شه (مثل آماده‌سازی میز کار)

        myContract = new HelloBlockchain();
        // خط ۸: ساختن و دیپلوی کردن قرارداد اصلی روی محیط تست و ذخیره‌ی آدرسش در myContract

    }
    // خط ۹: پایان تابع setUp

    function test_InitialMessage() public {
    // خط ۱۰: اولین تابع تست (Foundry هر تابعی که با test_ شروع بشه رو به عنوان تست می‌شناسه)

        assertEq(myContract.message(), "Hello Blockchain");
        // خط ۱۱: چک کردن اینکه پیام اولیه‌ی قرارداد دقیقاً "Hello Blockchain" باشه

    }
    // خط ۱۲: پایان تابع تست اول

    function test_SetMessage() public {
    // خط ۱۳: دومین تابع تست (برای بررسی تابع setMessage)

        myContract.setMessage("New Message");
        // خط ۱۴: صدا زدن تابع setMessage با متن جدید "New Message"

        assertEq(myContract.message(), "New Message");
        // خط ۱۵: چک کردن اینکه پیام واقعاً به "New Message" تغییر کرده باشه

    }
    // خط ۱۶: پایان تابع تست دوم

}
// خط ۱۷: پایان کل قرارداد تست