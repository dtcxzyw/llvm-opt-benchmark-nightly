Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/time?download=true
inline.NumInlined: 123
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6google8protobuf8internal17SecondsToDateTimeElPNS1_8DateTimeE:bb.a
  br i1 %.not6185.peel, label %.split.us, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel
  %i.ae = add nsw i64 %.3, -2678400
  %.not61.peel138 = icmp samesign ult i64 %.3, 5184000
  br i1 %.not61.peel138, label %.split.us, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137
  %i.af = add nsw i64 %.3, -5184000               ; 2 uses
  %.not6185185 = icmp slt i64 %.3, 7862400
  br i1 %.not6185185, label %.split.us, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us: ; preds = %.thread83, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit
  %.not6185.us114 = icmp slt i64 %.3, 2678400
  br i1 %.not6185.us114, label %.split.us, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us
  %i.ag = phi i32 [ %i.ak, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us ], [ 31, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us ], [ 1, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ]
  %.4.us116 = phi i64 [ %i.ai, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us ], [ %.3, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ]
  %i.ah = sext i32 %i.ag to i64
  %.neg100.us = mul nsw i64 %i.ah, -86400
  %i.ai = add i64 %.neg100.us, %.4.us116          ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal12_GLOBAL__N_112kDaysInMonthE, i64 %indvars.iv.next
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !9  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, 86400
  %.not6185.us = icmp slt i64 %i.ai, %i.am
  br i1 %.not6185.us, label %.split.us.loopexit120, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us, !llvm.loop !30

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78
  %i.an = phi i64 [ %i.ar, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78 ], [ 31, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ]
  %.4187 = phi i64 [ %i.ao, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78 ], [ %i.af, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ]
  %indvars.iv129186 = phi i64 [ %indvars.iv.next130, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78 ], [ 3, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ]
  %.neg100 = mul nsw i64 %i.an, -86400
  %i.ao = add i64 %.neg100, %.4187                ; 3 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129186, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal12_GLOBAL__N_112kDaysInMonthE, i64 %indvars.iv.next130
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !9
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = mul nsw i64 %i.ar, 86400
  %.not6185 = icmp slt i64 %i.ao, %i.as
  br i1 %.not6185, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge, label %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78, !llvm.loop !31

.split.us.loopexit120:                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.us
  %i.at = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.split.us

_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78
  %i.au = trunc nuw nsw i64 %indvars.iv.next130 to i32
  br label %.split.us

