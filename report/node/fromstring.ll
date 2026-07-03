inline.NumInlined: 196
inline.NumDeleted: 78
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v86bigint13ProcessorImpl15FromStringLargeENS0_8RWDigitsEPNS0_21FromStringAccumulatorE:bb.a
bb.c:                                             ; preds = %bb.a
  %.sroa.15.8.insert.ext406 = and i64 %i.i, 4294967295 ; 4 uses
  %i.p = shl nuw nsw i64 %.sroa.15.8.insert.ext406, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.s = load i64, ptr %i.r, align 8              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.u = load i64, ptr %i.t, align 8              ; 5 uses
  %i.v = icmp ugt i32 %i.j, 1
  br i1 %i.v, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.w = add nuw nsw i64 %i.i, 4294967294
  %i.x = zext i64 %i.s to i128                    ; 2 uses
  %i.y = and i64 %i.i, 4294967295                 ; 3 uses
  %i.z = and i64 %i.w, 4294967295                 ; 3 uses
  %.0.copyload.i.peel = load i64, ptr %i.e, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.0.copyload.i236.peel = load i64, ptr %i.aa, align 4
  %i.ab = icmp eq i64 %i.z, 0
  %i.ac = select i1 %i.ab, i64 %i.u, i64 %i.s
  %i.ad = zext i64 %.0.copyload.i.peel to i128
  %i.ae = zext i64 %i.ac to i128
  %i.af = mul nuw i128 %i.ad, %i.ae               ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = trunc nuw i128 %i.ag to i64
  %i.ai = trunc i128 %i.af to i64                 ; 2 uses
  %add.narrowed.i.peel = add i64 %.0.copyload.i236.peel, %i.ai ; 2 uses
  %add.narrowed.overflow.i.peel = icmp ult i64 %add.narrowed.i.peel, %i.ai
  %i.aj = zext i1 %add.narrowed.overflow.i.peel to i64
  store i64 %add.narrowed.i.peel, ptr %1, align 4
  %i.ak = add nuw i64 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ak, ptr %i.al, align 4
  %i.am = icmp samesign ugt i64 %i.y, 3
  br i1 %i.am, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.0.copyload.i.peel497 = load i64, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.0.copyload.i236.peel498 = load i64, ptr %i.ao, align 4
  %i.ap = icmp eq i64 %i.z, 2
  %i.aq = select i1 %i.ap, i64 %i.u, i64 %i.s
  %i.ar = zext i64 %.0.copyload.i.peel497 to i128
  %i.as = zext i64 %i.aq to i128                  ; 2 uses
  %i.at = mul nuw i128 %i.ar, %i.as               ; 2 uses
  %i.au = lshr i128 %i.at, 64
  %i.av = trunc nuw i128 %i.au to i64
  %i.aw = trunc i128 %i.at to i64                 ; 2 uses
  %add.narrowed.i.peel499 = add i64 %.0.copyload.i236.peel498, %i.aw ; 2 uses
  %add.narrowed.overflow.i.peel500 = icmp ult i64 %add.narrowed.i.peel499, %i.aw
  %i.ax = zext i1 %add.narrowed.overflow.i.peel500 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %add.narrowed.i.peel499, ptr %i.ay, align 4
  %i.az = add nuw i64 %i.ax, %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.az, ptr %i.ba, align 4
  %i.bb = mul nuw i128 %i.as, %i.x                ; 2 uses
  %i.bc = lshr i128 %i.bb, 64
  %i.bd = trunc nuw i128 %i.bc to i64
  %i.be = trunc i128 %i.bb to i64
  store i64 %i.be, ptr %i.an, align 4
  store i64 %i.bd, ptr %i.ao, align 4
  %i.bf = icmp samesign ugt i64 %i.y, 5
  br i1 %i.bf, label %.peel.next496, label %._crit_edge

.peel.next496:                                    ; preds = %bb.e, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 4, %bb.e ] ; 7 uses
  %i.bg = or disjoint i64 %indvars.iv, 1          ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %.0.copyload.i = load i64, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bg ; 2 uses
  %.0.copyload.i236 = load i64, ptr %i.bi, align 4
  %i.bj = icmp eq i64 %indvars.iv, %i.z
  %i.bk = select i1 %i.bj, i64 %i.u, i64 %i.s     ; 2 uses
  %i.bl = zext i64 %.0.copyload.i to i128
  %i.bm = zext i64 %i.bk to i128                  ; 2 uses
  %i.bn = mul nuw i128 %i.bl, %i.bm               ; 2 uses
  %i.bo = lshr i128 %i.bn, 64
  %i.bp = trunc nuw i128 %i.bo to i64
  %i.bq = trunc i128 %i.bn to i64                 ; 2 uses
  %add.narrowed.i = add i64 %.0.copyload.i236, %i.bq ; 2 uses
  %add.narrowed.overflow.i = icmp ult i64 %add.narrowed.i, %i.bq
  %i.br = zext i1 %add.narrowed.overflow.i to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 %add.narrowed.i, ptr %i.bs, align 4
  %i.bt = add nuw i64 %i.br, %i.bp
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bg
  store i64 %i.bt, ptr %i.bu, align 4
  %.not230 = icmp eq i64 %i.bk, %i.u
  br i1 %.not230, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.peel.next496
  %i.bv = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bw = getelementptr i8, ptr %i.bv, i64 -16
  %i.bx = load i64, ptr %i.bw, align 4
  store i64 %i.bx, ptr %i.bh, align 4
  %i.by = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bz = getelementptr i8, ptr %i.by, i64 -8
  %i.ca = load i64, ptr %i.bz, align 4
  br label %bb.h

bb.g:                                             ; preds = %.peel.next496
  %i.cb = mul nuw i128 %i.bm, %i.x                ; 2 uses
  %i.cc = lshr i128 %i.cb, 64
  %i.cd = trunc nuw i128 %i.cc to i64
  %i.ce = trunc i128 %i.cb to i64
  store i64 %i.ce, ptr %i.bh, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %storemerge = phi i64 [ %i.ca, %bb.f ], [ %i.cd, %bb.g ]
  store i64 %storemerge, ptr %i.bi, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cf = or disjoint i64 %indvars.iv.next, 1
  %i.cg = icmp samesign ult i64 %i.cf, %i.y
  br i1 %i.cg, label %.peel.next496, label %._crit_edge.loopexit.loopexit, !llvm.loop !10

._crit_edge.loopexit.loopexit:                    ; preds = %bb.h
  %i.ch = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.e, %._crit_edge.loopexit.loopexit, %bb.c
  %.0211.lcssa = phi i32 [ 0, %bb.c ], [ 4, %bb.e ], [ 2, %bb.d ], [ %i.ch, %._crit_edge.loopexit.loopexit ] ; 4 uses
  %i.ci = icmp ult i32 %.0211.lcssa, %i.j
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.cj = zext i32 %.0211.lcssa to i64            ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cj
  %i.cm = load i64, ptr %i.ck, align 4
  store i64 %i.cm, ptr %i.cl, align 4
  store i64 %i.u, ptr %i.ck, align 4
  %i.cn = add i32 %.0211.lcssa, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.1212 = phi i32 [ %i.cn, %bb.i ], [ %.0211.lcssa, %._crit_edge ] ; 2 uses
  %i.co = lshr i32 %.1212, 1                      ; 2 uses
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = load i64, ptr %0, align 8
  %i.cr = add i64 %i.cq, %i.cp                    ; 2 uses
  store i64 %i.cr, ptr %0, align 8
  %i.cs = icmp ugt i64 %i.cr, 4999999
  br i1 %i.cs, label %bb.k, label %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit

bb.k:                                             ; preds = %bb.j
  store i64 0, ptr %0, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call noundef zeroext i1 %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cu) #10, !inline_history !12
  br i1 %i.cy, label %bb.l, label %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit

bb.l:                                             ; preds = %bb.k
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.cz, align 8
  br label %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit

_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit: ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.7321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.7321.0..sroa_idx322 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.db = icmp ugt i32 %.1212, 3
  br i1 %i.db, label %.lr.ph598, label %._crit_edge599

.lr.ph598:                                        ; preds = %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit, %.critedge234
  %.0209597 = phi i32 [ %i.iq, %.critedge234 ], [ %i.co, %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit ] ; 2 uses
  %.0213596 = phi i32 [ %i.dc, %.critedge234 ], [ 2, %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit ] ; 16 uses
  %.sroa.15.0595 = phi i64 [ %.sroa.7369.0591, %.critedge234 ], [ %.sroa.15.8.insert.ext406, %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit ]
  %.sroa.0393.0594 = phi ptr [ %.sroa.0367.0590, %.critedge234 ], [ %1, %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit ] ; 7 uses
  %.sroa.12.0593 = phi i32 [ %.sroa.15.8.extract.trunc, %.critedge234 ], [ %i.j, %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit ] ; 6 uses
  %.sroa.0383.0592 = phi ptr [ %.sroa.0393.0594, %.critedge234 ], [ %i.e, %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit ] ; 7 uses
  %.sroa.7369.0591 = phi i64 [ %.sroa.7369.0.insert.ext373, %.critedge234 ], [ %.sroa.15.8.insert.ext406, %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit ] ; 3 uses
  %.sroa.0367.0590 = phi ptr [ %.sroa.0383.0592, %.critedge234 ], [ %i.q, %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit ] ; 6 uses
  %.sroa.0367.0590605 = ptrtoaddr ptr %.sroa.0367.0590 to i64
  %.sroa.0393.0594601 = ptrtoaddr ptr %.sroa.0393.0594 to i64 ; 2 uses
  %.sroa.0383.0592602 = ptrtoaddr ptr %.sroa.0383.0592 to i64
  %.sroa.7369.8.extract.trunc = trunc nuw i64 %.sroa.7369.0591 to i32 ; 2 uses
  %.sroa.15.8.extract.trunc = trunc nuw i64 %.sroa.15.0595 to i32 ; 4 uses
  %i.dc = shl i32 %.0213596, 1                    ; 7 uses
  %.not475 = icmp eq i32 %i.dc, 0
  %i.dd = zext nneg i32 %.0209597 to i64
  %wide.trip.count = zext i32 %i.dc to i64        ; 2 uses
  %i.de = shl i32 %.0213596, 1
  %i.df = shl i32 %.0213596, 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph598, %.critedge232
  %indvar = phi i32 [ 0, %.lr.ph598 ], [ %indvar.next, %.critedge232 ] ; 2 uses
  %indvars.iv510 = phi i64 [ 0, %.lr.ph598 ], [ %indvars.iv.next511, %.critedge232 ] ; 5 uses
  %i.dg = mul i32 %i.de, %indvar                  ; 2 uses
  %i.dh = zext i32 %i.dg to i64
  %i.di = sub i32 %i.dg, %i.df
  %i.dj = zext i32 %i.di to i64
  %i.dk = sub nsw i64 %i.dh, %i.dj
  %i.dl = trunc nuw nsw i64 %indvars.iv510 to i32 ; 2 uses
  %i.dm = mul i32 %.0213596, %i.dl                ; 5 uses
  %i.dn = zext i32 %i.dm to i64                   ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0393.0594, i64 %i.dn ; 7 uses
  %i.dp = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.15.8.extract.trunc, i32 %i.dm) ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 %.0213596)
  %i.dq = add i32 %i.dm, %.0213596                ; 3 uses
  %i.dr = zext i32 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0383.0592, i64 %i.dn ; 4 uses
  %i.dt = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.12.0593, i32 %i.dm)
  %.sroa.speculated.i238 = tail call i32 @llvm.umin.i32(i32 %i.dt, i32 %.0213596) ; 4 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0383.0592, i64 %i.dr ; 5 uses
  %i.dv = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.12.0593, i32 %i.dq)
  %.sroa.speculated.i239 = tail call i32 @llvm.umin.i32(i32 %i.dv, i32 %.0213596) ; 5 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0367.0590, i64 %i.dn ; 2 uses
  %i.dx = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.7369.8.extract.trunc, i32 %i.dm)
  %.sroa.speculated.i.i240 = tail call i32 @llvm.umin.i32(i32 %i.dx, i32 %i.dc) ; 2 uses
  %.sroa.speculated.i.i241 = tail call i32 @llvm.umin.i32(i32 %i.dp, i32 %i.dc)
  store ptr %i.du, ptr %4, align 8
  store i32 %.sroa.speculated.i239, ptr %.sroa.7321.0..sroa_idx, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl8MultiplyENS0_8RWDigitsENS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.dw, i32 %.sroa.speculated.i.i240, ptr %i.do, i32 %.sroa.speculated.i, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %4) #10
  %i.dy = load i32, ptr %i.da, align 8
  %i.dz = icmp eq i32 %i.dy, 1
  br i1 %i.dz, label %_ZN2v86bigint7StorageD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ea = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.15.8.extract.trunc, i32 %i.dq)
  %.sroa.speculated.i237 = tail call i32 @llvm.umin.i32(i32 %i.ea, i32 %.0213596)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0393.0594, i64 %i.dr
  %i.ec = tail call noundef i64 @_ZN2v86bigint20AddAndReturnOverflowENS0_8RWDigitsENS0_6DigitsE(ptr %i.dw, i32 %.sroa.speculated.i.i240, ptr %i.eb, i32 %.sroa.speculated.i237) #10 ; 0 uses
  %.not227 = icmp eq i64 %indvars.iv510, 0
  br i1 %.not227, label %.critedge232, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ed = icmp samesign ugt i64 %indvars.iv510, 2
  br i1 %i.ed, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.ee = trunc i64 %indvars.iv510 to i32
  %i.ef = add i32 %i.ee, -2
  %i.eg = mul i32 %i.ef, %.0213596                ; 3 uses
  %i.eh = zext i32 %i.eg to i64                   ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0383.0592, i64 %i.eh ; 3 uses
  %i.ej = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.12.0593, i32 %i.eg)
  %.sroa.speculated.i242 = tail call i32 @llvm.umin.i32(i32 %i.ej, i32 %.0213596) ; 3 uses
  %i.ek = add i32 %i.eg, %.0213596                ; 2 uses
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0383.0592, i64 %i.el ; 3 uses
  %i.en = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.12.0593, i32 %i.ek)
  %.sroa.speculated.i243 = tail call i32 @llvm.umin.i32(i32 %i.en, i32 %.0213596) ; 3 uses
  %.not1.i.i = icmp eq i32 %.sroa.speculated.i238, 0
  br i1 %.not1.i.i, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.eo = zext i32 %.sroa.speculated.i238 to i64
  %indvars.iv.next.i21.i = add nsw i64 %i.eo, -1  ; 3 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next.i21.i
  %.0.copyload.i.i.i22.i = load i64, ptr %i.ep, align 1
  %i.eq = icmp eq i64 %.0.copyload.i.i.i22.i, 0
  br i1 %i.eq, label %.lr.ph.i.preheader, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.i
  %indvars.i.i571 = trunc i64 %indvars.iv.next.i21.i to i32 ; 2 uses
  %.not.i.i572 = icmp eq i32 %indvars.i.i571, 0
  br i1 %.not.i.i572, label %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i, label %.lr.ph, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph.i.preheader
  br label %bb.q, !llvm.loop !13

