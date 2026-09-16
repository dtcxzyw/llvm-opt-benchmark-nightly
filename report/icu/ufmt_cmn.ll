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
  %6 = add nsw i64 %i.p, %n.vec
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <8 x i16> splat (i16 48), ptr %i.ab, align 2, !tbaa !9
  store <8 x i16> splat (i16 48), ptr %i.ac, align 2, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %scalar.ph.preheader, label %vector.body, !llvm.loop !13

scalar.ph.preheader:                              ; preds = %vector.body, %.preheader
  %indvars.iv55.ph = phi i64 [ %i.p, %.preheader ], [ %6, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.b ], [ %indvars.iv55.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ae = trunc nuw i64 %indvars.iv55 to i32      ; 2 uses
  %i.af = icmp sgt i32 %i.o, %i.ae
  br i1 %i.af, label %bb.b, label %.critedge

bb.b:                                             ; preds = %scalar.ph
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next56 to i32  ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv55
  store i16 48, ptr %i.ag, align 2, !tbaa !9
  %i.ah = icmp sgt i32 %5, %indvars
  br i1 %i.ah, label %scalar.ph, label %.critedge, !llvm.loop !14

.critedge:                                        ; preds = %scalar.ph, %bb.b, %.split46.us
  %.2 = phi i32 [ %.us-phi, %.split46.us ], [ %indvars, %bb.b ], [ %i.ae, %scalar.ph ] ; 3 uses
  %i.ai = icmp sgt i32 %.2, 1
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.critedge
  %i.aj = shl nuw i32 %.2, 1
  %.idx = zext i32 %i.aj to i64
  %i.ak = getelementptr i8, ptr %0, i64 %.idx
  %i.al = getelementptr i8, ptr %i.ak, i64 -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.am = phi ptr [ %i.aq, %.lr.ph ], [ %i.al, %.lr.ph.preheader ] ; 3 uses
  %.03448 = phi ptr [ %i.ap, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %i.an = load i16, ptr %.03448, align 2, !tbaa !9
  %i.ao = load i16, ptr %i.am, align 2, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %.03448, i64 2 ; 2 uses
  store i16 %i.ao, ptr %.03448, align 2, !tbaa !9
  store i16 %i.an, ptr %i.am, align 2, !tbaa !9
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 -2 ; 2 uses
  %i.ar = icmp ult ptr %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !15

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
  %i.b = lshr i8 %.7.extract.trunc66, 4
  %i.c = and i8 %.7.extract.trunc66, 15           ; 2 uses
  %i.d = zext nneg i8 %i.b to i16                 ; 2 uses
  %i.e = icmp ult ptr %2, inttoptr (i64 -6917529027641081856 to ptr)
  %i.f = or disjoint i16 %i.d, 48
  %i.g = zext nneg i8 %i.c to i16                 ; 2 uses
  %i.h = icmp samesign ult i8 %i.c, 10
  %i.i = or disjoint i16 %i.g, 48
  %i.j = getelementptr i8, ptr %0, i64 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %. = select i1 %.not, i16 55, i16 87            ; 9 uses
  %i.l = add nuw nsw i16 %., %i.d
  %i.m = select i1 %i.e, i16 %i.f, i16 %i.l
  store i16 %i.m, ptr %0, align 2, !tbaa !9
  %i.n = add nuw nsw i16 %., %i.g
  %i.o = select i1 %i.h, i16 %i.i, i16 %i.n
  store i16 %i.o, ptr %i.j, align 2, !tbaa !9
  %i.p = insertelement <4 x i64> poison, i64 %i.a, i64 0
  %i.q = shufflevector <4 x i64> %i.p, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.r = lshr <4 x i64> %i.q, <i64 48, i64 40, i64 32, i64 24>
  %i.s = shufflevector <4 x i64> %i.r, <4 x i64> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.t = trunc <8 x i64> %i.s to <8 x i8>         ; 3 uses
  %i.u = and <8 x i8> %i.t, <i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15, i8 -1, i8 15>
  %i.v = lshr <8 x i8> %i.t, <i8 4, i8 15, i8 4, i8 15, i8 4, i8 15, i8 4, i8 15>
  %i.w = and <8 x i8> %i.t, <i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15, i8 poison, i8 15>
  %i.x = shufflevector <8 x i8> %i.v, <8 x i8> %i.w, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15> ; 2 uses
  %i.y = icmp ult <8 x i8> %i.u, <i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10, i8 -96, i8 10>
  %i.z = or disjoint <8 x i8> %i.x, splat (i8 48)
  %i.aa = trunc nuw nsw i16 %. to i8
  %i.ab = insertelement <8 x i8> poison, i8 %i.aa, i64 0
  %i.ac = shufflevector <8 x i8> %i.ab, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ad = add nuw <8 x i8> %i.ac, %i.x
  %i.ae = select <8 x i1> %i.y, <8 x i8> %i.z, <8 x i8> %i.ad
  %i.af = zext <8 x i8> %i.ae to <8 x i16>
  store <8 x i16> %i.af, ptr %i.k, align 2, !tbaa !9
  %.2.extract.shift = lshr i64 %i.a, 16
  %.2.extract.trunc = trunc i64 %.2.extract.shift to i8 ; 3 uses
  %i.ag = lshr i8 %.2.extract.trunc, 4
  %i.ah = and i8 %.2.extract.trunc, 15            ; 2 uses
  %i.ai = zext nneg i8 %i.ag to i16               ; 2 uses
  %i.aj = icmp ult i8 %.2.extract.trunc, -96
  %i.ak = or disjoint i16 %i.ai, 48
  %i.al = add nuw nsw i16 %., %i.ai
  %i.am = select i1 %i.aj, i16 %i.ak, i16 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.am, ptr %i.an, align 2, !tbaa !9
  %i.ao = zext nneg i8 %i.ah to i16               ; 2 uses
  %i.ap = icmp samesign ult i8 %i.ah, 10
  %i.aq = or disjoint i16 %i.ao, 48
  %i.ar = add nuw nsw i16 %., %i.ao
  %i.as = select i1 %i.ap, i16 %i.aq, i16 %i.ar
  %i.at = getelementptr i8, ptr %0, i64 22
  store i16 %i.as, ptr %i.at, align 2, !tbaa !9
  %.1.extract.shift = lshr i64 %i.a, 8
  %.1.extract.trunc = trunc i64 %.1.extract.shift to i8 ; 3 uses
  %i.au = lshr i8 %.1.extract.trunc, 4
  %i.av = and i8 %.1.extract.trunc, 15            ; 2 uses
  %i.aw = zext nneg i8 %i.au to i16               ; 2 uses
  %i.ax = icmp ult i8 %.1.extract.trunc, -96
  %i.ay = or disjoint i16 %i.aw, 48
  %i.az = add nuw nsw i16 %., %i.aw
  %i.ba = select i1 %i.ax, i16 %i.ay, i16 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !9
  %i.bc = zext nneg i8 %i.av to i16               ; 2 uses
  %i.bd = icmp samesign ult i8 %i.av, 10
  %i.be = or disjoint i16 %i.bc, 48
  %i.bf = add nuw nsw i16 %., %i.bc
  %i.bg = select i1 %i.bd, i16 %i.be, i16 %i.bf
  %i.bh = getelementptr i8, ptr %0, i64 26
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !9
  %.0.extract.trunc = trunc i64 %i.a to i8        ; 3 uses
  %i.bi = lshr i8 %.0.extract.trunc, 4
  %i.bj = and i8 %.0.extract.trunc, 15            ; 2 uses
  %i.bk = zext nneg i8 %i.bi to i16               ; 2 uses
  %i.bl = icmp ult i8 %.0.extract.trunc, -96
  %i.bm = or disjoint i16 %i.bk, 48
  %i.bn = add nuw nsw i16 %., %i.bk
  %i.bo = select i1 %i.bl, i16 %i.bm, i16 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %i.bo, ptr %i.bp, align 2, !tbaa !9
  %i.bq = zext nneg i8 %i.bj to i16               ; 2 uses
  %i.br = icmp samesign ult i8 %i.bj, 10
  %i.bs = or disjoint i16 %i.bq, 48
  %i.bt = add nuw nsw i16 %., %i.bq
  %i.bu = select i1 %i.br, i16 %i.bs, i16 %i.bt
  %i.bv = getelementptr i8, ptr %0, i64 30
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !9
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
end_hunk_0
