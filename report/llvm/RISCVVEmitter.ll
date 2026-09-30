Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVVEmitter?download=true
inline.NumInlined: 2723
inline.NumDeleted: 919
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0
@.str.576 = private unnamed_addr constant [13 x i8] c"vsseg5e64_mu\00", align 1
@.str.577 = private unnamed_addr constant [10 x i8] c"vsseg6e64\00", align 1
@.str.578 = private unnamed_addr constant [13 x i8] c"vsseg6e64_tu\00", align 1
@.str.579 = private unnamed_addr constant [14 x i8] c"vsseg6e64_tum\00", align 1
@.str.580 = private unnamed_addr constant [15 x i8] c"vsseg6e64_tumu\00", align 1
@.str.581 = private unnamed_addr constant [13 x i8] c"vsseg6e64_mu\00", align 1
@.str.582 = private unnamed_addr constant [10 x i8] c"vsseg7e64\00", align 1
@.str.583 = private unnamed_addr constant [13 x i8] c"vsseg7e64_tu\00", align 1
@.str.584 = private unnamed_addr constant [14 x i8] c"vsseg7e64_tum\00", align 1
@.str.585 = private unnamed_addr constant [15 x i8] c"vsseg7e64_tumu\00", align 1
@.str.586 = private unnamed_addr constant [13 x i8] c"vsseg7e64_mu\00", align 1
@.str.587 = private unnamed_addr constant [10 x i8] c"vsseg8e64\00", align 1
@.str.588 = private unnamed_addr constant [13 x i8] c"vsseg8e64_tu\00", align 1
@.str.589 = private unnamed_addr constant [14 x i8] c"vsseg8e64_tum\00", align 1
@.str.590 = private unnamed_addr constant [15 x i8] c"vsseg8e64_tumu\00", align 1
@.str.591 = private unnamed_addr constant [13 x i8] c"vsseg8e64_mu\00", align 1
@.str.592 = private unnamed_addr constant [10 x i8] c"vssseg2e8\00", align 1
@.str.593 = private unnamed_addr constant [13 x i8] c"vssseg2e8_tu\00", align 1
@.str.594 = private unnamed_addr constant [14 x i8] c"vssseg2e8_tum\00", align 1
@.str.595 = private unnamed_addr constant [15 x i8] c"vssseg2e8_tumu\00", align 1
@.str.596 = private unnamed_addr constant [13 x i8] c"vssseg2e8_mu\00", align 1
@.str.597 = private unnamed_addr constant [10 x i8] c"vssseg3e8\00", align 1
@.str.598 = private unnamed_addr constant [13 x i8] c"vssseg3e8_tu\00", align 1
@.str.599 = private unnamed_addr constant [14 x i8] c"vssseg3e8_tum\00", align 1
@.str.600 = private unnamed_addr constant [15 x i8] c"vssseg3e8_tumu\00", align 1
@.str.601 = private unnamed_addr constant [13 x i8] c"vssseg3e8_mu\00", align 1
@.str.602 = private unnamed_addr constant [10 x i8] c"vssseg4e8\00", align 1
@.str.603 = private unnamed_addr constant [13 x i8] c"vssseg4e8_tu\00", align 1
@.str.604 = private unnamed_addr constant [14 x i8] c"vssseg4e8_tum\00", align 1
@.str.605 = private unnamed_addr constant [15 x i8] c"vssseg4e8_tumu\00", align 1
@.str.606 = private unnamed_addr constant [13 x i8] c"vssseg4e8_mu\00", align 1
@.str.607 = private unnamed_addr constant [10 x i8] c"vssseg5e8\00", align 1
@.str.608 = private unnamed_addr constant [13 x i8] c"vssseg5e8_tu\00", align 1
@.str.609 = private unnamed_addr constant [14 x i8] c"vssseg5e8_tum\00", align 1
@.str.610 = private unnamed_addr constant [15 x i8] c"vssseg5e8_tumu\00", align 1
@.str.611 = private unnamed_addr constant [13 x i8] c"vssseg5e8_mu\00", align 1
@.str.612 = private unnamed_addr constant [10 x i8] c"vssseg6e8\00", align 1
@.str.613 = private unnamed_addr constant [13 x i8] c"vssseg6e8_tu\00", align 1
@.str.614 = private unnamed_addr constant [14 x i8] c"vssseg6e8_tum\00", align 1
@.str.615 = private unnamed_addr constant [15 x i8] c"vssseg6e8_tumu\00", align 1
@.str.616 = private unnamed_addr constant [13 x i8] c"vssseg6e8_mu\00", align 1
@.str.617 = private unnamed_addr constant [10 x i8] c"vssseg7e8\00", align 1
@.str.618 = private unnamed_addr constant [13 x i8] c"vssseg7e8_tu\00", align 1
@.str.619 = private unnamed_addr constant [14 x i8] c"vssseg7e8_tum\00", align 1
@.str.620 = private unnamed_addr constant [15 x i8] c"vssseg7e8_tumu\00", align 1
@.str.621 = private unnamed_addr constant [13 x i8] c"vssseg7e8_mu\00", align 1
@.str.622 = private unnamed_addr constant [10 x i8] c"vssseg8e8\00", align 1
@.str.623 = private unnamed_addr constant [13 x i8] c"vssseg8e8_tu\00", align 1
@.str.624 = private unnamed_addr constant [14 x i8] c"vssseg8e8_tum\00", align 1
@.str.625 = private unnamed_addr constant [15 x i8] c"vssseg8e8_tumu\00", align 1
@.str.626 = private unnamed_addr constant [13 x i8] c"vssseg8e8_mu\00", align 1
@.str.627 = private unnamed_addr constant [11 x i8] c"vssseg2e16\00", align 1
@.str.628 = private unnamed_addr constant [14 x i8] c"vssseg2e16_tu\00", align 1
@.str.629 = private unnamed_addr constant [15 x i8] c"vssseg2e16_tum\00", align 1
@.str.630 = private unnamed_addr constant [16 x i8] c"vssseg2e16_tumu\00", align 1
@.str.631 = private unnamed_addr constant [14 x i8] c"vssseg2e16_mu\00", align 1
@.str.632 = private unnamed_addr constant [11 x i8] c"vssseg3e16\00", align 1
@.str.633 = private unnamed_addr constant [14 x i8] c"vssseg3e16_tu\00", align 1
@.str.634 = private unnamed_addr constant [15 x i8] c"vssseg3e16_tum\00", align 1
@.str.635 = private unnamed_addr constant [16 x i8] c"vssseg3e16_tumu\00", align 1
@.str.636 = private unnamed_addr constant [14 x i8] c"vssseg3e16_mu\00", align 1
@.str.637 = private unnamed_addr constant [11 x i8] c"vssseg4e16\00", align 1
@.str.638 = private unnamed_addr constant [14 x i8] c"vssseg4e16_tu\00", align 1
@.str.639 = private unnamed_addr constant [15 x i8] c"vssseg4e16_tum\00", align 1
@.str.640 = private unnamed_addr constant [16 x i8] c"vssseg4e16_tumu\00", align 1
@.str.641 = private unnamed_addr constant [14 x i8] c"vssseg4e16_mu\00", align 1
@.str.642 = private unnamed_addr constant [11 x i8] c"vssseg5e16\00", align 1
@.str.643 = private unnamed_addr constant [14 x i8] c"vssseg5e16_tu\00", align 1
@.str.644 = private unnamed_addr constant [15 x i8] c"vssseg5e16_tum\00", align 1
@.str.645 = private unnamed_addr constant [16 x i8] c"vssseg5e16_tumu\00", align 1
@.str.646 = private unnamed_addr constant [14 x i8] c"vssseg5e16_mu\00", align 1
@.str.647 = private unnamed_addr constant [11 x i8] c"vssseg6e16\00", align 1
@.str.648 = private unnamed_addr constant [14 x i8] c"vssseg6e16_tu\00", align 1
@.str.649 = private unnamed_addr constant [15 x i8] c"vssseg6e16_tum\00", align 1
@.str.650 = private unnamed_addr constant [16 x i8] c"vssseg6e16_tumu\00", align 1
@.str.651 = private unnamed_addr constant [14 x i8] c"vssseg6e16_mu\00", align 1
@.str.652 = private unnamed_addr constant [11 x i8] c"vssseg7e16\00", align 1
@.str.653 = private unnamed_addr constant [14 x i8] c"vssseg7e16_tu\00", align 1
@.str.654 = private unnamed_addr constant [15 x i8] c"vssseg7e16_tum\00", align 1
@.str.655 = private unnamed_addr constant [16 x i8] c"vssseg7e16_tumu\00", align 1
@.str.656 = private unnamed_addr constant [14 x i8] c"vssseg7e16_mu\00", align 1
@.str.657 = private unnamed_addr constant [11 x i8] c"vssseg8e16\00", align 1
@.str.658 = private unnamed_addr constant [14 x i8] c"vssseg8e16_tu\00", align 1
@.str.659 = private unnamed_addr constant [15 x i8] c"vssseg8e16_tum\00", align 1
@.str.660 = private unnamed_addr constant [16 x i8] c"vssseg8e16_tumu\00", align 1
@.str.661 = private unnamed_addr constant [14 x i8] c"vssseg8e16_mu\00", align 1
@.str.662 = private unnamed_addr constant [11 x i8] c"vssseg2e32\00", align 1
@.str.663 = private unnamed_addr constant [14 x i8] c"vssseg2e32_tu\00", align 1
@.str.664 = private unnamed_addr constant [15 x i8] c"vssseg2e32_tum\00", align 1
@.str.665 = private unnamed_addr constant [16 x i8] c"vssseg2e32_tumu\00", align 1
@.str.666 = private unnamed_addr constant [14 x i8] c"vssseg2e32_mu\00", align 1
@.str.667 = private unnamed_addr constant [11 x i8] c"vssseg3e32\00", align 1
@.str.668 = private unnamed_addr constant [14 x i8] c"vssseg3e32_tu\00", align 1
@.str.669 = private unnamed_addr constant [15 x i8] c"vssseg3e32_tum\00", align 1
@.str.670 = private unnamed_addr constant [16 x i8] c"vssseg3e32_tumu\00", align 1
@.str.671 = private unnamed_addr constant [14 x i8] c"vssseg3e32_mu\00", align 1
@.str.672 = private unnamed_addr constant [11 x i8] c"vssseg4e32\00", align 1
@.str.673 = private unnamed_addr constant [14 x i8] c"vssseg4e32_tu\00", align 1
@.str.674 = private unnamed_addr constant [15 x i8] c"vssseg4e32_tum\00", align 1
@.str.675 = private unnamed_addr constant [16 x i8] c"vssseg4e32_tumu\00", align 1
@.str.676 = private unnamed_addr constant [14 x i8] c"vssseg4e32_mu\00", align 1
@.str.677 = private unnamed_addr constant [11 x i8] c"vssseg5e32\00", align 1
@.str.678 = private unnamed_addr constant [14 x i8] c"vssseg5e32_tu\00", align 1
@.str.679 = private unnamed_addr constant [15 x i8] c"vssseg5e32_tum\00", align 1
@.str.680 = private unnamed_addr constant [16 x i8] c"vssseg5e32_tumu\00", align 1
@.str.681 = private unnamed_addr constant [14 x i8] c"vssseg5e32_mu\00", align 1
@.str.682 = private unnamed_addr constant [11 x i8] c"vssseg6e32\00", align 1
@.str.683 = private unnamed_addr constant [14 x i8] c"vssseg6e32_tu\00", align 1
@.str.684 = private unnamed_addr constant [15 x i8] c"vssseg6e32_tum\00", align 1
@.str.685 = private unnamed_addr constant [16 x i8] c"vssseg6e32_tumu\00", align 1
@.str.686 = private unnamed_addr constant [14 x i8] c"vssseg6e32_mu\00", align 1
@.str.687 = private unnamed_addr constant [11 x i8] c"vssseg7e32\00", align 1
@.str.688 = private unnamed_addr constant [14 x i8] c"vssseg7e32_tu\00", align 1
@.str.689 = private unnamed_addr constant [15 x i8] c"vssseg7e32_tum\00", align 1
@.str.690 = private unnamed_addr constant [16 x i8] c"vssseg7e32_tumu\00", align 1
@.str.691 = private unnamed_addr constant [14 x i8] c"vssseg7e32_mu\00", align 1
@.str.692 = private unnamed_addr constant [11 x i8] c"vssseg8e32\00", align 1
@.str.693 = private unnamed_addr constant [14 x i8] c"vssseg8e32_tu\00", align 1
@.str.694 = private unnamed_addr constant [15 x i8] c"vssseg8e32_tum\00", align 1
@.str.695 = private unnamed_addr constant [16 x i8] c"vssseg8e32_tumu\00", align 1
@.str.696 = private unnamed_addr constant [14 x i8] c"vssseg8e32_mu\00", align 1
@.str.697 = private unnamed_addr constant [11 x i8] c"vssseg2e64\00", align 1
@.str.698 = private unnamed_addr constant [14 x i8] c"vssseg2e64_tu\00", align 1
@.str.699 = private unnamed_addr constant [15 x i8] c"vssseg2e64_tum\00", align 1
@.str.700 = private unnamed_addr constant [16 x i8] c"vssseg2e64_tumu\00", align 1
@.str.701 = private unnamed_addr constant [14 x i8] c"vssseg2e64_mu\00", align 1
@.str.702 = private unnamed_addr constant [11 x i8] c"vssseg3e64\00", align 1
@.str.703 = private unnamed_addr constant [14 x i8] c"vssseg3e64_tu\00", align 1
@.str.704 = private unnamed_addr constant [15 x i8] c"vssseg3e64_tum\00", align 1
@.str.705 = private unnamed_addr constant [16 x i8] c"vssseg3e64_tumu\00", align 1
@.str.706 = private unnamed_addr constant [14 x i8] c"vssseg3e64_mu\00", align 1
@.str.707 = private unnamed_addr constant [11 x i8] c"vssseg4e64\00", align 1
@.str.708 = private unnamed_addr constant [14 x i8] c"vssseg4e64_tu\00", align 1
@.str.709 = private unnamed_addr constant [15 x i8] c"vssseg4e64_tum\00", align 1
@.str.710 = private unnamed_addr constant [16 x i8] c"vssseg4e64_tumu\00", align 1
@.str.711 = private unnamed_addr constant [14 x i8] c"vssseg4e64_mu\00", align 1
@.str.712 = private unnamed_addr constant [11 x i8] c"vssseg5e64\00", align 1
@.str.713 = private unnamed_addr constant [14 x i8] c"vssseg5e64_tu\00", align 1
@.str.714 = private unnamed_addr constant [15 x i8] c"vssseg5e64_tum\00", align 1
@.str.715 = private unnamed_addr constant [16 x i8] c"vssseg5e64_tumu\00", align 1
@.str.716 = private unnamed_addr constant [14 x i8] c"vssseg5e64_mu\00", align 1
@.str.717 = private unnamed_addr constant [11 x i8] c"vssseg6e64\00", align 1
@.str.718 = private unnamed_addr constant [14 x i8] c"vssseg6e64_tu\00", align 1
@.str.719 = private unnamed_addr constant [15 x i8] c"vssseg6e64_tum\00", align 1
@.str.720 = private unnamed_addr constant [16 x i8] c"vssseg6e64_tumu\00", align 1
@.str.721 = private unnamed_addr constant [14 x i8] c"vssseg6e64_mu\00", align 1
@.str.722 = private unnamed_addr constant [11 x i8] c"vssseg7e64\00", align 1
@.str.723 = private unnamed_addr constant [14 x i8] c"vssseg7e64_tu\00", align 1
@.str.724 = private unnamed_addr constant [15 x i8] c"vssseg7e64_tum\00", align 1
@.str.725 = private unnamed_addr constant [16 x i8] c"vssseg7e64_tumu\00", align 1
@.str.726 = private unnamed_addr constant [14 x i8] c"vssseg7e64_mu\00", align 1
@.str.727 = private unnamed_addr constant [11 x i8] c"vssseg8e64\00", align 1
@.str.728 = private unnamed_addr constant [14 x i8] c"vssseg8e64_tu\00", align 1
@.str.729 = private unnamed_addr constant [15 x i8] c"vssseg8e64_tum\00", align 1
@.str.730 = private unnamed_addr constant [16 x i8] c"vssseg8e64_tumu\00", align 1
@.str.731 = private unnamed_addr constant [14 x i8] c"vssseg8e64_mu\00", align 1
@__dso_handle = external hidden global i8
@.str.732 = private unnamed_addr constant [379 x i8] c"/*===---- riscv_vector.h - RISC-V V-extension RVVIntrinsics -------------------===\0A *\0A *\0A * Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.\0A * See https://llvm.org/LICENSE.txt for license information.\0A * SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception\0A *\0A *===-----------------------------------------------------------------------===\0A */\0A\0A\00", align 1
@.str.733 = private unnamed_addr constant [26 x i8] c"#ifndef __RISCV_VECTOR_H\0A\00", align 1
@.str.734 = private unnamed_addr constant [27 x i8] c"#define __RISCV_VECTOR_H\0A\0A\00", align 1
@.str.735 = private unnamed_addr constant [21 x i8] c"#include <stdint.h>\0A\00", align 1
@.str.736 = private unnamed_addr constant [22 x i8] c"#include <stddef.h>\0A\0A\00", align 1
@.str.737 = private unnamed_addr constant [20 x i8] c"#ifdef __cplusplus\0A\00", align 1
@.str.738 = private unnamed_addr constant [14 x i8] c"extern \22C\22 {\0A\00", align 1
@.str.739 = private unnamed_addr constant [9 x i8] c"#endif\0A\0A\00", align 1
@.str.740 = private unnamed_addr constant [39 x i8] c"#pragma clang riscv intrinsic vector\0A\0A\00", align 1
@_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEE4Exts = internal unnamed_addr constant [29 x ptr] [ptr @.str.741, ptr @.str.742, ptr @.str.743, ptr @.str.744, ptr @.str.745, ptr @.str.746, ptr @.str.747, ptr @.str.748, ptr @.str.749, ptr @.str.750, ptr @.str.751, ptr @.str.752, ptr @.str.753, ptr @.str.754, ptr @.str.755, ptr @.str.756, ptr @.str.757, ptr @.str.758, ptr @.str.759, ptr @.str.760, ptr @.str.761, ptr @.str.762, ptr @.str.763, ptr @.str.764, ptr @.str.765, ptr @.str.766, ptr @.str.767, ptr @.str.768, ptr @.str.769], align 16
@.str.741 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.742 = private unnamed_addr constant [6 x i8] c"zvabd\00", align 1
@.str.743 = private unnamed_addr constant [5 x i8] c"zvbb\00", align 1
@.str.744 = private unnamed_addr constant [5 x i8] c"zvbc\00", align 1
@.str.745 = private unnamed_addr constant [10 x i8] c"zvdot4a8i\00", align 1
@.str.746 = private unnamed_addr constant [7 x i8] c"zve32f\00", align 1
@.str.747 = private unnamed_addr constant [7 x i8] c"zve32x\00", align 1
@.str.748 = private unnamed_addr constant [7 x i8] c"zve64d\00", align 1
@.str.749 = private unnamed_addr constant [7 x i8] c"zve64f\00", align 1
@.str.750 = private unnamed_addr constant [7 x i8] c"zve64x\00", align 1
@.str.751 = private unnamed_addr constant [7 x i8] c"zvfbfa\00", align 1
@.str.752 = private unnamed_addr constant [9 x i8] c"zvfbfmin\00", align 1
@.str.753 = private unnamed_addr constant [9 x i8] c"zvfbfwma\00", align 1
@.str.754 = private unnamed_addr constant [5 x i8] c"zvfh\00", align 1
@.str.755 = private unnamed_addr constant [8 x i8] c"zvfhmin\00", align 1
@.str.756 = private unnamed_addr constant [11 x i8] c"zvfofp8min\00", align 1
@.str.757 = private unnamed_addr constant [5 x i8] c"zvkb\00", align 1
@.str.758 = private unnamed_addr constant [5 x i8] c"zvkg\00", align 1
@.str.759 = private unnamed_addr constant [5 x i8] c"zvkn\00", align 1
@.str.760 = private unnamed_addr constant [6 x i8] c"zvknc\00", align 1
@.str.761 = private unnamed_addr constant [7 x i8] c"zvkned\00", align 1
@.str.762 = private unnamed_addr constant [6 x i8] c"zvkng\00", align 1
@.str.763 = private unnamed_addr constant [7 x i8] c"zvknha\00", align 1
@.str.764 = private unnamed_addr constant [7 x i8] c"zvknhb\00", align 1
@.str.765 = private unnamed_addr constant [5 x i8] c"zvks\00", align 1
@.str.766 = private unnamed_addr constant [6 x i8] c"zvksc\00", align 1
@.str.767 = private unnamed_addr constant [7 x i8] c"zvksed\00", align 1
@.str.768 = private unnamed_addr constant [6 x i8] c"zvksg\00", align 1
@.str.769 = private unnamed_addr constant [6 x i8] c"zvksh\00", align 1
@.str.770 = private unnamed_addr constant [27 x i8] c"#define __riscv_intrinsic_\00", align 1
@.str.771 = private unnamed_addr constant [4 x i8] c" 1\0A\00", align 1
@__const._ZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamE.Log2LMULs = private unnamed_addr constant [7 x i32] [i32 -3, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3], align 16
@_ZN5clang5RISCV19PrototypeDescriptor4MaskE = external local_unnamed_addr global %"struct.clang::RISCV::PrototypeDescriptor", align 2
@_ZN5clang5RISCV19PrototypeDescriptor6VectorE = external local_unnamed_addr global %"struct.clang::RISCV::PrototypeDescriptor", align 2
@.str.773 = private unnamed_addr constant [21 x i8] c"\0A#ifdef __cplusplus\0A\00", align 1
@.str.774 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.775 = private unnamed_addr constant [23 x i8] c"#endif // __cplusplus\0A\00", align 1
@.str.776 = private unnamed_addr constant [28 x i8] c"#endif // __RISCV_VECTOR_H\0A\00", align 1
@.str.777 = private unnamed_addr constant [10 x i8] c"RVVHeader\00", align 1
@.str.778 = private unnamed_addr constant [11 x i8] c"HeaderCode\00", align 1
@.str.780 = private unnamed_addr constant [9 x i8] c"typedef \00", align 1
@.str.781 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.782 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.783 = private unnamed_addr constant [48 x i8] c"Builtin with same name has different hasAutoDef\00", align 1
@.str.784 = private unnamed_addr constant [49 x i8] c"Builtin with same name has different type string\00", align 1
@.str.785 = private unnamed_addr constant [37 x i8] c"// RISCV Vector builtin enumerators\0A\00", align 1
@.str.786 = private unnamed_addr constant [39 x i8] c"#ifdef GET_RISCVV_BUILTIN_ENUMERATORS\0A\00", align 1
@.str.787 = private unnamed_addr constant [19 x i8] c"  BI__builtin_rvv_\00", align 1
@.str.788 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.789 = private unnamed_addr constant [43 x i8] c"#endif // GET_RISCVV_BUILTIN_ENUMERATORS\0A\0A\00", align 1
@.str.790 = private unnamed_addr constant [37 x i8] c"#ifdef GET_RISCVV_BUILTIN_STR_TABLE\0A\00", align 1
@.str.791 = private unnamed_addr constant [15 x i8] c"BuiltinStrings\00", align 1
@.str.792 = private unnamed_addr constant [41 x i8] c"#endif // GET_RISCVV_BUILTIN_STR_TABLE\0A\0A\00", align 1
@.str.793 = private unnamed_addr constant [31 x i8] c"// RISCV Vector builtin infos\0A\00", align 1
@.str.794 = private unnamed_addr constant [33 x i8] c"#ifdef GET_RISCVV_BUILTIN_INFOS\0A\00", align 1
@.str.795 = private unnamed_addr constant [45 x i8] c"    Builtin::Info{Builtin::Info::StrOffsets{\00", align 1
@.str.796 = private unnamed_addr constant [5 x i8] c" /* \00", align 1
@.str.797 = private unnamed_addr constant [6 x i8] c" */, \00", align 1
@.str.798 = private unnamed_addr constant [4 x i8] c"0, \00", align 1
@.str.799 = private unnamed_addr constant [11 x i8] c" /* n */, \00", align 1
@.str.800 = private unnamed_addr constant [17 x i8] c" /* zve32x */}, \00", align 1
@.str.801 = private unnamed_addr constant [40 x i8] c"HeaderDesc::NO_HEADER, ALL_LANGUAGES},\0A\00", align 1
@.str.802 = private unnamed_addr constant [37 x i8] c"#endif // GET_RISCVV_BUILTIN_INFOS\0A\0A\00", align 1
@.str.803 = private unnamed_addr constant [11 x i8] c"RVVBuiltin\00", align 1
@.str.804 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.805 = private unnamed_addr constant [7 x i8] c"Suffix\00", align 1
@.str.806 = private unnamed_addr constant [15 x i8] c"OverloadedName\00", align 1
@.str.807 = private unnamed_addr constant [17 x i8] c"OverloadedSuffix\00", align 1
@.str.808 = private unnamed_addr constant [10 x i8] c"Prototype\00", align 1
@.str.809 = private unnamed_addr constant [10 x i8] c"TypeRange\00", align 1
@.str.810 = private unnamed_addr constant [10 x i8] c"HasMasked\00", align 1
@.str.811 = private unnamed_addr constant [20 x i8] c"HasMaskedOffOperand\00", align 1
@.str.812 = private unnamed_addr constant [6 x i8] c"HasVL\00", align 1
@.str.813 = private unnamed_addr constant [19 x i8] c"MaskedPolicyScheme\00", align 1
@.str.814 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.815 = private unnamed_addr constant [21 x i8] c"UnMaskedPolicyScheme\00", align 1
@.str.816 = private unnamed_addr constant [9 x i8] c"Log2LMUL\00", align 1
@.str.817 = private unnamed_addr constant [14 x i8] c"HasTailPolicy\00", align 1
@.str.818 = private unnamed_addr constant [14 x i8] c"HasMaskPolicy\00", align 1
@.str.819 = private unnamed_addr constant [7 x i8] c"AltFmt\00", align 1
@.str.820 = private unnamed_addr constant [19 x i8] c"SupportOverloading\00", align 1
@.str.821 = private unnamed_addr constant [16 x i8] c"HasBuiltinAlias\00", align 1
@.str.822 = private unnamed_addr constant [14 x i8] c"ManualCodegen\00", align 1
@.str.823 = private unnamed_addr constant [15 x i8] c"IntrinsicTypes\00", align 1
@.str.824 = private unnamed_addr constant [17 x i8] c"RequiredFeatures\00", align 1
@.str.825 = private unnamed_addr constant [7 x i8] c"IRName\00", align 1
@.str.826 = private unnamed_addr constant [13 x i8] c"MaskedIRName\00", align 1
@.str.827 = private unnamed_addr constant [3 x i8] c"NF\00", align 1
@.str.828 = private unnamed_addr constant [14 x i8] c"HasSegInstSEW\00", align 1
@.str.829 = private unnamed_addr constant [7 x i8] c"TWiden\00", align 1
@.str.830 = private unnamed_addr constant [8 x i8] c"IsTuple\00", align 1
@.str.831 = private unnamed_addr constant [18 x i8] c"HasFRMRoundModeOp\00", align 1
@.str.834 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.835 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.836 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.837 = private unnamed_addr constant [35 x i8] c"case RISCVVector::BI__builtin_rvv_\00", align 1
@.str.838 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.839 = private unnamed_addr constant [44 x i8] c"Builtin with same name has different IRName\00", align 1
@.str.840 = private unnamed_addr constant [51 x i8] c"Builtin with same name has different ManualCodegen\00", align 1
@.str.841 = private unnamed_addr constant [46 x i8] c"Builtin with same name has different isMasked\00", align 1
@.str.842 = private unnamed_addr constant [43 x i8] c"Builtin with same name has different hasVL\00", align 1
@.str.843 = private unnamed_addr constant [53 x i8] c"Builtin with same name has different getPolicyScheme\00", align 1
@.str.844 = private unnamed_addr constant [52 x i8] c"Builtin with same name has different IntrinsicTypes\00", align 1
@.str.845 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZSt7nothrow = external global %"struct.std::nothrow_t", align 1
@.str.846 = private unnamed_addr constant [29 x i8] c"#ifdef DECL_SIGNATURE_TABLE\0A\00", align 1
@.str.847 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.848 = private unnamed_addr constant [31 x i8] c"#ifdef DECL_INTRINSIC_RECORDS\0A\00", align 1
@.str.849 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.850 = private unnamed_addr constant [21 x i8] c"PrototypeDescriptor(\00", align 1
@.str.851 = private unnamed_addr constant [4 x i8] c"),\0A\00", align 1
@switch.table._ZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamE = private unnamed_addr constant [5 x i8] c"\01\02\04\08\00", align 2
@switch.table._ZN12_GLOBAL__N_110RVVEmitter19createRVVIntrinsicsERSt6vectorISt10unique_ptrIN5clang5RISCV12RVVIntrinsicESt14default_deleteIS5_EESaIS8_EEPS1_INS_10SemaRecordESaISC_EE.64 = private unnamed_addr constant [25 x i16] [i16 256, i16 512, i16 1, i16 128, i16 0, i16 64, i16 0, i16 0, i16 4, i16 0, i16 0, i16 8, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 0, i16 32, i16 16], align 2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z21emitCodeGenSwitchBodyPKN5clang5RISCV12RVVIntrinsicERN4llvm11raw_ostreamE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_ZN4llvmplERKNS_5TwineES2_.exit

