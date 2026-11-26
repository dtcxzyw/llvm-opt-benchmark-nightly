Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/sony?download=true
inline.NumInlined: 98
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 42
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.4 = type { [11 x i16] }
%class.libraw_static_table_t = type <{ ptr, i32, [4 x i8] }>
%class.checked_buffer_t = type { i16, ptr, i32, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

@_ZZN6LibRaw19setSonyBodyFeaturesEyE15SonyCamFeatures = internal unnamed_addr constant [104 x %struct.anon.4] [%struct.anon.4 { [11 x i16] [i16 256, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 257, i16 2, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 258, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 259, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 260, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 261, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 262, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 263, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 264, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 265, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 266, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 269, i16 2, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 270, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 273, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 274, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 275, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 278, i16 1, i16 40, i16 3, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 279, i16 1, i16 40, i16 3, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 280, i16 1, i16 25, i16 4, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 281, i16 1, i16 25, i16 4, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 282, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 283, i16 1, i16 25, i16 2, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 284, i16 1, i16 40, i16 3, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 285, i16 1, i16 25, i16 4, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 286, i16 1, i16 25, i16 4, i16 0, i16 2, i16 4632, i16 445, i16 4472, i16 4473, i16 4396] }, %struct.anon.4 { [11 x i16] [i16 287, i16 1, i16 25, i16 4, i16 0, i16 2, i16 4632, i16 445, i16 4472, i16 4473, i16 4396] }, %struct.anon.4 { [11 x i16] [i16 288, i16 1, i16 40, i16 3, i16 0, i16 1, i16 4414, i16 445, i16 4468, i16 4469, i16 4396] }, %struct.anon.4 { [11 x i16] [i16 289, i16 1, i16 40, i16 3, i16 0, i16 2, i16 4632, i16 445, i16 4472, i16 4473, i16 4396] }, %struct.anon.4 { [11 x i16] [i16 290, i16 1, i16 40, i16 3, i16 0, i16 2, i16 4632, i16 445, i16 4472, i16 4473, i16 4396] }, %struct.anon.4 { [11 x i16] [i16 291, i16 1, i16 25, i16 4, i16 0, i16 3, i16 4596, i16 445, i16 4436, i16 4437, i16 4360] }, %struct.anon.4 { [11 x i16] [i16 292, i16 1, i16 25, i16 4, i16 0, i16 3, i16 4596, i16 445, i16 4436, i16 4437, i16 4360] }, %struct.anon.4 { [11 x i16] [i16 293, i16 1, i16 40, i16 3, i16 0, i16 3, i16 4596, i16 445, i16 4436, i16 4437, i16 4360] }, %struct.anon.4 { [11 x i16] [i16 294, i16 2, i16 25, i16 4, i16 0, i16 5, i16 4692, i16 426, i16 4524, i16 4525, i16 4448] }, %struct.anon.4 { [11 x i16] [i16 295, i16 1, i16 40, i16 3, i16 0, i16 5, i16 4692, i16 426, i16 4524, i16 4525, i16 4448] }, %struct.anon.4 { [11 x i16] [i16 296, i16 1, i16 40, i16 3, i16 0, i16 5, i16 4692, i16 426, i16 4524, i16 4525, i16 4448] }, %struct.anon.4 { [11 x i16] [i16 297, i16 5, i16 43, i16 1, i16 43, i16 5, i16 4692, i16 -1, i16 4524, i16 4525, i16 4448] }, %struct.anon.4 { [11 x i16] [i16 298, i16 2, i16 43, i16 1, i16 43, i16 5, i16 4696, i16 -1, i16 4524, i16 4525, i16 4448] }, %struct.anon.4 { [11 x i16] [i16 299, i16 2, i16 40, i16 3, i16 0, i16 5, i16 4692, i16 426, i16 4524, i16 4525, i16 4448] }, %struct.anon.4 { [11 x i16] [i16 300, i16 1, i16 40, i16 3, i16 0, i16 5, i16 4692, i16 426, i16 4524, i16 4525, i16 4448] }, %struct.anon.4 { [11 x i16] [i16 302, i16 1, i16 40, i16 5, i16 0, i16 5, i16 4736, i16 426, i16 4524, i16 4525, i16 4448] }, %struct.anon.4 { [11 x i16] [i16 303, i16 1, i16 25, i16 4, i16 0, i16 5, i16 4736, i16 426, i16 4524, i16 4525, i16 4448] }, %struct.anon.4 { [11 x i16] [i16 305, i16 1, i16 40, i16 3, i16 0, i16 5, i16 4736, i16 426, i16 4524, i16 4525, i16 4448] }, %struct.anon.4 { [11 x i16] [i16 306, i16 2, i16 40, i16 5, i16 0, i16 7, i16 836, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 307, i16 1, i16 40, i16 3, i16 0, i16 5, i16 4692, i16 426, i16 4524, i16 4525, i16 4448] }, %struct.anon.4 { [11 x i16] [i16 308, i16 5, i16 43, i16 1, i16 43, i16 6, i16 4412, i16 -1, i16 4196, i16 4197, i16 4120] }, %struct.anon.4 { [11 x i16] [i16 309, i16 5, i16 43, i16 1, i16 43, i16 7, i16 836, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 310, i16 2, i16 43, i16 1, i16 43, i16 5, i16 4696, i16 -1, i16 4524, i16 4525, i16 4448] }, %struct.anon.4 { [11 x i16] [i16 311, i16 2, i16 40, i16 5, i16 0, i16 7, i16 836, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 312, i16 1, i16 40, i16 5, i16 0, i16 7, i16 836, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 313, i16 1, i16 40, i16 5, i16 0, i16 7, i16 836, i16 426, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 317, i16 5, i16 43, i16 1, i16 43, i16 7, i16 836, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 318, i16 2, i16 40, i16 5, i16 0, i16 7, i16 836, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 319, i16 1, i16 25, i16 6, i16 0, i16 7, i16 836, i16 416, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 339, i16 1, i16 40, i16 5, i16 0, i16 7, i16 836, i16 416, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 340, i16 2, i16 40, i16 5, i16 0, i16 7, i16 836, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 341, i16 5, i16 43, i16 1, i16 43, i16 8, i16 838, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 342, i16 5, i16 43, i16 1, i16 43, i16 8, i16 838, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 344, i16 2, i16 43, i16 1, i16 43, i16 8, i16 838, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 346, i16 1, i16 40, i16 5, i16 0, i16 7, i16 836, i16 416, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 347, i16 2, i16 40, i16 5, i16 0, i16 8, i16 838, i16 459, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 350, i16 2, i16 40, i16 5, i16 0, i16 8, i16 838, i16 459, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 353, i16 1, i16 25, i16 6, i16 0, i16 7, i16 836, i16 416, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 354, i16 2, i16 25, i16 6, i16 0, i16 8, i16 838, i16 461, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 355, i16 5, i16 43, i16 1, i16 43, i16 8, i16 838, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 356, i16 5, i16 43, i16 1, i16 43, i16 8, i16 838, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 357, i16 1, i16 40, i16 5, i16 0, i16 8, i16 838, i16 461, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 358, i16 2, i16 40, i16 5, i16 0, i16 9, i16 800, i16 415, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 360, i16 1, i16 40, i16 5, i16 0, i16 8, i16 838, i16 461, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 362, i16 2, i16 40, i16 5, i16 0, i16 9, i16 800, i16 415, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 363, i16 2, i16 40, i16 5, i16 0, i16 9, i16 800, i16 415, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 364, i16 5, i16 43, i16 1, i16 43, i16 8, i16 838, i16 -1, i16 604, i16 605, i16 528] }, %struct.anon.4 { [11 x i16] [i16 365, i16 5, i16 43, i16 1, i16 43, i16 9, i16 800, i16 -1, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 366, i16 5, i16 43, i16 1, i16 43, i16 9, i16 800, i16 -1, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 367, i16 6, i16 43, i16 1, i16 43, i16 9, i16 800, i16 -1, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 369, i16 5, i16 43, i16 1, i16 43, i16 9, i16 800, i16 -1, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 371, i16 1, i16 40, i16 5, i16 0, i16 9, i16 800, i16 415, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 372, i16 5, i16 43, i16 1, i16 43, i16 9, i16 800, i16 -1, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 373, i16 6, i16 43, i16 1, i16 43, i16 9, i16 800, i16 -1, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 374, i16 5, i16 43, i16 1, i16 43, i16 9, i16 800, i16 -1, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 375, i16 2, i16 40, i16 5, i16 0, i16 9, i16 800, i16 415, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 376, i16 2, i16 40, i16 5, i16 0, i16 9, i16 800, i16 415, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 378, i16 1, i16 40, i16 5, i16 0, i16 9, i16 800, i16 415, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 379, i16 1, i16 40, i16 5, i16 0, i16 9, i16 800, i16 415, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 380, i16 5, i16 43, i16 1, i16 43, i16 9, i16 800, i16 -1, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 381, i16 2, i16 40, i16 5, i16 0, i16 9, i16 800, i16 415, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 382, i16 1, i16 40, i16 5, i16 0, i16 9, i16 800, i16 415, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 383, i16 2, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 384, i16 2, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 400, i16 2, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 385, i16 2, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 406, i16 2, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 386, i16 2, i16 40, i16 5, i16 0, i16 9, i16 800, i16 415, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 387, i16 2, i16 40, i16 5, i16 0, i16 9, i16 800, i16 415, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 388, i16 2, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 390, i16 2, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 391, i16 1, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 392, i16 2, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 393, i16 2, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 394, i16 1, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 395, i16 5, i16 43, i16 1, i16 43, i16 9, i16 800, i16 -1, i16 587, i16 588, i16 520] }, %struct.anon.4 { [11 x i16] [i16 396, i16 2, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 397, i16 2, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 398, i16 2, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }, %struct.anon.4 { [11 x i16] [i16 399, i16 1, i16 40, i16 5, i16 0, i16 0, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1] }], align 16
@.str.4 = private unnamed_addr constant [3 x i8] c" v\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"MC-11\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"FE\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" PZ\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" G\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" ZA\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" Macro\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" STF\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" Reflex\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" Fisheye\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" SSM\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" SAM\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c" OSS\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" LE\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" II\00", align 1
@_ZL16SonySubstitution = internal unnamed_addr constant [257 x i8] c"\00\012\B1\0A\0E\87(\02\CC\CA\AD\1B\DC\08\EDd\86\F0O\8Cl\B8\CBi\C4,\03\97\B6\93|\14\F3\E2>0\8E\D7`\1C\A1\AB7\ECu\BE#\15jY?\D0\B9\96\B5P'\88\E3\81\94\E0\C0\04\\\C6\E8_Kp8\9F\82\80Q+\C5EI\9B!RST\85\0B]a\DA{U&$\07n6[G\B7\D9J\A2\DF\BF\12%\BC\1E\7FV\EA\10\E6\CFgM<\91\83\E11\B3o\F4\05\8AF\C8\18vh\BD\AC\92*\13\E9\0F\A3z\DB=\D4\E7:\1AW\AF B\B2\9E\C3\8B\F2\D5\D3\A4~\1F\98\9C\EEt\A5\A6\A7\D8^\B0\B44\CE\A8ywZ\C1\89\AE\9A\113\9D\F59\19ex\16q\D2\A9Dc@)\BA\A0\8F\E4\D6;\84\0D\C2NX\DD\99\22k\C9\BB\17\06\E5}fCb\F6\CD5\90.A\8Dm\AA\09s\95\0C\F1\1D\DEL/-\F7\D1r\EB\EFH\C7\F8\F9\FA\FB\FC\FD\FE\FF\00", align 16
@.str.21 = private unnamed_addr constant [7 x i8] c"%06llx\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"%05llx\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"DSLR-A100\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"SONY\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"NEX-5C\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"DSLR-A450\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"DSLR-A500\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"DSLR-A550\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"SLT-\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"DSLR-A560\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"DSLR-A580\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"SLT-A33\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"SLT-A35\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"SLT-A55\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"NEX-VG10\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"NEX-C3\00", align 1
@_ZN6LibRaw16Sony_SR2_wb_listE = external local_unnamed_addr global %class.libraw_static_table_t, align 8
@_ZN6LibRaw17Sony_SR2_wb_list1E = external local_unnamed_addr global %class.libraw_static_table_t, align 8
@_ZN6LibRaw16Sony_SRF_wb_listE = external local_unnamed_addr global %class.libraw_static_table_t, align 8
@switch.table._ZN6LibRaw19process_Sony_0x2010EPht = private unnamed_addr constant [28 x float] [float 1.777000e+03, float 1.333000e+03, float poison, float poison, float poison, float poison, float poison, float poison, float 1.500000e+03, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float 1.000000e+03], align 4
@switch.table._ZN6LibRaw19parseSonyMakernotesExjjjjRPhRtS1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_ = private unnamed_addr constant [5 x i8] c"\01\01\FF\FF\02", align 2
@switch.table._ZN6LibRaw19parseSonyMakernotesExjjjjRPhRtS1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_.1 = private unnamed_addr constant [32 x i8] [i8 2, i8 3, i8 4, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 6], align 2
@switch.table._ZN6LibRaw19parseSonyMakernotesExjjjjRPhRtS1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_S1_S2_.2 = private unnamed_addr constant [6 x i8] c"\01\01\0C\FF\02\02", align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6LibRaw12sony_decryptEPjiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 26 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 544 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 15 uses
  %i.e = mul i32 %4, 48828125
  %i.f = add i32 %i.e, 1                          ; 3 uses
  store i32 %i.f, ptr %i.d, align 4, !tbaa !77
  %i.g = mul i32 %i.f, 48828125
  %i.h = add i32 %i.g, 1                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store i32 %i.h, ptr %i.i, align 4, !tbaa !77
  %i.j = mul i32 %i.h, 48828125
  %i.k = add i32 %i.j, 1                          ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.k, ptr %i.l, align 4, !tbaa !77
  %i.m = mul i32 %i.k, 48828125
  %i.n = add i32 %i.m, 1
  %i.o = getelementptr i8, ptr %i.b, i64 44
  %i.p = xor i32 %i.k, %i.f
  %i.q = tail call i32 @llvm.fshl.i32(i32 %i.n, i32 %i.p, i32 1) ; 2 uses
  store i32 %i.q, ptr %i.o, align 4, !tbaa !77
  store i32 4, ptr %i.c, align 8, !tbaa !84
  br label %bb.c

iter.check:                                       ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %wide.load = load <8 x i32>, ptr %i.d, align 8, !tbaa !77
  %wide.load30 = load <8 x i32>, ptr %i.r, align 8, !tbaa !77
  %wide.load31 = load <8 x i32>, ptr %i.s, align 8, !tbaa !77
  %wide.load32 = load <8 x i32>, ptr %i.t, align 8, !tbaa !77
  %i.u = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load)
  %i.v = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load30)
  %i.w = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load31)
  %i.x = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load32)
  store <8 x i32> %i.u, ptr %i.d, align 8, !tbaa !77
  store <8 x i32> %i.v, ptr %i.r, align 8, !tbaa !77
  store <8 x i32> %i.w, ptr %i.s, align 8, !tbaa !77
  store <8 x i32> %i.x, ptr %i.t, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %wide.load.1 = load <8 x i32>, ptr %i.y, align 8, !tbaa !77
  %wide.load30.1 = load <8 x i32>, ptr %i.z, align 8, !tbaa !77
  %wide.load31.1 = load <8 x i32>, ptr %i.aa, align 8, !tbaa !77
  %wide.load32.1 = load <8 x i32>, ptr %i.ab, align 8, !tbaa !77
  %i.ac = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load.1)
  %i.ad = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load30.1)
  %i.ae = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load31.1)
  %i.af = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load32.1)
  store <8 x i32> %i.ac, ptr %i.y, align 8, !tbaa !77
  store <8 x i32> %i.ad, ptr %i.z, align 8, !tbaa !77
  store <8 x i32> %i.ae, ptr %i.aa, align 8, !tbaa !77
  store <8 x i32> %i.af, ptr %i.ab, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 320 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 352 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 384 ; 2 uses
  %wide.load.2 = load <8 x i32>, ptr %i.ag, align 8, !tbaa !77
  %wide.load30.2 = load <8 x i32>, ptr %i.ah, align 8, !tbaa !77
  %wide.load31.2 = load <8 x i32>, ptr %i.ai, align 8, !tbaa !77
  %wide.load32.2 = load <8 x i32>, ptr %i.aj, align 8, !tbaa !77
  %i.ak = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load.2)
  %i.al = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load30.2)
  %i.am = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load31.2)
  %i.an = tail call <8 x i32> @llvm.bswap.v8i32(<8 x i32> %wide.load32.2)
  store <8 x i32> %i.ak, ptr %i.ag, align 8, !tbaa !77
  store <8 x i32> %i.al, ptr %i.ah, align 8, !tbaa !77
  store <8 x i32> %i.am, ptr %i.ai, align 8, !tbaa !77
  store <8 x i32> %i.an, ptr %i.aj, align 8, !tbaa !77
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %wide.load34 = load <4 x i32>, ptr %i.ao, align 8, !tbaa !77
  %i.ap = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load34)
  store <4 x i32> %i.ap, ptr %i.ao, align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 432 ; 2 uses
  %wide.load34.1 = load <4 x i32>, ptr %i.aq, align 8, !tbaa !77
  %i.ar = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load34.1)
  store <4 x i32> %i.ar, ptr %i.aq, align 8, !tbaa !77
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %wide.load34.2 = load <4 x i32>, ptr %i.as, align 8, !tbaa !77
  %i.at = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load34.2)
  store <4 x i32> %i.at, ptr %i.as, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 464 ; 2 uses
  %wide.load34.3 = load <4 x i32>, ptr %i.au, align 8, !tbaa !77
  %i.av = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load34.3)
  store <4 x i32> %i.av, ptr %i.au, align 8, !tbaa !77
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 480 ; 2 uses
  %wide.load34.4 = load <4 x i32>, ptr %i.aw, align 8, !tbaa !77
  %i.ax = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load34.4)
  store <4 x i32> %i.ax, ptr %i.aw, align 8, !tbaa !77
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 2 uses
  %wide.load34.5 = load <4 x i32>, ptr %i.ay, align 8, !tbaa !77
  %i.az = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load34.5)
  store <4 x i32> %i.az, ptr %i.ay, align 8, !tbaa !77
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 512 ; 2 uses
  %wide.load34.6 = load <4 x i32>, ptr %i.ba, align 8, !tbaa !77
  %i.bb = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load34.6)
  store <4 x i32> %i.bb, ptr %i.ba, align 8, !tbaa !77
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 528 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !77
  %i.be = tail call noundef i32 @llvm.bswap.i32(i32 %i.bd)
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !77
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 532 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !77
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bg)
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !77
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 536 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !77
  %i.bk = tail call noundef i32 @llvm.bswap.i32(i32 %i.bj)
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !77
  store i32 127, ptr %i.c, align 8, !tbaa !84
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %bb.b
  %store_forwarded = phi i32 [ %i.q, %bb.b ], [ %i.cy, %bb.c ]
  %indvars.iv = phi i64 [ 4, %bb.b ], [ %indvars.iv.next.2, %bb.c ] ; 7 uses
  %i.bl = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 -16
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !77
  %i.bo = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !77
  %i.br = xor i32 %i.bq, %i.bn
  %i.bs = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.bt = getelementptr i8, ptr %i.bs, i64 -12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !77
  %i.bv = xor i32 %store_forwarded, %i.bu
  %i.bw = tail call i32 @llvm.fshl.i32(i32 %i.br, i32 %i.bv, i32 1) ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.by = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.by, ptr %i.c, align 8, !tbaa !84
  %i.bz = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.ca = getelementptr i8, ptr %i.bz, i64 -16
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !77
  %i.cc = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.cd = getelementptr i8, ptr %i.cc, i64 -8
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !77
  %i.cf = xor i32 %i.ce, %i.cb
  %i.cg = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.ch = getelementptr i8, ptr %i.cg, i64 -12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !77
  %i.cj = xor i32 %i.bw, %i.ci
  %i.ck = tail call i32 @llvm.fshl.i32(i32 %i.cf, i32 %i.cj, i32 1) ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !77
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 5 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.cm, ptr %i.c, align 8, !tbaa !84
  %i.cn = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.co = getelementptr i8, ptr %i.cn, i64 -16
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !77
  %i.cq = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !77
  %i.ct = xor i32 %i.cs, %i.cp
  %i.cu = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  %i.cv = getelementptr i8, ptr %i.cu, i64 -12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !77
  %i.cx = xor i32 %i.ck, %i.cw
  %i.cy = tail call i32 @llvm.fshl.i32(i32 %i.ct, i32 %i.cx, i32 1) ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.1
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !77
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.da = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.da, ptr %i.c, align 8, !tbaa !84
  %exitcond.not.2 = icmp eq i64 %indvars.iv.next.2, 127
  br i1 %exitcond.not.2, label %iter.check, label %bb.c, !llvm.loop !0