bb.q:                                             ; preds = %.lr.ph, %.lr.ph.i
  %indvars.i.i574 = phi i32 [ %indvars.i.i571, %.lr.ph ], [ %indvars.i.i, %.lr.ph.i ]
  %indvars.iv.next.i23.i573 = phi i64 [ %indvars.iv.next.i21.i, %.lr.ph ], [ %indvars.iv.next.i.i, %.lr.ph.i ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.next.i23.i573, -1 ; 3 uses
  %i.er = and i64 %indvars.iv.next.i.i, 4294967295
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.er
  %.0.copyload.i.i.i.i = load i64, ptr %i.es, align 1
  %i.et = icmp eq i64 %.0.copyload.i.i.i.i, 0
  br i1 %i.et, label %.lr.ph.i, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i, !llvm.loop !13

.lr.ph.i:                                         ; preds = %bb.q
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32 ; 2 uses
  %.not.i.i = icmp eq i32 %indvars.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i_crit_edge, label %bb.q, !llvm.loop !13

.lr.ph.i.._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i_crit_edge: ; preds = %.lr.ph.i
  br label %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i, !llvm.loop !13

._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i: ; preds = %.lr.ph.i.._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i_crit_edge, %.lr.ph.i.preheader
  br label %_ZN2v86bigint6Digits9NormalizeEv.exit.i, !llvm.loop !13

_ZN2v86bigint6Digits9NormalizeEv.exit.i:          ; preds = %bb.q, %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i, %.lr.ph.i.i, %bb.p
  %.sroa.319.1.i = phi i32 [ 0, %bb.p ], [ %.sroa.speculated.i238, %.lr.ph.i.i ], [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i ], [ %indvars.i.i574, %bb.q ] ; 2 uses
  %.not1.i5.i = icmp eq i32 %.sroa.speculated.i242, 0
  br i1 %.not1.i5.i, label %_ZN2v86bigint6Digits9NormalizeEv.exit12.i, label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit.i
  %i.eu = zext i32 %.sroa.speculated.i242 to i64
  %indvars.iv.next.i826.i = add nsw i64 %i.eu, -1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next.i826.i
  %.0.copyload.i.i.i927.i = load i64, ptr %i.ev, align 1
  %i.ew = icmp eq i64 %.0.copyload.i.i.i927.i, 0
  br i1 %i.ew, label %.lr.ph29.i.preheader, label %_ZN2v86bigint6Digits9NormalizeEv.exit12.i

.lr.ph29.i.preheader:                             ; preds = %.lr.ph.i6.i
  %indvars.i10.i575 = trunc i64 %indvars.iv.next.i826.i to i32 ; 2 uses
  %.not.i11.i576 = icmp eq i32 %indvars.i10.i575, 0
  br i1 %.not.i11.i576, label %._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i, label %.lr.ph579, !llvm.loop !13

.lr.ph579:                                        ; preds = %.lr.ph29.i.preheader
  br label %bb.r, !llvm.loop !13

bb.r:                                             ; preds = %.lr.ph579, %.lr.ph29.i
  %indvars.i10.i578 = phi i32 [ %indvars.i10.i575, %.lr.ph579 ], [ %indvars.i10.i, %.lr.ph29.i ]
  %indvars.iv.next.i828.i577 = phi i64 [ %indvars.iv.next.i826.i, %.lr.ph579 ], [ %indvars.iv.next.i8.i, %.lr.ph29.i ]
  %indvars.iv.next.i8.i = add nsw i64 %indvars.iv.next.i828.i577, -1 ; 3 uses
  %i.ex = and i64 %indvars.iv.next.i8.i, 4294967295
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.ex
  %.0.copyload.i.i.i9.i = load i64, ptr %i.ey, align 1
  %i.ez = icmp eq i64 %.0.copyload.i.i.i9.i, 0
  br i1 %i.ez, label %.lr.ph29.i, label %_ZN2v86bigint6Digits9NormalizeEv.exit12.i, !llvm.loop !13

.lr.ph29.i:                                       ; preds = %bb.r
  %indvars.i10.i = trunc i64 %indvars.iv.next.i8.i to i32 ; 2 uses
  %.not.i11.i = icmp eq i32 %indvars.i10.i, 0
  br i1 %.not.i11.i, label %.lr.ph29.i.._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i_crit_edge, label %bb.r, !llvm.loop !13

.lr.ph29.i.._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i_crit_edge: ; preds = %.lr.ph29.i
  br label %._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i, !llvm.loop !13

._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i: ; preds = %.lr.ph29.i.._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i_crit_edge, %.lr.ph29.i.preheader
  br label %_ZN2v86bigint6Digits9NormalizeEv.exit12.i, !llvm.loop !13

_ZN2v86bigint6Digits9NormalizeEv.exit12.i:        ; preds = %bb.r, %._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i, %.lr.ph.i6.i, %_ZN2v86bigint6Digits9NormalizeEv.exit.i
  %.sroa.3.1.i = phi i32 [ 0, %_ZN2v86bigint6Digits9NormalizeEv.exit.i ], [ %.sroa.speculated.i242, %.lr.ph.i6.i ], [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i ], [ %indvars.i10.i578, %bb.r ]
  %.not.i13.i = icmp eq i32 %.sroa.319.1.i, %.sroa.3.1.i
  br i1 %.not.i13.i, label %.preheader.preheader.i.i, label %.critedge

.preheader.preheader.i.i:                         ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit12.i
  %i.fa = zext i32 %.sroa.319.1.i to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.preheader.i.i
  %indvars.iv.i14.i = phi i64 [ %i.fa, %.preheader.preheader.i.i ], [ %indvars.iv.next.i15.i, %bb.s ]
  %indvars.iv.next.i15.i = add nsw i64 %indvars.iv.i14.i, -1 ; 3 uses
  %i.fb = and i64 %indvars.iv.next.i15.i, 2147483648
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %bb.s, label %_ZN2v86bigint7CompareENS0_6DigitsES1_.exit

bb.s:                                             ; preds = %.preheader.i.i
  %i.fd = and i64 %indvars.iv.next.i15.i, 2147483647 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.fd
  %.0.copyload.i.i.i16.i = load i64, ptr %i.fe, align 1
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.fd
  %.0.copyload.i.i12.i.i = load i64, ptr %i.ff, align 1
  %i.fg = icmp eq i64 %.0.copyload.i.i.i16.i, %.0.copyload.i.i12.i.i
  br i1 %i.fg, label %.preheader.i.i, label %.critedge, !llvm.loop !14

_ZN2v86bigint7CompareENS0_6DigitsES1_.exit:       ; preds = %.preheader.i.i
  %.not1.i.i244 = icmp eq i32 %.sroa.speculated.i239, 0
  br i1 %.not1.i.i244, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i248, label %.lr.ph.i.i245

.lr.ph.i.i245:                                    ; preds = %_ZN2v86bigint7CompareENS0_6DigitsES1_.exit
  %i.fh = zext i32 %.sroa.speculated.i239 to i64
  %indvars.iv.next.i21.i246 = add nsw i64 %i.fh, -1 ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next.i21.i246
  %.0.copyload.i.i.i22.i247 = load i64, ptr %i.fi, align 1
  %i.fj = icmp eq i64 %.0.copyload.i.i.i22.i247, 0
  br i1 %i.fj, label %.lr.ph.i272.preheader, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i248

.lr.ph.i272.preheader:                            ; preds = %.lr.ph.i.i245
  %indvars.i.i274580 = trunc i64 %indvars.iv.next.i21.i246 to i32 ; 2 uses
  %.not.i.i275581 = icmp eq i32 %indvars.i.i274580, 0
  br i1 %.not.i.i275581, label %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i278, label %.lr.ph584, !llvm.loop !13

.lr.ph584:                                        ; preds = %.lr.ph.i272.preheader
  br label %bb.t, !llvm.loop !13

bb.t:                                             ; preds = %.lr.ph584, %.lr.ph.i272
  %indvars.i.i274583 = phi i32 [ %indvars.i.i274580, %.lr.ph584 ], [ %indvars.i.i274, %.lr.ph.i272 ]
  %indvars.iv.next.i23.i273582 = phi i64 [ %indvars.iv.next.i21.i246, %.lr.ph584 ], [ %indvars.iv.next.i.i276, %.lr.ph.i272 ]
  %indvars.iv.next.i.i276 = add nsw i64 %indvars.iv.next.i23.i273582, -1 ; 3 uses
  %i.fk = and i64 %indvars.iv.next.i.i276, 4294967295
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fk
  %.0.copyload.i.i.i.i277 = load i64, ptr %i.fl, align 1
  %i.fm = icmp eq i64 %.0.copyload.i.i.i.i277, 0
  br i1 %i.fm, label %.lr.ph.i272, label %_ZN2v86bigint6Digits9NormalizeEv.exit.i248, !llvm.loop !13

.lr.ph.i272:                                      ; preds = %bb.t
  %indvars.i.i274 = trunc i64 %indvars.iv.next.i.i276 to i32 ; 2 uses
  %.not.i.i275 = icmp eq i32 %indvars.i.i274, 0
  br i1 %.not.i.i275, label %.lr.ph.i272.._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i278_crit_edge, label %bb.t, !llvm.loop !13

.lr.ph.i272.._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i278_crit_edge: ; preds = %.lr.ph.i272
  br label %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i278, !llvm.loop !13

._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i278: ; preds = %.lr.ph.i272.._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i278_crit_edge, %.lr.ph.i272.preheader
  br label %_ZN2v86bigint6Digits9NormalizeEv.exit.i248, !llvm.loop !13

_ZN2v86bigint6Digits9NormalizeEv.exit.i248:       ; preds = %bb.t, %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i278, %.lr.ph.i.i245, %_ZN2v86bigint7CompareENS0_6DigitsES1_.exit
  %.sroa.319.1.i249 = phi i32 [ 0, %_ZN2v86bigint7CompareENS0_6DigitsES1_.exit ], [ %.sroa.speculated.i239, %.lr.ph.i.i245 ], [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit.loopexit_crit_edge.i278 ], [ %indvars.i.i274583, %bb.t ] ; 2 uses
  %.not1.i5.i250 = icmp eq i32 %.sroa.speculated.i243, 0
  br i1 %.not1.i5.i250, label %_ZN2v86bigint6Digits9NormalizeEv.exit12.i254, label %.lr.ph.i6.i251

.lr.ph.i6.i251:                                   ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit.i248
  %i.fn = zext i32 %.sroa.speculated.i243 to i64
  %indvars.iv.next.i826.i252 = add nsw i64 %i.fn, -1 ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next.i826.i252
  %.0.copyload.i.i.i927.i253 = load i64, ptr %i.fo, align 1
  %i.fp = icmp eq i64 %.0.copyload.i.i.i927.i253, 0
  br i1 %i.fp, label %.lr.ph29.i265.preheader, label %_ZN2v86bigint6Digits9NormalizeEv.exit12.i254

.lr.ph29.i265.preheader:                          ; preds = %.lr.ph.i6.i251
  %indvars.i10.i267585 = trunc i64 %indvars.iv.next.i826.i252 to i32 ; 2 uses
  %.not.i11.i268586 = icmp eq i32 %indvars.i10.i267585, 0
  br i1 %.not.i11.i268586, label %._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i271, label %.lr.ph589, !llvm.loop !13

.lr.ph589:                                        ; preds = %.lr.ph29.i265.preheader
  br label %bb.u, !llvm.loop !13

bb.u:                                             ; preds = %.lr.ph589, %.lr.ph29.i265
  %indvars.i10.i267588 = phi i32 [ %indvars.i10.i267585, %.lr.ph589 ], [ %indvars.i10.i267, %.lr.ph29.i265 ]
  %indvars.iv.next.i828.i266587 = phi i64 [ %indvars.iv.next.i826.i252, %.lr.ph589 ], [ %indvars.iv.next.i8.i269, %.lr.ph29.i265 ]
  %indvars.iv.next.i8.i269 = add nsw i64 %indvars.iv.next.i828.i266587, -1 ; 3 uses
  %i.fq = and i64 %indvars.iv.next.i8.i269, 4294967295
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.fq
  %.0.copyload.i.i.i9.i270 = load i64, ptr %i.fr, align 1
  %i.fs = icmp eq i64 %.0.copyload.i.i.i9.i270, 0
  br i1 %i.fs, label %.lr.ph29.i265, label %_ZN2v86bigint6Digits9NormalizeEv.exit12.i254, !llvm.loop !13

.lr.ph29.i265:                                    ; preds = %bb.u
  %indvars.i10.i267 = trunc i64 %indvars.iv.next.i8.i269 to i32 ; 2 uses
  %.not.i11.i268 = icmp eq i32 %indvars.i10.i267, 0
  br i1 %.not.i11.i268, label %.lr.ph29.i265.._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i271_crit_edge, label %bb.u, !llvm.loop !13

.lr.ph29.i265.._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i271_crit_edge: ; preds = %.lr.ph29.i265
  br label %._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i271, !llvm.loop !13

._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i271: ; preds = %.lr.ph29.i265.._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i271_crit_edge, %.lr.ph29.i265.preheader
  br label %_ZN2v86bigint6Digits9NormalizeEv.exit12.i254, !llvm.loop !13

_ZN2v86bigint6Digits9NormalizeEv.exit12.i254:     ; preds = %bb.u, %._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i271, %.lr.ph.i6.i251, %_ZN2v86bigint6Digits9NormalizeEv.exit.i248
  %.sroa.3.1.i255 = phi i32 [ 0, %_ZN2v86bigint6Digits9NormalizeEv.exit.i248 ], [ %.sroa.speculated.i243, %.lr.ph.i6.i251 ], [ 0, %._ZN2v86bigint6Digits9NormalizeEv.exit12.loopexit_crit_edge.i271 ], [ %indvars.i10.i267588, %bb.u ]
  %.not.i13.i256 = icmp eq i32 %.sroa.319.1.i249, %.sroa.3.1.i255
  br i1 %.not.i13.i256, label %.preheader.preheader.i.i258, label %.critedge

.preheader.preheader.i.i258:                      ; preds = %_ZN2v86bigint6Digits9NormalizeEv.exit12.i254
  %i.ft = zext i32 %.sroa.319.1.i249 to i64
  br label %.preheader.i.i259

.preheader.i.i259:                                ; preds = %bb.v, %.preheader.preheader.i.i258
  %indvars.iv.i14.i260 = phi i64 [ %i.ft, %.preheader.preheader.i.i258 ], [ %indvars.iv.next.i15.i261, %bb.v ]
  %indvars.iv.next.i15.i261 = add nsw i64 %indvars.iv.i14.i260, -1 ; 3 uses
  %i.fu = and i64 %indvars.iv.next.i15.i261, 2147483648
  %i.fv = icmp eq i64 %i.fu, 0
  br i1 %i.fv, label %bb.v, label %_ZN2v86bigint7CompareENS0_6DigitsES1_.exit279

bb.v:                                             ; preds = %.preheader.i.i259
  %i.fw = and i64 %indvars.iv.next.i15.i261, 2147483647 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fw
  %.0.copyload.i.i.i16.i262 = load i64, ptr %i.fx, align 1
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.fw
  %.0.copyload.i.i12.i.i263 = load i64, ptr %i.fy, align 1
  %i.fz = icmp eq i64 %.0.copyload.i.i.i16.i262, %.0.copyload.i.i12.i.i263
  br i1 %i.fz, label %.preheader.i.i259, label %.critedge, !llvm.loop !14

_ZN2v86bigint7CompareENS0_6DigitsES1_.exit279:    ; preds = %.preheader.i.i259
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0393.0594, i64 %i.eh ; 5 uses
  br i1 %.not475, label %.critedge232, label %vector.memcheck620

vector.memcheck620:                               ; preds = %_ZN2v86bigint7CompareENS0_6DigitsES1_.exit279
  %6 = and i64 %i.dk, 2305843009213693948
  %diff.check621 = icmp eq i64 %6, 0
  br i1 %diff.check621, label %.lr.ph453, label %vector.body627

vector.body627:                                   ; preds = %vector.memcheck620, %vector.body627
  %index628 = phi i64 [ %index.next631, %vector.body627 ], [ 0, %vector.memcheck620 ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %index628 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load629 = load <2 x i64>, ptr %i.gb, align 1
  %wide.load630 = load <2 x i64>, ptr %i.gc, align 1
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index628 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <2 x i64> %wide.load629, ptr %i.gd, align 4
  store <2 x i64> %wide.load630, ptr %i.ge, align 4
  %index.next631 = add nuw i64 %index628, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next631, %wide.trip.count
  br i1 %i.gf, label %.critedge232, label %vector.body627, !llvm.loop !15

.lr.ph453:                                        ; preds = %vector.memcheck620, %.lr.ph453
  %indvars.iv507 = phi i64 [ %indvars.iv.next508.3, %.lr.ph453 ], [ 0, %vector.memcheck620 ] ; 6 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv507
  %.0.copyload.i.i = load i64, ptr %i.gg, align 1
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv507
  store i64 %.0.copyload.i.i, ptr %i.gh, align 4
  %indvars.iv.next508 = or disjoint i64 %indvars.iv507, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next508
  %.0.copyload.i.i.1 = load i64, ptr %i.gi, align 1
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next508
  store i64 %.0.copyload.i.i.1, ptr %i.gj, align 4
  %indvars.iv.next508.1 = or disjoint i64 %indvars.iv507, 2 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next508.1
  %.0.copyload.i.i.2 = load i64, ptr %i.gk, align 1
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next508.1
  store i64 %.0.copyload.i.i.2, ptr %i.gl, align 4
  %indvars.iv.next508.2 = or disjoint i64 %indvars.iv507, 3 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next508.2
  %.0.copyload.i.i.3 = load i64, ptr %i.gm, align 1
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv.next508.2
  store i64 %.0.copyload.i.i.3, ptr %i.gn, align 4
  %indvars.iv.next508.3 = add nuw nsw i64 %indvars.iv507, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next508.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.critedge232, label %.lr.ph453, !llvm.loop !18

.critedge:                                        ; preds = %bb.s, %bb.v, %_ZN2v86bigint6Digits9NormalizeEv.exit12.i254, %_ZN2v86bigint6Digits9NormalizeEv.exit12.i, %bb.o
  store ptr %i.du, ptr %5, align 8
  store i32 %.sroa.speculated.i239, ptr %.sroa.7321.0..sroa_idx322, align 8
  tail call void @_ZN2v86bigint13ProcessorImpl8MultiplyENS0_8RWDigitsENS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.do, i32 %.sroa.speculated.i.i241, ptr %i.ds, i32 %.sroa.speculated.i238, ptr noundef nonnull byval(%"class.v8::bigint::Digits") align 8 %5) #10
  %i.go = load i32, ptr %i.da, align 8
  %i.gp = icmp eq i32 %i.go, 1
  br i1 %i.gp, label %_ZN2v86bigint7StorageD2Ev.exit, label %.critedge232

.critedge232:                                     ; preds = %vector.body627, %.lr.ph453, %_ZN2v86bigint7CompareENS0_6DigitsES1_.exit279, %.critedge, %bb.n
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 2 ; 3 uses
  %i.gq = or disjoint i64 %indvars.iv.next511, 1
  %.not228 = icmp samesign ult i64 %i.gq, %i.dd
  %indvar.next = add i32 %indvar, 1
  br i1 %.not228, label %bb.m, label %bb.w, !llvm.loop !19

bb.w:                                             ; preds = %.critedge232
  %i.gr = trunc nuw nsw i64 %indvars.iv.next511 to i32 ; 3 uses
  %i.gs = icmp samesign ugt i32 %.0209597, %i.gr
  br i1 %i.gs, label %bb.x, label %.critedge234

bb.x:                                             ; preds = %bb.w
  %i.gt = mul i32 %.0213596, %i.gr                ; 4 uses
  %i.gu = zext i32 %i.gt to i64                   ; 5 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0393.0594, i64 %i.gu ; 4 uses
  %i.gw = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.15.8.extract.trunc, i32 %i.gt) ; 2 uses
  %.sroa.speculated.i281 = tail call i32 @llvm.umin.i32(i32 %i.gw, i32 %.0213596) ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0383.0592, i64 %i.gu ; 2 uses
  %i.gy = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.12.0593, i32 %i.gt)
  %.sroa.speculated.i282 = tail call i32 @llvm.umin.i32(i32 %i.gy, i32 %.0213596) ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0367.0590, i64 %i.gu ; 2 uses
  %i.ha = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.7369.8.extract.trunc, i32 %i.gt)
  %.sroa.speculated.i.i283 = tail call i32 @llvm.umin.i32(i32 %i.ha, i32 %i.dc) ; 2 uses
  %.sroa.speculated.i.i284 = tail call i32 @llvm.umin.i32(i32 %i.gw, i32 %i.dc) ; 2 uses
  %.not476 = icmp eq i32 %.sroa.speculated.i281, 0
  br i1 %.not476, label %.preheader435, label %.lr.ph459.preheader

