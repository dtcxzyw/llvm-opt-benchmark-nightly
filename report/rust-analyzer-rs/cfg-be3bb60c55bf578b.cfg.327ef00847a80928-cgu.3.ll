Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/cfg-be3bb60c55bf578b.cfg.327ef00847a80928-cgu.3?download=true
inline.NumInlined: 179
inline.NumDeleted: 107
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [5 x i8] c"\C0\01=\C0\00", align 1
@1 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsK_NtCshzWfHUSfYae_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt }>, align 8
@2 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr }> <{ ptr @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4kMRW8zVVbM_3cfg, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str, ptr @_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char, ptr @_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCs4kMRW8zVVbM_3cfg }>, align 8
@3 = private unnamed_addr constant [55 x i8] c"a Display implementation returned an error unexpectedly", align 1
@4 = private unnamed_addr constant [76 x i8] c"/rustc/73dc9167f1cd099e525c9ade2e068d1907b78564/library/alloc/src/string.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"K\00\00\00\00\00\00\00\89\0B\00\00\0E\00\00\00" }>, align 8
@6 = private unnamed_addr constant [5 x i8] c"Error", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE8dedup_byNCNvMs5_B5_Bv_5dedup0EBJ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 6 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.loopexit36, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit.thread
  %.sroa.0.039 = phi i64 [ 1, %bb.b ], [ %i.j, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit.thread ] ; 6 uses
  %i.g = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.0.039 ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -16
  %.val13.a = load ptr, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %.val15 = load ptr, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %1 = icmp ne ptr %.val13.a, null                ; 2 uses
  %2 = icmp eq ptr %.val15, null                  ; 3 uses
  %not..i.i = xor i1 %2, true
  %i.i = xor i1 %1, %2
  br i1 %i.i, label %bb.d, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit.thread

bb.d:                                             ; preds = %bb.c
  %3 = getelementptr i8, ptr %i.g, i64 -8
  %.val16 = load ptr, ptr %3, align 8
  %4 = getelementptr i8, ptr %i.g, i64 8
  %.val14 = load ptr, ptr %4, align 8             ; 2 uses
  %5 = icmp eq ptr %.val14, %.val16               ; 2 uses
  br i1 %1, label %.split, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit

.split:                                           ; preds = %bb.d
  tail call void @llvm.assume(i1 %not..i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %6 = icmp eq ptr %.val13.a, %.val15
  %spec.select.i.i = select i1 %6, i1 %5, i1 false
  br i1 %spec.select.i.i, label %bb.e, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit.thread

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit: ; preds = %bb.d
  tail call void @llvm.assume(i1 %2)
  br i1 %5, label %bb.e, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit.thread

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit.thread: ; preds = %bb.c, %.split, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit
  %i.j = add nuw nsw i64 %.sroa.0.039, 1          ; 2 uses
  %.not = icmp eq i64 %i.j, %i.b
  br i1 %.not, label %.loopexit36, label %bb.c

bb.e:                                             ; preds = %.split, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit
  %i.k = add nuw i64 %.sroa.0.039, 1              ; 3 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBF_(ptr %.val13.a, ptr %.val14)
          to label %.preheader unwind label %.loopexit.split-lp

.preheader:                                       ; preds = %bb.e
  %i.l = icmp ult i64 %i.k, %i.b
  br i1 %i.l, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.sroa.12.1.lcssa = phi i64 [ %.sroa.0.039, %.preheader ], [ %.sroa.12.2, %bb.h ]
  store i64 %.sroa.12.1.lcssa, ptr %i.a, align 8
  br label %.loopexit36

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.sroa.5.141 = phi i64 [ %.sroa.5.2, %bb.h ], [ %i.k, %.preheader ] ; 3 uses
  %.sroa.12.140 = phi i64 [ %.sroa.12.2, %bb.h ], [ %.sroa.0.039, %.preheader ] ; 4 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.141 ; 3 uses
  %i.n = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.12.140 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -16
  %.val = load ptr, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %.val10 = load ptr, ptr %i.p, align 8           ; 3 uses
  %.val11 = load ptr, ptr %i.o, align 8, !noundef !4 ; 3 uses
  %7 = icmp ne ptr %.val, null                    ; 2 uses
  %8 = icmp eq ptr %.val11, null                  ; 3 uses
  %not..i.i21 = xor i1 %8, true
  %i.q = xor i1 %7, %8
  br i1 %i.q, label %bb.f, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit24.thread

bb.f:                                             ; preds = %.lr.ph
  %9 = getelementptr i8, ptr %i.n, i64 -8
  %.val12 = load ptr, ptr %9, align 8
  %10 = icmp eq ptr %.val10, %.val12              ; 2 uses
  br i1 %7, label %.split35, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit24

.split35:                                         ; preds = %bb.f
  tail call void @llvm.assume(i1 %not..i.i21)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11) ]
  %i.r = icmp eq ptr %.val, %.val11
  %spec.select.i.i23 = select i1 %i.r, i1 %10, i1 false
  br i1 %spec.select.i.i23, label %bb.g, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit24.thread