_ZN4llvmplERKNS_5TwineES2_.exit:                  ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 3, ptr %i.f, align 8, !tbaa !22, !alias.scope !164
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 5, ptr %i.g, align 1, !tbaa !23, !alias.scope !164
  store ptr @.str, ptr %3, align 8, !tbaa !24, !alias.scope !164
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !24, !alias.scope !164
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.c, ptr %i.i, align 8, !tbaa !24, !alias.scope !164
  store ptr %3, ptr %2, align 8, !alias.scope !165
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @.str.1, ptr %i.j, align 8, !alias.scope !165
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 2, ptr %i.k, align 8, !tbaa !22, !alias.scope !165
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 3, ptr %i.l, align 1, !tbaa !23, !alias.scope !165
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %2, ptr noundef nonnull align 8 dereferenceable(48) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !42
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %_ZN4llvm11raw_ostreamlsEPKc.exit78, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47   ; 2 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i64 %i.u, 11
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.2, i64 noundef 11) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.r, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  store ptr %i.y, ptr %i.q, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.d, %bb.e
  %.0.i.i75 = phi ptr [ %i.w, %bb.d ], [ %1, %bb.e ]
  %i.z = load i32, ptr %i.m, align 8, !tbaa !42
  %i.aa = zext i32 %i.z to i64
  %i.ab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i75, i64 noundef %i.aa) #20 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 2 uses
  %i.ag = ptrtoint ptr %i.ad to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, 2
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ak = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull @.str.1, i64 noundef 2) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit78

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i16 2619, ptr %i.af, align 1
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store ptr %i.am, ptr %i.ae, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit78

