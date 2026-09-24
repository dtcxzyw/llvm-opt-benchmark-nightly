Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_core_structures-4322d96ee0466804.xet_core_structures.235076a0606dc26f-cgu.02?download=true
inline.NumInlined: 643
inline.NumDeleted: 367
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [17 x i8] c"capacity overflow", align 1
@1 = private unnamed_addr constant [77 x i8] c"/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed/library/alloc/src/vec/mod.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"L\00\00\00\00\00\00\004\10\00\00\0D\00\00\00" }>, align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvMs_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecjE8dedup_byNCNvMs5_B5_Bv_5dedup0ECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !8 ; 7 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !8, !noundef !8 ; 7 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvar = phi i64 [ 0, %bb.b ], [ %indvar.next, %bb.e ] ; 3 uses
  %.sroa.0.022 = phi i64 [ 1, %bb.b ], [ %.sroa.5.023, %bb.e ] ; 8 uses
  %i.g = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %.val11 = load i64, ptr %i.g, align 8, !noundef !8
  %.val12 = load i64, ptr %i.h, align 8, !noundef !8
  %i.i = icmp eq i64 %.val11, %.val12
  %.sroa.5.023 = add nuw i64 %.sroa.0.022, 1      ; 5 uses
  br i1 %i.i, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.j = icmp ult i64 %.sroa.5.023, %i.b
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.k = sub i64 %i.b, %indvar
  %i.l = add nsw i64 %i.b, -3
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.023
  %i.n = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.0.022 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %.val.prol = load i64, ptr %i.m, align 8, !noundef !8 ; 2 uses
  %.val10.prol = load i64, ptr %i.o, align 8, !noundef !8
  %i.p = icmp eq i64 %.val.prol, %.val10.prol
  br i1 %i.p, label %.lr.ph.prol.loopexit.unr-lcssa, label %bb.d

bb.d:                                             ; preds = %.lr.ph.prol
  store i64 %.val.prol, ptr %i.n, align 8
  %i.q = add i64 %.sroa.0.022, 1
  br label %.lr.ph.prol.loopexit.unr-lcssa

.lr.ph.prol.loopexit.unr-lcssa:                   ; preds = %bb.d, %.lr.ph.prol
  %.sroa.11.1.prol = phi i64 [ %i.q, %bb.d ], [ %.sroa.0.022, %.lr.ph.prol ] ; 2 uses
  %.sroa.5.0.prol = add nuw i64 %.sroa.0.022, 2
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.11.1.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.5.025.unr = phi i64 [ %.sroa.5.023, %.lr.ph.preheader ], [ %.sroa.5.0.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %.sroa.11.024.unr = phi i64 [ %.sroa.0.022, %.lr.ph.preheader ], [ %.sroa.11.1.prol, %.lr.ph.prol.loopexit.unr-lcssa ]
  %i.r = icmp eq i64 %i.l, %indvar
  br i1 %i.r, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq i64 %.sroa.5.023, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.thread, label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %.preheader
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.0.022, %.preheader ], [ %.sroa.11.1.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.sroa.11.1.1, %bb.h ]
  store i64 %.sroa.11.0.lcssa, ptr %i.a, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.a, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %bb.h
  %.sroa.5.025 = phi i64 [ %.sroa.5.0.1, %bb.h ], [ %.sroa.5.025.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.sroa.11.024 = phi i64 [ %.sroa.11.1.1, %bb.h ], [ %.sroa.11.024.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.t = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.024 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %.val = load i64, ptr %i.s, align 8, !noundef !8 ; 2 uses
  %.val10 = load i64, ptr %i.u, align 8, !noundef !8
  %i.v = icmp eq i64 %.val, %.val10
  br i1 %i.v, label %.lr.ph.1, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  store i64 %.val, ptr %i.t, align 8
  %i.w = add i64 %.sroa.11.024, 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.f
  %.sroa.11.1 = phi i64 [ %i.w, %bb.f ], [ %.sroa.11.024, %.lr.ph ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.5.025
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr [8 x i8], ptr %i.f, i64 %.sroa.11.1 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -8
  %.val.1 = load i64, ptr %i.y, align 8, !noundef !8 ; 2 uses
  %.val10.1 = load i64, ptr %i.aa, align 8, !noundef !8
  %i.ab = icmp eq i64 %.val.1, %.val10.1
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.1
  store i64 %.val.1, ptr %i.z, align 8
  %i.ac = add i64 %.sroa.11.1, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.1
  %.sroa.11.1.1 = phi i64 [ %i.ac, %bb.g ], [ %.sroa.11.1, %.lr.ph.1 ] ; 2 uses
  %.sroa.5.0.1 = add nuw nsw i64 %.sroa.5.025, 2  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.sroa.5.0.1, %i.b
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB13_4skip4SkipINtNtNtB17_5slice4iter4ItermEENCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0EEB2H_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !28, !noalias !29, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i.i = load ptr, ptr %i.b, align 8, !alias.scope !28, !noalias !29, !nonnull !8, !noundef !8
  %i.c = ptrtoint ptr %.val3.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 2
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !28, !noalias !29, !noundef !8
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !30, !noundef !8 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !9, !alias.scope !30, !noundef !8
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.i, %i.m
  br i1 %i.n, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCs31YAwBA1AlL_19xet_core_structures.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.i, i64 noundef 4, i64 noundef 4)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCs31YAwBA1AlL_19xet_core_structures.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecmE7reserveCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %bb.a, %bb.b
  %i.o = phi i64 [ %i.k, %bb.a ], [ %.pre, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %i.r, align 8
  store ptr %i.j, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.s, align 8
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItermEENCNvNtNtCs31YAwBA1AlL_19xet_core_structures11xorb_object17xorb_chunk_format20append_chunk_segment0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3j_8for_each4callmNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecmE14extend_trustedBN_E0E0EB1Q_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !43, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !43, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures.exit, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit.i.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1 ; 4 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !46, !noalias !43, !nonnull !8, !align !11, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !47, !nonnull !8, !noundef !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !46, !noalias !43, !noundef !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !46, !noalias !43, !noundef !8
  invoke void %i.k(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef %i.n, i64 noundef %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit.i.i unwind label %bb.b, !noalias !43, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit7.i.i: ; preds = %.lr.ph3
  %i.q = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d
  br i1 %i.r, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.h, %i.d
  br i1 %i.t, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit7.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !50, !noalias !43, !nonnull !8, !align !11, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !51, !nonnull !8, !noundef !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !50, !noalias !43, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !50, !noalias !43, !noundef !8
  invoke void %i.x(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.aa, i64 noundef %i.ac)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit7.i.i unwind label %bb.c, !noalias !43, !inline_history !0

bb.c:                                             ; preds = %.lr.ph3
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !43
  unreachable

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit unwind label %bb.d

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslc8SwK8fohf_5bytes5bytes5BytesECs31YAwBA1AlL_19xet_core_structures.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCslc8SwK8fohf_5bytes5bytes5BytesEECs31YAwBA1AlL_19xet_core_structures.exit: ; preds = %.body
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateEECs31YAwBA1AlL_19xet_core_structures(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !68, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !68, !noundef !8 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs31YAwBA1AlL_19xet_core_structures.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateECs31YAwBA1AlL_19xet_core_structures.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs8rVFV1hdcx_14regex_automata4util11determinize5state5StateECs31YAwBA1AlL_19xet_core_structures.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.09.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
end_hunk_0
