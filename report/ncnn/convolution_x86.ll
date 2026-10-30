Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86?download=true
inline.NumInlined: 404
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 220
begin_hunk_0_@_ZN4ncnnL42conv3x3s1_winograd43_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined:bb.a
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL42conv3x3s1_winograd23_transform_kernel_int8ERKNS_3MatERS0_iiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !78     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !78
  %i.h = load i32, ptr %0, align 4, !tbaa !78     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !78
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !78
  %i.k = load i32, ptr %i.a, align 4, !tbaa !78   ; 2 uses
  %.not112 = icmp sgt i32 %i.k, %i.j
  br i1 %.not112, label %._crit_edge, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph114, %_ZN4ncnn3MatD2Ev.exit
  %.033113 = phi i32 [ %i.k, %.lr.ph114 ], [ %i.be, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !78
  %i.s = mul i32 %i.r, %.033113                   ; 3 uses
  %i.t = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %_ZN4ncnn3Mat7channelEi.exit49 unwind label %bb.i

_ZN4ncnn3Mat7channelEi.exit49:                    ; preds = %bb.c
  %i.u = load ptr, ptr %4, align 8, !tbaa !34, !noalias !1218 ; 2 uses
  %i.v = load i64, ptr %i.l, align 8, !tbaa !35, !noalias !1218
  %i.w = sext i32 %i.t to i64
  %i.x = mul i64 %i.v, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !76, !noalias !1218
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr i8, ptr %i.u, i64 %i.z    ; 4 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !78    ; 6 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3Mat7channelEi.exit49
  %i.ad = load i32, ptr %7, align 4, !tbaa !78
  %i.ae = sub i32 %i.ad, %i.s
  %i.af = load i32, ptr %3, align 4, !tbaa !78    ; 2 uses
  %.sroa.speculated83 = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ae) ; 6 uses
  %i.ag = load i32, ptr %6, align 4, !tbaa !78    ; 9 uses
  %i.ah = icmp sgt i32 %.sroa.speculated83, 0
  %wide.trip.count20.i = zext i32 %.sroa.speculated83 to i64 ; 3 uses
  %i.ai = sdiv i32 %i.s, %i.af
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !86, !noalias !1219
  %i.ak = load i32, ptr %i.o, align 8, !tbaa !87, !noalias !1219
  %i.al = load ptr, ptr %10, align 8, !tbaa !34, !noalias !1219
  %i.am = load i64, ptr %i.p, align 8, !tbaa !35, !noalias !1219
  %i.an = sext i32 %i.ai to i64
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = load i64, ptr %i.q, align 8, !tbaa !76, !noalias !1219 ; 2 uses
  %i.aq = mul i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aq
  %i.as = sext i32 %i.aj to i64
  %i.at = sext i32 %i.ak to i64
  %i.au = mul i64 %i.ap, %i.as                    ; 2 uses
  %i.av = mul i64 %i.au, %i.at
  %i.aw = icmp sgt i32 %.sroa.speculated83, 3
  %i.ax = sext i32 %.sroa.speculated83 to i64     ; 2 uses
  %invariant.op.i = add nsw i64 %i.ax, -3
  %invariant.op87.i = add nsw i64 %i.ax, -1
  %i.ay = sext i32 %i.ag to i64
  %i.az = zext nneg i32 %i.ab to i64
  %i.ba = shl nuw nsw i64 %wide.trip.count20.i, 1
  %i.bb = add nsw i64 %i.ba, -2
  %i.bc = getelementptr i8, ptr %i.u, i64 %i.z
  %i.bd = getelementptr i8, ptr %i.bc, i64 2
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit34, %_ZN4ncnn3Mat7channelEi.exit49
  %i.be = add i32 %.033113, 1
  %i.bf = load i32, ptr %i.b, align 4, !tbaa !78
  %.not.not = icmp slt i32 %.033113, %i.bf
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit34
  %indvar = phi i32 [ 0, %.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit34 ] ; 4 uses
  %i.bg = mul i32 %i.ag, %indvar
  %i.bh = sub i32 %i.ab, %i.bg
  %smin192 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bh) ; 5 uses
  %i.bi = add i32 %smin192, -2                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 1                       ; 2 uses
  %i.bk = add nuw i32 %i.bj, 1                    ; 2 uses
  %i.bl = mul i32 %i.ag, %indvar
  %i.bm = sub i32 %i.ab, %i.bl
  %smin155 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.bm)
  %i.bn = shl i32 %smin155, 4
  %i.bo = sext i32 %i.bn to i64
  %i.bp = shl nsw i64 %i.bo, 1                    ; 2 uses
  %i.bq = mul i32 %i.ag, %indvar
  %i.br = sub i32 %i.ab, %i.bq
  %smin = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.br) ; 2 uses
  %i.bs = add i32 %smin, -1
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = shl nuw nsw i64 %i.bt, 1
  %i.bv = shl i32 %smin, 4                        ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul i64 %i.bb, %i.bw
  %i.by = shl nuw nsw i64 %i.bt, 5
  %i.bz = trunc i64 %indvars.iv to i32
  %i.ca = sub i32 %i.ab, %i.bz
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.ca) ; 20 uses
  %.val50 = load ptr, ptr %8, align 8
  br i1 %i.ah, label %.preheader4.lr.ph.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader4.lr.ph.i:                              ; preds = %bb.d
  %i.cb = load i32, ptr %9, align 4, !tbaa !78
  %i.cc = icmp sgt i32 %.sroa.speculated, 0
  %i.cd = mul i32 %i.cb, 9
  br i1 %i.cc, label %.preheader4.preheader.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit

.preheader4.preheader.i:                          ; preds = %.preheader4.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64
  br label %.preheader4.i

.preheader4.i:                                    ; preds = %._crit_edge.i, %.preheader4.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %.preheader4.preheader.i ], [ %indvars.iv.next18.i, %._crit_edge.i ] ; 2 uses
  %.012.i = phi ptr [ %i.aa, %.preheader4.preheader.i ], [ %i.fu, %._crit_edge.i ]
  %i.ce = trunc i64 %indvars.iv17.i to i32
  %i.cf = add i32 %i.s, %i.ce
  %i.cg = mul i32 %i.cd, %i.cf
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %.val50, i64 %i.ch
  br label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.preheader.i, %.preheader4.i
  %indvars.iv.i = phi i64 [ 0, %.preheader4.i ], [ %indvars.iv.next.i, %.preheader.preheader.i ] ; 2 uses
  %.110.i = phi ptr [ %.012.i, %.preheader4.i ], [ %i.fu, %.preheader.preheader.i ] ; 10 uses
  %i.cj = add nsw i64 %indvars.iv.i, %indvars.iv
  %i.ck = mul nsw i64 %i.cj, 9
  %i.cl = getelementptr inbounds i8, ptr %i.ci, i64 %i.ck ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 2
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !108 ; 2 uses
  %.tr57.i = sext i8 %i.co to i16                 ; 2 uses
  %i.cp = shl nsw i16 %.tr57.i, 1                 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 3
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !108 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !108
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !108 ; 2 uses
  %i.cw = sext i8 %i.cr to i32                    ; 2 uses
  %.tr.1.i = sext i8 %i.cr to i16
  %i.cx = shl nsw i16 %.tr.1.i, 1                 ; 2 uses
  %i.cy = sext i8 %i.ct to i32                    ; 2 uses
  %i.cz = add nsw i32 %i.cy, %i.cw
  %i.da = sext i8 %i.cv to i32                    ; 2 uses
  %i.db = add nsw i32 %i.cz, %i.da
  %i.dc = trunc nsw i32 %i.db to i16              ; 2 uses
  %i.dd = sub nsw i32 %i.cw, %i.cy
  %i.de = add nsw i32 %i.dd, %i.da
  %i.df = trunc nsw i32 %i.de to i16              ; 2 uses
  %.tr57.1.i = sext i8 %i.cv to i16
  %i.dg = shl nsw i16 %.tr57.1.i, 1               ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !108 ; 2 uses
  %.tr57.2.i = sext i8 %i.dk to i16               ; 2 uses
  %i.dl = shl nsw i16 %.tr57.2.i, 1               ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.110.i, i64 2
  %i.dn = getelementptr inbounds nuw i8, ptr %.110.i, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %.110.i, i64 6
  %i.dp = getelementptr inbounds nuw i8, ptr %.110.i, i64 8
  %i.dq = load i8, ptr %i.cl, align 1, !tbaa !108 ; 2 uses
  %i.dr = load i8, ptr %i.cm, align 1, !tbaa !108
  %i.ds = sext i8 %i.dq to i32                    ; 2 uses
  %.tr.i = sext i8 %i.dq to i16                   ; 2 uses
  %i.dt = shl nsw i16 %.tr.i, 1                   ; 2 uses
  %i.du = sext i8 %i.dr to i32                    ; 2 uses
  %i.dv = add nsw i32 %i.du, %i.ds
  %i.dw = sext i8 %i.co to i32                    ; 2 uses
  %i.dx = add nsw i32 %i.dv, %i.dw                ; 2 uses
  %i.dy = sub nsw i32 %i.ds, %i.du
  %i.dz = add nsw i32 %i.dy, %i.dw                ; 2 uses
  %i.ea = load i8, ptr %i.dh, align 1, !tbaa !108 ; 2 uses
  %i.eb = load i8, ptr %i.di, align 1, !tbaa !108
  %i.ec = sext i8 %i.ea to i32                    ; 2 uses
  %.tr.2.i = sext i8 %i.ea to i16                 ; 2 uses
  %i.ed = shl nsw i16 %.tr.2.i, 1                 ; 2 uses
  %i.ee = sext i8 %i.eb to i32                    ; 2 uses
  %i.ef = add nsw i32 %i.ee, %i.ec
  %i.eg = sext i8 %i.dk to i32                    ; 2 uses
  %i.eh = add nsw i32 %i.ef, %i.eg
  %i.ei = sub nsw i32 %i.ec, %i.ee
  %i.ej = add nsw i32 %i.ei, %i.eg
  %i.ek = trunc nsw i32 %i.dx to i16
  %i.el = insertelement <8 x i16> poison, i16 %i.ek, i64 0
  %i.em = trunc nsw i32 %i.eh to i16
  %i.en = insertelement <8 x i16> %i.el, i16 %i.em, i64 1
  %i.eo = trunc nsw i32 %i.dz to i16
  %i.ep = insertelement <8 x i16> %i.en, i16 %i.eo, i64 2
  %i.eq = trunc nsw i32 %i.ej to i16
  %i.er = insertelement <8 x i16> %i.ep, i16 %i.eq, i64 3
  %i.es = shufflevector <8 x i16> %i.er, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 1, i32 1, i32 2, i32 3, i32 3, i32 3> ; 2 uses
  %i.et = trunc nsw i32 %i.dz to i16              ; 2 uses
  %i.eu = trunc nsw i32 %i.dx to i16              ; 2 uses
  %i.ev = shl nsw i16 %.tr.i, 2
  %i.ew = add nsw i16 %i.cx, %i.dt
  %i.ex = add nsw i16 %i.ew, %i.ed
  %i.ey = sub nsw i16 %i.dt, %i.cx
  %i.ez = add nsw i16 %i.ey, %i.ed
  %i.fa = shl nsw i16 %.tr.2.i, 2
  store i16 %i.ev, ptr %.110.i, align 2, !tbaa !110
  store i16 %i.ex, ptr %i.dm, align 2, !tbaa !110
  store i16 %i.ez, ptr %i.dn, align 2, !tbaa !110
  store i16 %i.fa, ptr %i.do, align 2, !tbaa !110
  %i.fb = add nsw i16 %i.dc, %i.eu
  %i.fc = sub nsw i16 %i.eu, %i.dc
  %i.fd = add nsw i16 %i.df, %i.et
  %i.fe = sub nsw i16 %i.et, %i.df
  %i.ff = insertelement <8 x i16> %i.es, i16 %i.fb, i64 1
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.fc, i64 2
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.fd, i64 5
  %i.fi = insertelement <8 x i16> %i.fh, i16 %i.fe, i64 6
  %i.fj = add nsw <8 x i16> %i.fi, %i.es
  store <8 x i16> %i.fj, ptr %i.dp, align 2, !tbaa !110
  %i.fk = getelementptr inbounds nuw i8, ptr %.110.i, i64 24
  %i.fl = shl nsw i16 %.tr57.i, 2
  %i.fm = add nsw i16 %i.dg, %i.cp
  %i.fn = add nsw i16 %i.fm, %i.dl
  %i.fo = sub nsw i16 %i.cp, %i.dg
  %i.fp = add nsw i16 %i.fo, %i.dl
  %i.fq = shl nsw i16 %.tr57.2.i, 2
  store i16 %i.fl, ptr %i.fk, align 2, !tbaa !110
  %i.fr = getelementptr inbounds nuw i8, ptr %.110.i, i64 26
  store i16 %i.fn, ptr %i.fr, align 2, !tbaa !110
  %i.fs = getelementptr inbounds nuw i8, ptr %.110.i, i64 28
  store i16 %i.fp, ptr %i.fs, align 2, !tbaa !110
  %i.ft = getelementptr inbounds nuw i8, ptr %.110.i, i64 30
  store i16 %i.fq, ptr %i.ft, align 2, !tbaa !110
  %i.fu = getelementptr inbounds nuw i8, ptr %.110.i, i64 32 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader.preheader.i, !llvm.loop !1202

