inline.NumInlined: 181
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL15decShiftToLeastPhii:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @uprv_decNumberSameQuantum_78(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 10)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = or i32 %i.f, %i.c
  %i.h = and i32 %i.g, 112
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.c, 48
  %.not11 = icmp eq i32 %i.i, 0
  %i.j = and i32 %i.f, 48
  %.not12 = icmp eq i32 %i.j, 0
  %or.cond = or i1 %.not11, %.not12
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = and i8 %i.b, 64
  %.not13 = icmp eq i8 %i.k, 0
  br i1 %.not13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i8 %i.e, 6
  %.lobit = and i8 %i.l, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.n, %i.p
  %spec.select15 = zext i1 %i.q to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.c
  %.0 = phi i8 [ %.lobit, %bb.d ], [ 1, %bb.b ], [ %spec.select15, %bb.e ], [ 0, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.s, align 4
  store i32 1, ptr %0, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.0, ptr %i.t, align 1
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @uprv_decNumberScaleB_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 4
  %i.e = and i8 %i.d, 48
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i8, ptr %i.f, align 4               ; 4 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 48
  %.not28 = icmp eq i32 %i.i, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a) ; 0 uses
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.k = and i32 %i.h, 64
  %.not29 = icmp eq i32 %i.k, 0
  br i1 %.not29, label %bb.e, label %.thread43

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %.not30 = icmp eq i32 %i.m, 0
  br i1 %.not30, label %bb.f, label %.thread43

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %2, align 4                ; 7 uses
  %i.o = icmp slt i8 %i.g, 0                      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = icmp eq i32 %i.n, 1
  %i.s = and i8 %i.g, 112
  %i.t = or i8 %i.q, %i.s
  %i.u = icmp eq i8 %i.t, 0
  %or.cond87.i = select i1 %i.u, i1 %i.r, i1 false
  br i1 %or.cond87.i, label %_ZL9decGetIntPK9decNumber.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = zext i8 %i.q to i32                      ; 4 uses
  %i.w = icmp slt i32 %i.n, 11
  br i1 %i.w, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.g
  %i.x = icmp sgt i32 %i.n, 1
  br i1 %i.x, label %.lr.ph.i.preheader, label %.thread101.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.n to i64
  %i.z = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.z, 3                     ; 3 uses
  %i.aa = add nsw i32 %i.n, -2
  %i.ab = icmp ult i32 %i.aa, 3
  br i1 %i.ab, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.z, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.4110.i = phi i32 [ %i.v, %.lr.ph.i.preheader.new ], [ %i.bf, %.lr.ph.i ]
  %.671109.i = phi ptr [ %i.y, %.lr.ph.i.preheader.new ], [ %i.bg, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.ac = load i8, ptr %.671109.i, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = mul i32 %i.af, %i.ad
  %i.ah = add i32 %i.ag, %.4110.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.671109.i, i64 1
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = mul i32 %i.an, %i.ak
  %i.ap = add i32 %i.ao, %i.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %.671109.i, i64 2
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = mul i32 %i.av, %i.as
  %i.ax = add i32 %i.aw, %i.ap
  %i.ay = getelementptr inbounds nuw i8, ptr %.671109.i, i64 3
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = mul i32 %i.bd, %i.ba
  %i.bf = add i32 %i.be, %i.ax                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.671109.i, i64 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !85

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  %.4110.i.epil.init = phi i32 [ %i.v, %.lr.ph.i.preheader ], [ %i.bf, %._crit_edge.i.unr-lcssa ]
  %.671109.i.epil.init = phi ptr [ %i.y, %.lr.ph.i.preheader ], [ %i.bg, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod46 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod46)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.4110.i.epil = phi i32 [ %i.bm, %.lr.ph.i.epil ], [ %.4110.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.671109.i.epil = phi ptr [ %i.bn, %.lr.ph.i.epil ], [ %.671109.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bh = load i8, ptr %.671109.i.epil, align 1
  %i.bi = zext i8 %i.bh to i32
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i.epil
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = mul i32 %i.bk, %i.bi
  %i.bm = add i32 %i.bl, %.4110.i.epil            ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.671109.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !134

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bf, %._crit_edge.i.unr-lcssa ], [ %i.bm, %.lr.ph.i.epil ] ; 5 uses
  %i.bo = icmp eq i32 %i.n, 10
  br i1 %i.bo, label %bb.h, label %.thread101.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.bp = zext nneg i32 %i.n to i64
  %scevgep.a = getelementptr i8, ptr %2, i64 %i.bp
  %i.bq = getelementptr i8, ptr %scevgep.a, i64 8
  %i.br = sdiv i32 %.lcssa, 1000000000
  %i.bs = load i8, ptr %i.bq, align 1
  %i.bt = zext i8 %i.bs to i32
  %.not83.i = icmp ne i32 %i.br, %i.bt
  %i.bu = icmp sgt i32 %.lcssa, 1999999997
  %or.cond.i = select i1 %i.o, i1 %i.bu, i1 false
  %or.cond91.i = or i1 %or.cond.i, %.not83.i
  %i.bv = icmp sgt i8 %i.g, -1
  %i.bw = icmp sgt i32 %.lcssa, 999999999
  %or.cond4.i = select i1 %i.bv, i1 %i.bw, i1 false
  %i.bx = select i1 %or.cond91.i, i1 true, i1 %or.cond4.i
  br i1 %i.bx, label %.thread.i, label %.thread101.i

.thread.i:                                        ; preds = %bb.h, %bb.g
  %i.by = and i32 %i.v, 1
  %..i = or disjoint i32 %i.by, -2147483646
  br label %_ZL9decGetIntPK9decNumber.exit

.thread101.i:                                     ; preds = %.preheader.i, %bb.h, %._crit_edge.i
  %.4.lcssa.i37 = phi i32 [ %.lcssa, %._crit_edge.i ], [ %.lcssa, %bb.h ], [ %i.v, %.preheader.i ] ; 2 uses
  %i.bz = sub nsw i32 0, %.4.lcssa.i37
  %spec.select = select i1 %i.o, i32 %i.bz, i32 %.4.lcssa.i37
  br label %_ZL9decGetIntPK9decNumber.exit

_ZL9decGetIntPK9decNumber.exit:                   ; preds = %.thread101.i, %.thread.i
  %.3.i = phi i32 [ %spec.select, %.thread101.i ], [ %..i, %.thread.i ] ; 2 uses
  switch i32 %.3.i, label %_ZL9decGetIntPK9decNumber.exit.thread [
    i32 -2147483645, label %.thread43
    i32 -2147483646, label %.thread43
    i32 -2147483648, label %.thread43
  ]

_ZL9decGetIntPK9decNumber.exit.thread:            ; preds = %bb.f, %_ZL9decGetIntPK9decNumber.exit
  %.3.i39 = phi i32 [ %.3.i, %_ZL9decGetIntPK9decNumber.exit ], [ 0, %bb.f ] ; 2 uses
  %i.ca = tail call i32 @llvm.abs.i32(i32 %.3.i39, i1 true)
  %i.cb = load i32, ptr %3, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = add nsw i32 %i.cd, %i.cb
  %i.cf = shl nsw i32 %i.ce, 1
  %i.cg = icmp sgt i32 %i.ca, %i.cf
  br i1 %i.cg, label %.thread43, label %bb.i

bb.i:                                             ; preds = %_ZL9decGetIntPK9decNumber.exit.thread
  %i.ch = tail call ptr @uprv_decNumberCopy_78(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load i8, ptr %i.ci, align 4
  %i.ck = and i8 %i.cj, 64
  %.not31 = icmp eq i8 %i.ck, 0
  br i1 %.not31, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = add nsw i32 %i.cm, %.3.i39
  store i32 %i.cn, ptr %i.cl, align 4
  store i32 0, ptr %i.b, align 4
  call fastcc void @_ZL11decFinalizeP9decNumberP10decContextPiPj(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef %i.b, ptr noundef %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.c
  %.pr = load i32, ptr %i.a, align 4              ; 6 uses
  %.not32 = icmp eq i32 %.pr, 0
  br i1 %.not32, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = and i32 %.pr, 221
  %.not.i33 = icmp eq i32 %i.co, 0
  br i1 %.not.i33, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = and i32 %.pr, 1073741824
  %.not6.i = icmp eq i32 %i.cp, 0
  br i1 %.not6.i, label %.thread43, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = and i32 %.pr, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread43:                                        ; preds = %_ZL9decGetIntPK9decNumber.exit.thread, %_ZL9decGetIntPK9decNumber.exit, %_ZL9decGetIntPK9decNumber.exit, %_ZL9decGetIntPK9decNumber.exit, %bb.d, %bb.e, %bb.m
  %i.cr = phi i32 [ %.pr, %bb.m ], [ 128, %bb.d ], [ 128, %bb.e ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit.thread ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ct, align 4
  store i32 1, ptr %0, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.cu, align 1
  store i8 32, ptr %i.cs, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.l, %bb.n, %.thread43
  %.0.i = phi i32 [ %i.cq, %bb.n ], [ %i.cr, %.thread43 ], [ %.pr, %bb.l ]
  %i.cv = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) #15 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @uprv_decNumberShift_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 4
  %i.d = and i8 %i.c, 48
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i8, ptr %i.e, align 4               ; 4 uses
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 48
  %.not57 = icmp eq i32 %i.h, 0
  br i1 %.not57, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.i = and i32 %i.g, 64
  %.not58 = icmp eq i32 %i.i, 0
  br i1 %.not58, label %bb.d, label %.thread76

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %.not59 = icmp eq i32 %i.k, 0
  br i1 %.not59, label %bb.e, label %.thread76

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4                ; 7 uses
  %i.m = icmp slt i8 %i.f, 0                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = icmp eq i32 %i.l, 1
  %i.q = and i8 %i.f, 112
  %i.r = or i8 %i.o, %i.q
  %i.s = icmp eq i8 %i.r, 0
  %or.cond87.i = select i1 %i.s, i1 %i.p, i1 false
  br i1 %or.cond87.i, label %_ZL9decGetIntPK9decNumber.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = zext i8 %i.o to i32                      ; 4 uses
  %i.u = icmp slt i32 %i.l, 11
  br i1 %i.u, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.f
  %i.v = icmp sgt i32 %i.l, 1
  br i1 %i.v, label %.lr.ph.i.preheader, label %.thread101.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.l to i64
  %i.x = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %xtraiter = and i64 %i.x, 3                     ; 3 uses
  %i.y = add nsw i32 %i.l, -2
  %i.z = icmp ult i32 %i.y, 3
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.x, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.4110.i = phi i32 [ %i.t, %.lr.ph.i.preheader.new ], [ %i.bd, %.lr.ph.i ]
  %.671109.i = phi ptr [ %i.w, %.lr.ph.i.preheader.new ], [ %i.be, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.aa = load i8, ptr %.671109.i, align 1
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = mul i32 %i.ad, %i.ab
  %i.af = add i32 %i.ae, %.4110.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.671109.i, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = mul i32 %i.al, %i.ai
  %i.an = add i32 %i.am, %i.af
  %i.ao = getelementptr inbounds nuw i8, ptr %.671109.i, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 4
  %i.au = mul i32 %i.at, %i.aq
  %i.av = add i32 %i.au, %i.an
  %i.aw = getelementptr inbounds nuw i8, ptr %.671109.i, i64 3
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = mul i32 %i.bb, %i.ay
  %i.bd = add i32 %i.bc, %i.av                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.671109.i, i64 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !85

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  %.4110.i.epil.init = phi i32 [ %i.t, %.lr.ph.i.preheader ], [ %i.bd, %._crit_edge.i.unr-lcssa ]
  %.671109.i.epil.init = phi ptr [ %i.w, %.lr.ph.i.preheader ], [ %i.be, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.4110.i.epil = phi i32 [ %i.bk, %.lr.ph.i.epil ], [ %.4110.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.671109.i.epil = phi ptr [ %i.bl, %.lr.ph.i.epil ], [ %.671109.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bf = load i8, ptr %.671109.i.epil, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %indvars.iv.i.epil
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = mul i32 %i.bi, %i.bg
  %i.bk = add i32 %i.bj, %.4110.i.epil            ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.671109.i.epil, i64 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !135

._crit_edge.i:                                    ; preds = %.lr.ph.i.epil, %._crit_edge.i.unr-lcssa
  %.lcssa = phi i32 [ %i.bd, %._crit_edge.i.unr-lcssa ], [ %i.bk, %.lr.ph.i.epil ] ; 5 uses
  %i.bm = icmp eq i32 %i.l, 10
  br i1 %i.bm, label %bb.g, label %.thread101.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.bn = zext nneg i32 %i.l to i64
  %scevgep.a = getelementptr i8, ptr %2, i64 %i.bn
  %i.bo = getelementptr i8, ptr %scevgep.a, i64 8
  %i.bp = sdiv i32 %.lcssa, 1000000000
  %i.bq = load i8, ptr %i.bo, align 1
  %i.br = zext i8 %i.bq to i32
  %.not83.i = icmp ne i32 %i.bp, %i.br
  %i.bs = icmp sgt i32 %.lcssa, 1999999997
  %or.cond.i = select i1 %i.m, i1 %i.bs, i1 false
  %or.cond91.i = or i1 %or.cond.i, %.not83.i
  %i.bt = icmp sgt i8 %i.f, -1
  %i.bu = icmp sgt i32 %.lcssa, 999999999
  %or.cond4.i = select i1 %i.bt, i1 %i.bu, i1 false
  %i.bv = select i1 %or.cond91.i, i1 true, i1 %or.cond4.i
  br i1 %i.bv, label %.thread.i, label %.thread101.i

.thread.i:                                        ; preds = %bb.g, %bb.f
  %i.bw = and i32 %i.t, 1
  %..i = or disjoint i32 %i.bw, -2147483646
  br label %_ZL9decGetIntPK9decNumber.exit

.thread101.i:                                     ; preds = %.preheader.i, %bb.g, %._crit_edge.i
  %.4.lcssa.i69 = phi i32 [ %.lcssa, %._crit_edge.i ], [ %.lcssa, %bb.g ], [ %i.t, %.preheader.i ] ; 2 uses
  %i.bx = sub nsw i32 0, %.4.lcssa.i69
  %spec.select = select i1 %i.m, i32 %i.bx, i32 %.4.lcssa.i69
  br label %_ZL9decGetIntPK9decNumber.exit

_ZL9decGetIntPK9decNumber.exit:                   ; preds = %.thread101.i, %.thread.i
  %.3.i = phi i32 [ %spec.select, %.thread101.i ], [ %..i, %.thread.i ] ; 2 uses
  switch i32 %.3.i, label %_ZL9decGetIntPK9decNumber.exit.thread [
    i32 -2147483645, label %.thread76
    i32 -2147483646, label %.thread76
    i32 -2147483648, label %.thread76
  ]

_ZL9decGetIntPK9decNumber.exit.thread:            ; preds = %bb.e, %_ZL9decGetIntPK9decNumber.exit
  %.3.i71 = phi i32 [ %.3.i, %_ZL9decGetIntPK9decNumber.exit ], [ 0, %bb.e ] ; 8 uses
  %i.by = tail call i32 @llvm.abs.i32(i32 %.3.i71, i1 true)
  %i.bz = load i32, ptr %3, align 4
  %i.ca = icmp sgt i32 %i.by, %i.bz
  br i1 %i.ca, label %.thread76, label %bb.h

bb.h:                                             ; preds = %_ZL9decGetIntPK9decNumber.exit.thread
  %i.cb = tail call ptr @uprv_decNumberCopy_78(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %.not60 = icmp eq i32 %.3.i71, 0
  br i1 %.not60, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load i8, ptr %i.cc, align 4
  %i.ce = and i8 %i.cd, 64
  %.not61 = icmp eq i8 %i.ce, 0
  br i1 %.not61, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.cf = icmp sgt i32 %.3.i71, 0
  br i1 %i.cf, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.cg = load i32, ptr %3, align 4               ; 3 uses
  %i.ch = icmp eq i32 %.3.i71, %i.cg
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ci, align 1
  store i32 1, ptr %0, align 4
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.cj = load i32, ptr %0, align 4               ; 2 uses
  %i.ck = add nsw i32 %i.cj, %.3.i71              ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, %i.cg
  br i1 %i.cl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cm = sub nsw i32 %i.ck, %i.cg
  %i.cn = tail call fastcc noundef ptr @_ZL8decDecapP9decNumberi(ptr noundef nonnull %0, i32 noundef %i.cm) ; 0 uses
  %.pr = load i32, ptr %0, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.co = phi i32 [ %.pr, %bb.n ], [ %i.cj, %bb.m ] ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cr = load i8, ptr %i.cq, align 1
  %.not63 = icmp eq i8 %i.cr, 0
  br i1 %.not63, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ct = tail call fastcc noundef i32 @_ZL14decShiftToMostPhii(ptr noundef nonnull %i.cs, i32 noundef %i.co, i32 noundef %.3.i71)
  store i32 %i.ct, ptr %0, align 4
  br label %.thread

bb.r:                                             ; preds = %bb.j
  %i.cu = sub nsw i32 0, %.3.i71                  ; 2 uses
  %i.cv = load i32, ptr %0, align 4               ; 4 uses
  %.not62 = icmp sgt i32 %i.cv, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  br i1 %.not62, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.cw, align 1
  store i32 1, ptr %0, align 4
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.cx = icmp samesign ult i32 %i.cv, 50
  br i1 %i.cx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cy = zext nneg i32 %i.cv to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.dc = phi i32 [ %i.db, %bb.u ], [ %i.cv, %bb.t ]
  %i.dd = tail call fastcc noundef i32 @_ZL15decShiftToLeastPhii(ptr noundef nonnull %i.cw, i32 noundef %i.dc, i32 noundef %i.cu) ; 0 uses
  %i.de = load i32, ptr %0, align 4
  %i.df = add nsw i32 %i.de, %.3.i71
  store i32 %i.df, ptr %0, align 4
  br label %.thread

bb.w:                                             ; preds = %bb.a, %bb.b
  %i.dg = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a) ; 0 uses
  %.pr72.pre = load i32, ptr %i.a, align 4        ; 6 uses
  %.not64 = icmp eq i32 %.pr72.pre, 0
  br i1 %.not64, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = and i32 %.pr72.pre, 221
  %.not.i65 = icmp eq i32 %i.dh, 0
  br i1 %.not.i65, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = and i32 %.pr72.pre, 1073741824
  %.not6.i = icmp eq i32 %i.di, 0
  br i1 %.not6.i, label %.thread76, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = and i32 %.pr72.pre, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread76:                                        ; preds = %_ZL9decGetIntPK9decNumber.exit.thread, %_ZL9decGetIntPK9decNumber.exit, %_ZL9decGetIntPK9decNumber.exit, %_ZL9decGetIntPK9decNumber.exit, %bb.c, %bb.d, %bb.y
  %i.dk = phi i32 [ %.pr72.pre, %bb.y ], [ 128, %bb.c ], [ 128, %bb.d ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit.thread ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.dm, align 4
  store i32 1, ptr %0, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.dn, align 1
  store i8 32, ptr %i.dl, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.x, %bb.z, %.thread76
  %.0.i = phi i32 [ %i.dj, %bb.z ], [ %i.dk, %.thread76 ], [ %.pr72.pre, %bb.x ]
  %i.do = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) #15 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.q, %bb.l, %bb.v, %bb.s, %bb.i, %bb.h, %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @_ZL8decDecapP9decNumberi(ptr nofree noundef returned captures(address, ret: address, provenance) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4                ; 2 uses
  %.not = icmp slt i32 %1, %i.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 1
  br label %_ZL12decGetDigitsPhi.exit

bb.c:                                             ; preds = %bb.a
  %i.c = sub nsw i32 %i.a, %1                     ; 5 uses
  %i.d = icmp slt i32 %i.c, 50
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %i.c to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = zext i8 %i.h to i32
  %i.j = zext i8 %i.h to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.pn34 = phi i64 [ %i.j, %bb.e ], [ %i.e, %bb.d ]
  %i.k = phi i32 [ %i.i, %bb.e ], [ %i.c, %bb.d ] ; 4 uses
  %.neg35 = add i32 %i.c, 1
  %i.l = sub i32 %.neg35, %i.k                    ; 2 uses
  %.not33 = icmp eq i32 %i.l, 1
end_hunk_0