.lr.ph459.preheader:                              ; preds = %bb.x
  %i.hb = zext i32 %.sroa.speculated.i281 to i64  ; 3 uses
  %min.iters.check608 = icmp ult i32 %.sroa.speculated.i281, 4
  %i.hc = sub i64 %.sroa.0367.0590605, %.sroa.0393.0594601
  %diff.check606 = icmp ult i64 %i.hc, 32
  %or.cond = select i1 %min.iters.check608, i1 true, i1 %diff.check606
  br i1 %or.cond, label %.lr.ph459.preheader657, label %vector.ph609

vector.ph609:                                     ; preds = %.lr.ph459.preheader
  %n.vec611 = and i64 %i.hb, 4294967292           ; 4 uses
  br label %vector.body612

vector.body612:                                   ; preds = %vector.body612, %vector.ph609
  %index613 = phi i64 [ 0, %vector.ph609 ], [ %index.next616, %vector.body612 ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %index613 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %wide.load614 = load <2 x i64>, ptr %i.hd, align 1
  %wide.load615 = load <2 x i64>, ptr %i.he, align 1
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %index613 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  store <2 x i64> %wide.load614, ptr %i.hf, align 4
  store <2 x i64> %wide.load615, ptr %i.hg, align 4
  %index.next616 = add nuw i64 %index613, 4       ; 2 uses
  %i.hh = icmp eq i64 %index.next616, %n.vec611
  br i1 %i.hh, label %middle.block617, label %vector.body612, !llvm.loop !20

middle.block617:                                  ; preds = %vector.body612
  %cmp.n618 = icmp eq i64 %n.vec611, %i.hb
  br i1 %cmp.n618, label %.preheader435.loopexit, label %.lr.ph459.preheader657

.lr.ph459.preheader657:                           ; preds = %.lr.ph459.preheader, %middle.block617
  %indvars.iv513.ph = phi i64 [ 0, %.lr.ph459.preheader ], [ %n.vec611, %middle.block617 ]
  br label %.lr.ph459

.preheader435.loopexit:                           ; preds = %.lr.ph459, %middle.block617
  %indvars.iv.next514.lcssa = phi i64 [ %n.vec611, %middle.block617 ], [ %indvars.iv.next514, %.lr.ph459 ]
  %i.hi = trunc nuw i64 %indvars.iv.next514.lcssa to i32
  br label %.preheader435

.preheader435:                                    ; preds = %.preheader435.loopexit, %bb.x
  %.0207.lcssa = phi i32 [ 0, %bb.x ], [ %i.hi, %.preheader435.loopexit ] ; 3 uses
  %i.hj = icmp ult i32 %.0207.lcssa, %.sroa.speculated.i.i283
  br i1 %i.hj, label %.lr.ph462.preheader, label %.preheader434

.lr.ph462.preheader:                              ; preds = %.preheader435
  %i.hk = zext i32 %.0207.lcssa to i64
  %i.hl = shl nuw nsw i64 %i.hk, 3
  %scevgep = getelementptr i8, ptr %.sroa.0367.0590, i64 %i.hl
  %i.hm = shl nuw nsw i64 %i.gu, 3
  %scevgep516 = getelementptr i8, ptr %scevgep, i64 %i.hm
  %i.hn = xor i32 %.0207.lcssa, -1
  %i.ho = add i32 %.sroa.speculated.i.i283, %i.hn
  %i.hp = zext i32 %i.ho to i64
  %i.hq = shl nuw nsw i64 %i.hp, 3
  %i.hr = add nuw nsw i64 %i.hq, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep516, i8 0, i64 %i.hr, i1 false)
  br label %.preheader434

