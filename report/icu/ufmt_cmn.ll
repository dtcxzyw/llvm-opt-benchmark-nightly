Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ufmt_cmn?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -39, 75) i32 @_Z18ufmt_digitvalue_78Ds(i16 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i16 %0, -48
  %or.cond = icmp ult i16 %i.a, 10
  %i.b = and i16 %0, -33
  %i.c = add i16 %i.b, -65
  %i.d = icmp ult i16 %i.c, 26
  %or.cond20 = or i1 %or.cond, %i.d
  br i1 %or.cond20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i16 %0 to i32
  %i.f = add nsw i32 %i.e, -48
  %i.g = icmp samesign ugt i16 %0, 64
  %i.h = icmp samesign ugt i16 %0, 96
  %.neg = select i1 %i.h, i32 -39, i32 -7
  %.neg18 = select i1 %i.g, i32 %.neg, i32 0
  %i.i = add nsw i32 %i.f, %.neg18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef signext range(i8 0, 2) i8 @_Z15ufmt_isdigit_78Dsi(i16 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = add i16 %0, -48
  %or.cond.i = icmp ult i16 %i.a, 10
  %i.b = and i16 %0, -33
  %i.c = add i16 %i.b, -65
  %i.d = icmp ult i16 %i.c, 26
  %or.cond20.i = or i1 %or.cond.i, %i.d
  br i1 %or.cond20.i, label %bb.b, label %_Z18ufmt_digitvalue_78Ds.exit

bb.b:                                             ; preds = %bb.a
  %i.e = zext nneg i16 %0 to i32
  %i.f = add nsw i32 %i.e, -48
  %i.g = icmp samesign ugt i16 %0, 64
  %i.h = icmp samesign ugt i16 %0, 96
  %.neg.i = select i1 %i.h, i32 -39, i32 -7
  %.neg18.i = select i1 %i.g, i32 %.neg.i, i32 0
  %i.i = add nsw i32 %i.f, %.neg18.i
  br label %_Z18ufmt_digitvalue_78Ds.exit

_Z18ufmt_digitvalue_78Ds.exit:                    ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.i, %bb.b ], [ -1, %bb.a ]  ; 2 uses
  %i.j = icmp slt i32 %.0.i, %1
  %i.k = icmp sgt i32 %.0.i, -1
  %i.l = and i1 %i.j, %i.k
  %i.m = zext i1 %i.l to i8
  ret i8 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_Z13ufmt_64tou_78PDsPimhai(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i8 noundef zeroext %3, i8 noundef signext %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = zext i8 %3 to i64                        ; 6 uses
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.split.us
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %.split.us ], [ 0, %bb.a ] ; 2 uses
  %.036.us = phi i64 [ %i.d, %.split.us ], [ %2, %bb.a ] ; 3 uses
  %i.b = urem i64 %.036.us, %i.a                  ; 2 uses
  %i.c = trunc nuw nsw i64 %i.b to i16
  %i.d = udiv i64 %.036.us, %i.a
  %i.e = icmp samesign ult i64 %i.b, 10
  %.v.us = select i1 %i.e, i16 48, i16 55
  %i.f = add nuw nsw i16 %.v.us, %i.c
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv52
  store i16 %i.f, ptr %i.g, align 2, !tbaa !9
  %.not43.us = icmp ult i64 %.036.us, %i.a
  br i1 %.not43.us, label %.split46.us, label %.split.us, !llvm.loop !12

.split:                                           ; preds = %bb.a, %.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split ], [ 0, %bb.a ] ; 2 uses
  %.036 = phi i64 [ %i.j, %.split ], [ %2, %bb.a ] ; 3 uses
  %i.h = urem i64 %.036, %i.a                     ; 2 uses
  %i.i = trunc nuw nsw i64 %i.h to i16
  %i.j = udiv i64 %.036, %i.a
  %i.k = icmp samesign ult i64 %i.h, 10
  %.v42 = select i1 %i.k, i16 48, i16 87
  %i.l = add nuw nsw i16 %.v42, %i.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  store i16 %i.l, ptr %i.m, align 2, !tbaa !9
  %.not43 = icmp ult i64 %.036, %i.a
  br i1 %.not43, label %.split46.us, label %.split, !llvm.loop !12