.split.us:                                        ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137, %.split.us.loopexit120, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us
  %.us-phi = phi i32 [ %i.at, %.split.us.loopexit120 ], [ 1, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ], [ 1, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel ], [ 2, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137 ], [ %i.au, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge ], [ 3, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ]
  %.us-phi113 = phi i64 [ %i.ai, %.split.us.loopexit120 ], [ %.3, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.split.us ], [ %.3, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread.peel ], [ %i.ae, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.peel137 ], [ %i.ao, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit.thread..split.us.loopexit_crit_edge ], [ %i.af, %_ZN6google8protobuf8internal12_GLOBAL__N_115SecondsPerMonthEib.exit78.peel139 ] ; 2 uses
  %i.av = sdiv i64 %.us-phi113, 86400
  %i.aw = trunc i64 %i.av to i32
  %i.ax = add i32 %i.aw, 1
  %i.ay = srem i64 %.us-phi113, 86400
  %.lhs.trunc = trunc nsw i64 %i.ay to i32        ; 2 uses
  %i.az = sdiv i32 %.lhs.trunc, 3600
  %i.ba = srem i32 %.lhs.trunc, 3600
  %.lhs.trunc96 = trunc nsw i32 %i.ba to i16      ; 2 uses
  %i.bb = sdiv i16 %.lhs.trunc96, 60
  %i.bc = sext i16 %i.bb to i32
  %i.bd = srem i16 %.lhs.trunc96, 60
  store i32 %.354, ptr %1, align 4, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.us-phi, ptr %i.be, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ax, ptr %i.bf, align 4, !tbaa !13
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.az, ptr %i.bg, align 4, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.bc, ptr %i.bh, align 4, !tbaa !15
  %i.bi = sext i16 %i.bd to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !16
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %.split.us
  ret i1 %or.cond
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal17DateTimeToSecondsERKNS1_8DateTimeEPl(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !11
  %.fr47.i = freeze i32 %i.a                      ; 16 uses
  %i.b = add i32 %.fr47.i, -10000
  %or.cond.i = icmp ult i32 %i.b, -9999
  br i1 %or.cond.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !12   ; 5 uses
  %i.e = add i32 %i.d, -13
  %or.cond25.i = icmp ult i32 %i.e, -12
  br i1 %or.cond25.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !13   ; 4 uses
  %i.h = add i32 %i.g, -32
  %or.cond26.i = icmp ult i32 %i.h, -31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %or.cond27.i = icmp ugt i32 %i.j, 23
  %or.cond34.i = select i1 %or.cond26.i, i1 true, i1 %or.cond27.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %or.cond28.i = icmp ugt i32 %i.l, 59
  %or.cond36.i = select i1 %or.cond34.i, i1 true, i1 %or.cond28.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %or.cond29.i = icmp ugt i32 %i.n, 59
  %or.cond38.i = select i1 %or.cond36.i, i1 true, i1 %or.cond29.i
  br i1 %or.cond38.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %i.d, 2
  br i1 %i.o, label %bb.e, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i

bb.e:                                             ; preds = %bb.d
  %.lhs.trunc.i = trunc nuw nsw i32 %.fr47.i to i16 ; 2 uses
  %i.p = urem i16 %.lhs.trunc.i, 400
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i32 %.fr47.i, 3
  %i.s = icmp ne i32 %i.r, 0
  %i.t = urem i16 %.lhs.trunc.i, 100
  %.not.i = icmp eq i16 %i.t, 0
  %or.cond39.i = or i1 %i.s, %.not.i
  br i1 %or.cond39.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i: ; preds = %bb.f, %bb.d
  %i.u = zext nneg i32 %i.d to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal12_GLOBAL__N_112kDaysInMonthE, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %.not = icmp sgt i32 %i.g, %i.w
  br i1 %.not, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread, label %bb.g

_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit: ; preds = %bb.e, %bb.f
  %i.x = icmp samesign ult i32 %i.g, 30
  br i1 %i.x, label %bb.g, label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread

bb.g:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i, %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit
  %i.y = icmp samesign ugt i32 %.fr47.i, 400
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = trunc nuw i32 %.fr47.i to i16
  %.lhs.trunc = add nsw i16 %i.z, -1
  %i.aa = udiv i16 %.lhs.trunc, 400               ; 2 uses
  %i.ab = zext nneg i16 %i.aa to i64
  %i.ac = mul nuw nsw i64 %i.ab, 12622780800
  %narrow32 = mul nuw i16 %i.aa, 400
  %i.ad = or disjoint i16 %narrow32, 1
  %i.ae = zext i16 %i.ad to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.035.i = phi i32 [ %i.ae, %bb.h ], [ 1, %bb.g ] ; 6 uses
  %.0.i4 = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.af = sub nsw i32 %.fr47.i, %.035.i           ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 99
  br i1 %i.ag, label %.lr.ph.i.preheader, label %.preheader48.i

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.ah = add nsw i32 %.fr47.i, -100
  %i.ai = sub nsw i32 %i.ah, %.035.i              ; 3 uses
  %i.aj = udiv i32 %i.ai, 100
  %i.ak = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ai, 300
  br i1 %min.iters.check, label %.lr.ph.i.preheader102, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i32 %i.ak, 134217724               ; 4 uses
  %i.al = mul i32 %n.vec, 100
  %i.am = add i32 %.035.i, %i.al                  ; 2 uses
  %i.an = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.0.i4, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.035.i, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i32> %broadcast.splat, <i32 0, i32 100>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.an, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi38 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.ind = phi <2 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 200)
  %2 = srem <2 x i32> %vec.ind, splat (i32 400)   ; 2 uses
  %3 = srem <2 x i32> %step.add, splat (i32 400)  ; 2 uses
  %4 = icmp eq <2 x i32> %2, zeroinitializer
  %5 = icmp eq <2 x i32> %3, zeroinitializer
  %6 = icmp sgt <2 x i32> %2, splat (i32 300)
  %7 = icmp sgt <2 x i32> %3, splat (i32 300)
  %8 = or <2 x i1> %4, %6
  %9 = or <2 x i1> %5, %7
  %i.ao = select <2 x i1> %8, <2 x i64> splat (i64 3155760000), <2 x i64> splat (i64 3155673600)
  %i.ap = select <2 x i1> %9, <2 x i64> splat (i64 3155760000), <2 x i64> splat (i64 3155673600)
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi38         ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 400)
  %i.as = icmp eq i32 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %i.au = mul i32 %n.vec, -100
  %i.av = add i32 %i.au, 100
  %i.aw = add i32 %i.ai, %i.av
  %cmp.n = icmp eq i32 %i.ak, %n.vec
  br i1 %cmp.n, label %.preheader48.i, label %.lr.ph.i.preheader102

