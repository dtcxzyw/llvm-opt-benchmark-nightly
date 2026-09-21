Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/WidthBucketArray?download=true
inline.NumInlined: 6662
inline.NumDeleted: 2140
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEii:bb.a
  %i.i = fcmp uno double %0, 0.000000e+00
  br i1 %i.i, label %bb.n, label %.lr.ph, !prof !60

.lr.ph:                                           ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !308  ; 19 uses
  %.not.i = icmp eq ptr %i.k, null                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.m = load i8, ptr %i.l, align 2, !range !65
  %i.n = trunc nuw i8 %i.m to i1                  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.p = load i8, ptr %i.o, align 1, !range !65
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.q   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.s = load i8, ptr %i.r, align 1, !range !65   ; 2 uses
  %i.t = trunc nuw i8 %i.s to i1                  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 12 uses
  %i.w = add i32 %2, -1                           ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 6 uses
  %i.z = lshr i32 %3, 1                           ; 6 uses
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread.peel, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  br i1 %or.cond.i, label %.split.peel, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.peel, label %.split68.peel

.split68.peel:                                    ; preds = %bb.g
  %i.aa = sext i32 %2 to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !121
  %i.ah = and i64 %i.ad, 63
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = and i64 %i.ai, %i.ag
  %.not.i7.i.peel = icmp eq i64 %i.aj, 0
  br i1 %.not.i7.i.peel, label %.critedge, label %.split71.peel, !prof !309

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.peel: ; preds = %bb.g
  %i.ak = load i64, ptr %i.k, align 8, !tbaa !121
  %i.al = and i64 %i.ak, 1
  %.not.i6.i.peel = icmp eq i64 %i.al, 0
  br i1 %.not.i6.i.peel, label %.critedge, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52.peel, !prof !309

.split.peel:                                      ; preds = %bb.f
  %i.am = zext i32 %2 to i64                      ; 2 uses
  %i.an = lshr i64 %i.am, 6
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !121
  %i.aq = and i64 %i.am, 63
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ap, %i.ar
  %.not.i.i.peel = icmp eq i64 %i.as, 0
  br i1 %.not.i.i.peel, label %.critedge, label %.split70.peel, !prof !309

.split71.peel:                                    ; preds = %.split68.peel
  %i.at = add nsw i32 %i.z, %2                    ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !54
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 6
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !121
  %i.bb = and i64 %i.ax, 63
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = and i64 %i.bc, %i.ba
  %.not.i7.i48.peel = icmp eq i64 %i.bd, 0
  br i1 %.not.i7.i48.peel, label %.critedge, label %.split77.peel, !prof !310

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52.peel: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.peel
  %i.be = load i64, ptr %i.k, align 8, !tbaa !121
  %i.bf = and i64 %i.be, 1
  %.not.i6.i50.peel = icmp eq i64 %i.bf, 0
  br i1 %.not.i6.i50.peel, label %.critedge, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.peel, !prof !310

.split70.peel:                                    ; preds = %.split.peel
  %i.bg = add nsw i32 %i.z, %2                    ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !121
  %i.bl = and i64 %i.bh, 63
  %i.bm = shl nuw i64 1, %i.bl
  %i.bn = and i64 %i.bk, %i.bm
  %.not.i.i51.peel = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i51.peel, label %.critedge, label %.split75.peel, !prof !310

.split77.peel:                                    ; preds = %.split71.peel
  %i.bo = add i32 %i.w, %3                        ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !54
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !121
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bx, %i.bv
  %.not.i7.i55.peel = icmp eq i64 %i.by, 0
  br i1 %.not.i7.i55.peel, label %.critedge, label %.thread113, !prof !310

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.peel: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52.peel
  %i.bz = add nsw i32 %i.z, %2
  %i.ca = add i32 %i.w, %3
  %i.cb = load i64, ptr %i.k, align 8, !tbaa !121
  %i.cc = and i64 %i.cb, 1
  %.not.i6.i57.peel = icmp eq i64 %i.cc, 0
  br i1 %.not.i6.i57.peel, label %.critedge, label %.thread113, !prof !310