.split46.us:                                      ; preds = %.split, %.split.us
  %.us-phi.in = phi i64 [ %indvars.iv.next53, %.split.us ], [ %indvars.iv.next, %.split ] ; 2 uses
  %.us-phi = trunc i64 %.us-phi.in to i32         ; 5 uses
  %.not44 = icmp ne i32 %5, -1
  %i.n = icmp sgt i32 %5, %.us-phi
  %or.cond = select i1 %.not44, i1 %i.n, i1 false
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %.split46.us
  %i.o = load i32, ptr %1, align 4, !tbaa !11     ; 2 uses
  %i.p = and i64 %.us-phi.in, 4294967295          ; 3 uses
  %i.q = xor i32 %.us-phi, -1
  %i.r = add i32 %5, %i.q
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.o, i32 %.us-phi)
  %i.t = sub i32 %i.s, %.us-phi
  %i.u = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.t) ; 2 uses
  %min.iters.check = icmp ult i32 %i.u, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.v = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %i.x = and i64 %i.w, 15                         ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  %i.z = select i1 %i.y, i64 16, i64 %i.x
  %n.vec = sub nsw i64 %i.w, %i.z                 ; 2 uses
  %i.aa = add nsw i64 %i.p, %n.vec
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <8 x i16> splat (i16 48), ptr %i.ac, align 2, !tbaa !9
  store <8 x i16> splat (i16 48), ptr %i.ad, align 2, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %scalar.ph.preheader, label %vector.body, !llvm.loop !13

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader
  %indvars.iv55.ph = phi i64 [ %i.p, %.preheader ], [ %i.aa, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.b ], [ %indvars.iv55.ph, %scalar.ph.preheader ] ; 3 uses
  %i.af = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.ag = icmp sgt i32 %i.o, %i.af
  br i1 %i.ag, label %bb.b, label %.critedge

bb.b:                                             ; preds = %scalar.ph
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next56 to i32  ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv55
  store i16 48, ptr %i.ah, align 2, !tbaa !9
  %i.ai = icmp sgt i32 %5, %indvars
  br i1 %i.ai, label %scalar.ph, label %.critedge, !llvm.loop !14