_ZN4llvm11raw_ostreamlsEPKc.exit78:               ; preds = %bb.g, %bb.f, %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 21 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 69 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47 ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = icmp ult i64 %i.at, 16
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit78
  %i.av = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.3, i64 noundef 16) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit81

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aq, ptr noundef nonnull align 1 dereferenceable(16) @.str.3, i64 16, i1 false)
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store ptr %i.ax, ptr %i.ap, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit81

_ZN4llvm11raw_ostreamlsEPKc.exit81:               ; preds = %bb.h, %bb.i
  %.0.i.i80 = phi ptr [ %i.av, %bb.h ], [ %1, %bb.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !166 ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0                    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 1                    ; 2 uses
  %i.be = select i1 %i.ba, i1 %i.bd, i1 false
  br i1 %i.be, label %_ZNK5clang5RISCV12RVVIntrinsic18getPolicyAttrsBitsEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit81
  %i.bf = icmp eq i32 %i.az, 1
  %i.bg = select i1 %i.bf, i1 %i.bd, i1 false
  br i1 %i.bg, label %_ZNK5clang5RISCV12RVVIntrinsic18getPolicyAttrsBitsEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = icmp ne i32 %i.bc, 0
  %not..i = xor i1 %i.ba, true
  %i.bi = select i1 %not..i, i1 true, i1 %i.bh
  %i.bj = zext i1 %i.bi to i64
  br label %_ZNK5clang5RISCV12RVVIntrinsic18getPolicyAttrsBitsEv.exit

_ZNK5clang5RISCV12RVVIntrinsic18getPolicyAttrsBitsEv.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit81, %bb.j, %bb.k
  %.0.i = phi i64 [ %i.bj, %bb.k ], [ 2, %_ZN4llvm11raw_ostreamlsEPKc.exit81 ], [ 3, %bb.j ]
  %i.bk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i80, i64 noundef %.0.i) #20 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !46
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !47 ; 2 uses
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = icmp ult i64 %i.br, 2
  br i1 %i.bs, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK5clang5RISCV12RVVIntrinsic18getPolicyAttrsBitsEv.exit
  %i.bt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, ptr noundef nonnull @.str.1, i64 noundef 2) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit84