.split75.peel:                                    ; preds = %.split70.peel
  %i.cd = add i32 %i.w, %3                        ; 2 uses
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = lshr i64 %i.ce, 6
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !121
  %i.ci = and i64 %i.ce, 63
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.ch, %i.cj
  %.not.i.i58.peel = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i58.peel, label %.critedge, label %bb.h, !prof !310

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread.peel: ; preds = %.lr.ph
  %i.cl = add nsw i32 %i.z, %2
  %i.cm = add i32 %i.w, %3
  br label %bb.h

.thread113:                                       ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.peel, %.split77.peel
  %.ph111 = phi i32 [ %i.at, %.split77.peel ], [ %i.bz, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.peel ]
  %.ph112 = phi i32 [ %i.bo, %.split77.peel ], [ %i.ca, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.peel ]
  %i.cn = load ptr, ptr %i.x, align 8, !tbaa !241
  br label %bb.i

bb.h:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread.peel, %.split75.peel
  %i.co = phi i32 [ %i.cl, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread.peel ], [ %i.bg, %.split75.peel ] ; 2 uses
  %i.cp = phi i32 [ %i.cm, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread.peel ], [ %i.cd, %.split75.peel ] ; 2 uses
  %i.cq = load ptr, ptr %i.x, align 8, !tbaa !241 ; 4 uses
  br i1 %i.n, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61.peel, label %bb.i

bb.i:                                             ; preds = %.thread113, %bb.h
  %i.cr = phi ptr [ %i.cn, %.thread113 ], [ %i.cq, %bb.h ] ; 6 uses
  %i.cs = phi i32 [ %.ph112, %.thread113 ], [ %i.cp, %bb.h ]
  %i.ct = phi i32 [ %.ph111, %.thread113 ], [ %i.co, %bb.h ]
  br i1 %i.t, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.cu
  %.0.i.i.ph.peel = load i32, ptr %i.cv, align 4, !tbaa !54
  %i.cw = sext i32 %.0.i.i.ph.peel to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cw
  %i.cy = sext i32 %2 to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.cy
  %.0.i.i60.ph.peel = load i32, ptr %i.cz, align 4, !tbaa !54
  %i.da = sext i32 %.0.i.i60.ph.peel to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.da
  %i.dc = sext i32 %i.cs to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !54
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63.peel

bb.k:                                             ; preds = %bb.i
  %.0.i.i.ph.peel116 = load i32, ptr %i.y, align 8, !tbaa !54 ; 3 uses
  %i.df = sext i32 %.0.i.i.ph.peel116 to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.df
  %i.dh = sext i32 %.0.i.i.ph.peel116 to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.dh
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63.peel

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61.peel: ; preds = %bb.h
  %i.dj = sext i32 %i.co to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.dj
  %i.dl = sext i32 %2 to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %i.dl
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63.peel

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63.peel: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61.peel, %bb.k, %bb.j
  %i.dn = phi ptr [ %i.cr, %bb.j ], [ %i.cr, %bb.k ], [ %i.cq, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61.peel ] ; 6 uses
  %.in = phi ptr [ %i.db, %bb.j ], [ %i.di, %bb.k ], [ %i.dm, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61.peel ]
  %.in133 = phi ptr [ %i.cx, %bb.j ], [ %i.dg, %bb.k ], [ %i.dk, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61.peel ]
  %.0.i.i62.peel = phi i32 [ %i.de, %bb.j ], [ %.0.i.i.ph.peel116, %bb.k ], [ %i.cp, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61.peel ]
  %i.do = load double, ptr %.in133, align 8, !tbaa !108 ; 4 uses
  %i.dp = load double, ptr %.in, align 8, !tbaa !108 ; 2 uses
  %i.dq = sext i32 %.0.i.i62.peel to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !108 ; 2 uses
  %i.dt = fcmp ugt double %i.dp, %i.do
  %i.du = fcmp ugt double %i.do, %i.ds
  %.not43.peel = or i1 %i.dt, %i.du
  br i1 %.not43.peel, label %.loopexit, label %bb.l, !prof !60

