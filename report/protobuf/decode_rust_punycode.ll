inline.NumInlined: 10
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4absl12lts_2025051218debugging_internal18DecodeRustPunycodeENS1_25DecodeRustPunycodeOptionsE:bb.a
  br i1 %.not57.i, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.b, %.thread.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.thread.i ], [ 0, %bb.b ] ; 3 uses
  %.04158.i = phi i32 [ %.14251.i, %.thread.i ], [ -1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !14    ; 3 uses
  %i.q = icmp eq i8 %i.p, 95
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  br i1 %i.q, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = and i8 %i.p, -33
  %i.t = add i8 %i.s, -65
  %or.cond48.i = icmp ult i8 %i.t, 26
  %i.u = add i8 %i.p, -48
  %or.cond9.i = icmp ult i8 %i.u, 10
  %or.cond54.i = or i1 %or.cond9.i, %or.cond48.i
  br i1 %or.cond54.i, label %.thread.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit

.thread.i:                                        ; preds = %bb.c, %.lr.ph.i
  %.14251.i = phi i32 [ %i.r, %.lr.ph.i ], [ %.04158.i, %bb.c ] ; 6 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.n
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %.thread.i
  %i.v = icmp slt i32 %.14251.i, 0
  br i1 %i.v, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.w = icmp eq i32 %.14251.i, 0
  br i1 %i.w, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = add nuw nsw i32 %.14251.i, 1
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = icmp slt i64 %i.j, %i.y
  br i1 %i.z, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i32 %.14251.i to i64          ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %i.a, i64 %i.aa, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa
  store i8 0, ptr %i.ab, align 1, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %bb.f, %bb.b
  %.175.ph = phi ptr [ %i.a, %bb.b ], [ %i.ac, %bb.f ], [ %i.a, %._crit_edge.i ] ; 2 uses
  %.1.ph = phi i32 [ 0, %bb.b ], [ %.14251.i, %bb.f ], [ 0, %._crit_edge.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false), !tbaa !17
  %.not97 = icmp eq ptr %.175.ph, %i.c
  br i1 %.not97, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %umax = tail call i32 @llvm.umax.i32(i32 %.1.ph, i32 256)
  %exitcond142 = icmp ugt i32 %.1.ph, 255
  br i1 %exitcond142, label %.critedge, label %.lr.ph.i51.preheader

.lr.ph.i51.preheader:                             ; preds = %.lr.ph105
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %.lr.ph.i51

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit
  %i.ar = add nuw nsw i32 %i.cg, 1
  %exitcond = icmp eq i32 %i.bu, %umax
  br i1 %exitcond, label %.critedge, label %.lr.ph.i51, !llvm.loop !19

.lr.ph.i51:                                       ; preds = %.lr.ph.i51.preheader, %bb.h
  %.07498148 = phi ptr [ %i.ax, %bb.h ], [ %.175.ph, %.lr.ph.i51.preheader ]
  %.07299147 = phi i32 [ %i.ar, %bb.h ], [ 0, %.lr.ph.i51.preheader ] ; 3 uses
  %.0100146 = phi i32 [ %i.bu, %bb.h ], [ %.1.ph, %.lr.ph.i51.preheader ]
  %.044101145 = phi i32 [ %i.cf, %bb.h ], [ 128, %.lr.ph.i51.preheader ]
  %.041102144 = phi i32 [ %i.cd, %bb.h ], [ 72, %.lr.ph.i51.preheader ] ; 3 uses
  %.038103143 = phi i32 [ %i.hi, %bb.h ], [ %.1.ph, %.lr.ph.i51.preheader ] ; 2 uses
  %i.as = add i32 %.041102144, 1
  %i.at = add i32 %.041102144, 26
  %i.au = zext nneg i32 %.07299147 to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i51
  %.02551.i = phi i32 [ 36, %.lr.ph.i51 ], [ %i.bo, %bb.o ] ; 4 uses
  %.02650.i = phi i64 [ 1, %.lr.ph.i51 ], [ %i.bn, %bb.o ] ; 2 uses
  %i.av = phi ptr [ %.07498148, %.lr.ph.i51 ], [ %i.ax, %bb.o ] ; 2 uses
  %i.aw = phi i64 [ %i.au, %.lr.ph.i51 ], [ %i.bi, %bb.o ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 4 uses
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !14  ; 4 uses
  %i.az = sext i8 %i.ay to i32                    ; 3 uses
  %i.ba = add i8 %i.ay, -48
  %or.cond.i.i = icmp ult i8 %i.ba, 10
  br i1 %or.cond.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = add nsw i32 %i.az, -22
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

bb.k:                                             ; preds = %bb.i
  %i.bc = add i8 %i.ay, -97
  %or.cond5.i.i = icmp ult i8 %i.bc, 26
  br i1 %or.cond5.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = add nsw i32 %i.az, -97
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

bb.m:                                             ; preds = %bb.k
  %i.be = add nsw i32 %i.az, -65
  %i.bf = add i8 %i.ay, -91
  %or.cond.i = icmp ult i8 %i.bf, -26
  br i1 %or.cond.i, label %.critedge, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i: ; preds = %bb.m, %bb.l, %bb.j
  %.0.i41.i = phi i32 [ %i.be, %bb.m ], [ %i.bd, %bb.l ], [ %i.bb, %bb.j ] ; 2 uses
  %i.bg = zext nneg i32 %.0.i41.i to i64
  %i.bh = mul i64 %.02650.i, %i.bg
  %i.bi = add i64 %i.bh, %i.aw                    ; 3 uses
  %i.bj = icmp ugt i64 %i.bi, 1073741824
  br i1 %i.bj, label %.critedge, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i
  %.not37.i = icmp ugt i32 %.02551.i, %i.as
  %.not38.i = icmp ult i32 %.02551.i, %i.at
  %i.bk = sub i32 %.02551.i, %.041102144
  %spec.select39.i = select i1 %.not38.i, i32 %i.bk, i32 26
  %.0.i = select i1 %.not37.i, i32 %spec.select39.i, i32 1 ; 2 uses
  %.not47.i = icmp ult i32 %.0.i41.i, %.0.i
  br i1 %.not47.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = sub nsw i32 36, %.0.i
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul i64 %.02650.i, %i.bm
  %i.bo = add i32 %.02551.i, 36
  %.not.not.i = icmp eq ptr %i.ax, %i.c
  br i1 %.not.not.i, label %.critedge, label %bb.i, !llvm.loop !20

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit: ; preds = %bb.n
  %i.bp = trunc nuw nsw i64 %i.bi to i32          ; 3 uses
  %i.bq = sub nsw i32 %i.bp, %.07299147
  %i.br = icmp eq i32 %.07299147, 0
  %i.bs = select i1 %i.br, i32 700, i32 2
  %i.bt = udiv i32 %i.bq, %i.bs                   ; 2 uses
  %i.bu = add nuw nsw i32 %.0100146, 1            ; 5 uses
  %i.bv = udiv i32 %i.bt, %i.bu
  %i.bw = add nuw i32 %i.bv, %i.bt                ; 3 uses
  %i.bx = icmp ugt i32 %i.bw, 455
  br i1 %i.bx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit, %.lr.ph
  %.03795 = phi i32 [ %i.by, %.lr.ph ], [ %i.bw, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ] ; 2 uses
  %.14294 = phi i32 [ %i.bz, %.lr.ph ], [ 0, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ]
  %i.by = udiv i32 %.03795, 35                    ; 2 uses
  %i.bz = add i32 %.14294, 36                     ; 2 uses
  %i.ca = icmp ugt i32 %.03795, 15959
  br i1 %i.ca, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit
  %.142.lcssa = phi i32 [ 0, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ], [ %i.bz, %.lr.ph ]
  %.037.lcssa = phi i32 [ %i.bw, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_113ScanNextDeltaERPKcS4_jRj.exit ], [ %i.by, %.lr.ph ]
  %i.cb = trunc nuw i32 %.037.lcssa to i16        ; 2 uses
  %.lhs.trunc = mul nuw i16 %i.cb, 36
  %.rhs.trunc = add nuw nsw i16 %i.cb, 38
  %i.cc = udiv i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.cc to i32
  %i.cd = add i32 %.142.lcssa, %.zext
  %i.ce = udiv i32 %i.bp, %i.bu
  %i.cf = add i32 %i.ce, %.044101145              ; 2 uses
  %i.cg = urem i32 %i.bp, %i.bu                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.ch = zext i32 %i.cf to i64
  call void @_ZN4absl12lts_2025051218debugging_internal16Utf8ForCodePointC1Em(ptr noundef nonnull align 4 dereferenceable(8) %2, i64 noundef %i.ch)
  %i.ci = load i32, ptr %i.ad, align 4, !tbaa !22 ; 6 uses
  %.not84 = icmp eq i32 %i.ci, 0
  br i1 %.not84, label %.critedge.critedge, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.cj = add i32 %.038103143, 1                  ; 2 uses
  %i.ck = add i32 %i.cj, %i.ci
  %i.cl = zext i32 %i.ck to i64
  %i.cm = icmp ult i64 %i.j, %i.cl
  br i1 %i.cm, label %.critedge.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.cg, i32 255) ; 3 uses
  %i.cn = lshr i32 %spec.store.select.i, 5        ; 10 uses
  %i.co = shl nuw nsw i32 %spec.store.select.i, 1
  %i.cp = and i32 %i.co, 62
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.cq              ; 2 uses
  %i.cr = xor i64 %notmask.i, -1                  ; 2 uses
  %i.cs = zext nneg i32 %i.cn to i64              ; 8 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cs ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !17 ; 2 uses
  %i.cv = and i64 %i.cu, %i.cr                    ; 3 uses
  %i.cw = and i64 %i.cv, 3074457345618258602
  %i.cx = insertelement <2 x i64> poison, i64 %i.cw, i64 0
  %i.cy = insertelement <2 x i64> %i.cx, i64 %i.cv, i64 1
  %i.cz = call range(i64 0, 63) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.cy)
  %i.da = trunc nuw nsw <2 x i64> %i.cz to <2 x i32> ; 2 uses
  %.not42.i = icmp eq i32 %i.cn, 0
  br i1 %.not42.i, label %.lr.ph48.i, label %.lr.ph.i53