bb.m:                                             ; preds = %_ZNK5clang5RISCV12RVVIntrinsic18getPolicyAttrsBitsEv.exit
  store i16 2619, ptr %i.bo, align 1
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store ptr %i.bv, ptr %i.bn, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit84

_ZN4llvm11raw_ostreamlsEPKc.exit84:               ; preds = %bb.l, %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !167, !range !48, !noundef !49
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.n, label %_ZN4llvm11raw_ostreamlsEPKc.exit102

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit84
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !19  ; 8 uses
  %i.ca = load i64, ptr %i.b, align 8, !tbaa !18
  %.not.i.i = icmp ult i64 %i.ca, 7
  br i1 %.not.i.i, label %bb.ac, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %bb.n
  %i.cb = load i32, ptr %i.bz, align 1
  %i.cc = xor i32 %i.cb, 2020568182
  %i.cd = getelementptr i8, ptr %i.bz, i64 3
  %i.ce = load i32, ptr %i.cd, align 1
  %i.cf = xor i32 %i.ce, 1734701944
  %i.cg = or i32 %i.cc, %i.cf
  %i.ch = icmp ne i32 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit13.i

_ZNK4llvm9StringRef11starts_withES0_.exit13.i:    ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.ck = load i32, ptr %i.bz, align 1
  %i.cl = xor i32 %i.ck, 2020961398
  %i.cm = getelementptr i8, ptr %i.bz, i64 3
  %i.cn = load i32, ptr %i.cm, align 1
  %i.co = xor i32 %i.cn, 1734701944
  %i.cp = or i32 %i.cl, %i.co
  %i.cq = icmp ne i32 %i.cp, 0
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit24.i