bb.l:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63.peel
  %6 = tail call double @llvm.fabs.f64(double %i.do)
  %7 = fcmp ueq double %6, +inf
  %8 = tail call double @llvm.fabs.f64(double %i.dp)
  %9 = fcmp ueq double %8, +inf
  %or.cond.not90.peel = or i1 %9, %7
  %i.dv = tail call double @llvm.fabs.f64(double %i.ds)
  %i.dw = fcmp ueq double %i.dv, +inf
  %or.cond83.peel = or i1 %or.cond.not90.peel, %i.dw
  br i1 %or.cond83.peel, label %.critedge45, label %bb.m, !prof !684

bb.m:                                             ; preds = %bb.l
  %i.dx = fcmp olt double %0, %i.do               ; 2 uses
  %i.dy = add nuw nsw i32 %i.z, 1
  %.141.peel = select i1 %i.dx, i32 %i.z, i32 %3  ; 2 uses
  %.1.peel = select i1 %i.dx, i32 0, i32 %i.dy    ; 3 uses
  %i.dz = icmp samesign ult i32 %.1.peel, %.141.peel
  br i1 %i.dz, label %.peel.next, label %._crit_edge

bb.n:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEiiE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.184) #28
  unreachable

.peel.next:                                       ; preds = %bb.m, %bb.v
  %i.ea = phi i8 [ %i.hp, %bb.v ], [ %i.s, %bb.m ] ; 3 uses
  %.088 = phi i32 [ %.1, %bb.v ], [ %.1.peel, %bb.m ] ; 3 uses
  %.04087 = phi i32 [ %.141, %bb.v ], [ %.141.peel, %bb.m ] ; 5 uses
  %i.eb = add nuw nsw i32 %.088, %.04087
  %i.ec = lshr i32 %i.eb, 1                       ; 6 uses
  %i.ed = add nsw i32 %.088, %2                   ; 4 uses
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread, label %bb.o

bb.o:                                             ; preds = %.peel.next
  br i1 %or.cond.i, label %.split, label %bb.p

.split:                                           ; preds = %bb.o
  %i.ee = zext i32 %i.ed to i64                   ; 2 uses
  %i.ef = lshr i64 %i.ee, 6
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ef
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !121
  %i.ei = and i64 %i.ee, 63
  %i.ej = shl nuw i64 1, %i.ei
  %i.ek = and i64 %i.eh, %i.ej
  %.not.i.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i.i, label %.critedge, label %.split70, !prof !309

bb.p:                                             ; preds = %bb.o
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %.split68

.split68:                                         ; preds = %bb.p
  %i.el = sext i32 %i.ed to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !54
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = lshr i64 %i.eo, 6
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !121
  %i.es = and i64 %i.eo, 63
  %i.et = shl nuw i64 1, %i.es
  %i.eu = and i64 %i.et, %i.er
  %.not.i7.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i7.i, label %.critedge, label %.split71, !prof !309

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.p
  %i.ev = load i64, ptr %i.k, align 8, !tbaa !121
  %i.ew = and i64 %i.ev, 1
  %.not.i6.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i6.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52, !prof !309

.split70:                                         ; preds = %.split
  %i.ex = add nsw i32 %i.ec, %2                   ; 2 uses
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = lshr i64 %i.ey, 6
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !121
  %i.fc = and i64 %i.ey, 63
  %i.fd = shl nuw i64 1, %i.fc
  %i.fe = and i64 %i.fb, %i.fd
  %.not.i.i51 = icmp eq i64 %i.fe, 0
  br i1 %.not.i.i51, label %.critedge, label %.split75, !prof !310

.split71:                                         ; preds = %.split68
  %i.ff = add nsw i32 %i.ec, %2                   ; 2 uses
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !54
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = lshr i64 %i.fj, 6
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !121
  %i.fn = and i64 %i.fj, 63
  %i.fo = shl nuw i64 1, %i.fn
  %i.fp = and i64 %i.fo, %i.fm
  %.not.i7.i48 = icmp eq i64 %i.fp, 0
  br i1 %.not.i7.i48, label %.critedge, label %bb.q, !prof !310

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.fq = add nsw i32 %i.ec, %2
  %i.fr = load i64, ptr %i.k, align 8, !tbaa !121
  %i.fs = and i64 %i.fr, 1
  %.not.i6.i50 = icmp eq i64 %i.fs, 0
  br i1 %.not.i6.i50, label %.critedge, label %bb.q, !prof !310

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread: ; preds = %.peel.next
  %i.ft = add nsw i32 %i.ec, %2
  %i.fu = add i32 %i.w, %.04087
  br label %bb.r