.preheader.i:                                     ; preds = %.lr.ph.i53.6, %.lr.ph.i53.5, %.lr.ph.i53.4, %.lr.ph.i53.3, %.lr.ph.i53.2, %.lr.ph.i53.1, %.lr.ph.i53
  %.lcssa154 = phi <2 x i32> [ %i.dj, %.lr.ph.i53 ], [ %i.dt, %.lr.ph.i53.1 ], [ %i.ed, %.lr.ph.i53.2 ], [ %i.en, %.lr.ph.i53.3 ], [ %i.ex, %.lr.ph.i53.4 ], [ %i.fh, %.lr.ph.i53.5 ], [ %i.fr, %.lr.ph.i53.6 ] ; 2 uses
  %.not49.i = icmp eq i32 %i.cn, 7
  br i1 %.not49.i, label %_ZN4absl12lts_2025051218debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit, label %.lr.ph48.i

.lr.ph.i53:                                       ; preds = %bb.q
  %i.db = getelementptr [8 x i8], ptr %1, i64 %i.cs
  %i.dc = getelementptr i8, ptr %i.db, i64 -8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !17
  %i.de = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %i.df = shufflevector <2 x i64> %i.de, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dg = and <2 x i64> %i.df, <i64 -6148914691236517206, i64 -1>
  %i.dh = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dg)
  %i.di = trunc nuw nsw <2 x i64> %i.dh to <2 x i32>
  %i.dj = add nuw nsw <2 x i32> %i.da, %i.di      ; 2 uses
  %i.dk = icmp eq i32 %i.cn, 1
  br i1 %i.dk, label %.preheader.i, label %.lr.ph.i53.1

