Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_utilities?download=true
inline.NumInlined: 3058
inline.NumDeleted: 873
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0
@.str.263 = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1
@.str.264 = private unnamed_addr constant [98 x i8] c"base64_is_valid(\22ABCDEFGHIJKLMNOPQRSTUVWXYZ\22 \22abcdefghijklmnopqrstuvwxyz\22 \220123456789+/\22) == true\00", align 1
@.str.265 = private unnamed_addr constant [65 x i8] c"/+9876543210zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA\00", align 1
@.str.266 = private unnamed_addr constant [98 x i8] c"base64_is_valid(\22/+9876543210\22 \22zyxwvutsrqponmlkjihgfedcba\22 \22ZYXWVUTSRQPONMLKJIHGFEDCBA\22) == true\00", align 1
@.str.267 = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+.\00", align 1
@.str.268 = private unnamed_addr constant [99 x i8] c"base64_is_valid(\22ABCDEFGHIJKLMNOPQRSTUVWXYZ\22 \22abcdefghijklmnopqrstuvwxyz\22 \220123456789+.\22) == false\00", align 1
@.str.269 = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789 /\00", align 1
@.str.270 = private unnamed_addr constant [99 x i8] c"base64_is_valid(\22ABCDEFGHIJKLMNOPQRSTUVWXYZ\22 \22abcdefghijklmnopqrstuvwxyz\22 \220123456789 /\22) == false\00", align 1
@.str.271 = private unnamed_addr constant [28 x i8] c"base64_is_valid(\22\22) == true\00", align 1
@.str.272 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.273 = private unnamed_addr constant [30 x i8] c"base64_is_valid(\22A\22) == false\00", align 1
@.str.274 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.275 = private unnamed_addr constant [30 x i8] c"base64_is_valid(\22AA\22) == true\00", align 1
@.str.276 = private unnamed_addr constant [4 x i8] c"AAA\00", align 1
@.str.277 = private unnamed_addr constant [31 x i8] c"base64_is_valid(\22AAA\22) == true\00", align 1
@.str.278 = private unnamed_addr constant [5 x i8] c"AAAA\00", align 1
@.str.279 = private unnamed_addr constant [32 x i8] c"base64_is_valid(\22AAAA\22) == true\00", align 1
@.str.280 = private unnamed_addr constant [6 x i8] c"AAAAA\00", align 1
@.str.281 = private unnamed_addr constant [34 x i8] c"base64_is_valid(\22AAAAA\22) == false\00", align 1
@.str.282 = private unnamed_addr constant [7 x i8] c"AAAAAA\00", align 1
@.str.283 = private unnamed_addr constant [34 x i8] c"base64_is_valid(\22AAAAAA\22) == true\00", align 1
@.str.284 = private unnamed_addr constant [8 x i8] c"AAAAAAA\00", align 1
@.str.285 = private unnamed_addr constant [35 x i8] c"base64_is_valid(\22AAAAAAA\22) == true\00", align 1
@.str.286 = private unnamed_addr constant [9 x i8] c"AAAAAAAA\00", align 1
@.str.287 = private unnamed_addr constant [36 x i8] c"base64_is_valid(\22AAAAAAAA\22) == true\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c"A===\00", align 1
@.str.289 = private unnamed_addr constant [33 x i8] c"base64_is_valid(\22A===\22) == false\00", align 1
@.str.290 = private unnamed_addr constant [5 x i8] c"AA==\00", align 1
@.str.291 = private unnamed_addr constant [32 x i8] c"base64_is_valid(\22AA==\22) == true\00", align 1
@.str.292 = private unnamed_addr constant [5 x i8] c"AAA=\00", align 1
@.str.293 = private unnamed_addr constant [32 x i8] c"base64_is_valid(\22AAA=\22) == true\00", align 1
@.str.294 = private unnamed_addr constant [9 x i8] c"AAAA====\00", align 1
@.str.295 = private unnamed_addr constant [37 x i8] c"base64_is_valid(\22AAAA====\22) == false\00", align 1
@.str.296 = private unnamed_addr constant [9 x i8] c"AAAAA===\00", align 1
@.str.297 = private unnamed_addr constant [37 x i8] c"base64_is_valid(\22AAAAA===\22) == false\00", align 1
@.str.298 = private unnamed_addr constant [9 x i8] c"AAAAAA==\00", align 1
@.str.299 = private unnamed_addr constant [36 x i8] c"base64_is_valid(\22AAAAAA==\22) == true\00", align 1
@.str.300 = private unnamed_addr constant [9 x i8] c"AAAAAAA=\00", align 1
@.str.301 = private unnamed_addr constant [36 x i8] c"base64_is_valid(\22AAAAAAA=\22) == true\00", align 1
@.str.302 = private unnamed_addr constant [10 x i8] c"AAAAAAA==\00", align 1
@.str.303 = private unnamed_addr constant [38 x i8] c"base64_is_valid(\22AAAAAAA==\22) == false\00", align 1
@.str.304 = private unnamed_addr constant [11 x i8] c"AAAAAAA===\00", align 1
@.str.305 = private unnamed_addr constant [39 x i8] c"base64_is_valid(\22AAAAAAA===\22) == false\00", align 1
@.str.306 = private unnamed_addr constant [12 x i8] c"AAAAAAA====\00", align 1
@.str.307 = private unnamed_addr constant [40 x i8] c"base64_is_valid(\22AAAAAAA====\22) == false\00", align 1
@.str.308 = private unnamed_addr constant [10 x i8] c"AAAAAAAA=\00", align 1
@.str.309 = private unnamed_addr constant [38 x i8] c"base64_is_valid(\22AAAAAAAA=\22) == false\00", align 1
@.str.310 = private unnamed_addr constant [11 x i8] c"AAAAAAAA==\00", align 1
@.str.311 = private unnamed_addr constant [39 x i8] c"base64_is_valid(\22AAAAAAAA==\22) == false\00", align 1
@.str.312 = private unnamed_addr constant [12 x i8] c"AAAAAAAA===\00", align 1
@.str.313 = private unnamed_addr constant [40 x i8] c"base64_is_valid(\22AAAAAAAA===\22) == false\00", align 1
@.str.314 = private unnamed_addr constant [13 x i8] c"AAAAAAAA====\00", align 1
@.str.315 = private unnamed_addr constant [41 x i8] c"base64_is_valid(\22AAAAAAAA====\22) == false\00", align 1
@.str.316 = private unnamed_addr constant [4 x i8] c"AAB\00", align 1
@.str.317 = private unnamed_addr constant [32 x i8] c"base64_is_valid(\22AAB\22) == false\00", align 1
@.str.318 = private unnamed_addr constant [4 x i8] c"AAE\00", align 1
@.str.319 = private unnamed_addr constant [31 x i8] c"base64_is_valid(\22AAE\22) == true\00", align 1
@.str.320 = private unnamed_addr constant [4 x i8] c"AAQ\00", align 1
@.str.321 = private unnamed_addr constant [31 x i8] c"base64_is_valid(\22AAQ\22) == true\00", align 1
@.str.322 = private unnamed_addr constant [5 x i8] c"AAB=\00", align 1
@.str.323 = private unnamed_addr constant [33 x i8] c"base64_is_valid(\22AAB=\22) == false\00", align 1
@.str.324 = private unnamed_addr constant [5 x i8] c"AAE=\00", align 1
@.str.325 = private unnamed_addr constant [32 x i8] c"base64_is_valid(\22AAE=\22) == true\00", align 1
@.str.326 = private unnamed_addr constant [5 x i8] c"AAQ=\00", align 1
@.str.327 = private unnamed_addr constant [32 x i8] c"base64_is_valid(\22AAQ=\22) == true\00", align 1
@.str.328 = private unnamed_addr constant [9 x i8] c"AAAAAAB=\00", align 1
@.str.329 = private unnamed_addr constant [37 x i8] c"base64_is_valid(\22AAAAAAB=\22) == false\00", align 1
@.str.330 = private unnamed_addr constant [9 x i8] c"AAAAAAE=\00", align 1
@.str.331 = private unnamed_addr constant [36 x i8] c"base64_is_valid(\22AAAAAAE=\22) == true\00", align 1
@.str.332 = private unnamed_addr constant [9 x i8] c"AAAAAAQ=\00", align 1
@.str.333 = private unnamed_addr constant [36 x i8] c"base64_is_valid(\22AAAAAAQ=\22) == true\00", align 1
@.str.334 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.335 = private unnamed_addr constant [31 x i8] c"base64_is_valid(\22AB\22) == false\00", align 1
@.str.336 = private unnamed_addr constant [3 x i8] c"AE\00", align 1
@.str.337 = private unnamed_addr constant [31 x i8] c"base64_is_valid(\22AE\22) == false\00", align 1
@.str.338 = private unnamed_addr constant [3 x i8] c"AQ\00", align 1
@.str.339 = private unnamed_addr constant [30 x i8] c"base64_is_valid(\22AQ\22) == true\00", align 1
@.str.340 = private unnamed_addr constant [5 x i8] c"AB==\00", align 1
@.str.341 = private unnamed_addr constant [33 x i8] c"base64_is_valid(\22AB==\22) == false\00", align 1
@.str.342 = private unnamed_addr constant [5 x i8] c"AE==\00", align 1
@.str.343 = private unnamed_addr constant [33 x i8] c"base64_is_valid(\22AE==\22) == false\00", align 1
@.str.344 = private unnamed_addr constant [5 x i8] c"AQ==\00", align 1
@.str.345 = private unnamed_addr constant [32 x i8] c"base64_is_valid(\22AQ==\22) == true\00", align 1
@.str.346 = private unnamed_addr constant [9 x i8] c"AAAAAB==\00", align 1
@.str.347 = private unnamed_addr constant [37 x i8] c"base64_is_valid(\22AAAAAB==\22) == false\00", align 1
@.str.348 = private unnamed_addr constant [9 x i8] c"AAAAAE==\00", align 1
@.str.349 = private unnamed_addr constant [37 x i8] c"base64_is_valid(\22AAAAAE==\22) == false\00", align 1
@.str.350 = private unnamed_addr constant [9 x i8] c"AAAAAQ==\00", align 1
@.str.351 = private unnamed_addr constant [36 x i8] c"base64_is_valid(\22AAAAAQ==\22) == true\00", align 1
@.str.352 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.353 = private unnamed_addr constant [30 x i8] c"base64_is_valid(\22.\22) == false\00", align 1
@.str.354 = private unnamed_addr constant [3 x i8] c"A.\00", align 1
@.str.355 = private unnamed_addr constant [31 x i8] c"base64_is_valid(\22A.\22) == false\00", align 1
@.str.356 = private unnamed_addr constant [4 x i8] c"AA.\00", align 1
@.str.357 = private unnamed_addr constant [32 x i8] c"base64_is_valid(\22AA.\22) == false\00", align 1
@.str.358 = private unnamed_addr constant [5 x i8] c"AAA.\00", align 1
@.str.359 = private unnamed_addr constant [33 x i8] c"base64_is_valid(\22AAA.\22) == false\00", align 1
@.str.360 = private unnamed_addr constant [6 x i8] c"AAAA.\00", align 1
@.str.361 = private unnamed_addr constant [34 x i8] c"base64_is_valid(\22AAAA.\22) == false\00", align 1
@.str.362 = private unnamed_addr constant [7 x i8] c"AAAAA.\00", align 1
@.str.363 = private unnamed_addr constant [35 x i8] c"base64_is_valid(\22AAAAA.\22) == false\00", align 1
@.str.364 = private unnamed_addr constant [4 x i8] c"A.A\00", align 1
@.str.365 = private unnamed_addr constant [32 x i8] c"base64_is_valid(\22A.A\22) == false\00", align 1
@.str.366 = private unnamed_addr constant [5 x i8] c"AA.A\00", align 1
@.str.367 = private unnamed_addr constant [33 x i8] c"base64_is_valid(\22AA.A\22) == false\00", align 1
@.str.368 = private unnamed_addr constant [6 x i8] c"AAA.A\00", align 1
@.str.369 = private unnamed_addr constant [34 x i8] c"base64_is_valid(\22AAA.A\22) == false\00", align 1
@.str.370 = private unnamed_addr constant [7 x i8] c"AAAA.A\00", align 1
@.str.371 = private unnamed_addr constant [35 x i8] c"base64_is_valid(\22AAAA.A\22) == false\00", align 1
@.str.372 = private unnamed_addr constant [8 x i8] c"AAAAA.A\00", align 1
@.str.373 = private unnamed_addr constant [36 x i8] c"base64_is_valid(\22AAAAA.A\22) == false\00", align 1
@.str.374 = private unnamed_addr constant [5 x i8] c"\E1AAA\00", align 1
@.str.375 = private unnamed_addr constant [38 x i8] c"base64_is_valid(\22\\xE1\22\22AAA\22) == false\00", align 1
@.str.376 = private unnamed_addr constant [4 x i8] c"A=A\00", align 1
@.str.377 = private unnamed_addr constant [32 x i8] c"base64_is_valid(\22A=A\22) == false\00", align 1
@.str.378 = private unnamed_addr constant [5 x i8] c"AA=A\00", align 1
@.str.379 = private unnamed_addr constant [33 x i8] c"base64_is_valid(\22AA=A\22) == false\00", align 1
@.str.380 = private unnamed_addr constant [6 x i8] c"AAA=A\00", align 1
@.str.381 = private unnamed_addr constant [34 x i8] c"base64_is_valid(\22AAA=A\22) == false\00", align 1
@.str.382 = private unnamed_addr constant [7 x i8] c"AAAA=A\00", align 1
@.str.383 = private unnamed_addr constant [35 x i8] c"base64_is_valid(\22AAAA=A\22) == false\00", align 1
@.str.384 = private unnamed_addr constant [8 x i8] c"AAAAA=A\00", align 1
@.str.385 = private unnamed_addr constant [36 x i8] c"base64_is_valid(\22AAAAA=A\22) == false\00", align 1
@.str.386 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.387 = private unnamed_addr constant [33 x i8] c"sanitizeDirName(\22a\22, \22~\22) == \22a\22\00", align 1
@.str.388 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.389 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.390 = private unnamed_addr constant [35 x i8] c"sanitizeDirName(\22  \22, \22~\22) == \22__\22\00", align 1
@.str.391 = private unnamed_addr constant [4 x i8] c" a \00", align 1
@.str.392 = private unnamed_addr constant [4 x i8] c"_a_\00", align 1
@.str.393 = private unnamed_addr constant [37 x i8] c"sanitizeDirName(\22 a \22, \22~\22) == \22_a_\22\00", align 1
@.str.394 = private unnamed_addr constant [5 x i8] c"COM1\00", align 1
@.str.395 = private unnamed_addr constant [6 x i8] c"~COM1\00", align 1
@.str.396 = private unnamed_addr constant [40 x i8] c"sanitizeDirName(\22COM1\22, \22~\22) == \22~COM1\22\00", align 1
@.str.397 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.398 = private unnamed_addr constant [6 x i8] c"_COM1\00", align 1
@.str.399 = private unnamed_addr constant [40 x i8] c"sanitizeDirName(\22COM1\22, \22:\22) == \22_COM1\22\00", align 1
@.str.400 = private unnamed_addr constant [6 x i8] c"cOm\C2\B2\00", align 1
@.str.401 = private unnamed_addr constant [7 x i8] c"~cOm\C2\B2\00", align 1
@.str.402 = private unnamed_addr constant [54 x i8] c"sanitizeDirName(u8\22cOm\\u00B2\22, \22~\22) == u8\22~cOm\\u00B2\22\00", align 1
@.str.403 = private unnamed_addr constant [7 x i8] c"cOnIn$\00", align 1
@.str.404 = private unnamed_addr constant [8 x i8] c"~cOnIn$\00", align 1
@.str.405 = private unnamed_addr constant [44 x i8] c"sanitizeDirName(\22cOnIn$\22, \22~\22) == \22~cOnIn$\22\00", align 1
@.str.406 = private unnamed_addr constant [9 x i8] c" cOnIn$ \00", align 1
@.str.407 = private unnamed_addr constant [9 x i8] c"_cOnIn$_\00", align 1
@.str.408 = private unnamed_addr constant [47 x i8] c"sanitizeDirName(\22 cOnIn$ \22, \22~\22) == \22_cOnIn$_\22\00", align 1
@constinit = private unnamed_addr constant [8 x %"class.core::vector3d.50"] [%"class.core::vector3d.50" { i16 0, i16 10, i16 0 }, %"class.core::vector3d.50" { i16 1, i16 0, i16 0 }, %"class.core::vector3d.50" { i16 2, i16 0, i16 0 }, %"class.core::vector3d.50" { i16 -2, i16 0, i16 0 }, %"class.core::vector3d.50" { i16 0, i16 0, i16 3 }, %"class.core::vector3d.50" { i16 0, i16 0, i16 -3 }, %"class.core::vector3d.50" zeroinitializer, %"class.core::vector3d.50" { i16 6, i16 0, i16 0 }], align 2
@.str.409 = private unnamed_addr constant [57 x i8] c"isBlockInSight({-1, 0, 0}, cam_pos, cam_dir, fov, range)\00", align 1
@.str.410 = private unnamed_addr constant [20 x i8] c"http://example.com/\00", align 1
@.str.411 = private unnamed_addr constant [47 x i8] c"\1B(c@#aaa)http://\1B(c@#fff)example.com\1B(c@#aaa)/\00", align 1
@.str.412 = private unnamed_addr constant [103 x i8] c"result == (\22\\x1b(c@\22 \22#aaa\22 \22)\22 \22http://\22 \22\\x1b(c@\22 \22#fff\22 \22)\22 \22example.com\22 \22\\x1b(c@\22 \22#aaa\22 \22)\22 \22/\22)\00", align 1
@.str.413 = private unnamed_addr constant [46 x i8] c"https://u:p@wikipedi\D0\B0.org:1234/heIIoll?a=b#c\00", align 1
@.str.414 = private unnamed_addr constant [95 x i8] c"\1B(c@#aaa)https://u:p@\1B(c@#fff)wikipedi\1B(c@#faa)%d0%b0\1B(c@#fff).org\1B(c@#aaa):1234/heIIoll?a=b#c\00", align 1
@.str.415 = private unnamed_addr constant [181 x i8] c"result == (\22\\x1b(c@\22 \22#aaa\22 \22)\22 \22https://u:p@\22 \22\\x1b(c@\22 \22#fff\22 \22)\22 \22wikipedi\22 \22\\x1b(c@\22 \22#faa\22 \22)\22 \22%d0%b0\22 \22\\x1b(c@\22 \22#fff\22 \22)\22 \22.org\22 \22\\x1b(c@\22 \22#aaa\22 \22)\22 \22:1234/heIIoll?a=b#c\22)\00", align 1
@.str.416 = private unnamed_addr constant [23 x i8] c"An\C3\A4sthesieausr\C3\BCstung\00", align 1
@.str.417 = private unnamed_addr constant [29 x i8] c"sanitize_untrusted(t1) == t1\00", align 1
@.str.418 = private unnamed_addr constant [10 x i8] c"stop\00here\00", align 1
@.str.419 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.420 = private unnamed_addr constant [33 x i8] c"sanitize_untrusted(t2) == \22stop\22\00", align 1
@.str.421 = private unnamed_addr constant [18 x i8] c"\01\08\13\1Dhello\0D\0A\09world\00", align 1
@.str.422 = private unnamed_addr constant [13 x i8] c"hello\0A\09world\00", align 1
@.str.423 = private unnamed_addr constant [75 x i8] c"sanitize_untrusted(\22\\x01\\x08\\x13\\x1dhello\\r\\n\\tworld\22) == \22hello\\n\\tworld\22\00", align 1
@.str.424 = private unnamed_addr constant [30 x i8] c"some \1B(T@whatever)text\1BE here\00", align 1
@.str.425 = private unnamed_addr constant [29 x i8] c"sanitize_untrusted(t3) == t3\00", align 1
@.str.428 = private unnamed_addr constant [79 x i8] c"str_starts_with(t3_sanitized, \22some \22) && str_ends_with(t3_sanitized, \22 here\22)\00", align 1
@.str.429 = private unnamed_addr constant [47 x i8] c"t3_sanitized.find('\\x1b') == std::string::npos\00", align 1
@.str.430 = private unnamed_addr constant [6 x i8] c"\1B[31m\00", align 1
@.str.431 = private unnamed_addr constant [5 x i8] c"[31m\00", align 1
@.str.432 = private unnamed_addr constant [41 x i8] c"sanitize_untrusted(\22\\x1b[31m\22) == \22[31m\22\00", align 1
@.str.433 = private unnamed_addr constant [2 x i8] c"\1B\00", align 1
@.str.434 = private unnamed_addr constant [39 x i8] c"sanitize_untrusted(\22\\x1b\22, keep) == \22\22\00", align 1
@.str.435 = private unnamed_addr constant [3 x i8] c"\1B(\00", align 1
@.str.436 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.437 = private unnamed_addr constant [41 x i8] c"sanitize_untrusted(\22\\x1b(\22, keep) == \22(\22\00", align 1
@.str.438 = private unnamed_addr constant [24 x i8] c"read_seed(\22123\22) == 123\00", align 1
@.str.439 = private unnamed_addr constant [6 x i8] c"0x123\00", align 1
@.str.440 = private unnamed_addr constant [28 x i8] c"read_seed(\220x123\22) == 0x123\00", align 1
@.str.441 = private unnamed_addr constant [24 x i8] c"read_seed(\22hello\22) != 0\00", align 1
@.str.442 = private unnamed_addr constant [11 x i8] c"helloworld\00", align 1
@.str.443 = private unnamed_addr constant [4 x i8] c"42x\00", align 1
@.str.445 = private unnamed_addr constant [6 x i8] c"42.25\00", align 1
@.str.446 = private unnamed_addr constant [4 x i8] c"3e3\00", align 1
@.str.449 = private unnamed_addr constant [104 x i8] c"std::isnan(my_string_to_double(my_double_to_string( std::numeric_limits<double>::quiet_NaN())).value())\00", align 1
@.str.450 = private unnamed_addr constant [22 x i8] c"total != 0 || fail_ok\00", align 1
@infostream = external thread_local global %class.LogStream, align 8
@.str.451 = private unnamed_addr constant [21 x i8] c"memory size in MB = \00", align 1
@.str.452 = private unnamed_addr constant [13 x i8] c"total >= 130\00", align 1
@.str.453 = private unnamed_addr constant [24 x i8] c"total < 8 * 1024 * 1024\00", align 1
@_ZTV13TestUtilities = dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13TestUtilities, ptr @_ZN13TestUtilities8runTestsEP8IGameDef, ptr @_ZN13TestUtilities7getNameEv] }, align 8
@_ZTI13TestUtilities = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13TestUtilities, ptr @_ZTI8TestBase }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13TestUtilities = dso_local constant [16 x i8] c"13TestUtilities\00", align 1
@_ZTI8TestBase = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS8TestBase }, comdat, align 8
@_ZTS8TestBase = linkonce_odr dso_local constant [10 x i8] c"8TestBase\00", comdat, align 1
@_ZTV8TestBase = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI8TestBase, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZZN11TestManager14getTestModulesEvE17m_modules_to_test = linkonce_odr dso_local global %"class.std::vector.63" zeroinitializer, comdat, align 8
@_ZGVZN11TestManager14getTestModulesEvE17m_modules_to_test = linkonce_odr dso_local global i64 0, comdat, align 8
@.str.455 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.457 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.458 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.461 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.462 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.463 = private unnamed_addr constant [54 x i8] c"isBlockInSight(data[2], cam_pos, cam_dir, fov, range)\00", align 1
@.str.464 = private unnamed_addr constant [55 x i8] c"!isBlockInSight(data[3], cam_pos, cam_dir, fov, range)\00", align 1
@.str.465 = private unnamed_addr constant [55 x i8] c"!isBlockInSight(data[4], cam_pos, cam_dir, fov, range)\00", align 1
@.str.466 = private unnamed_addr constant [55 x i8] c"!isBlockInSight(data[5], cam_pos, cam_dir, fov, range)\00", align 1
@.str.467 = private unnamed_addr constant [54 x i8] c"isBlockInSight(data[6], cam_pos, cam_dir, fov, range)\00", align 1
@.str.468 = private unnamed_addr constant [55 x i8] c"!isBlockInSight(data[7], cam_pos, cam_dir, fov, range)\00", align 1
@.str.469 = private unnamed_addr constant [36 x i8] c"!my_string_to_double(s).has_value()\00", align 1
@.str.470 = private unnamed_addr constant [16 x i8] c"got.has_value()\00", align 1
@.str.471 = private unnamed_addr constant [17 x i8] c"*got == expected\00", align 1
@_ZTISt19bad_optional_access = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19bad_optional_access, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSSt19bad_optional_access = linkonce_odr dso_local constant [24 x i8] c"St19bad_optional_access\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVSt19bad_optional_access = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt19bad_optional_access, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt19bad_optional_accessD0Ev, ptr @_ZNKSt19bad_optional_access4whatEv] }, comdat, align 8
@.str.472 = private unnamed_addr constant [20 x i8] c"bad optional access\00", align 1
@.str.473 = private unnamed_addr constant [15 x i8] c"*got == number\00", align 1
@.str.474 = private unnamed_addr constant [14 x i8] c"TestUtilities\00", align 1
@.str.475 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE3$_0" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_0" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_0" = internal constant [43 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE3$_0\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE3$_1" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_1" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_1" = internal constant [43 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE3$_1\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE3$_2" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_2" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_2" = internal constant [43 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE3$_2\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE3$_3" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_3" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_3" = internal constant [43 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE3$_3\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE3$_4" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_4" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_4" = internal constant [43 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE3$_4\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE3$_5" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_5" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_5" = internal constant [43 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE3$_5\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE3$_6" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_6" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_6" = internal constant [43 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE3$_6\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE3$_7" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_7" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_7" = internal constant [43 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE3$_7\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE3$_8" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_8" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_8" = internal constant [43 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE3$_8\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE3$_9" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_9" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE3$_9" = internal constant [43 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE3$_9\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_10" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_10" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_10" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_10\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_11" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_11" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_11" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_11\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_12" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_12" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_12" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_12\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_13" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_13" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_13" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_13\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_14" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_14" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_14" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_14\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_15" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_15" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_15" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_15\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_16" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_16" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_16" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_16\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_17" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_17" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_17" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_17\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_18" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_18" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_18" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_18\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_19" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_19" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_19" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_19\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_20" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_20" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_20" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_20\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_21" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_21" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_21" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_21\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_22" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_22" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_22" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_22\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_23" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_23" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_23" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_23\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_24" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_24" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_24" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_24\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_25" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_25" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_25" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_25\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_26" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_26" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_26" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_26\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_27" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_27" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_27" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_27\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_28" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_28" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_28" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_28\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_29" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_29" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_29" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_29\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_30" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_30" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_30" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_30\00", align 1
@"_ZTIZN13TestUtilities8runTestsEP8IGameDefE4$_31" = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_31" }, align 8
@"_ZTSZN13TestUtilities8runTestsEP8IGameDefE4$_31" = internal constant [44 x i8] c"ZN13TestUtilities8runTestsEP8IGameDefE4$_31\00", align 1
@.str.477 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_test_utilities.cpp, ptr null }]

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8TestBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV8TestBase, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !22
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TestUtilities8runTestsEP8IGameDef(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree readnone captures(none) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 12 uses
  %3 = alloca %"class.std::function", align 8     ; 12 uses
  %4 = alloca %"class.std::function", align 8     ; 12 uses
  %5 = alloca %"class.std::function", align 8     ; 12 uses
  %6 = alloca %"class.std::function", align 8     ; 12 uses
  %7 = alloca %"class.std::function", align 8     ; 12 uses
  %8 = alloca %"class.std::function", align 8     ; 12 uses
  %9 = alloca %"class.std::function", align 8     ; 12 uses
  %10 = alloca %"class.std::function", align 8    ; 12 uses
  %11 = alloca %"class.std::function", align 8    ; 12 uses
  %12 = alloca %"class.std::function", align 8    ; 12 uses
  %13 = alloca %"class.std::function", align 8    ; 12 uses
  %14 = alloca %"class.std::function", align 8    ; 12 uses
  %15 = alloca %"class.std::function", align 8    ; 12 uses
  %16 = alloca %"class.std::function", align 8    ; 12 uses
  %17 = alloca %"class.std::function", align 8    ; 12 uses
  %18 = alloca %"class.std::function", align 8    ; 12 uses
  %19 = alloca %"class.std::function", align 8    ; 12 uses
  %20 = alloca %"class.std::function", align 8    ; 12 uses
  %21 = alloca %"class.std::function", align 8    ; 12 uses
  %22 = alloca %"class.std::function", align 8    ; 12 uses
  %23 = alloca %"class.std::function", align 8    ; 12 uses
  %24 = alloca %"class.std::function", align 8    ; 12 uses
  %25 = alloca %"class.std::function", align 8    ; 12 uses
  %26 = alloca %"class.std::function", align 8    ; 12 uses
  %27 = alloca %"class.std::function", align 8    ; 12 uses
  %28 = alloca %"class.std::function", align 8    ; 12 uses
  %29 = alloca %"class.std::function", align 8    ; 12 uses
  %30 = alloca %"class.std::function", align 8    ; 12 uses
  %31 = alloca %"class.std::function", align 8    ; 12 uses
  %32 = alloca %"class.std::function", align 8    ; 12 uses
  %33 = alloca %"class.std::function", align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = ptrtoint ptr %0 to i64                   ; 32 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8
  store i64 %i.a, ptr %2, align 8, !tbaa !24
  store ptr @"_ZNSt17_Function_handlerIFvvEZN13TestUtilities8runTestsEP8IGameDefE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.c, align 8, !tbaa !77
  store ptr @"_ZNSt17_Function_handlerIFvvEZN13TestUtilities8runTestsEP8IGameDefE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.b, align 8, !tbaa !78
  invoke void @_ZN8TestBase7runTestEPKcOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.ct

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #32
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.k, align 8
  store i64 %i.a, ptr %3, align 8, !tbaa !24
  store ptr @"_ZNSt17_Function_handlerIFvvEZN13TestUtilities8runTestsEP8IGameDefE3$_1E9_M_invokeERKSt9_Any_data", ptr %i.j, align 8, !tbaa !77
  store ptr @"_ZNSt17_Function_handlerIFvvEZN13TestUtilities8runTestsEP8IGameDefE3$_1E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.i, align 8, !tbaa !78
  invoke void @_ZN8TestBase7runTestEPKcOSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.1, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.cw

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !78   ; 2 uses
  %.not.i35 = icmp eq ptr %i.l, null
  br i1 %.not.i35, label %_ZNSt14_Function_baseD2Ev.exit36, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit36 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
begin_hunk_1_@_ZN13TestUtilities13testLowercaseEv:bb.a
  %i.kk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %_ZNSolsEPFRSoS_E.exit135 unwind label %bb.ak, !inline_history !0 ; 2 uses

_ZNSolsEPFRSoS_E.exit135:                         ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit134
  %i.kl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, ptr noundef nonnull @.str.52, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136: ; preds = %_ZNSolsEPFRSoS_E.exit135
  %i.km = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kk, ptr noundef nonnull @.str.58, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137 unwind label %bb.ak ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136
  %i.kn = call ptr @__cxa_allocate_exception(i64 72) #31 ; 3 uses
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(112) %11)
          to label %bb.ah unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread

bb.ah:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.kn, ptr noundef nonnull align 8 %12, ptr noundef nonnull @.str.33, i32 noundef 184)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  invoke void @__cxa_throw(ptr nonnull %i.kn, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.ap unwind label %bb.al

bb.aj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread165
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ak:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136, %_ZNSolsEPFRSoS_E.exit135, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit134, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133, %_ZNSolsEPFRSoS_E.exit132, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit131, %bb.ag
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit137
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.ai, %bb.ah
  %.0 = phi i1 [ false, %bb.ai ], [ true, %bb.ah ] ; 2 uses
  %i.kr = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ks = load ptr, ptr %12, align 8, !tbaa !21   ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ku = icmp eq ptr %i.ks, %i.kt
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %bb.al
  %i.kv = load i64, ptr %i.kt, align 8, !tbaa !22
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.ks, i64 noundef %i.kw) #30
  br i1 %.0, label %bb.am, label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %bb.al
  br i1 %.0, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %.pn45168 = phi { ptr, i32 } [ %i.kq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.thread ], [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ]
  call void @__cxa_free_exception(ptr %i.kn) #31
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %bb.am, %bb.ak
  %.pn45.pn = phi { ptr, i32 } [ %.pn45168, %bb.am ], [ %i.kr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ], [ %i.kp, %bb.ak ], [ %i.kr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %11) #31
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj
  %.pn45.pn.pn = phi { ptr, i32 } [ %.pn45.pn, %bb.an ], [ %i.ko, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.kx = load ptr, ptr %10, align 8, !tbaa !21   ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.hr
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.ao
  %i.kz = load i64, ptr %i.hr, align 8, !tbaa !22
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.la) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %common.resume

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130
  %i.lb = icmp eq ptr %i.ja, %i.hr
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread
  %i.lc = load i64, ptr %i.hr, align 8, !tbaa !22
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.ld) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  ret void

bb.ap:                                            ; preds = %bb.ai, %bb.y, %bb.o, %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #8 align 2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TestUtilities8testTrimEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
.critedge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = tail call i32 @isspace(i32 noundef 100) #34
  %.not.i.i51 = icmp eq i32 %i.a, 0
  br i1 %.not.i.i51, label %.critedge.i.i53, label %.lr.ph.i.i49.1

.lr.ph.i.i49.1:                                   ; preds = %.critedge.i.i
  %i.b = tail call i32 @isspace(i32 noundef 105) #34
  %.not.i.i51.1 = icmp eq i32 %i.b, 0
  br i1 %.not.i.i51.1, label %.critedge.i.i53, label %.lr.ph.i.i49.2

.lr.ph.i.i49.2:                                   ; preds = %.lr.ph.i.i49.1
  %i.c = tail call i32 @isspace(i32 noundef 114) #34
  %.not.i.i51.2 = icmp eq i32 %i.c, 0
  br i1 %.not.i.i51.2, label %.critedge.i.i53, label %.lr.ph.i.i49.3

.lr.ph.i.i49.3:                                   ; preds = %.lr.ph.i.i49.2
  %i.d = tail call i32 @isspace(i32 noundef 116) #34
  %.not.i.i51.3 = icmp eq i32 %i.d, 0
  br i1 %.not.i.i51.3, label %.critedge.i.i53, label %.lr.ph.i.i49.4

.lr.ph.i.i49.4:                                   ; preds = %.lr.ph.i.i49.3
  %i.e = tail call i32 @isspace(i32 noundef 95) #34
  %.not.i.i51.4 = icmp eq i32 %i.e, 0
  br i1 %.not.i.i51.4, label %.critedge.i.i53, label %.lr.ph.i.i49.5

.lr.ph.i.i49.5:                                   ; preds = %.lr.ph.i.i49.4
  %i.f = tail call i32 @isspace(i32 noundef 119) #34
  %.not.i.i51.5 = icmp eq i32 %i.f, 0
  br i1 %.not.i.i51.5, label %.critedge.i.i53, label %.lr.ph.i.i49.8

.lr.ph.i.i49.8:                                   ; preds = %.lr.ph.i.i49.5
  %i.g = tail call i32 @isspace(i32 noundef 104) #34
  %.not.i.i51.8 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i51.8, label %.critedge.i.i53, label %.lr.ph.i.i49.10

.lr.ph.i.i49.10:                                  ; preds = %.lr.ph.i.i49.8
  %i.h = tail call i32 @isspace(i32 noundef 103) #34
  %.not.i.i51.10 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i51.10, label %.critedge.i.i53, label %.lr.ph.i.i49.12

.lr.ph.i.i49.12:                                  ; preds = %.lr.ph.i.i49.10
  %i.i = tail call i32 @isspace(i32 noundef 97) #34
  %.not.i.i51.12 = icmp eq i32 %i.i, 0
  br i1 %.not.i.i51.12, label %.critedge.i.i53, label %.lr.ph.i.i49.13

.lr.ph.i.i49.13:                                  ; preds = %.lr.ph.i.i49.12
  %i.j = tail call i32 @isspace(i32 noundef 115) #34
  %.not.i.i51.13 = icmp eq i32 %i.j, 0
  %spec.select = select i1 %.not.i.i51.13, i64 13, i64 15
  br label %.critedge.i.i53

.critedge.i.i53:                                  ; preds = %.lr.ph.i.i49.13, %.lr.ph.i.i49.12, %.lr.ph.i.i49.10, %.lr.ph.i.i49.8, %.lr.ph.i.i49.5, %.lr.ph.i.i49.4, %.lr.ph.i.i49.3, %.lr.ph.i.i49.2, %.lr.ph.i.i49.1, %.critedge.i.i
  %.013.lcssa.i.i54 = phi i64 [ 5, %.lr.ph.i.i49.5 ], [ 0, %.critedge.i.i ], [ 1, %.lr.ph.i.i49.1 ], [ 12, %.lr.ph.i.i49.12 ], [ 2, %.lr.ph.i.i49.2 ], [ 8, %.lr.ph.i.i49.8 ], [ 3, %.lr.ph.i.i49.3 ], [ %spec.select, %.lr.ph.i.i49.13 ], [ 4, %.lr.ph.i.i49.4 ], [ 10, %.lr.ph.i.i49.10 ] ; 7 uses
  %.not = icmp eq i64 %.013.lcssa.i.i54, 15
  br i1 %.not, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit63, label %.lr.ph

bb.a:                                             ; preds = %.lr.ph
  %i.k = icmp samesign ugt i64 %i.l, %.013.lcssa.i.i54
  br i1 %i.k, label %.lr.ph, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit63, !llvm.loop !1

.lr.ph:                                           ; preds = %.critedge.i.i53, %bb.a
  %.0.i.i56209 = phi i64 [ %i.l, %bb.a ], [ 15, %.critedge.i.i53 ] ; 2 uses
  %i.l = add nsw i64 %.0.i.i56209, -1             ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr @.str.62, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !22
  %i.o = sext i8 %i.n to i32
  %i.p = tail call i32 @isspace(i32 noundef %i.o) #34
  %.not17.i.i62 = icmp eq i32 %i.p, 0
  br i1 %.not17.i.i62, label %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit63_crit_edge210, label %bb.a, !llvm.loop !1

._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit63_crit_edge210: ; preds = %.lr.ph
  br label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit63, !llvm.loop !1

_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit63: ; preds = %bb.a, %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit63_crit_edge210, %.critedge.i.i53
  %.0.lcssa.i.i58 = phi i64 [ %.0.i.i56209, %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit63_crit_edge210 ], [ %.013.lcssa.i.i54, %.critedge.i.i53 ], [ %.013.lcssa.i.i54, %bb.a ]
  %i.q = sub i64 %.0.lcssa.i.i58, %.013.lcssa.i.i54
  %i.r = xor i64 %.013.lcssa.i.i54, 15
  %.sroa.speculated.i.i.i59 = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.q)
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i59, 15
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i64, label %bb.b

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i64: ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit63
  %i.t = getelementptr inbounds nuw i8, ptr @.str.62, i64 %.013.lcssa.i.i54 ; 2 uses
  %i.u = load i64, ptr %i.t, align 1
  %i.v = xor i64 %i.u, 8388367032813513060
  %i.w = getelementptr i8, ptr %i.t, i64 7
  %i.x = load i64, ptr %i.w, align 1
  %i.y = xor i64 %i.x, 8319100080671910004
  %i.z = or i64 %i.v, %i.y
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i.i72.preheader, label %bb.b