.split75:                                         ; preds = %.split70
  %i.fv = add i32 %i.w, %.04087                   ; 2 uses
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = lshr i64 %i.fw, 6
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !121
  %i.ga = and i64 %i.fw, 63
  %i.gb = shl nuw i64 1, %i.ga
  %i.gc = and i64 %i.fz, %i.gb
  %.not.i.i58 = icmp eq i64 %i.gc, 0
  br i1 %.not.i.i58, label %.critedge, label %bb.r, !prof !310

bb.q:                                             ; preds = %.split71, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52
  %.ph124 = phi i32 [ %i.fq, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52 ], [ %i.ff, %.split71 ]
  %i.gd = add i32 %i.w, %.04087                   ; 3 uses
  %i.ge = trunc nuw i8 %i.ea to i1
  br i1 %i.ge, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59, label %.split77

.split77:                                         ; preds = %bb.q
  %i.gf = sext i32 %i.gd to i64
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !54
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = lshr i64 %i.gi, 6
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !121
  %i.gm = and i64 %i.gi, 63
  %i.gn = shl nuw i64 1, %i.gm
  %i.go = and i64 %i.gn, %i.gl
  %.not.i7.i55 = icmp eq i64 %i.go, 0
  br i1 %.not.i7.i55, label %.critedge, label %.thread127.thread131, !prof !310

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59: ; preds = %bb.q
  %i.gp = load i64, ptr %i.k, align 8, !tbaa !121
  %i.gq = and i64 %i.gp, 1
  %.not.i6.i57 = icmp eq i64 %i.gq, 0
  br i1 %.not.i6.i57, label %.critedge, label %.thread128, !prof !310

.critedge:                                        ; preds = %.split77, %.split75, %.split71, %.split70, %.split68, %.split, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59, %.split75.peel, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.peel, %.split77.peel, %.split70.peel, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52.peel, %.split71.peel, %.split.peel, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.peel, %.split68.peel
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEiiE18veloxCheckFailArgs_1, ptr noundef nonnull @.str.191) #28
  unreachable

bb.r:                                             ; preds = %.split75, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread
  %i.gr = phi i32 [ %i.ft, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread ], [ %i.ex, %.split75 ] ; 2 uses
  %i.gs = phi i32 [ %i.fu, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread ], [ %i.fv, %.split75 ] ; 3 uses
  br i1 %i.n, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61, label %.thread127

.thread127:                                       ; preds = %bb.r
  %i.gt = trunc nuw i8 %i.ea to i1
  br i1 %i.gt, label %.thread128, label %.thread127.thread131

.thread127.thread131:                             ; preds = %.split77, %.thread127
  %i.gu = phi i32 [ %i.gr, %.thread127 ], [ %.ph124, %.split77 ]
  %i.gv = phi i32 [ %i.gs, %.thread127 ], [ %i.gd, %.split77 ]
  %i.gw = sext i32 %i.gu to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.gw
  %i.gy = sext i32 %i.ed to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.gy
  br label %.thread128

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61: ; preds = %bb.r
  %i.ha = sext i32 %i.gr to i64
  %i.hb = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.ha
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !108
  %i.hd = sext i32 %i.ed to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !108
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63

.thread128:                                       ; preds = %.thread127, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59, %.thread127.thread131
  %i.hg = phi i32 [ %i.gv, %.thread127.thread131 ], [ %i.gs, %.thread127 ], [ %i.gd, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59 ]
  %.pn.in.in = phi ptr [ %i.gx, %.thread127.thread131 ], [ %i.y, %.thread127 ], [ %i.y, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59 ]
  %.0.i.i60.ph.in = phi ptr [ %i.gz, %.thread127.thread131 ], [ %i.y, %.thread127 ], [ %i.y, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59 ]
  %.pn.in = load i32, ptr %.pn.in.in, align 4, !tbaa !54
  %.pn = sext i32 %.pn.in to i64
  %.in134 = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %.pn
  %i.hh = load double, ptr %.in134, align 8, !tbaa !108 ; 2 uses
  %.0.i.i60.ph = load i32, ptr %.0.i.i60.ph.in, align 4, !tbaa !54
  %i.hi = sext i32 %.0.i.i60.ph to i64
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !108 ; 2 uses
  br i1 %i.t, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread128
  %i.hl = load i32, ptr %i.y, align 8, !tbaa !244
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63