.lr.ph.i53.1:                                     ; preds = %.lr.ph.i53
  %i.dl = getelementptr [8 x i8], ptr %1, i64 %i.cs
  %i.dm = getelementptr i8, ptr %i.dl, i64 -16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !17
  %i.do = insertelement <2 x i64> poison, i64 %i.dn, i64 0
  %i.dp = shufflevector <2 x i64> %i.do, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dq = and <2 x i64> %i.dp, <i64 -6148914691236517206, i64 -1>
  %i.dr = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.dq)
  %i.ds = trunc nuw nsw <2 x i64> %i.dr to <2 x i32>
  %i.dt = add nuw nsw <2 x i32> %i.dj, %i.ds      ; 2 uses
  %i.du = icmp eq i32 %i.cn, 2
  br i1 %i.du, label %.preheader.i, label %.lr.ph.i53.2

.lr.ph.i53.2:                                     ; preds = %.lr.ph.i53.1
  %i.dv = getelementptr [8 x i8], ptr %1, i64 %i.cs
  %i.dw = getelementptr i8, ptr %i.dv, i64 -24
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !17
  %i.dy = insertelement <2 x i64> poison, i64 %i.dx, i64 0
  %i.dz = shufflevector <2 x i64> %i.dy, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ea = and <2 x i64> %i.dz, <i64 -6148914691236517206, i64 -1>
  %i.eb = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ea)
  %i.ec = trunc nuw nsw <2 x i64> %i.eb to <2 x i32>
  %i.ed = add nuw nsw <2 x i32> %i.dt, %i.ec      ; 2 uses
  %i.ee = icmp eq i32 %i.cn, 3
  br i1 %i.ee, label %.preheader.i, label %.lr.ph.i53.3