.lr.ph.i.preheader102:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.150.i.ph = phi i64 [ %.0.i4, %.lr.ph.i.preheader ], [ %i.at, %middle.block ]
  %.13649.i.ph = phi i32 [ %.035.i, %.lr.ph.i.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.i

.preheader48.i:                                   ; preds = %.lr.ph.i, %middle.block, %bb.i
  %.pre-phi.i = phi i32 [ %i.af, %bb.i ], [ %i.aw, %middle.block ], [ %i.bo, %.lr.ph.i ]
  %.136.lcssa.i = phi i32 [ %.035.i, %bb.i ], [ %i.am, %middle.block ], [ %i.bn, %.lr.ph.i ] ; 6 uses
  %.1.lcssa.i = phi i64 [ %.0.i4, %bb.i ], [ %i.at, %middle.block ], [ %i.bm, %.lr.ph.i ] ; 3 uses
  %i.ax = icmp sgt i32 %.pre-phi.i, 3
  br i1 %i.ax, label %.lr.ph55.i.preheader, label %.preheader.i

.lr.ph55.i.preheader:                             ; preds = %.preheader48.i
  %.neg = sub i32 %.fr47.i, %.136.lcssa.i
  %reass.sub = sub i32 %.136.lcssa.i, %.fr47.i
  %i.ay = add i32 %reass.sub, 3
  %i.az = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 -4)
  %i.ba = add i32 %.neg, %i.az                    ; 2 uses
  %i.bb = lshr i32 %i.ba, 2
  %i.bc = add nuw nsw i32 %i.bb, 1                ; 2 uses
  %min.iters.check40 = icmp ult i32 %i.ba, 12
  br i1 %min.iters.check40, label %.lr.ph55.i.preheader97, label %vector.ph41

vector.ph41:                                      ; preds = %.lr.ph55.i.preheader
  %n.vec42 = and i32 %i.bc, 2147483644            ; 3 uses
  %i.bd = shl i32 %n.vec42, 2
  %i.be = add i32 %.136.lcssa.i, %i.bd            ; 2 uses
  %i.bf = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.1.lcssa.i, i64 0
  %broadcast.splatinsert43 = insertelement <2 x i32> poison, i32 %.136.lcssa.i, i64 0
  %broadcast.splat44 = shufflevector <2 x i32> %broadcast.splatinsert43, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction45 = add <2 x i32> %broadcast.splat44, <i32 0, i32 4>
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph41
  %index47 = phi i32 [ 0, %vector.ph41 ], [ %index.next53, %vector.body46 ]
  %vec.phi48 = phi <2 x i64> [ %i.bf, %vector.ph41 ], [ %i.bi, %vector.body46 ]
  %vec.phi49 = phi <2 x i64> [ zeroinitializer, %vector.ph41 ], [ %i.bj, %vector.body46 ]
  %vec.ind50 = phi <2 x i32> [ %induction45, %vector.ph41 ], [ %vec.ind.next54, %vector.body46 ] ; 4 uses
  %step.add51 = add <2 x i32> %vec.ind50, splat (i32 8) ; 2 uses
  %10 = srem <2 x i32> %vec.ind50, splat (i32 100) ; 2 uses
  %11 = srem <2 x i32> %step.add51, splat (i32 100) ; 2 uses
  %12 = icmp eq <2 x i32> %10, zeroinitializer
  %13 = icmp eq <2 x i32> %11, zeroinitializer
  %14 = icmp sgt <2 x i32> %10, splat (i32 96)
  %15 = icmp sgt <2 x i32> %11, splat (i32 96)
  %16 = or <2 x i1> %12, %14
  %17 = or <2 x i1> %13, %15
  %18 = srem <2 x i32> %vec.ind50, splat (i32 400) ; 2 uses
  %19 = srem <2 x i32> %step.add51, splat (i32 400) ; 2 uses
  %20 = icmp ne <2 x i32> %18, zeroinitializer
  %21 = icmp ne <2 x i32> %19, zeroinitializer
  %22 = icmp slt <2 x i32> %18, splat (i32 397)
  %23 = icmp slt <2 x i32> %19, splat (i32 397)
  %.not84 = and <2 x i1> %20, %22
  %.not87 = and <2 x i1> %21, %23
  %i.bg = select <2 x i1> %16, <2 x i1> %.not84, <2 x i1> zeroinitializer
  %i.bh = select <2 x i1> %17, <2 x i1> %.not87, <2 x i1> zeroinitializer
  %predphi = select <2 x i1> %i.bg, <2 x i64> splat (i64 126144000), <2 x i64> splat (i64 126230400)
  %predphi52 = select <2 x i1> %i.bh, <2 x i64> splat (i64 126144000), <2 x i64> splat (i64 126230400)
  %i.bi = add <2 x i64> %predphi, %vec.phi48      ; 2 uses
  %i.bj = add <2 x i64> %predphi52, %vec.phi49    ; 2 uses
  %index.next53 = add nuw i32 %index47, 4         ; 2 uses
  %vec.ind.next54 = add <2 x i32> %vec.ind50, splat (i32 16)
  %i.bk = icmp eq i32 %index.next53, %n.vec42
  br i1 %i.bk, label %middle.block55, label %vector.body46, !llvm.loop !34