._crit_edge.i:                                    ; preds = %.preheader.preheader.i
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next18.i, %wide.trip.count20.i
  br i1 %exitcond21.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit, label %.preheader4.i, !llvm.loop !1203

_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit: ; preds = %._crit_edge.i, %bb.d, %.preheader4.lr.ph.i
  %i.fv = trunc nsw i64 %indvars.iv to i32
  %i.fw = sdiv i32 %i.fv, %i.ag
  %i.fx = sext i32 %i.fw to i64
  %i.fy = mul i64 %i.av, %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.fy
  %i.ga = shl i32 %.sroa.speculated, 4            ; 2 uses
  %i.gb = icmp sgt i32 %.sroa.speculated, 1       ; 2 uses
  %i.gc = sext i32 %i.ga to i64                   ; 20 uses
  %i.gd = add nsw i32 %i.ga, 16
  %i.ge = sext i32 %i.gd to i64                   ; 4 uses
  %i.gf = shl nsw i32 %.sroa.speculated, 5        ; 2 uses
  %i.gg = sext i32 %i.gf to i64                   ; 4 uses
  %i.gh = mul nsw i32 %.sroa.speculated, 48       ; 2 uses
  %i.gi = sext i32 %i.gh to i64                   ; 4 uses
  %i.gj = icmp sgt i32 %.sroa.speculated, 0
  %i.gk = and i32 %.sroa.speculated, -2           ; 3 uses
  %i.gl = zext nneg i32 %i.gf to i64
  %i.gm = zext nneg i32 %i.gh to i64
  %i.gn = shl nsw i64 %i.gc, 1
  %i.go = getelementptr i8, ptr %i.bd, i64 %i.bx
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.by
  %xtraiter = and i32 %.sroa.speculated, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.gq = icmp eq i32 %i.bj, 0
  %unroll_iter = and i32 %i.bk, -2
  %i.gr = and i32 %i.bi, 2
  %lcmp.mod194.not.not = icmp eq i32 %i.gr, 0
  %lcmp.mod197 = trunc i32 %i.bk to i1
  %i.gs = zext nneg i32 %.sroa.speculated to i64  ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %stride.check = icmp slt i32 %i.bv, 0
  %n.vec = and i64 %i.gs, 2147483640              ; 5 uses
  %i.gt = trunc nuw nsw i64 %n.vec to i32
  %i.gu = shl nuw nsw i64 %n.vec, 5
  %i.gv = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %i.gs
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge51.split.i, %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit
  %indvars.iv75.i = phi i64 [ 0, %_ZN4ncnnL47conv3x3s1_winograd23_transform_kernel_tile_int8ERKNS_3MatERS0_iiiii.exit ], [ %indvars.iv.next76.i, %._crit_edge51.split.i ] ; 6 uses
  %i.gw = shl nuw nsw i64 %indvars.iv75.i, 1
  %scevgep141 = getelementptr i8, ptr %i.gp, i64 %i.gw
  %.reass.i = mul i64 %i.au, %indvars.iv75.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.reass.i ; 2 uses
  br i1 %i.aw, label %.lr.ph17.i, label %.preheader3.i