.lr.ph.i.i72.preheader:                           ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i64
  %i.ad = tail call i32 @isspace(i32 noundef 10) #34
  %.not.i.i74 = icmp eq i32 %i.ad, 0              ; 2 uses
  br i1 %.not.i.i74, label %.critedge.i.i76, label %.lr.ph.i.i72.1

bb.b:                                             ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit63, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i64
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ae, ptr noundef nonnull align 8 %1, ptr noundef nonnull @.str.33, i32 noundef 191)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.aa unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread: ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.030 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !21    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.e
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.030, label %.sink.split, label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.030, label %.sink.split, label %bb.z

.lr.ph.i.i72.1:                                   ; preds = %.lr.ph.i.i72.preheader
  %i.am = tail call i32 @isspace(i32 noundef 32) #34
  %.not.i.i74.1 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i74.1, label %.critedge.i.i76, label %.lr.ph.i.i72.2

.lr.ph.i.i72.2:                                   ; preds = %.lr.ph.i.i72.1
  %i.an = tail call i32 @isspace(i32 noundef 9) #34
  %.not.i.i74.2 = icmp eq i32 %i.an, 0
  br i1 %.not.i.i74.2, label %.critedge.i.i76, label %.lr.ph.i.i72.3

.lr.ph.i.i72.3:                                   ; preds = %.lr.ph.i.i72.2
  %i.ao = tail call i32 @isspace(i32 noundef 13) #34
  %.not.i.i74.3 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i74.3, label %.critedge.i.i76, label %.lr.ph.i.i72.6