middle.block55:                                   ; preds = %vector.body46
  %bin.rdx56 = add <2 x i64> %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx56) ; 2 uses
  %cmp.n57 = icmp eq i32 %i.bc, %n.vec42
  br i1 %cmp.n57, label %.preheader.i, label %.lr.ph55.i.preheader97

.lr.ph55.i.preheader97:                           ; preds = %.lr.ph55.i.preheader, %middle.block55
  %.254.i.ph = phi i64 [ %.1.lcssa.i, %.lr.ph55.i.preheader ], [ %i.bl, %middle.block55 ]
  %.23752.i.ph = phi i32 [ %.136.lcssa.i, %.lr.ph55.i.preheader ], [ %i.be, %middle.block55 ]
  br label %.lr.ph55.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader102, %.lr.ph.i
  %.150.i = phi i64 [ %i.bm, %.lr.ph.i ], [ %.150.i.ph, %.lr.ph.i.preheader102 ]
  %.13649.i = phi i32 [ %i.bn, %.lr.ph.i ], [ %.13649.i.ph, %.lr.ph.i.preheader102 ] ; 2 uses
  %24 = srem i32 %.13649.i, 400                   ; 2 uses
  %25 = icmp eq i32 %24, 0
  %26 = icmp sgt i32 %24, 300
  %or.cond.i.i = or i1 %25, %26
  %.0.i.i = select i1 %or.cond.i.i, i64 3155760000, i64 3155673600
  %i.bm = add nuw nsw i64 %.0.i.i, %.150.i        ; 2 uses
  %i.bn = add i32 %.13649.i, 100                  ; 3 uses
  %i.bo = sub nsw i32 %.fr47.i, %i.bn             ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 99
  br i1 %i.bp, label %.lr.ph.i, label %.preheader48.i, !llvm.loop !35

.preheader.i:                                     ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i, %middle.block55, %.preheader48.i
  %.237.lcssa.i = phi i32 [ %.136.lcssa.i, %.preheader48.i ], [ %i.be, %middle.block55 ], [ %i.cj, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i ] ; 6 uses
  %.2.lcssa.i = phi i64 [ %.1.lcssa.i, %.preheader48.i ], [ %i.bl, %middle.block55 ], [ %i.ci, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i ] ; 3 uses
  %i.bq = icmp sgt i32 %.fr47.i, %.237.lcssa.i
  br i1 %i.bq, label %.lr.ph61.i.preheader, label %._crit_edge.i