bb.d:                                             ; preds = %iter.check, %bb.a
  %.not920 = icmp eq i32 %2, 0
  br i1 %.not920, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 381584
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !76 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 544 ; 7 uses
  %.pre = load i32, ptr %i.de, align 8, !tbaa !84 ; 4 uses
  %xtraiter = and i32 %2, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.df = add nsw i32 %2, -1
  %i.dg = add i32 %.pre, 1
  %i.dh = and i32 %i.dg, 127
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !77
  %i.dl = add i32 %.pre, 65
  %i.dm = and i32 %i.dl, 127
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !77
  %i.dq = xor i32 %i.dp, %i.dk                    ; 2 uses
  %i.dr = and i32 %.pre, 127
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.ds
  store i32 %i.dq, ptr %i.dt, align 4, !tbaa !77
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dv = load i32, ptr %1, align 4, !tbaa !77
  %i.dw = xor i32 %i.dv, %i.dq
  store i32 %i.dw, ptr %1, align 4, !tbaa !77
  %i.dx = load i32, ptr %i.de, align 8, !tbaa !84
  %i.dy = add i32 %i.dx, 1                        ; 2 uses
  store i32 %i.dy, ptr %i.de, align 8, !tbaa !84
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.unr = phi i32 [ %.pre, %.lr.ph ], [ %i.dy, %.prol.loopexit.unr-lcssa ]
  %.0422.unr = phi ptr [ %1, %.lr.ph ], [ %i.du, %.prol.loopexit.unr-lcssa ]
  %.0521.unr = phi i32 [ %2, %.lr.ph ], [ %i.df, %.prol.loopexit.unr-lcssa ]
  %i.dz = icmp eq i32 %2, 1
end_hunk_0