.lr.ph.i.i72.6:                                   ; preds = %.lr.ph.i.i72.3
  %i.ap = tail call i32 @isspace(i32 noundef 70) #34
  %.not.i.i74.6 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i74.6, label %.critedge.i.i76, label %.lr.ph.i.i72.7

.lr.ph.i.i72.7:                                   ; preds = %.lr.ph.i.i72.6
  %i.aq = tail call i32 @isspace(i32 noundef 111) #34
  %.not.i.i74.7 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i74.7, label %.critedge.i.i76, label %.lr.ph.i.i72.10

.lr.ph.i.i72.10:                                  ; preds = %.lr.ph.i.i72.7
  %i.ar = tail call i32 @isspace(i32 noundef 98) #34
  %.not.i.i74.10 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i74.10, label %.critedge.i.i76, label %.lr.ph.i.i72.11

.lr.ph.i.i72.11:                                  ; preds = %.lr.ph.i.i72.10
  %i.as = tail call i32 @isspace(i32 noundef 65) #34
  %.not.i.i74.11 = icmp eq i32 %i.as, 0
  br i1 %.not.i.i74.11, label %.critedge.i.i76, label %.lr.ph.i.i72.12

.lr.ph.i.i72.12:                                  ; preds = %.lr.ph.i.i72.11
  %i.at = tail call i32 @isspace(i32 noundef 82) #34
  %.not.i.i74.12 = icmp eq i32 %i.at, 0
  %spec.select201.a = select i1 %.not.i.i74.12, i64 12, i64 21
  br label %.critedge.i.i76

