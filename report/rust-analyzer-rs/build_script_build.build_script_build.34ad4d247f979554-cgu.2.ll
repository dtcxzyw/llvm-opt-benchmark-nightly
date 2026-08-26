Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/build_script_build.build_script_build.34ad4d247f979554-cgu.2?download=true
inline.NumInlined: 75
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [80 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/str/pattern.rs\00", align 1
@1 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00\F3\05\00\00\14\00\00\00" }>, align 8
@2 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYNCINvNtCscAsMj0W7j8b_3std2rt10lang_startuE0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableCs4woGJmGIndg_18build_script_build, ptr @_RNCINvNtCscAsMj0W7j8b_3std2rt10lang_startuE0Cs4woGJmGIndg_18build_script_build, ptr @_RNCINvNtCscAsMj0W7j8b_3std2rt10lang_startuE0Cs4woGJmGIndg_18build_script_build }>, align 8
@3 = private unnamed_addr constant [84 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/core/src/str/validations.rs\00", align 1
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"S\00\00\00\00\00\00\000\00\00\00$\00\00\00" }>, align 8
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"S\00\00\00\00\00\00\007\00\00\00(\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @3, [16 x i8] c"S\00\00\00\00\00\00\00?\00\00\00,\00\00\00" }>, align 8
@7 = private unnamed_addr constant [199 x i8] c"unsafe precondition(s) violated: hint::unreachable_unchecked must never be reached\0A\0AThis indicates a bug in the program. This Undefined Behavior check is optional, and cannot be relied on for safety.", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"O\00\00\00\00\00\00\00k\04\00\00$\00\00\00" }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvMNtCshzWfHUSfYae_4core3stre5splitReECs4woGJmGIndg_18build_script_build(ptr nofree writeonly sret([128 x i8]) align 8 captures(none) initializes((0, 122)) %0, ptr %1, i64 %2, ptr %3, i64 %4) unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca [104 x i8], align 8           ; 2 uses
  call void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %.sroa.0, ptr %1, i64 %2, ptr %3, i64 %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.0, i64 104, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvMNtNtCshzWfHUSfYae_4core3fmt2rtNtB3_8Argument11new_displayRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4woGJmGIndg_18build_script_build(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 16)) %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  store ptr %1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB6_7Display3fmtCs4woGJmGIndg_18build_script_build, ptr %.sroa.2.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RINvMs2_NtCshzWfHUSfYae_4core3fmtNtB6_9Arguments3newKjd_Kj1_ECs4woGJmGIndg_18build_script_build(ptr %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RINvMs3_NtCsbSS6DM8SDEO_5alloc3stre7replaceReECs4woGJmGIndg_18build_script_build(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr nofree readonly captures(none) %5, i64 %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [104 x i8], align 8               ; 2 uses
  %i.h = alloca [104 x i8], align 8               ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %.fr = freeze i64 %6                            ; 7 uses
  %.sroa.433.16.extract.trunc = trunc i64 %4 to i32 ; 3 uses
  %i.j = icmp eq ptr %3, null
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ult i32 %.sroa.433.16.extract.trunc, 128
  br i1 %i.k, label %.thread49, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %4, 1
  br i1 %i.l, label %bb.d, label %.thread53

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %3, align 1
  %i.n = icmp eq i64 %.fr, 1
  br i1 %i.n, label %bb.e, label %.thread53

.thread49:                                        ; preds = %bb.b
  %i.o = trunc i64 %4 to i8
  %i.p = icmp eq i64 %.fr, 1
  br i1 %i.p, label %bb.e, label %.thread53

bb.e:                                             ; preds = %.thread49, %bb.d
  %.sroa.2.051 = phi i8 [ %i.o, %.thread49 ], [ %i.m, %bb.d ] ; 5 uses
  %i.q = load i8, ptr %5, align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs57dEzb6b5A8_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.c, i64 %2, i1 zeroext false, i64 1, i64 1), !noalias !5
  %i.r = load i64, ptr %i.c, align 8, !noalias !5
  %i.s = trunc nuw i64 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noalias !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.s, label %bb.f, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4woGJmGIndg_18build_script_build.exit.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i64, ptr %i.v, align 8, !noalias !5
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 %i.u, i64 %i.w) #18, !noalias !5
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4woGJmGIndg_18build_script_build.exit.i: ; preds = %bb.e
  %i.x = load ptr, ptr %i.v, align 8, !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5
  store i64 %i.u, ptr %i.d, align 8, !noalias !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.y, align 8, !noalias !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.z, align 8, !noalias !5
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCseVpsqJvcPM7_9addr2line(ptr nonnull align 8 %i.d, i64 %2)
          to label %.noexc.i unwind label %bb.g, !noalias !5

