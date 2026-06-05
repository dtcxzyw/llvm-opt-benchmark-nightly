inline.NumInlined: 230
inline.NumDeleted: 93
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@_ZN2PPL10index_baseE = internal unnamed_addr global i32 1, align 4
@.str = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN2PP12Parser_utilsC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN2PP12Parser_utilsC2Ei

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN2PP12Parser_utilsC2Ei(ptr nonnull readnone align 1 captures(none) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store i32 %1, ptr @_ZN2PPL10index_baseE, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_(ptr noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %1, align 8, !tbaa !12     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2                   ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %i.c, align 4, !tbaa !4
  %i.k = load i32, ptr @_ZN2PPL10index_baseE, align 4, !tbaa !4 ; 2 uses
  %i.l = sub nsw i32 %i.j, %i.k                   ; 2 uses
  %i.m = icmp sgt i32 %i.h, 1
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %wide.trip.count31 = and i64 %i.g, 2147483647
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit37
  %indvars.iv28 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next29, %.loopexit37 ] ; 6 uses
  %.01924 = phi i32 [ %i.l, %.lr.ph ], [ %i.y, %.loopexit37 ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4
  %i.q = sub nsw i32 %i.p, %i.k                   ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv28, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %indvars.iv28, 9223372036854775800 ; 3 uses
  %i.r = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %i.q, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.r, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi35 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.v, %vector.body ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !4
  %wide.load36 = load <4 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.u = mul <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.v = mul <4 x i32> %wide.load36, %vec.phi35   ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %indvars.iv28, %n.vec
  br i1 %cmp.n, label %.loopexit37, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  %.01722.ph = phi i32 [ %i.q, %bb.c ], [ %i.x, %middle.block ]
  br label %scalar.ph

.loopexit37:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.x, %middle.block ], [ %i.ab, %scalar.ph ]
  %i.y = add nsw i32 %.lcssa, %.01924             ; 2 uses
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %.loopexit, label %bb.c, !llvm.loop !17

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.01722 = phi i32 [ %i.ab, %scalar.ph ], [ %.01722.ph, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = mul nsw i32 %i.aa, %.01722              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv28
  br i1 %exitcond.not, label %.loopexit37, label %scalar.ph, !llvm.loop !18

.loopexit:                                        ; preds = %.loopexit37, %bb.b, %bb.a
  %.020 = phi i32 [ 0, %bb.a ], [ %i.l, %bb.b ], [ %i.y, %.loopexit37 ]
  ret i32 %.020
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_(ptr noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %3, align 8, !tbaa !12     ; 10 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2                   ; 6 uses
  %i.h = trunc i64 %i.g to i32                    ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit52, label %.preheader53

.preheader53:                                     ; preds = %bb.a
  %i.j = icmp sgt i32 %i.h, 0                     ; 2 uses
  br i1 %i.j, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader53
  %i.k = load i32, ptr %i.c, align 4, !tbaa !4
  %i.l = load i32, ptr @_ZN2PPL10index_baseE, align 4, !tbaa !4
  %i.m = sub nsw i32 %i.k, %i.l
  br label %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit

.lr.ph:                                           ; preds = %.preheader53
  %i.n = load i32, ptr @_ZN2PPL10index_baseE, align 4, !tbaa !4 ; 2 uses
  %wide.trip.count = and i64 %i.g, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.g, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.o, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.p, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.r = load i32, ptr %i.c, align 4, !tbaa !4
  %i.s = load i32, ptr @_ZN2PPL10index_baseE, align 4, !tbaa !4 ; 2 uses
  %i.t = sub nsw i32 %i.r, %i.s                   ; 2 uses
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.u = load ptr, ptr %4, align 8, !tbaa !12     ; 2 uses
  %wide.trip.count31.i = and i64 %i.g, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.loopexit155, %.lr.ph.i
  %indvars.iv28.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next29.i, %.loopexit155 ] ; 6 uses
  %.01924.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.af, %.loopexit155 ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv28.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = sub nsw i32 %i.w, %i.s                   ; 2 uses
  %min.iters.check126 = icmp samesign ult i64 %indvars.iv28.i, 8
  br i1 %min.iters.check126, label %scalar.ph125.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.b
  %n.vec129 = and i64 %indvars.iv28.i, 9223372036854775800 ; 3 uses
  %i.y = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %i.x, i64 0
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph127
  %index131 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body130 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.y, %vector.ph127 ], [ %i.ab, %vector.body130 ]
  %vec.phi132 = phi <4 x i32> [ splat (i32 1), %vector.ph127 ], [ %i.ac, %vector.body130 ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index131 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <4 x i32>, ptr %i.z, align 4, !tbaa !4
  %wide.load133 = load <4 x i32>, ptr %i.aa, align 4, !tbaa !4
  %i.ab = mul <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ac = mul <4 x i32> %wide.load133, %vec.phi132 ; 2 uses
  %index.next134 = add nuw i64 %index131, 8       ; 2 uses
  %i.ad = icmp eq i64 %index.next134, %n.vec129
  br i1 %i.ad, label %middle.block135, label %vector.body130, !llvm.loop !20

middle.block135:                                  ; preds = %vector.body130
  %bin.rdx = mul <4 x i32> %i.ac, %i.ab
  %i.ae = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n136 = icmp eq i64 %indvars.iv28.i, %n.vec129
  br i1 %cmp.n136, label %.loopexit155, label %scalar.ph125.preheader

scalar.ph125.preheader:                           ; preds = %bb.b, %middle.block135
  %indvars.iv.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec129, %middle.block135 ]
  %.01722.i.ph = phi i32 [ %i.x, %bb.b ], [ %i.ae, %middle.block135 ]
  br label %scalar.ph125

.loopexit155:                                     ; preds = %scalar.ph125, %middle.block135
  %.lcssa119 = phi i32 [ %i.ae, %middle.block135 ], [ %i.ai, %scalar.ph125 ]
  %i.af = add nsw i32 %.lcssa119, %.01924.i       ; 2 uses
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %wide.trip.count31.i
  br i1 %exitcond32.not.i, label %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit, label %bb.b, !llvm.loop !17

scalar.ph125:                                     ; preds = %scalar.ph125.preheader, %scalar.ph125
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph125 ], [ %indvars.iv.i.ph, %scalar.ph125.preheader ] ; 2 uses
  %.01722.i = phi i32 [ %i.ai, %scalar.ph125 ], [ %.01722.i.ph, %scalar.ph125.preheader ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = mul nsw i32 %i.ah, %.01722.i            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv28.i
  br i1 %exitcond.not.i, label %.loopexit155, label %scalar.ph125, !llvm.loop !21

_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit: ; preds = %.loopexit155, %._crit_edge.thread, %._crit_edge
  %.020.i = phi i32 [ %i.m, %._crit_edge.thread ], [ %i.t, %._crit_edge ], [ %i.af, %.loopexit155 ]
  %i.aj = icmp ne i32 %.020.i, %1
  %i.ak = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.aj, %i.ak
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit52

.preheader.lr.ph:                                 ; preds = %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit
  %i.al = load i32, ptr @_ZN2PPL10index_baseE, align 4 ; 3 uses
  %i.am = icmp sgt i32 %i.h, 1
  %i.an = load ptr, ptr %4, align 8               ; 2 uses
  %wide.trip.count31.i41 = and i64 %i.g, 2147483647
  br i1 %i.j, label %.preheader.us.preheader, label %.loopexit52

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.ao = add nuw nsw i64 %i.g, 4294967295
  %wide.trip.count105 = and i64 %i.ao, 4294967295 ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %wide.trip.count105 ; 2 uses
  %exitcond106.not121 = icmp eq i64 %wide.trip.count105, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us
  %.03464.us = phi i32 [ %i.bq, %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us ], [ 0, %.preheader.us.preheader ]
  %i.aq = load ptr, ptr %4, align 8
  br i1 %exitcond106.not121, label %._crit_edge124, label %.lr.ph123

._crit_edge124:                                   ; preds = %bb.d, %.preheader.us
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !4
  br label %..loopexit_crit_edge.us

.lr.ph123:                                        ; preds = %.preheader.us, %bb.d
  %indvars.iv102122 = phi i64 [ %indvars.iv.next103, %bb.d ], [ 0, %.preheader.us ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv102122 ; 3 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4  ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv102122
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph123
  %i.ay = add nsw i32 %i.au, 1
  store i32 %i.ay, ptr %i.at, align 4, !tbaa !4
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %._crit_edge124, %bb.c
  %i.az = load i32, ptr %i.c, align 4, !tbaa !4
  %i.ba = sub nsw i32 %i.az, %i.al                ; 2 uses
  br i1 %i.am, label %.lr.ph.i40.us, label %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us

.lr.ph.i40.us:                                    ; preds = %..loopexit_crit_edge.us, %.loopexit
  %indvars.iv28.i42.us = phi i64 [ %indvars.iv.next29.i48.us, %.loopexit ], [ 1, %..loopexit_crit_edge.us ] ; 6 uses
  %.01924.i43.us = phi i32 [ %i.bo, %.loopexit ], [ %i.ba, %..loopexit_crit_edge.us ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv28.i42.us
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = sub nsw i32 %i.bc, %i.al                ; 2 uses
  %min.iters.check139 = icmp samesign ult i64 %indvars.iv28.i42.us, 8
  br i1 %min.iters.check139, label %scalar.ph138.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %.lr.ph.i40.us
  %n.vec142 = and i64 %indvars.iv28.i42.us, 9223372036854775800 ; 3 uses
  %i.be = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %i.bd, i64 0
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph140
  %index144 = phi i64 [ 0, %vector.ph140 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %vec.phi145 = phi <4 x i32> [ %i.be, %vector.ph140 ], [ %i.bh, %vector.body143 ]
  %vec.phi146 = phi <4 x i32> [ splat (i32 1), %vector.ph140 ], [ %i.bi, %vector.body143 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index144 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load147 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !4
  %wide.load148 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !4
  %i.bh = mul <4 x i32> %wide.load147, %vec.phi145 ; 2 uses
  %i.bi = mul <4 x i32> %wide.load148, %vec.phi146 ; 2 uses
  %index.next149 = add nuw i64 %index144, 8       ; 2 uses
  %i.bj = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.bj, label %middle.block150, label %vector.body143, !llvm.loop !22

middle.block150:                                  ; preds = %vector.body143
  %bin.rdx151 = mul <4 x i32> %i.bi, %i.bh
  %i.bk = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx151) ; 2 uses
  %cmp.n152 = icmp eq i64 %indvars.iv28.i42.us, %n.vec142
  br i1 %cmp.n152, label %.loopexit, label %scalar.ph138.preheader

scalar.ph138.preheader:                           ; preds = %.lr.ph.i40.us, %middle.block150
  %indvars.iv.i44.us.ph = phi i64 [ 0, %.lr.ph.i40.us ], [ %n.vec142, %middle.block150 ]
  %.01722.i45.us.ph = phi i32 [ %i.bd, %.lr.ph.i40.us ], [ %i.bk, %middle.block150 ]
  br label %scalar.ph138

scalar.ph138:                                     ; preds = %scalar.ph138.preheader, %scalar.ph138
  %indvars.iv.i44.us = phi i64 [ %indvars.iv.next.i46.us, %scalar.ph138 ], [ %indvars.iv.i44.us.ph, %scalar.ph138.preheader ] ; 2 uses
  %.01722.i45.us = phi i32 [ %i.bn, %scalar.ph138 ], [ %.01722.i45.us.ph, %scalar.ph138.preheader ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i44.us
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4
  %i.bn = mul nsw i32 %i.bm, %.01722.i45.us       ; 2 uses
  %indvars.iv.next.i46.us = add nuw nsw i64 %indvars.iv.i44.us, 1 ; 2 uses
  %exitcond.not.i47.us = icmp eq i64 %indvars.iv.next.i46.us, %indvars.iv28.i42.us
  br i1 %exitcond.not.i47.us, label %.loopexit, label %scalar.ph138, !llvm.loop !23

.loopexit:                                        ; preds = %scalar.ph138, %middle.block150
  %.lcssa117 = phi i32 [ %i.bk, %middle.block150 ], [ %i.bn, %scalar.ph138 ]
  %i.bo = add nsw i32 %.lcssa117, %.01924.i43.us  ; 2 uses
  %indvars.iv.next29.i48.us = add nuw nsw i64 %indvars.iv28.i42.us, 1 ; 2 uses
  %exitcond32.not.i49.us = icmp eq i64 %indvars.iv.next29.i48.us, %wide.trip.count31.i41
  br i1 %exitcond32.not.i49.us, label %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us, label %.lr.ph.i40.us, !llvm.loop !17

_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us: ; preds = %.loopexit, %..loopexit_crit_edge.us
  %.020.i39.us = phi i32 [ %i.ba, %..loopexit_crit_edge.us ], [ %i.bo, %.loopexit ]
  %i.bp = icmp ne i32 %.020.i39.us, %1
  %i.bq = add nuw nsw i32 %.03464.us, 1           ; 2 uses
  %i.br = icmp slt i32 %i.bq, %2
  %or.cond85 = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %or.cond85, label %.preheader.us, label %.loopexit52, !llvm.loop !24

bb.d:                                             ; preds = %.lr.ph123
  store i32 %i.al, ptr %i.at, align 4, !tbaa !4
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102122, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %._crit_edge124, label %.lr.ph123

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.n, ptr %i.bs, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !25

.loopexit52:                                      ; preds = %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us, %.preheader.lr.ph, %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE(ptr noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(128) %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !26     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = lshr i64 %i.j, 5                         ; 9 uses
  %i.l = trunc i64 %i.k to i32                    ; 4 uses
  %sext = shl i64 %i.j, 27                        ; 5 uses
  %i.m = ashr exact i64 %sext, 32                 ; 4 uses
  %i.n = icmp ugt i64 %i.m, 2305843009213693951
  br i1 %i.n, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #13
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %sext, 0            ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit, label %.noexc178

.noexc178:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = ashr exact i64 %sext, 30                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #14 ; 3 uses
  %i.q = and i64 %i.o, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.q, i1 false), !tbaa !4
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.m
  %i.s = ptrtoint ptr %i.r to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit:            ; preds = %.noexc178, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.15298.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.s, %.noexc178 ] ; 2 uses
  %.sroa.0289.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.p, %.noexc178 ] ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33   ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.d to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 24
  %i.z = trunc i64 %i.y to i32
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.preheader318.lr.ph, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179

.preheader318.lr.ph:                              ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.ab = icmp sgt i32 %i.l, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br i1 %i.ab, label %.preheader318.us.preheader, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179

.preheader318.us.preheader:                       ; preds = %.preheader318.lr.ph
  %wide.trip.count = and i64 %i.k, 2147483647
  br label %.preheader318.us

.preheader318.us:                                 ; preds = %.preheader318.us.preheader, %._crit_edge.us
  %indvars.iv395 = phi i64 [ 0, %.preheader318.us.preheader ], [ %indvars.iv.next396, %._crit_edge.us ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader318.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  %indvars.iv = phi i64 [ 0, %.preheader318.us ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ae = load ptr, ptr %1, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %indvars.iv395
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  store ptr %i.ac, ptr %7, align 8, !tbaa !34
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !37 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i64 %i.ak, ptr %i.c, align 8, !tbaa !41
  %i.al = icmp ugt i64 %i.ak, 15
  br i1 %i.al, label %.noexc.i.us, label %._crit_edge.i.i.us

.noexc.i.us:                                      ; preds = %bb.b
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc189.us unwind label %.split.us ; 2 uses

.noexc189.us:                                     ; preds = %.noexc.i.us
  store ptr %i.am, ptr %7, align 8, !tbaa !37
  %i.an = load i64, ptr %i.c, align 8, !tbaa !41
  store i64 %i.an, ptr %i.ac, align 8, !tbaa !42
  br label %._crit_edge.i.i.us

._crit_edge.i.i.us:                               ; preds = %.noexc189.us, %bb.b
  %i.ao = phi ptr [ %i.am, %.noexc189.us ], [ %i.ac, %bb.b ] ; 2 uses
  switch i64 %i.ak, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.us
  %i.ap = load i8, ptr %i.ai, align 1, !tbaa !42
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !42
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.us
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %i.ai, i64 %i.ak, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.us
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !41  ; 2 uses
  store i64 %i.aq, ptr %i.ad, align 8, !tbaa !40
  %i.ar = load ptr, ptr %7, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store i8 0, ptr %i.as, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.at = load i64, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0, i64 %indvars.iv ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = icmp slt i32 %i.aw, %i.au
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.au, ptr %i.av, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ay = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ac
  br i1 %i.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us: ; preds = %bb.g
  %i.ba = load i64, ptr %i.ac, align 8, !tbaa !42
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us: ; preds = %bb.g
  %i.bc = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.bc)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !43

._crit_edge.us:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
  %indvars.iv.next396 = add nuw nsw i64 %indvars.iv395, 1 ; 2 uses
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !33  ; 2 uses
  %i.be = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 24
  %sext479 = shl i64 %i.bi, 32
  %i.bj = ashr exact i64 %sext479, 32
  %i.bk = icmp slt i64 %indvars.iv.next396, %i.bj
  br i1 %i.bk, label %.preheader318.us, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179, !llvm.loop !44

.split.us:                                        ; preds = %.noexc.i.us
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit246

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179: ; preds = %._crit_edge.us, %.preheader318.lr.ph, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
  %i.bm = phi ptr [ %i.d, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.d, %.preheader318.lr.ph ], [ %i.be, %._crit_edge.us ] ; 5 uses
  %i.bn = phi ptr [ %i.u, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit ], [ %i.u, %.preheader318.lr.ph ], [ %i.bd, %._crit_edge.us ] ; 4 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit188, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179
  %i.bo = ashr exact i64 %sext, 30                ; 2 uses
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #14
          to label %.noexc187 unwind label %bb.j  ; 3 uses

.noexc187:                                        ; preds = %bb.h
  %i.bq = and i64 %i.bo, -4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bp, i8 0, i64 %i.bq, i1 false), !tbaa !4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.m
  %i.bs = ptrtoint ptr %i.br to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit188

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit188:         ; preds = %.noexc187, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179
  %.sroa.0276.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179 ], [ %i.bp, %.noexc187 ] ; 21 uses
  %.sroa.17.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179 ], [ %i.bs, %.noexc187 ] ; 2 uses
  %i.bt = icmp sgt i32 %i.l, 0                    ; 5 uses
  br i1 %i.bt, label %.lr.ph.preheader, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i190

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit188
  %wide.trip.count401 = and i64 %i.k, 2147483647  ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count401, 8
  br i1 %min.iters.check, label %.lr.ph.preheader565, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.k, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue525, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue525 ] ; 10 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !4 ; 5 uses
  %wide.load509 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !4 ; 5 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %index ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load510 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !4
  %wide.load511 = load <4 x i32>, ptr %i.bx, align 4, !tbaa !4
  %i.by = icmp sgt <4 x i32> %wide.load, %wide.load510 ; 4 uses
  %i.bz = icmp sgt <4 x i32> %wide.load509, %wide.load511 ; 4 uses
  %i.ca = extractelement <4 x i1> %i.by, i64 0
  br i1 %i.ca, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cb = extractelement <4 x i32> %wide.load, i64 0
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !4
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cc = extractelement <4 x i1> %i.by, i64 1
  br i1 %i.cc, label %pred.store.if512, label %pred.store.continue513