bb.t:                                             ; preds = %.thread128
  %i.hm = sext i32 %i.hg to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !54
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63: ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61, %bb.s, %bb.t
  %i.hp = phi i8 [ 0, %bb.t ], [ 1, %bb.s ], [ %i.ea, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61 ]
  %i.hq = phi double [ %i.hk, %bb.t ], [ %i.hk, %bb.s ], [ %i.hf, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61 ] ; 2 uses
  %i.hr = phi double [ %i.hh, %bb.t ], [ %i.hh, %bb.s ], [ %i.hc, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61 ] ; 4 uses
  %.0.i.i62 = phi i32 [ %i.ho, %bb.t ], [ %i.hl, %bb.s ], [ %i.gs, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61 ]
  %i.hs = sext i32 %.0.i.i62 to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.hs
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !108 ; 2 uses
  %i.hv = fcmp ugt double %i.hq, %i.hr
  %i.hw = fcmp ugt double %i.hr, %i.hu
  %.not43 = or i1 %i.hv, %i.hw
  br i1 %.not43, label %.loopexit, label %bb.u, !prof !60

.loopexit:                                        ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63.peel
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEiiE18veloxCheckFailArgs_2, ptr noundef nonnull @.str.193) #28
  unreachable

bb.u:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63
  %10 = tail call double @llvm.fabs.f64(double %i.hr)
  %11 = fcmp ueq double %10, +inf
  %12 = tail call double @llvm.fabs.f64(double %i.hq)
  %13 = fcmp ueq double %12, +inf
  %or.cond.not90 = or i1 %13, %11
  %i.hx = tail call double @llvm.fabs.f64(double %i.hu)
  %i.hy = fcmp ueq double %i.hx, +inf
  %or.cond83 = or i1 %or.cond.not90, %i.hy
  br i1 %or.cond83, label %.critedge45, label %bb.v, !prof !684

.critedge45:                                      ; preds = %bb.u, %bb.l
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEiiE18veloxCheckFailArgs_3, ptr noundef nonnull @.str.48) #28
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.hz = fcmp olt double %0, %i.hr               ; 2 uses
  %i.ia = add nuw nsw i32 %i.ec, 1
  %.141 = select i1 %i.hz, i32 %i.ec, i32 %.04087 ; 2 uses
  %.1 = select i1 %i.hz, i32 %.088, i32 %i.ia     ; 3 uses
  %i.ib = icmp slt i32 %.1, %.141
  br i1 %i.ib, label %.peel.next, label %._crit_edge, !llvm.loop !682

._crit_edge:                                      ; preds = %bb.v, %bb.m
  %.1.lcssa = phi i32 [ %.1.peel, %bb.m ], [ %.1, %bb.v ]
  %i.ic = zext nneg i32 %.1.lcssa to i64
  ret i64 %i.ic
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlT_E_ZNS4_22applyToSelectedNoThrowISS_EEvSC_SR_EUlSR_E_EEvSC_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !688, !range !65, !noundef !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !689
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !121
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.025 = phi i64 [ %i.k, %.preheader ], [ %i.cs, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.025, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 4 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !690  ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !691, !nonnull !66, !align !137 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !293, !nonnull !66, !align !137
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !280
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !294, !nonnull !66, !align !137
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !280
  %i.y = sext i32 %i.q to i64                     ; 3 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !54
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !54
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !295, !nonnull !66, !align !137
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !280
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ab
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !296, !nonnull !66, !align !137
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !210 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !241
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 58
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !242, !range !65, !noundef !66
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 59
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !243, !range !65, !noundef !66
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.av = load i32, ptr %i.au, align 8, !tbaa !244
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !245
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.y
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !54
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i = phi i32 [ %i.az, %bb.e ], [ %i.av, %bb.d ], [ %i.q, %bb.b ]
  %i.ba = sext i32 %.0.i.i.i to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !108
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !297, !nonnull !66, !align !137
  %i.bf = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %i.bg = invoke fastcc noundef i64 @_ZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEii(double noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i32 noundef %i.ai, i32 noundef %i.ad)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit unwind label %bb.f

_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit: ; preds = %.noexc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !298, !nonnull !66, !align !137
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !139
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.y
  store i64 %i.bg, ptr %i.bk, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.f:                                             ; preds = %.noexc, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0      ; 2 uses
  %i.bn = extractvalue { ptr, i32 } %i.bl, 1      ; 2 uses
  %i.bo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #24
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bm) #24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !249 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !61 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 152
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !48
  %i.bx = icmp eq i64 %i.bw, 4
  br i1 %i.bx, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !49
  %or.cond.not.i.i.i = icmp eq i8 %i.by, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !49
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ca, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !49
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.cc, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !49
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ce, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.q