.noexc.i:                                         ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4woGJmGIndg_18build_script_build.exit.i
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !5 ; 6 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = load i64, ptr %i.z, align 8, !noalias !5 ; 8 uses
  %i.ad = icmp samesign eq i64 %2, 0
  br i1 %i.ad, label %_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs4woGJmGIndg_18build_script_build.exit, label %iter.check

iter.check:                                       ; preds = %.noexc.i
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ae = add i64 %i.ac, %i.ab
  %i.af = sub i64 %i.a, %i.ae
  %diff.check = icmp ugt i64 %i.af, -32
  br i1 %diff.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check71 = icmp ult i64 %2, 32
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %2, 24
  %n.vec = and i64 %2, -32                        ; 5 uses
  %i.ah = add i64 %i.ac, %n.vec                   ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.sroa.2.051, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert72 = insertelement <16 x i8> poison, i8 %i.q, i64 0
  %broadcast.splat73 = shufflevector <16 x i8> %broadcast.splatinsert72, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ai = getelementptr i8, ptr %i.aa, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !noalias !5 ; 2 uses
  %wide.load74 = load <16 x i8>, ptr %i.ak, align 1, !noalias !5 ; 2 uses
  %i.al = icmp eq <16 x i8> %wide.load, %broadcast.splat
  %i.am = icmp eq <16 x i8> %wide.load74, %broadcast.splat
  %i.an = select <16 x i1> %i.al, <16 x i8> %broadcast.splat73, <16 x i8> %wide.load
  %i.ao = select <16 x i1> %i.am, <16 x i8> %broadcast.splat73, <16 x i8> %wide.load74
  %i.ap = getelementptr i8, ptr %i.ai, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <16 x i8> %i.an, ptr %i.ap, align 1, !noalias !5
  store <16 x i8> %i.ao, ptr %i.aq, align 1, !noalias !5
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs4woGJmGIndg_18build_script_build.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec75 = and i64 %2, -8                       ; 4 uses
  %i.as = add i64 %i.ac, %n.vec75                 ; 2 uses
  %broadcast.splatinsert76 = insertelement <8 x i8> poison, i8 %.sroa.2.051, i64 0
  %broadcast.splat77 = shufflevector <8 x i8> %broadcast.splatinsert76, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert78 = insertelement <8 x i8> poison, i8 %i.q, i64 0
  %broadcast.splat79 = shufflevector <8 x i8> %broadcast.splatinsert78, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.at = getelementptr i8, ptr %i.aa, i64 %i.ac
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next82, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %index80
  %wide.load81 = load <8 x i8>, ptr %i.au, align 1, !noalias !5 ; 2 uses
  %i.av = icmp eq <8 x i8> %wide.load81, %broadcast.splat77
  %i.aw = select <8 x i1> %i.av, <8 x i8> %broadcast.splat79, <8 x i8> %wide.load81
  %i.ax = getelementptr i8, ptr %i.at, i64 %index80
  store <8 x i8> %i.aw, ptr %i.ax, align 1, !noalias !5
  %index.next82 = add nuw i64 %index80, 8         ; 2 uses
  %i.ay = icmp eq i64 %index.next82, %n.vec75
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !12

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %2, %n.vec75
  br i1 %cmp.n83, label %_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs4woGJmGIndg_18build_script_build.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.3.0.i.i.i.i.i.ph = phi i64 [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec75, %vec.epilog.middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.i.i.i.i.i.i.ph
  %.val15.i.i.i.i.i.i.prol = load i8, ptr %i.az, align 1, !noalias !5 ; 2 uses
  %i.ba = icmp eq i8 %.val15.i.i.i.i.i.i.prol, %.sroa.2.051
  %spec.select55.prol = select i1 %i.ba, i8 %i.q, i8 %.val15.i.i.i.i.i.i.prol
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.3.0.i.i.i.i.i.ph
  store i8 %spec.select55.prol, ptr %i.bb, align 1, !noalias !5
  %i.bc = add i64 %.sroa.3.0.i.i.i.i.i.ph, 1      ; 2 uses
  %i.bd = or disjoint i64 %.sroa.01.0.i.i.i.i.i.i.ph, 1
  br label %.preheader.i.prol.loopexit

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.preheader.i.preheader ], [ %i.bc, %.preheader.i.prol ]
  %.sroa.3.0.i.i.i.i.i.unr = phi i64 [ %.sroa.3.0.i.i.i.i.i.ph, %.preheader.i.preheader ], [ %i.bc, %.preheader.i.prol ]
  %.sroa.01.0.i.i.i.i.i.i.unr = phi i64 [ %.sroa.01.0.i.i.i.i.i.i.ph, %.preheader.i.preheader ], [ %i.bd, %.preheader.i.prol ]
  %i.be = icmp eq i64 %2, %.neg
  br i1 %i.be, label %_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs4woGJmGIndg_18build_script_build.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.sroa.3.0.i.i.i.i.i = phi i64 [ %i.bn, %.preheader.i ], [ %.sroa.3.0.i.i.i.i.i.unr, %.preheader.i.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i.i.i.i.i.i = phi i64 [ %i.bo, %.preheader.i ], [ %.sroa.01.0.i.i.i.i.i.i.unr, %.preheader.i.prol.loopexit ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i = load i8, ptr %i.bf, align 1, !noalias !5 ; 2 uses
  %i.bg = icmp eq i8 %.val15.i.i.i.i.i.i, %.sroa.2.051
  %spec.select55 = select i1 %i.bg, i8 %i.q, i8 %.val15.i.i.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.3.0.i.i.i.i.i
  store i8 %spec.select55, ptr %i.bh, align 1, !noalias !5
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.i.i.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %.val15.i.i.i.i.i.i.1 = load i8, ptr %i.bj, align 1, !noalias !5 ; 2 uses
  %i.bk = icmp eq i8 %.val15.i.i.i.i.i.i.1, %.sroa.2.051
  %spec.select55.1 = select i1 %i.bk, i8 %i.q, i8 %.val15.i.i.i.i.i.i.1
  %i.bl = getelementptr i8, ptr %i.aa, i64 %.sroa.3.0.i.i.i.i.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 1
  store i8 %spec.select55.1, ptr %i.bm, align 1, !noalias !5
  %i.bn = add i64 %.sroa.3.0.i.i.i.i.i, 2         ; 2 uses
  %i.bo = add nuw i64 %.sroa.01.0.i.i.i.i.i.i, 2  ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %2
  br i1 %i.bp, label %_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs4woGJmGIndg_18build_script_build.exit, label %.preheader.i, !llvm.loop !13

bb.g:                                             ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4woGJmGIndg_18build_script_build.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs4woGJmGIndg_18build_script_build(ptr nonnull align 8 %i.d) #19
          to label %common.resume unwind label %bb.h, !noalias !5

bb.h:                                             ; preds = %bb.g
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20, !noalias !5
  unreachable

common.resume:                                    ; preds = %bb.m, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.bq, %bb.g ], [ %.pn, %bb.m ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs4woGJmGIndg_18build_script_build.exit: ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %middle.block, %vec.epilog.middle.block, %.noexc.i
  %storemerge.i.i.i.i.i = phi i64 [ %i.ac, %.noexc.i ], [ %i.as, %vec.epilog.middle.block ], [ %i.ah, %middle.block ], [ %.lcssa.unr, %.preheader.i.prol.loopexit ], [ %i.bn, %.preheader.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.z, align 8, !noalias !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.i:                                             ; preds = %bb.w, %_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VechEINtB4_18SpecFromIterNestedhINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterhENCNvNtB8_3str13replace_ascii0EE9from_iterCs4woGJmGIndg_18build_script_build.exit
  ret void

.thread53:                                        ; preds = %bb.c, %bb.d, %bb.l, %bb.k, %.thread49
  %.sroa.03.0.sink = phi i64 [ 1, %.thread49 ], [ 2, %bb.k ], [ %., %bb.l ], [ %4, %bb.d ], [ %4, %bb.c ]
  %.not17 = icmp ugt i64 %.sroa.03.0.sink, %.fr
  %spec.select19 = select i1 %.not17, i64 0, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs57dEzb6b5A8_5gimli(ptr nonnull sret([24 x i8]) align 8 %i.b, i64 %spec.select19, i1 zeroext false, i64 1, i64 1)
  %i.bs = load i64, ptr %i.b, align 8
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bv = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.bt, label %bb.j, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4woGJmGIndg_18build_script_build.exit

bb.j:                                             ; preds = %.thread53
  %i.bx = load i64, ptr %i.bw, align 8
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 %i.bv, i64 %i.bx) #18
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4woGJmGIndg_18build_script_build.exit: ; preds = %.thread53
  %i.by = load ptr, ptr %i.bw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.bv, ptr %i.i, align 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 5 uses
  store ptr %i.by, ptr %.sroa.212.0..sroa_idx, align 8
  %.sroa.313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 13 uses
  store i64 0, ptr %.sroa.313.0..sroa_idx, align 8
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr nonnull sret([104 x i8]) align 8 %i.g, ptr %1, i64 %2, ptr %3, i64 %4)
          to label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit unwind label %bb.n

bb.k:                                             ; preds = %bb.b
  %i.bz = icmp ult i32 %.sroa.433.16.extract.trunc, 2048
  br i1 %i.bz, label %.thread53, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = icmp ult i32 %.sroa.433.16.extract.trunc, 65536
  %. = select i1 %i.ca, i64 3, i64 4
  br label %.thread53

bb.m:                                             ; preds = %.split, %.split.us, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.n ], [ %i.cq, %.split ], [ %i.cp, %.split.us ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4woGJmGIndg_18build_script_build(ptr nonnull align 8 %i.i) #19
          to label %common.resume unwind label %bb.aa

bb.n:                                             ; preds = %.split59.us, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4woGJmGIndg_18build_script_build.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit: ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs4woGJmGIndg_18build_script_build.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.not.i27 = icmp eq i64 %.fr, 0
  br i1 %.not.i27, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit.split.us, label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit.split

_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit.split.us: ; preds = %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit, %.noexc28.us
  %.sroa.04.0.us = phi i64 [ %i.co, %.noexc28.us ], [ 0, %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit ] ; 4 uses
  invoke void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4woGJmGIndg_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.h)
          to label %bb.o unwind label %.split.us