pred.store.if512:                                 ; preds = %pred.store.continue
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %index
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = extractelement <4 x i32> %wide.load, i64 1
  store i32 %i.cf, ptr %i.ce, align 4, !tbaa !4
  br label %pred.store.continue513

pred.store.continue513:                           ; preds = %pred.store.if512, %pred.store.continue
  %i.cg = extractelement <4 x i1> %i.by, i64 2
  br i1 %i.cg, label %pred.store.if514, label %pred.store.continue515

pred.store.if514:                                 ; preds = %pred.store.continue513
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %index
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = extractelement <4 x i32> %wide.load, i64 2
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !4
  br label %pred.store.continue515

pred.store.continue515:                           ; preds = %pred.store.if514, %pred.store.continue513
  %i.ck = extractelement <4 x i1> %i.by, i64 3
  br i1 %i.ck, label %pred.store.if516, label %pred.store.continue517

pred.store.if516:                                 ; preds = %pred.store.continue515
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %index
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %i.cn = extractelement <4 x i32> %wide.load, i64 3
  store i32 %i.cn, ptr %i.cm, align 4, !tbaa !4
  br label %pred.store.continue517

pred.store.continue517:                           ; preds = %pred.store.if516, %pred.store.continue515
  %i.co = extractelement <4 x i1> %i.bz, i64 0
  br i1 %i.co, label %pred.store.if518, label %pred.store.continue519

