Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Clang?download=true
inline.NumInlined: 10765
inline.NumDeleted: 2395
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionE:bb.a
  %i.xc = zext i8 %i.xb to i64
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xc
  store i8 1, ptr %i.xd, align 1, !tbaa !138
  %i.xe = load ptr, ptr %43, align 8, !tbaa !124  ; 3 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  %i.xg = load i8, ptr %i.xe, align 8, !tbaa !137 ; 2 uses
  %i.xh = add i8 %i.xg, 1
  store i8 %i.xh, ptr %i.xe, align 8, !tbaa !137
  %i.xi = zext i8 %i.xg to i64
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xf, i64 %i.xi
  store i64 ptrtoint (ptr @.str.815 to i64), ptr %i.xj, align 8, !tbaa !139
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %43, ptr %.sroa.01006.0, i64 %.sroa.61007.0)
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  br label %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread"

"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread": ; preds = %_ZN4llvm9StringRefC2EPKc.exit511, %_ZN4llvm9StringRefC2EPKc.exit478, %_ZN4llvm9StringRefC2EPKc.exit449, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516, %_ZN4llvmneENS_9StringRefES0_.exit833, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit, %_ZN4llvmneENS_9StringRefES0_.exit838, %_ZN4llvmeqENS_9StringRefES0_.exit809, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit"
  %.11660 = phi ptr [ %.01897, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.11729, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.1, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.11729, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.01897, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.01897, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.11729, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.11729, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.01897, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.23291659 = phi i8 [ %.03271896, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.23291728, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.2329, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.23291728, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.03271896, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.03271896, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.23291728, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.23291728, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.03271896, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.51309.21658 = phi i64 [ %.sroa.51309.01890, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.51309.21724, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.51309.2, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.51309.21724, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.sroa.51309.01890, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.sroa.51309.01890, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.51309.21724, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.51309.21724, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.51309.01890, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.01308.21657 = phi ptr [ %.sroa.01308.01889, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.01308.21723, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.01308.2, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.01308.21723, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.sroa.01308.01889, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.sroa.01308.01889, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.01308.21723, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.01308.21723, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.01308.01889, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.81300.11656 = phi i8 [ %.sroa.81300.01888, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.81300.11722, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.81300.1, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.81300.11722, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.sroa.81300.01888, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.sroa.81300.01888, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.81300.11722, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.81300.11722, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.81300.01888, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.01294.11655 = phi i8 [ %.sroa.01294.01887, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.01294.11721, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.01294.1, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.01294.11721, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.sroa.01294.01887, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.sroa.01294.01887, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.01294.11721, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.01294.11721, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.01294.01887, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.81288.11654 = phi i8 [ %.sroa.81288.01886, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.81288.11720, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.81288.1, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.81288.11720, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.sroa.81288.01886, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.sroa.81288.01886, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.81288.11720, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.81288.11720, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.81288.01886, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.01284.11653 = phi i8 [ %.sroa.01284.01885, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.01284.11719, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.01284.1, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.01284.11719, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.sroa.01284.01885, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.sroa.01284.01885, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.01284.11719, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.01284.11719, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.01284.01885, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.71279.21652 = phi i64 [ %.sroa.71279.01884, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.71279.21718, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.71279.2, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.71279.21718, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.sroa.71279.01884, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.sroa.71279.01884, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.71279.21718, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.71279.21718, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.71279.01884, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.01278.21651 = phi ptr [ %.sroa.01278.01883, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.01278.21717, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.01278.2, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.01278.21717, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.sroa.01278.01883, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.sroa.01278.01883, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.01278.21717, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.01278.21717, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.01278.01883, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.51276.11650 = phi i64 [ %.sroa.51276.01882, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.51276.11716, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.51276.1, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.51276.11716, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.sroa.51276.01882, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.sroa.51276.01882, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.51276.11716, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.51276.11716, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.51276.01882, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.01275.11649 = phi ptr [ %.sroa.01275.01881, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.01275.11715, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.01275.1, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.01275.11715, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.sroa.01275.01881, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.sroa.01275.01881, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.01275.11715, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.01275.11715, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.01275.01881, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.0.31648 = phi ptr [ %.sroa.0.01879, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.0.31714, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.0.3, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.0.31714, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ @.str.11, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ @.str.11, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.0.31714, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.0.31714, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.0.01879, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.19.31647 = phi i64 [ %.sroa.19.01878, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.19.31713, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.19.3, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.19.31713, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.19.31713, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.19.31713, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.19.01878, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.214351646 = phi i8 [ %.014331877, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.21435, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.214351712, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.214351712, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.214351712, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.014331877, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.314401645 = phi i8 [ %.014371876, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.31440, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.314401711, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.314401711, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.314401711, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.014371876, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.214441644 = phi i8 [ 1, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.21444, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.214441710, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.214441710, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.214441710, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.214481643 = phi i8 [ 0, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.21448, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.214481709, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 1, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 1, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.214481709, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.214481709, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.214521642 = phi i8 [ 0, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.21452, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.214521708, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 1, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 1, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.214521708, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.214521708, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.214561641 = phi i8 [ 0, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.21456, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.214561707, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 1, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 1, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.214561707, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.214561707, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.214601640 = phi i8 [ 1, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.21460, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.214601706, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 1, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.214601706, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.214601706, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.214641639 = phi i8 [ 1, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.21464, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.214641705, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 1, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.214641705, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.214641705, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.16.31638 = phi i64 [ 18, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.16.31704, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.16.3, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.16.31704, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 15, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 21, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.16.31704, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.16.31704, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.16.01869, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.01372.31637 = phi ptr [ @.str.813, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.01372.31703, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.01372.3, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.01372.31703, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ @.str.810, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ @.str.811, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.01372.31703, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.01372.31703, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.01372.01868, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.214681636 = phi i8 [ %.014661867, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.214681702, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.21468, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.214681702, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 1, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 1, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.214681702, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.214681702, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.014661867, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.18.41635 = phi i64 [ 2, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ 3, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.18.4, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.18.41701, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 4, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 4, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.18.41701, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.18.41701, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.18.11866, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.01376.41634 = phi ptr [ @.str.801, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.01376.41700, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.01376.4, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.01376.41700, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ @.str.809, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ @.str.809, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.01376.41700, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.01376.41700, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.01376.11865, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.6.21633 = phi i64 [ %.sroa.6.01864, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.6.21699, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.6.2, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.6.21699, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.sroa.6.01864, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.sroa.6.01864, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.6.21699, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.6.21699, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.6.01864, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.01383.21632 = phi ptr [ %.sroa.01383.01863, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.01383.21698, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.01383.2, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.sroa.01383.21698, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.sroa.01383.01863, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.sroa.01383.01863, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.sroa.01383.21698, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.sroa.01383.21698, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.01383.01863, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.214741631 = phi i8 [ %i.fi, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.214741697, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.21474, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.214741697, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 0, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.214741697, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.214741697, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %i.fi, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.114771630 = phi i8 [ %.014761857, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.114771696, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.11477, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ %.114771696, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %.014761857, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %.014761857, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ %.114771696, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ %.114771696, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.014761857, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.01311.3 = phi ptr [ %i.fl, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.01311.21725, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.01311.01891, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ @.str.11, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ %i.fl, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ %i.fl, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ @.str.11, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ @.str.11, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.01311.01891, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.sroa.101312.3 = phi i64 [ 7, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ %.sroa.101312.21726, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ %.sroa.101312.01893, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ 4, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ 10, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ 0, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ 0, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ %.sroa.101312.01893, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %.4 = phi i1 [ false, %_ZN4llvm9StringRefC2EPKc.exit511 ], [ true, %_ZN4llvmeqENS_9StringRefES0_.exit809 ], [ false, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit" ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit833 ], [ false, %_ZN4llvm9StringRefC2EPKc.exit449 ], [ false, %_ZN4llvm9StringRefC2EPKc.exit478 ], [ false, %_ZN4llvmneENS_9StringRefES0_.exit838 ], [ false, %_ZNK5clang17DiagnosticBuilderlsIA18_cEERKS0_RKT_.exit ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit516.thread1516 ]
  %i.xk = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !118 ; 2 uses
  %.not.i.i844 = icmp eq ptr %i.xl, null
  %spec.select.i.i = select i1 %.not.i.i844, ptr %i.ed, ptr %i.xl
  %i.xm = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 44 ; 2 uses
  %i.xn = load i8, ptr %i.xm, align 4
  %i.xo = or i8 %i.xn, 1
  store i8 %i.xo, ptr %i.xm, align 4
  br label %"_ZN4llvm10scope_exitIZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS2_6DriverEbRKNS_3opt7ArgListERNS_11SmallVectorIPKcLj16EEERKNS2_9JobActionEE3$_0ED2Ev.exit"

"_ZN4llvm10scope_exitIZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS2_6DriverEbRKNS_3opt7ArgListERNS_11SmallVectorIPKcLj16EEERKNS2_9JobActionEE3$_0ED2Ev.exit": ; preds = %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread", %bb.i, %bb.bq
  %.21478 = phi i8 [ %.014761857, %bb.i ], [ %.114771630, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.014761857, %bb.bq ] ; 3 uses
  %.31475 = phi i8 [ %.014721858, %bb.i ], [ %.214741631, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.014721858, %bb.bq ] ; 5 uses
  %.sroa.01383.3 = phi ptr [ %.sroa.01383.01863, %bb.i ], [ %.sroa.01383.21632, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.01383.01863, %bb.bq ]
  %.sroa.6.3 = phi i64 [ %.sroa.6.01864, %bb.i ], [ %.sroa.6.21633, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.6.01864, %bb.bq ]
  %.sroa.01376.5 = phi ptr [ %.sroa.01376.11865, %bb.i ], [ %.sroa.01376.41634, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.01376.11865, %bb.bq ] ; 4 uses
  %.sroa.18.5 = phi i64 [ %.sroa.18.11866, %bb.i ], [ %.sroa.18.41635, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.18.11866, %bb.bq ] ; 4 uses
  %.31469 = phi i8 [ %.014661867, %bb.i ], [ %.214681636, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.014661867, %bb.bq ]
  %.sroa.01372.4 = phi ptr [ %.sroa.01372.01868, %bb.i ], [ %.sroa.01372.31637, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.01372.01868, %bb.bq ]
  %.sroa.16.4 = phi i64 [ %.sroa.16.01869, %bb.i ], [ %.sroa.16.31638, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.16.01869, %bb.bq ]
  %.31465 = phi i8 [ %.014621870, %bb.i ], [ %.214641639, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.014621870, %bb.bq ] ; 2 uses
  %.31461 = phi i8 [ %.014581871, %bb.i ], [ %.214601640, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.014581871, %bb.bq ] ; 2 uses
  %.31457 = phi i8 [ %.014541872, %bb.i ], [ %.214561641, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.014541872, %bb.bq ] ; 4 uses
  %.31453 = phi i8 [ %.014501873, %bb.i ], [ %.214521642, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.014501873, %bb.bq ] ; 2 uses
  %.31449 = phi i8 [ %.014461874, %bb.i ], [ %.214481643, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.014461874, %bb.bq ] ; 2 uses
  %.31445 = phi i8 [ %.014421875, %bb.i ], [ %.214441644, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.014421875, %bb.bq ] ; 2 uses
  %.41441 = phi i8 [ %.014371876, %bb.i ], [ %.314401645, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.014371876, %bb.bq ] ; 4 uses
  %.31436 = phi i8 [ %.014331877, %bb.i ], [ %.214351646, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.014331877, %bb.bq ] ; 4 uses
  %.sroa.19.4 = phi i64 [ %.sroa.19.01878, %bb.i ], [ %.sroa.19.31647, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.19.01878, %bb.bq ] ; 4 uses
  %.sroa.0.4 = phi ptr [ %.sroa.0.01879, %bb.i ], [ %.sroa.0.31648, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.0.01879, %bb.bq ] ; 4 uses
  %.sroa.01275.2 = phi ptr [ %.sroa.01275.01881, %bb.i ], [ %.sroa.01275.11649, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.01275.01881, %bb.bq ] ; 4 uses
  %.sroa.51276.2 = phi i64 [ %.sroa.51276.01882, %bb.i ], [ %.sroa.51276.11650, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.51276.01882, %bb.bq ] ; 4 uses
  %.sroa.01278.3 = phi ptr [ %.sroa.01278.01883, %bb.i ], [ %.sroa.01278.21651, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.01278.01883, %bb.bq ] ; 4 uses
  %.sroa.71279.3 = phi i64 [ %.sroa.71279.01884, %bb.i ], [ %.sroa.71279.21652, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.71279.01884, %bb.bq ] ; 4 uses
  %.sroa.01284.2 = phi i8 [ %.sroa.01284.01885, %bb.i ], [ %.sroa.01284.11653, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.01284.01885, %bb.bq ] ; 4 uses
  %.sroa.81288.2 = phi i8 [ %.sroa.81288.01886, %bb.i ], [ %.sroa.81288.11654, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.81288.01886, %bb.bq ] ; 4 uses
  %.sroa.01294.2 = phi i8 [ %.sroa.01294.01887, %bb.i ], [ %.sroa.01294.11655, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.01294.01887, %bb.bq ] ; 4 uses
  %.sroa.81300.2 = phi i8 [ %.sroa.81300.01888, %bb.i ], [ %.sroa.81300.11656, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.81300.01888, %bb.bq ] ; 4 uses
  %.sroa.01308.3 = phi ptr [ %.sroa.01308.01889, %bb.i ], [ %.sroa.01308.21657, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.01308.01889, %bb.bq ] ; 4 uses
  %.sroa.51309.3 = phi i64 [ %.sroa.51309.01890, %bb.i ], [ %.sroa.51309.21658, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.51309.01890, %bb.bq ] ; 4 uses
  %.sroa.01311.4 = phi ptr [ %.sroa.01311.01891, %bb.i ], [ %.sroa.01311.3, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.01311.01891, %bb.bq ]
  %.sroa.101312.4 = phi i64 [ %.sroa.101312.01893, %bb.i ], [ %.sroa.101312.3, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.sroa.101312.01893, %bb.bq ]
  %.5 = phi i1 [ %.03301895, %bb.i ], [ %.4, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.03301895, %bb.bq ]
  %.3 = phi i8 [ %.03271896, %bb.i ], [ %.23291659, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.03271896, %bb.bq ]
  %.2 = phi ptr [ %.01897, %bb.i ], [ %.11660, %"_ZZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionEENK3$_2clEv.exit.thread" ], [ %.01897, %bb.bq ] ; 4 uses
  %i.xp = trunc nuw i8 %.21478 to i1
  %i.xq = trunc nuw i8 %.014721858 to i1
  %.not1848 = xor i1 %i.xq, true
  %or.cond.i.i.not = select i1 %i.xp, i1 %.not1848, i1 false
  %i.xr = trunc nuw i8 %.31475 to i1
  %or.cond1827 = select i1 %or.cond.i.i.not, i1 %i.xr, i1 false
  %.11471 = select i1 %or.cond1827, ptr %i.ed, ptr %.014701862 ; 4 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.01223.01880, i64 8 ; 2 uses
  %.not2.i.i = icmp eq ptr %i.xs, %i.bb
  br i1 %.not2.i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN4llvm10scope_exitIZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS2_6DriverEbRKNS_3opt7ArgListERNS_11SmallVectorIPKcLj16EEERKNS2_9JobActionEE3$_0ED2Ev.exit", %bb.cb
  %.sroa.01223.2 = phi ptr [ %i.xu, %bb.cb ], [ %i.xs, %"_ZN4llvm10scope_exitIZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS2_6DriverEbRKNS_3opt7ArgListERNS_11SmallVectorIPKcLj16EEERKNS2_9JobActionEE3$_0ED2Ev.exit" ] ; 3 uses
  %i.xt = load ptr, ptr %.sroa.01223.2, align 8, !tbaa !164
  %.not1.i.i = icmp eq ptr %i.xt, null
  br i1 %.not1.i.i, label %bb.cb, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit

bb.cb:                                            ; preds = %.lr.ph.i.i
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.01223.2, i64 8 ; 2 uses
  %.not.i.i846 = icmp eq ptr %i.xu, %i.bb
  br i1 %.not.i.i846, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit, label %.lr.ph.i.i, !llvm.loop !11

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj0EEppEv.exit: ; preds = %.lr.ph.i.i, %bb.cb, %"_ZN4llvm10scope_exitIZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS2_6DriverEbRKNS_3opt7ArgListERNS_11SmallVectorIPKcLj16EEERKNS2_9JobActionEE3$_0ED2Ev.exit"
  %.sroa.01223.3 = phi ptr [ %i.bb, %"_ZN4llvm10scope_exitIZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS2_6DriverEbRKNS_3opt7ArgListERNS_11SmallVectorIPKcLj16EEERKNS2_9JobActionEE3$_0ED2Ev.exit" ], [ %.sroa.01223.2, %.lr.ph.i.i ], [ %i.bb, %bb.cb ] ; 2 uses
  %.not1830 = icmp eq ptr %.sroa.01223.3, %i.bh
  br i1 %.not1830, label %._crit_edge, label %bb.i

bb.cc:                                            ; preds = %._crit_edge
  %i.xv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !140 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.xy = load i32, ptr %i.xx, align 4, !tbaa !141
  %.not.i847 = icmp ult i32 %i.xw, %i.xy
  br i1 %.not.i847, label %bb.ce, label %bb.cd, !prof !142

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.672)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit848

bb.ce:                                            ; preds = %bb.cc
  %i.xz = zext i32 %i.xw to i64
  %i.ya = load ptr, ptr %4, align 8, !tbaa !143
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %i.xz
  store ptr @.str.672, ptr %i.yb, align 1
  %i.yc = load i32, ptr %i.xv, align 8, !tbaa !140
  %i.yd = add i32 %i.yc, 1
  store i32 %i.yd, ptr %i.xv, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit848

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit848: ; preds = %bb.ce, %bb.cd, %._crit_edge
  %.01462.lcssa2089 = phi i8 [ 1, %._crit_edge ], [ 0, %bb.ce ], [ 0, %bb.cd ] ; 3 uses
  %i.ye = trunc nuw i8 %.31461 to i1
  br i1 %i.ye, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850, label %bb.cf

bb.cf:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit848
  %i.yf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !140 ; 2 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !141
  %.not.i849 = icmp ult i32 %i.yg, %i.yi
  br i1 %.not.i849, label %bb.ch, label %bb.cg, !prof !142

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.673)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850

bb.ch:                                            ; preds = %bb.cf
  %i.yj = zext i32 %i.yg to i64
  %i.yk = load ptr, ptr %4, align 8, !tbaa !143
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.yk, i64 %i.yj
  store ptr @.str.673, ptr %i.yl, align 1
  %i.ym = load i32, ptr %i.yf, align 8, !tbaa !140
  %i.yn = add i32 %i.ym, 1
  store i32 %i.yn, ptr %i.yf, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850: ; preds = %bb.ch, %bb.cg, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit848
  %.01458.lcssa20902161 = phi i8 [ 1, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit848 ], [ 0, %bb.ch ], [ 0, %bb.cg ] ; 3 uses
  %i.yo = trunc nuw i8 %.31449 to i1
  br i1 %i.yo, label %bb.ci, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit852

bb.ci:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850
  %i.yp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.yq = load i32, ptr %i.yp, align 8, !tbaa !140 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !141
  %.not.i851 = icmp ult i32 %i.yq, %i.ys
  br i1 %.not.i851, label %bb.ck, label %bb.cj, !prof !142

bb.cj:                                            ; preds = %bb.ci
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.674)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit852

bb.ck:                                            ; preds = %bb.ci
  %i.yt = zext i32 %i.yq to i64
  %i.yu = load ptr, ptr %4, align 8, !tbaa !143
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.yu, i64 %i.yt
  store ptr @.str.674, ptr %i.yv, align 1
  %i.yw = load i32, ptr %i.yp, align 8, !tbaa !140
  %i.yx = add i32 %i.yw, 1
  store i32 %i.yx, ptr %i.yp, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit852

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit852: ; preds = %_ZNK4llvm3opt7ArgList5beginEv.exit, %bb.ck, %bb.cj, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850
  %i.yy = phi i1 [ false, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ true, %bb.ck ], [ true, %bb.cj ], [ false, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 2 uses
  %.0.lcssa210921422219 = phi ptr [ %.2, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.2, %bb.ck ], [ %.2, %bb.cj ], [ null, %_ZNK4llvm3opt7ArgList5beginEv.exit ]
  %.sroa.51309.0.lcssa210821432218 = phi i64 [ %.sroa.51309.3, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.51309.3, %bb.ck ], [ %.sroa.51309.3, %bb.cj ], [ 0, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 2 uses
  %.sroa.01308.0.lcssa210721442217 = phi ptr [ %.sroa.01308.3, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.01308.3, %bb.ck ], [ %.sroa.01308.3, %bb.cj ], [ @.str.11, %_ZNK4llvm3opt7ArgList5beginEv.exit ]
  %.sroa.81300.0.lcssa210621452216 = phi i8 [ %.sroa.81300.2, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.81300.2, %bb.ck ], [ %.sroa.81300.2, %bb.cj ], [ %.sroa.81300.0.extract.trunc, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 5 uses
  %.sroa.01294.0.lcssa210521462215 = phi i8 [ %.sroa.01294.2, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.01294.2, %bb.ck ], [ %.sroa.01294.2, %bb.cj ], [ %.sroa.01294.0.extract.trunc, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 5 uses
  %.sroa.81288.0.lcssa210421472214 = phi i8 [ %.sroa.81288.2, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.81288.2, %bb.ck ], [ %.sroa.81288.2, %bb.cj ], [ %.sroa.81288.0.extract.trunc, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 4 uses
  %.sroa.01284.0.lcssa210321482213 = phi i8 [ %.sroa.01284.2, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.01284.2, %bb.ck ], [ %.sroa.01284.2, %bb.cj ], [ %.sroa.01284.0.extract.trunc, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 4 uses
  %.sroa.71279.0.lcssa210221492212 = phi i64 [ %.sroa.71279.3, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.71279.3, %bb.ck ], [ %.sroa.71279.3, %bb.cj ], [ 0, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 2 uses
  %.sroa.01278.0.lcssa210121502211 = phi ptr [ %.sroa.01278.3, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.01278.3, %bb.ck ], [ %.sroa.01278.3, %bb.cj ], [ @.str.11, %_ZNK4llvm3opt7ArgList5beginEv.exit ]
  %.sroa.51276.0.lcssa210021512210 = phi i64 [ %.sroa.51276.2, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.51276.2, %bb.ck ], [ %.sroa.51276.2, %bb.cj ], [ 0, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 2 uses
  %.sroa.01275.0.lcssa209921522209 = phi ptr [ %.sroa.01275.2, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.01275.2, %bb.ck ], [ %.sroa.01275.2, %bb.cj ], [ @.str.11, %_ZNK4llvm3opt7ArgList5beginEv.exit ]
  %.sroa.0.0.lcssa209821532208 = phi ptr [ %.sroa.0.4, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.0.4, %bb.ck ], [ %.sroa.0.4, %bb.cj ], [ @.str.11, %_ZNK4llvm3opt7ArgList5beginEv.exit ]
  %.sroa.19.0.lcssa209721542207 = phi i64 [ %.sroa.19.4, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.19.4, %bb.ck ], [ %.sroa.19.4, %bb.cj ], [ 0, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 2 uses
  %.01433.lcssa209621552206 = phi i8 [ %.31436, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.31436, %bb.ck ], [ %.31436, %bb.cj ], [ 0, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 2 uses
  %.01437.lcssa209521562205 = phi i8 [ %.41441, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.41441, %bb.ck ], [ %.41441, %bb.cj ], [ 0, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 2 uses
  %.01442.lcssa209421572204 = phi i1 [ %i.eb, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %i.eb, %bb.ck ], [ %i.eb, %bb.cj ], [ true, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 4 uses
  %.01450.lcssa209221592202 = phi i1 [ %i.ea, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %i.ea, %bb.ck ], [ %i.ea, %bb.cj ], [ false, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 3 uses
  %.01454.lcssa209121602201 = phi i8 [ %.31457, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.31457, %bb.ck ], [ %.31457, %bb.cj ], [ 0, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 2 uses
  %.01458.lcssa209021612200 = phi i8 [ %.01458.lcssa20902161, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.01458.lcssa20902161, %bb.ck ], [ %.01458.lcssa20902161, %bb.cj ], [ 1, %_ZNK4llvm3opt7ArgList5beginEv.exit ]
  %.01462.lcssa208921622199 = phi i8 [ %.01462.lcssa2089, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.01462.lcssa2089, %bb.ck ], [ %.01462.lcssa2089, %bb.cj ], [ 1, %_ZNK4llvm3opt7ArgList5beginEv.exit ]
  %.sroa.18.1.lcssa208821632198 = phi i64 [ %.sroa.18.5, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.18.5, %bb.ck ], [ %.sroa.18.5, %bb.cj ], [ %.sroa.18.0, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 2 uses
  %.sroa.01376.1.lcssa208721642197 = phi ptr [ %.sroa.01376.5, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.sroa.01376.5, %bb.ck ], [ %.sroa.01376.5, %bb.cj ], [ %.sroa.01376.0, %_ZNK4llvm3opt7ArgList5beginEv.exit ]
  %.01470.lcssa208621652196 = phi ptr [ %.11471, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.11471, %bb.ck ], [ %.11471, %bb.cj ], [ null, %_ZNK4llvm3opt7ArgList5beginEv.exit ]
  %.01472.lcssa208521662195 = phi i8 [ %.31475, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %.31475, %bb.ck ], [ %.31475, %bb.cj ], [ %i.i, %_ZNK4llvm3opt7ArgList5beginEv.exit ] ; 2 uses
  %.01476.lcssa208421672194 = phi i1 [ %i.dz, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit850 ], [ %i.dz, %bb.ck ], [ %i.dz, %bb.cj ], [ false, %_ZNK4llvm3opt7ArgList5beginEv.exit ]
  %i.yz = trunc nuw i8 %.01472.lcssa208521662195 to i1
  br i1 %i.yz, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit852
  %i.za = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !140 ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !141
  %.not.i853 = icmp ult i32 %i.zb, %i.zd
  br i1 %.not.i853, label %bb.cn, label %bb.cm, !prof !142

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.670)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit854

bb.cn:                                            ; preds = %bb.cl
  %i.ze = zext i32 %i.zb to i64
  %i.zf = load ptr, ptr %4, align 8, !tbaa !143
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %i.ze
  store ptr @.str.670, ptr %i.zg, align 1
  %i.zh = load i32, ptr %i.za, align 8, !tbaa !140
  %i.zi = add i32 %i.zh, 1
  store i32 %i.zi, ptr %i.za, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit854

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit854: ; preds = %bb.cm, %bb.cn
  br i1 %.01476.lcssa208421672194, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit854
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #21
  %i.zj = load ptr, ptr %1, align 8, !tbaa !101, !noalias !1884, !nonnull !36, !align !37
  call void @_ZN5clang17DiagnosticBuilderC1EPNS_17DiagnosticsEngineENS_14SourceLocationEj(ptr noundef nonnull align 8 dereferenceable(66) %44, ptr noundef nonnull align 8 dereferenceable(15256) %i.zj, i32 0, i32 noundef 597) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #21
  call void @_ZNK4llvm3opt3Arg11getAsStringB5cxx11ERKNS0_7ArgListE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %45, ptr noundef nonnull align 8 dereferenceable(88) %.01470.lcssa208621652196, ptr noundef nonnull align 8 dereferenceable(176) %3) #21
  %i.zk = load ptr, ptr %45, align 8, !tbaa !119
  %i.zl = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !120
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %44, ptr %i.zk, i64 %i.zm)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #21
  call void @_ZNK4llvm3opt3Arg11getAsStringB5cxx11ERKNS0_7ArgListE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %46, ptr noundef nonnull align 8 dereferenceable(88) %.0.lcssa210921422219, ptr noundef nonnull align 8 dereferenceable(176) %3) #21
  %i.zn = load ptr, ptr %46, align 8, !tbaa !119
  %i.zo = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !120
  call void @_ZNK5clang19StreamingDiagnostic9AddStringEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(66) %44, ptr %i.zn, i64 %i.zp)
  %i.zq = load ptr, ptr %46, align 8, !tbaa !119  ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  %i.zs = icmp eq ptr %i.zq, %i.zr
  br i1 %i.zs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855: ; preds = %bb.co
  %i.zt = load i64, ptr %i.zr, align 8, !tbaa !138
  %i.zu = add i64 %i.zt, 1
  call void @_ZdlPvm(ptr noundef %i.zq, i64 noundef %i.zu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i855
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  %i.zv = load ptr, ptr %45, align 8, !tbaa !119  ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 2 uses
  %i.zx = icmp eq ptr %i.zv, %i.zw
  br i1 %i.zx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i858

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i858: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857
  %i.zy = load i64, ptr %i.zw, align 8, !tbaa !138
  %i.zz = add i64 %i.zy, 1
  call void @_ZdlPvm(ptr noundef %i.zv, i64 noundef %i.zz) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit857, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i858
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  call void @_ZN5clang17DiagnosticBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %44) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #21
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit854, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit860, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit852
  %i.aaa = trunc nuw i8 %.01454.lcssa209121602201 to i1 ; 2 uses
  %or.cond17 = select i1 %i.aaa, i1 %.01450.lcssa209221592202, i1 false
  %.not345 = xor i1 %.01442.lcssa209421572204, true
  %or.cond19.not = select i1 %or.cond17, i1 %.not345, i1 false
  %or.cond21 = and i1 %or.cond19.not, %i.yy
  %or.cond21.not = xor i1 %or.cond21, true
  %i.aab = trunc nuw i8 %.01437.lcssa209521562205 to i1 ; 2 uses
  %or.cond23 = select i1 %or.cond21.not, i1 true, i1 %i.aab
  br i1 %or.cond23, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit862, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aad = load i32, ptr %i.aac, align 8, !tbaa !140 ; 2 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !141
  %.not.i861 = icmp ult i32 %i.aad, %i.aaf
  br i1 %.not.i861, label %bb.cs, label %bb.cr, !prof !142

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.675)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit862.thread

bb.cs:                                            ; preds = %bb.cq
  %i.aag = zext i32 %i.aad to i64
  %i.aah = load ptr, ptr %4, align 8, !tbaa !143
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.aah, i64 %i.aag
  store ptr @.str.675, ptr %i.aai, align 1
  %i.aaj = load i32, ptr %i.aac, align 8, !tbaa !140
  %i.aak = add i32 %i.aaj, 1
  store i32 %i.aak, ptr %i.aac, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit862.thread

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit862: ; preds = %bb.cp
  br i1 %.01442.lcssa209421572204, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit866, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit862.thread

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit862.thread: ; preds = %bb.cr, %bb.cs, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit862
  %i.aal = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.aam = load i32, ptr %i.aal, align 8, !tbaa !140 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !141
  %.not.i863 = icmp ult i32 %i.aam, %i.aao
  br i1 %.not.i863, label %bb.cu, label %bb.ct, !prof !142

bb.ct:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit862.thread
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.676)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit864

bb.cu:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit862.thread
  %i.aap = zext i32 %i.aam to i64
  %i.aaq = load ptr, ptr %4, align 8, !tbaa !143
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.aaq, i64 %i.aap
  store ptr @.str.676, ptr %i.aar, align 1
  %i.aas = load i32, ptr %i.aal, align 8, !tbaa !140
  %i.aat = add i32 %i.aas, 1
  store i32 %i.aat, ptr %i.aal, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit864

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit864: ; preds = %bb.cu, %bb.ct
  %.not = xor i1 %i.aaa, true
  %or.cond25 = select i1 %.not, i1 true, i1 %.01442.lcssa209421572204
  %or.cond27 = select i1 %or.cond25, i1 true, i1 %i.aab
  br i1 %or.cond27, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit866, label %bb.cv

bb.cv:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit864
  %i.aau = load i32, ptr %i.aal, align 8, !tbaa !140 ; 2 uses
  %i.aav = load i32, ptr %i.aan, align 4, !tbaa !141
  %.not.i865 = icmp ult i32 %i.aau, %i.aav
  br i1 %.not.i865, label %bb.cx, label %bb.cw, !prof !142

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.677)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit866

bb.cx:                                            ; preds = %bb.cv
  %i.aaw = zext i32 %i.aau to i64
  %i.aax = load ptr, ptr %4, align 8, !tbaa !143
  %i.aay = getelementptr inbounds nuw [8 x i8], ptr %i.aax, i64 %i.aaw
  store ptr @.str.677, ptr %i.aay, align 1
  %i.aaz = load i32, ptr %i.aal, align 8, !tbaa !140
  %i.aba = add i32 %i.aaz, 1
  store i32 %i.aba, ptr %i.aal, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit866

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit866: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit862, %bb.cx, %bb.cw, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit864
  br i1 %.01450.lcssa209221592202, label %bb.cy, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit868

bb.cy:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit866
  %i.abb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.abc = load i32, ptr %i.abb, align 8, !tbaa !140 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !141
  %.not.i867 = icmp ult i32 %i.abc, %i.abe
  br i1 %.not.i867, label %bb.da, label %bb.cz, !prof !142

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.678)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit868

bb.da:                                            ; preds = %bb.cy
  %i.abf = zext i32 %i.abc to i64
  %i.abg = load ptr, ptr %4, align 8, !tbaa !143
  %i.abh = getelementptr inbounds nuw [8 x i8], ptr %i.abg, i64 %i.abf
  store ptr @.str.678, ptr %i.abh, align 1
  %i.abi = load i32, ptr %i.abb, align 8, !tbaa !140
  %i.abj = add i32 %i.abi, 1
  store i32 %i.abj, ptr %i.abb, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit868

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit868: ; preds = %bb.da, %bb.cz, %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit866
  %i.abk = icmp ne i8 %.sroa.01294.0.lcssa210521462215, 0
  %i.abl = icmp ne i8 %.sroa.81300.0.lcssa210621452216, 0
  %or.cond1829 = select i1 %i.abk, i1 true, i1 %i.abl
  br i1 %or.cond1829, label %_ZNK4llvm12DenormalModeneES0_.exit.thread, label %bb.dm

_ZNK4llvm12DenormalModeneES0_.exit.thread:        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit868
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #21
end_hunk_0
begin_hunk_1_@_ZL26RenderFloatingPointOptionsRKN5clang6driver9ToolChainERKNS0_6DriverEbRKN4llvm3opt7ArgListERNS7_11SmallVectorIPKcLj16EEERKNS0_9JobActionE:bb.a
  store i64 %.sroa.19.0.lcssa209721542207, ptr %i.air, align 8, !tbaa !138, !alias.scope !1889
  %i.ais = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %56) ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.aiu = load i32, ptr %i.ait, align 8, !tbaa !140 ; 2 uses
  %i.aiv = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !141
  %.not.i903 = icmp ult i32 %i.aiu, %i.aiw
  br i1 %.not.i903, label %bb.em, label %bb.el, !prof !142

bb.el:                                            ; preds = %bb.ek
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ais)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit904

bb.em:                                            ; preds = %bb.ek
  %i.aix = zext i32 %i.aiu to i64
  %i.aiy = load ptr, ptr %4, align 8, !tbaa !143
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.aiy, i64 %i.aix
  store ptr %i.ais, ptr %i.aiz, align 1
  %i.aja = load i32, ptr %i.ait, align 8, !tbaa !140
  %i.ajb = add i32 %i.aja, 1
  store i32 %i.ajb, ptr %i.ait, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit904

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit904: ; preds = %bb.el, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  br label %bb.en

bb.en:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit904, %bb.ej
  %i.ajc = icmp eq i64 %.sroa.51309.0.lcssa210821432218, 0
  br i1 %i.ajc, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #21
  %i.ajd = getelementptr inbounds nuw i8, ptr %57, i64 32
  store i8 3, ptr %i.ajd, align 8, !tbaa !172, !alias.scope !1890
  %i.aje = getelementptr inbounds nuw i8, ptr %57, i64 33
  store i8 5, ptr %i.aje, align 1, !tbaa !173, !alias.scope !1890
  store ptr @.str.832, ptr %57, align 8, !tbaa !138, !alias.scope !1890
  %i.ajf = getelementptr inbounds nuw i8, ptr %57, i64 16
  store ptr %.sroa.01308.0.lcssa210721442217, ptr %i.ajf, align 8, !tbaa !138, !alias.scope !1890
  %i.ajg = getelementptr inbounds nuw i8, ptr %57, i64 24
  store i64 %.sroa.51309.0.lcssa210821432218, ptr %i.ajg, align 8, !tbaa !138, !alias.scope !1890
  %i.ajh = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %57) ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ajj = load i32, ptr %i.aji, align 8, !tbaa !140 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !141
  %.not.i905 = icmp ult i32 %i.ajj, %i.ajl
  br i1 %.not.i905, label %bb.eq, label %bb.ep, !prof !142

bb.ep:                                            ; preds = %bb.eo
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ajh)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit906

bb.eq:                                            ; preds = %bb.eo
  %i.ajm = zext i32 %i.ajj to i64
  %i.ajn = load ptr, ptr %4, align 8, !tbaa !143
  %i.ajo = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.ajm
  store ptr %i.ajh, ptr %i.ajo, align 1
  %i.ajp = load i32, ptr %i.aji, align 8, !tbaa !140
  %i.ajq = add i32 %i.ajp, 1
  store i32 %i.ajq, ptr %i.aji, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit906

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit906: ; preds = %bb.ep, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  br label %bb.er

bb.er:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit906, %bb.en
  %i.ajr = icmp eq i64 %.sroa.71279.0.lcssa210221492212, 0
  br i1 %i.ajr, label %bb.ev, label %bb.es

bb.es:                                            ; preds = %bb.er
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #21
  %i.ajs = getelementptr inbounds nuw i8, ptr %58, i64 32
  store i8 3, ptr %i.ajs, align 8, !tbaa !172, !alias.scope !1891
  %i.ajt = getelementptr inbounds nuw i8, ptr %58, i64 33
  store i8 5, ptr %i.ajt, align 1, !tbaa !173, !alias.scope !1891
  store ptr @.str.833, ptr %58, align 8, !tbaa !138, !alias.scope !1891
  %i.aju = getelementptr inbounds nuw i8, ptr %58, i64 16
  store ptr %.sroa.01278.0.lcssa210121502211, ptr %i.aju, align 8, !tbaa !138, !alias.scope !1891
  %i.ajv = getelementptr inbounds nuw i8, ptr %58, i64 24
  store i64 %.sroa.71279.0.lcssa210221492212, ptr %i.ajv, align 8, !tbaa !138, !alias.scope !1891
  %i.ajw = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %58) ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ajy = load i32, ptr %i.ajx, align 8, !tbaa !140 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !141
  %.not.i907 = icmp ult i32 %i.ajy, %i.aka
  br i1 %.not.i907, label %bb.eu, label %bb.et, !prof !142

bb.et:                                            ; preds = %bb.es
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ajw)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit908

bb.eu:                                            ; preds = %bb.es
  %i.akb = zext i32 %i.ajy to i64
  %i.akc = load ptr, ptr %4, align 8, !tbaa !143
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %i.akc, i64 %i.akb
  store ptr %i.ajw, ptr %i.akd, align 1
  %i.ake = load i32, ptr %i.ajx, align 8, !tbaa !140
  %i.akf = add i32 %i.ake, 1
  store i32 %i.akf, ptr %i.ajx, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit908

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit908: ; preds = %bb.et, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #21
  br label %bb.ev

bb.ev:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit908, %bb.er
  %i.akg = icmp eq i64 %.sroa.51276.0.lcssa210021512210, 0
  br i1 %i.akg, label %bb.ez, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #21
  %i.akh = getelementptr inbounds nuw i8, ptr %59, i64 32
  store i8 3, ptr %i.akh, align 8, !tbaa !172, !alias.scope !1892
  %i.aki = getelementptr inbounds nuw i8, ptr %59, i64 33
  store i8 5, ptr %i.aki, align 1, !tbaa !173, !alias.scope !1892
  store ptr @.str.834, ptr %59, align 8, !tbaa !138, !alias.scope !1892
  %i.akj = getelementptr inbounds nuw i8, ptr %59, i64 16
  store ptr %.sroa.01275.0.lcssa209921522209, ptr %i.akj, align 8, !tbaa !138, !alias.scope !1892
  %i.akk = getelementptr inbounds nuw i8, ptr %59, i64 24
  store i64 %.sroa.51276.0.lcssa210021512210, ptr %i.akk, align 8, !tbaa !138, !alias.scope !1892
  %i.akl = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %59) ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.akn = load i32, ptr %i.akm, align 8, !tbaa !140 ; 2 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !141
  %.not.i909 = icmp ult i32 %i.akn, %i.akp
  br i1 %.not.i909, label %bb.ey, label %bb.ex, !prof !142

bb.ex:                                            ; preds = %bb.ew
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.akl)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit910

bb.ey:                                            ; preds = %bb.ew
  %i.akq = zext i32 %i.akn to i64
  %i.akr = load ptr, ptr %4, align 8, !tbaa !143
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.akr, i64 %i.akq
  store ptr %i.akl, ptr %i.aks, align 1
  %i.akt = load i32, ptr %i.akm, align 8, !tbaa !140
  %i.aku = add i32 %i.akt, 1
  store i32 %i.aku, ptr %i.akm, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit910

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit910: ; preds = %bb.ex, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #21
  br label %bb.ez

bb.ez:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit910, %bb.ev
  %i.akv = load ptr, ptr %1, align 8, !tbaa !101, !nonnull !36, !align !37
  %i.akw = call { ptr, i64 } @_ZN5clang17parseMRecipOptionERNS_17DiagnosticsEngineERKN4llvm3opt7ArgListE(ptr noundef nonnull align 8 dereferenceable(15256) %i.akv, ptr noundef nonnull align 8 dereferenceable(176) %3) #21 ; 2 uses
  %i.akx = extractvalue { ptr, i64 } %i.akw, 1    ; 2 uses
  %i.aky = icmp eq i64 %i.akx, 0
  br i1 %i.aky, label %bb.fd, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.akz = extractvalue { ptr, i64 } %i.akw, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #21
  %i.ala = getelementptr inbounds nuw i8, ptr %60, i64 32
  store i8 3, ptr %i.ala, align 8, !tbaa !172, !alias.scope !1893
  %i.alb = getelementptr inbounds nuw i8, ptr %60, i64 33
  store i8 5, ptr %i.alb, align 1, !tbaa !173, !alias.scope !1893
  store ptr @.str.835, ptr %60, align 8, !tbaa !138, !alias.scope !1893
  %i.alc = getelementptr inbounds nuw i8, ptr %60, i64 16
  store ptr %i.akz, ptr %i.alc, align 8, !tbaa !138, !alias.scope !1893
  %i.ald = getelementptr inbounds nuw i8, ptr %60, i64 24
  store i64 %i.akx, ptr %i.ald, align 8, !tbaa !138, !alias.scope !1893
  %i.ale = call noundef ptr @_ZNK4llvm3opt7ArgList13MakeArgStringERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(34) %60) ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.alg = load i32, ptr %i.alf, align 8, !tbaa !140 ; 2 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !141
  %.not.i911 = icmp ult i32 %i.alg, %i.ali
  br i1 %.not.i911, label %bb.fc, label %bb.fb, !prof !142

bb.fb:                                            ; preds = %bb.fa
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.ale)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit912

bb.fc:                                            ; preds = %bb.fa
  %i.alj = zext i32 %i.alg to i64
  %i.alk = load ptr, ptr %4, align 8, !tbaa !143
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.alk, i64 %i.alj
  store ptr %i.ale, ptr %i.all, align 1
  %i.alm = load i32, ptr %i.alf, align 8, !tbaa !140
  %i.aln = add i32 %i.alm, 1
  store i32 %i.aln, ptr %i.alf, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit912

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit912: ; preds = %bb.fb, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  br label %bb.fd

bb.fd:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit912, %bb.ez
  %i.alo = or i8 %.01458.lcssa209021612200, %.01462.lcssa208921622199 ; 2 uses
  %or.cond29 = trunc nuw i8 %i.alo to i1
  %i.alp = or i8 %i.alo, %.01472.lcssa208521662195
  %or.cond31.not1832 = icmp eq i8 %i.alp, 0
  %66 = trunc i8 %.01454.lcssa209121602201 to i1
  %67 = and i1 %or.cond31.not1832, %66
  %or.cond35 = and i1 %67, %i.yy
  %or.cond37 = select i1 %or.cond35, i1 %.01450.lcssa209221592202, i1 false
  %or.cond37.not = xor i1 %or.cond37, true
  %or.cond39 = select i1 %or.cond37.not, i1 true, i1 %.01442.lcssa209421572204
  %i.alq = or i8 %.01433.lcssa209621552206, %.01437.lcssa209521562205
  %i.alr = trunc nuw i8 %i.alq to i1
  %or.cond43 = select i1 %or.cond39, i1 true, i1 %i.alr
  br i1 %or.cond43, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit914, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.als = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.alt = load i32, ptr %i.als, align 8, !tbaa !140 ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.alv = load i32, ptr %i.alu, align 4, !tbaa !141
  %.not.i913 = icmp ult i32 %i.alt, %i.alv
  br i1 %.not.i913, label %bb.fg, label %bb.ff, !prof !142

bb.ff:                                            ; preds = %bb.fe
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.680)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit914

bb.fg:                                            ; preds = %bb.fe
  %i.alw = zext i32 %i.alt to i64
  %i.alx = load ptr, ptr %4, align 8, !tbaa !143
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %i.alx, i64 %i.alw
  store ptr @.str.680, ptr %i.aly, align 1
  %i.alz = load i32, ptr %i.als, align 8, !tbaa !140
  %i.ama = add i32 %i.alz, 1
  store i32 %i.ama, ptr %i.als, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit914

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit914: ; preds = %bb.fg, %bb.ff, %bb.fd
  br i1 %or.cond29, label %bb.fh, label %.critedge

bb.fh:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit914
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !1894
  store i32 3710, ptr %6, align 4, !noalias !1894
  %i.amb = call i64 @_ZNK4llvm3opt7ArgList8getRangeESt16initializer_listINS0_12OptSpecifierEE(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr nonnull %6, i64 1) #21, !noalias !1894 ; 2 uses
  %.sroa.4.0.extract.shift.i = lshr i64 %i.amb, 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !1894
  %i.amc = load ptr, ptr %i.aw, align 8, !tbaa !143, !noalias !1894 ; 2 uses
  %i.amd = and i64 %i.amb, 4294967295             ; 2 uses
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr %i.amc, i64 %i.amd ; 2 uses
  %i.amf = getelementptr [8 x i8], ptr %i.amc, i64 %.sroa.4.0.extract.shift.i ; 5 uses
  %.not29.i.i.i = icmp samesign eq i64 %i.amd, %.sroa.4.0.extract.shift.i
  br i1 %.not29.i.i.i, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.lr.ph.i.i.i916

.lr.ph.i.i.i916:                                  ; preds = %bb.fh, %.thread25.i.i.i
  %.sroa.024.0.i = phi ptr [ %i.ami, %.thread25.i.i.i ], [ %i.ame, %bb.fh ] ; 3 uses
  %i.amg = load ptr, ptr %.sroa.024.0.i, align 8, !tbaa !164, !noalias !1894 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.amg, null
  br i1 %.not14.i.i.i, label %.thread25.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %.lr.ph.i.i.i916
  %i.amh = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.amg, i32 3710) #21, !noalias !1894
  br i1 %i.amh, label %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, label %.thread25.i.i.i

.thread25.i.i.i:                                  ; preds = %bb.fi, %.lr.ph.i.i.i916
  %i.ami = getelementptr inbounds nuw i8, ptr %.sroa.024.0.i, i64 8 ; 2 uses
  %.not.i.i.i917 = icmp eq ptr %i.ami, %i.amf
  br i1 %.not.i.i.i917, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936, label %.lr.ph.i.i.i916, !llvm.loop !1

_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit: ; preds = %bb.fi, %bb.fh
  %.sroa.024.1.i = phi ptr [ %i.ame, %bb.fh ], [ %.sroa.024.0.i, %bb.fi ] ; 2 uses
  %.not18331923 = icmp eq ptr %.sroa.024.1.i, %i.amf
  br i1 %.not18331923, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936, label %.lr.ph1927

._crit_edge1928:                                  ; preds = %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit
  %i.amj = select i1 %.1335, i1 true, i1 %.1337
  br i1 %i.amj, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936, label %.critedge

.lr.ph1927:                                       ; preds = %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit
  %.03341926 = phi i1 [ %.1335, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit ], [ true, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit ] ; 3 uses
  %.03361925 = phi i1 [ %.1337, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit ], [ true, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit ] ; 4 uses
  %.sroa.0976.01924 = phi ptr [ %.sroa.0976.2, %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit ], [ %.sroa.024.1.i, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit ] ; 2 uses
  %i.amk = load ptr, ptr %.sroa.0976.01924, align 8, !tbaa !164
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 48
  %i.amm = load ptr, ptr %i.aml, align 8, !tbaa !143
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !156 ; 4 uses
  %.not.i920 = icmp eq ptr %i.amn, null
  br i1 %.not.i920, label %_ZN4llvmeqENS_9StringRefES0_.exit927.thread, label %_ZN4llvm9StringRefC2EPKc.exit922

_ZN4llvm9StringRefC2EPKc.exit922:                 ; preds = %.lr.ph1927
  %i.amo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.amn) #21
  %cond = icmp eq i64 %i.amo, 16
  br i1 %cond, label %_ZN4llvmeqENS_9StringRefES0_.exit927, label %_ZN4llvmeqENS_9StringRefES0_.exit927.thread

_ZN4llvmeqENS_9StringRefES0_.exit927:             ; preds = %_ZN4llvm9StringRefC2EPKc.exit922
  %i.amp = load i128, ptr %i.amn, align 1
  %i.amq = icmp ne i128 %i.amp, 153434348292595123709847100076492942637
  %i.amr = zext i1 %i.amq to i32
  %i.ams = icmp eq i32 %i.amr, 0
  br i1 %i.ams, label %_ZN4llvmeqENS_9StringRefES0_.exit927.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit927.thread1751

_ZN4llvmeqENS_9StringRefES0_.exit927.thread1751:  ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit927
  %i.amt = load i128, ptr %i.amn, align 1
  %i.amu = icmp ne i128 %i.amt, 153393073192910879989212679452406148397
  %i.amv = zext i1 %i.amu to i32
  %bcmp.i931.fr = freeze i32 %i.amv
  %i.amw = icmp ne i32 %bcmp.i931.fr, 0
  %spec.select1853 = select i1 %i.amw, i1 %.03361925, i1 false
  br label %_ZN4llvmeqENS_9StringRefES0_.exit927.thread

_ZN4llvmeqENS_9StringRefES0_.exit927.thread:      ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit927.thread1751, %_ZN4llvm9StringRefC2EPKc.exit922, %.lr.ph1927, %_ZN4llvmeqENS_9StringRefES0_.exit927
  %.1337 = phi i1 [ %.03361925, %_ZN4llvm9StringRefC2EPKc.exit922 ], [ %.03361925, %_ZN4llvmeqENS_9StringRefES0_.exit927 ], [ %.03361925, %.lr.ph1927 ], [ %spec.select1853, %_ZN4llvmeqENS_9StringRefES0_.exit927.thread1751 ] ; 2 uses
  %.1335 = phi i1 [ %.03341926, %_ZN4llvm9StringRefC2EPKc.exit922 ], [ false, %_ZN4llvmeqENS_9StringRefES0_.exit927 ], [ %.03341926, %.lr.ph1927 ], [ %.03341926, %_ZN4llvmeqENS_9StringRefES0_.exit927.thread1751 ] ; 2 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %.sroa.0976.01924, i64 8 ; 3 uses
  %.not29.i.i = icmp eq ptr %i.amx, %i.amf
  br i1 %.not29.i.i, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.lr.ph.i.i933

.lr.ph.i.i933:                                    ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit927.thread, %.thread25.i.i
  %.sroa.0976.1 = phi ptr [ %i.ana, %.thread25.i.i ], [ %i.amx, %_ZN4llvmeqENS_9StringRefES0_.exit927.thread ] ; 3 uses
  %i.amy = load ptr, ptr %.sroa.0976.1, align 8, !tbaa !164 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.amy, null
  br i1 %.not14.i.i, label %.thread25.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph.i.i933
  %i.amz = call noundef zeroext i1 @_ZNK4llvm3opt6Option7matchesENS0_12OptSpecifierE(ptr noundef nonnull align 8 dereferenceable(16) %i.amy, i32 3710) #21
  br i1 %i.amz, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.thread25.i.i

.thread25.i.i:                                    ; preds = %.preheader.preheader.i.i, %.lr.ph.i.i933
  %i.ana = getelementptr inbounds nuw i8, ptr %.sroa.0976.1, i64 8 ; 3 uses
  %.not.i.i934 = icmp eq ptr %i.ana, %i.amf
  br i1 %.not.i.i934, label %_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit, label %.lr.ph.i.i933, !llvm.loop !1

_ZN4llvm3opt12arg_iteratorIPKPNS0_3ArgELj1EEppEv.exit: ; preds = %.preheader.preheader.i.i, %.thread25.i.i, %_ZN4llvmeqENS_9StringRefES0_.exit927.thread
  %.sroa.0976.2 = phi ptr [ %i.amx, %_ZN4llvmeqENS_9StringRefES0_.exit927.thread ], [ %.sroa.0976.1, %.preheader.preheader.i.i ], [ %i.ana, %.thread25.i.i ] ; 2 uses
  %.not1833 = icmp eq ptr %.sroa.0976.2, %i.amf
  br i1 %.not1833, label %._crit_edge1928, label %.lr.ph1927

.critedge:                                        ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit914, %._crit_edge1928
  %i.anb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.anc = load i32, ptr %i.anb, align 8, !tbaa !140 ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !141
  %.not.i935 = icmp ult i32 %i.anc, %i.ane
  br i1 %.not.i935, label %bb.fk, label %bb.fj, !prof !142

bb.fj:                                            ; preds = %.critedge
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.681)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936

bb.fk:                                            ; preds = %.critedge
  %i.anf = zext i32 %i.anc to i64
  %i.ang = load ptr, ptr %4, align 8, !tbaa !143
  %i.anh = getelementptr inbounds nuw [8 x i8], ptr %i.ang, i64 %i.anf
  store ptr @.str.681, ptr %i.anh, align 1
  %i.ani = load i32, ptr %i.anb, align 8, !tbaa !140
  %i.anj = add i32 %i.ani, 1
  store i32 %i.anj, ptr %i.anb, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936: ; preds = %.thread25.i.i.i, %_ZNK4llvm3opt7ArgList8filteredIJN5clang7options2IDEEEENS_14iterator_rangeINS0_12arg_iteratorIPKPNS0_3ArgEXsZT_EEEEEDpT_.exit, %bb.fk, %bb.fj, %._crit_edge1928
  %i.ank = call noundef ptr @_ZNK4llvm3opt7ArgList10getLastArgIJN5clang7options2IDEEEEPNS0_3ArgEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %3, i32 noundef 2558) ; 2 uses
  %.not346 = icmp eq ptr %i.ank, null
  br i1 %.not346, label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit940, label %bb.fl

bb.fl:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit936
  %i.anl = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.anm = load i32, ptr %i.anl, align 8, !tbaa !140 ; 2 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !141
  %.not.i937 = icmp ult i32 %i.anm, %i.ano
  br i1 %.not.i937, label %bb.fn, label %bb.fm, !prof !142

bb.fm:                                            ; preds = %bb.fl
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.836)
  %.pre1933 = load i32, ptr %i.anl, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit938

bb.fn:                                            ; preds = %bb.fl
  %i.anp = zext i32 %i.anm to i64
  %i.anq = load ptr, ptr %4, align 8, !tbaa !143
  %i.anr = getelementptr inbounds nuw [8 x i8], ptr %i.anq, i64 %i.anp
  store ptr @.str.836, ptr %i.anr, align 1
  %i.ans = load i32, ptr %i.anl, align 8, !tbaa !140
  %i.ant = add i32 %i.ans, 1                      ; 2 uses
  store i32 %i.ant, ptr %i.anl, align 8, !tbaa !140
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit938

_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit938: ; preds = %bb.fm, %bb.fn
  %i.anu = phi i32 [ %.pre1933, %bb.fm ], [ %i.ant, %bb.fn ] ; 2 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %i.ank, i64 48
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !143
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !156 ; 2 uses
  %i.any = load i32, ptr %i.ann, align 4, !tbaa !141
  %.not.i939 = icmp ult i32 %i.anu, %i.any
  br i1 %.not.i939, label %bb.fp, label %bb.fo, !prof !142

bb.fo:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit938
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.anx)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit940

bb.fp:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKcLb1EE9push_backES2_.exit938
  %i.anz = zext i32 %i.anu to i64
  %i.aoa = load ptr, ptr %4, align 8, !tbaa !143
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.aoa, i64 %i.anz
  store ptr %i.anx, ptr %i.aob, align 1
  %i.aoc = load i32, ptr %i.anl, align 8, !tbaa !140
  %i.aod = add i32 %i.aoc, 1
  store i32 %i.aod, ptr %i.anl, align 8, !tbaa !140
end_hunk_1