_ZNK4llvm9StringRef11starts_withES0_.exit.thread.i: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit13.i, %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cu = load i8, ptr %i.ct, align 8, !tbaa !50, !range !48, !noundef !49
end_hunk_0
begin_hunk_1_@_ZN5clang13EmitRVVHeaderERKN4llvm12RecordKeeperERNS0_11raw_ostreamE:bb.a

_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i, %bb.v
  %i.dk = phi i64 [ 0, %bb.v ], [ %.pre8.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i ]
  %i.dl = phi ptr [ %i.cw, %bb.v ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i ]
  %i.dm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %i.dl, i64 noundef %i.dk) #20 ; 0 uses
  %i.dn = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cw
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i
  %i.dp = load i64, ptr %i.cw, align 8, !tbaa !24
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.dr = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dr, %i.cv
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_110RVVEmitter15printHeaderCodeERN4llvm11raw_ostreamE.exit.i.preheader, label %bb.u

_ZN4llvm11raw_ostreamlsEPKc.exit138.i:            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit138.i.preheader, %_ZN4llvm11raw_ostreamlsEPKc.exit149.i
  %.092.idx241.i = phi i64 [ %.092.add.i, %_ZN4llvm11raw_ostreamlsEPKc.exit149.i ], [ 0, %_ZN4llvm11raw_ostreamlsEPKc.exit138.i.preheader ] ; 2 uses
  %.092.ptr.i = getelementptr inbounds nuw i8, ptr @_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEE4Exts, i64 %.092.idx241.i
  %i.ds = load ptr, ptr %.092.ptr.i, align 8, !tbaa !100 ; 4 uses
  %i.dt = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.du = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = icmp ult i64 %i.dx, 26
  br i1 %i.dy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit138.i
  %i.dz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.770, i64 noundef 26) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit141.i

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit138.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.du, ptr noundef nonnull align 1 dereferenceable(26) @.str.770, i64 26, i1 false)
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 26
  store ptr %i.eb, ptr %i.p, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit141.i

_ZN4llvm11raw_ostreamlsEPKc.exit141.i:            ; preds = %bb.ab, %bb.aa
  %.0.i.i140.i = phi ptr [ %i.dz, %bb.aa ], [ %1, %bb.ab ] ; 6 uses
  %.not.i.i142.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i142.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit145.i, label %_ZN4llvm9StringRefC2EPKc.exit.i.i

_ZN4llvm9StringRefC2EPKc.exit.i.i:                ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit141.i
  %i.ec = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ds) #20 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i.i140.i, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !46
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i.i140.i, i64 32 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !47 ; 2 uses
  %i.eh = ptrtoint ptr %i.ee to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = icmp ugt i64 %i.ec, %i.ej
  br i1 %i.ek, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i
  %i.el = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i140.i, ptr noundef nonnull %i.ds, i64 noundef %i.ec) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit145.i

bb.ad:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i.i
  %.not.i2.i143.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i2.i143.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit145.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eg, ptr nonnull align 1 %i.ds, i64 %i.ec, i1 false)
  %i.em = load ptr, ptr %i.ef, align 8, !tbaa !47
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ec
  store ptr %i.en, ptr %i.ef, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit145.i