pred.store.if518:                                 ; preds = %pred.store.continue517
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %index
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = extractelement <4 x i32> %wide.load509, i64 0
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !4
  br label %pred.store.continue519

pred.store.continue519:                           ; preds = %pred.store.if518, %pred.store.continue517
  %i.cs = extractelement <4 x i1> %i.bz, i64 1
  br i1 %i.cs, label %pred.store.if520, label %pred.store.continue521

pred.store.if520:                                 ; preds = %pred.store.continue519
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %index
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.cv = extractelement <4 x i32> %wide.load509, i64 1
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !4
  br label %pred.store.continue521

pred.store.continue521:                           ; preds = %pred.store.if520, %pred.store.continue519
  %i.cw = extractelement <4 x i1> %i.bz, i64 2
  br i1 %i.cw, label %pred.store.if522, label %pred.store.continue523

pred.store.if522:                                 ; preds = %pred.store.continue521
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %index
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = extractelement <4 x i32> %wide.load509, i64 2
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !4
  br label %pred.store.continue523

pred.store.continue523:                           ; preds = %pred.store.if522, %pred.store.continue521
  %i.da = extractelement <4 x i1> %i.bz, i64 3
  br i1 %i.da, label %pred.store.if524, label %pred.store.continue525

pred.store.if524:                                 ; preds = %pred.store.continue523
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %index
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 28
  %i.dd = extractelement <4 x i32> %wide.load509, i64 3
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !4
  br label %pred.store.continue525

pred.store.continue525:                           ; preds = %pred.store.if524, %pred.store.continue523
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %pred.store.continue525
  %cmp.n = icmp eq i64 %wide.trip.count401, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i190, label %.lr.ph.preheader565

.lr.ph.preheader565:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv398.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i190: ; preds = %bb.l, %middle.block, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit188
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i190
  %i.df = ashr exact i64 %sext, 30                ; 3 uses
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #14
          to label %.noexc198 unwind label %bb.m  ; 6 uses

.noexc198:                                        ; preds = %bb.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.df
  %i.di = add nsw i64 %i.df, -4                   ; 2 uses
  %i.dj = lshr i64 %i.di, 2
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check527 = icmp ult i64 %i.di, 28
  br i1 %min.iters.check527, label %.lr.ph.i.i.i.i.i.i.i.i.i192.preheader, label %vector.ph528

vector.ph528:                                     ; preds = %.noexc198
  %n.vec530 = and i64 %i.dk, 9223372036854775800  ; 3 uses
  %i.dl = shl i64 %n.vec530, 2
  %i.dm = getelementptr i8, ptr %i.dg, i64 %i.dl
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph528
  %index532 = phi i64 [ 0, %vector.ph528 ], [ %index.next533, %vector.body531 ] ; 2 uses
  %i.dn = shl i64 %index532, 2
  %next.gep = getelementptr i8, ptr %i.dg, i64 %i.dn ; 2 uses
  %i.do = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %broadcast.splat, ptr %i.do, align 4, !tbaa !4
  %index.next533 = add nuw i64 %index532, 8       ; 2 uses
  %i.dp = icmp eq i64 %index.next533, %n.vec530
  br i1 %i.dp, label %middle.block534, label %vector.body531, !llvm.loop !46

middle.block534:                                  ; preds = %vector.body531
  %cmp.n535 = icmp eq i64 %i.dk, %n.vec530
  br i1 %cmp.n535, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i192.preheader