.lr.ph17.i:                                       ; preds = %bb.e
  %invariant.gep.i = getelementptr [2 x i8], ptr %i.aa, i64 %indvars.iv75.i
  br label %bb.f

.preheader3.loopexit.i:                           ; preds = %._crit_edge.i55
  %i.gy = trunc nuw nsw i64 %indvars.iv.next.i56 to i32
  br label %.preheader3.i

.preheader3.i:                                    ; preds = %.preheader3.loopexit.i, %bb.e
  %.0123.lcssa.i = phi ptr [ %i.gx, %bb.e ], [ %.2125.lcssa.i, %.preheader3.loopexit.i ] ; 2 uses
  %.0121.lcssa.i = phi i32 [ 0, %bb.e ], [ %i.gy, %.preheader3.loopexit.i ] ; 3 uses
  %i.gz = or disjoint i32 %.0121.lcssa.i, 1
  %i.ha = icmp slt i32 %i.gz, %.sroa.speculated83
  br i1 %i.ha, label %.lr.ph36.i, label %.preheader2.i

.lr.ph36.i:                                       ; preds = %.preheader3.i
  %invariant.gep39.i = getelementptr [2 x i8], ptr %i.aa, i64 %indvars.iv75.i
  %i.hb = zext nneg i32 %.0121.lcssa.i to i64
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i55, %.lr.ph17.i
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next.i56, %._crit_edge.i55 ] ; 2 uses
  %.012314.i = phi ptr [ %i.gx, %.lr.ph17.i ], [ %.2125.lcssa.i, %._crit_edge.i55 ] ; 2 uses
  %i.hc = mul nsw i64 %indvars.iv.i54, %i.gc
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.hc ; 2 uses
  br i1 %i.gb, label %.lr.ph.i, label %.preheader1.i

