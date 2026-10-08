Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.01?download=true
inline.NumInlined: 778
inline.NumDeleted: 277
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [3 x i8] c"`)`", align 1
@1 = private unnamed_addr constant [3 x i8] c"`}`", align 1
@2 = private unnamed_addr constant [3 x i8] c"`]`", align 1

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecReE10retain_mutNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtBZ_10Lookahead15error0EB11_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !26 ; 6 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !26, !noundef !26 ; 4 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.h
  %.sroa.0.0 = phi i64 [ %i.aa, %bb.h ], [ 0, %.preheader ] ; 6 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.0.0 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !64, !noundef !26
  %i.m = icmp eq i64 %i.l, 3
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !alias.scope !64, !nonnull !26, !noundef !26 ; 2 uses
  %i.o = load i16, ptr %i.n, align 1
  %i.p = xor i16 %i.o, 10592
  %i.q = getelementptr i8, ptr %i.n, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i16
  %i.t = xor i16 %i.s, 96
  %i.u = or i16 %i.p, %i.t
  %i.v = icmp ne i16 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = tail call noundef i8 @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor15scope_delimiter(ptr noundef %i.g, ptr noundef %i.i), !noalias !64
  switch i8 %i.y, label %.unreachabledefault [
    i8 0, label %bb.g
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit.preheader
  ]

_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit.preheader: ; preds = %bb.d
  %.sroa.7.038 = add nuw i64 %.sroa.0.0, 1        ; 2 uses
  %i.z = icmp ult i64 %.sroa.7.038, %i.b
  br i1 %i.z, label %.lr.ph, label %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit._crit_edge

.unreachabledefault:                              ; preds = %bb.d
  unreachable

default.unreachable:                              ; preds = %.noexc
  unreachable

bb.e:                                             ; preds = %bb.d
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sroa.01.0.i = phi ptr [ @2, %bb.f ], [ @1, %bb.e ], [ @0, %bb.d ]
  store ptr %.sroa.01.0.i, ptr %i.j, align 8, !alias.scope !64, !captures !65
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.g
  %i.aa = add nuw nsw i64 %.sroa.0.0, 1           ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %i.b
  br i1 %i.ab, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.h, %bb.a, %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit._crit_edge
  ret void

_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit._crit_edge: ; preds = %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit14, %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit.preheader
  %.sroa.13.0.lcssa = phi i64 [ %.sroa.0.0, %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit.preheader ], [ %.sroa.13.1, %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit14 ]
  store i64 %.sroa.13.0.lcssa, ptr %i.a, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit.preheader, %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit14
  %.sroa.7.041 = phi i64 [ %.sroa.7.0, %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit14 ], [ %.sroa.7.038, %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit.preheader ] ; 3 uses
  %.sroa.7.040 = phi i64 [ %.sroa.7.041, %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit14 ], [ %.sroa.0.0, %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit.preheader ]
  %.sroa.13.039 = phi i64 [ %.sroa.13.1, %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit14 ], [ %.sroa.0.0, %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit.preheader ] ; 5 uses
  %i.ac = getelementptr [16 x i8], ptr %i.f, i64 %.sroa.7.040 ; 2 uses
  %2 = getelementptr i8, ptr %i.ac, i64 16        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.ad = getelementptr i8, ptr %i.ac, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !66, !noundef !26
  %i.af = icmp eq i64 %i.ae, 3
  br i1 %i.af, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.lr.ph
  %i.ag = load ptr, ptr %2, align 8, !alias.scope !66, !nonnull !26, !noundef !26 ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = xor i16 %i.ah, 10592
  %i.aj = getelementptr i8, ptr %i.ag, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i16
  %i.am = xor i16 %i.al, 96
  %i.an = or i16 %i.ai, %i.am
  %i.ao = icmp ne i16 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ar = invoke noundef i8 @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor15scope_delimiter(ptr noundef %i.g, ptr noundef %i.i)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.j
  switch i8 %i.ar, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.k
    i8 2, label %bb.l
    i8 3, label %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit14
  ]

bb.k:                                             ; preds = %.noexc
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %.noexc
  %.sroa.01.0.i12 = phi ptr [ @2, %bb.l ], [ @1, %bb.k ], [ @0, %.noexc ]
  store ptr %.sroa.01.0.i12, ptr %2, align 8, !alias.scope !66, !captures !65
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %.lr.ph, %bb.m
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.13.039
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.at = add i64 %.sroa.13.039, 1
  br label %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit14