.critedge.i.i76:                                  ; preds = %.lr.ph.i.i72.12, %.lr.ph.i.i72.11, %.lr.ph.i.i72.10, %.lr.ph.i.i72.7, %.lr.ph.i.i72.6, %.lr.ph.i.i72.3, %.lr.ph.i.i72.2, %.lr.ph.i.i72.1, %.lr.ph.i.i72.preheader
  %.013.lcssa.i.i77 = phi i64 [ %spec.select201.a, %.lr.ph.i.i72.12 ], [ 0, %.lr.ph.i.i72.preheader ], [ 1, %.lr.ph.i.i72.1 ], [ 10, %.lr.ph.i.i72.10 ], [ 2, %.lr.ph.i.i72.2 ], [ 11, %.lr.ph.i.i72.11 ], [ 3, %.lr.ph.i.i72.3 ], [ 6, %.lr.ph.i.i72.6 ], [ 7, %.lr.ph.i.i72.7 ] ; 7 uses
  %i.au = icmp samesign ult i64 %.013.lcssa.i.i77, 21
  br i1 %i.au, label %.lr.ph213.a, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit86

bb.f:                                             ; preds = %.lr.ph213.a
  %i.av = icmp samesign ugt i64 %i.aw, %.013.lcssa.i.i77
  br i1 %i.av, label %.lr.ph213.a, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit86, !llvm.loop !1