.lr.ph459:                                        ; preds = %.lr.ph459.preheader657, %.lr.ph459
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %.lr.ph459 ], [ %indvars.iv513.ph, %.lr.ph459.preheader657 ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv513
  %.0.copyload.i.i285 = load i64, ptr %i.hs, align 1
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv513
  store i64 %.0.copyload.i.i285, ptr %i.ht, align 4
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 3 uses
  %i.hu = icmp samesign ult i64 %indvars.iv.next514, %i.hb
  br i1 %i.hu, label %.lr.ph459, label %.preheader435.loopexit, !llvm.loop !21

.preheader434:                                    ; preds = %.lr.ph462.preheader, %.preheader435
  %.not477 = icmp eq i32 %.sroa.speculated.i282, 0
  br i1 %.not477, label %.preheader433, label %.lr.ph464.preheader

.lr.ph464.preheader:                              ; preds = %.preheader434
  %i.hv = zext i32 %.sroa.speculated.i282 to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated.i282, 4
  %i.hw = sub i64 %.sroa.0393.0594601, %.sroa.0383.0592602
  %diff.check = icmp ult i64 %i.hw, 32
  %or.cond651 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond651, label %.lr.ph464.preheader656, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph464.preheader
  %n.vec = and i64 %i.hv, 4294967292              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %index ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load = load <2 x i64>, ptr %i.hx, align 1
  %wide.load603 = load <2 x i64>, ptr %i.hy, align 1
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %index ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  store <2 x i64> %wide.load, ptr %i.hz, align 4
  store <2 x i64> %wide.load603, ptr %i.ia, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ib = icmp eq i64 %index.next, %n.vec
  br i1 %i.ib, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.hv
  br i1 %cmp.n, label %.preheader433.loopexit, label %.lr.ph464.preheader656

.lr.ph464.preheader656:                           ; preds = %.lr.ph464.preheader, %middle.block
  %indvars.iv520.ph = phi i64 [ 0, %.lr.ph464.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph464

.preheader433.loopexit:                           ; preds = %.lr.ph464, %middle.block
  %indvars.iv.next521.lcssa = phi i64 [ %n.vec, %middle.block ], [ %indvars.iv.next521, %.lr.ph464 ]
  %i.ic = trunc nuw i64 %indvars.iv.next521.lcssa to i32
  br label %.preheader433

.preheader433:                                    ; preds = %.preheader433.loopexit, %.preheader434
  %.2.lcssa = phi i32 [ 0, %.preheader434 ], [ %i.ic, %.preheader433.loopexit ] ; 3 uses
  %i.id = icmp ult i32 %.2.lcssa, %.sroa.speculated.i.i284
  br i1 %i.id, label %.lr.ph467.preheader, label %._crit_edge468

.lr.ph467.preheader:                              ; preds = %.preheader433
  %i.ie = zext i32 %.2.lcssa to i64
  %i.if = shl nuw nsw i64 %i.ie, 3
  %scevgep523 = getelementptr i8, ptr %.sroa.0393.0594, i64 %i.if
  %i.ig = shl nuw nsw i64 %i.gu, 3
  %scevgep524 = getelementptr i8, ptr %scevgep523, i64 %i.ig
  %i.ih = xor i32 %.2.lcssa, -1
  %i.ii = add i32 %.sroa.speculated.i.i284, %i.ih
  %i.ij = zext i32 %i.ii to i64
  %i.ik = shl nuw nsw i64 %i.ij, 3
  %i.il = add nuw nsw i64 %i.ik, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep524, i8 0, i64 %i.il, i1 false)
  br label %._crit_edge468

.lr.ph464:                                        ; preds = %.lr.ph464.preheader656, %.lr.ph464
  %indvars.iv520 = phi i64 [ %indvars.iv.next521, %.lr.ph464 ], [ %indvars.iv520.ph, %.lr.ph464.preheader656 ] ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv520
  %.0.copyload.i.i286 = load i64, ptr %i.im, align 1
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv520
  store i64 %.0.copyload.i.i286, ptr %i.in, align 4
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 3 uses
  %i.io = icmp samesign ult i64 %indvars.iv.next521, %i.hv
  br i1 %i.io, label %.lr.ph464, label %.preheader433.loopexit, !llvm.loop !23

._crit_edge468:                                   ; preds = %.lr.ph467.preheader, %.preheader433
  %i.ip = add i32 %i.dl, 4
  br label %.critedge234

.critedge234:                                     ; preds = %bb.w, %._crit_edge468
  %.1216 = phi i32 [ %i.ip, %._crit_edge468 ], [ %i.gr, %bb.w ] ; 2 uses
  %i.iq = lshr i32 %.1216, 1
  %.sroa.7369.0.insert.ext373 = zext i32 %.sroa.12.0593 to i64
  %i.ir = icmp ugt i32 %.1216, 3
  br i1 %i.ir, label %.lr.ph598, label %._crit_edge599, !llvm.loop !24

._crit_edge599:                                   ; preds = %.critedge234, %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit
  %.sroa.0393.0.lcssa = phi ptr [ %1, %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit ], [ %.sroa.0367.0590, %.critedge234 ] ; 8 uses
  %.sroa.15.0.lcssa = phi i64 [ %.sroa.15.8.insert.ext406, %_ZN2v86bigint13ProcessorImpl15AddWorkEstimateEm.exit ], [ %.sroa.7369.0591, %.critedge234 ] ; 8 uses
  %.sroa.0393.0.lcssa636 = ptrtoaddr ptr %.sroa.0393.0.lcssa to i64
  %.not226 = icmp eq ptr %.sroa.0393.0.lcssa, %1
  br i1 %.not226, label %_ZN2v86bigint7StorageD2Ev.exit, label %.preheader431

.preheader431:                                    ; preds = %._crit_edge599
  %.sroa.15.8.extract.trunc410 = trunc nuw i64 %.sroa.15.0.lcssa to i32 ; 3 uses
  %.not474 = icmp eq i64 %.sroa.15.0.lcssa, 0
  br i1 %.not474, label %.preheader, label %.lr.ph470.preheader

.lr.ph470.preheader:                              ; preds = %.preheader431
  %wide.trip.count534 = and i64 %.sroa.15.0.lcssa, 4294967295
  %min.iters.check639 = icmp ult i64 %.sroa.15.0.lcssa, 6
  %i.is = sub i64 %i.a, %.sroa.0393.0.lcssa636
  %diff.check637 = icmp ult i64 %i.is, 32
  %or.cond652 = select i1 %min.iters.check639, i1 true, i1 %diff.check637
  br i1 %or.cond652, label %.lr.ph470.preheader653, label %vector.ph640

vector.ph640:                                     ; preds = %.lr.ph470.preheader
  %n.vec642 = and i64 %.sroa.15.0.lcssa, -4       ; 3 uses
  br label %vector.body643

vector.body643:                                   ; preds = %vector.body643, %vector.ph640
  %index644 = phi i64 [ 0, %vector.ph640 ], [ %index.next647, %vector.body643 ] ; 3 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0393.0.lcssa, i64 %index644 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index644 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %wide.load645 = load <2 x i64>, ptr %i.it, align 4
  %wide.load646 = load <2 x i64>, ptr %i.iv, align 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store <2 x i64> %wide.load645, ptr %i.iu, align 4
  store <2 x i64> %wide.load646, ptr %i.iw, align 4
  %index.next647 = add nuw i64 %index644, 4       ; 2 uses
  %i.ix = icmp eq i64 %index.next647, %n.vec642
  br i1 %i.ix, label %middle.block648, label %vector.body643, !llvm.loop !25

middle.block648:                                  ; preds = %vector.body643
  %cmp.n649 = icmp eq i64 %.sroa.15.0.lcssa, %n.vec642
  br i1 %cmp.n649, label %.preheader, label %.lr.ph470.preheader653

.lr.ph470.preheader653:                           ; preds = %.lr.ph470.preheader, %middle.block648
  %indvars.iv531.ph = phi i64 [ 0, %.lr.ph470.preheader ], [ %n.vec642, %middle.block648 ] ; 3 uses
  %xtraiter = and i64 %.sroa.15.0.lcssa, 3        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph470.prol.loopexit, label %.lr.ph470.prol

.lr.ph470.prol:                                   ; preds = %.lr.ph470.preheader653, %.lr.ph470.prol
  %indvars.iv531.prol = phi i64 [ %indvars.iv.next532.prol, %.lr.ph470.prol ], [ %indvars.iv531.ph, %.lr.ph470.preheader653 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph470.prol ], [ 0, %.lr.ph470.preheader653 ]
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0393.0.lcssa, i64 %indvars.iv531.prol
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv531.prol
  %i.ja = load i64, ptr %i.iy, align 4
  store i64 %i.ja, ptr %i.iz, align 4
  %indvars.iv.next532.prol = add nuw nsw i64 %indvars.iv531.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph470.prol.loopexit, label %.lr.ph470.prol, !llvm.loop !26

.lr.ph470.prol.loopexit:                          ; preds = %.lr.ph470.prol, %.lr.ph470.preheader653
  %indvars.iv531.unr = phi i64 [ %indvars.iv531.ph, %.lr.ph470.preheader653 ], [ %indvars.iv.next532.prol, %.lr.ph470.prol ]
  %i.jb = sub nsw i64 %indvars.iv531.ph, %.sroa.15.0.lcssa
  %i.jc = icmp ugt i64 %i.jb, -4
  br i1 %i.jc, label %.preheader, label %.lr.ph470

.preheader:                                       ; preds = %.lr.ph470.prol.loopexit, %.lr.ph470, %middle.block648, %.preheader431
  %.0.lcssa = phi i32 [ 0, %.preheader431 ], [ %.sroa.15.8.extract.trunc410, %middle.block648 ], [ %.sroa.15.8.extract.trunc410, %.lr.ph470 ], [ %.sroa.15.8.extract.trunc410, %.lr.ph470.prol.loopexit ] ; 3 uses
  %i.jd = icmp ult i32 %.0.lcssa, %2
  br i1 %i.jd, label %.lr.ph473.preheader, label %_ZN2v86bigint7StorageD2Ev.exit

.lr.ph473.preheader:                              ; preds = %.preheader
  %i.je = zext i32 %.0.lcssa to i64
  %i.jf = shl nuw nsw i64 %i.je, 3
  %scevgep536 = getelementptr i8, ptr %1, i64 %i.jf
  %i.jg = xor i32 %.0.lcssa, -1
  %i.jh = add i32 %2, %i.jg
  %i.ji = zext i32 %i.jh to i64
  %i.jj = shl nuw nsw i64 %i.ji, 3
  %i.jk = add nuw nsw i64 %i.jj, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep536, i8 0, i64 %i.jk, i1 false)
  br label %_ZN2v86bigint7StorageD2Ev.exit