.lr.ph.i53.3:                                     ; preds = %.lr.ph.i53.2
  %i.ef = getelementptr [8 x i8], ptr %1, i64 %i.cs
  %i.eg = getelementptr i8, ptr %i.ef, i64 -32
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !17
  %i.ei = insertelement <2 x i64> poison, i64 %i.eh, i64 0
  %i.ej = shufflevector <2 x i64> %i.ei, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ek = and <2 x i64> %i.ej, <i64 -6148914691236517206, i64 -1>
  %i.el = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.ek)
  %i.em = trunc nuw nsw <2 x i64> %i.el to <2 x i32>
  %i.en = add nuw nsw <2 x i32> %i.ed, %i.em      ; 2 uses
  %i.eo = icmp eq i32 %i.cn, 4
  br i1 %i.eo, label %.preheader.i, label %.lr.ph.i53.4

.lr.ph.i53.4:                                     ; preds = %.lr.ph.i53.3
  %i.ep = getelementptr [8 x i8], ptr %1, i64 %i.cs
  %i.eq = getelementptr i8, ptr %i.ep, i64 -40
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !17
  %i.es = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %i.et = shufflevector <2 x i64> %i.es, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.eu = and <2 x i64> %i.et, <i64 -6148914691236517206, i64 -1>
  %i.ev = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.eu)
  %i.ew = trunc nuw nsw <2 x i64> %i.ev to <2 x i32>
  %i.ex = add nuw nsw <2 x i32> %i.en, %i.ew      ; 2 uses
  %i.ey = icmp eq i32 %i.cn, 5
  br i1 %i.ey, label %.preheader.i, label %.lr.ph.i53.5

.lr.ph.i53.5:                                     ; preds = %.lr.ph.i53.4
  %i.ez = getelementptr [8 x i8], ptr %1, i64 %i.cs
  %i.fa = getelementptr i8, ptr %i.ez, i64 -48
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !17
  %i.fc = insertelement <2 x i64> poison, i64 %i.fb, i64 0
  %i.fd = shufflevector <2 x i64> %i.fc, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fe = and <2 x i64> %i.fd, <i64 -6148914691236517206, i64 -1>
  %i.ff = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.fe)
  %i.fg = trunc nuw nsw <2 x i64> %i.ff to <2 x i32>
  %i.fh = add nuw nsw <2 x i32> %i.ex, %i.fg      ; 2 uses
  %i.fi = icmp eq i32 %i.cn, 6
  br i1 %i.fi, label %.preheader.i, label %.lr.ph.i53.6