.lr.ph213.a:                                      ; preds = %.critedge.i.i76, %bb.f
  %.0.i.i79212 = phi i64 [ %i.aw, %bb.f ], [ 21, %.critedge.i.i76 ] ; 2 uses
  %i.aw = add nsw i64 %.0.i.i79212, -1            ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr @.str.64, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !22
  %i.az = sext i8 %i.ay to i32
  %i.ba = tail call i32 @isspace(i32 noundef %i.az) #34
  %.not17.i.i85 = icmp eq i32 %i.ba, 0
  br i1 %.not17.i.i85, label %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit86_crit_edge215, label %bb.f, !llvm.loop !1

._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit86_crit_edge215: ; preds = %.lr.ph213.a
  br label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit86, !llvm.loop !1

_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit86: ; preds = %bb.f, %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit86_crit_edge215, %.critedge.i.i76
  %.0.lcssa.i.i81 = phi i64 [ %.0.i.i79212, %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit86_crit_edge215 ], [ %.013.lcssa.i.i77, %.critedge.i.i76 ], [ %.013.lcssa.i.i77, %bb.f ]
  %i.bb = sub i64 %.0.lcssa.i.i81, %.013.lcssa.i.i77
  %i.bc = sub nuw nsw i64 21, %.013.lcssa.i.i77
  %.sroa.speculated.i.i.i82 = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 %i.bb)
  %i.bd = icmp eq i64 %.sroa.speculated.i.i.i82, 7
  br i1 %i.bd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i87, label %bb.g

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i87: ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit86
  %i.be = getelementptr inbounds nuw i8, ptr @.str.64, i64 %.013.lcssa.i.i77 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 1
  %i.bg = xor i32 %i.bf, 544173894
  %i.bh = getelementptr i8, ptr %i.be, i64 3
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = xor i32 %i.bi, 1380016672
  %i.bk = or i32 %i.bg, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i95.preheader, label %bb.g

