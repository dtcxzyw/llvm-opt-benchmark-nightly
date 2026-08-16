inline.NumInlined: 230
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4ncnnL21convdw5x5s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
  %i.dk = load <4 x float>, ptr %i.at, align 16, !tbaa !105
  %i.dl = load <4 x float>, ptr %i.au, align 16, !tbaa !105
  %i.dm = load <4 x float>, ptr %i.av, align 16, !tbaa !105
  %i.dn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.di, <4 x float> nofpclass(nan inf) %i.cz, <4 x float> nofpclass(nan inf) %i.cy)
  %i.do = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dj, <4 x float> nofpclass(nan inf) %i.db, <4 x float> nofpclass(nan inf) %i.dn)
  %i.dp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dk, <4 x float> nofpclass(nan inf) %i.dd, <4 x float> nofpclass(nan inf) %i.do)
  %i.dq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dl, <4 x float> nofpclass(nan inf) %i.df, <4 x float> nofpclass(nan inf) %i.dp)
  %i.dr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dm, <4 x float> nofpclass(nan inf) %i.dh, <4 x float> nofpclass(nan inf) %i.dq)
  %i.ds = load <4 x float>, ptr %.1101225, align 16, !tbaa !105
  %i.dt = getelementptr inbounds nuw i8, ptr %.1101225, i64 16
  %i.du = load <4 x float>, ptr %i.dt, align 16, !tbaa !105
  %i.dv = getelementptr inbounds nuw i8, ptr %.1101225, i64 32 ; 3 uses
  %i.dw = load <4 x float>, ptr %i.dv, align 16, !tbaa !105
  %i.dx = getelementptr inbounds nuw i8, ptr %.1101225, i64 48
  %i.dy = load <4 x float>, ptr %i.dx, align 16, !tbaa !105
  %i.dz = getelementptr inbounds nuw i8, ptr %.1101225, i64 64
  %i.ea = load <4 x float>, ptr %i.dz, align 16, !tbaa !105
  %i.eb = load <4 x float>, ptr %i.aw, align 16, !tbaa !105
  %i.ec = load <4 x float>, ptr %i.ax, align 16, !tbaa !105
  %i.ed = load <4 x float>, ptr %i.ay, align 16, !tbaa !105
  %i.ee = load <4 x float>, ptr %i.az, align 16, !tbaa !105
  %i.ef = load <4 x float>, ptr %i.ba, align 16, !tbaa !105
  %i.eg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eb, <4 x float> nofpclass(nan inf) %i.ds, <4 x float> nofpclass(nan inf) %i.dr)
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ec, <4 x float> nofpclass(nan inf) %i.du, <4 x float> nofpclass(nan inf) %i.eg)
  %i.ei = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ed, <4 x float> nofpclass(nan inf) %i.dw, <4 x float> nofpclass(nan inf) %i.eh)
  %i.ej = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ee, <4 x float> nofpclass(nan inf) %i.dy, <4 x float> nofpclass(nan inf) %i.ei)
  %i.ek = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ef, <4 x float> nofpclass(nan inf) %i.ea, <4 x float> nofpclass(nan inf) %i.ej)
  %i.el = load <4 x float>, ptr %.199226, align 16, !tbaa !105
  %i.em = getelementptr inbounds nuw i8, ptr %.199226, i64 16
  %i.en = load <4 x float>, ptr %i.em, align 16, !tbaa !105
  %i.eo = getelementptr inbounds nuw i8, ptr %.199226, i64 32 ; 3 uses
  %i.ep = load <4 x float>, ptr %i.eo, align 16, !tbaa !105
  %i.eq = getelementptr inbounds nuw i8, ptr %.199226, i64 48
  %i.er = load <4 x float>, ptr %i.eq, align 16, !tbaa !105
  %i.es = getelementptr inbounds nuw i8, ptr %.199226, i64 64
  %i.et = load <4 x float>, ptr %i.es, align 16, !tbaa !105
  %i.eu = load <4 x float>, ptr %i.bb, align 16, !tbaa !105
  %i.ev = load <4 x float>, ptr %i.bc, align 16, !tbaa !105
  %i.ew = load <4 x float>, ptr %i.bd, align 16, !tbaa !105
  %i.ex = load <4 x float>, ptr %i.be, align 16, !tbaa !105
  %i.ey = load <4 x float>, ptr %i.bf, align 16, !tbaa !105
  %i.ez = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eu, <4 x float> nofpclass(nan inf) %i.el, <4 x float> nofpclass(nan inf) %i.ek)
  %i.fa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ev, <4 x float> nofpclass(nan inf) %i.en, <4 x float> nofpclass(nan inf) %i.ez)
  %i.fb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ew, <4 x float> nofpclass(nan inf) %i.ep, <4 x float> nofpclass(nan inf) %i.fa)
  %i.fc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ex, <4 x float> nofpclass(nan inf) %i.er, <4 x float> nofpclass(nan inf) %i.fb)
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ey, <4 x float> nofpclass(nan inf) %i.et, <4 x float> nofpclass(nan inf) %i.fc)
  %i.fe = load <4 x float>, ptr %.1227, align 16, !tbaa !105
  %i.ff = getelementptr inbounds nuw i8, ptr %.1227, i64 16
  %i.fg = load <4 x float>, ptr %i.ff, align 16, !tbaa !105
  %i.fh = getelementptr inbounds nuw i8, ptr %.1227, i64 32 ; 3 uses
  %i.fi = load <4 x float>, ptr %i.fh, align 16, !tbaa !105
  %i.fj = getelementptr inbounds nuw i8, ptr %.1227, i64 48
  %i.fk = load <4 x float>, ptr %i.fj, align 16, !tbaa !105
  %i.fl = getelementptr inbounds nuw i8, ptr %.1227, i64 64
  %i.fm = load <4 x float>, ptr %i.fl, align 16, !tbaa !105
  %i.fn = load <4 x float>, ptr %i.bg, align 16, !tbaa !105
  %i.fo = load <4 x float>, ptr %i.bh, align 16, !tbaa !105
  %i.fp = load <4 x float>, ptr %i.bi, align 16, !tbaa !105
  %i.fq = load <4 x float>, ptr %i.bj, align 16, !tbaa !105
  %i.fr = load <4 x float>, ptr %i.bk, align 16, !tbaa !105
  %i.fs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fn, <4 x float> nofpclass(nan inf) %i.fe, <4 x float> nofpclass(nan inf) %i.fd)
  %i.ft = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fo, <4 x float> nofpclass(nan inf) %i.fg, <4 x float> nofpclass(nan inf) %i.fs)
  %i.fu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fp, <4 x float> nofpclass(nan inf) %i.fi, <4 x float> nofpclass(nan inf) %i.ft)
  %i.fv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fq, <4 x float> nofpclass(nan inf) %i.fk, <4 x float> nofpclass(nan inf) %i.fu)
  %i.fw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.fr, <4 x float> nofpclass(nan inf) %i.fm, <4 x float> nofpclass(nan inf) %i.fv)
  store <4 x float> %i.fw, ptr %.1107222, align 16, !tbaa !105
  %i.fx = getelementptr inbounds nuw i8, ptr %.1107222, i64 16 ; 2 uses
  %i.fy = add nuw nsw i32 %.0228, 1               ; 2 uses
  %i.fz = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.ga = icmp slt i32 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !320

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %7, align 4, !tbaa !72
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.gb = phi i32 [ %i.cd, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.gc = phi i32 [ %i.ce, %.preheader ], [ %i.fz, %._crit_edge.loopexit ]
  %.1107.lcssa = phi ptr [ %.0106234, %.preheader ], [ %i.fx, %._crit_edge.loopexit ]
  %.1105.lcssa = phi ptr [ %.0104235, %.preheader ], [ %i.cj, %._crit_edge.loopexit ]
  %.1103.lcssa = phi ptr [ %.0102236, %.preheader ], [ %i.dc, %._crit_edge.loopexit ]
  %.1101.lcssa = phi ptr [ %.0100237, %.preheader ], [ %i.dv, %._crit_edge.loopexit ]
  %.199.lcssa = phi ptr [ %.098238, %.preheader ], [ %i.eo, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.097239, %.preheader ], [ %i.fh, %._crit_edge.loopexit ]
  %i.gd = load i32, ptr %9, align 4, !tbaa !72
  %i.ge = sext i32 %i.gd to i64                   ; 5 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.1105.lcssa, i64 %i.ge
  %i.gg = getelementptr inbounds [4 x i8], ptr %.1103.lcssa, i64 %i.ge
  %i.gh = getelementptr inbounds [4 x i8], ptr %.1101.lcssa, i64 %i.ge
  %i.gi = getelementptr inbounds [4 x i8], ptr %.199.lcssa, i64 %i.ge
  %i.gj = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %i.ge
  %i.gk = add nuw nsw i32 %.096240, 1             ; 2 uses
  %i.gl = icmp slt i32 %i.gk, %i.gb
  br i1 %i.gl, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !321

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.preheader.lr.ph, %_ZNK4ncnn3Mat7channelEi.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge243, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge243:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge243, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #17

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL15convdw3x3s1_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !72     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !72
  %i.h = load i32, ptr %0, align 4, !tbaa !72     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !72
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !72
  %i.k = load i32, ptr %i.a, align 4, !tbaa !72   ; 2 uses
  %.not245 = icmp sgt i32 %i.k, %i.j
  br i1 %.not245, label %._crit_edge247, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !322 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !322
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70, !noalias !322
  %factor.op.mul = mul i64 %i.n, %i.p             ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !169    ; 2 uses
  %.not170 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %5, align 8, !tbaa !169    ; 5 uses
  %i.s = load i32, ptr %6, align 4, !tbaa !72     ; 19 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !18, !noalias !325 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !325
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70, !noalias !325
  %factor.op.mul248 = mul i64 %i.v, %i.x          ; 5 uses
  %i.y = zext nneg i32 %i.s to i64
  %i.z = load i32, ptr %8, align 4, !tbaa !72     ; 4 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = shl i32 %i.z, 1
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = mul nsw i32 %i.z, 3
  %i.ae = sext i32 %i.ad to i64
  %i.af = load i32, ptr %9, align 4, !tbaa !72    ; 5 uses
  %i.ag = icmp sgt i32 %i.af, 1
  %i.ah = add i32 %i.z, 2
  %i.ai = sext i32 %i.ah to i64                   ; 5 uses
  %i.aj = sext i32 %i.k to i64                    ; 5 uses
  %i.ak = mul i64 %factor.op.mul248, %i.aj
  %i.al = add i32 %i.af, -2                       ; 2 uses
  %i.am = lshr i32 %i.al, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 4                ; 2 uses
  %i.aq = mul i64 %i.ap, %i.ai
  %i.ar = add i64 %i.ak, %i.aq                    ; 3 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ar
  %i.as = shl nsw i64 %i.aa, 2
  %i.at = getelementptr i8, ptr %i.t, i64 %i.ar
  %scevgep268 = getelementptr i8, ptr %i.at, i64 %i.as
  %i.au = shl nsw i64 %i.ac, 2
  %i.av = getelementptr i8, ptr %i.t, i64 %i.ar
  %scevgep271 = getelementptr i8, ptr %i.av, i64 %i.au
  %i.aw = mul i64 %factor.op.mul, %i.aj
  %scevgep274 = getelementptr i8, ptr %i.l, i64 %i.aw
  %i.ax = and i32 %i.al, -2
  %i.ay = add nuw nsw i32 %i.ax, 2                ; 2 uses
  %i.az = add nsw i32 %i.j, 1
  %i.ba = icmp sgt i32 %i.s, 0
  %i.bb = sext i32 %i.s to i64                    ; 3 uses
  %i.bc = mul i64 %i.ap, %i.bb
  %i.bd = icmp sgt i32 %i.s, 0
  %i.be = add i32 %i.s, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2                ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 12               ; 3 uses
  %i.bi = mul nsw i64 %i.aj, 36                   ; 2 uses
  %i.bj = zext i32 %i.s to i64                    ; 10 uses
  %i.bk = add i32 %i.s, -1
  %i.bl = zext i32 %i.bk to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2                ; 2 uses
  %i.bn = add nuw nsw i64 %i.bm, 4                ; 2 uses
  %i.bo = add nuw nsw i64 %i.bm, 12               ; 4 uses
  %i.bp = mul nsw i64 %i.aj, 36                   ; 2 uses
  %i.bq = getelementptr i8, ptr %i.r, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.r, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 36
  %i.bt = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bu = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bv = getelementptr i8, ptr %i.bu, i64 36
  %min.iters.check459 = icmp ult i32 %i.s, 4
  %min.iters.check461 = icmp ult i32 %i.s, 16
  %i.bw = and i64 %i.bj, 12
  %n.vec463 = and i64 %i.bj, 2147483632           ; 5 uses
  %i.bx = shl nuw nsw i64 %n.vec463, 2            ; 6 uses
  %i.by = trunc nuw nsw i64 %n.vec463 to i32
  %i.bz = sub nsw i32 %i.s, %i.by
  %cmp.n506 = icmp eq i64 %n.vec463, %i.bj
  %min.epilog.iters.check517 = icmp eq i64 %i.bw, 0
  %n.vec519 = and i64 %i.bj, 2147483644           ; 4 uses
  %i.ca = shl nuw nsw i64 %n.vec519, 2            ; 6 uses
  %i.cb = trunc nuw nsw i64 %n.vec519 to i32
  %i.cc = sub nsw i32 %i.s, %i.cb
  %cmp.n562 = icmp eq i64 %n.vec519, %i.bj
  %min.iters.check = icmp ult i32 %i.s, 4
  %min.iters.check326 = icmp ult i32 %i.s, 16
  %i.cd = and i64 %i.bj, 12
  %n.vec = and i64 %i.bj, 2147483632              ; 5 uses
  %i.ce = trunc nuw nsw i64 %n.vec to i32
  %i.cf = sub nsw i32 %i.s, %i.ce
  %i.cg = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bj
  %min.epilog.iters.check = icmp eq i64 %i.cd, 0
  %n.vec362 = and i64 %i.bj, 2147483644           ; 4 uses
  %i.ch = trunc nuw nsw i64 %n.vec362 to i32
  %i.ci = sub nsw i32 %i.s, %i.ch
  %i.cj = shl nuw nsw i64 %n.vec362, 2            ; 4 uses
  %cmp.n401 = icmp eq i64 %n.vec362, %i.bj
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv278 = phi i64 [ %i.aj, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %indvars.iv275 = phi ptr [ %scevgep274, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep276, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv272 = phi ptr [ %scevgep271, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep273, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv269 = phi ptr [ %scevgep268, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep270, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi ptr [ %scevgep, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep267, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.ck = mul nuw nsw i64 %indvar, 36             ; 2 uses
  %scevgep414 = getelementptr i8, ptr %i.bq, i64 %i.ck ; 2 uses
  %scevgep415 = getelementptr i8, ptr %i.bs, i64 %i.ck ; 2 uses
  %i.cl = mul nuw nsw i64 %indvar, 36             ; 2 uses
  %scevgep313 = getelementptr i8, ptr %i.bt, i64 %i.cl
  %scevgep314 = getelementptr i8, ptr %i.bv, i64 %i.cl
  %.reass = mul i64 %factor.op.mul, %indvars.iv278
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  br i1 %.not170, label %_ZN4ncnn3MatD2Ev.exit171, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv278
  %i.co = load float, ptr %i.cn, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit171

_ZN4ncnn3MatD2Ev.exit171:                         ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.cp = phi fast float [ %i.co, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit ] ; 7 uses
  %.idx = mul nsw i64 %indvars.iv278, 36
  %i.cq = getelementptr inbounds i8, ptr %i.r, i64 %.idx ; 20 uses
  %.reass249 = mul i64 %factor.op.mul248, %indvars.iv278
  %i.cr = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass249 ; 5 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.aa ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ac ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 12 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 24 ; 4 uses
  br i1 %i.ag, label %.lr.ph219, label %.preheader

.lr.ph219:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit171
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 20 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 28 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 3 uses
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph219.split.preheader

.lr.ph219.split.preheader:                        ; preds = %.lr.ph219
  %scevgep277 = getelementptr i8, ptr %indvars.iv275, i64 %i.bc
  br label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph219
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.y
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %i.ae
  %broadcast.splatinsert464 = insertelement <16 x float> poison, float %i.cp, i64 0
  %broadcast.splat465 = shufflevector <16 x float> %broadcast.splatinsert464, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert520 = insertelement <4 x float> poison, float %i.cp, i64 0
  %broadcast.splat521 = shufflevector <4 x float> %broadcast.splatinsert520, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %iter.check514

iter.check514:                                    ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0149218.us = phi ptr [ %i.jr, %._crit_edge.us ], [ %i.cm, %.lr.ph.us.preheader ] ; 13 uses
  %.0150217.us = phi ptr [ %i.js, %._crit_edge.us ], [ %i.dc, %.lr.ph.us.preheader ] ; 13 uses
  %.0153216.us = phi i32 [ %i.jt, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0155215.us = phi ptr [ %i.jn, %._crit_edge.us ], [ %i.cr, %.lr.ph.us.preheader ] ; 9 uses
  %.0159214.us = phi ptr [ %i.jo, %._crit_edge.us ], [ %i.cs, %.lr.ph.us.preheader ] ; 9 uses
  %.0163213.us = phi ptr [ %i.jp, %._crit_edge.us ], [ %i.ct, %.lr.ph.us.preheader ] ; 9 uses
  %.0167212.us = phi ptr [ %i.jq, %._crit_edge.us ], [ %i.dd, %.lr.ph.us.preheader ] ; 9 uses
  br i1 %min.iters.check459, label %vec.epilog.scalar.ph515.preheader, label %vector.memcheck407

vector.memcheck407:                               ; preds = %iter.check514
  %scevgep408 = getelementptr i8, ptr %.0149218.us, i64 %i.bn ; 6 uses
  %scevgep409 = getelementptr i8, ptr %.0150217.us, i64 %i.bn ; 6 uses
  %scevgep410 = getelementptr i8, ptr %.0167212.us, i64 %i.bo ; 2 uses
  %scevgep411 = getelementptr i8, ptr %.0163213.us, i64 %i.bo ; 2 uses
  %scevgep412 = getelementptr i8, ptr %.0159214.us, i64 %i.bo ; 2 uses
  %scevgep413 = getelementptr i8, ptr %.0155215.us, i64 %i.bo ; 2 uses
  %bound0416 = icmp ult ptr %.0149218.us, %scevgep409
  %bound1417 = icmp ult ptr %.0150217.us, %scevgep408
  %found.conflict418 = and i1 %bound0416, %bound1417
  %bound0419 = icmp ult ptr %.0149218.us, %scevgep410
  %bound1420 = icmp ult ptr %.0167212.us, %scevgep408
  %found.conflict421 = and i1 %bound0419, %bound1420
  %conflict.rdx422 = or i1 %found.conflict418, %found.conflict421
  %bound0423 = icmp ult ptr %.0149218.us, %scevgep411
  %bound1424 = icmp ult ptr %.0163213.us, %scevgep408
  %found.conflict425 = and i1 %bound0423, %bound1424
  %conflict.rdx426 = or i1 %conflict.rdx422, %found.conflict425
  %bound0427 = icmp ult ptr %.0149218.us, %scevgep412
  %bound1428 = icmp ult ptr %.0159214.us, %scevgep408
  %found.conflict429 = and i1 %bound0427, %bound1428
  %conflict.rdx430 = or i1 %conflict.rdx426, %found.conflict429
  %bound0431 = icmp ult ptr %.0149218.us, %scevgep413
  %bound1432 = icmp ult ptr %.0155215.us, %scevgep408
  %found.conflict433 = and i1 %bound0431, %bound1432
  %conflict.rdx434 = or i1 %conflict.rdx430, %found.conflict433
  %bound0435 = icmp ult ptr %.0149218.us, %scevgep415
  %bound1436 = icmp ult ptr %scevgep414, %scevgep408
  %found.conflict437 = and i1 %bound0435, %bound1436
  %conflict.rdx438 = or i1 %conflict.rdx434, %found.conflict437
  %bound0439 = icmp ult ptr %.0150217.us, %scevgep410
  %bound1440 = icmp ult ptr %.0167212.us, %scevgep409
  %found.conflict441 = and i1 %bound0439, %bound1440
  %conflict.rdx442 = or i1 %conflict.rdx438, %found.conflict441
  %bound0443 = icmp ult ptr %.0150217.us, %scevgep411
  %bound1444 = icmp ult ptr %.0163213.us, %scevgep409
  %found.conflict445 = and i1 %bound0443, %bound1444
  %conflict.rdx446 = or i1 %conflict.rdx442, %found.conflict445
  %bound0447 = icmp ult ptr %.0150217.us, %scevgep412
  %bound1448 = icmp ult ptr %.0159214.us, %scevgep409
  %found.conflict449 = and i1 %bound0447, %bound1448
  %conflict.rdx450 = or i1 %conflict.rdx446, %found.conflict449
  %bound0451 = icmp ult ptr %.0150217.us, %scevgep413
  %bound1452 = icmp ult ptr %.0155215.us, %scevgep409
  %found.conflict453 = and i1 %bound0451, %bound1452
  %conflict.rdx454 = or i1 %conflict.rdx450, %found.conflict453
  %bound0455 = icmp ult ptr %.0150217.us, %scevgep415
  %bound1456 = icmp ult ptr %scevgep414, %scevgep409
  %found.conflict457 = and i1 %bound0455, %bound1456
  %conflict.rdx458 = or i1 %conflict.rdx454, %found.conflict457
  br i1 %conflict.rdx458, label %vec.epilog.scalar.ph515.preheader, label %vector.main.loop.iter.check460

vector.main.loop.iter.check460:                   ; preds = %vector.memcheck407
  br i1 %min.iters.check461, label %vec.epilog.ph518, label %vector.ph462

vector.ph462:                                     ; preds = %vector.main.loop.iter.check460
  %i.de = getelementptr i8, ptr %.0149218.us, i64 %i.bx ; 2 uses
  %i.df = getelementptr i8, ptr %.0150217.us, i64 %i.bx ; 2 uses
  %i.dg = getelementptr i8, ptr %.0155215.us, i64 %i.bx ; 2 uses
  %i.dh = getelementptr i8, ptr %.0159214.us, i64 %i.bx ; 2 uses
  %i.di = getelementptr i8, ptr %.0163213.us, i64 %i.bx ; 2 uses
  %i.dj = getelementptr i8, ptr %.0167212.us, i64 %i.bx ; 2 uses
  %i.dk = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert475 = insertelement <16 x float> poison, float %i.dk, i64 0
  %broadcast.splat476 = shufflevector <16 x float> %broadcast.splatinsert475, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dl = load float, ptr %i.cw, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert478 = insertelement <16 x float> poison, float %i.dl, i64 0
  %broadcast.splat479 = shufflevector <16 x float> %broadcast.splatinsert478, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dm = load float, ptr %i.cx, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert481 = insertelement <16 x float> poison, float %i.dm, i64 0
  %broadcast.splat482 = shufflevector <16 x float> %broadcast.splatinsert481, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dn = load float, ptr %i.cu, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert484 = insertelement <16 x float> poison, float %i.dn, i64 0
  %broadcast.splat485 = shufflevector <16 x float> %broadcast.splatinsert484, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.do = load float, ptr %i.cy, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert487 = insertelement <16 x float> poison, float %i.do, i64 0
  %broadcast.splat488 = shufflevector <16 x float> %broadcast.splatinsert487, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dp = load float, ptr %i.cz, align 4, !tbaa !45, !alias.scope !328
  %broadcast.splatinsert490 = insertelement <16 x float> poison, float %i.dp, i64 0
  %broadcast.splat491 = shufflevector <16 x float> %broadcast.splatinsert490, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.dq = load float, ptr %i.cv, align 4, !tbaa !45, !alias.scope !328
end_hunk_0