.lr.ph.i.i.i.i.i.i.i.i.i192.preheader:            ; preds = %.noexc198, %middle.block534
  %.06.i.i.i.i.i.i.i.i.i193.ph = phi ptr [ %i.dg, %.noexc198 ], [ %i.dm, %middle.block534 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i192

.lr.ph.i.i.i.i.i.i.i.i.i192:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i192.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i192
  %.06.i.i.i.i.i.i.i.i.i193 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i192 ], [ %.06.i.i.i.i.i.i.i.i.i193.ph, %.lr.ph.i.i.i.i.i.i.i.i.i192.preheader ] ; 2 uses
  store i32 %4, ptr %.06.i.i.i.i.i.i.i.i.i193, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i193, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i194 = icmp eq ptr %i.dq, %i.dh
  br i1 %.not.i.i.i.i.i.i.i.i.i194, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i192, !llvm.loop !47

bb.j:                                             ; preds = %bb.h
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit246

.lr.ph:                                           ; preds = %.lr.ph.preheader565, %bb.l
  %indvars.iv398 = phi i64 [ %indvars.iv.next399, %bb.l ], [ %indvars.iv398.ph, %.lr.ph.preheader565 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0, i64 %indvars.iv398
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4  ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %indvars.iv398 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4
  %i.dw = icmp sgt i32 %i.dt, %i.dv
  br i1 %i.dw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398, 1 ; 2 uses
  %exitcond402.not = icmp eq i64 %indvars.iv.next399, %wide.trip.count401
  br i1 %exitcond402.not, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i190, label %.lr.ph, !llvm.loop !48

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i192, %middle.block534
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.m
  %12 = ptrtoint ptr %11 to i64
  br label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199:         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199.loopexit, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i190
  %.sroa.0266.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i190 ], [ %i.dg, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199.loopexit ] ; 11 uses
  %.sroa.15.0 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i190 ], [ %12, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199.loopexit ] ; 2 uses
  store i32 %3, ptr %.sroa.0266.0, align 4, !tbaa !4
  %i.dx = icmp sgt i32 %5, 0
  br i1 %i.dx, label %.preheader317, label %.loopexit306

.preheader317:                                    ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199
  br i1 %i.bt, label %.lr.ph349.preheader, label %._crit_edge

.lr.ph349.preheader:                              ; preds = %.preheader317
  %wide.trip.count406 = and i64 %i.k, 2147483647  ; 3 uses
  %min.iters.check538 = icmp samesign ult i64 %wide.trip.count406, 8
  br i1 %min.iters.check538, label %.lr.ph349.preheader561, label %vector.ph539

vector.ph539:                                     ; preds = %.lr.ph349.preheader
  %n.vec541 = and i64 %i.k, 2147483640            ; 3 uses
  br label %vector.body542