.lr.ph.i.i95.preheader:                           ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i87
  br i1 %.not.i.i74, label %.critedge.i.i99, label %.lr.ph.i.i95.1

bb.g:                                             ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit86, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i87
  %i.bo = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.bo, ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.33, i32 noundef 192)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.bo, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.aa unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread: ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.sink.split

bb.j:                                             ; preds = %bb.i, %bb.h
  %.034 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.bq = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.br = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %bb.j
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !22
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.034, label %.sink.split, label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.034, label %.sink.split, label %bb.z

.lr.ph.i.i95.1:                                   ; preds = %.lr.ph.i.i95.preheader
  %i.bw = tail call i32 @isspace(i32 noundef 32) #34
  %.not.i.i97.1 = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i97.1, label %.critedge.i.i99, label %.lr.ph.i.i95.2

.lr.ph.i.i95.2:                                   ; preds = %.lr.ph.i.i95.1
  %i.bx = tail call i32 @isspace(i32 noundef 9) #34
  %.not.i.i97.2 = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i97.2, label %.critedge.i.i99, label %.lr.ph.i.i95.3

.lr.ph.i.i95.3:                                   ; preds = %.lr.ph.i.i95.2
  %i.by = tail call i32 @isspace(i32 noundef 13) #34
  %.not.i.i97.3 = icmp eq i32 %i.by, 0
  %spec.select202 = select i1 %.not.i.i97.3, i64 3, i64 14
  br label %.critedge.i.i99

.critedge.i.i99:                                  ; preds = %.lr.ph.i.i95.3, %.lr.ph.i.i95.2, %.lr.ph.i.i95.1, %.lr.ph.i.i95.preheader
  %.013.lcssa.i.i100 = phi i64 [ 2, %.lr.ph.i.i95.2 ], [ 0, %.lr.ph.i.i95.preheader ], [ 1, %.lr.ph.i.i95.1 ], [ %spec.select202, %.lr.ph.i.i95.3 ] ; 6 uses
  %i.bz = icmp samesign ult i64 %.013.lcssa.i.i100, 14
  br i1 %i.bz, label %.lr.ph218.a, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit109

bb.k:                                             ; preds = %.lr.ph218.a
  %i.ca = icmp samesign ugt i64 %i.cb, %.013.lcssa.i.i100
  br i1 %i.ca, label %.lr.ph218.a, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit109, !llvm.loop !1

.lr.ph218.a:                                      ; preds = %.critedge.i.i99, %bb.k
  %.0.i.i102217 = phi i64 [ %i.cb, %bb.k ], [ 14, %.critedge.i.i99 ] ; 2 uses
  %i.cb = add nsw i64 %.0.i.i102217, -1           ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr @.str.66, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !22
  %i.ce = sext i8 %i.cd to i32
  %i.cf = tail call i32 @isspace(i32 noundef %i.ce) #34
  %.not17.i.i108 = icmp eq i32 %i.cf, 0
  br i1 %.not17.i.i108, label %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit109_crit_edge220, label %bb.k, !llvm.loop !1

._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit109_crit_edge220: ; preds = %.lr.ph218.a
  br label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit109, !llvm.loop !1

_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit109: ; preds = %bb.k, %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit109_crit_edge220, %.critedge.i.i99
  %.0.lcssa.i.i104 = phi i64 [ %.0.i.i102217, %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit109_crit_edge220 ], [ %.013.lcssa.i.i100, %.critedge.i.i99 ], [ %.013.lcssa.i.i100, %bb.k ]
  %i.cg = sub i64 %.0.lcssa.i.i104, %.013.lcssa.i.i100
  %i.ch = sub nuw nsw i64 14, %.013.lcssa.i.i100
  %.sroa.speculated.i.i.i105 = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.cg)
  %i.ci = icmp eq i64 %.sroa.speculated.i.i.i105, 0
  br i1 %i.ci, label %.lr.ph.i.i118.preheader, label %bb.l

.lr.ph.i.i118.preheader:                          ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit109
  %i.cj = tail call i32 @isspace(i32 noundef 32) #34
  %.not.i.i120 = icmp ne i32 %i.cj, 0             ; 3 uses
  br i1 %.not.i.i120, label %.lr.ph.i.i118.2, label %.critedge.i.i122

bb.l:                                             ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit109
  %i.ck = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.ck, ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.33, i32 noundef 193)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.ck, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.aa unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.thread: ; preds = %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.sink.split

bb.o:                                             ; preds = %bb.n, %bb.m
  %.032 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cn = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114: ; preds = %bb.o
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !22
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %.032, label %.sink.split, label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %.032, label %.sink.split, label %bb.z

.lr.ph.i.i118.2:                                  ; preds = %.lr.ph.i.i118.preheader
  %i.cs = tail call i32 @isspace(i32 noundef 97) #34
  %.not.i.i120.2 = icmp ne i32 %i.cs, 0           ; 2 uses
  %spec.select204 = select i1 %.not.i.i120.2, i64 3, i64 2
  br label %.critedge.i.i122