_ZN4llvm11raw_ostreamlsEPKc.exit145.i:            ; preds = %bb.ae, %bb.ad, %bb.ac, %_ZN4llvm11raw_ostreamlsEPKc.exit141.i
  %.0.i.i144.i = phi ptr [ %i.el, %bb.ac ], [ %.0.i.i140.i, %bb.ae ], [ %.0.i.i140.i, %bb.ad ], [ %.0.i.i140.i, %_ZN4llvm11raw_ostreamlsEPKc.exit141.i ] ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.i.i144.i, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !46
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i144.i, i64 32 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !47 ; 2 uses
  %i.es = ptrtoint ptr %i.ep to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = icmp ult i64 %i.eu, 3
  br i1 %i.ev, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit145.i
  %i.ew = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i144.i, ptr noundef nonnull @.str.771, i64 noundef 3) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit149.i

bb.ag:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit145.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.er, ptr noundef nonnull align 1 dereferenceable(3) @.str.771, i64 3, i1 false)
  %i.ex = load ptr, ptr %i.eq, align 8, !tbaa !47
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  store ptr %i.ey, ptr %i.eq, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit149.i

_ZN4llvm11raw_ostreamlsEPKc.exit149.i:            ; preds = %bb.ag, %bb.af
  %.092.add.i = add nuw nsw i64 %.092.idx241.i, 8 ; 2 uses
  %.not.i = icmp eq i64 %.092.add.i, 232
  br i1 %.not.i, label %bb.t, label %_ZN4llvm11raw_ostreamlsEPKc.exit138.i

_ZN12_GLOBAL__N_110RVVEmitter15printHeaderCodeERN4llvm11raw_ostreamE.exit.i: ; preds = %_ZN12_GLOBAL__N_110RVVEmitter15printHeaderCodeERN4llvm11raw_ostreamE.exit.i.preheader, %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit.i"
  %.098.idx242.i = phi i64 [ %.098.add.i, %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit.i" ], [ 0, %_ZN12_GLOBAL__N_110RVVEmitter15printHeaderCodeERN4llvm11raw_ostreamE.exit.i.preheader ] ; 2 uses
  %.098.ptr.i = getelementptr inbounds nuw i8, ptr @__const._ZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamE.Log2LMULs, i64 %.098.idx242.i
  %i.ez = load i32, ptr %.098.ptr.i, align 4, !tbaa !101
  %.sroa.060.0.copyload.i = load i32, ptr @_ZN5clang5RISCV19PrototypeDescriptor4MaskE, align 2
  %i.fa = call { ptr, i8 } @_ZN5clang5RISCV12RVVTypeCache11computeTypeENS0_9BasicTypeEiNS0_19PrototypeDescriptorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i16 noundef zeroext 1, i32 noundef %i.ez, i32 %.sroa.060.0.copyload.i) #20 ; 2 uses
  %i.fb = extractvalue { ptr, i8 } %i.fa, 0       ; 4 uses
  %i.fc = extractvalue { ptr, i8 } %i.fa, 1
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %bb.ah, label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit.i"

bb.ah:                                            ; preds = %_ZN12_GLOBAL__N_110RVVEmitter15printHeaderCodeERN4llvm11raw_ostreamE.exit.i
  %i.fe = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.ff = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = icmp ult i64 %i.fi, 8
  br i1 %i.fj, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.780, i64 noundef 8) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  store i64 2334664938711185780, ptr %i.ff, align 1
  %i.fl = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.fm, ptr %i.p, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i = phi ptr [ %i.fk, %bb.ai ], [ %1, %bb.aj ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !19
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 72
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !18
  %i.fr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i, ptr noundef %i.fo, i64 noundef %i.fq) #20 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !46
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 32 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !47 ; 2 uses
  %i.fw = icmp eq ptr %i.ft, %i.fv
  br i1 %i.fw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.fx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fr, ptr noundef nonnull @.str.781, i64 noundef 1) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i.i

bb.al:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  store i8 32, ptr %i.fv, align 1
  %i.fy = load ptr, ptr %i.fu, align 8, !tbaa !47
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  store ptr %i.fz, ptr %i.fu, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit5.i.i:            ; preds = %bb.al, %bb.ak
  %.0.i.i4.i.i = phi ptr [ %i.fx, %bb.ak ], [ %i.fr, %bb.al ]
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fb, i64 96
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !19
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fb, i64 104
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !18
  %i.ge = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i4.i.i, ptr noundef %i.gb, i64 noundef %i.gd) #20 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !46
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 32 ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !47 ; 2 uses
  %i.gj = ptrtoint ptr %i.gg to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = icmp ult i64 %i.gl, 2
  br i1 %i.gm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5.i.i
  %i.gn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ge, ptr noundef nonnull @.str.1, i64 noundef 2) #20 ; 0 uses
  br label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit.i"

bb.an:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5.i.i
  store i16 2619, ptr %i.gi, align 1
  %i.go = load ptr, ptr %i.gh, align 8, !tbaa !47
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  store ptr %i.gp, ptr %i.gh, align 8, !tbaa !47
  br label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit.i"

"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit.i": ; preds = %bb.an, %bb.am, %_ZN12_GLOBAL__N_110RVVEmitter15printHeaderCodeERN4llvm11raw_ostreamE.exit.i
  %.098.add.i = add nuw nsw i64 %.098.idx242.i, 4 ; 2 uses
  %.not100.i = icmp eq i64 %.098.add.i, 28
  br i1 %.not100.i, label %.preheader.i, label %_ZN12_GLOBAL__N_110RVVEmitter15printHeaderCodeERN4llvm11raw_ostreamE.exit.i

bb.ao:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store <4 x i16> <i16 32, i16 64, i16 128, i16 16>, ptr %i.b, align 8, !tbaa !179
  br label %bb.bu

.preheader.i:                                     ; preds = %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit.i", %bb.ap
  %.097.idx245.i = phi i64 [ %.097.add.i, %bb.ap ], [ 0, %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit.i" ] ; 2 uses
  %.097.ptr.i = getelementptr inbounds nuw i8, ptr @switch.table._ZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamE, i64 %.097.idx245.i
  %i.gq = load i8, ptr %.097.ptr.i, align 1
  %switch.ext.i = zext i8 %i.gq to i16            ; 4 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.be
  %.097.add.i = add nuw nsw i64 %.097.idx245.i, 1 ; 2 uses
  %.not101.i = icmp eq i64 %.097.add.i, 4
  br i1 %.not101.i, label %bb.ao, label %.preheader.i

bb.aq:                                            ; preds = %bb.be, %.preheader.i
  %.096.idx244.i = phi i64 [ 0, %.preheader.i ], [ %.096.add.i, %bb.be ] ; 2 uses
  %.096.ptr.i = getelementptr inbounds nuw i8, ptr @__const._ZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamE.Log2LMULs, i64 %.096.idx244.i
  %i.gr = load i32, ptr %.096.ptr.i, align 4, !tbaa !101 ; 4 uses
  %.sroa.038.0.copyload.i = load i32, ptr @_ZN5clang5RISCV19PrototypeDescriptor6VectorE, align 2
  %i.gs = call { ptr, i8 } @_ZN5clang5RISCV12RVVTypeCache11computeTypeENS0_9BasicTypeEiNS0_19PrototypeDescriptorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i16 noundef zeroext %switch.ext.i, i32 noundef %i.gr, i32 %.sroa.038.0.copyload.i) #20 ; 2 uses
  %i.gt = extractvalue { ptr, i8 } %i.gs, 0       ; 4 uses
  %i.gu = extractvalue { ptr, i8 } %i.gs, 1
  %i.gv = trunc nuw i8 %i.gu to i1
  br i1 %i.gv, label %bb.ar, label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit159.i.preheader"

"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit159.i.preheader": ; preds = %bb.bd, %bb.bc, %bb.aq
  br label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit159.i"