vector.body542:                                   ; preds = %vector.body542, %vector.ph539
  %index543 = phi i64 [ 0, %vector.ph539 ], [ %index.next549, %vector.body542 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph539 ], [ %i.ee, %vector.body542 ]
  %vec.phi544 = phi <4 x i32> [ zeroinitializer, %vector.ph539 ], [ %i.ef, %vector.body542 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0, i64 %index543 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load545 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !4
  %wide.load546 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !4
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %index543 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load547 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !4
  %wide.load548 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !4
  %i.ec = add <4 x i32> %wide.load545, %vec.phi
  %i.ed = add <4 x i32> %wide.load546, %vec.phi544
  %i.ee = add <4 x i32> %i.ec, %wide.load547      ; 2 uses
  %i.ef = add <4 x i32> %i.ed, %wide.load548      ; 2 uses
  %index.next549 = add nuw i64 %index543, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next549, %n.vec541
  br i1 %i.eg, label %middle.block550, label %vector.body542, !llvm.loop !49

middle.block550:                                  ; preds = %vector.body542
  %bin.rdx = add <4 x i32> %i.ef, %i.ee
  %i.eh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n551 = icmp eq i64 %wide.trip.count406, %n.vec541
  br i1 %cmp.n551, label %._crit_edge, label %.lr.ph349.preheader561

.lr.ph349.preheader561:                           ; preds = %.lr.ph349.preheader, %middle.block550
  %indvars.iv403.ph = phi i64 [ 0, %.lr.ph349.preheader ], [ %n.vec541, %middle.block550 ]
  %.0155347.ph = phi i32 [ 0, %.lr.ph349.preheader ], [ %i.eh, %middle.block550 ]
  br label %.lr.ph349

._crit_edge:                                      ; preds = %.lr.ph349, %middle.block550, %.preheader317
  %.0155.lcssa = phi i32 [ 0, %.preheader317 ], [ %i.eh, %middle.block550 ], [ %i.eq, %.lr.ph349 ]
  %i.ei = sub nsw i32 %.0155.lcssa, %5            ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %bb.n, label %.loopexit306

bb.m:                                             ; preds = %bb.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.lr.ph349:                                        ; preds = %.lr.ph349.preheader561, %.lr.ph349
  %indvars.iv403 = phi i64 [ %indvars.iv.next404, %.lr.ph349 ], [ %indvars.iv403.ph, %.lr.ph349.preheader561 ] ; 3 uses
  %.0155347 = phi i32 [ %i.eq, %.lr.ph349 ], [ %.0155347.ph, %.lr.ph349.preheader561 ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0, i64 %indvars.iv403
  %i.em = load i32, ptr %i.el, align 4, !tbaa !4
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %indvars.iv403
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !4
  %i.ep = add i32 %i.em, %.0155347
  %i.eq = add i32 %i.ep, %i.eo                    ; 2 uses
  %indvars.iv.next404 = add nuw nsw i64 %indvars.iv403, 1 ; 2 uses
  %exitcond407.not = icmp eq i64 %indvars.iv.next404, %wide.trip.count406
  br i1 %exitcond407.not, label %._crit_edge, label %.lr.ph349, !llvm.loop !50

bb.n:                                             ; preds = %._crit_edge
  %i.er = add nsw i32 %i.l, -1                    ; 2 uses
  %i.es = sext i32 %i.er to i64                   ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4
  %i.ev = sub nsw i32 %i.eu, %i.ei
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !4
  %i.ew = ptrtoint ptr %i.bn to i64
  %i.ex = ptrtoint ptr %i.bm to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = sdiv exact i64 %i.ey, 24
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.preheader305.lr.ph, label %.loopexit306

.preheader305.lr.ph:                              ; preds = %bb.n
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 12 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 8 uses
  %i.fi = zext i32 %i.er to i64                   ; 2 uses
  %wide.trip.count411 = and i64 %i.k, 2147483647
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0, i64 %i.fi
  br label %.preheader305.a

.preheader305.a:                                  ; preds = %.preheader305.lr.ph, %bb.am
  %.pre431432 = phi ptr [ %i.bm, %.preheader305.lr.ph ], [ %.pre431433, %bb.am ]
  %indvars.iv413 = phi i64 [ 0, %.preheader305.lr.ph ], [ %indvars.iv.next414, %bb.am ] ; 4 uses
  br i1 %i.bt, label %.lr.ph352, label %._crit_edge353

._crit_edge353.loopexit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %.pre431.pre = load ptr, ptr %1, align 8, !tbaa !26
  br label %._crit_edge353

._crit_edge353:                                   ; preds = %._crit_edge353.loopexit, %.preheader305.a
  %.pre431 = phi ptr [ %.pre431432, %.preheader305.a ], [ %.pre431.pre, %._crit_edge353.loopexit ] ; 2 uses
  %.0149.lcssa = phi i32 [ 0, %.preheader305.a ], [ %.2151, %._crit_edge353.loopexit ] ; 2 uses
  %.not166 = icmp sgt i32 %.0149.lcssa, %5
  br i1 %.not166, label %bb.w, label %bb.am

.lr.ph352:                                        ; preds = %.preheader305.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206
  %indvars.iv408 = phi i64 [ %indvars.iv.next409, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ 0, %.preheader305.a ] ; 6 uses
  %.0149350 = phi i32 [ %.2151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ 0, %.preheader305.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.fk = load ptr, ptr %1, align 8, !tbaa !26
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %indvars.iv413
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !32
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %indvars.iv408 ; 2 uses
  store ptr %i.fc, ptr %8, align 8, !tbaa !34
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !37 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 %i.fq, ptr %i.b, align 8, !tbaa !41
  %i.fr = icmp ugt i64 %i.fq, 15
  br i1 %i.fr, label %.noexc.i201, label %._crit_edge.i.i200

.noexc.i201:                                      ; preds = %.lr.ph352
  %i.fs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc202 unwind label %bb.s  ; 2 uses

.noexc202:                                        ; preds = %.noexc.i201
  store ptr %i.fs, ptr %8, align 8, !tbaa !37
  %i.ft = load i64, ptr %i.b, align 8, !tbaa !41
  store i64 %i.ft, ptr %i.fc, align 8, !tbaa !42
  br label %._crit_edge.i.i200

._crit_edge.i.i200:                               ; preds = %.noexc202, %.lr.ph352
  %i.fu = phi ptr [ %i.fs, %.noexc202 ], [ %i.fc, %.lr.ph352 ] ; 2 uses
  switch i64 %i.fq, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %._crit_edge.i.i200
  %i.fv = load i8, ptr %i.fo, align 1, !tbaa !42
  store i8 %i.fv, ptr %i.fu, align 1, !tbaa !42
  br label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i200
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fu, ptr align 1 %i.fo, i64 %i.fq, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %._crit_edge.i.i200
  %i.fw = load i64, ptr %i.b, align 8, !tbaa !41  ; 2 uses
  store i64 %i.fw, ptr %i.fd, align 8, !tbaa !40
  %i.fx = load ptr, ptr %8, align 8, !tbaa !37
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fw
  store i8 0, ptr %i.fy, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.fz = icmp slt i64 %indvars.iv408, %i.es
  br i1 %i.fz, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0, i64 %indvars.iv408
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !4
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %indvars.iv408
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !4
  %i.ge = add i32 %i.gb, %.0149350
  %i.gf = add i32 %i.ge, %i.gd
  br label %bb.t

bb.s:                                             ; preds = %.noexc.i201
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

bb.t:                                             ; preds = %bb.r, %bb.q
  %.1150 = phi i32 [ %i.gf, %bb.r ], [ %.0149350, %bb.q ] ; 2 uses
  %i.gh = icmp eq i64 %indvars.iv408, %i.fi
  br i1 %i.gh, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gi = load i32, ptr %i.fj, align 4, !tbaa !4
  %i.gj = load i64, ptr %i.fd, align 8, !tbaa !40
  %i.gk = trunc i64 %i.gj to i32
  %i.gl = add i32 %i.gi, %.1150
  %i.gm = add i32 %i.gl, %i.gk
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2151 = phi i32 [ %i.gm, %bb.u ], [ %.1150, %bb.t ] ; 2 uses
  %i.gn = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.go = icmp eq ptr %i.gn, %i.fc
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %bb.v
  %i.gp = load i64, ptr %i.fc, align 8, !tbaa !42
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gn, i64 noundef %i.gq) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %exitcond412.not = icmp eq i64 %indvars.iv.next409, %wide.trip.count411
  br i1 %exitcond412.not, label %._crit_edge353.loopexit, label %.lr.ph352, !llvm.loop !51

bb.w:                                             ; preds = %._crit_edge353
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %.pre431, i64 %indvars.iv413
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !32
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %i.es ; 2 uses
  store ptr %i.fe, ptr %9, align 8, !tbaa !34
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !37 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.gw, ptr %i.a, align 8, !tbaa !41
  %i.gx = icmp ugt i64 %i.gw, 15
  br i1 %i.gx, label %.noexc.i208, label %._crit_edge.i.i207

.noexc.i208:                                      ; preds = %bb.w
  %i.gy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc209 unwind label %bb.aa ; 2 uses

.noexc209:                                        ; preds = %.noexc.i208
  store ptr %i.gy, ptr %9, align 8, !tbaa !37
  %i.gz = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.gz, ptr %i.fe, align 8, !tbaa !42
  br label %._crit_edge.i.i207

._crit_edge.i.i207:                               ; preds = %.noexc209, %bb.w
  %i.ha = phi ptr [ %i.gy, %.noexc209 ], [ %i.fe, %bb.w ] ; 2 uses
  switch i64 %i.gw, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i207
  %i.hb = load i8, ptr %i.gu, align 1, !tbaa !42
  store i8 %i.hb, ptr %i.ha, align 1, !tbaa !42
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i207
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ha, ptr align 1 %i.gu, i64 %i.gw, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %._crit_edge.i.i207
  %i.hc = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  store i64 %i.hc, ptr %i.ff, align 8, !tbaa !40
  %i.hd = load ptr, ptr %9, align 8, !tbaa !37
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hc
  store i8 0, ptr %i.he, align 1, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.hf = sub nsw i32 %.0149.lcssa, %5            ; 2 uses
  %i.hg = load i64, ptr %i.ff, align 8, !tbaa !40 ; 4 uses
  %i.hh = trunc i64 %i.hg to i32                  ; 2 uses
  %i.hi = sub nsw i32 %i.hh, %i.hf
  %i.hj = call i32 @llvm.smax.i32(i32 %i.hi, i32 4)
  %spec.store.select = add nsw i32 %i.hj, -4
  %i.hk = add nsw i32 %i.hf, 4
  %spec.select = call i32 @llvm.smin.i32(i32 %i.hk, i32 %i.hh) ; 2 uses
  %i.hl = zext nneg i32 %spec.store.select to i64 ; 6 uses
  %i.hm = sext i32 %spec.select to i64
  %i.hn = icmp ult i64 %i.hg, %i.hl
  br i1 %i.hn, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i

bb.aa:                                            ; preds = %.noexc.i208
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

bb.ab:                                            ; preds = %bb.z
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i64 noundef %i.hl, i64 noundef %i.hg) #13
          to label %.noexc211 unwind label %.loopexit.split-lp308

.noexc211:                                        ; preds = %bb.ab
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i: ; preds = %bb.z
  switch i32 %spec.select, label %bb.ad [
    i32 -1, label %bb.ac
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  ]

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  store i64 %i.hl, ptr %i.ff, align 8, !tbaa !40
  %i.hp = load ptr, ptr %9, align 8, !tbaa !37
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hl
  store i8 0, ptr %i.hq, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
  %i.hr = sub i64 %i.hg, %i.hl
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.hm, i64 %i.hr)
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.hl, i64 noundef %spec.select.i.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit unwind label %.loopexit307.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.hs = load ptr, ptr %9, align 8, !tbaa !37, !noalias !52
  %i.ht = load i64, ptr %i.ff, align 8, !tbaa !40, !noalias !52 ; 3 uses
  store ptr %i.fg, ptr %10, align 8, !tbaa !34, !alias.scope !55
  store i64 0, ptr %i.fh, align 8, !tbaa !40, !alias.scope !55
  store i8 0, ptr %i.fg, align 8, !tbaa !42, !alias.scope !55
  %i.hu = add i64 %i.ht, 4
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.hu)
          to label %bb.ae unwind label %.loopexit312

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %i.hv = load i64, ptr %i.fh, align 8, !tbaa !40, !alias.scope !55
  %i.hw = sub i64 4611686018427387903, %i.hv
  %i.hx = icmp ult i64 %i.hw, %i.ht
  br i1 %i.hx, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.ae
  %i.hy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %i.hs, i64 noundef %i.ht)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit312 ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.hz = load i64, ptr %i.fh, align 8, !tbaa !40, !alias.scope !55
  %i.ia = and i64 %i.hz, -4
  %i.ib = icmp eq i64 %i.ia, 4611686018427387900
  br i1 %i.ib, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #13
          to label %.cont.i.i unwind label %.loopexit.split-lp313

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.ic = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str, i64 noundef 4)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %.loopexit312 ; 0 uses

