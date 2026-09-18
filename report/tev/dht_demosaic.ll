Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dht_demosaic?download=true
inline.NumInlined: 399
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN3DHT12restore_hotsEv:bb.a
  %i.ci = phi ptr [ %i.br, %_ZN6LibRaw5COLOREii.exit ], [ %i.y, %bb.b ]
  %i.cj = phi ptr [ %i.br, %_ZN6LibRaw5COLOREii.exit ], [ %i.z, %bb.b ]
  %i.ck = phi i32 [ %i.bq, %_ZN6LibRaw5COLOREii.exit ], [ %i.aa, %bb.b ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !110
}

; Function Attrs: mustprogress uwtable
define void @_ZN3DHT14make_diag_dirsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91, !nonnull !94, !align !95
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.d = load i16, ptr %i.c, align 4, !tbaa !78
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.e = icmp eq i16 %i.i, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph9

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.067 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZN3DHT15make_diag_dlineEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.067)
  %i.f = add nuw nsw i32 %.067, 1                 ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !91, !nonnull !94, !align !95
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.i = load i16, ptr %i.h, align 4, !tbaa !78   ; 2 uses
  %i.j = zext i16 %i.i to i32
  %i.k = icmp samesign ult i32 %i.f, %i.j
  br i1 %i.k, label %.lr.ph, label %.preheader, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph9, %bb.a, %.preheader
  ret void

.lr.ph9:                                          ; preds = %.preheader, %.lr.ph9
  %.08 = phi i32 [ %i.l, %.lr.ph9 ], [ 0, %.preheader ] ; 2 uses
  tail call void @_ZN3DHT17refine_idiag_dirsEi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %.08)
  %i.l = add nuw nsw i32 %.08, 1                  ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !91, !nonnull !94, !align !95
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  %i.o = load i16, ptr %i.n, align 4, !tbaa !78
  %i.p = zext i16 %i.o to i32
  %i.q = icmp samesign ult i32 %i.l, %i.p
  br i1 %i.q, label %.lr.ph9, label %._crit_edge, !llvm.loop !1
}

; Function Attrs: mustprogress uwtable
define void @_ZN3DHT15make_diag_dlineEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91, !nonnull !94, !align !95 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !80   ; 2 uses
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  %i.g = load i32, ptr %i.f, align 8, !tbaa !90   ; 4 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %_ZN6LibRaw5COLOREii.exit28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i32 %i.g, 1000
  br i1 %i.h, label %_ZN6LibRaw5COLOREii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 381670
  %i.j = load i16, ptr %i.i, align 2, !tbaa !92   ; 2 uses
  %.not8.i = icmp eq i16 %i.j, 0
  br i1 %.not8.i, label %bb.d, label %_ZN6LibRaw3FCFEii.exit.i

_ZN6LibRaw3FCFEii.exit.i:                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 381828
  %i.l = load i32, ptr %i.k, align 4, !tbaa !93
  %.not.i.i = icmp ne i32 %i.l, 0                 ; 2 uses
  %i.m = zext i1 %.not.i.i to i32
  %.sink13.i.i.v = ashr i32 %1, %i.m
  %i.n = zext i16 %i.j to i32
  %.sink13.i.i = add nuw nsw i32 %i.n, 7
  %i.o = add i32 %.sink13.i.i, %.sink13.i.i.v
  %i.p = add nsw i32 %1, 1
  %i.q = lshr i32 %i.p, 1
  %i.r = select i1 %.not.i.i, i32 %i.q, i32 %1
  %i.s = shl i32 %i.o, 1
  %i.t = and i32 %i.s, 14
  %i.u = and i32 %i.r, 1
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = shl nuw nsw i32 %i.v, 1
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.x = shl i32 %1, 2
  %i.y = and i32 %i.x, 28
  br label %.thread

.thread:                                          ; preds = %bb.d, %_ZN6LibRaw3FCFEii.exit.i
  %.sink = phi i32 [ %i.y, %bb.d ], [ %i.w, %_ZN6LibRaw3FCFEii.exit.i ]
  %i.z = lshr i32 %i.g, %.sink                    ; 2 uses
  %i.aa = and i32 %i.z, 1
  br label %bb.g

_ZN6LibRaw5COLOREii.exit:                         ; preds = %bb.b
  %i.ab = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %i.b, i32 noundef %1, i32 noundef 0) ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !91  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 544
  %.pre30 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !90 ; 3 uses
  %i.ac = and i32 %i.ab, 1                        ; 4 uses
  %.not.i20 = icmp eq i32 %.pre30, 0
  br i1 %.not.i20, label %_ZN6LibRaw5COLOREii.exit28, label %bb.e