_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit14: ; preds = %.noexc, %bb.n
  %.sroa.13.1 = phi i64 [ %i.at, %bb.n ], [ %.sroa.13.039, %.noexc ] ; 2 uses
  %.sroa.7.0 = add nuw nsw i64 %.sroa.7.041, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.7.0, %i.b
  br i1 %exitcond.not, label %_RNCNvMNtCsgbWeKYPjk8w_3syn9lookaheadNtB4_10Lookahead15error0B6_.exit._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = sub nuw nsw i64 %i.b, %.sroa.7.041      ; 2 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.13.039
  %i.ax = shl nuw nsw i64 %i.av, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr nonnull align 8 %2, i64 %i.ax, i1 false), !noalias !67
  %i.ay = add i64 %i.av, %.sroa.13.039
  store i64 %i.ay, ptr %i.a, align 8, !noalias !67
  resume { ptr, i32 } %i.au
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgEEEB1A_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !27, !noundef !26 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgEEB1e_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgEBF_(ptr noalias nofree noundef align 8 dereferenceable(304) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgEEB1e_.exit unwind label %bb.d, !noalias !70, !inline_history !71

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 304, i64 noundef 8) #15, !noalias !70
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgEEB1e_.exit: ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 304, i64 noundef 8) #15, !noalias !70
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4data5FieldEEEB1A_(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4data5FieldEEB1e_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4data5FieldEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(512) %.0.val)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4data5FieldEEB1e_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 512, i64 noundef 8) #15
  resume { ptr, i32 } %i.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4data5FieldEEB1e_.exit: ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 512, i64 noundef 8) #15
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEEB1A_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !27, !noundef !26 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEB1e_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr4ExprEBF_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEB1e_.exit unwind label %bb.d, !noalias !74, !inline_history !75

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 168, i64 noundef 8) #15, !noalias !74
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprEEB1e_.exit: ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 168, i64 noundef 8) #15, !noalias !74
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEEB1A_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !27, !noundef !26 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEB1e_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87), !noalias !88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89), !noalias !88
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.e = load i8, ptr %i.d, align 8, !range !28, !alias.scope !90, !noalias !88, !noundef !26
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.val1.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !90, !noalias !88, !noundef !26 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !90, !noalias !88, !nonnull !26, !noundef !26
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #15, !noalias !91, !inline_history !92
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.i = load i64, ptr %i.a, align 8, !range !29, !alias.scope !93, !noalias !88, !noundef !26 ; 2 uses
  %i.j = xor i64 %i.i, -9223372036854775808
  %i.k = icmp slt i64 %i.i, 0
  %i.l = select i1 %i.k, i64 %i.j, i64 2
  switch i64 %i.l, label %bb.f [
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEB1e_.exit
    i64 1, label %bb.g
  ]

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path29ParenthesizedGenericArgumentsEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEB1e_.exit unwind label %bb.h, !inline_history !92

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path30AngleBracketedGenericArgumentsEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEB1e_.exit unwind label %bb.h, !inline_history !92

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 88, i64 noundef 8) #15, !noalias !88
  resume { ptr, i32 } %i.n

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEB1e_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit.i, %bb.f, %bb.g
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 88, i64 noundef 8) #15, !noalias !88
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentEEEB1A_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !27, !noundef !26 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentEEB1e_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentEBF_(ptr noalias nofree noundef align 8 dereferenceable(336) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentEEB1e_.exit unwind label %bb.d, !noalias !96, !inline_history !97

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 336, i64 noundef 8) #15, !noalias !96
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentEEB1e_.exit: ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 336, i64 noundef 8) #15, !noalias !96
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamEEEB1A_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !27, !noundef !26 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamEEB1e_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamEBF_(ptr noalias nofree noundef align 8 dereferenceable(480) %i.a)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamEEB1e_.exit unwind label %bb.d, !noalias !100, !inline_history !101

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 480, i64 noundef 8) #15, !noalias !100
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8generics12GenericParamEEB1e_.exit: ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 480, i64 noundef 8) #15, !noalias !100
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundEEEB1A_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !27, !noundef !26 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn8generics14TypeParamBoundEEB1e_.exit, %bb.a
  ret void

end_hunk_0
begin_hunk_1_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateNtNtBG_5token5CommaEEBG_:bb.a

.body.i.i.i:                                      ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i.i.i, %bb.c
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %.body.i.i unwind label %bb.e, !inline_history !46

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i.i.i.i, %bb.b
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i.i unwind label %bb.f, !inline_history !46

bb.e:                                             ; preds = %.body.i.i.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !inline_history !46
  unreachable

bb.f:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %.body.i.i.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.s, %bb.f ], [ %i.n, %.body.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8lifetime8LifetimeNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.u) #17
          to label %common.resume.i unwind label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i.i: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1903)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.x = load i8, ptr %i.w, align 8, !range !28, !alias.scope !1906, !noundef !26
  %i.y = icmp eq i8 %i.x, 2
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics17PredicateLifetimeEBF_.exit.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !1906, !noundef !26 ; 2 uses
  %i.aa = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.aa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics17PredicateLifetimeEBF_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !1906, !nonnull !26, !noundef !26
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #15, !noalias !1907
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics17PredicateLifetimeEBF_.exit.i