.loopexit312:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %lpad.loopexit314 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp313:                            ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp315 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp313, %.loopexit312
  %lpad.phi316 = phi { ptr, i32 } [ %lpad.loopexit314, %.loopexit312 ], [ %lpad.loopexit.split-lp315, %.loopexit.split-lp313 ]
  %i.id = load ptr, ptr %10, align 8, !tbaa !37, !alias.scope !55 ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.fg
  br i1 %i.ie, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.af
  %i.if = load i64, ptr %i.fg, align 8, !tbaa !42, !alias.scope !55
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #16
  br label %.body

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ih = load ptr, ptr %1, align 8, !tbaa !26
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %i.ih, i64 %indvars.iv413
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !32
  %i.ik = getelementptr inbounds nuw [32 x i8], ptr %i.ij, i64 %i.es ; 9 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !37 ; 6 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 16 ; 4 uses
  %i.in = icmp eq ptr %i.il, %i.im
  %i.io = load ptr, ptr %10, align 8, !tbaa !37   ; 6 uses
  %i.ip = icmp eq ptr %i.io, %i.fg                ; 2 uses
  br i1 %i.in, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.ip, label %bb.ag, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  br i1 %i.ip, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.iq = load i64, ptr %i.fh, align 8, !tbaa !40 ; 3 uses
  %i.ir = icmp ult i64 %i.iq, 16
  call void @llvm.assume(i1 %i.ir)
  %.not21.i = icmp eq ptr %10, %i.ik
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ah, !prof !58

bb.ah:                                            ; preds = %bb.ag
  switch i64 %i.iq, label %bb.aj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.is = load i8, ptr %i.io, align 1, !tbaa !42
  store i8 %i.is, ptr %i.il, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.il, ptr align 1 %i.io, i64 %i.iq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.it = load i64, ptr %i.fh, align 8, !tbaa !40 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !40
  %i.iv = load ptr, ptr %i.ik, align 8, !tbaa !37
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.it
  store i8 0, ptr %i.iw, align 1, !tbaa !42
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.io, ptr %i.ik, align 8, !tbaa !37
  %i.iy = load i64, ptr %i.fh, align 8, !tbaa !40
  store i64 %i.iy, ptr %i.ix, align 8, !tbaa !40
  %i.iz = load i64, ptr %i.fg, align 8, !tbaa !42
  store i64 %i.iz, ptr %i.im, align 8, !tbaa !42
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ja = load i64, ptr %i.im, align 8, !tbaa !42
  store ptr %i.io, ptr %i.ik, align 8, !tbaa !37
  %i.jb = load i64, ptr %i.fh, align 8, !tbaa !40
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i64 %i.jb, ptr %i.jc, align 8, !tbaa !40
  %i.jd = load i64, ptr %i.fg, align 8, !tbaa !42
  store i64 %i.jd, ptr %i.im, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.il, null
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.il, ptr %10, align 8, !tbaa !37
  store i64 %i.ja, ptr %i.fg, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.fg, ptr %10, align 8, !tbaa !37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ak, %bb.al
  %i.je = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.il, %bb.ak ], [ %i.fg, %bb.al ], [ %i.io, %bb.ag ]
  store i64 0, ptr %i.fh, align 8, !tbaa !40
  store i8 0, ptr %i.je, align 1, !tbaa !42
  %i.jf = load ptr, ptr %10, align 8, !tbaa !37   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.fg
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.jh = load i64, ptr %i.fg, align 8, !tbaa !42
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.jj = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.fe
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  %i.jl = load i64, ptr %i.fe, align 8, !tbaa !42
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  %.pre = load ptr, ptr %1, align 8, !tbaa !26
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218
  %.pre431433 = phi ptr [ %.pre431, %._crit_edge353 ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218 ] ; 3 uses
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %i.jn = load ptr, ptr %i.t, align 8, !tbaa !33  ; 2 uses
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %.pre431433 to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = sdiv exact i64 %i.jq, 24
  %sext480 = shl i64 %i.jr, 32
  %i.js = ashr exact i64 %sext480, 32
  %i.jt = icmp slt i64 %indvars.iv.next414, %i.js
  br i1 %i.jt, label %.preheader305.a, label %.loopexit306, !llvm.loop !59

.loopexit307.a:                                   ; preds = %bb.ad
  %lpad.loopexit309 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit.split-lp308:                            ; preds = %bb.ab
  %lpad.loopexit.split-lp310 = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.body:                                            ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.an

bb.an:                                            ; preds = %.loopexit307.a, %.loopexit.split-lp308, %.body
  %.pn167 = phi { ptr, i32 } [ %lpad.phi316, %.body ], [ %lpad.loopexit309, %.loopexit307.a ], [ %lpad.loopexit.split-lp310, %.loopexit.split-lp308 ] ; 2 uses
  %i.ju = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.fe
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219: ; preds = %bb.an
  %i.jw = load i64, ptr %i.fe, align 8, !tbaa !42
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219, %bb.aa
  %.pn167.pn = phi { ptr, i32 } [ %i.ho, %bb.aa ], [ %.pn167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219 ], [ %.pn167, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

.loopexit306:                                     ; preds = %bb.am, %bb.n, %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199
  %i.jy = phi ptr [ %i.bm, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199 ], [ %i.bm, %bb.n ], [ %i.bm, %._crit_edge ], [ %.pre431433, %bb.am ]
  %i.jz = phi ptr [ %i.bn, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit199 ], [ %i.bn, %bb.n ], [ %i.bn, %._crit_edge ], [ %i.jn, %bb.am ]
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = sdiv exact i64 %i.kc, 24
  %i.ke = trunc i64 %i.kd to i32
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %.lr.ph383, label %_ZNSt6vectorIiSaIiEED2Ev.exit

.lr.ph383:                                        ; preds = %.loopexit306
  %i.kg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 15 uses
  %i.kh = add nsw i32 %i.l, -1                    ; 2 uses
  %i.ki = sext i32 %i.kh to i64
  %i.kj = zext i32 %i.kh to i64                   ; 2 uses
  %i.kk = zext i32 %2 to i64
  %i.kl = sext i32 %2 to i64
  %wide.trip.count419 = and i64 %i.k, 2147483647
  %wide.trip.count426 = and i64 %i.k, 2147483647
  br label %bb.aq

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSolsEPFRSoS_E.exit231, %.loopexit306
  %13 = ptrtoint ptr %.sroa.0266.0 to i64
  %14 = sub i64 %.sroa.15.0, %13
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0266.0, i64 noundef %14) #16
  %.not.i.i.i222 = icmp eq ptr %.sroa.0276.0, null
  br i1 %.not.i.i.i222, label %_ZNSt6vectorIiSaIiEED2Ev.exit223, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.km = ptrtoint ptr %.sroa.0276.0 to i64
  %i.kn = sub i64 %.sroa.17.0, %i.km
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0276.0, i64 noundef %i.kn) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit223

_ZNSt6vectorIiSaIiEED2Ev.exit223:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ao
  %.not.i.i.i224 = icmp eq ptr %.sroa.0289.0, null
  br i1 %.not.i.i.i224, label %_ZNSt6vectorIiSaIiEED2Ev.exit225, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit223
  %i.ko = ptrtoint ptr %.sroa.0289.0 to i64
  %i.kp = sub i64 %.sroa.15298.0, %i.ko
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0289.0, i64 noundef %i.kp) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit225

_ZNSt6vectorIiSaIiEED2Ev.exit225:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit223, %bb.ap
  ret void

bb.aq:                                            ; preds = %.lr.ph383, %_ZNSolsEPFRSoS_E.exit231
  %indvars.iv428 = phi i64 [ 0, %.lr.ph383 ], [ %indvars.iv.next429, %_ZNSolsEPFRSoS_E.exit231 ] ; 6 uses
  %i.kq = icmp eq i64 %indvars.iv428, %i.kk
  br i1 %i.kq, label %.preheader304.a, label %_ZNSolsEPFRSoS_E.exit

.preheader304.a:                                  ; preds = %bb.aq
  br i1 %i.bt, label %.preheader303.a, label %._crit_edge363

.preheader303.a:                                  ; preds = %.preheader304.a, %._crit_edge361
  %indvars.iv416 = phi i64 [ %indvars.iv.next417, %._crit_edge361 ], [ 0, %.preheader304.a ] ; 3 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0, i64 %indvars.iv416 ; 2 uses
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !4
  %i.kt = icmp sgt i32 %i.ks, 0
  br i1 %i.kt, label %.lr.ph357, label %.preheader302

