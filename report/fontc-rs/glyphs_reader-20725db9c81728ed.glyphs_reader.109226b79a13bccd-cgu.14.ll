Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.14?download=true
inline.NumInlined: 466
inline.NumDeleted: 207
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [137 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/core/src/slice/sort/stable/quicksort.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\88\00\00\00\00\00\00\00M\00\00\00\1F\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\88\00\00\00\00\00\00\00G\00\00\00\17\00\00\00" }>, align 8
@3 = private unnamed_addr constant [26 x i8] c"glyphs-reader/src/font.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"\19\00\00\00\00\00\00\00\9E\0F\00\00P\00\00\00" }>, align 8
@5 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@6 = private unnamed_addr constant [5 x i8] c"Empty", align 1
@7 = private unnamed_addr constant [7 x i8] c"Invalid", align 1

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeE4fillINtNtB8_9into_iter8IntoIterBZ_EEB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %.sroa.58 = alloca [7 x i8], align 1            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %.not13 = icmp ult i64 %i.d, %i.f
  br i1 %.not13, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !15, !noalias !16, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.promoted = load ptr, ptr %i.i, align 8, !alias.scope !15, !noalias !16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 5 uses
  %.sroa.01.012 = phi i64 [ %i.d, %.lr.ph ], [ %i.o, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %.loopexit, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.i, align 8, !alias.scope !15, !noalias !16
  %.sroa.5.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.0.copyload5 = load i8, ptr %.sroa.5.0..sroa_idx4, align 8, !noalias !15 ; 2 uses
  %.not = icmp eq i8 %.sroa.5.0.copyload5, -1
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit, %bb.b, %bb.c, %bb.a
  %i.n = phi i1 [ true, %bb.a ], [ false, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %i.n

bb.c:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  %i.o = add i64 %.sroa.01.012, 1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.58, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx6, i64 7, i1 false)
  %i.p = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.sroa.01.012 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i8 %.sroa.5.0.copyload5, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.58.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.58, i64 7, i1 false)
  %i.r = load i64, ptr %i.c, align 8, !noundef !4
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58)
  %exitcond.not = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not, label %.loopexit, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs2_NtNtCsgCecv3eZDcN_5alloc3vec6spliceINtNtB8_5drain5DrainNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeE4fillINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtB1R_4skip4SkipINtNtB1R_6cloned6ClonedINtNtNtB1V_5slice4iter4IterBZ_EEENCNvMs0_NtB13_17corner_componentsNtB11_5Layer23insert_corner_component0EEB13_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  %.not = icmp ult i64 %i.e, %i.g
  br i1 %.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.sroa.01.010 = phi i64 [ %i.e, %.lr.ph ], [ %i.n, %bb.e ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24
  %i.k = load i64, ptr %i.h, align 8, !alias.scope !25, !noalias !26, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  call void @_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !27
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEEENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %i.h, align 8, !alias.scope !25, !noalias !26
  call fastcc void @_RNvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEENtNtNtB9_6traits8iterator8Iterator3nthB1q_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.k) #17, !noalias !27
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEEENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEEENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i: ; preds = %bb.d, %bb.c
  %i.l = load i8, ptr %i.i, align 8, !range !28, !noalias !24, !noundef !4 ; 2 uses
  %.not.i = icmp eq i8 %i.l, -1
  br i1 %.not.i, label %bb.f, label %bb.e

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.f
  %i.m = phi i1 [ false, %bb.f ], [ true, %bb.a ], [ true, %bb.e ]
  ret i1 %i.m

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEEENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i
  %i.n = add i64 %.sroa.01.010, 1                 ; 2 uses
  %.sroa.46.0.copyload.i.a = load double, ptr %i.a, align 8, !noalias !24
  %.sroa.05.0.copyload.i = load double, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !24
  %i.o = fadd double %.sroa.46.0.copyload.i.a, 5.000000e-01
  %2 = tail call double @llvm.floor.f64(double %i.o)
  %3 = tail call i16 @llvm.fptosi.sat.i16.f64(double %2)
  %4 = fadd double %.sroa.05.0.copyload.i, 5.000000e-01
  %5 = tail call double @llvm.floor.f64(double %4)
  %i.p = tail call i16 @llvm.fptosi.sat.i16.f64(double %5)
  %i.q = insertelement <2 x i16> poison, i16 %3, i64 0
  %i.r = insertelement <2 x i16> %i.q, i16 %i.p, i64 1
  %i.s = sitofp <2 x i16> %i.r to <2 x double>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24
  %i.t = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %.sroa.01.010 ; 2 uses
  store <2 x double> %i.s, ptr %i.u, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i8 %i.l, ptr %.sroa.55.0..sroa_idx, align 8
  %i.v = load i64, ptr %i.d, align 8, !noundef !4
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.d, align 8
  %exitcond.not = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not, label %.loopexit, label %bb.b

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters4skipINtB4_4SkipINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeEEENtNtNtB8_6traits8iterator8Iterator4nextB1N_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font5GlyphEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecRNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecRNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecRNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecRNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecRNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtNtB4_3ops5range14RangeInclusivexEEEECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusivexEEENtNtB1i_4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusivexEEENtNtB1p_4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtNtB4_3ops5range14RangeInclusivexEEEECs1qcNTItuk7F_13glyphs_reader.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtNtCsf3Ta7LF998c_4core3ops5range14RangeInclusivexEEENtNtB1p_4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrINtNtNtB4_3ops5range14RangeInclusivexEEEECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisPoleEEEB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisPoleEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisPoleEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisPoleEEEB1R_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisPoleEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #18
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVecTNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader4font8AxisPoleEEEB1R_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

end_hunk_0