.critedge.i.i122:                                 ; preds = %.lr.ph.i.i118.2, %.lr.ph.i.i118.preheader
  %.not205 = phi i1 [ %.not.i.i120.2, %.lr.ph.i.i118.2 ], [ true, %.lr.ph.i.i118.preheader ]
  %.013.lcssa.i.i123 = phi i64 [ %spec.select204, %.lr.ph.i.i118.2 ], [ 0, %.lr.ph.i.i118.preheader ] ; 6 uses
  %.not232 = icmp eq i64 %.013.lcssa.i.i123, 3
  br i1 %.not232, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit132, label %.lr.ph223.a

bb.p:                                             ; preds = %.lr.ph223.a
  %i.ct = icmp samesign ugt i64 %i.cu, %.013.lcssa.i.i123
  br i1 %i.ct, label %.lr.ph223.a, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit132, !llvm.loop !1

.lr.ph223.a:                                      ; preds = %.critedge.i.i122, %bb.p
  %.0.i.i125222 = phi i64 [ %i.cu, %bb.p ], [ 3, %.critedge.i.i122 ] ; 2 uses
  %i.cu = add nsw i64 %.0.i.i125222, -1           ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr @.str.68, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !22
  %i.cx = sext i8 %i.cw to i32
  %i.cy = tail call i32 @isspace(i32 noundef %i.cx) #34
  %.not17.i.i131 = icmp eq i32 %i.cy, 0
  br i1 %.not17.i.i131, label %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit132_crit_edge225, label %bb.p, !llvm.loop !1

._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit132_crit_edge225: ; preds = %.lr.ph223.a
  br label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit132, !llvm.loop !1

_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit132: ; preds = %bb.p, %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit132_crit_edge225, %.critedge.i.i122
  %.0.lcssa.i.i127 = phi i64 [ %.0.i.i125222, %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit132_crit_edge225 ], [ %.013.lcssa.i.i123, %.critedge.i.i122 ], [ %.013.lcssa.i.i123, %bb.p ]
  %i.cz = sub i64 %.0.lcssa.i.i127, %.013.lcssa.i.i123
  %i.da = xor i64 %.013.lcssa.i.i123, 3
  %.sroa.speculated.i.i.i128 = tail call i64 @llvm.umin.i64(i64 %i.da, i64 %i.cz)
  %i.db = icmp ne i64 %.sroa.speculated.i.i.i128, 1
  %brmerge = or i1 %i.db, %.not205
  br i1 %brmerge, label %bb.q, label %.lr.ph.i.i141.preheader

.lr.ph.i.i141.preheader:                          ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit132
  %i.dc = tail call i32 @isspace(i32 noundef 97) #34
  %.not.i.i143 = icmp ne i32 %i.dc, 0             ; 3 uses
  %spec.select206 = select i1 %.not.i.i120, i64 4, i64 1
  %.013.lcssa.i.i146 = select i1 %.not.i.i143, i64 %spec.select206, i64 0 ; 5 uses
  %.not233 = and i1 %.not.i.i120, %.not.i.i143
  br i1 %.not233, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit155, label %.lr.ph228

bb.q:                                             ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit132
  %i.dd = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.thread

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.dd, ptr noundef nonnull align 8 %7, ptr noundef nonnull @.str.33, i32 noundef 194)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.dd, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.aa unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.thread: ; preds = %bb.q
  %i.de = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.sink.split

bb.t:                                             ; preds = %bb.s, %bb.r
  %.026 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dg = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.t
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !22
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br i1 %.026, label %.sink.split, label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br i1 %.026, label %.sink.split, label %bb.z

bb.u:                                             ; preds = %.lr.ph228
  %i.dl = icmp samesign ugt i64 %i.dm, %.013.lcssa.i.i146
  br i1 %i.dl, label %.lr.ph228, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit155, !llvm.loop !1

.lr.ph228:                                        ; preds = %.lr.ph.i.i141.preheader, %bb.u
  %.0.i.i148227 = phi i64 [ %i.dm, %bb.u ], [ 4, %.lr.ph.i.i141.preheader ] ; 2 uses
  %i.dm = add nsw i64 %.0.i.i148227, -1           ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr @.str.71, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !22
  %i.dp = sext i8 %i.do to i32
  %i.dq = tail call i32 @isspace(i32 noundef %i.dp) #34
  %.not17.i.i154 = icmp eq i32 %i.dq, 0
  br i1 %.not17.i.i154, label %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit155_crit_edge230, label %bb.u, !llvm.loop !1

._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit155_crit_edge230: ; preds = %.lr.ph228
  br label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit155, !llvm.loop !1

_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit155: ; preds = %bb.u, %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit155_crit_edge230, %.lr.ph.i.i141.preheader
  %.0.lcssa.i.i150 = phi i64 [ %.0.i.i148227, %._Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit155_crit_edge230 ], [ %.013.lcssa.i.i146, %.lr.ph.i.i141.preheader ], [ %.013.lcssa.i.i146, %bb.u ]
  %i.dr = sub i64 %.0.lcssa.i.i150, %.013.lcssa.i.i146
  %i.ds = sub nuw nsw i64 4, %.013.lcssa.i.i146
  %.sroa.speculated.i.i.i151 = tail call i64 @llvm.umin.i64(i64 %i.ds, i64 %i.dr)
  %i.dt = icmp ne i64 %.sroa.speculated.i.i.i151, 1
  %brmerge208 = or i1 %i.dt, %.not.i.i143
  br i1 %brmerge208, label %bb.v, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit159

bb.v:                                             ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit155
  %i.du = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.w unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.du, ptr noundef nonnull align 8 %9, ptr noundef nonnull @.str.33, i32 noundef 195)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.aa unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread: ; preds = %bb.v
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.sink.split

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0 = phi i1 [ false, %bb.x ], [ true, %bb.w ]  ; 2 uses
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dx = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %bb.y
  %i.ea = load i64, ptr %i.dy, align 8, !tbaa !22
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.eb) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br i1 %.0, label %.sink.split, label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br i1 %.0, label %.sink.split, label %bb.z

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit159: ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_.exit155
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %.sink = phi ptr [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.thread ], [ %i.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %i.dd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.thread ], [ %i.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ]
  %.pn45.pn.ph = phi { ptr, i32 } [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93.thread ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.thread ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139.thread ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.dv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162.thread ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ]
  call void @__cxa_free_exception(ptr %.sink) #31
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %.pn45.pn = phi { ptr, i32 } [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114 ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162 ], [ %i.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %i.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160 ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116 ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91 ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn45.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn45.pn

bb.aa:                                            ; preds = %bb.x, %bb.s, %bb.n, %bb.i, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TestUtilities9testIsYesEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %12 = alloca %"class.std::allocator", align 1   ; 5 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %14 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.a = tail call noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 3, ptr nonnull @.str.73)
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.74, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.b, ptr noundef nonnull align 8 %1, ptr noundef nonnull @.str.33, i32 noundef 201)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.al unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %.sink.split

bb.e:                                             ; preds = %bb.d, %bb.c
  %.018 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.018, label %.sink.split, label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.018, label %.sink.split, label %bb.ak

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 0, ptr nonnull @.str.60)
  br i1 %i.j, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.k = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.75, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.k, ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.33, i32 noundef 202)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.al unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread: ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %.sink.split

bb.j:                                             ; preds = %bb.i, %bb.h
  %.016 = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.j
  %i.q = load i64, ptr %i.o, align 8, !tbaa !22
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.016, label %.sink.split, label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.016, label %.sink.split, label %bb.ak

bb.k:                                             ; preds = %bb.f
  %i.s = tail call noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 5, ptr nonnull @.str.76)
  br i1 %i.s, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.t = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.77, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.t, ptr noundef nonnull align 8 %5, ptr noundef nonnull @.str.33, i32 noundef 203)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.al unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread: ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %.sink.split

bb.o:                                             ; preds = %bb.n, %bb.m
  %.014 = phi i1 [ false, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.w = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
end_hunk_1
begin_hunk_2_@_ZN13TestUtilities9testIsYesEv:bb.a
          to label %bb.al unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread: ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %.sink.split

bb.t:                                             ; preds = %bb.s, %bb.r
  %.012 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.af = load ptr, ptr %7, align 8, !tbaa !21    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %bb.t
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !22
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br i1 %.012, label %.sink.split, label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br i1 %.012, label %.sink.split, label %bb.ak

bb.u:                                             ; preds = %bb.p
  %i.ak = tail call noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 1, ptr nonnull @.str.80)
  br i1 %i.ak, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.al = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.81, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.w unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.al, ptr noundef nonnull align 8 %9, ptr noundef nonnull @.str.33, i32 noundef 205)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.al unwind label %bb.y

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread: ; preds = %bb.v
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br label %.sink.split