bb.o:                                             ; preds = %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit.split.us
  %i.ce = load i64, ptr %i.f, align 8
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.p, label %.split59.us

bb.p:                                             ; preds = %bb.o
  %i.cg = load i64, ptr %i.cc, align 8
  %i.ch = load i64, ptr %i.cd, align 8
  invoke void @_RNCNvMsp_NtNtCshzWfHUSfYae_4core3str4iterINtB7_20MatchIndicesInternalReE4next0Cs4woGJmGIndg_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.h, i64 %i.cg, i64 %i.ch)
          to label %bb.q unwind label %.split.us

bb.q:                                             ; preds = %bb.p
  %.sroa.08.0.copyload.us = load i64, ptr %i.e, align 8 ; 3 uses
  %.sroa.3.0.copyload.us = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.us
  %gepdiff56.us = sub nuw nsw i64 %.sroa.08.0.copyload.us, %.sroa.04.0.us ; 3 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCseVpsqJvcPM7_9addr2line(ptr nonnull align 8 %i.i, i64 %gepdiff56.us)
          to label %.noexc25.us unwind label %.split.us

.noexc25.us:                                      ; preds = %bb.q
  %.not.i24.us = icmp eq i64 %.sroa.08.0.copyload.us, %.sroa.04.0.us
  br i1 %.not.i24.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc25.us
  %i.cj = load i64, ptr %.sroa.313.0..sroa_idx, align 8
  %i.ck = load ptr, ptr %.sroa.212.0..sroa_idx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr readonly align 1 %i.ci, i64 %gepdiff56.us, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.noexc25.us
  %i.cm = load i64, ptr %.sroa.313.0..sroa_idx, align 8
  %i.cn = add i64 %i.cm, %gepdiff56.us
  store i64 %i.cn, ptr %.sroa.313.0..sroa_idx, align 8
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCseVpsqJvcPM7_9addr2line(ptr nonnull align 8 %i.i, i64 0)
          to label %.noexc28.us unwind label %.split.us