.preheader1.i:                                    ; preds = %.lr.ph.i, %bb.f
  %.1124.lcssa.i = phi ptr [ %.012314.i, %bb.f ], [ %i.ir, %.lr.ph.i ] ; 7 uses
  %.0119.lcssa.i = phi ptr [ %gep.i, %bb.f ], [ %i.iq, %.lr.ph.i ] ; 6 uses
  %.0117.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.gk, %.lr.ph.i ] ; 4 uses
  %i.hd = icmp slt i32 %.0117.lcssa.i, %.sroa.speculated
  br i1 %i.hd, label %.lr.ph12.i.preheader, label %._crit_edge.i55

.lr.ph12.i.preheader:                             ; preds = %.preheader1.i
  %.neg = or disjoint i32 %.0117.lcssa.i, 1
  br i1 %lcmp.mod.not, label %.lr.ph12.i.prol.loopexit, label %.lr.ph12.i.prol

.lr.ph12.i.prol:                                  ; preds = %.lr.ph12.i.preheader
  %i.he = load i16, ptr %.0119.lcssa.i, align 2, !tbaa !110
  store i16 %i.he, ptr %.1124.lcssa.i, align 2, !tbaa !110
  %i.hf = getelementptr inbounds [2 x i8], ptr %.0119.lcssa.i, i64 %i.gc
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !110
  %i.hh = getelementptr inbounds nuw i8, ptr %.1124.lcssa.i, i64 2
  store i16 %i.hg, ptr %i.hh, align 2, !tbaa !110
  %i.hi = getelementptr inbounds [2 x i8], ptr %.0119.lcssa.i, i64 %i.gg
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !110
  %i.hk = getelementptr inbounds nuw i8, ptr %.1124.lcssa.i, i64 4
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !110
  %i.hl = getelementptr inbounds [2 x i8], ptr %.0119.lcssa.i, i64 %i.gi
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !110
  %i.hn = getelementptr inbounds nuw i8, ptr %.1124.lcssa.i, i64 6
  store i16 %i.hm, ptr %i.hn, align 2, !tbaa !110
  %i.ho = getelementptr inbounds nuw i8, ptr %.0119.lcssa.i, i64 32
  %i.hp = getelementptr inbounds nuw i8, ptr %.1124.lcssa.i, i64 8 ; 2 uses
  %i.hq = or disjoint i32 %.0117.lcssa.i, 1
  br label %.lr.ph12.i.prol.loopexit