.lr.ph.i53.6:                                     ; preds = %.lr.ph.i53.5
  %i.fj = getelementptr [8 x i8], ptr %1, i64 %i.cs
  %i.fk = getelementptr i8, ptr %i.fj, i64 -56
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !17
  %i.fm = insertelement <2 x i64> poison, i64 %i.fl, i64 0
  %i.fn = shufflevector <2 x i64> %i.fm, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fo = and <2 x i64> %i.fn, <i64 -6148914691236517206, i64 -1>
  %i.fp = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.fo)
  %i.fq = trunc nuw nsw <2 x i64> %i.fp to <2 x i32>
  %i.fr = add nuw nsw <2 x i32> %i.fh, %i.fq
  br label %.preheader.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph48.i.6, %.lr.ph48.i.5, %.lr.ph48.i.4, %.lr.ph48.i.3, %.lr.ph48.i.2, %.lr.ph48.i.1, %.lr.ph48.i
  %.pre54.i = load i64, ptr %i.ct, align 8, !tbaa !17 ; 2 uses
  %.pre55.i = and i64 %.pre54.i, %i.cr
  br label %_ZN4absl12lts_2025051218debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit

.lr.ph48.i:                                       ; preds = %bb.q, %.preheader.i
  %i.fs = phi <2 x i32> [ %.lcssa154, %.preheader.i ], [ %i.da, %bb.q ]
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  %i.ft = load i64, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %i.fu = call i64 @llvm.fshl.i64(i64 %.pre.i, i64 %i.ft, i64 2)
  store i64 %i.fu, ptr %i.ae, align 8, !tbaa !17
  %i.fv = icmp ult i32 %i.cg, 192
  br i1 %i.fv, label %.lr.ph48.i.1, label %._crit_edge.loopexit.i

.lr.ph48.i.1:                                     ; preds = %.lr.ph48.i
  %i.fw = load i64, ptr %i.ah, align 8, !tbaa !17 ; 2 uses
  %i.fx = call i64 @llvm.fshl.i64(i64 %i.ft, i64 %i.fw, i64 2)
  store i64 %i.fx, ptr %i.ag, align 8, !tbaa !17
  %i.fy = icmp ult i32 %i.cg, 160
  br i1 %i.fy, label %.lr.ph48.i.2, label %._crit_edge.loopexit.i

.lr.ph48.i.2:                                     ; preds = %.lr.ph48.i.1
  %i.fz = load i64, ptr %i.aj, align 8, !tbaa !17 ; 2 uses
  %i.ga = call i64 @llvm.fshl.i64(i64 %i.fw, i64 %i.fz, i64 2)
  store i64 %i.ga, ptr %i.ai, align 8, !tbaa !17
  %i.gb = icmp ult i32 %i.cg, 128
  br i1 %i.gb, label %.lr.ph48.i.3, label %._crit_edge.loopexit.i

.lr.ph48.i.3:                                     ; preds = %.lr.ph48.i.2
  %i.gc = load i64, ptr %i.al, align 8, !tbaa !17 ; 2 uses
  %i.gd = call i64 @llvm.fshl.i64(i64 %i.fz, i64 %i.gc, i64 2)
  store i64 %i.gd, ptr %i.ak, align 8, !tbaa !17
  %i.ge = icmp ult i32 %i.cg, 96
  br i1 %i.ge, label %.lr.ph48.i.4, label %._crit_edge.loopexit.i

.lr.ph48.i.4:                                     ; preds = %.lr.ph48.i.3
  %i.gf = load i64, ptr %i.an, align 8, !tbaa !17 ; 2 uses
  %i.gg = call i64 @llvm.fshl.i64(i64 %i.gc, i64 %i.gf, i64 2)
  store i64 %i.gg, ptr %i.am, align 8, !tbaa !17
  %i.gh = icmp ult i32 %i.cg, 64
  br i1 %i.gh, label %.lr.ph48.i.5, label %._crit_edge.loopexit.i

.lr.ph48.i.5:                                     ; preds = %.lr.ph48.i.4
  %i.gi = load i64, ptr %i.ap, align 8, !tbaa !17 ; 2 uses
  %i.gj = call i64 @llvm.fshl.i64(i64 %i.gf, i64 %i.gi, i64 2)
  store i64 %i.gj, ptr %i.ao, align 8, !tbaa !17
  %i.gk = icmp eq i32 %i.cn, 0
  br i1 %i.gk, label %.lr.ph48.i.6, label %._crit_edge.loopexit.i