bb.y:                                             ; preds = %bb.x, %bb.w
  %.010 = phi i1 [ false, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ao = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %bb.y
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !22
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br i1 %.010, label %.sink.split, label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  br i1 %.010, label %.sink.split, label %bb.ak

bb.z:                                             ; preds = %bb.u
  %i.at = tail call noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 1, ptr nonnull @.str.82)
  br i1 %i.at, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.au = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.83, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ab unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.au, ptr noundef nonnull align 8 %11, ptr noundef nonnull @.str.33, i32 noundef 206)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.al unwind label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread: ; preds = %bb.aa
  %i.av = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %.sink.split

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.08 = phi i1 [ false, %bb.ac ], [ true, %bb.ab ] ; 2 uses
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ax = load ptr, ptr %11, align 8, !tbaa !21   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.ad
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br i1 %.08, label %.sink.split, label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br i1 %.08, label %.sink.split, label %bb.ak

bb.ae:                                            ; preds = %bb.z
  %i.bc = tail call noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 1, ptr nonnull @.str.84)
  br i1 %i.bc, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 72) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.85, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ag unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.bd, ptr noundef nonnull align 8 %13, ptr noundef nonnull @.str.33, i32 noundef 207)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.al unwind label %bb.ai

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread: ; preds = %bb.af
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br label %.sink.split

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0 = phi i1 [ false, %bb.ah ], [ true, %bb.ag ] ; 2 uses
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bg = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.ai
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !22
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br i1 %.0, label %.sink.split, label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  br i1 %.0, label %.sink.split, label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  ret void

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.sink = phi ptr [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  %.pn41.pn.ph = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46.thread ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.thread ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55.thread ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58.thread ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ]
  call void @__cxa_free_exception(ptr %.sink) #31
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn41.pn = phi { ptr, i32 } [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52 ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59 ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn41.pn.ph, %.sink.split ]
  resume { ptr, i32 } %.pn41.pn

bb.al:                                            ; preds = %bb.ah, %bb.ac, %bb.x, %bb.s, %bb.n, %bb.i, %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %.not21.i = icmp eq i64 %0, 0
  br i1 %.not21.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01318.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.01318.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22
  %i.c = sext i8 %i.b to i32
  %i.d = tail call i32 @isspace(i32 noundef %i.c) #34
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = add nuw i64 %.01318.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %0
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !101

.critedge.i:                                      ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.013.lcssa.i = phi i64 [ 0, %bb.a ], [ %.01318.i, %.lr.ph.i ], [ %0, %bb.b ] ; 6 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %.013.lcssa.i, i64 %0) ; 2 uses
  %i.f = icmp ugt i64 %0, %.013.lcssa.i
  br i1 %i.f, label %.lr.ph, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.h, %.013.lcssa.i
  br i1 %i.g, label %.lr.ph, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit, !llvm.loop !1

.lr.ph:                                           ; preds = %.critedge.i, %bb.c
  %.0.i25 = phi i64 [ %i.h, %bb.c ], [ %0, %.critedge.i ] ; 2 uses
  %i.h = add i64 %.0.i25, -1                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !22
  %i.k = sext i8 %i.j to i32
  %i.l = tail call i32 @isspace(i32 noundef %i.k) #34
  %.not17.i = icmp eq i32 %i.l, 0
  br i1 %.not17.i, label %..critedge2.i_crit_edge, label %bb.c, !llvm.loop !1

..critedge2.i_crit_edge:                          ; preds = %.lr.ph
  br label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit, !llvm.loop !1

_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit: ; preds = %bb.c, %..critedge2.i_crit_edge, %.critedge.i
  %.0.lcssa.i = phi i64 [ %.0.i25, %..critedge2.i_crit_edge ], [ %umin.i, %.critedge.i ], [ %umin.i, %bb.c ]
  %i.m = sub i64 %.0.lcssa.i, %.013.lcssa.i
  %i.n = sub nuw i64 %0, %.013.lcssa.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.m) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.013.lcssa.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !27, !alias.scope !105
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !29, !alias.scope !105
  store i8 0, ptr %i.p, align 8, !tbaa !22, !alias.scope !105
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %.sroa.speculated.i.i, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i: ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit
  %.not.i5 = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not.i5, label %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i6

bb.d:                                             ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %2, align 8, !tbaa !21, !alias.scope !105 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.p
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.p, align 8, !tbaa !22, !alias.scope !105
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.r

.lr.ph.i6:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i, %_Z10my_tolowerc.exit.i
  %.07.i = phi i64 [ %i.ae, %_Z10my_tolowerc.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %.07.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !22, !noalias !105 ; 3 uses
  %i.y = icmp slt i8 %i.x, 0
  br i1 %i.y, label %_Z10my_tolowerc.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i6
  %i.z = zext nneg i8 %i.x to i32
  %i.aa = call i32 @tolower(i32 noundef %i.z) #34
  %i.ab = trunc i32 %i.aa to i8
  br label %_Z10my_tolowerc.exit.i

_Z10my_tolowerc.exit.i:                           ; preds = %bb.e, %.lr.ph.i6
  %.0.i.i = phi i8 [ %i.ab, %bb.e ], [ %i.x, %.lr.ph.i6 ]
  %i.ac = load ptr, ptr %2, align 8, !tbaa !21, !alias.scope !105
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.07.i
  store i8 %.0.i.i, ptr %i.ad, align 1, !tbaa !22
  %i.ae = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ae, %.sroa.speculated.i.i
  br i1 %exitcond.not.i7, label %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i6, !llvm.loop !104

_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_Z10my_tolowerc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i
  %i.af = load i64, ptr %i.q, align 8, !tbaa !29  ; 3 uses
  %.pre16 = load ptr, ptr %2, align 8, !tbaa !21  ; 7 uses
  switch i64 %i.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14 [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit
  %lhsc = load i8, ptr %.pre16, align 1
  %i.ag = icmp eq i8 %lhsc, 121
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit
  %bcmp.i8 = call i32 @bcmp(ptr %.pre16, ptr nonnull @.str.457, i64 %i.af)
  %i.ah = icmp eq i32 %bcmp.i8, 0
  br i1 %i.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit
  %bcmp.i10 = call i32 @bcmp(ptr %.pre16, ptr nonnull @.str.458, i64 %i.af)
  %i.ai = icmp eq i32 %bcmp.i10, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11
  %i.aj = call i64 @__isoc23_strtol(ptr noundef nonnull %.pre16, ptr noundef null, i32 noundef 10) #31, !inline_history !2
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = icmp ne i64 %i.ak, 0
  %.pre17 = load ptr, ptr %2, align 8, !tbaa !21
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.am = phi ptr [ %.pre16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11 ], [ %.pre16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 ], [ %.pre16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre17, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14 ] ; 2 uses
  %i.an = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.al, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14 ]
  %i.ao = icmp eq ptr %i.am, %i.p
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !22
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret i1 %i.an
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN13TestUtilities19testRemoveStringEndEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit89:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13TestUtilities13testUrlEncodeEv(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @_Z9urlencodeB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, i64 21, ptr nonnull @.str.97)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = icmp eq i64 %i.b, 33
  %.pre = load ptr, ptr %1, align 8, !tbaa !21    ; 3 uses
  br i1 %i.c, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(33) %.pre, ptr noundef nonnull dereferenceable(33) @.str.98, i64 33)
  %i.d = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i1 [ false, %bb.a ], [ %i.d, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.g = icmp eq ptr %.pre, %i.f
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.h = icmp ult i64 %i.b, 16
  call void @llvm.assume(i1 %i.h)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.i = load i64, ptr %i.f, align 8, !tbaa !22
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.j) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = call ptr @__cxa_allocate_exception(i64 72) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.99, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN19TestFailedExceptionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKci(ptr noundef nonnull align 8 dereferenceable(68) %i.k, ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.33, i32 noundef 224)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI19TestFailedException, ptr nonnull @_ZN19TestFailedExceptionD2Ev) #33
          to label %bb.j unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.thread: ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.f
  %i.q = load i64, ptr %i.o, align 8, !tbaa !22
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %bb.g, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %.0, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %.pn11 = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.thread ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ]
  call void @__cxa_free_exception(ptr %i.k) #31
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %bb.g
  %.pn10 = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ], [ %.pn11, %bb.g ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ]
  resume { ptr, i32 } %.pn10
end_hunk_2