.lr.ph470:                                        ; preds = %.lr.ph470.prol.loopexit, %.lr.ph470
  %indvars.iv531 = phi i64 [ %indvars.iv.next532.3, %.lr.ph470 ], [ %indvars.iv531.unr, %.lr.ph470.prol.loopexit ] ; 6 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0393.0.lcssa, i64 %indvars.iv531
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv531
  %i.jn = load i64, ptr %i.jl, align 4
  store i64 %i.jn, ptr %i.jm, align 4
  %indvars.iv.next532 = add nuw nsw i64 %indvars.iv531, 1 ; 2 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0393.0.lcssa, i64 %indvars.iv.next532
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next532
  %i.jq = load i64, ptr %i.jo, align 4
  store i64 %i.jq, ptr %i.jp, align 4
  %indvars.iv.next532.1 = add nuw nsw i64 %indvars.iv531, 2 ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0393.0.lcssa, i64 %indvars.iv.next532.1
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next532.1
  %i.jt = load i64, ptr %i.jr, align 4
  store i64 %i.jt, ptr %i.js, align 4
  %indvars.iv.next532.2 = add nuw nsw i64 %indvars.iv531, 3 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0393.0.lcssa, i64 %indvars.iv.next532.2
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next532.2
  %i.jw = load i64, ptr %i.ju, align 4
  store i64 %i.jw, ptr %i.jv, align 4
  %indvars.iv.next532.3 = add nuw nsw i64 %indvars.iv531, 4 ; 2 uses
  %exitcond535.not.3 = icmp eq i64 %indvars.iv.next532.3, %wide.trip.count534
  br i1 %exitcond535.not.3, label %.preheader, label %.lr.ph470, !llvm.loop !28