bb.ar:                                            ; preds = %bb.aq
  %i.gw = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.gx = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = icmp ult i64 %i.ha, 8
  br i1 %i.hb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.780, i64 noundef 8) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i150.i

bb.at:                                            ; preds = %bb.ar
  store i64 2334664938711185780, ptr %i.gx, align 1
  %i.hd = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.he, ptr %i.p, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i150.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i150.i:          ; preds = %bb.at, %bb.as
  %.0.i.i.i151.i = phi ptr [ %i.hc, %bb.as ], [ %1, %bb.at ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gt, i64 64
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !19
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gt, i64 72
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !18
  %i.hj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i151.i, ptr noundef %i.hg, i64 noundef %i.hi) #20 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !46
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 32 ; 3 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !47 ; 2 uses
  %i.ho = icmp eq ptr %i.hl, %i.hn
  br i1 %i.ho, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i150.i
  %i.hp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.hj, ptr noundef nonnull @.str.781, i64 noundef 1) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i152.i

bb.av:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i150.i
  store i8 32, ptr %i.hn, align 1
  %i.hq = load ptr, ptr %i.hm, align 8, !tbaa !47
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  store ptr %i.hr, ptr %i.hm, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i152.i

_ZN4llvm11raw_ostreamlsEPKc.exit5.i152.i:         ; preds = %bb.av, %bb.au
  %.0.i.i4.i153.i = phi ptr [ %i.hp, %bb.au ], [ %i.hj, %bb.av ]
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gt, i64 96
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !19
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gt, i64 104
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !18
  %i.hw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i4.i153.i, ptr noundef %i.ht, i64 noundef %i.hv) #20 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !46
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 32 ; 3 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !47 ; 2 uses
  %i.ib = ptrtoint ptr %i.hy to i64
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = icmp ult i64 %i.id, 2
  br i1 %i.ie, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5.i152.i
  %i.if = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.hw, ptr noundef nonnull @.str.1, i64 noundef 2) #20 ; 0 uses
  br label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit154.i"

bb.ax:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5.i152.i
  store i16 2619, ptr %i.ia, align 1
  %i.ig = load ptr, ptr %i.hz, align 8, !tbaa !47
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  store ptr %i.ih, ptr %i.hz, align 8, !tbaa !47
  br label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit154.i"

"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit154.i": ; preds = %bb.ax, %bb.aw
  %i.ii = call { ptr, i8 } @_ZN5clang5RISCV12RVVTypeCache11computeTypeENS0_9BasicTypeEiNS0_19PrototypeDescriptorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i16 noundef zeroext %switch.ext.i, i32 noundef %i.gr, i32 524290) #20
  %i.ij = extractvalue { ptr, i8 } %i.ii, 0       ; 4 uses
  %i.ik = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.il = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = icmp ult i64 %i.io, 8
  br i1 %i.ip, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit154.i"
  %i.iq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.780, i64 noundef 8) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i155.i

bb.az:                                            ; preds = %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit154.i"
  store i64 2334664938711185780, ptr %i.il, align 1
  %i.ir = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store ptr %i.is, ptr %i.p, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i155.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i155.i:          ; preds = %bb.az, %bb.ay
  %.0.i.i.i156.i = phi ptr [ %i.iq, %bb.ay ], [ %1, %bb.az ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.ij, i64 64
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !19
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ij, i64 72
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !18
  %i.ix = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i156.i, ptr noundef %i.iu, i64 noundef %i.iw) #20 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !46
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 32 ; 3 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !47 ; 2 uses
  %i.jc = icmp eq ptr %i.iz, %i.jb
  br i1 %i.jc, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i155.i
  %i.jd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ix, ptr noundef nonnull @.str.781, i64 noundef 1) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i157.i

bb.bb:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i155.i
  store i8 32, ptr %i.jb, align 1
  %i.je = load ptr, ptr %i.ja, align 8, !tbaa !47
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  store ptr %i.jf, ptr %i.ja, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i157.i

_ZN4llvm11raw_ostreamlsEPKc.exit5.i157.i:         ; preds = %bb.bb, %bb.ba
  %.0.i.i4.i158.i = phi ptr [ %i.jd, %bb.ba ], [ %i.ix, %bb.bb ]
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ij, i64 96
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !19
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ij, i64 104
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !18
  %i.jk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i4.i158.i, ptr noundef %i.jh, i64 noundef %i.jj) #20 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !46
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 32 ; 3 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !47 ; 2 uses
  %i.jp = ptrtoint ptr %i.jm to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = icmp ult i64 %i.jr, 2
  br i1 %i.js, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5.i157.i
  %i.jt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.jk, ptr noundef nonnull @.str.1, i64 noundef 2) #20 ; 0 uses
  br label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit159.i.preheader"

bb.bd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5.i157.i
  store i16 2619, ptr %i.jo, align 1
  %i.ju = load ptr, ptr %i.jn, align 8, !tbaa !47
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  store ptr %i.jv, ptr %i.jn, align 8, !tbaa !47
  br label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit159.i.preheader"

bb.be:                                            ; preds = %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit169.i"
  %.096.add.i = add nuw nsw i64 %.096.idx244.i, 4 ; 2 uses
  %.not106.i = icmp eq i64 %.096.add.i, 28
  br i1 %.not106.i, label %bb.ap, label %bb.aq

"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit159.i": ; preds = %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit159.i.preheader", %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit169.i"
  %.095243.i = phi i32 [ %i.nd, %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit169.i" ], [ 2, %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit159.i.preheader" ] ; 2 uses
  %i.jw = shl nuw nsw i32 %.095243.i, 8
  %.sroa.2220.0.insert.shift.i = add nuw nsw i32 %i.jw, 8448 ; 2 uses
  %.sroa.0219.0.insert.insert.i = or disjoint i32 %.sroa.2220.0.insert.shift.i, 1048578
  %i.jx = call { ptr, i8 } @_ZN5clang5RISCV12RVVTypeCache11computeTypeENS0_9BasicTypeEiNS0_19PrototypeDescriptorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i16 noundef zeroext %switch.ext.i, i32 noundef %i.gr, i32 %.sroa.0219.0.insert.insert.i) #20 ; 2 uses
  %i.jy = extractvalue { ptr, i8 } %i.jx, 0       ; 4 uses
  %i.jz = extractvalue { ptr, i8 } %i.jx, 1
  %.sroa.0213.0.insert.insert.i = or disjoint i32 %.sroa.2220.0.insert.shift.i, 524290
  %i.ka = call { ptr, i8 } @_ZN5clang5RISCV12RVVTypeCache11computeTypeENS0_9BasicTypeEiNS0_19PrototypeDescriptorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i16 noundef zeroext %switch.ext.i, i32 noundef %i.gr, i32 %.sroa.0213.0.insert.insert.i) #20 ; 2 uses
  %i.kb = extractvalue { ptr, i8 } %i.ka, 0       ; 4 uses
  %i.kc = extractvalue { ptr, i8 } %i.ka, 1
  %i.kd = trunc nuw i8 %i.jz to i1
  br i1 %i.kd, label %bb.bf, label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit164.i"

bb.bf:                                            ; preds = %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit159.i"
  %i.ke = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.kf = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.kg = ptrtoint ptr %i.ke to i64
  %i.kh = ptrtoint ptr %i.kf to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = icmp ult i64 %i.ki, 8
  br i1 %i.kj, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.kk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.780, i64 noundef 8) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i160.i

bb.bh:                                            ; preds = %bb.bf
  store i64 2334664938711185780, ptr %i.kf, align 1
  %i.kl = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store ptr %i.km, ptr %i.p, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i160.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i160.i:          ; preds = %bb.bh, %bb.bg
  %.0.i.i.i161.i = phi ptr [ %i.kk, %bb.bg ], [ %1, %bb.bh ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jy, i64 64
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !19
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jy, i64 72
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !18
  %i.kr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i161.i, ptr noundef %i.ko, i64 noundef %i.kq) #20 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !46
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 32 ; 3 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !47 ; 2 uses
  %i.kw = icmp eq ptr %i.kt, %i.kv
  br i1 %i.kw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i160.i
  %i.kx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.kr, ptr noundef nonnull @.str.781, i64 noundef 1) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i162.i