.loopexit36:                                      ; preds = %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit.thread, %bb.a, %._crit_edge
  ret void

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit24: ; preds = %bb.f
  tail call void @llvm.assume(i1 %8)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  br i1 %10, label %bb.g, label %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit24.thread

_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit24.thread: ; preds = %.lr.ph, %.split35, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.s = add i64 %.sroa.12.140, 1
  %i.t = add nuw nsw i64 %.sroa.5.141, 1
  br label %bb.h

bb.g:                                             ; preds = %.split35, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit24
  %i.u = add nuw nsw i64 %.sroa.5.141, 1          ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBF_(ptr %.val, ptr %.val10)
          to label %bb.h unwind label %.loopexit

bb.h:                                             ; preds = %bb.g, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit24.thread
  %.sroa.12.2 = phi i64 [ %.sroa.12.140, %bb.g ], [ %i.s, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit24.thread ] ; 2 uses
  %.sroa.5.2 = phi i64 [ %i.u, %bb.g ], [ %i.t, %_RNCNvMs5_NtCsbSS6DM8SDEO_5alloc3vecINtB7_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomE5dedup0BL_.exit24.thread ] ; 2 uses
  %i.v = icmp samesign ult i64 %.sroa.5.2, %i.b
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.12.0 = phi i64 [ %.sroa.12.140, %.loopexit ], [ %.sroa.0.039, %.loopexit.split-lp ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.u, %.loopexit ], [ %i.k, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.w = sub i64 %i.b, %.sroa.5.0                 ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.12.0
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.5.0
  %i.z = shl nuw nsw i64 %i.w, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.y, i64 %i.z, i1 false), !noalias !5
  %i.aa = add i64 %i.w, %.sroa.12.0
  store i64 %i.aa, ptr %i.a, align 8, !noalias !5
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3rev3RevINtNtB6_9into_iter8IntoIterBG_EEEBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.d = ptrtoint ptr %.val5 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !10, !noundef !4 ; 3 uses
  %i.j = load i64, ptr %0, align 8, !range !13, !alias.scope !10, !noundef !4
  %i.k = sub i64 %i.j, %i.i
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE7reserveBI_.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i, i64 noundef %i.g, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE7reserveBI_.exit_crit_edge unwind label %bb.c

._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE7reserveBI_.exit_crit_edge: ; preds = %bb.b
  %.pre = load i64, ptr %i.h, align 8
  br label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE7reserveBI_.exit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE7reserveBI_.exit: ; preds = %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE7reserveBI_.exit_crit_edge, %bb.a
  %i.m = phi i64 [ %.pre, %._RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprE7reserveBI_.exit_crit_edge ], [ %i.i, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15
  store ptr %i.h, ptr %i.a, align 8, !noalias !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !19
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %.sroa.59.0..sroa_idx, align 8, !noalias !19
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3revINtB5_3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2p_8for_each4callB1K_NCINvMsk_B11_INtB11_3VecB1K_E14extend_trustedBM_E0E0EB1O_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEEB21_.exit: ; preds = %bb.c
  resume { ptr, i32 } %lpad.thr_comm

bb.c:                                             ; preds = %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgExprEEEB21_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtBG_6string6StringEECs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !20, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !20, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4kMRW8zVVbM_3cfg.exit, label %.lr.ph

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4kMRW8zVVbM_3cfg.exit.i.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4kMRW8zVVbM_3cfg.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4kMRW8zVVbM_3cfg.exit.i.i
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4kMRW8zVVbM_3cfg.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4kMRW8zVVbM_3cfg.exit.i.i unwind label %bb.b, !noalias !20

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4kMRW8zVVbM_3cfg.exit7.i.i: ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph3

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4kMRW8zVVbM_3cfg.exit7.i.i
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4kMRW8zVVbM_3cfg.exit7.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.1.i.i2
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4kMRW8zVVbM_3cfg.exit7.i.i unwind label %bb.c, !noalias !20

bb.c:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #16, !noalias !20
  unreachable

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4kMRW8zVVbM_3cfg.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs4kMRW8zVVbM_3cfg.exit unwind label %bb.d

_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4kMRW8zVVbM_3cfg.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs4kMRW8zVVbM_3cfg.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs4kMRW8zVVbM_3cfg(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECs4kMRW8zVVbM_3cfg.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !23, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !23, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.0.i.i1 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  %.val8.i.i = load ptr, ptr %i.g, align 8, !alias.scope !26, !noalias !23, !noundef !4
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val9.i.i = load ptr, ptr %i.i, align 8, !alias.scope !26, !noalias !23
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEBF_(ptr %.val8.i.i, ptr %.val9.i.i)
          to label %bb.b unwind label %bb.d, !noalias !29

bb.c:                                             ; preds = %.lr.ph3
  %i.j = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %.body, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.h, %i.d
  br i1 %i.m, label %.body, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
end_hunk_0