.lr.ph48.i.6:                                     ; preds = %.lr.ph48.i.5
  %i.gl = load i64, ptr %1, align 8, !tbaa !17
  %i.gm = call i64 @llvm.fshl.i64(i64 %i.gi, i64 %i.gl, i64 2)
  store i64 %i.gm, ptr %i.aq, align 8, !tbaa !17
  br label %._crit_edge.loopexit.i

_ZN4absl12lts_2025051218debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit: ; preds = %.preheader.i, %._crit_edge.loopexit.i
  %.pre-phi.i = phi i64 [ %.pre55.i, %._crit_edge.loopexit.i ], [ %i.cv, %.preheader.i ]
  %i.gn = phi i64 [ %.pre54.i, %._crit_edge.loopexit.i ], [ %i.cu, %.preheader.i ]
  %i.go = phi <2 x i32> [ %i.fs, %._crit_edge.loopexit.i ], [ %.lcssa154, %.preheader.i ] ; 2 uses
  %i.gp = extractelement <2 x i32> %i.go, i64 0
  %i.gq = add nuw i32 %i.gp, %spec.store.select.i
  %i.gr = extractelement <2 x i32> %i.go, i64 1
  %i.gs = add nuw i32 %i.gq, %i.gr                ; 2 uses
  %i.gt = icmp ugt i32 %i.ci, 4
  %i.gu = add nsw i32 %i.ci, -1
  %i.gv = select i1 %i.gt, i32 0, i32 %i.gu
  %i.gw = zext i32 %i.gv to i64
  %i.gx = shl i64 %i.gw, %i.cq
  %i.gy = or i64 %.pre-phi.i, %i.gx
  %i.gz = and i64 %i.gn, %notmask.i
  %i.ha = shl i64 %i.gz, 2
  %i.hb = or i64 %i.gy, %i.ha
  store i64 %i.hb, ptr %i.ct, align 8, !tbaa !17
  %i.hc = zext i32 %i.gs to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hc ; 3 uses
  %i.he = zext i32 %i.ci to i64                   ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.he
  %i.hg = sub i32 %i.cj, %i.gs
  %i.hh = zext i32 %i.hg to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hf, ptr nonnull align 1 %i.hd, i64 %i.hh, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hd, ptr nonnull align 4 %2, i64 %i.he, i1 false)
  %i.hi = add i32 %i.ci, %.038103143              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  %.not = icmp eq ptr %i.ax, %i.c
  br i1 %.not, label %._crit_edge106, label %bb.h, !llvm.loop !19

._crit_edge106:                                   ; preds = %_ZN4absl12lts_2025051218debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit, %bb.g
  %.038.lcssa = phi i32 [ %.1.ph, %bb.g ], [ %i.hi, %_ZN4absl12lts_2025051218debugging_internal25BoundedUtf8LengthSequenceILj256EE32InsertAndReturnSumOfPredecessorsEjj.exit ]
  %i.hj = zext i32 %.038.lcssa to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hj
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.p, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.m, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i, %bb.o, %.lr.ph105, %.critedge.critedge, %._crit_edge106
  %.3 = phi ptr [ %i.hk, %._crit_edge106 ], [ null, %.critedge.critedge ], [ null, %.lr.ph105 ], [ null, %bb.m ], [ null, %bb.o ], [ null, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_110DigitValueEc.exit.thread.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_126ConsumeOptionalAsciiPrefixERPKcS4_PcS6_Rj.exit: ; preds = %bb.c, %.critedge, %bb.d, %bb.e, %bb.a
  %.5 = phi ptr [ null, %bb.a ], [ %.3, %.critedge ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ]
  ret ptr %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2025051218debugging_internal16Utf8ForCodePointC1Em(ptr noundef nonnull align 4 dereferenceable(8), i64 noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4absl12lts_2025051218debugging_internal25DecodeRustPunycodeOptionsE", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !9, i64 8}
!12 = !{!8, !9, i64 16}
!13 = !{!8, !9, i64 24}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = !{!23, !4, i64 4}
!23 = !{!"_ZTSN4absl12lts_2025051218debugging_internal16Utf8ForCodePointE", !5, i64 0, !4, i64 4}
end_hunk_0