.critedge:                                        ; preds = %scalar.ph, %bb.b, %.split46.us
  %.2 = phi i32 [ %.us-phi, %.split46.us ], [ %indvars, %bb.b ], [ %i.af, %scalar.ph ] ; 3 uses
  %i.aj = icmp sgt i32 %.2, 1
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.ak = shl nuw i32 %.2, 1
  %.idx = zext i32 %i.ak to i64
  %i.al = getelementptr i8, ptr %0, i64 %.idx
  %i.am = getelementptr i8, ptr %i.al, i64 -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.an = phi ptr [ %i.ar, %.lr.ph ], [ %i.am, %.lr.ph.preheader ] ; 3 uses
  %.03448 = phi ptr [ %i.aq, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.ao = load i16, ptr %.03448, align 2, !tbaa !9
  %i.ap = load i16, ptr %i.an, align 2, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %.03448, i64 2 ; 2 uses
  store i16 %i.ap, ptr %.03448, align 2, !tbaa !9
  store i16 %i.ao, ptr %i.an, align 2, !tbaa !9
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -2 ; 2 uses
  %i.as = icmp ult ptr %i.aq, %i.ar
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %.critedge
  store i32 %.2, ptr %1, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z12ufmt_ptou_78PDsPiPva(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr noundef %2, i8 noundef signext %3) local_unnamed_addr #3 {
.split32.us:
  %.not = icmp eq i8 %3, 0
  %i.a = ptrtoint ptr %2 to i64                   ; 5 uses
  %.7.extract.shift65 = lshr i64 %i.a, 56
  %.7.extract.trunc66 = trunc nuw i64 %.7.extract.shift65 to i8 ; 2 uses
  %4 = lshr i8 %.7.extract.trunc66, 4
  %5 = and i8 %.7.extract.trunc66, 15             ; 2 uses
  %6 = zext nneg i8 %4 to i16                     ; 2 uses
  %i.b = icmp ult ptr %2, inttoptr (i64 -6917529027641081856 to ptr)
  %7 = or disjoint i16 %6, 48
  %8 = zext nneg i8 %5 to i16                     ; 2 uses
  %i.c = icmp samesign ult i8 %5, 10
  %9 = or disjoint i16 %8, 48
  %10 = getelementptr i8, ptr %0, i64 2
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %. = select i1 %.not, i16 55, i16 87            ; 9 uses
  %12 = add nuw nsw i16 %., %6
  %i.d = select i1 %i.b, i16 %7, i16 %12
  store i16 %i.d, ptr %0, align 2, !tbaa !9
  %13 = add nuw nsw i16 %., %8
  %14 = select i1 %i.c, i16 %9, i16 %13
  store i16 %14, ptr %10, align 2, !tbaa !9
  %15 = insertelement <4 x i64> poison, i64 %i.a, i64 0
  %16 = shufflevector <4 x i64> %15, <4 x i64> poison, <4 x i32> zeroinitializer
  %17 = lshr <4 x i64> %16, <i64 48, i64 40, i64 32, i64 24>
  %18 = shufflevector <4 x i64> %17, <4 x i64> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %19 = trunc <8 x i64> %18 to <8 x i8>           ; 3 uses
  %20 = and <8 x i8> %19, <i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15>
  %21 = lshr <8 x i8> %19, <i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15>
  %22 = and <8 x i8> %19, <i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15>
  %23 = shufflevector <8 x i8> %21, <8 x i8> %22, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 2 uses
  %24 = icmp ult <8 x i8> %20, <i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10>
  %i.e = or disjoint <8 x i8> %23, splat (i8 48)
  %i.f = trunc nuw nsw i16 %. to i8
  %i.g = insertelement <8 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <8 x i8> %i.g, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.i = add nuw <8 x i8> %i.h, %23
  %25 = select <8 x i1> %24, <8 x i8> %i.e, <8 x i8> %i.i
  %26 = zext <8 x i8> %25 to <8 x i16>
  store <8 x i16> %26, ptr %11, align 2, !tbaa !9
  %.2.extract.shift = lshr i64 %i.a, 16
  %.2.extract.trunc = trunc i64 %.2.extract.shift to i8 ; 3 uses
  %27 = lshr i8 %.2.extract.trunc, 4
  %28 = and i8 %.2.extract.trunc, 15              ; 2 uses
  %29 = zext nneg i8 %27 to i16                   ; 2 uses
  %30 = icmp ult i8 %.2.extract.trunc, -96
  %31 = or disjoint i16 %29, 48
  %32 = add nuw nsw i16 %., %29
  %33 = select i1 %30, i16 %31, i16 %32
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %33, ptr %34, align 2, !tbaa !9
  %35 = zext nneg i8 %28 to i16                   ; 2 uses
  %36 = icmp samesign ult i8 %28, 10
  %37 = or disjoint i16 %35, 48
  %38 = add nuw nsw i16 %., %35
  %39 = select i1 %36, i16 %37, i16 %38
  %40 = getelementptr i8, ptr %0, i64 22
  store i16 %39, ptr %40, align 2, !tbaa !9
  %.1.extract.shift = lshr i64 %i.a, 8
  %.1.extract.trunc = trunc i64 %.1.extract.shift to i8 ; 3 uses
  %41 = lshr i8 %.1.extract.trunc, 4
  %42 = and i8 %.1.extract.trunc, 15              ; 2 uses
  %43 = zext nneg i8 %41 to i16                   ; 2 uses
  %44 = icmp ult i8 %.1.extract.trunc, -96
  %45 = or disjoint i16 %43, 48
  %46 = add nuw nsw i16 %., %43
  %47 = select i1 %44, i16 %45, i16 %46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %47, ptr %i.j, align 2, !tbaa !9
  %48 = zext nneg i8 %42 to i16                   ; 2 uses
  %49 = icmp samesign ult i8 %42, 10
  %50 = or disjoint i16 %48, 48
  %51 = add nuw nsw i16 %., %48
  %52 = select i1 %49, i16 %50, i16 %51
  %53 = getelementptr i8, ptr %0, i64 26
  store i16 %52, ptr %53, align 2, !tbaa !9
  %.0.extract.trunc = trunc i64 %i.a to i8        ; 3 uses
  %54 = lshr i8 %.0.extract.trunc, 4
  %55 = and i8 %.0.extract.trunc, 15              ; 2 uses
  %56 = zext nneg i8 %54 to i16                   ; 2 uses
  %57 = icmp ult i8 %.0.extract.trunc, -96
  %58 = or disjoint i16 %56, 48
  %59 = add nuw nsw i16 %., %56
  %60 = select i1 %57, i16 %58, i16 %59
  %61 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %60, ptr %61, align 2, !tbaa !9
  %62 = zext nneg i8 %55 to i16                   ; 2 uses
  %63 = icmp samesign ult i8 %55, 10
  %64 = or disjoint i16 %62, 48
  %65 = add nuw nsw i16 %., %62
  %66 = select i1 %63, i16 %64, i16 %65
  %67 = getelementptr i8, ptr %0, i64 30
  store i16 %66, ptr %67, align 2, !tbaa !9
  store i32 16, ptr %1, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @_Z13ufmt_uto64_78PKDsPia(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(none) %1, i8 noundef signext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !11
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [2 x i8], ptr %0, i64 %i.b
  %i.d = load i16, ptr %0, align 2, !tbaa !9      ; 3 uses
  %i.e = add i16 %i.d, -48
  %or.cond.i.i16 = icmp ult i16 %i.e, 10
  %i.f = and i16 %i.d, -33
  %i.g = add i16 %i.f, -65
  %i.h = icmp ult i16 %i.g, 26
  %or.cond20.i.i17 = or i1 %or.cond.i.i16, %i.h
  br i1 %or.cond20.i.i17, label %_Z15ufmt_isdigit_78Dsi.exit.lr.ph, label %_Z15ufmt_isdigit_78Dsi.exit.thread

_Z15ufmt_isdigit_78Dsi.exit.lr.ph:                ; preds = %bb.a
  %i.i = sext i8 %2 to i32
  %i.j = sext i8 %2 to i64
  br label %_Z15ufmt_isdigit_78Dsi.exit

_Z15ufmt_isdigit_78Dsi.exit:                      ; preds = %_Z15ufmt_isdigit_78Dsi.exit.lr.ph, %_Z18ufmt_digitvalue_78Ds.exit
  %i.k = phi i16 [ %i.d, %_Z15ufmt_isdigit_78Dsi.exit.lr.ph ], [ %i.ac, %_Z18ufmt_digitvalue_78Ds.exit ] ; 4 uses
  %.020 = phi i64 [ 0, %_Z15ufmt_isdigit_78Dsi.exit.lr.ph ], [ %i.aa, %_Z18ufmt_digitvalue_78Ds.exit ] ; 2 uses
  %.01319 = phi i32 [ 0, %_Z15ufmt_isdigit_78Dsi.exit.lr.ph ], [ %i.ab, %_Z18ufmt_digitvalue_78Ds.exit ] ; 2 uses
  %.01418 = phi ptr [ %0, %_Z15ufmt_isdigit_78Dsi.exit.lr.ph ], [ %i.w, %_Z18ufmt_digitvalue_78Ds.exit ] ; 2 uses
  %i.l = zext nneg i16 %i.k to i32
  %i.m = add nsw i32 %i.l, -48
  %i.n = icmp samesign ugt i16 %i.k, 64           ; 2 uses
  %i.o = icmp samesign ugt i16 %i.k, 96           ; 2 uses
  %.neg.i.i = select i1 %i.o, i32 -39, i32 -7
  %.neg18.i.i = select i1 %i.n, i32 %.neg.i.i, i32 0
  %i.p = add nsw i32 %i.m, %.neg18.i.i            ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.i
  %i.r = icmp sgt i32 %i.p, -1
  %i.s = and i1 %i.q, %i.r
  %i.t = icmp ult ptr %.01418, %i.c
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %_Z18ufmt_digitvalue_78Ds.exit, label %_Z15ufmt_isdigit_78Dsi.exit.thread

_Z18ufmt_digitvalue_78Ds.exit:                    ; preds = %_Z15ufmt_isdigit_78Dsi.exit
  %i.v = mul i64 %.020, %i.j
  %i.w = getelementptr inbounds nuw i8, ptr %.01418, i64 2 ; 2 uses
  %i.x = zext i16 %i.k to i64
  %.neg.i = select i1 %i.o, i64 -39, i64 -7
  %.neg18.i = select i1 %i.n, i64 %.neg.i, i64 0
  %i.y = add i64 %i.v, -48
  %i.z = add i64 %i.y, %i.x
  %i.aa = add i64 %i.z, %.neg18.i                 ; 2 uses
  %i.ab = add nuw nsw i32 %.01319, 1              ; 2 uses
  %i.ac = load i16, ptr %i.w, align 2, !tbaa !9   ; 3 uses
  %i.ad = add i16 %i.ac, -48
  %or.cond.i.i = icmp ult i16 %i.ad, 10
  %i.ae = and i16 %i.ac, -33
  %i.af = add i16 %i.ae, -65
  %i.ag = icmp ult i16 %i.af, 26
  %or.cond20.i.i = or i1 %or.cond.i.i, %i.ag
  br i1 %or.cond20.i.i, label %_Z15ufmt_isdigit_78Dsi.exit, label %_Z15ufmt_isdigit_78Dsi.exit.thread, !llvm.loop !18

_Z15ufmt_isdigit_78Dsi.exit.thread:               ; preds = %_Z15ufmt_isdigit_78Dsi.exit, %_Z18ufmt_digitvalue_78Ds.exit, %bb.a
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ %i.ab, %_Z18ufmt_digitvalue_78Ds.exit ], [ %.01319, %_Z15ufmt_isdigit_78Dsi.exit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.aa, %_Z18ufmt_digitvalue_78Ds.exit ], [ %.020, %_Z15ufmt_isdigit_78Dsi.exit ]
  store i32 %.013.lcssa, ptr %1, align 4, !tbaa !11
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z12ufmt_utop_78PKDsPi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %union.anon, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store ptr null, ptr %2, align 8, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.b = load i16, ptr %i.a, align 2, !tbaa !9    ; 2 uses
  %i.c = icmp eq i16 %i.b, 48
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext i16 %i.b to i32
  %i.e = tail call signext i8 @u_isspace_78(i32 noundef %i.d)
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.c
  %indvars56.le = trunc i64 %indvars.iv to i32    ; 4 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !11     ; 3 uses
  %i.g = icmp sgt i32 %i.f, %indvars56.le
  br i1 %i.g, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %i.f to i64
  br label %.lr.ph

.critedge:                                        ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !19

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv57 = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next58, %bb.d ] ; 4 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv57
  %i.i = load i16, ptr %i.h, align 2, !tbaa !9    ; 5 uses
  %i.j = add i16 %i.i, -48
  %or.cond.i.i = icmp ult i16 %i.j, 10
  %i.k = and i16 %i.i, -33
  %i.l = add i16 %i.k, -65
  %i.m = icmp ult i16 %i.l, 26
  %or.cond20.i.i = or i1 %or.cond.i.i, %i.m
  br i1 %or.cond20.i.i, label %_Z15ufmt_isdigit_78Dsi.exit, label %.critedge2.loopexit.split.loop.exit