.loopexit:                                        ; preds = %bb.g, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #28
          to label %bb.u unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.cf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.cg = icmp eq i32 %i.bn, %i.cf
  br i1 %i.cg, label %bb.i, label %.loopexit19

bb.i:                                             ; preds = %bb.h
  %i.ch = call ptr @__cxa_begin_catch(ptr %i.bm) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ci = load ptr, ptr %3, align 8, !tbaa !251
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.l:                                             ; preds = %bb.i
  %i.cj = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlT_E_ZNS4_22applyToSelectedNoThrowISS_EEvSC_SR_EUlSR_E_EEvSC_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  %i.ba = sext i32 %.0.i.i.i to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !108
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !316, !nonnull !66, !align !137
  %i.bf = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %i.bg = invoke fastcc noundef i64 @_ZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIlEEldRNS0_13DecodedVectorEii(double noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i32 noundef %i.ai, i32 noundef %i.ad)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit unwind label %bb.f

_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit: ; preds = %.noexc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !317, !nonnull !66, !align !137
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !139
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.y
  store i64 %i.bg, ptr %i.bk, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.f:                                             ; preds = %.noexc, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0      ; 2 uses
  %i.bn = extractvalue { ptr, i32 } %i.bl, 1      ; 2 uses
  %i.bo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #24
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bm) #24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !249 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !61 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 152
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !48
  %i.bx = icmp eq i64 %i.bw, 4
  br i1 %i.bx, label %.lr.ph.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !49
  %or.cond.not.i.i.i = icmp eq i8 %i.by, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !49
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ca, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !49
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.cc, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !49
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ce, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.q

.loopexit:                                        ; preds = %bb.g, %.lr.ph.i.i.i.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #28
          to label %bb.u unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.cf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.cg = icmp eq i32 %i.bn, %i.cf
  br i1 %i.cg, label %bb.i, label %.loopexit19

bb.i:                                             ; preds = %bb.h
  %i.ch = call ptr @__cxa_begin_catch(ptr %i.bm) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ci = load ptr, ptr %3, align 8, !tbaa !251
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.l:                                             ; preds = %bb.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %3, align 8, !tbaa !251
  %.not.i12 = icmp eq ptr %i.ck, null
  br i1 %.not.i12, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  invoke void @__cxa_end_catch()
          to label %.loopexit19 unwind label %bb.t

bb.n:                                             ; preds = %.loopexit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cm = load ptr, ptr %4, align 8, !tbaa !251
  %.not.i14 = icmp eq ptr %i.cm, null
  br i1 %.not.i14, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.q:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %4, align 8, !tbaa !251
  %.not.i16 = icmp eq ptr %i.co, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.cn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17 ], [ %i.cl, %bb.n ]
  invoke void @__cxa_end_catch()
          to label %.loopexit19 unwind label %bb.t

.loopexit19:                                      ; preds = %bb.h, %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13
  %.merged.i = phi { ptr, i32 } [ %i.cj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13 ], [ %.pn.i, %bb.s ], [ %i.bl, %bb.h ]
  resume { ptr, i32 } %.merged.i

bb.t:                                             ; preds = %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #27
  unreachable

bb.u:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15
  %i.cr = add i64 %.025, -1
  %i.cs = and i64 %i.cr, %.025                    ; 2 uses
  %.not10 = icmp eq i64 %i.cs, 0
  br i1 %.not10, label %.loopexit18, label %bb.b, !llvm.loop !710