.noexc28.us:                                      ; preds = %bb.s
  %i.co = add i64 %.sroa.3.0.copyload.us, %.sroa.08.0.copyload.us
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit.split.us

.split.us:                                        ; preds = %bb.s, %bb.q, %bb.p, %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit.split.us
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit.split: ; preds = %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit, %.noexc28
  %.sroa.04.0 = phi i64 [ %i.dm, %.noexc28 ], [ 0, %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit ] ; 4 uses
  invoke void @_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_matchCs4woGJmGIndg_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.h)
          to label %bb.t unwind label %.split

.split:                                           ; preds = %bb.z, %bb.x, %bb.u, %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit.split
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.t:                                             ; preds = %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit.split
  %i.cr = load i64, ptr %i.f, align 8
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %bb.u, label %.split59.us

bb.u:                                             ; preds = %bb.t
  %i.ct = load i64, ptr %i.cc, align 8
  %i.cu = load i64, ptr %i.cd, align 8
  invoke void @_RNCNvMsp_NtNtCshzWfHUSfYae_4core3str4iterINtB7_20MatchIndicesInternalReE4next0Cs4woGJmGIndg_18build_script_build(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.h, i64 %i.ct, i64 %i.cu)
          to label %bb.x unwind label %.split

.split59.us:                                      ; preds = %bb.t, %bb.o
  %.us-phi60 = phi i64 [ %.sroa.04.0.us, %bb.o ], [ %.sroa.04.0, %bb.t ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %.us-phi60
  %gepdiff = sub nuw nsw i64 %2, %.us-phi60       ; 3 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCseVpsqJvcPM7_9addr2line(ptr nonnull align 8 %i.i, i64 %gepdiff)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %.split59.us
  %.not.i = icmp eq i64 %2, %.us-phi60
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.noexc
  %i.cw = load i64, ptr %.sroa.313.0..sroa_idx, align 8
  %i.cx = load ptr, ptr %.sroa.212.0..sroa_idx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cy, ptr readonly align 1 %i.cv, i64 %gepdiff, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.noexc
  %i.cz = load i64, ptr %.sroa.313.0..sroa_idx, align 8
  %i.da = add i64 %i.cz, %gepdiff
  store i64 %i.da, ptr %.sroa.313.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.i

bb.x:                                             ; preds = %bb.u
  %.sroa.08.0.copyload = load i64, ptr %i.e, align 8 ; 3 uses
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0
  %gepdiff56 = sub nuw nsw i64 %.sroa.08.0.copyload, %.sroa.04.0 ; 3 uses
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCseVpsqJvcPM7_9addr2line(ptr nonnull align 8 %i.i, i64 %gepdiff56)
          to label %.noexc25 unwind label %.split

.noexc25:                                         ; preds = %bb.x
  %.not.i24 = icmp eq i64 %.sroa.08.0.copyload, %.sroa.04.0
  br i1 %.not.i24, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc25
  %i.dc = load i64, ptr %.sroa.313.0..sroa_idx, align 8
  %i.dd = load ptr, ptr %.sroa.212.0..sroa_idx, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr readonly align 1 %i.db, i64 %gepdiff56, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %.noexc25, %bb.y
  %i.df = load i64, ptr %.sroa.313.0..sroa_idx, align 8
  %i.dg = add i64 %i.df, %gepdiff56
  store i64 %i.dg, ptr %.sroa.313.0..sroa_idx, align 8
  invoke void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCseVpsqJvcPM7_9addr2line(ptr nonnull align 8 %i.i, i64 %.fr)
          to label %.noexc28 unwind label %.split

.noexc28:                                         ; preds = %bb.z
  %i.dh = load i64, ptr %.sroa.313.0..sroa_idx, align 8
  %i.di = load ptr, ptr %.sroa.212.0..sroa_idx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr readonly align 1 %5, i64 %.fr, i1 false)
  %i.dk = load i64, ptr %.sroa.313.0..sroa_idx, align 8
  %i.dl = add i64 %i.dk, %.fr
  store i64 %i.dl, ptr %.sroa.313.0..sroa_idx, align 8
  %i.dm = add i64 %.sroa.3.0.copyload, %.sroa.08.0.copyload
  br label %_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern13into_searcherCs4woGJmGIndg_18build_script_build.exit.split