._crit_edge363:                                   ; preds = %._crit_edge361, %.preheader304.a
  %i.ku = load ptr, ptr %i.kg, align 8, !tbaa !60
  %i.kv = getelementptr i8, ptr %i.ku, i64 -24
  %i.kw = load i64, ptr %i.kv, align 8
  %i.kx = getelementptr inbounds i8, ptr %i.kg, i64 %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 240
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !62 ; 6 uses
  %.not.i.i.i249 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i249, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %._crit_edge363, %._crit_edge380
  invoke void @_ZSt16__throw_bad_castv() #13
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %._crit_edge363
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 56
  %i.lb = load i8, ptr %i.la, align 8, !tbaa !78
  %.not.i1.i.i = icmp eq i8 %i.lb, 0
  br i1 %.not.i1.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 67
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.as:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.kz)
          to label %.noexc251 unwind label %.loopexit

.noexc251:                                        ; preds = %bb.as
  %i.le = load ptr, ptr %i.kz, align 8, !tbaa !60
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.lg = load ptr, ptr %i.lf, align 8
  %i.lh = invoke noundef signext i8 %i.lg(ptr noundef nonnull align 8 dereferenceable(570) %i.kz, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !83

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc251, %bb.ar
  %.0.i.i.i = phi i8 [ %i.ld, %bb.ar ], [ %i.lh, %.noexc251 ]
  %i.li = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, i8 noundef signext %.0.i.i.i)
          to label %.noexc253 unwind label %.loopexit

.noexc253:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.lj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.li)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit ; 0 uses

.preheader302:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.preheader303.a
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %indvars.iv416 ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !4
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.lr.ph360, label %._crit_edge361

.lr.ph357:                                        ; preds = %.preheader303.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.0143356 = phi i32 [ %i.lo, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ 0, %.preheader303.a ]
  %i.ln = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.lr.ph357
  %i.lo = add nuw nsw i32 %.0143356, 1            ; 2 uses
  %i.lp = load i32, ptr %i.kr, align 4, !tbaa !4
  %i.lq = icmp slt i32 %i.lo, %i.lp
  br i1 %i.lq, label %.lr.ph357, label %.preheader302, !llvm.loop !84

bb.at:                                            ; preds = %.lr.ph357
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

._crit_edge361:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229, %.preheader302
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1 ; 2 uses
  %exitcond420.not = icmp eq i64 %indvars.iv.next417, %wide.trip.count419
  br i1 %exitcond420.not, label %._crit_edge363, label %.preheader303.a, !llvm.loop !85

.lr.ph360:                                        ; preds = %.preheader302, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229
  %.0142359 = phi i32 [ %i.lt, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229 ], [ 0, %.preheader302 ]
  %i.ls = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229 unwind label %bb.au ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229: ; preds = %.lr.ph360
  %i.lt = add nuw nsw i32 %.0142359, 1            ; 2 uses
  %i.lu = load i32, ptr %i.lk, align 4, !tbaa !4
  %i.lv = icmp slt i32 %i.lt, %i.lu
  br i1 %i.lv, label %.lr.ph360, label %._crit_edge361, !llvm.loop !86

bb.au:                                            ; preds = %.lr.ph360
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

.loopexit:                                        ; preds = %bb.as, %.noexc251, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc253, %bb.aw, %.noexc261, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i258, %.noexc263
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc253, %bb.aq
  br i1 %i.bt, label %.lr.ph379, label %._crit_edge380

.lr.ph379:                                        ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.lx = icmp slt i64 %indvars.iv428, %i.kl      ; 2 uses
  br label %bb.ax

._crit_edge380:                                   ; preds = %._crit_edge373, %_ZNSolsEPFRSoS_E.exit
  %i.ly = load ptr, ptr %i.kg, align 8, !tbaa !60
  %i.lz = getelementptr i8, ptr %i.ly, i64 -24
  %i.ma = load i64, ptr %i.lz, align 8
  %i.mb = getelementptr inbounds i8, ptr %i.kg, i64 %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 240
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !62 ; 6 uses
  %.not.i.i.i255 = icmp eq ptr %i.md, null
  br i1 %.not.i.i.i255, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i256

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i256: ; preds = %._crit_edge380
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 56
  %i.mf = load i8, ptr %i.me, align 8, !tbaa !78
  %.not.i1.i.i257 = icmp eq i8 %i.mf, 0
  br i1 %.not.i1.i.i257, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i256
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 67
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !42
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i258

bb.aw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i256
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.md)
          to label %.noexc261 unwind label %.loopexit

.noexc261:                                        ; preds = %bb.aw
  %i.mi = load ptr, ptr %i.md, align 8, !tbaa !60
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 48
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = invoke noundef signext i8 %i.mk(ptr noundef nonnull align 8 dereferenceable(570) %i.md, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i258 unwind label %.loopexit, !inline_history !83

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i258: ; preds = %.noexc261, %bb.av
  %.0.i.i.i259 = phi i8 [ %i.mh, %bb.av ], [ %i.ml, %.noexc261 ]
  %i.mm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, i8 noundef signext %.0.i.i.i259)
          to label %.noexc263 unwind label %.loopexit

.noexc263:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i258
  %i.mn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mm)
          to label %_ZNSolsEPFRSoS_E.exit231 unwind label %.loopexit ; 0 uses

bb.ax:                                            ; preds = %.lr.ph379, %._crit_edge373
  %indvars.iv423 = phi i64 [ 0, %.lr.ph379 ], [ %indvars.iv.next424, %._crit_edge373 ] ; 9 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0, i64 %indvars.iv423 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !4
  br i1 %i.lx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.mq = load ptr, ptr %1, align 8, !tbaa !26
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.mq, i64 %indvars.iv428
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !32
  %i.mt = getelementptr inbounds nuw [32 x i8], ptr %i.ms, i64 %indvars.iv423
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !40
  %i.mw = trunc i64 %i.mv to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0140 = phi i32 [ %i.mw, %bb.ay ], [ %i.mp, %bb.ax ] ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %indvars.iv423
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !4  ; 2 uses
  %i.mz = sub nsw i32 %i.my, %.0140
  %.fr384 = freeze i32 %i.mz                      ; 2 uses
  %i.na = icmp sgt i32 %.fr384, 0                 ; 2 uses
  %i.nb = lshr i32 %.fr384, 1                     ; 3 uses
  %i.nc = add i32 %.0140, %i.nb
  %i.nd = sub i32 %i.my, %i.nc                    ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0, i64 %indvars.iv423 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !4
  %i.ng = icmp sgt i32 %i.nf, 0
  br i1 %i.ng, label %.lr.ph366, label %.preheader

.preheader:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233, %bb.az
  %i.nh = icmp ne i32 %i.nb, 0
  %i.ni = and i1 %i.na, %i.nh
  br i1 %i.ni, label %.lr.ph368.split, label %._crit_edge369

.lr.ph366:                                        ; preds = %bb.az, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233
  %.0126364 = phi i32 [ %i.nk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233 ], [ 0, %bb.az ]
  %i.nj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233: ; preds = %.lr.ph366
  %i.nk = add nuw nsw i32 %.0126364, 1            ; 2 uses
  %i.nl = load i32, ptr %i.ne, align 4, !tbaa !4
  %i.nm = icmp slt i32 %i.nk, %i.nl
  br i1 %i.nm, label %.lr.ph366, label %.preheader, !llvm.loop !87

bb.ba:                                            ; preds = %.lr.ph366
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

._crit_edge369:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235, %.preheader
  br i1 %i.lx, label %.invoke493, label %bb.bb

.lr.ph368.split:                                  ; preds = %.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235
  %.0125367 = phi i32 [ %i.np, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235 ], [ 0, %.preheader ]
  %i.no = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235 unwind label %.split ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235: ; preds = %.lr.ph368.split
  %i.np = add nuw nsw i32 %.0125367, 1            ; 2 uses
  %exitcond421.not = icmp eq i32 %i.np, %i.nb
  br i1 %exitcond421.not, label %._crit_edge369, label %.lr.ph368.split, !llvm.loop !88

.split:                                           ; preds = %.lr.ph368.split
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