.loopexit18:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind memory(none) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!1 = distinct !{!1, !74}
!2 = distinct !{null, null}
!3 = distinct !{null}
!4 = distinct !{!4, !74}
!5 = distinct !{null, null, null}
!6 = distinct !{null, null, null}
!7 = distinct !{!7, !74}
!8 = distinct !{!8, !74}
!9 = distinct !{null, null, null}
!10 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!11 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!12 = distinct !{!12, !74}
!13 = distinct !{!13, !74}
!14 = distinct !{!14, !74}
!15 = distinct !{null}
!16 = distinct !{!16, !74}
!17 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!18 = distinct !{!18, !74}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!22 = !{!"Simple C++ TBAA"}
!23 = !{!"omnipotent char", !22, i64 0}
!24 = !{!"int", !23, i64 0}
!25 = !{!"__libc_errno", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"any pointer", !23, i64 0}
!28 = !{!"any p2 pointer", !27, i64 0}
!29 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !28, i64 0}
!30 = !{!"long", !23, i64 0}
!31 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !27, i64 0}
!32 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !31, i64 0}
!33 = !{!"float", !23, i64 0}
!34 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !33, i64 0, !30, i64 8}
!35 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !29, i64 0, !30, i64 8, !32, i64 16, !30, i64 24, !34, i64 32, !31, i64 48}
!36 = !{!35, !29, i64 0}
!37 = !{!35, !30, i64 8}
!38 = !{!"p1 long", !27, i64 0}
!39 = !{!"_ZTSSt18_Bit_iterator_base", !38, i64 0, !24, i64 8}
!40 = !{!39, !38, i64 0}
!41 = !{!"_ZTSSt13_Bit_iterator", !39, i64 0}
!42 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !41, i64 0, !41, i64 16, !38, i64 32}
!43 = !{!42, !38, i64 32}
!44 = !{!"p1 omnipotent char", !27, i64 0}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !44, i64 0}
!46 = !{!45, !44, i64 0}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !30, i64 8, !23, i64 16}
!48 = !{!47, !30, i64 8}
!49 = !{!23, !23, i64 0}
!50 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!51 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !50, i64 0}
!52 = !{!51, !50, i64 0}
!53 = !{!27, !27, i64 0}
!54 = !{!24, !24, i64 0}
!55 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 8, !24, i64 12}
!56 = !{!55, !24, i64 8}
!57 = !{!55, !24, i64 12}
!58 = !{!"vtable pointer", !22, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = !{!47, !44, i64 0}
!62 = !{!"bool", !23, i64 0}
!63 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !23, i64 0, !62, i64 104}
!64 = !{!63, !62, i64 104}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !23, i64 0, !62, i64 32}
!68 = !{!67, !62, i64 32}
!69 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!70 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !27, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!71, !70, i64 0}
!73 = !{!71, !70, i64 8}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!76 = !{!71, !70, i64 16}
!77 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!78 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!79 = !{!"p1 _ZTSN8facebook5velox4TypeE", !27, i64 0}
!80 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !79, i64 0, !51, i64 8}
!81 = !{!"_ZTSN8facebook5velox8TypeKindE", !23, i64 0}
!82 = !{!81, !81, i64 0}
!83 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !27, i64 0}
!84 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !83, i64 0, !51, i64 8}
!85 = !{!84, !83, i64 0}
!86 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !80, i64 0}
!87 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !23, i64 0}
!88 = !{!"p1 _ZTSN8facebook5velox6BufferE", !27, i64 0}
!89 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !88, i64 0}
!90 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !27, i64 0}
!91 = !{!"_ZTSSt22_Optional_payload_baseIiE", !23, i64 0, !62, i64 4}
!92 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !91, i64 0}
!93 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !92, i64 0}
!94 = !{!"_ZTSSt8optionalIiE", !93, i64 0}
!95 = !{!"_ZTSSt13__atomic_baseIbE", !62, i64 0}
!96 = !{!"_ZTSSt6atomicIbE", !95, i64 0}
!97 = !{!"_ZTSN8facebook5velox10BaseVectorE", !86, i64 8, !81, i64 24, !62, i64 25, !87, i64 28, !89, i64 32, !38, i64 40, !90, i64 48, !24, i64 56, !94, i64 60, !94, i64 68, !94, i64 76, !94, i64 84, !96, i64 92, !62, i64 93}
!98 = !{!"p1 int", !27, i64 0}
!99 = !{!"_ZTSN8facebook5velox15ArrayVectorBaseE", !97, i64 0, !89, i64 96, !98, i64 104, !89, i64 112, !98, i64 120}
!100 = !{!99, !98, i64 120}
!101 = !{!99, !98, i64 104}
!102 = !{!"p1 double", !27, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!103, !102, i64 16}
!105 = !{!103, !102, i64 0}
!106 = !{!103, !102, i64 8}
!107 = !{!"double", !23, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!"llvm.loop.peeled.count", i32 1}
!110 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !71, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !110, i64 0}
!112 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !111, i64 0}
!113 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ELb0ELb0EE", !67, i64 0}
!114 = !{!"_ZTSSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EE", !113, i64 0}
!115 = !{!"_ZTSSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EE", !114, i64 0}
!116 = !{!"_ZTSSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !115, i64 0}
!117 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !47, i64 0, !112, i64 32, !116, i64 56, !62, i64 96}
!118 = !{!117, !62, i64 96}
!119 = !{!70, !70, i64 0}
!120 = !{!39, !24, i64 8}
!121 = !{!30, !30, i64 0}
!122 = !{!"_ZTSN3fmt3v1111basic_specsE", !24, i64 0, !23, i64 4}
!123 = !{!122, !24, i64 0}
!124 = !{!"_ZTSN3fmt3v1112format_specsE", !122, i64 0, !24, i64 8, !24, i64 12}
!125 = !{!124, !24, i64 12}
!126 = !{!"_ZTSN3fmt3v1117basic_string_viewIcEE", !44, i64 0, !30, i64 8}
!127 = !{!126, !44, i64 0}
!128 = !{!126, !30, i64 8}
!129 = !{!"p1 _ZTSN3fmt3v116detail6bufferIcEE", !27, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{!"_ZTSN3fmt3v1111arg_id_kindE", !23, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!"_ZTSN3fmt3v1113parse_contextIcEE", !126, i64 0, !24, i64 16}
!134 = !{!133, !24, i64 16}
!135 = !{!"p1 _ZTSN3fmt3v1113parse_contextIcEE", !27, i64 0}
!136 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !27, i64 0}
!137 = !{i64 8}
!138 = !{i64 4}
!139 = !{!38, !38, i64 0}
!140 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !44, i64 0, !30, i64 8, !30, i64 16, !27, i64 24}
!141 = !{!140, !44, i64 0}
!142 = !{!140, !30, i64 8}
!143 = !{!140, !30, i64 16}
!144 = !{!140, !27, i64 24}
!145 = !{!"_ZTSN3fmt3v116detail15counting_bufferIcEE", !140, i64 0, !23, i64 32, !30, i64 288}
!146 = !{!145, !30, i64 288}
!147 = !{!124, !24, i64 8}
!148 = !{!"llvm.loop.isvectorized", i32 1}
!149 = !{!"llvm.loop.unroll.runtime.disable"}
!150 = !{!"branch_weights", i32 16, i32 112}
!151 = !{!"llvm.loop.unroll.disable"}
!152 = !{!"_ZTSZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS4_E_", !62, i64 0, !126, i64 8, !44, i64 24, !30, i64 32}
!153 = !{!152, !62, i64 0}
!154 = !{!44, !44, i64 0}
!155 = !{!152, !44, i64 24}
!156 = !{!152, !30, i64 32}
!157 = !{!"_ZTSN3fmt3v116detail18find_escape_resultIcEE", !44, i64 0, !44, i64 8, !24, i64 16}
!158 = !{!157, !44, i64 0}
!159 = !{!157, !44, i64 8}
!160 = !{!157, !24, i64 16}
!161 = !{!"branch_weights", i32 8, i32 120}
!162 = !{!"_ZTSSt9type_info", !44, i64 8}
!163 = !{!162, !44, i64 8}
!164 = !{!"p1 _ZTSN8facebook5velox10ScalarTypeILNS0_8TypeKindE4EEE", !27, i64 0}
!165 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE4EEELN9__gnu_cxx12_Lock_policyE2EE", !164, i64 0, !51, i64 8}
end_hunk_1