bb.bj:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i160.i
  store i8 32, ptr %i.kv, align 1
  %i.ky = load ptr, ptr %i.ku, align 8, !tbaa !47
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 1
  store ptr %i.kz, ptr %i.ku, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i162.i

_ZN4llvm11raw_ostreamlsEPKc.exit5.i162.i:         ; preds = %bb.bj, %bb.bi
  %.0.i.i4.i163.i = phi ptr [ %i.kx, %bb.bi ], [ %i.kr, %bb.bj ]
  %i.la = getelementptr inbounds nuw i8, ptr %i.jy, i64 96
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !19
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jy, i64 104
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !18
  %i.le = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i4.i163.i, ptr noundef %i.lb, i64 noundef %i.ld) #20 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 24
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !46
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 32 ; 3 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !47 ; 2 uses
  %i.lj = ptrtoint ptr %i.lg to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = icmp ult i64 %i.ll, 2
  br i1 %i.lm, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5.i162.i
  %i.ln = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.le, ptr noundef nonnull @.str.1, i64 noundef 2) #20 ; 0 uses
  br label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit164.i"

bb.bl:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5.i162.i
  store i16 2619, ptr %i.li, align 1
  %i.lo = load ptr, ptr %i.lh, align 8, !tbaa !47
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 2
  store ptr %i.lp, ptr %i.lh, align 8, !tbaa !47
  br label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit164.i"

"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit164.i": ; preds = %bb.bl, %bb.bk, %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit159.i"
  %i.lq = trunc nuw i8 %i.kc to i1
  br i1 %i.lq, label %bb.bm, label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit169.i"

bb.bm:                                            ; preds = %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit164.i"
  %i.lr = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.ls = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = icmp ult i64 %i.lv, 8
  br i1 %i.lw, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.lx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull @.str.780, i64 noundef 8) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i165.i

bb.bo:                                            ; preds = %bb.bm
  store i64 2334664938711185780, ptr %i.ls, align 1
  %i.ly = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store ptr %i.lz, ptr %i.p, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i165.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i165.i:          ; preds = %bb.bo, %bb.bn
  %.0.i.i.i166.i = phi ptr [ %i.lx, %bb.bn ], [ %1, %bb.bo ]
  %i.ma = getelementptr inbounds nuw i8, ptr %i.kb, i64 64
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !19
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kb, i64 72
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !18
  %i.me = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i166.i, ptr noundef %i.mb, i64 noundef %i.md) #20 ; 4 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !46
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 32 ; 3 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !47 ; 2 uses
  %i.mj = icmp eq ptr %i.mg, %i.mi
  br i1 %i.mj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i165.i
  %i.mk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.me, ptr noundef nonnull @.str.781, i64 noundef 1) #20
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i167.i

bb.bq:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i165.i
  store i8 32, ptr %i.mi, align 1
  %i.ml = load ptr, ptr %i.mh, align 8, !tbaa !47
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  store ptr %i.mm, ptr %i.mh, align 8, !tbaa !47
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5.i167.i

_ZN4llvm11raw_ostreamlsEPKc.exit5.i167.i:         ; preds = %bb.bq, %bb.bp
  %.0.i.i4.i168.i = phi ptr [ %i.mk, %bb.bp ], [ %i.me, %bb.bq ]
  %i.mn = getelementptr inbounds nuw i8, ptr %i.kb, i64 96
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !19
  %i.mp = getelementptr inbounds nuw i8, ptr %i.kb, i64 104
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !18
  %i.mr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i4.i168.i, ptr noundef %i.mo, i64 noundef %i.mq) #20 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !46
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 32 ; 3 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !47 ; 2 uses
  %i.mw = ptrtoint ptr %i.mt to i64
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = sub i64 %i.mw, %i.mx
  %i.mz = icmp ult i64 %i.my, 2
  br i1 %i.mz, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5.i167.i
  %i.na = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.mr, ptr noundef nonnull @.str.1, i64 noundef 2) #20 ; 0 uses
  br label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit169.i"

bb.bs:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit5.i167.i
  store i16 2619, ptr %i.mv, align 1
  %i.nb = load ptr, ptr %i.mu, align 8, !tbaa !47
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 2
  store ptr %i.nc, ptr %i.mu, align 8, !tbaa !47
  br label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit169.i"

"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit169.i": ; preds = %bb.bs, %bb.br, %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit164.i"
  %i.nd = add nuw nsw i32 %.095243.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.nd, 9
  br i1 %exitcond.not.i, label %bb.be, label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit159.i", !llvm.loop !175

bb.bt:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.dc

bb.bu:                                            ; preds = %bb.bv, %bb.ao
  %.094.idx249.i = phi i64 [ 0, %bb.ao ], [ %.094.add.i, %bb.bv ] ; 2 uses
  %.094.ptr.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.094.idx249.i
  %i.ne = load i16, ptr %.094.ptr.i, align 2, !tbaa !179 ; 3 uses
  %i.nf = icmp eq i16 %i.ne, 16
  %invariant.op246.reass.i = select i1 %i.nf, i32 4202754, i32 2105602
  br label %bb.bw

bb.bv:                                            ; preds = %bb.ce
  %.094.add.i = add nuw nsw i64 %.094.idx249.i, 2 ; 2 uses
  %.not102.i = icmp eq i64 %.094.add.i, 8
  br i1 %.not102.i, label %bb.bt, label %bb.bu

bb.bw:                                            ; preds = %bb.ce, %bb.bu
  %.093.idx248.i = phi i64 [ 0, %bb.bu ], [ %.093.add.i, %bb.ce ] ; 2 uses
  %.093.ptr.i = getelementptr inbounds nuw i8, ptr @__const._ZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamE.Log2LMULs, i64 %.093.idx248.i
  %i.ng = load i32, ptr %.093.ptr.i, align 4, !tbaa !101 ; 2 uses
  %.sroa.016.0.copyload.i = load i32, ptr @_ZN5clang5RISCV19PrototypeDescriptor6VectorE, align 2
  %i.nh = call { ptr, i8 } @_ZN5clang5RISCV12RVVTypeCache11computeTypeENS0_9BasicTypeEiNS0_19PrototypeDescriptorE(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i16 noundef zeroext %i.ne, i32 noundef %i.ng, i32 %.sroa.016.0.copyload.i) #20 ; 2 uses
  %i.ni = extractvalue { ptr, i8 } %i.nh, 0       ; 4 uses
  %i.nj = extractvalue { ptr, i8 } %i.nh, 1
  %i.nk = trunc nuw i8 %i.nj to i1
  br i1 %i.nk, label %bb.bx, label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit174.i.preheader"

"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit174.i.preheader": ; preds = %bb.cd, %bb.cc, %bb.bw
  br label %"_ZZN12_GLOBAL__N_110RVVEmitter12createHeaderERN4llvm11raw_ostreamEENK3$_0clIPN5clang5RISCV7RVVTypeEEEDaT_.exit174.i"

bb.bx:                                            ; preds = %bb.bw
  %i.nl = load ptr, ptr %i.n, align 8, !tbaa !46
  %i.nm = load ptr, ptr %i.p, align 8, !tbaa !47  ; 2 uses
  %i.nn = ptrtoint ptr %i.nl to i64
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = sub i64 %i.nn, %i.no
  %i.nq = icmp ult i64 %i.np, 8
  br i1 %i.nq, label %bb.by, label %bb.bz

end_hunk_1