bb.aa:                                            ; preds = %bb.m
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden i64 @_RINvNtCscAsMj0W7j8b_3std2rt10lang_startuECs4woGJmGIndg_18build_script_build(ptr %0, i64 %1, ptr %2, i8 %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call i64 @_RNvNtCscAsMj0W7j8b_3std2rt19lang_start_internal(ptr nonnull %i.a, ptr nonnull align 8 @2, i64 %1, ptr %2, i8 %3)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCscAsMj0W7j8b_3std3env3varNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4woGJmGIndg_18build_script_build(ptr sret([32 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.b, align 8
  invoke void @_RNvNvNtCscAsMj0W7j8b_3std3env3var5inner(ptr sret([32 x i8]) align 8 %0, ptr %.val, i64 %.val1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4woGJmGIndg_18build_script_build(ptr nonnull align 8 %1) #19
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4woGJmGIndg_18build_script_build.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4woGJmGIndg_18build_script_build.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCscAsMj0W7j8b_3std3env8VarErrorEECs4woGJmGIndg_18build_script_build(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std3env8VarErrorECs4woGJmGIndg_18build_script_build.exit.sink.split unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.h, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.c, align 8
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std3env8VarErrorECs4woGJmGIndg_18build_script_build.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.c)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std3env8VarErrorECs4woGJmGIndg_18build_script_build.exit.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std3env8VarErrorECs4woGJmGIndg_18build_script_build.exit.sink.split: ; preds = %bb.f, %bb.b
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr nonnull align 8 %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std3env8VarErrorECs4woGJmGIndg_18build_script_build.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std3env8VarErrorECs4woGJmGIndg_18build_script_build.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCscAsMj0W7j8b_3std3env8VarErrorECs4woGJmGIndg_18build_script_build.exit.sink.split, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs4woGJmGIndg_18build_script_build(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs4woGJmGIndg_18build_script_build.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs4woGJmGIndg_18build_script_build.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4woGJmGIndg_18build_script_build(ptr align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs4woGJmGIndg_18build_script_build.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs57dEzb6b5A8_5gimli(ptr align 8 %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVechEECs4woGJmGIndg_18build_script_build.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