bb.bb:                                            ; preds = %._crit_edge369
  %i.nr = icmp slt i64 %indvars.iv423, %i.ki
  br i1 %i.nr, label %bb.bc, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.bc:                                            ; preds = %bb.bb
  %i.ns = load i32, ptr %i.mo, align 4, !tbaa !4
  %i.nt = load ptr, ptr %i.kg, align 8, !tbaa !60
  %i.nu = getelementptr i8, ptr %i.nt, i64 -24
  %i.nv = load i64, ptr %i.nu, align 8
  %i.nw = getelementptr inbounds i8, ptr %i.kg, i64 %i.nv
  %i.nx = sext i32 %i.ns to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store i64 %i.nx, ptr %i.ny, align 8, !tbaa !89
  %i.nz = load ptr, ptr %1, align 8, !tbaa !26
  %i.oa = getelementptr inbounds nuw [24 x i8], ptr %i.nz, i64 %indvars.iv428
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !32
  %i.oc = getelementptr inbounds nuw [32 x i8], ptr %i.ob, i64 %indvars.iv423 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !37
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !40
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef %i.od, i64 noundef %i.of)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.bd ; 0 uses

bb.bd:                                            ; preds = %.invoke493, %bb.bc
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.bc, %bb.bb
  %i.oi = icmp eq i64 %indvars.iv423, %i.kj
  br i1 %i.oi, label %.invoke493, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238

.invoke493:                                       ; preds = %._crit_edge369, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.sink496 = phi i64 [ %i.kj, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %indvars.iv423, %._crit_edge369 ]
  %i.oj = load ptr, ptr %1, align 8, !tbaa !26
  %i.ok = getelementptr inbounds nuw [24 x i8], ptr %i.oj, i64 %indvars.iv428
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !32
  %i.om = getelementptr inbounds nuw [32 x i8], ptr %i.ol, i64 %.sink496 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !37
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !40
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef %i.on, i64 noundef %i.op)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238 unwind label %bb.bd ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238: ; preds = %.invoke493, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.or = icmp sgt i32 %i.nd, 0
  %i.os = select i1 %i.na, i1 %i.or, i1 false
  br i1 %i.os, label %.lr.ph372.split, label %._crit_edge373

._crit_edge373:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1 ; 2 uses
  %exitcond427.not = icmp eq i64 %indvars.iv.next424, %wide.trip.count426
  br i1 %exitcond427.not, label %._crit_edge380, label %bb.ax, !llvm.loop !90

.lr.ph372.split:                                  ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242
  %.0371 = phi i32 [ %i.ou, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ 0, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238 ]
  %i.ot = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kg, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 unwind label %.split375 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242: ; preds = %.lr.ph372.split
  %i.ou = add nuw nsw i32 %.0371, 1               ; 2 uses
  %exitcond422.not = icmp eq i32 %i.ou, %i.nd
  br i1 %exitcond422.not, label %._crit_edge373, label %.lr.ph372.split, !llvm.loop !91

.split375:                                        ; preds = %.lr.ph372.split
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

_ZNSolsEPFRSoS_E.exit231:                         ; preds = %.noexc263
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %i.ow = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.ox = load ptr, ptr %1, align 8, !tbaa !26
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = sdiv exact i64 %i.pa, 24
  %sext481 = shl i64 %i.pb, 32
  %i.pc = ashr exact i64 %sext481, 32
  %i.pd = icmp slt i64 %indvars.iv.next429, %i.pc
  br i1 %i.pd, label %bb.aq, label %_ZNSt6vectorIiSaIiEED2Ev.exit, !llvm.loop !92

_ZNSt6vectorIiSaIiEED2Ev.exit244:                 ; preds = %.split375, %.split, %.loopexit, %.loopexit.split-lp, %bb.au, %bb.at, %bb.bd, %bb.ba, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %.pn170.pn = phi { ptr, i32 } [ %.pn167.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %i.gg, %bb.s ], [ %i.oh, %bb.bd ], [ %i.lw, %bb.au ], [ %i.lr, %bb.at ], [ %i.nn, %bb.ba ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ov, %.split375 ], [ %lpad.loopexit, %.loopexit ], [ %i.nq, %.split ]
  %15 = ptrtoint ptr %.sroa.0266.0 to i64
  %16 = sub i64 %.sroa.15.0, %15
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0266.0, i64 noundef %16) #16
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit244, %bb.m
  %.pn170.pn.pn = phi { ptr, i32 } [ %.pn170.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit244 ], [ %i.ek, %bb.m ] ; 2 uses
  %.not.i.i.i245 = icmp eq ptr %.sroa.0276.0, null
  br i1 %.not.i.i.i245, label %_ZNSt6vectorIiSaIiEED2Ev.exit246, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pe = ptrtoint ptr %.sroa.0276.0 to i64
  %i.pf = sub i64 %.sroa.17.0, %i.pe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0276.0, i64 noundef %i.pf) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit246

_ZNSt6vectorIiSaIiEED2Ev.exit246:                 ; preds = %bb.j, %bb.be, %bb.bf, %.split.us
  %.pn175 = phi { ptr, i32 } [ %i.bl, %.split.us ], [ %i.dr, %bb.j ], [ %.pn170.pn.pn, %bb.be ], [ %.pn170.pn.pn, %bb.bf ]
  %.not.i.i.i247 = icmp eq ptr %.sroa.0289.0, null
  br i1 %.not.i.i.i247, label %_ZNSt6vectorIiSaIiEED2Ev.exit248, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit246
  %i.pg = ptrtoint ptr %.sroa.0289.0 to i64
  %i.ph = sub i64 %.sroa.15298.0, %i.pg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0289.0, i64 noundef %i.ph) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit248

_ZNSt6vectorIiSaIiEED2Ev.exit248:                 ; preds = %bb.bg, %_ZNSt6vectorIiSaIiEED2Ev.exit246
  resume { ptr, i32 } %.pn175
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!9, !10, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14, !16, !15}
!19 = distinct !{!19, !14, !15, !16}
!20 = distinct !{!20, !14, !15, !16}
!21 = distinct !{!21, !14, !16, !15}
!22 = distinct !{!22, !14, !15, !16}
!23 = distinct !{!23, !14, !16, !15}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14, !16, !15}
!26 = !{!27, !28, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 _ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !11, i64 0}
!29 = !{!30, !31, i64 8}
!30 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!32 = !{!30, !31, i64 0}
!33 = !{!27, !28, i64 8}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !36, i64 0}
!36 = !{!"p1 omnipotent char", !11, i64 0}
!37 = !{!38, !36, i64 0}
!38 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !39, i64 8, !6, i64 16}
!39 = !{!"long", !6, i64 0}
!40 = !{!38, !39, i64 8}
!41 = !{!39, !39, i64 0}
!42 = !{!6, !6, i64 0}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14, !15, !16}
!46 = distinct !{!46, !14, !15, !16}
!47 = distinct !{!47, !14, !16, !15}
!48 = distinct !{!48, !14, !16, !15}
!49 = distinct !{!49, !14, !15, !16}
!50 = distinct !{!50, !14, !16, !15}
!51 = distinct !{!51, !14}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!54 = distinct !{!54, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!55 = !{!56, !53}
!56 = distinct !{!56, !57, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!57 = distinct !{!57, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!58 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!59 = distinct !{!59, !14}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !7, i64 0}
!62 = !{!63, !75, i64 240}
!63 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !64, i64 0, !72, i64 216, !6, i64 224, !73, i64 225, !74, i64 232, !75, i64 240, !76, i64 248, !77, i64 256}
!64 = !{!"_ZTSSt8ios_base", !39, i64 8, !39, i64 16, !65, i64 24, !66, i64 28, !66, i64 32, !67, i64 40, !68, i64 48, !6, i64 64, !5, i64 192, !69, i64 200, !70, i64 208}
!65 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!66 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!67 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!68 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !39, i64 8}
!69 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!70 = !{!"_ZTSSt6locale", !71, i64 0}
!71 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!72 = !{!"p1 _ZTSSo", !11, i64 0}
!73 = !{!"bool", !6, i64 0}
!74 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!75 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!76 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!77 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!78 = !{!79, !6, i64 56}
!79 = !{!"_ZTSSt5ctypeIcE", !80, i64 0, !81, i64 16, !73, i64 24, !10, i64 32, !10, i64 40, !82, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!80 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!81 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!82 = !{!"p1 short", !11, i64 0}
!83 = distinct !{null, null}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !14}
!86 = distinct !{!86, !14}
!87 = distinct !{!87, !14}
!88 = distinct !{!88, !14}
!89 = !{!64, !39, i64 16}
end_hunk_0