_Z15ufmt_isdigit_78Dsi.exit:                      ; preds = %.lr.ph
  %i.n = zext nneg i16 %i.i to i32
  %i.o = add nsw i32 %i.n, -48
  %i.p = icmp samesign ugt i16 %i.i, 64
  %i.q = icmp samesign ugt i16 %i.i, 96
  %.neg.i.i = select i1 %i.q, i32 -39, i32 -7
  %.neg18.i.i = select i1 %i.p, i32 %.neg.i.i, i32 0
  %i.r = add nsw i32 %i.o, %.neg18.i.i
  %i.s = icmp ugt i32 %i.r, 15
  br i1 %i.s, label %.critedge2.loopexit.split.loop.exit68, label %bb.d

bb.d:                                             ; preds = %_Z15ufmt_isdigit_78Dsi.exit
  %indvars.iv.next58 = add nuw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !20

.critedge2.loopexit.split.loop.exit:              ; preds = %.lr.ph
  %i.t = trunc nuw nsw i64 %indvars.iv57 to i32
  br label %.critedge2

.critedge2.loopexit.split.loop.exit68:            ; preds = %_Z15ufmt_isdigit_78Dsi.exit
  %i.u = trunc nuw nsw i64 %indvars.iv57 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.d, %.critedge2.loopexit.split.loop.exit, %.critedge2.loopexit.split.loop.exit68, %.preheader
  %.133.lcssa = phi i32 [ %indvars56.le, %.preheader ], [ %i.u, %.critedge2.loopexit.split.loop.exit68 ], [ %i.t, %.critedge2.loopexit.split.loop.exit ], [ %i.f, %bb.d ] ; 5 uses
  %i.v = sub nsw i32 %.133.lcssa, %indvars56.le
  %i.w = icmp sgt i32 %i.v, 16
  %i.x = add nsw i32 %.133.lcssa, -16
  %spec.select = select i1 %i.w, i32 %i.x, i32 %indvars56.le ; 3 uses
  store i32 %.133.lcssa, ptr %1, align 4, !tbaa !11
  %.not37.not50 = icmp sgt i32 %.133.lcssa, %spec.select
  br i1 %.not37.not50, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.critedge2, %bb.f
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %bb.f ], [ 0, %.critedge2 ] ; 2 uses
  %.251 = phi i32 [ %.3, %bb.f ], [ %.133.lcssa, %.critedge2 ] ; 2 uses
  %i.y = add nsw i32 %.251, -1                    ; 3 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %0, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !9  ; 5 uses
  %i.ac = add i16 %i.ab, -48
  %or.cond.i = icmp ult i16 %i.ac, 10
  %i.ad = and i16 %i.ab, -33
  %i.ae = add i16 %i.ad, -65
  %i.af = icmp ult i16 %i.ae, 26
  %or.cond20.i = or i1 %or.cond.i, %i.af
  br i1 %or.cond20.i, label %bb.e, label %_Z18ufmt_digitvalue_78Ds.exit