bb.i:                                             ; preds = %.body.i.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume.i:                                  ; preds = %bb.r, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %.pn2.i.i, %bb.r ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics17PredicateLifetimeEBF_.exit.i: ; preds = %bb.h, %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8lifetime8LifetimeNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ac)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateEBF_.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1908)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1910, !nonnull !26, !noundef !26 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !1910, !noundef !26 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i8.i, label %.lr.ph

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i.i.i1.i: ; preds = %.lr.ph
  %i.aj = icmp eq i64 %i.al, %i.ah
  br i1 %i.aj, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i8.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i.i.i1.i
  %.sroa.0.0.i.i.i2.i6 = phi i64 [ %i.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i.i.i1.i ], [ 0, %bb.j ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [248 x i8], ptr %i.af, i64 %.sroa.0.0.i.i.i2.i6
  %i.al = add i64 %.sroa.0.0.i.i.i2.i6, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr4MetaEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.ak)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i.i.i1.i unwind label %bb.k, !noalias !1911, !inline_history !18

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i.i3.i: ; preds = %.lr.ph8
  %i.am = add i64 %.sroa.0.1.i.i.i4.i7, 1         ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.ah
  br i1 %i.an, label %.body.i.i5.i, label %.lr.ph8

bb.k:                                             ; preds = %.lr.ph
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = icmp eq i64 %i.al, %i.ah
  br i1 %i.ap, label %.body.i.i5.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.k, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i.i3.i
  %.sroa.0.1.i.i.i4.i7 = phi i64 [ %i.am, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i.i3.i ], [ %i.al, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [248 x i8], ptr %i.af, i64 %.sroa.0.1.i.i.i4.i7
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr4MetaEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.aq)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i.i3.i unwind label %bb.l, !noalias !1911, !inline_history !18

bb.l:                                             ; preds = %.lr.ph8
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1911, !inline_history !19
  unreachable

.body.i.i5.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i.i3.i, %bb.k
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body.i6.i unwind label %bb.m, !inline_history !46

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i8.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i.i.i1.i, %bb.j
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i9.i unwind label %bb.n, !inline_history !46

bb.m:                                             ; preds = %.body.i.i5.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !inline_history !46
  unreachable

bb.n:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i8.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i6.i

.body.i6.i:                                       ; preds = %bb.n, %.body.i.i5.i
  %eh.lpad-body.i7.i = phi { ptr, i32 } [ %i.at, %bb.n ], [ %i.ao, %.body.i.i5.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !31, !alias.scope !1912, !noundef !26
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.body.i6.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.au)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i unwind label %bb.t, !inline_history !1895

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i9.i: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i8.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !31, !alias.scope !1913, !noundef !26
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit5.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i9.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ax)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit5.i.i unwind label %bb.q, !inline_history !1895

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i: ; preds = %bb.q, %bb.o, %.body.i6.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ba, %bb.q ], [ %eh.lpad-body.i7.i, %bb.o ], [ %eh.lpad-body.i7.i, %.body.i6.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0) #17
          to label %bb.r unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit5.i.i: ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i9.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics13PredicateTypeEBF_.exit.i unwind label %bb.s

bb.r:                                             ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i
  %.pn2.i.i = phi { ptr, i32 } [ %i.bc, %bb.s ], [ %.pn.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bb) #17
          to label %common.resume.i unwind label %bb.t

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit5.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i, %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics13PredicateTypeEBF_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit5.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.be)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateEBF_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateEBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics17PredicateLifetimeEBF_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics13PredicateTypeEBF_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !26 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsgbWeKYPjk8w_3syn.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !49, !alias.scope !1918, !noundef !26
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i, !prof !50

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !1919
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1919, !nonnull !26, !noundef !26 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i     ; 2 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i
  %i.o = add i64 %i.e, -1
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %i.o, i1 false)
  %3 = add i64 %i.i, %i.e                         ; 2 uses
  %i.p = add i64 %3, -1
  %4 = getelementptr i8, ptr %i.k, i64 %3
  %scevgep.i = getelementptr i8, ptr %4, i64 -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %scevgep.i, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.p, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i ]
  store i8 %2, ptr %.sroa.0.0.lcssa28.i, align 1
  %i.q = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsgbWeKYPjk8w_3syn.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsgbWeKYPjk8w_3syn.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.q, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE16into_boxed_sliceBI_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !49, !noundef !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !26, !noundef !26
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #17
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge, label %bb.e, !prof !51

_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge: ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #19
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !49, !noundef !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !26 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !26, !noundef !26
  %i.f = icmp sgt i64 %.sroa.511.0.copyload, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit unwind label %bb.g

_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge, label %bb.e, !prof !51

_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge: ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #19
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !26 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !49, !noundef !26
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !50

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !26
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvMs_NtNtCs4wP2HXfJTCR_5alloc3ffi5c_strNtB7_7CString3newINtNtBb_3vec3VechENtB2_11SpecNewImpl13spec_new_implCsgbWeKYPjk8w_3syn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !1928
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !26, !noundef !26 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !26 ; 5 uses
  %i.g = icmp samesign ult i64 %i.f, 16
  br i1 %i.g, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit12, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.h = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.f)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  %i.k = trunc nuw i64 %i.i to i1
  br i1 %i.k, label %.loopexit, label %.loopexit12

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.sroa.04.011.i = phi i64 [ %i.o, %bb.c ], [ 0, %.preheader.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.04.011.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1929, !noundef !26
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = add nuw nsw i64 %.sroa.04.011.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not.i, label %.loopexit12, label %.lr.ph.i
end_hunk_1