.lr.ph61.i.preheader:                             ; preds = %.preheader.i
  %i.br = sub i32 %.fr47.i, %.237.lcssa.i         ; 3 uses
  %min.iters.check61 = icmp ult i32 %i.br, 4
  br i1 %min.iters.check61, label %.lr.ph61.i.preheader94, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph61.i.preheader
  %n.vec63 = and i32 %i.br, -4                    ; 3 uses
  %i.bs = add i32 %.237.lcssa.i, %n.vec63
  %i.bt = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.2.lcssa.i, i64 0
  %broadcast.splatinsert64 = insertelement <2 x i32> poison, i32 %.237.lcssa.i, i64 0
  %broadcast.splat65 = shufflevector <2 x i32> %broadcast.splatinsert64, <2 x i32> poison, <2 x i32> zeroinitializer
  %induction66 = add nsw <2 x i32> %broadcast.splat65, <i32 0, i32 1>
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph62
  %index68 = phi i32 [ 0, %vector.ph62 ], [ %index.next75, %vector.body67 ]
  %vec.phi69 = phi <2 x i64> [ %i.bt, %vector.ph62 ], [ %i.ce, %vector.body67 ]
  %vec.phi70 = phi <2 x i64> [ zeroinitializer, %vector.ph62 ], [ %i.cf, %vector.body67 ]
  %vec.ind71 = phi <2 x i32> [ %induction66, %vector.ph62 ], [ %vec.ind.next76, %vector.body67 ] ; 5 uses
  %step.add72 = add nsw <2 x i32> %vec.ind71, splat (i32 2) ; 3 uses
  %27 = srem <2 x i32> %vec.ind71, splat (i32 400)
  %28 = srem <2 x i32> %step.add72, splat (i32 400)
  %i.bu = icmp ne <2 x i32> %27, zeroinitializer
  %i.bv = icmp ne <2 x i32> %28, zeroinitializer
  %i.bw = and <2 x i32> %vec.ind71, splat (i32 3)
  %i.bx = and <2 x i32> %step.add72, splat (i32 3)
  %i.by = icmp ne <2 x i32> %i.bw, zeroinitializer
  %i.bz = icmp ne <2 x i32> %i.bx, zeroinitializer
  %29 = srem <2 x i32> %vec.ind71, splat (i32 100)
  %30 = srem <2 x i32> %step.add72, splat (i32 100)
  %i.ca = icmp eq <2 x i32> %29, zeroinitializer
  %i.cb = icmp eq <2 x i32> %30, zeroinitializer
  %.not90 = or <2 x i1> %i.by, %i.ca
  %.not93 = or <2 x i1> %i.bz, %i.cb
  %i.cc = select <2 x i1> %i.bu, <2 x i1> %.not90, <2 x i1> zeroinitializer
  %i.cd = select <2 x i1> %i.bv, <2 x i1> %.not93, <2 x i1> zeroinitializer
  %predphi73 = select <2 x i1> %i.cc, <2 x i64> splat (i64 31536000), <2 x i64> splat (i64 31622400)
  %predphi74 = select <2 x i1> %i.cd, <2 x i64> splat (i64 31536000), <2 x i64> splat (i64 31622400)
  %i.ce = add <2 x i64> %predphi73, %vec.phi69    ; 2 uses
  %i.cf = add <2 x i64> %predphi74, %vec.phi70    ; 2 uses
  %index.next75 = add nuw i32 %index68, 4         ; 2 uses
  %vec.ind.next76 = add nsw <2 x i32> %vec.ind71, splat (i32 4)
  %i.cg = icmp eq i32 %index.next75, %n.vec63
  br i1 %i.cg, label %middle.block77, label %vector.body67, !llvm.loop !36

middle.block77:                                   ; preds = %vector.body67
  %bin.rdx78 = add <2 x i64> %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx78) ; 2 uses
  %cmp.n79 = icmp eq i32 %i.br, %n.vec63
  br i1 %cmp.n79, label %._crit_edge.i, label %.lr.ph61.i.preheader94

.lr.ph61.i.preheader94:                           ; preds = %.lr.ph61.i.preheader, %middle.block77
  %.360.i.ph = phi i64 [ %.2.lcssa.i, %.lr.ph61.i.preheader ], [ %i.ch, %middle.block77 ]
  %.33858.i.ph = phi i32 [ %.237.lcssa.i, %.lr.ph61.i.preheader ], [ %i.bs, %middle.block77 ]
  br label %.lr.ph61.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i.preheader97, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i
  %.254.i = phi i64 [ %i.ci, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i ], [ %.254.i.ph, %.lr.ph55.i.preheader97 ]
  %.23752.i = phi i32 [ %i.cj, %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i ], [ %.23752.i.ph, %.lr.ph55.i.preheader97 ] ; 3 uses
  %31 = srem i32 %.23752.i, 100                   ; 2 uses
  %32 = icmp eq i32 %31, 0
  %33 = icmp sgt i32 %31, 96
  %or.cond.i40.i = or i1 %32, %33
  br i1 %or.cond.i40.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph55.i
  %34 = srem i32 %.23752.i, 400                   ; 2 uses
  %35 = icmp eq i32 %34, 0
  %36 = icmp sgt i32 %34, 396
  %or.cond7.i.i = or i1 %35, %36
  br i1 %or.cond7.i.i, label %bb.k, label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i