_ZN2v86bigint7StorageD2Ev.exit:                   ; preds = %.critedge, %bb.m, %.lr.ph473.preheader, %.preheader, %._crit_edge599
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare void @_ZN2v86bigint13ProcessorImpl8MultiplyENS0_8RWDigitsENS0_6DigitsES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr, i32, ptr, i32, ptr noundef byval(%"class.v8::bigint::Digits") align 8) local_unnamed_addr #1

declare noundef i64 @_ZN2v86bigint20AddAndReturnOverflowENS0_8RWDigitsENS0_6DigitsE(ptr, i32, ptr, i32) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2v86bigint13ProcessorImpl24FromStringBasePowerOfTwoENS0_8RWDigitsEPNS0_21FromStringAccumulatorE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree writeonly captures(none) %1, i32 %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 3
  %i.j = trunc i64 %i.i to i32
  %i.k = load i32, ptr %i.a, align 8
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.k, i32 %i.j) ; 7 uses
  %i.l = icmp eq ptr %i.e, %i.d
  %spec.select = select i1 %i.l, ptr %3, ptr %i.e ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 117
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  %i.p = add nsw i32 %i.o, -1
  %i.q = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.p, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %i.u = trunc nuw nsw i32 %i.q to i8
  %.rhs.trunc = sub nuw nsw i8 32, %i.u
  %i.v = urem i8 64, %.rhs.trunc
  %.zext = zext nneg i8 %i.v to i32               ; 2 uses
  %i.w = sub nuw nsw i32 64, %.zext               ; 2 uses
  %i.x = add i32 %.sroa.speculated.i, -1          ; 3 uses
  %i.y = icmp eq i32 %i.t, 0
  br i1 %i.y, label %.preheader93, label %bb.b

