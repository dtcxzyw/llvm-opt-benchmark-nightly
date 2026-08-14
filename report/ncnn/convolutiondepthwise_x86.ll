inline.NumInlined: 220
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN4ncnnL21convdw5x5s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
  %i.cy = fmul fast <4 x float> %i.cr, %i.ck
  %i.cz = fadd fast <4 x float> %i.cx, %i.cy
  %i.da = fmul fast <4 x float> %i.cs, %i.cm
  %i.db = fadd fast <4 x float> %i.cz, %i.da
  %i.dc = fmul fast <4 x float> %i.ct, %i.co
  %i.dd = fadd fast <4 x float> %i.db, %i.dc
  %i.de = load <4 x float>, ptr %.1103224, align 16, !tbaa !101
  %i.df = getelementptr inbounds nuw i8, ptr %.1103224, i64 16
  %i.dg = load <4 x float>, ptr %i.df, align 16, !tbaa !101
  %i.dh = getelementptr inbounds nuw i8, ptr %.1103224, i64 32 ; 3 uses
  %i.di = load <4 x float>, ptr %i.dh, align 16, !tbaa !101
  %i.dj = getelementptr inbounds nuw i8, ptr %.1103224, i64 48
  %i.dk = load <4 x float>, ptr %i.dj, align 16, !tbaa !101
  %i.dl = getelementptr inbounds nuw i8, ptr %.1103224, i64 64
  %i.dm = load <4 x float>, ptr %i.dl, align 16, !tbaa !101
  %i.dn = load <4 x float>, ptr %i.ar, align 16, !tbaa !101
  %i.do = load <4 x float>, ptr %i.as, align 16, !tbaa !101
  %i.dp = load <4 x float>, ptr %i.at, align 16, !tbaa !101
  %i.dq = load <4 x float>, ptr %i.au, align 16, !tbaa !101
  %i.dr = load <4 x float>, ptr %i.av, align 16, !tbaa !101
  %i.ds = fmul fast <4 x float> %i.dn, %i.de
  %i.dt = fadd fast <4 x float> %i.dd, %i.ds
  %i.du = fmul fast <4 x float> %i.do, %i.dg
  %i.dv = fadd fast <4 x float> %i.dt, %i.du
  %i.dw = fmul fast <4 x float> %i.dp, %i.di
  %i.dx = fadd fast <4 x float> %i.dv, %i.dw
  %i.dy = fmul fast <4 x float> %i.dq, %i.dk
  %i.dz = fadd fast <4 x float> %i.dx, %i.dy
  %i.ea = fmul fast <4 x float> %i.dr, %i.dm
  %i.eb = fadd fast <4 x float> %i.dz, %i.ea
  %i.ec = load <4 x float>, ptr %.1101225, align 16, !tbaa !101
  %i.ed = getelementptr inbounds nuw i8, ptr %.1101225, i64 16
  %i.ee = load <4 x float>, ptr %i.ed, align 16, !tbaa !101
  %i.ef = getelementptr inbounds nuw i8, ptr %.1101225, i64 32 ; 3 uses
  %i.eg = load <4 x float>, ptr %i.ef, align 16, !tbaa !101
  %i.eh = getelementptr inbounds nuw i8, ptr %.1101225, i64 48
  %i.ei = load <4 x float>, ptr %i.eh, align 16, !tbaa !101
  %i.ej = getelementptr inbounds nuw i8, ptr %.1101225, i64 64
  %i.ek = load <4 x float>, ptr %i.ej, align 16, !tbaa !101
  %i.el = load <4 x float>, ptr %i.aw, align 16, !tbaa !101
  %i.em = load <4 x float>, ptr %i.ax, align 16, !tbaa !101
  %i.en = load <4 x float>, ptr %i.ay, align 16, !tbaa !101
  %i.eo = load <4 x float>, ptr %i.az, align 16, !tbaa !101
  %i.ep = load <4 x float>, ptr %i.ba, align 16, !tbaa !101
  %i.eq = fmul fast <4 x float> %i.el, %i.ec
  %i.er = fadd fast <4 x float> %i.eb, %i.eq
  %i.es = fmul fast <4 x float> %i.em, %i.ee
  %i.et = fadd fast <4 x float> %i.er, %i.es
  %i.eu = fmul fast <4 x float> %i.en, %i.eg
  %i.ev = fadd fast <4 x float> %i.et, %i.eu
  %i.ew = fmul fast <4 x float> %i.eo, %i.ei
  %i.ex = fadd fast <4 x float> %i.ev, %i.ew
  %i.ey = fmul fast <4 x float> %i.ep, %i.ek
  %i.ez = fadd fast <4 x float> %i.ex, %i.ey
  %i.fa = load <4 x float>, ptr %.199226, align 16, !tbaa !101
  %i.fb = getelementptr inbounds nuw i8, ptr %.199226, i64 16
  %i.fc = load <4 x float>, ptr %i.fb, align 16, !tbaa !101
  %i.fd = getelementptr inbounds nuw i8, ptr %.199226, i64 32 ; 3 uses
  %i.fe = load <4 x float>, ptr %i.fd, align 16, !tbaa !101
  %i.ff = getelementptr inbounds nuw i8, ptr %.199226, i64 48
  %i.fg = load <4 x float>, ptr %i.ff, align 16, !tbaa !101
  %i.fh = getelementptr inbounds nuw i8, ptr %.199226, i64 64
  %i.fi = load <4 x float>, ptr %i.fh, align 16, !tbaa !101
  %i.fj = load <4 x float>, ptr %i.bb, align 16, !tbaa !101
  %i.fk = load <4 x float>, ptr %i.bc, align 16, !tbaa !101
  %i.fl = load <4 x float>, ptr %i.bd, align 16, !tbaa !101
  %i.fm = load <4 x float>, ptr %i.be, align 16, !tbaa !101
  %i.fn = load <4 x float>, ptr %i.bf, align 16, !tbaa !101
  %i.fo = fmul fast <4 x float> %i.fj, %i.fa
  %i.fp = fadd fast <4 x float> %i.ez, %i.fo
  %i.fq = fmul fast <4 x float> %i.fk, %i.fc
  %i.fr = fadd fast <4 x float> %i.fp, %i.fq
  %i.fs = fmul fast <4 x float> %i.fl, %i.fe
  %i.ft = fadd fast <4 x float> %i.fr, %i.fs
  %i.fu = fmul fast <4 x float> %i.fm, %i.fg
  %i.fv = fadd fast <4 x float> %i.ft, %i.fu
  %i.fw = fmul fast <4 x float> %i.fn, %i.fi
  %i.fx = fadd fast <4 x float> %i.fv, %i.fw
  %i.fy = load <4 x float>, ptr %.1227, align 16, !tbaa !101
  %i.fz = getelementptr inbounds nuw i8, ptr %.1227, i64 16
  %i.ga = load <4 x float>, ptr %i.fz, align 16, !tbaa !101
  %i.gb = getelementptr inbounds nuw i8, ptr %.1227, i64 32 ; 3 uses
  %i.gc = load <4 x float>, ptr %i.gb, align 16, !tbaa !101
  %i.gd = getelementptr inbounds nuw i8, ptr %.1227, i64 48
  %i.ge = load <4 x float>, ptr %i.gd, align 16, !tbaa !101
  %i.gf = getelementptr inbounds nuw i8, ptr %.1227, i64 64
  %i.gg = load <4 x float>, ptr %i.gf, align 16, !tbaa !101
  %i.gh = load <4 x float>, ptr %i.bg, align 16, !tbaa !101
  %i.gi = load <4 x float>, ptr %i.bh, align 16, !tbaa !101
  %i.gj = load <4 x float>, ptr %i.bi, align 16, !tbaa !101
  %i.gk = load <4 x float>, ptr %i.bj, align 16, !tbaa !101
  %i.gl = load <4 x float>, ptr %i.bk, align 16, !tbaa !101
  %i.gm = fmul fast <4 x float> %i.gh, %i.fy
  %i.gn = fadd fast <4 x float> %i.fx, %i.gm
  %i.go = fmul fast <4 x float> %i.gi, %i.ga
  %i.gp = fadd fast <4 x float> %i.gn, %i.go
  %i.gq = fmul fast <4 x float> %i.gj, %i.gc
  %i.gr = fadd fast <4 x float> %i.gp, %i.gq
  %i.gs = fmul fast <4 x float> %i.gk, %i.ge
  %i.gt = fadd fast <4 x float> %i.gr, %i.gs
  %i.gu = fmul fast <4 x float> %i.gl, %i.gg
  %i.gv = fadd fast <4 x float> %i.gt, %i.gu
  store <4 x float> %i.gv, ptr %.1107222, align 16, !tbaa !101
  %i.gw = getelementptr inbounds nuw i8, ptr %.1107222, i64 16 ; 2 uses
  %i.gx = add nuw nsw i32 %.0228, 1               ; 2 uses
  %i.gy = load i32, ptr %8, align 4, !tbaa !72    ; 2 uses
  %i.gz = icmp slt i32 %i.gx, %i.gy
  br i1 %i.gz, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !213

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %7, align 4, !tbaa !72
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.ha = phi i32 [ %i.cd, %.preheader ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %i.hb = phi i32 [ %i.ce, %.preheader ], [ %i.gy, %._crit_edge.loopexit ]
  %.1107.lcssa = phi ptr [ %.0106234, %.preheader ], [ %i.gw, %._crit_edge.loopexit ]
  %.1105.lcssa = phi ptr [ %.0104235, %.preheader ], [ %i.cj, %._crit_edge.loopexit ]
  %.1103.lcssa = phi ptr [ %.0102236, %.preheader ], [ %i.dh, %._crit_edge.loopexit ]
  %.1101.lcssa = phi ptr [ %.0100237, %.preheader ], [ %i.ef, %._crit_edge.loopexit ]
  %.199.lcssa = phi ptr [ %.098238, %.preheader ], [ %i.fd, %._crit_edge.loopexit ]
  %.1.lcssa = phi ptr [ %.097239, %.preheader ], [ %i.gb, %._crit_edge.loopexit ]
  %i.hc = load i32, ptr %9, align 4, !tbaa !72
  %i.hd = sext i32 %i.hc to i64                   ; 5 uses
  %i.he = getelementptr inbounds [4 x i8], ptr %.1105.lcssa, i64 %i.hd
  %i.hf = getelementptr inbounds [4 x i8], ptr %.1103.lcssa, i64 %i.hd
  %i.hg = getelementptr inbounds [4 x i8], ptr %.1101.lcssa, i64 %i.hd
  %i.hh = getelementptr inbounds [4 x i8], ptr %.199.lcssa, i64 %i.hd
  %i.hi = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %i.hd
  %i.hj = add nuw nsw i32 %.096240, 1             ; 2 uses
  %i.hk = icmp slt i32 %i.hj, %i.ha
  br i1 %i.hk, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !214

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
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #14

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL15convdw3x3s1_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #15 personality ptr @__gxx_personality_v0 {
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
  %i.l = load ptr, ptr %3, align 8, !tbaa !18, !noalias !215 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !215
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70, !noalias !215
  %factor.op.mul = mul i64 %i.n, %i.p             ; 3 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !162    ; 2 uses
  %.not170 = icmp eq ptr %i.q, null
  %i.r = load ptr, ptr %5, align 8, !tbaa !162    ; 5 uses
  %i.s = load i32, ptr %6, align 4, !tbaa !72     ; 16 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !18, !noalias !218 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !20, !noalias !218
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !70, !noalias !218
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
  %i.ay = add i32 %i.ax, 2                        ; 2 uses
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
  %i.bj = add i32 %i.s, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  %i.bm = add nuw nsw i64 %i.bl, 4                ; 2 uses
  %i.bn = add nuw nsw i64 %i.bl, 12               ; 4 uses
  %i.bo = mul nsw i64 %i.aj, 36                   ; 2 uses
  %i.bp = getelementptr i8, ptr %i.r, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.r, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 36
  %i.bs = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bt = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bu = getelementptr i8, ptr %i.bt, i64 36
  %10 = zext nneg i32 %i.s to i64                 ; 2 uses
  %min.iters.check414 = icmp ult i32 %i.s, 4
  %n.vec416 = and i64 %10, 2147483644             ; 4 uses
  %i.bv = shl nuw nsw i64 %n.vec416, 2            ; 6 uses
  %i.bw = trunc nuw nsw i64 %n.vec416 to i32
  %i.bx = sub nsw i32 %i.s, %i.bw
  %cmp.n459 = icmp eq i64 %n.vec416, %10
  %i.by = zext nneg i32 %i.s to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 4
  %n.vec = and i64 %i.by, 2147483644              ; 4 uses
  %i.bz = trunc nuw nsw i64 %n.vec to i32
  %i.ca = sub nsw i32 %i.s, %i.bz
  %i.cb = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.by
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv278 = phi i64 [ %i.aj, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %indvars.iv275 = phi ptr [ %scevgep274, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep276, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv272 = phi ptr [ %scevgep271, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep273, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv269 = phi ptr [ %scevgep268, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep270, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %indvars.iv = phi ptr [ %scevgep, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %scevgep267, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.cc = mul nuw nsw i64 %indvar, 36             ; 2 uses
  %scevgep368 = getelementptr i8, ptr %i.bp, i64 %i.cc ; 2 uses
  %scevgep369 = getelementptr i8, ptr %i.br, i64 %i.cc ; 2 uses
  %i.cd = mul nuw nsw i64 %indvar, 36             ; 2 uses
  %scevgep313 = getelementptr i8, ptr %i.bs, i64 %i.cd
  %scevgep314 = getelementptr i8, ptr %i.bu, i64 %i.cd
  %.reass = mul i64 %factor.op.mul, %indvars.iv278
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  br i1 %.not170, label %_ZN4ncnn3MatD2Ev.exit171, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.q, i64 %indvars.iv278
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit171

_ZN4ncnn3MatD2Ev.exit171:                         ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ch = phi fast float [ %i.cg, %bb.c ], [ 0.000000e+00, %_ZN4ncnn3Mat7channelEi.exit ] ; 5 uses
  %.idx = mul nsw i64 %indvars.iv278, 36
  %i.ci = getelementptr inbounds i8, ptr %i.r, i64 %.idx ; 18 uses
  %.reass249 = mul i64 %factor.op.mul248, %indvars.iv278
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass249 ; 5 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.aa ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ac ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 12 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  br i1 %i.ag, label %.lr.ph219, label %.preheader

.lr.ph219:                                        ; preds = %_ZN4ncnn3MatD2Ev.exit171
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 2 uses
  br i1 %i.ba, label %.lr.ph.us.preheader, label %.lr.ph219.split.preheader

.lr.ph219.split.preheader:                        ; preds = %.lr.ph219
  %scevgep277 = getelementptr i8, ptr %indvars.iv275, i64 %i.bc
  br label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph219
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.y
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ae
  %broadcast.splatinsert417 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat418 = shufflevector <4 x float> %broadcast.splatinsert417, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.0149218.us = phi ptr [ %i.ha, %._crit_edge.us ], [ %i.ce, %.lr.ph.us.preheader ] ; 11 uses
  %.0150217.us = phi ptr [ %i.hb, %._crit_edge.us ], [ %i.cu, %.lr.ph.us.preheader ] ; 11 uses
  %.0153216.us = phi i32 [ %i.hc, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ]
  %.0155215.us = phi ptr [ %i.gw, %._crit_edge.us ], [ %i.cj, %.lr.ph.us.preheader ] ; 7 uses
  %.0159214.us = phi ptr [ %i.gx, %._crit_edge.us ], [ %i.ck, %.lr.ph.us.preheader ] ; 7 uses
  %.0163213.us = phi ptr [ %i.gy, %._crit_edge.us ], [ %i.cl, %.lr.ph.us.preheader ] ; 7 uses
  %.0167212.us = phi ptr [ %i.gz, %._crit_edge.us ], [ %i.cv, %.lr.ph.us.preheader ] ; 7 uses
  br i1 %min.iters.check414, label %scalar.ph413.preheader, label %vector.memcheck361

vector.memcheck361:                               ; preds = %.lr.ph.us
  %scevgep362 = getelementptr i8, ptr %.0149218.us, i64 %i.bm ; 6 uses
  %scevgep363 = getelementptr i8, ptr %.0150217.us, i64 %i.bm ; 6 uses
  %scevgep364 = getelementptr i8, ptr %.0167212.us, i64 %i.bn ; 2 uses
  %scevgep365 = getelementptr i8, ptr %.0163213.us, i64 %i.bn ; 2 uses
  %scevgep366 = getelementptr i8, ptr %.0159214.us, i64 %i.bn ; 2 uses
  %scevgep367 = getelementptr i8, ptr %.0155215.us, i64 %i.bn ; 2 uses
  %bound0370 = icmp ult ptr %.0149218.us, %scevgep363
  %bound1371 = icmp ult ptr %.0150217.us, %scevgep362
  %found.conflict372 = and i1 %bound0370, %bound1371
  %bound0373 = icmp ult ptr %.0149218.us, %scevgep364
  %bound1374 = icmp ult ptr %.0167212.us, %scevgep362
  %found.conflict375 = and i1 %bound0373, %bound1374
  %conflict.rdx376 = or i1 %found.conflict372, %found.conflict375
  %bound0377 = icmp ult ptr %.0149218.us, %scevgep365
  %bound1378 = icmp ult ptr %.0163213.us, %scevgep362
  %found.conflict379 = and i1 %bound0377, %bound1378
  %conflict.rdx380 = or i1 %conflict.rdx376, %found.conflict379
  %bound0381 = icmp ult ptr %.0149218.us, %scevgep366
  %bound1382 = icmp ult ptr %.0159214.us, %scevgep362
  %found.conflict383 = and i1 %bound0381, %bound1382
  %conflict.rdx384 = or i1 %conflict.rdx380, %found.conflict383
  %bound0385 = icmp ult ptr %.0149218.us, %scevgep367
  %bound1386 = icmp ult ptr %.0155215.us, %scevgep362
  %found.conflict387 = and i1 %bound0385, %bound1386
  %conflict.rdx388 = or i1 %conflict.rdx384, %found.conflict387
  %bound0389 = icmp ult ptr %.0149218.us, %scevgep369
  %bound1390 = icmp ult ptr %scevgep368, %scevgep362
  %found.conflict391 = and i1 %bound0389, %bound1390
  %conflict.rdx392 = or i1 %conflict.rdx388, %found.conflict391
  %bound0393 = icmp ult ptr %.0150217.us, %scevgep364
  %bound1394 = icmp ult ptr %.0167212.us, %scevgep363
  %found.conflict395 = and i1 %bound0393, %bound1394
  %conflict.rdx396 = or i1 %conflict.rdx392, %found.conflict395
  %bound0397 = icmp ult ptr %.0150217.us, %scevgep365
  %bound1398 = icmp ult ptr %.0163213.us, %scevgep363
  %found.conflict399 = and i1 %bound0397, %bound1398
  %conflict.rdx400 = or i1 %conflict.rdx396, %found.conflict399
  %bound0401 = icmp ult ptr %.0150217.us, %scevgep366
  %bound1402 = icmp ult ptr %.0159214.us, %scevgep363
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %conflict.rdx400, %found.conflict403
  %bound0405 = icmp ult ptr %.0150217.us, %scevgep367
  %bound1406 = icmp ult ptr %.0155215.us, %scevgep363
  %found.conflict407 = and i1 %bound0405, %bound1406
  %conflict.rdx408 = or i1 %conflict.rdx404, %found.conflict407
  %bound0409 = icmp ult ptr %.0150217.us, %scevgep369
  %bound1410 = icmp ult ptr %scevgep368, %scevgep363
  %found.conflict411 = and i1 %bound0409, %bound1410
  %conflict.rdx412 = or i1 %conflict.rdx408, %found.conflict411
  br i1 %conflict.rdx412, label %scalar.ph413.preheader, label %vector.ph415

vector.ph415:                                     ; preds = %vector.memcheck361
  %i.cw = getelementptr i8, ptr %.0149218.us, i64 %i.bv ; 2 uses
  %i.cx = getelementptr i8, ptr %.0150217.us, i64 %i.bv ; 2 uses
  %i.cy = getelementptr i8, ptr %.0155215.us, i64 %i.bv ; 2 uses
  %i.cz = getelementptr i8, ptr %.0159214.us, i64 %i.bv ; 2 uses
  %i.da = getelementptr i8, ptr %.0163213.us, i64 %i.bv ; 2 uses
  %i.db = getelementptr i8, ptr %.0167212.us, i64 %i.bv ; 2 uses
  %i.dc = load float, ptr %i.ci, align 4, !tbaa !45, !alias.scope !221
  %broadcast.splatinsert428 = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat429 = shufflevector <4 x float> %broadcast.splatinsert428, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dd = load float, ptr %i.co, align 4, !tbaa !45, !alias.scope !221
  %broadcast.splatinsert431 = insertelement <4 x float> poison, float %i.dd, i64 0
  %broadcast.splat432 = shufflevector <4 x float> %broadcast.splatinsert431, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.de = load float, ptr %i.cp, align 4, !tbaa !45, !alias.scope !221
  %broadcast.splatinsert434 = insertelement <4 x float> poison, float %i.de, i64 0
  %broadcast.splat435 = shufflevector <4 x float> %broadcast.splatinsert434, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.df = load float, ptr %i.cm, align 4, !tbaa !45, !alias.scope !221
  %broadcast.splatinsert437 = insertelement <4 x float> poison, float %i.df, i64 0
  %broadcast.splat438 = shufflevector <4 x float> %broadcast.splatinsert437, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dg = load float, ptr %i.cq, align 4, !tbaa !45, !alias.scope !221
  %broadcast.splatinsert440 = insertelement <4 x float> poison, float %i.dg, i64 0
  %broadcast.splat441 = shufflevector <4 x float> %broadcast.splatinsert440, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dh = load float, ptr %i.cr, align 4, !tbaa !45, !alias.scope !221
  %broadcast.splatinsert443 = insertelement <4 x float> poison, float %i.dh, i64 0
  %broadcast.splat444 = shufflevector <4 x float> %broadcast.splatinsert443, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.di = load float, ptr %i.cn, align 4, !tbaa !45, !alias.scope !221
  %broadcast.splatinsert446 = insertelement <4 x float> poison, float %i.di, i64 0
  %broadcast.splat447 = shufflevector <4 x float> %broadcast.splatinsert446, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dj = load float, ptr %i.cs, align 4, !tbaa !45, !alias.scope !221
  %broadcast.splatinsert449 = insertelement <4 x float> poison, float %i.dj, i64 0
  %broadcast.splat450 = shufflevector <4 x float> %broadcast.splatinsert449, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dk = load float, ptr %i.ct, align 4, !tbaa !45, !alias.scope !221
  %broadcast.splatinsert452 = insertelement <4 x float> poison, float %i.dk, i64 0
  %broadcast.splat453 = shufflevector <4 x float> %broadcast.splatinsert452, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body419

vector.body419:                                   ; preds = %vector.body419, %vector.ph415
  %index420 = phi i64 [ 0, %vector.ph415 ], [ %index.next457, %vector.body419 ] ; 2 uses
  %i.dl = shl i64 %index420, 2                    ; 6 uses
  %next.gep421 = getelementptr i8, ptr %.0149218.us, i64 %i.dl
  %next.gep422 = getelementptr i8, ptr %.0150217.us, i64 %i.dl
  %next.gep423 = getelementptr i8, ptr %.0155215.us, i64 %i.dl ; 3 uses
  %next.gep424 = getelementptr i8, ptr %.0159214.us, i64 %i.dl ; 3 uses
  %next.gep425 = getelementptr i8, ptr %.0163213.us, i64 %i.dl ; 3 uses
  %next.gep426 = getelementptr i8, ptr %.0167212.us, i64 %i.dl ; 3 uses
  %wide.load427 = load <4 x float>, ptr %next.gep423, align 4, !tbaa !45, !alias.scope !224
  %i.dm = fmul fast <4 x float> %broadcast.splat429, %wide.load427
  %i.dn = fadd fast <4 x float> %i.dm, %broadcast.splat418
  %i.do = getelementptr inbounds nuw i8, ptr %next.gep423, i64 4
  %wide.load430 = load <4 x float>, ptr %i.do, align 4, !tbaa !45, !alias.scope !224
  %i.dp = fmul fast <4 x float> %broadcast.splat432, %wide.load430
  %i.dq = fadd fast <4 x float> %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %next.gep423, i64 8
  %wide.load433 = load <4 x float>, ptr %i.dr, align 4, !tbaa !45, !alias.scope !224
  %i.ds = fmul fast <4 x float> %broadcast.splat435, %wide.load433
  %i.dt = fadd fast <4 x float> %i.dq, %i.ds
  %wide.load436 = load <4 x float>, ptr %next.gep424, align 4, !tbaa !45, !alias.scope !226 ; 2 uses
  %i.du = fmul fast <4 x float> %broadcast.splat438, %wide.load436
  %i.dv = fadd fast <4 x float> %i.dt, %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %next.gep424, i64 4
  %wide.load439 = load <4 x float>, ptr %i.dw, align 4, !tbaa !45, !alias.scope !226 ; 2 uses
  %i.dx = fmul fast <4 x float> %broadcast.splat441, %wide.load439
  %i.dy = fadd fast <4 x float> %i.dv, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %next.gep424, i64 8
  %wide.load442 = load <4 x float>, ptr %i.dz, align 4, !tbaa !45, !alias.scope !226 ; 2 uses
  %i.ea = fmul fast <4 x float> %broadcast.splat444, %wide.load442
  %i.eb = fadd fast <4 x float> %i.dy, %i.ea
  %wide.load445 = load <4 x float>, ptr %next.gep425, align 4, !tbaa !45, !alias.scope !228 ; 2 uses
  %i.ec = fmul fast <4 x float> %broadcast.splat447, %wide.load445
  %i.ed = fadd fast <4 x float> %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %next.gep425, i64 4
  %wide.load448 = load <4 x float>, ptr %i.ee, align 4, !tbaa !45, !alias.scope !228 ; 2 uses
  %i.ef = fmul fast <4 x float> %broadcast.splat450, %wide.load448
  %i.eg = fadd fast <4 x float> %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %next.gep425, i64 8
end_hunk_0