bb.k:                                             ; preds = %bb.j, %.lr.ph55.i
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_116SecondsPer4YearsEi.exit.i: ; preds = %bb.k, %bb.j
  %.0.i41.i = phi i64 [ 126230400, %bb.k ], [ 126144000, %bb.j ]
  %i.ci = add nuw nsw i64 %.0.i41.i, %.254.i      ; 2 uses
  %i.cj = add i32 %.23752.i, 4                    ; 3 uses
  %i.ck = sub nsw i32 %.fr47.i, %i.cj
  %i.cl = icmp sgt i32 %i.ck, 3
  br i1 %i.cl, label %.lr.ph55.i, label %.preheader.i, !llvm.loop !37

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.preheader94, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i
  %.360.i = phi i64 [ %i.cr, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i ], [ %.360.i.ph, %.lr.ph61.i.preheader94 ]
  %.33858.i = phi i32 [ %i.cs, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i ], [ %.33858.i.ph, %.lr.ph61.i.preheader94 ] ; 4 uses
  %37 = srem i32 %.33858.i, 400
  %i.cm = icmp eq i32 %37, 0
  br i1 %i.cm, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph61.i
  %i.cn = and i32 %.33858.i, 3
  %i.co = icmp eq i32 %i.cn, 0
  %38 = srem i32 %.33858.i, 100
  %i.cp = icmp ne i32 %38, 0
  %or.cond.i42.i = and i1 %i.co, %i.cp
  br i1 %or.cond.i42.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i: ; preds = %bb.l, %.lr.ph61.i
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i, %bb.l
  %i.cq = phi i64 [ 31622400, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i.i ], [ 31536000, %bb.l ]
  %i.cr = add nuw nsw i64 %i.cq, %.360.i          ; 2 uses
  %i.cs = add nsw i32 %.33858.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cs, %.fr47.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph61.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i, %middle.block77, %.preheader.i
  %.338.lcssa.i = phi i32 [ %.237.lcssa.i, %.preheader.i ], [ %.fr47.i, %middle.block77 ], [ %.fr47.i, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i ] ; 3 uses
  %.3.lcssa.i = phi i64 [ %.2.lcssa.i, %.preheader.i ], [ %i.ch, %middle.block77 ], [ %i.cr, %_ZN6google8protobuf8internal12_GLOBAL__N_114SecondsPerYearEi.exit.i ]
  %i.ct = zext nneg i32 %i.d to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal12_GLOBAL__N_113kDaysSinceJanE, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !9
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul nsw i64 %i.cw, 86400
  %i.cy = add nsw i64 %i.cx, %.3.lcssa.i          ; 5 uses
  %i.cz = icmp sgt i32 %i.d, 2
  br i1 %i.cz, label %bb.m, label %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit

bb.m:                                             ; preds = %._crit_edge.i
  %39 = srem i32 %.338.lcssa.i, 400
  %i.da = icmp eq i32 %39, 0
  br i1 %i.da, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i6, label %bb.n

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i6: ; preds = %bb.m
  %i.db = add nsw i64 %i.cy, 86400
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit

bb.n:                                             ; preds = %bb.m
  %i.dc = and i32 %.338.lcssa.i, 3
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.i: ; preds = %bb.n
  %40 = srem i32 %.338.lcssa.i, 100
  %.not.i5 = icmp eq i32 %40, 0
  %i.de = add nsw i64 %i.cy, 86400
  %spec.select.i = select i1 %.not.i5, i64 %i.cy, i64 %i.de
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit

_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit: ; preds = %._crit_edge.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i6, %bb.n, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.i
  %.4.i = phi i64 [ %i.cy, %._crit_edge.i ], [ %i.cy, %bb.n ], [ %spec.select.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.i ], [ %i.db, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread.i6 ]
  %i.df = mul nuw nsw i32 %i.g, 86400
  %narrow = add nsw i32 %i.df, -86400
  %i.dg = sext i32 %narrow to i64
  %narrow25 = mul nuw nsw i32 %i.j, 3600
  %i.dh = zext nneg i32 %narrow25 to i64
  %narrow26 = mul nuw nsw i32 %i.l, 60
  %i.di = zext nneg i32 %narrow26 to i64
  %i.dj = zext nneg i32 %i.n to i64
  %i.dk = add i64 %.4.i, -62135596800
  %i.dl = add i64 %i.dk, %i.dg
  %i.dm = add i64 %i.dl, %i.dh
  %i.dn = add i64 %i.dm, %i.di
  %i.do = add i64 %i.dn, %i.dj
  store i64 %i.do, ptr %1, align 8, !tbaa !20
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread

_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit.thread: ; preds = %bb.a, %bb.b, %bb.c, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i, %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit, %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit
  %.0.i8 = phi i1 [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_110IsLeapYearEi.exit.thread30.i ], [ false, %_ZN6google8protobuf8internal12_GLOBAL__N_116ValidateDateTimeERKNS1_8DateTimeE.exit ], [ true, %_ZN6google8protobuf8internal12_GLOBAL__N_121SecondsSinceCommonEraERKNS1_8DateTimeE.exit ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i8
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf8internal14GetCurrentTimeEPlPi(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i64 @time(ptr noundef null) #14
  store i64 %i.a, ptr %0, align 8, !tbaa !20
  store i32 0, ptr %1, align 4, !tbaa !9
  ret void
}

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf8internal10FormatTimeB5cxx11Eli(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.google::protobuf::internal::DateTime", align 4 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %or.cond = icmp ugt i32 %2, 999999999
  br i1 %or.cond, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = call noundef zeroext i1 @_ZN6google8protobuf8internal17SecondsToDateTimeElPNS1_8DateTimeE(i64 noundef %1, ptr noundef nonnull %3)
  br i1 %i.a, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str, i64 11, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.d, align 1, !tbaa !25
  br label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.e = load i32, ptr %3, align 4, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  call void (ptr, ptr, ...) @_ZN6google8protobuf12StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull @.str.1, i32 noundef %i.e, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.p = urem i32 %2, 1000000
  %i.q = udiv i32 %2, 1000000
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = urem i32 %2, 1000
  %i.t = udiv i32 %2, 1000
  %i.u = icmp eq i32 %i.s, 0                      ; 2 uses
  %spec.select = select i1 %i.u, ptr @.str.5, ptr @.str.6
  %spec.select58 = select i1 %i.u, i32 %i.t, i32 %2
  br label %.invoke

.invoke:                                          ; preds = %bb.e, %bb.d
  %i.v = phi ptr [ %spec.select, %bb.e ], [ @.str.4, %bb.d ]
  %i.w = phi i32 [ %spec.select58, %bb.e ], [ %i.q, %bb.d ]
  invoke void (ptr, ptr, ...) @_ZN6google8protobuf12StringPrintfB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %i.v, i32 noundef %i.w)
          to label %_ZN6google8protobuf8internal12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit unwind label %bb.i

_ZN6google8protobuf8internal12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit: ; preds = %.invoke
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %.noexc21 unwind label %bb.j   ; 6 uses

.noexc21:                                         ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.y, ptr %5, align 8, !tbaa !45, !alias.scope !47
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !26   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  %i.af = add nuw nsw i64 %i.ad, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.af, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc21
  store ptr %i.z, ptr %5, align 8, !tbaa !26, !alias.scope !47
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !25
  store i64 %i.ag, ptr %i.y, align 8, !tbaa !25, !alias.scope !47
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !46
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.ah = phi i64 [ %i.ad, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ah, ptr %i.aj, align 8, !tbaa !46, !alias.scope !47
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !26
  store i64 0, ptr %i.ai, align 8, !tbaa !46
  store i8 0, ptr %i.aa, align 8, !tbaa !25
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !46 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !46
  %i.an = sub i64 4611686018427387903, %i.am
  %i.ao = icmp ult i64 %i.an, %i.ak
  br i1 %i.ao, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #15
          to label %.noexc22 unwind label %bb.k

.noexc22:                                         ; preds = %bb.h
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.g
  %i.ap = load ptr, ptr %5, align 8, !tbaa !26
  %i.aq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.ap, i64 noundef %i.ak)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.ar = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.y
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.at = load i64, ptr %i.y, align 8, !tbaa !25
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  %i.av = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !25
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.l

bb.i:                                             ; preds = %.invoke
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.j:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_111FormatNanosB5cxx11Ei.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_0