.preheader93:                                     ; preds = %bb.a
  %i.z = icmp sgt i32 %i.x, -1
  br i1 %i.z, label %.lr.ph121.preheader, label %.preheader

.lr.ph121.preheader:                              ; preds = %.preheader93
  %i.aa = zext nneg i32 %i.x to i64               ; 5 uses
  %wide.trip.count = zext i32 %.sroa.speculated.i to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated.i, 16
  br i1 %min.iters.check, label %.lr.ph121.preheader189, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph121.preheader
  %i.ab = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %scevgep183 = getelementptr i8, ptr %1, i64 %i.ab
  %i.ac = shl nuw nsw i64 %i.aa, 3                ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 8
  %i.ae = sub nsw i64 %i.ad, %i.ab
  %scevgep184 = getelementptr i8, ptr %spec.select, i64 %i.ae
  %i.af = getelementptr i8, ptr %spec.select, i64 %i.ac
  %scevgep185 = getelementptr i8, ptr %i.af, i64 8
  %bound0 = icmp ult ptr %1, %scevgep185
  %bound1 = icmp ult ptr %scevgep184, %scevgep183
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph121.preheader189, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 4 uses
  %i.ag = sub nsw i64 %i.aa, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ah = sub i64 %i.aa, %index
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %spec.select, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -8
  %i.ak = getelementptr inbounds i8, ptr %i.ai, i64 -24
  %wide.load = load <2 x i64>, ptr %i.aj, align 1, !alias.scope !29
  %wide.load186 = load <2 x i64>, ptr %i.ak, align 1, !alias.scope !29
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse187 = shufflevector <2 x i64> %wide.load186, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i64> %reverse, ptr %i.al, align 4, !alias.scope !32, !noalias !29
  store <2 x i64> %reverse187, ptr %i.am, align 4, !alias.scope !32, !noalias !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %.lr.ph121.preheader189

.lr.ph121.preheader189:                           ; preds = %vector.memcheck, %.lr.ph121.preheader, %middle.block
  %indvars.iv130.ph = phi i64 [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph121.preheader ], [ %i.ag, %middle.block ] ; 2 uses
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph121.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph121.prol.loopexit, label %.lr.ph121.prol

end_hunk_0