bb.e:                                             ; preds = %.lr.ph53
  %i.ag = trunc i16 %i.ab to i8
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp samesign ugt i16 %i.ab, 64
  %i.aj = icmp samesign ugt i16 %i.ab, 96
  %.neg.i = select i1 %i.aj, i8 -39, i8 -7
  %.neg18.i = select i1 %i.ai, i8 %.neg.i, i8 0
  %i.ak = add i8 %i.ah, %.neg18.i
  br label %_Z18ufmt_digitvalue_78Ds.exit

_Z18ufmt_digitvalue_78Ds.exit:                    ; preds = %.lr.ph53, %bb.e
  %.0.i = phi i8 [ %i.ak, %bb.e ], [ -1, %.lr.ph53 ] ; 2 uses
  %i.al = icmp sgt i32 %i.y, %spec.select
  br i1 %i.al, label %_Z18ufmt_digitvalue_78Ds.exit43, label %bb.f

_Z18ufmt_digitvalue_78Ds.exit43:                  ; preds = %_Z18ufmt_digitvalue_78Ds.exit
  %i.am = add nsw i32 %.251, -2                   ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [2 x i8], ptr %0, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !9  ; 4 uses
  %i.aq = add i16 %i.ap, -48
  %or.cond.i38 = icmp ult i16 %i.aq, 10
  %i.ar = and i16 %i.ap, -33
  %i.as = add i16 %i.ar, -65
  %i.at = icmp ult i16 %i.as, 26
  %or.cond20.i39 = or i1 %or.cond.i38, %i.at
  %i.au = trunc i16 %i.ap to i8
  %i.av = icmp samesign ugt i16 %i.ap, 64
  %.neg18.i42 = select i1 %i.av, i8 9, i8 0
  %i.aw = add i8 %.neg18.i42, %i.au
  %i.ax = shl i8 %i.aw, 4
  %.0.i40 = select i1 %or.cond20.i39, i8 %i.ax, i8 -16
  %i.ay = add i8 %.0.i40, %.0.i
  br label %bb.f

end_hunk_0