.lr.ph12.i.prol.loopexit:                         ; preds = %.lr.ph12.i.prol, %.lr.ph12.i.preheader
  %.lcssa187.unr = phi ptr [ poison, %.lr.ph12.i.preheader ], [ %i.hp, %.lr.ph12.i.prol ]
  %.111811.i.unr = phi i32 [ %.0117.lcssa.i, %.lr.ph12.i.preheader ], [ %i.hq, %.lr.ph12.i.prol ]
  %.112010.i.unr = phi ptr [ %.0119.lcssa.i, %.lr.ph12.i.preheader ], [ %i.ho, %.lr.ph12.i.prol ]
  %.21259.i.unr = phi ptr [ %.1124.lcssa.i, %.lr.ph12.i.preheader ], [ %i.hp, %.lr.ph12.i.prol ]
  %i.hr = icmp eq i32 %.sroa.speculated, %.neg
  br i1 %i.hr, label %._crit_edge.i55, label %.lr.ph12.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.01176.i = phi i32 [ %i.is, %.lr.ph.i ], [ 0, %bb.f ]
  %.01195.i = phi ptr [ %i.iq, %.lr.ph.i ], [ %gep.i, %bb.f ] ; 9 uses
  %.11244.i = phi ptr [ %i.ir, %.lr.ph.i ], [ %.012314.i, %bb.f ] ; 9 uses
  %i.hs = load i16, ptr %.01195.i, align 2, !tbaa !110
  store i16 %i.hs, ptr %.11244.i, align 2, !tbaa !110
  %i.ht = getelementptr inbounds nuw i8, ptr %.01195.i, i64 32
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !110
  %i.hv = getelementptr inbounds nuw i8, ptr %.11244.i, i64 2
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !110
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.01195.i, i64 %i.gc
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !110
  %i.hy = getelementptr inbounds nuw i8, ptr %.11244.i, i64 4
  store i16 %i.hx, ptr %i.hy, align 2, !tbaa !110
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %.01195.i, i64 %i.ge
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !110
  %i.ib = getelementptr inbounds nuw i8, ptr %.11244.i, i64 6
  store i16 %i.ia, ptr %i.ib, align 2, !tbaa !110
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %.01195.i, i64 %i.gg
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !110
  %i.ie = getelementptr inbounds nuw i8, ptr %.11244.i, i64 8
  store i16 %i.id, ptr %i.ie, align 2, !tbaa !110
  %i.if = getelementptr [2 x i8], ptr %.01195.i, i64 %i.gl
  %i.ig = getelementptr i8, ptr %i.if, i64 32
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !110
  %i.ii = getelementptr inbounds nuw i8, ptr %.11244.i, i64 10
  store i16 %i.ih, ptr %i.ii, align 2, !tbaa !110
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %.01195.i, i64 %i.gi
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !110
  %i.il = getelementptr inbounds nuw i8, ptr %.11244.i, i64 12
  store i16 %i.ik, ptr %i.il, align 2, !tbaa !110
  %i.im = getelementptr [2 x i8], ptr %.01195.i, i64 %i.gm
  %i.in = getelementptr i8, ptr %i.im, i64 32
  %i.io = load i16, ptr %i.in, align 2, !tbaa !110
  %i.ip = getelementptr inbounds nuw i8, ptr %.11244.i, i64 14
  store i16 %i.io, ptr %i.ip, align 2, !tbaa !110
  %i.iq = getelementptr inbounds nuw i8, ptr %.01195.i, i64 64 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.11244.i, i64 16 ; 2 uses
  %i.is = add nuw nsw i32 %.01176.i, 2            ; 2 uses
  %i.it = or disjoint i32 %i.is, 1
  %i.iu = icmp slt i32 %i.it, %.sroa.speculated
  br i1 %i.iu, label %.lr.ph.i, label %.preheader1.i, !llvm.loop !9

end_hunk_0