bb.e:                                             ; preds = %_ZN6LibRaw5COLOREii.exit
  %i.ad = icmp ult i32 %.pre30, 1000
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = tail call noundef i32 @_ZN6LibRaw4fcolEii(ptr noundef nonnull align 8 dereferenceable(768512) %.pre, i32 noundef %1, i32 noundef %i.ac)
  br label %_ZN6LibRaw5COLOREii.exit28

bb.g:                                             ; preds = %.thread, %bb.e
  %i.af = phi i32 [ %i.g, %.thread ], [ %.pre30, %bb.e ] ; 2 uses
  %i.ag = phi ptr [ %i.b, %.thread ], [ %.pre, %bb.e ] ; 2 uses
  %.0.i3944 = phi i32 [ %i.z, %.thread ], [ %i.ab, %bb.e ]
  %i.ah = phi i32 [ %i.aa, %.thread ], [ %i.ac, %bb.e ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 381670
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !92 ; 2 uses
  %.not8.i21 = icmp eq i16 %i.aj, 0
  br i1 %.not8.i21, label %bb.h, label %_ZN6LibRaw3FCFEii.exit.i23

_ZN6LibRaw3FCFEii.exit.i23:                       ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 381828
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !93
  %.not.i.i22 = icmp eq i32 %i.al, 0              ; 3 uses
  %i.am = add i32 %1, 7
  %i.an = xor i32 %i.ah, -1
  %i.ao = lshr i32 %1, 1
  %i.ap = add nsw i32 %i.ao, %i.an
  %.sink13.i.i24 = select i1 %.not.i.i22, i32 %i.am, i32 %i.ap
  %.sink.i.i25 = select i1 %.not.i.i22, i32 %i.ah, i32 %1
  %.sink11.i.i26 = select i1 %.not.i.i22, i32 %1, i32 %.0.i3944
  %i.aq = zext i16 %i.aj to i32
  %i.ar = add i32 %.sink13.i.i24, %i.aq
  %i.as = add nsw i32 %.sink.i.i25, 1
  %i.at = lshr i32 %i.as, 1
  %i.au = add i32 %i.at, %.sink11.i.i26
  %i.av = shl i32 %i.ar, 1
  %i.aw = and i32 %i.av, 14
  %i.ax = and i32 %i.au, 1
  %i.ay = or disjoint i32 %i.ax, %i.aw
  %i.az = shl nuw nsw i32 %i.ay, 1
  %i.ba = lshr i32 %i.af, %i.az
  %i.bb = and i32 %i.ba, 3
  br label %_ZN6LibRaw5COLOREii.exit28

bb.h:                                             ; preds = %bb.g
  %i.bc = shl i32 %1, 1
  %i.bd = and i32 %i.bc, 14
  %i.be = or disjoint i32 %i.ah, %i.bd
  %i.bf = shl nuw nsw i32 %i.be, 1
  %i.bg = lshr i32 %i.af, %i.bf
  %i.bh = and i32 %i.bg, 3
  br label %_ZN6LibRaw5COLOREii.exit28

_ZN6LibRaw5COLOREii.exit28:                       ; preds = %bb.a, %_ZN6LibRaw5COLOREii.exit, %bb.f, %_ZN6LibRaw3FCFEii.exit.i23, %bb.h
  %i.bi = phi i32 [ %i.ac, %bb.f ], [ %i.ac, %_ZN6LibRaw5COLOREii.exit ], [ %i.ah, %_ZN6LibRaw3FCFEii.exit.i23 ], [ %i.ah, %bb.h ], [ 0, %bb.a ]
  %.0.i27 = phi i32 [ %i.ae, %bb.f ], [ 6, %_ZN6LibRaw5COLOREii.exit ], [ %i.bb, %_ZN6LibRaw3FCFEii.exit.i23 ], [ %i.bh, %bb.h ], [ 6, %bb.a ]
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6LibRaw5COLOREii.exit28
  %i.bj = add nsw i32 %1, 4                       ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = add nsw i32 %1, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = add nsw i32 %1, 5                       ; 2 uses
  %i.bo = sext i32 %.0.i27 to i64                 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.i

._crit_edge:                                      ; preds = %bb.l, %_ZN6LibRaw5COLOREii.exit28
  ret void

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %.01929 = phi i32 [ 0, %.lr.ph ], [ %i.fz, %bb.l ] ; 6 uses
  %i.bq = add nuw nsw i32 %.01929, 4              ; 2 uses
  %i.br = and i32 %.01929, 1
  %i.bs = icmp eq i32 %i.br, %i.bi
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !82 ; 9 uses
  %i.bu = add nuw nsw i32 %.01929, 3              ; 3 uses
  %i.bv = load i32, ptr %i.bm, align 4, !tbaa !81 ; 5 uses
  %i.bw = mul nsw i32 %i.bv, %i.bl                ; 3 uses
  %i.bx = add nsw i32 %i.bw, %i.bu
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [12 x i8], ptr %i.bt, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !86 ; 3 uses
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.bo
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !86
  %i.ce = add nuw nsw i32 %.01929, 5              ; 2 uses
  %i.cf = mul nsw i32 %i.bv, %i.bn                ; 2 uses
  %i.cg = add nsw i32 %i.cf, %i.ce
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [12 x i8], ptr %i.bt, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !86 ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.bo
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !86
  %2 = insertelement <2 x float> poison, float %i.ck, i64 0
  %3 = insertelement <2 x float> %2, float %i.cb, i64 1
  %4 = insertelement <2 x float> poison, float %i.cm, i64 0
  %5 = insertelement <2 x float> %4, float %i.cd, i64 1
  %6 = fdiv <2 x float> %3, %5                    ; 4 uses
  %7 = extractelement <2 x float> %6, i64 0
  %8 = extractelement <2 x float> %6, i64 1
  %i.cn = fcmp ogt float %8, %7
  %9 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %10 = fdiv <2 x float> %6, %9                   ; 2 uses
  %11 = extractelement <2 x float> %10, i64 0
  %12 = extractelement <2 x float> %10, i64 1
  %i.co = select i1 %i.cn, float %12, float %11
  %i.cp = mul nsw i32 %i.bv, %i.bj
  %i.cq = add nsw i32 %i.cp, %i.bq
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [12 x i8], ptr %i.bt, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !86 ; 2 uses
  %i.cv = fmul float %i.cu, %i.cu
  %i.cw = add nsw i32 %i.bw, %i.ce
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [12 x i8], ptr %i.bt, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load float, ptr %i.cz, align 4, !tbaa !86
  %i.db = add nsw i32 %i.cf, %i.bu
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [12 x i8], ptr %i.bt, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load float, ptr %i.de, align 4, !tbaa !86
  %i.dg = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.cb, i64 1
  %i.di = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.ck, i64 1
  %i.dk = fmul <2 x float> %i.dh, %i.dj           ; 3 uses
  %i.dl = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dn = fcmp ogt <2 x float> %i.dk, %i.dm
  %i.do = fdiv <2 x float> %i.dk, %i.dm
  %i.dp = fdiv <2 x float> %i.dm, %i.dk
  %i.dq = select <2 x i1> %i.dn, <2 x float> %i.do, <2 x float> %i.dp
  %i.dr = insertelement <2 x float> poison, float %i.co, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = fmul <2 x float> %i.ds, %i.dq           ; 4 uses
  %i.du = extractelement <2 x float> %i.dt, i64 0
  %i.dv = extractelement <2 x float> %i.dt, i64 1
  %i.dw = fcmp ogt float %i.dv, %i.du
  %i.dx = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dy = fdiv <2 x float> %i.dt, %i.dx
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dz = add nuw nsw i32 %.01929, 5              ; 2 uses
  %i.ea = mul nsw i32 %i.bv, %i.bn                ; 2 uses
  %i.eb = add nsw i32 %i.ea, %i.dz
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [12 x i8], ptr %i.bt, i64 %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !86
  %i.eg = mul nsw i32 %i.bv, %i.bj
  %i.eh = add nsw i32 %i.eg, %i.bq
  %i.ei = sext i32 %i.eh to i64                   ; 2 uses
  %i.ej = getelementptr inbounds [12 x i8], ptr %i.bt, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !86 ; 2 uses
  %i.em = fmul float %i.el, %i.el
  %i.en = add nsw i32 %i.bw, %i.dz
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [12 x i8], ptr %i.bt, i64 %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load float, ptr %i.eq, align 4, !tbaa !86
  %i.es = add nsw i32 %i.ea, %i.bu
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [12 x i8], ptr %i.bt, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !86
  %i.ex = insertelement <2 x float> poison, float %i.er, i64 0
  %i.ey = insertelement <2 x float> %i.ex, float %i.cb, i64 1
  %i.ez = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.ef, i64 1
  %i.fb = fmul <2 x float> %i.ey, %i.fa           ; 3 uses
  %i.fc = insertelement <2 x float> poison, float %i.em, i64 0
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fe = fcmp ogt <2 x float> %i.fb, %i.fd
  %i.ff = fdiv <2 x float> %i.fb, %i.fd
  %i.fg = fdiv <2 x float> %i.fd, %i.fb
  %i.fh = select <2 x i1> %i.fe, <2 x float> %i.ff, <2 x float> %i.fg ; 4 uses
  %i.fi = extractelement <2 x float> %i.fh, i64 0
  %i.fj = extractelement <2 x float> %i.fh, i64 1
  %i.fk = fcmp ogt float %i.fj, %i.fi
  %i.fl = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = fdiv <2 x float> %i.fh, %i.fl
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink45 = phi i1 [ %i.fk, %bb.k ], [ %i.dw, %bb.j ]
  %.pre-phi = phi i64 [ %i.ei, %bb.k ], [ %i.cr, %bb.j ]
  %i.fn = phi <2 x float> [ %i.fm, %bb.k ], [ %i.dy, %bb.j ] ; 2 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 1
  %i.fp = fcmp ogt float %i.fo, 1.400000e+00
  %i.fq = select i1 %i.fp, i8 40, i8 32
  %i.fr = extractelement <2 x float> %i.fn, i64 0
  %i.fs = fcmp ogt float %i.fr, 1.400000e+00
  %i.ft = select i1 %i.fs, i8 24, i8 16
  %i.fu = select i1 %.sink45, i8 %i.fq, i8 %i.ft
  %i.fv = load ptr, ptr %i.bp, align 8, !tbaa !83
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %.pre-phi ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !96
  %i.fy = or i8 %i.fx, %i.fu
  store i8 %i.fy, ptr %i.fw, align 1, !tbaa !96
  %i.fz = add nuw nsw i32 %.01929, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.fz, %i.e
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3DHT17refine_idiag_dirsEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91, !nonnull !94, !align !95
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.d = load i16, ptr %i.c, align 2, !tbaa !80   ; 2 uses
  %i.e = zext i16 %i.d to i32
  %.not65 = icmp eq i16 %i.d, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %1, 4                        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.i = add nsw i32 %1, 3
  %i.j = add nsw i32 %1, 5
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.064 = phi i32 [ 0, %.lr.ph ], [ %i.dg, %bb.g ] ; 4 uses
  %i.k = add nuw nsw i32 %.064, 4                 ; 6 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !83   ; 10 uses
  %i.m = load i32, ptr %i.h, align 4, !tbaa !81   ; 3 uses
  %i.n = mul nsw i32 %i.m, %i.f                   ; 3 uses
  %i.o = add nsw i32 %i.n, %i.k
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %i.p ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !96    ; 3 uses
  %i.s = and i8 %i.r, 8
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.t = mul nsw i32 %i.m, %i.i                   ; 3 uses
  %i.u = add nsw i32 %i.t, %i.k
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %i.l, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !96    ; 2 uses
  %i.y = and i8 %i.x, 16
  %i.z = mul nsw i32 %i.m, %i.j                   ; 3 uses
  %i.aa = add nsw i32 %i.z, %i.k
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.l, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !96  ; 2 uses
  %i.ae = and i8 %i.ad, 16
  %narrow = add nuw nsw i8 %i.ae, %i.y
  %i.af = add nuw nsw i32 %.064, 3                ; 3 uses
  %i.ag = add nsw i32 %i.n, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.l, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !96  ; 2 uses
  %i.ak = and i8 %i.aj, 16
  %narrow58 = add nuw nsw i8 %narrow, %i.ak
  %i.al = add nuw nsw i32 %.064, 5                ; 3 uses
  %i.am = add nsw i32 %i.n, %i.al
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds i8, ptr %i.l, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !96  ; 2 uses
  %i.aq = and i8 %i.ap, 16
  %narrow59 = add nuw nsw i8 %narrow58, %i.aq
  %i.ar = add nsw i32 %i.t, %i.af
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.l, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !96  ; 2 uses
  %i.av = and i8 %i.au, 16
  %narrow62 = add nuw nsw i8 %narrow59, %i.av
  %i.aw = add nsw i32 %i.t, %i.al
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.l, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !96  ; 2 uses
  %i.ba = and i8 %i.az, 16
  %narrow72 = add nuw nsw i8 %narrow62, %i.ba
  %i.bb = add nsw i32 %i.z, %i.af
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.l, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !96  ; 2 uses
  %i.bf = and i8 %i.be, 16
  %narrow73 = add nuw i8 %narrow72, %i.bf
  %i.bg = zext i8 %narrow73 to i32
  %i.bh = add nsw i32 %i.z, %i.al
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.l, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !96  ; 2 uses
  %i.bl = and i8 %i.bk, 16
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = add nuw nsw i32 %i.bg, %i.bm
  %i.bo = and i8 %i.x, 32
  %i.bp = and i8 %i.ad, 32
  %narrow60 = add nuw nsw i8 %i.bp, %i.bo
  %i.bq = and i8 %i.aj, 32
  %narrow61 = add nuw nsw i8 %narrow60, %i.bq
  %i.br = and i8 %i.ap, 32
  %narrow63 = add nuw i8 %narrow61, %i.br
  %i.bs = zext i8 %narrow63 to i32
end_hunk_0
