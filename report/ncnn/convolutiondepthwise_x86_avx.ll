Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolutiondepthwise_x86_avx?download=true
inline.NumInlined: 225
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN4ncnnL21convdw5x5s2_pack8_avxERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ge = load <8 x float>, ptr %i.gd, align 32, !tbaa !87
  %i.gf = getelementptr inbounds nuw i8, ptr %.1227, i64 128
  %i.gg = load <8 x float>, ptr %i.gf, align 32, !tbaa !87
  %i.gh = load <8 x float>, ptr %i.bg, align 32, !tbaa !87
  %i.gi = load <8 x float>, ptr %i.bh, align 32, !tbaa !87
  %i.gj = load <8 x float>, ptr %i.bi, align 32, !tbaa !87
  %i.gk = load <8 x float>, ptr %i.bj, align 32, !tbaa !87
  %i.gl = load <8 x float>, ptr %i.bk, align 32, !tbaa !87
  %i.gm = fmul fast <8 x float> %i.gh, %i.fy
  %i.gn = fadd fast <8 x float> %i.fx, %i.gm
  %i.go = fmul fast <8 x float> %i.gi, %i.ga
  %i.gp = fadd fast <8 x float> %i.gn, %i.go
  %i.gq = fmul fast <8 x float> %i.gj, %i.gc
  %i.gr = fadd fast <8 x float> %i.gp, %i.gq
  %i.gs = fmul fast <8 x float> %i.gk, %i.ge
  %i.gt = fadd fast <8 x float> %i.gr, %i.gs
  %i.gu = fmul fast <8 x float> %i.gl, %i.gg
  %i.gv = fadd fast <8 x float> %i.gt, %i.gu
  store <8 x float> %i.gv, ptr %.1107222, align 32, !tbaa !87
  %i.gw = getelementptr inbounds nuw i8, ptr %.1107222, i64 32 ; 2 uses
  %i.gx = add nuw nsw i32 %.0228, 1               ; 2 uses
  %i.gy = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.gz = icmp slt i32 %i.gx, %i.gy
  br i1 %i.gz, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !233

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %7, align 4, !tbaa !69
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
  %i.hc = load i32, ptr %9, align 4, !tbaa !69
  %i.hd = sext i32 %i.hc to i64                   ; 5 uses
  %i.he = getelementptr inbounds [4 x i8], ptr %.1105.lcssa, i64 %i.hd
  %i.hf = getelementptr inbounds [4 x i8], ptr %.1103.lcssa, i64 %i.hd
  %i.hg = getelementptr inbounds [4 x i8], ptr %.1101.lcssa, i64 %i.hd
  %i.hh = getelementptr inbounds [4 x i8], ptr %.199.lcssa, i64 %i.hd
  %i.hi = getelementptr inbounds [4 x i8], ptr %.1.lcssa, i64 %i.hd
  %i.hj = add nuw nsw i32 %.096240, 1             ; 2 uses
  %i.hk = icmp slt i32 %i.hj, %i.ha
  br i1 %i.hk, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !234

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

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21convdw3x3s1_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not678 = icmp sgt i32 %i.k, %i.j
  br i1 %.not678, label %._crit_edge680, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.s, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !21, !noalias !246
  %i.v = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !246
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !246
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
  %.not182 = icmp eq ptr %i.aa, null
  br i1 %.not182, label %_ZNK4ncnn3Mat7channelEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.idx
  %i.ac = load <4 x float>, ptr %i.ab, align 1, !tbaa !87
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ad = phi fast <4 x float> [ %i.ac, %bb.c ], [ zeroinitializer, %_ZN4ncnn3Mat7channelEi.exit ] ; 15 uses
  %i.ae = load ptr, ptr %5, align 8, !tbaa !21
  %i.af = load i32, ptr %i.n, align 4, !tbaa !75
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !67
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 9 uses
  %i.al = load <4 x float>, ptr %i.ak, align 16, !tbaa !87 ; 15 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load <4 x float>, ptr %i.am, align 16, !tbaa !87 ; 15 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !tbaa !87 ; 15 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ar = load <4 x float>, ptr %i.aq, align 16, !tbaa !87 ; 15 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.at = load <4 x float>, ptr %i.as, align 16, !tbaa !87 ; 15 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.av = load <4 x float>, ptr %i.au, align 16, !tbaa !87 ; 15 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !tbaa !87 ; 15 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.az = load <4 x float>, ptr %i.ay, align 16, !tbaa !87 ; 15 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.bb = load <4 x float>, ptr %i.ba, align 16, !tbaa !87 ; 15 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !69
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.preheader631.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader631.preheader:                          ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.be = load ptr, ptr %6, align 8, !tbaa !21, !noalias !247
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !22, !noalias !247
  %i.bg = mul i64 %i.bf, %indvars.iv
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !247 ; 3 uses
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi ; 3 uses
  %i.bk = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !247
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 1
  %i.bn = mul i64 %i.bm, %i.bh
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn
  %i.bp = mul i64 %i.bh, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bp
  %.pre = load i32, ptr %8, align 4, !tbaa !69
  br label %.preheader631

.preheader631:                                    ; preds = %.preheader631.preheader, %._crit_edge
  %i.br = phi i32 [ %i.si, %._crit_edge ], [ %.pre, %.preheader631.preheader ] ; 2 uses
  %.0160677 = phi i32 [ %i.sm, %._crit_edge ], [ 0, %.preheader631.preheader ]
  %.0161676 = phi ptr [ %i.sl, %._crit_edge ], [ %i.bo, %.preheader631.preheader ] ; 2 uses
  %.0165675 = phi ptr [ %i.sk, %._crit_edge ], [ %i.bq, %.preheader631.preheader ] ; 2 uses
  %.0170674 = phi ptr [ %i.sj, %._crit_edge ], [ %i.bj, %.preheader631.preheader ] ; 2 uses
  %.0175673 = phi ptr [ %.4179.lcssa, %._crit_edge ], [ %i.z, %.preheader631.preheader ] ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 7
  br i1 %i.bs, label %.lr.ph, label %.preheader630

.preheader630:                                    ; preds = %.lr.ph, %.preheader631
  %i.bt = phi i32 [ %i.br, %.preheader631 ], [ %i.jy, %.lr.ph ] ; 2 uses
  %.1176.lcssa = phi ptr [ %.0175673, %.preheader631 ], [ %i.jv, %.lr.ph ] ; 2 uses
  %.1171.lcssa = phi ptr [ %.0170674, %.preheader631 ], [ %i.hx, %.lr.ph ] ; 2 uses
  %.1166.lcssa = phi ptr [ %.0165675, %.preheader631 ], [ %i.hz, %.lr.ph ] ; 2 uses
  %.1162.lcssa = phi ptr [ %.0161676, %.preheader631 ], [ %i.ib, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.preheader631 ], [ %i.jw, %.lr.ph ] ; 3 uses
  %i.bu = or disjoint i32 %.0.lcssa, 3
  %i.bv = icmp slt i32 %i.bu, %i.bt
  br i1 %i.bv, label %.lr.ph646, label %.preheader629

.lr.ph:                                           ; preds = %.preheader631, %.lr.ph
  %.0636 = phi i32 [ %i.jw, %.lr.ph ], [ 0, %.preheader631 ]
  %.1162635 = phi ptr [ %i.ib, %.lr.ph ], [ %.0161676, %.preheader631 ] ; 10 uses
  %.1166634 = phi ptr [ %i.hz, %.lr.ph ], [ %.0165675, %.preheader631 ] ; 10 uses
  %.1171633 = phi ptr [ %i.hx, %.lr.ph ], [ %.0170674, %.preheader631 ] ; 10 uses
  %.1176632 = phi ptr [ %i.jv, %.lr.ph ], [ %.0175673, %.preheader631 ] ; 9 uses
  %i.bw = load <4 x float>, ptr %.1171633, align 16, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %.1171633, i64 16
  %i.by = load <4 x float>, ptr %i.bx, align 16, !tbaa !87 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1171633, i64 32
  %i.ca = load <4 x float>, ptr %i.bz, align 16, !tbaa !87 ; 3 uses
  %i.cb = load <4 x float>, ptr %.1166634, align 16, !tbaa !87
  %i.cc = getelementptr inbounds nuw i8, ptr %.1166634, i64 16
  %i.cd = load <4 x float>, ptr %i.cc, align 16, !tbaa !87 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.1166634, i64 32
  %i.cf = load <4 x float>, ptr %i.ce, align 16, !tbaa !87 ; 3 uses
  %i.cg = load <4 x float>, ptr %.1162635, align 16, !tbaa !87
  %i.ch = getelementptr inbounds nuw i8, ptr %.1162635, i64 16
  %i.ci = load <4 x float>, ptr %i.ch, align 16, !tbaa !87 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.1162635, i64 32
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !tbaa !87 ; 3 uses
  %i.cl = fmul fast <4 x float> %i.bw, %i.al
  %i.cm = fadd fast <4 x float> %i.cl, %i.ad
  %i.cn = fmul fast <4 x float> %i.by, %i.an
  %i.co = fadd fast <4 x float> %i.cm, %i.cn
  %i.cp = fmul fast <4 x float> %i.ca, %i.ap
  %i.cq = fadd fast <4 x float> %i.co, %i.cp
  %i.cr = fmul fast <4 x float> %i.cb, %i.ar
  %i.cs = fadd fast <4 x float> %i.cq, %i.cr
  %i.ct = fmul fast <4 x float> %i.cd, %i.at
  %i.cu = fadd fast <4 x float> %i.cs, %i.ct
  %i.cv = fmul fast <4 x float> %i.cf, %i.av
  %i.cw = fadd fast <4 x float> %i.cu, %i.cv
  %i.cx = fmul fast <4 x float> %i.cg, %i.ax
  %i.cy = fadd fast <4 x float> %i.cw, %i.cx
  %i.cz = fmul fast <4 x float> %i.ci, %i.az
  %i.da = fadd fast <4 x float> %i.cy, %i.cz
  %i.db = fmul fast <4 x float> %i.ck, %i.bb
  %i.dc = fadd fast <4 x float> %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.1171633, i64 48
  %i.de = load <4 x float>, ptr %i.dd, align 16, !tbaa !87 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1166634, i64 48
  %i.dg = load <4 x float>, ptr %i.df, align 16, !tbaa !87 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1162635, i64 48
  %i.di = load <4 x float>, ptr %i.dh, align 16, !tbaa !87 ; 3 uses
  store <4 x float> %i.dc, ptr %.1176632, align 16, !tbaa !87
  %i.dj = fmul fast <4 x float> %i.by, %i.al
  %i.dk = fadd fast <4 x float> %i.dj, %i.ad
  %i.dl = fmul fast <4 x float> %i.ca, %i.an
  %i.dm = fadd fast <4 x float> %i.dk, %i.dl
  %i.dn = fmul fast <4 x float> %i.de, %i.ap
  %i.do = fmul fast <4 x float> %i.cd, %i.ar
  %i.dp = fmul fast <4 x float> %i.cf, %i.at
  %i.dq = fmul fast <4 x float> %i.dg, %i.av
  %i.dr = fmul fast <4 x float> %i.ci, %i.ax
  %i.ds = fmul fast <4 x float> %i.ck, %i.az
  %i.dt = fmul fast <4 x float> %i.di, %i.bb
  %i.du = fadd fast <4 x float> %i.dm, %i.do
  %i.dv = fadd fast <4 x float> %i.du, %i.dp
  %i.dw = fadd fast <4 x float> %i.dv, %i.dr
  %i.dx = fadd fast <4 x float> %i.dw, %i.ds
  %i.dy = fadd fast <4 x float> %i.dx, %i.dn
  %i.dz = fadd fast <4 x float> %i.dy, %i.dq
  %i.ea = fadd fast <4 x float> %i.dz, %i.dt
  %i.eb = getelementptr inbounds nuw i8, ptr %.1171633, i64 64
  %i.ec = load <4 x float>, ptr %i.eb, align 16, !tbaa !87 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.1166634, i64 64
  %i.ee = load <4 x float>, ptr %i.ed, align 16, !tbaa !87 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.1162635, i64 64
  %i.eg = load <4 x float>, ptr %i.ef, align 16, !tbaa !87 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.1176632, i64 16
  store <4 x float> %i.ea, ptr %i.eh, align 16, !tbaa !87
  %i.ei = fmul fast <4 x float> %i.ca, %i.al
  %i.ej = fadd fast <4 x float> %i.ei, %i.ad
  %i.ek = fmul fast <4 x float> %i.de, %i.an
  %i.el = fmul fast <4 x float> %i.ec, %i.ap
  %i.em = fmul fast <4 x float> %i.cf, %i.ar
  %i.en = fmul fast <4 x float> %i.dg, %i.at
  %i.eo = fmul fast <4 x float> %i.ee, %i.av
  %i.ep = fmul fast <4 x float> %i.ck, %i.ax
  %i.eq = fmul fast <4 x float> %i.di, %i.az
  %i.er = fmul fast <4 x float> %i.eg, %i.bb
  %i.es = fadd fast <4 x float> %i.ej, %i.em
  %i.et = fadd fast <4 x float> %i.es, %i.ep
  %i.eu = fadd fast <4 x float> %i.et, %i.ek
  %i.ev = fadd fast <4 x float> %i.eu, %i.en
  %i.ew = fadd fast <4 x float> %i.ev, %i.eq
  %i.ex = fadd fast <4 x float> %i.ew, %i.el
  %i.ey = fadd fast <4 x float> %i.ex, %i.eo
  %i.ez = fadd fast <4 x float> %i.ey, %i.er
  %i.fa = getelementptr inbounds nuw i8, ptr %.1171633, i64 80
  %i.fb = load <4 x float>, ptr %i.fa, align 16, !tbaa !87 ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.1166634, i64 80
  %i.fd = load <4 x float>, ptr %i.fc, align 16, !tbaa !87 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.1162635, i64 80
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !tbaa !87 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.1176632, i64 32
  store <4 x float> %i.ez, ptr %i.fg, align 16, !tbaa !87
  %i.fh = fmul fast <4 x float> %i.de, %i.al
  %i.fi = fadd fast <4 x float> %i.fh, %i.ad
  %i.fj = fmul fast <4 x float> %i.ec, %i.an
  %i.fk = fmul fast <4 x float> %i.fb, %i.ap
  %i.fl = fmul fast <4 x float> %i.dg, %i.ar
  %i.fm = fmul fast <4 x float> %i.ee, %i.at
  %i.fn = fmul fast <4 x float> %i.fd, %i.av
  %i.fo = fmul fast <4 x float> %i.di, %i.ax
  %i.fp = fmul fast <4 x float> %i.eg, %i.az
  %i.fq = fmul fast <4 x float> %i.ff, %i.bb
  %i.fr = fadd fast <4 x float> %i.fi, %i.fl
  %i.fs = fadd fast <4 x float> %i.fr, %i.fo
  %i.ft = fadd fast <4 x float> %i.fs, %i.fj
  %i.fu = fadd fast <4 x float> %i.ft, %i.fm
  %i.fv = fadd fast <4 x float> %i.fu, %i.fp
  %i.fw = fadd fast <4 x float> %i.fv, %i.fk
  %i.fx = fadd fast <4 x float> %i.fw, %i.fn
  %i.fy = fadd fast <4 x float> %i.fx, %i.fq
  %i.fz = getelementptr inbounds nuw i8, ptr %.1171633, i64 96
  %i.ga = load <4 x float>, ptr %i.fz, align 16, !tbaa !87 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.1166634, i64 96
  %i.gc = load <4 x float>, ptr %i.gb, align 16, !tbaa !87 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.1162635, i64 96
  %i.ge = load <4 x float>, ptr %i.gd, align 16, !tbaa !87 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.1176632, i64 48
  store <4 x float> %i.fy, ptr %i.gf, align 16, !tbaa !87
  %i.gg = fmul fast <4 x float> %i.ec, %i.al
  %i.gh = fadd fast <4 x float> %i.gg, %i.ad
  %i.gi = fmul fast <4 x float> %i.fb, %i.an
  %i.gj = fmul fast <4 x float> %i.ga, %i.ap
  %i.gk = fmul fast <4 x float> %i.ee, %i.ar
  %i.gl = fmul fast <4 x float> %i.fd, %i.at
  %i.gm = fmul fast <4 x float> %i.gc, %i.av
  %i.gn = fmul fast <4 x float> %i.eg, %i.ax
  %i.go = fmul fast <4 x float> %i.ff, %i.az
  %i.gp = fmul fast <4 x float> %i.ge, %i.bb
  %i.gq = fadd fast <4 x float> %i.gh, %i.gk
  %i.gr = fadd fast <4 x float> %i.gq, %i.gn
  %i.gs = fadd fast <4 x float> %i.gr, %i.gi
  %i.gt = fadd fast <4 x float> %i.gs, %i.gl
  %i.gu = fadd fast <4 x float> %i.gt, %i.go
  %i.gv = fadd fast <4 x float> %i.gu, %i.gj
  %i.gw = fadd fast <4 x float> %i.gv, %i.gm
  %i.gx = fadd fast <4 x float> %i.gw, %i.gp
  %i.gy = getelementptr inbounds nuw i8, ptr %.1171633, i64 112
  %i.gz = load <4 x float>, ptr %i.gy, align 16, !tbaa !87 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.1166634, i64 112
  %i.hb = load <4 x float>, ptr %i.ha, align 16, !tbaa !87 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.1162635, i64 112
  %i.hd = load <4 x float>, ptr %i.hc, align 16, !tbaa !87 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.1176632, i64 64
  store <4 x float> %i.gx, ptr %i.he, align 16, !tbaa !87
  %i.hf = fmul fast <4 x float> %i.fb, %i.al
  %i.hg = fadd fast <4 x float> %i.hf, %i.ad
  %i.hh = fmul fast <4 x float> %i.ga, %i.an
  %i.hi = fmul fast <4 x float> %i.gz, %i.ap
  %i.hj = fmul fast <4 x float> %i.fd, %i.ar
  %i.hk = fmul fast <4 x float> %i.gc, %i.at
  %i.hl = fmul fast <4 x float> %i.hb, %i.av
  %i.hm = fmul fast <4 x float> %i.ff, %i.ax
  %i.hn = fmul fast <4 x float> %i.ge, %i.az
  %i.ho = fmul fast <4 x float> %i.hd, %i.bb
  %i.hp = fadd fast <4 x float> %i.hg, %i.hj
  %i.hq = fadd fast <4 x float> %i.hp, %i.hm
  %i.hr = fadd fast <4 x float> %i.hq, %i.hh
  %i.hs = fadd fast <4 x float> %i.hr, %i.hk
  %i.ht = fadd fast <4 x float> %i.hs, %i.hn
  %i.hu = fadd fast <4 x float> %i.ht, %i.hi
  %i.hv = fadd fast <4 x float> %i.hu, %i.hl
  %i.hw = fadd fast <4 x float> %i.hv, %i.ho
  %i.hx = getelementptr inbounds nuw i8, ptr %.1171633, i64 128 ; 3 uses
  %i.hy = load <4 x float>, ptr %i.hx, align 16, !tbaa !87 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.1166634, i64 128 ; 3 uses
  %i.ia = load <4 x float>, ptr %i.hz, align 16, !tbaa !87 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.1162635, i64 128 ; 3 uses
  %i.ic = load <4 x float>, ptr %i.ib, align 16, !tbaa !87 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.1176632, i64 80
  store <4 x float> %i.hw, ptr %i.id, align 16, !tbaa !87
  %i.ie = fmul fast <4 x float> %i.ga, %i.al
  %i.if = fadd fast <4 x float> %i.ie, %i.ad
  %i.ig = fmul fast <4 x float> %i.gz, %i.an
  %i.ih = fmul fast <4 x float> %i.hy, %i.ap
  %i.ii = fmul fast <4 x float> %i.gc, %i.ar
  %i.ij = fmul fast <4 x float> %i.hb, %i.at
  %i.ik = fmul fast <4 x float> %i.ia, %i.av
  %i.il = fmul fast <4 x float> %i.ge, %i.ax
  %i.im = fmul fast <4 x float> %i.hd, %i.az
  %i.in = fmul fast <4 x float> %i.ic, %i.bb
  %i.io = fadd fast <4 x float> %i.if, %i.ii
  %i.ip = fadd fast <4 x float> %i.io, %i.il
  %i.iq = fadd fast <4 x float> %i.ip, %i.ig
  %i.ir = fadd fast <4 x float> %i.iq, %i.ij
  %i.is = fadd fast <4 x float> %i.ir, %i.im
  %i.it = fadd fast <4 x float> %i.is, %i.ih
  %i.iu = fadd fast <4 x float> %i.it, %i.ik
  %i.iv = fadd fast <4 x float> %i.iu, %i.in
  %i.iw = getelementptr inbounds nuw i8, ptr %.1171633, i64 144
  %i.ix = load <4 x float>, ptr %i.iw, align 16, !tbaa !87
  %i.iy = getelementptr inbounds nuw i8, ptr %.1166634, i64 144
  %i.iz = load <4 x float>, ptr %i.iy, align 16, !tbaa !87
  %i.ja = getelementptr inbounds nuw i8, ptr %.1162635, i64 144
  %i.jb = load <4 x float>, ptr %i.ja, align 16, !tbaa !87
  %i.jc = getelementptr inbounds nuw i8, ptr %.1176632, i64 96
  store <4 x float> %i.iv, ptr %i.jc, align 16, !tbaa !87
  %i.jd = fmul fast <4 x float> %i.gz, %i.al
  %i.je = fadd fast <4 x float> %i.jd, %i.ad
  %i.jf = fmul fast <4 x float> %i.hy, %i.an
  %i.jg = fmul fast <4 x float> %i.ix, %i.ap
  %i.jh = fmul fast <4 x float> %i.hb, %i.ar
  %i.ji = fmul fast <4 x float> %i.ia, %i.at
  %i.jj = fmul fast <4 x float> %i.iz, %i.av
  %i.jk = fmul fast <4 x float> %i.hd, %i.ax
  %i.jl = fmul fast <4 x float> %i.ic, %i.az
  %i.jm = fmul fast <4 x float> %i.jb, %i.bb
  %i.jn = fadd fast <4 x float> %i.je, %i.jh
  %i.jo = fadd fast <4 x float> %i.jn, %i.jk
  %i.jp = fadd fast <4 x float> %i.jo, %i.jf
  %i.jq = fadd fast <4 x float> %i.jp, %i.ji
  %i.jr = fadd fast <4 x float> %i.jq, %i.jl
  %i.js = fadd fast <4 x float> %i.jr, %i.jg
  %i.jt = fadd fast <4 x float> %i.js, %i.jj
  %i.ju = fadd fast <4 x float> %i.jt, %i.jm
  %9 = getelementptr inbounds nuw i8, ptr %.1176632, i64 112
  store <4 x float> %i.ju, ptr %9, align 16, !tbaa !87
  %i.jv = getelementptr inbounds nuw i8, ptr %.1176632, i64 128 ; 2 uses
  %i.jw = add nuw nsw i32 %.0636, 8               ; 3 uses
  %i.jx = or disjoint i32 %i.jw, 7
  %i.jy = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.jz = icmp slt i32 %i.jx, %i.jy
  br i1 %i.jz, label %.lr.ph, label %.preheader630, !llvm.loop !241

.preheader629:                                    ; preds = %.lr.ph646, %.preheader630
  %i.ka = phi i32 [ %i.bt, %.preheader630 ], [ %i.oj, %.lr.ph646 ] ; 2 uses
  %.2177.lcssa = phi ptr [ %.1176.lcssa, %.preheader630 ], [ %i.og, %.lr.ph646 ] ; 2 uses
  %.2172.lcssa = phi ptr [ %.1171.lcssa, %.preheader630 ], [ %i.mi, %.lr.ph646 ] ; 2 uses
  %.2167.lcssa = phi ptr [ %.1166.lcssa, %.preheader630 ], [ %i.mk, %.lr.ph646 ] ; 2 uses
  %.2163.lcssa = phi ptr [ %.1162.lcssa, %.preheader630 ], [ %i.mm, %.lr.ph646 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader630 ], [ %i.oh, %.lr.ph646 ] ; 3 uses
  %i.kb = or disjoint i32 %.1.lcssa, 1
  %i.kc = icmp slt i32 %i.kb, %i.ka
  br i1 %i.kc, label %.lr.ph657, label %.preheader

.lr.ph646:                                        ; preds = %.preheader630, %.lr.ph646
  %.1645 = phi i32 [ %i.oh, %.lr.ph646 ], [ %.0.lcssa, %.preheader630 ]
  %.2163644 = phi ptr [ %i.mm, %.lr.ph646 ], [ %.1162.lcssa, %.preheader630 ] ; 6 uses
  %.2167643 = phi ptr [ %i.mk, %.lr.ph646 ], [ %.1166.lcssa, %.preheader630 ] ; 6 uses
  %.2172642 = phi ptr [ %i.mi, %.lr.ph646 ], [ %.1171.lcssa, %.preheader630 ] ; 6 uses
  %.2177641 = phi ptr [ %i.og, %.lr.ph646 ], [ %.1176.lcssa, %.preheader630 ] ; 5 uses
  %i.kd = load <4 x float>, ptr %.2172642, align 16, !tbaa !87
  %i.ke = getelementptr inbounds nuw i8, ptr %.2172642, i64 16
  %i.kf = load <4 x float>, ptr %i.ke, align 16, !tbaa !87 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.2172642, i64 32
  %i.kh = load <4 x float>, ptr %i.kg, align 16, !tbaa !87 ; 3 uses
  %i.ki = load <4 x float>, ptr %.2167643, align 16, !tbaa !87
  %i.kj = getelementptr inbounds nuw i8, ptr %.2167643, i64 16
  %i.kk = load <4 x float>, ptr %i.kj, align 16, !tbaa !87 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.2167643, i64 32
  %i.km = load <4 x float>, ptr %i.kl, align 16, !tbaa !87 ; 3 uses
  %i.kn = load <4 x float>, ptr %.2163644, align 16, !tbaa !87
  %i.ko = getelementptr inbounds nuw i8, ptr %.2163644, i64 16
  %i.kp = load <4 x float>, ptr %i.ko, align 16, !tbaa !87 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.2163644, i64 32
  %i.kr = load <4 x float>, ptr %i.kq, align 16, !tbaa !87 ; 3 uses
  %i.ks = fmul fast <4 x float> %i.kd, %i.al
  %i.kt = fadd fast <4 x float> %i.ks, %i.ad
  %i.ku = fmul fast <4 x float> %i.kf, %i.an
  %i.kv = fadd fast <4 x float> %i.kt, %i.ku
  %i.kw = fmul fast <4 x float> %i.kh, %i.ap
  %i.kx = fadd fast <4 x float> %i.kv, %i.kw
  %i.ky = fmul fast <4 x float> %i.ki, %i.ar
  %i.kz = fadd fast <4 x float> %i.kx, %i.ky
  %i.la = fmul fast <4 x float> %i.kk, %i.at
  %i.lb = fadd fast <4 x float> %i.kz, %i.la
  %i.lc = fmul fast <4 x float> %i.km, %i.av
  %i.ld = fadd fast <4 x float> %i.lb, %i.lc
  %i.le = fmul fast <4 x float> %i.kn, %i.ax
  %i.lf = fadd fast <4 x float> %i.ld, %i.le
  %i.lg = fmul fast <4 x float> %i.kp, %i.az
  %i.lh = fadd fast <4 x float> %i.lf, %i.lg
  %i.li = fmul fast <4 x float> %i.kr, %i.bb
  %i.lj = fadd fast <4 x float> %i.lh, %i.li
  %i.lk = getelementptr inbounds nuw i8, ptr %.2172642, i64 48
  %i.ll = load <4 x float>, ptr %i.lk, align 16, !tbaa !87 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.2167643, i64 48
  %i.ln = load <4 x float>, ptr %i.lm, align 16, !tbaa !87 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.2163644, i64 48
  %i.lp = load <4 x float>, ptr %i.lo, align 16, !tbaa !87 ; 3 uses
  store <4 x float> %i.lj, ptr %.2177641, align 16, !tbaa !87
  %i.lq = fmul fast <4 x float> %i.kf, %i.al
  %i.lr = fadd fast <4 x float> %i.lq, %i.ad
  %i.ls = fmul fast <4 x float> %i.kh, %i.an
  %i.lt = fadd fast <4 x float> %i.lr, %i.ls
  %i.lu = fmul fast <4 x float> %i.ll, %i.ap
  %i.lv = fmul fast <4 x float> %i.kk, %i.ar
  %i.lw = fmul fast <4 x float> %i.km, %i.at
  %i.lx = fmul fast <4 x float> %i.ln, %i.av
  %i.ly = fmul fast <4 x float> %i.kp, %i.ax
  %i.lz = fmul fast <4 x float> %i.kr, %i.az
  %i.ma = fmul fast <4 x float> %i.lp, %i.bb
  %i.mb = fadd fast <4 x float> %i.lt, %i.lv
  %i.mc = fadd fast <4 x float> %i.mb, %i.lw
  %i.md = fadd fast <4 x float> %i.mc, %i.ly
  %i.me = fadd fast <4 x float> %i.md, %i.lz
  %i.mf = fadd fast <4 x float> %i.me, %i.lu
  %i.mg = fadd fast <4 x float> %i.mf, %i.lx
  %i.mh = fadd fast <4 x float> %i.mg, %i.ma
  %i.mi = getelementptr inbounds nuw i8, ptr %.2172642, i64 64 ; 3 uses
  %i.mj = load <4 x float>, ptr %i.mi, align 16, !tbaa !87 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.2167643, i64 64 ; 3 uses
  %i.ml = load <4 x float>, ptr %i.mk, align 16, !tbaa !87 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.2163644, i64 64 ; 3 uses
  %i.mn = load <4 x float>, ptr %i.mm, align 16, !tbaa !87 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.2177641, i64 16
  store <4 x float> %i.mh, ptr %i.mo, align 16, !tbaa !87
  %i.mp = fmul fast <4 x float> %i.kh, %i.al
  %i.mq = fadd fast <4 x float> %i.mp, %i.ad
  %i.mr = fmul fast <4 x float> %i.ll, %i.an
  %i.ms = fmul fast <4 x float> %i.mj, %i.ap
  %i.mt = fmul fast <4 x float> %i.km, %i.ar
  %i.mu = fmul fast <4 x float> %i.ln, %i.at
  %i.mv = fmul fast <4 x float> %i.ml, %i.av
  %i.mw = fmul fast <4 x float> %i.kr, %i.ax
  %i.mx = fmul fast <4 x float> %i.lp, %i.az
  %i.my = fmul fast <4 x float> %i.mn, %i.bb
  %i.mz = fadd fast <4 x float> %i.mq, %i.mt
  %i.na = fadd fast <4 x float> %i.mz, %i.mw
  %i.nb = fadd fast <4 x float> %i.na, %i.mr
  %i.nc = fadd fast <4 x float> %i.nb, %i.mu
  %i.nd = fadd fast <4 x float> %i.nc, %i.mx
  %i.ne = fadd fast <4 x float> %i.nd, %i.ms
  %i.nf = fadd fast <4 x float> %i.ne, %i.mv
  %i.ng = fadd fast <4 x float> %i.nf, %i.my
  %i.nh = getelementptr inbounds nuw i8, ptr %.2172642, i64 80
  %i.ni = load <4 x float>, ptr %i.nh, align 16, !tbaa !87
  %i.nj = getelementptr inbounds nuw i8, ptr %.2167643, i64 80
  %i.nk = load <4 x float>, ptr %i.nj, align 16, !tbaa !87
  %i.nl = getelementptr inbounds nuw i8, ptr %.2163644, i64 80
  %i.nm = load <4 x float>, ptr %i.nl, align 16, !tbaa !87
  %i.nn = getelementptr inbounds nuw i8, ptr %.2177641, i64 32
  store <4 x float> %i.ng, ptr %i.nn, align 16, !tbaa !87
  %i.no = fmul fast <4 x float> %i.ll, %i.al
  %i.np = fadd fast <4 x float> %i.no, %i.ad
  %i.nq = fmul fast <4 x float> %i.mj, %i.an
  %i.nr = fmul fast <4 x float> %i.ni, %i.ap
  %i.ns = fmul fast <4 x float> %i.ln, %i.ar
  %i.nt = fmul fast <4 x float> %i.ml, %i.at
  %i.nu = fmul fast <4 x float> %i.nk, %i.av
  %i.nv = fmul fast <4 x float> %i.lp, %i.ax
  %i.nw = fmul fast <4 x float> %i.mn, %i.az
  %i.nx = fmul fast <4 x float> %i.nm, %i.bb
  %i.ny = fadd fast <4 x float> %i.np, %i.ns
  %i.nz = fadd fast <4 x float> %i.ny, %i.nv
  %i.oa = fadd fast <4 x float> %i.nz, %i.nq
  %i.ob = fadd fast <4 x float> %i.oa, %i.nt
  %i.oc = fadd fast <4 x float> %i.ob, %i.nw
  %i.od = fadd fast <4 x float> %i.oc, %i.nr
  %i.oe = fadd fast <4 x float> %i.od, %i.nu
  %i.of = fadd fast <4 x float> %i.oe, %i.nx
  %10 = getelementptr inbounds nuw i8, ptr %.2177641, i64 48
  store <4 x float> %i.of, ptr %10, align 16, !tbaa !87
  %i.og = getelementptr inbounds nuw i8, ptr %.2177641, i64 64 ; 2 uses
  %i.oh = add nuw nsw i32 %.1645, 4               ; 3 uses
  %i.oi = or disjoint i32 %i.oh, 3
  %i.oj = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.ok = icmp slt i32 %i.oi, %i.oj
  br i1 %i.ok, label %.lr.ph646, label %.preheader629, !llvm.loop !242

.preheader:                                       ; preds = %.lr.ph657, %.preheader629
  %i.ol = phi i32 [ %i.ka, %.preheader629 ], [ %i.qv, %.lr.ph657 ] ; 2 uses
  %.3178.lcssa = phi ptr [ %.2177.lcssa, %.preheader629 ], [ %i.qs, %.lr.ph657 ] ; 2 uses
  %.3173.lcssa = phi ptr [ %.2172.lcssa, %.preheader629 ], [ %i.oq, %.lr.ph657 ] ; 2 uses
  %.3168.lcssa = phi ptr [ %.2167.lcssa, %.preheader629 ], [ %i.ov, %.lr.ph657 ] ; 2 uses
  %.3164.lcssa = phi ptr [ %.2163.lcssa, %.preheader629 ], [ %i.pa, %.lr.ph657 ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader629 ], [ %i.qt, %.lr.ph657 ] ; 2 uses
  %i.om = icmp slt i32 %.2.lcssa, %i.ol
  br i1 %i.om, label %.lr.ph668, label %._crit_edge

.lr.ph657:                                        ; preds = %.preheader629, %.lr.ph657
  %.2656 = phi i32 [ %i.qt, %.lr.ph657 ], [ %.1.lcssa, %.preheader629 ]
  %.3164655 = phi ptr [ %i.pa, %.lr.ph657 ], [ %.2163.lcssa, %.preheader629 ] ; 4 uses
  %.3168654 = phi ptr [ %i.ov, %.lr.ph657 ], [ %.2167.lcssa, %.preheader629 ] ; 4 uses
  %.3173653 = phi ptr [ %i.oq, %.lr.ph657 ], [ %.2172.lcssa, %.preheader629 ] ; 4 uses
  %.3178652 = phi ptr [ %i.qs, %.lr.ph657 ], [ %.2177.lcssa, %.preheader629 ] ; 3 uses
  %i.on = load <4 x float>, ptr %.3173653, align 16, !tbaa !87
  %i.oo = getelementptr inbounds nuw i8, ptr %.3173653, i64 16
  %i.op = load <4 x float>, ptr %i.oo, align 16, !tbaa !87 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.3173653, i64 32 ; 3 uses
  %i.or = load <4 x float>, ptr %i.oq, align 16, !tbaa !87 ; 2 uses
  %i.os = load <4 x float>, ptr %.3168654, align 16, !tbaa !87
  %i.ot = getelementptr inbounds nuw i8, ptr %.3168654, i64 16
  %i.ou = load <4 x float>, ptr %i.ot, align 16, !tbaa !87 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.3168654, i64 32 ; 3 uses
  %i.ow = load <4 x float>, ptr %i.ov, align 16, !tbaa !87 ; 2 uses
  %i.ox = load <4 x float>, ptr %.3164655, align 16, !tbaa !87
  %i.oy = getelementptr inbounds nuw i8, ptr %.3164655, i64 16
  %i.oz = load <4 x float>, ptr %i.oy, align 16, !tbaa !87 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.3164655, i64 32 ; 3 uses
  %i.pb = load <4 x float>, ptr %i.pa, align 16, !tbaa !87 ; 2 uses
  %i.pc = fmul fast <4 x float> %i.on, %i.al
  %i.pd = fadd fast <4 x float> %i.pc, %i.ad
  %i.pe = fmul fast <4 x float> %i.op, %i.an
  %i.pf = fadd fast <4 x float> %i.pd, %i.pe
  %i.pg = fmul fast <4 x float> %i.or, %i.ap
  %i.ph = fadd fast <4 x float> %i.pf, %i.pg
  %i.pi = fmul fast <4 x float> %i.os, %i.ar
  %i.pj = fadd fast <4 x float> %i.ph, %i.pi
  %i.pk = fmul fast <4 x float> %i.ou, %i.at
  %i.pl = fadd fast <4 x float> %i.pj, %i.pk
  %i.pm = fmul fast <4 x float> %i.ow, %i.av
  %i.pn = fadd fast <4 x float> %i.pl, %i.pm
  %i.po = fmul fast <4 x float> %i.ox, %i.ax
  %i.pp = fadd fast <4 x float> %i.pn, %i.po
  %i.pq = fmul fast <4 x float> %i.oz, %i.az
  %i.pr = fadd fast <4 x float> %i.pp, %i.pq
  %i.ps = fmul fast <4 x float> %i.pb, %i.bb
  %i.pt = fadd fast <4 x float> %i.pr, %i.ps
  %i.pu = getelementptr inbounds nuw i8, ptr %.3173653, i64 48
  %i.pv = load <4 x float>, ptr %i.pu, align 16, !tbaa !87
  %i.pw = getelementptr inbounds nuw i8, ptr %.3168654, i64 48
  %i.px = load <4 x float>, ptr %i.pw, align 16, !tbaa !87
  %i.py = getelementptr inbounds nuw i8, ptr %.3164655, i64 48
  %i.pz = load <4 x float>, ptr %i.py, align 16, !tbaa !87
  store <4 x float> %i.pt, ptr %.3178652, align 16, !tbaa !87
  %i.qa = fmul fast <4 x float> %i.op, %i.al
  %i.qb = fadd fast <4 x float> %i.qa, %i.ad
  %i.qc = fmul fast <4 x float> %i.or, %i.an
  %i.qd = fadd fast <4 x float> %i.qb, %i.qc
  %i.qe = fmul fast <4 x float> %i.pv, %i.ap
  %i.qf = fmul fast <4 x float> %i.ou, %i.ar
  %i.qg = fmul fast <4 x float> %i.ow, %i.at
  %i.qh = fmul fast <4 x float> %i.px, %i.av
  %i.qi = fmul fast <4 x float> %i.oz, %i.ax
  %i.qj = fmul fast <4 x float> %i.pb, %i.az
  %i.qk = fmul fast <4 x float> %i.pz, %i.bb
  %i.ql = fadd fast <4 x float> %i.qd, %i.qf
  %i.qm = fadd fast <4 x float> %i.ql, %i.qg
  %i.qn = fadd fast <4 x float> %i.qm, %i.qi
  %i.qo = fadd fast <4 x float> %i.qn, %i.qj
  %i.qp = fadd fast <4 x float> %i.qo, %i.qe
  %i.qq = fadd fast <4 x float> %i.qp, %i.qh
  %i.qr = fadd fast <4 x float> %i.qq, %i.qk
  %11 = getelementptr inbounds nuw i8, ptr %.3178652, i64 16
  store <4 x float> %i.qr, ptr %11, align 16, !tbaa !87
  %i.qs = getelementptr inbounds nuw i8, ptr %.3178652, i64 32 ; 2 uses
  %i.qt = add nuw nsw i32 %.2656, 2               ; 3 uses
  %i.qu = or disjoint i32 %i.qt, 1
  %i.qv = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.qw = icmp slt i32 %i.qu, %i.qv
  br i1 %i.qw, label %.lr.ph657, label %.preheader, !llvm.loop !243

.lr.ph668:                                        ; preds = %.preheader, %.lr.ph668
  %.3667 = phi i32 [ %i.sf, %.lr.ph668 ], [ %.2.lcssa, %.preheader ]
  %.4666 = phi ptr [ %i.ri, %.lr.ph668 ], [ %.3164.lcssa, %.preheader ] ; 3 uses
  %.4169665 = phi ptr [ %i.rd, %.lr.ph668 ], [ %.3168.lcssa, %.preheader ] ; 3 uses
  %.4174664 = phi ptr [ %i.qy, %.lr.ph668 ], [ %.3173.lcssa, %.preheader ] ; 3 uses
  %.4179663 = phi ptr [ %i.se, %.lr.ph668 ], [ %.3178.lcssa, %.preheader ] ; 2 uses
  %i.qx = load <4 x float>, ptr %.4174664, align 16, !tbaa !87
  %i.qy = getelementptr inbounds nuw i8, ptr %.4174664, i64 16 ; 3 uses
  %i.qz = load <4 x float>, ptr %i.qy, align 16, !tbaa !87
  %i.ra = getelementptr inbounds nuw i8, ptr %.4174664, i64 32
  %i.rb = load <4 x float>, ptr %i.ra, align 16, !tbaa !87
  %i.rc = load <4 x float>, ptr %.4169665, align 16, !tbaa !87
  %i.rd = getelementptr inbounds nuw i8, ptr %.4169665, i64 16 ; 3 uses
  %i.re = load <4 x float>, ptr %i.rd, align 16, !tbaa !87
  %i.rf = getelementptr inbounds nuw i8, ptr %.4169665, i64 32
  %i.rg = load <4 x float>, ptr %i.rf, align 16, !tbaa !87
  %i.rh = load <4 x float>, ptr %.4666, align 16, !tbaa !87
  %i.ri = getelementptr inbounds nuw i8, ptr %.4666, i64 16 ; 3 uses
  %i.rj = load <4 x float>, ptr %i.ri, align 16, !tbaa !87
  %i.rk = getelementptr inbounds nuw i8, ptr %.4666, i64 32
  %i.rl = load <4 x float>, ptr %i.rk, align 16, !tbaa !87
  %i.rm = fmul fast <4 x float> %i.qx, %i.al
  %i.rn = fadd fast <4 x float> %i.rm, %i.ad
  %i.ro = fmul fast <4 x float> %i.qz, %i.an
  %i.rp = fadd fast <4 x float> %i.rn, %i.ro
  %i.rq = fmul fast <4 x float> %i.rb, %i.ap
  %i.rr = fadd fast <4 x float> %i.rp, %i.rq
  %i.rs = fmul fast <4 x float> %i.rc, %i.ar
  %i.rt = fadd fast <4 x float> %i.rr, %i.rs
  %i.ru = fmul fast <4 x float> %i.re, %i.at
  %i.rv = fadd fast <4 x float> %i.rt, %i.ru
  %i.rw = fmul fast <4 x float> %i.rg, %i.av
  %i.rx = fadd fast <4 x float> %i.rv, %i.rw
  %i.ry = fmul fast <4 x float> %i.rh, %i.ax
  %i.rz = fadd fast <4 x float> %i.rx, %i.ry
  %i.sa = fmul fast <4 x float> %i.rj, %i.az
  %i.sb = fadd fast <4 x float> %i.rz, %i.sa
  %i.sc = fmul fast <4 x float> %i.rl, %i.bb
  %i.sd = fadd fast <4 x float> %i.sb, %i.sc
  store <4 x float> %i.sd, ptr %.4179663, align 16, !tbaa !87
  %i.se = getelementptr inbounds nuw i8, ptr %.4179663, i64 16 ; 2 uses
  %i.sf = add nuw nsw i32 %.3667, 1               ; 2 uses
  %i.sg = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.sh = icmp slt i32 %i.sf, %i.sg
  br i1 %i.sh, label %.lr.ph668, label %._crit_edge, !llvm.loop !244

._crit_edge:                                      ; preds = %.lr.ph668, %.preheader
  %i.si = phi i32 [ %i.ol, %.preheader ], [ %i.sg, %.lr.ph668 ]
  %.4179.lcssa = phi ptr [ %.3178.lcssa, %.preheader ], [ %i.se, %.lr.ph668 ]
  %.4174.lcssa = phi ptr [ %.3173.lcssa, %.preheader ], [ %i.qy, %.lr.ph668 ]
  %.4169.lcssa = phi ptr [ %.3168.lcssa, %.preheader ], [ %i.rd, %.lr.ph668 ]
  %.4.lcssa = phi ptr [ %.3164.lcssa, %.preheader ], [ %i.ri, %.lr.ph668 ]
  %i.sj = getelementptr inbounds nuw i8, ptr %.4174.lcssa, i64 32
  %i.sk = getelementptr inbounds nuw i8, ptr %.4169.lcssa, i64 32
  %i.sl = getelementptr inbounds nuw i8, ptr %.4.lcssa, i64 32
  %i.sm = add nuw nsw i32 %.0160677, 1            ; 2 uses
  %i.sn = load i32, ptr %7, align 4, !tbaa !69
  %i.so = icmp slt i32 %i.sm, %i.sn
  br i1 %i.so, label %.preheader631, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !245

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %_ZNK4ncnn3Mat7channelEi.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge680, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge680:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge680, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21convdw3x3s2_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not400 = icmp sgt i32 %i.k, %i.j
  br i1 %.not400, label %._crit_edge402, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.s, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !21, !noalias !256
  %i.v = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !256
  %i.w = mul i64 %i.v, %indvars.iv
  %i.x = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !256
  %i.y = mul i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.y
  %i.aa = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
  %.not139 = icmp eq ptr %i.aa, null
  br i1 %.not139, label %_ZNK4ncnn3Mat7channelEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.idx
  %i.ac = load <4 x float>, ptr %i.ab, align 1, !tbaa !87
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ad = phi fast <4 x float> [ %i.ac, %bb.c ], [ zeroinitializer, %_ZN4ncnn3Mat7channelEi.exit ] ; 7 uses
  %i.ae = load ptr, ptr %5, align 8, !tbaa !21
  %i.af = load i32, ptr %i.n, align 4, !tbaa !75
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !67
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 9 uses
  %i.al = load <4 x float>, ptr %i.ak, align 16, !tbaa !87 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.an = load <4 x float>, ptr %i.am, align 16, !tbaa !87 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load <4 x float>, ptr %i.ao, align 16, !tbaa !87 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ar = load <4 x float>, ptr %i.aq, align 16, !tbaa !87 ; 7 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.at = load <4 x float>, ptr %i.as, align 16, !tbaa !87 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.av = load <4 x float>, ptr %i.au, align 16, !tbaa !87 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.ax = load <4 x float>, ptr %i.aw, align 16, !tbaa !87 ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ak, i64 112
  %i.az = load <4 x float>, ptr %i.ay, align 16, !tbaa !87 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.bb = load <4 x float>, ptr %i.ba, align 16, !tbaa !87 ; 7 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !69
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.preheader364.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader364.preheader:                          ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.be = load ptr, ptr %6, align 8, !tbaa !21, !noalias !257
  %i.bf = load i64, ptr %i.q, align 8, !tbaa !22, !noalias !257
  %i.bg = mul i64 %i.bf, %indvars.iv
  %i.bh = load i64, ptr %i.r, align 8, !tbaa !67, !noalias !257 ; 3 uses
  %i.bi = mul i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bi ; 3 uses
  %i.bk = load i32, ptr %i.p, align 4, !tbaa !75, !noalias !257
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 1
  %i.bn = mul i64 %i.bm, %i.bh
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bn
  %i.bp = mul i64 %i.bh, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bp
  %.pre = load i32, ptr %8, align 4, !tbaa !69
  br label %.preheader364

.preheader364:                                    ; preds = %.preheader364.preheader, %._crit_edge
  %i.br = phi i32 [ %i.kz, %._crit_edge ], [ %.pre, %.preheader364.preheader ] ; 2 uses
  %.0121399 = phi i32 [ %i.lf, %._crit_edge ], [ 0, %.preheader364.preheader ]
  %.0122398 = phi ptr [ %i.le, %._crit_edge ], [ %i.bo, %.preheader364.preheader ] ; 2 uses
  %.0125397 = phi ptr [ %i.ld, %._crit_edge ], [ %i.bq, %.preheader364.preheader ] ; 2 uses
  %.0129396 = phi ptr [ %i.lc, %._crit_edge ], [ %i.bj, %.preheader364.preheader ] ; 2 uses
  %.0133395 = phi ptr [ %.3136.lcssa, %._crit_edge ], [ %i.z, %.preheader364.preheader ] ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 3
  br i1 %i.bs, label %.lr.ph, label %.preheader363

.preheader363:                                    ; preds = %.lr.ph, %.preheader364
  %i.bt = phi i32 [ %i.br, %.preheader364 ], [ %i.gu, %.lr.ph ] ; 2 uses
  %.1134.lcssa = phi ptr [ %.0133395, %.preheader364 ], [ %i.gr, %.lr.ph ] ; 2 uses
  %.1130.lcssa = phi ptr [ %.0129396, %.preheader364 ], [ %i.fs, %.lr.ph ] ; 2 uses
  %.1126.lcssa = phi ptr [ %.0125397, %.preheader364 ], [ %i.fu, %.lr.ph ] ; 2 uses
  %.1123.lcssa = phi ptr [ %.0122398, %.preheader364 ], [ %i.fw, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %.preheader364 ], [ %i.gs, %.lr.ph ] ; 3 uses
  %i.bu = or disjoint i32 %.0.lcssa, 1
  %i.bv = icmp slt i32 %i.bu, %i.bt
  br i1 %i.bv, label %.lr.ph379, label %.preheader

.lr.ph:                                           ; preds = %.preheader364, %.lr.ph
  %.0369 = phi i32 [ %i.gs, %.lr.ph ], [ 0, %.preheader364 ]
  %.1123368 = phi ptr [ %i.fw, %.lr.ph ], [ %.0122398, %.preheader364 ] ; 9 uses
  %.1126367 = phi ptr [ %i.fu, %.lr.ph ], [ %.0125397, %.preheader364 ] ; 9 uses
  %.1130366 = phi ptr [ %i.fs, %.lr.ph ], [ %.0129396, %.preheader364 ] ; 9 uses
  %.1134365 = phi ptr [ %i.gr, %.lr.ph ], [ %.0133395, %.preheader364 ] ; 5 uses
  %i.bw = load <4 x float>, ptr %.1130366, align 16, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %.1130366, i64 16
  %i.by = load <4 x float>, ptr %i.bx, align 16, !tbaa !87
  %i.bz = getelementptr inbounds nuw i8, ptr %.1130366, i64 32
  %i.ca = load <4 x float>, ptr %i.bz, align 16, !tbaa !87 ; 2 uses
  %i.cb = load <4 x float>, ptr %.1126367, align 16, !tbaa !87
  %i.cc = getelementptr inbounds nuw i8, ptr %.1126367, i64 16
  %i.cd = load <4 x float>, ptr %i.cc, align 16, !tbaa !87
  %i.ce = getelementptr inbounds nuw i8, ptr %.1126367, i64 32
  %i.cf = load <4 x float>, ptr %i.ce, align 16, !tbaa !87 ; 2 uses
  %i.cg = load <4 x float>, ptr %.1123368, align 16, !tbaa !87
  %i.ch = getelementptr inbounds nuw i8, ptr %.1123368, i64 16
  %i.ci = load <4 x float>, ptr %i.ch, align 16, !tbaa !87
  %i.cj = getelementptr inbounds nuw i8, ptr %.1123368, i64 32
  %i.ck = load <4 x float>, ptr %i.cj, align 16, !tbaa !87 ; 2 uses
  %i.cl = fmul fast <4 x float> %i.bw, %i.al
  %i.cm = fadd fast <4 x float> %i.cl, %i.ad
  %i.cn = fmul fast <4 x float> %i.by, %i.an
  %i.co = fadd fast <4 x float> %i.cm, %i.cn
  %i.cp = fmul fast <4 x float> %i.ca, %i.ap
  %i.cq = fadd fast <4 x float> %i.co, %i.cp
  %i.cr = fmul fast <4 x float> %i.cb, %i.ar
  %i.cs = fadd fast <4 x float> %i.cq, %i.cr
  %i.ct = fmul fast <4 x float> %i.cd, %i.at
  %i.cu = fadd fast <4 x float> %i.cs, %i.ct
  %i.cv = fmul fast <4 x float> %i.cf, %i.av
  %i.cw = fadd fast <4 x float> %i.cu, %i.cv
  %i.cx = fmul fast <4 x float> %i.cg, %i.ax
  %i.cy = fadd fast <4 x float> %i.cw, %i.cx
  %i.cz = fmul fast <4 x float> %i.ci, %i.az
  %i.da = fadd fast <4 x float> %i.cy, %i.cz
  %i.db = fmul fast <4 x float> %i.ck, %i.bb
  %i.dc = fadd fast <4 x float> %i.da, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %.1130366, i64 48
  %i.de = load <4 x float>, ptr %i.dd, align 16, !tbaa !87
  %i.df = getelementptr inbounds nuw i8, ptr %.1126367, i64 48
  %i.dg = load <4 x float>, ptr %i.df, align 16, !tbaa !87
  %i.dh = getelementptr inbounds nuw i8, ptr %.1123368, i64 48
  %i.di = load <4 x float>, ptr %i.dh, align 16, !tbaa !87
  %i.dj = getelementptr inbounds nuw i8, ptr %.1130366, i64 64
  %i.dk = load <4 x float>, ptr %i.dj, align 16, !tbaa !87 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.1126367, i64 64
  %i.dm = load <4 x float>, ptr %i.dl, align 16, !tbaa !87 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.1123368, i64 64
  %i.do = load <4 x float>, ptr %i.dn, align 16, !tbaa !87 ; 2 uses
  store <4 x float> %i.dc, ptr %.1134365, align 16, !tbaa !87
  %i.dp = fmul fast <4 x float> %i.ca, %i.al
  %i.dq = fadd fast <4 x float> %i.dp, %i.ad
  %i.dr = fmul fast <4 x float> %i.de, %i.an
  %i.ds = fmul fast <4 x float> %i.dk, %i.ap
  %i.dt = fmul fast <4 x float> %i.cf, %i.ar
  %i.du = fmul fast <4 x float> %i.dg, %i.at
  %i.dv = fmul fast <4 x float> %i.dm, %i.av
  %i.dw = fmul fast <4 x float> %i.ck, %i.ax
  %i.dx = fmul fast <4 x float> %i.di, %i.az
  %i.dy = fmul fast <4 x float> %i.do, %i.bb
  %i.dz = fadd fast <4 x float> %i.dq, %i.dt
  %i.ea = fadd fast <4 x float> %i.dz, %i.dw
  %i.eb = fadd fast <4 x float> %i.ea, %i.dr
  %i.ec = fadd fast <4 x float> %i.eb, %i.du
  %i.ed = fadd fast <4 x float> %i.ec, %i.dx
  %i.ee = fadd fast <4 x float> %i.ed, %i.ds
  %i.ef = fadd fast <4 x float> %i.ee, %i.dv
  %i.eg = fadd fast <4 x float> %i.ef, %i.dy
  %i.eh = getelementptr inbounds nuw i8, ptr %.1130366, i64 80
  %i.ei = load <4 x float>, ptr %i.eh, align 16, !tbaa !87
  %i.ej = getelementptr inbounds nuw i8, ptr %.1126367, i64 80
  %i.ek = load <4 x float>, ptr %i.ej, align 16, !tbaa !87
  %i.el = getelementptr inbounds nuw i8, ptr %.1123368, i64 80
  %i.em = load <4 x float>, ptr %i.el, align 16, !tbaa !87
  %i.en = getelementptr inbounds nuw i8, ptr %.1130366, i64 96
  %i.eo = load <4 x float>, ptr %i.en, align 16, !tbaa !87 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.1126367, i64 96
  %i.eq = load <4 x float>, ptr %i.ep, align 16, !tbaa !87 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.1123368, i64 96
  %i.es = load <4 x float>, ptr %i.er, align 16, !tbaa !87 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.1134365, i64 16
  store <4 x float> %i.eg, ptr %i.et, align 16, !tbaa !87
  %i.eu = fmul fast <4 x float> %i.dk, %i.al
  %i.ev = fadd fast <4 x float> %i.eu, %i.ad
  %i.ew = fmul fast <4 x float> %i.ei, %i.an
  %i.ex = fmul fast <4 x float> %i.eo, %i.ap
  %i.ey = fmul fast <4 x float> %i.dm, %i.ar
  %i.ez = fmul fast <4 x float> %i.ek, %i.at
  %i.fa = fmul fast <4 x float> %i.eq, %i.av
  %i.fb = fmul fast <4 x float> %i.do, %i.ax
  %i.fc = fmul fast <4 x float> %i.em, %i.az
  %i.fd = fmul fast <4 x float> %i.es, %i.bb
  %i.fe = fadd fast <4 x float> %i.ev, %i.ey
  %i.ff = fadd fast <4 x float> %i.fe, %i.fb
  %i.fg = fadd fast <4 x float> %i.ff, %i.ew
  %i.fh = fadd fast <4 x float> %i.fg, %i.ez
  %i.fi = fadd fast <4 x float> %i.fh, %i.fc
  %i.fj = fadd fast <4 x float> %i.fi, %i.ex
  %i.fk = fadd fast <4 x float> %i.fj, %i.fa
  %i.fl = fadd fast <4 x float> %i.fk, %i.fd
  %i.fm = getelementptr inbounds nuw i8, ptr %.1130366, i64 112
  %i.fn = load <4 x float>, ptr %i.fm, align 16, !tbaa !87
  %i.fo = getelementptr inbounds nuw i8, ptr %.1126367, i64 112
  %i.fp = load <4 x float>, ptr %i.fo, align 16, !tbaa !87
  %i.fq = getelementptr inbounds nuw i8, ptr %.1123368, i64 112
  %i.fr = load <4 x float>, ptr %i.fq, align 16, !tbaa !87
  %i.fs = getelementptr inbounds nuw i8, ptr %.1130366, i64 128 ; 3 uses
  %i.ft = load <4 x float>, ptr %i.fs, align 16, !tbaa !87
  %i.fu = getelementptr inbounds nuw i8, ptr %.1126367, i64 128 ; 3 uses
  %i.fv = load <4 x float>, ptr %i.fu, align 16, !tbaa !87
  %i.fw = getelementptr inbounds nuw i8, ptr %.1123368, i64 128 ; 3 uses
  %i.fx = load <4 x float>, ptr %i.fw, align 16, !tbaa !87
  %i.fy = getelementptr inbounds nuw i8, ptr %.1134365, i64 32
  store <4 x float> %i.fl, ptr %i.fy, align 16, !tbaa !87
  %i.fz = fmul fast <4 x float> %i.eo, %i.al
  %i.ga = fadd fast <4 x float> %i.fz, %i.ad
  %i.gb = fmul fast <4 x float> %i.fn, %i.an
  %i.gc = fmul fast <4 x float> %i.ft, %i.ap
  %i.gd = fmul fast <4 x float> %i.eq, %i.ar
  %i.ge = fmul fast <4 x float> %i.fp, %i.at
  %i.gf = fmul fast <4 x float> %i.fv, %i.av
  %i.gg = fmul fast <4 x float> %i.es, %i.ax
  %i.gh = fmul fast <4 x float> %i.fr, %i.az
  %i.gi = fmul fast <4 x float> %i.fx, %i.bb
  %i.gj = fadd fast <4 x float> %i.ga, %i.gd
  %i.gk = fadd fast <4 x float> %i.gj, %i.gg
  %i.gl = fadd fast <4 x float> %i.gk, %i.gb
  %i.gm = fadd fast <4 x float> %i.gl, %i.ge
  %i.gn = fadd fast <4 x float> %i.gm, %i.gh
  %i.go = fadd fast <4 x float> %i.gn, %i.gc
  %i.gp = fadd fast <4 x float> %i.go, %i.gf
  %i.gq = fadd fast <4 x float> %i.gp, %i.gi
  %10 = getelementptr inbounds nuw i8, ptr %.1134365, i64 48
  store <4 x float> %i.gq, ptr %10, align 16, !tbaa !87
  %i.gr = getelementptr inbounds nuw i8, ptr %.1134365, i64 64 ; 2 uses
  %i.gs = add nuw nsw i32 %.0369, 4               ; 3 uses
  %i.gt = or disjoint i32 %i.gs, 3
  %i.gu = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.gv = icmp slt i32 %i.gt, %i.gu
  br i1 %i.gv, label %.lr.ph, label %.preheader363, !llvm.loop !252

.preheader:                                       ; preds = %.lr.ph379, %.preheader363
  %i.gw = phi i32 [ %i.bt, %.preheader363 ], [ %i.jm, %.lr.ph379 ] ; 2 uses
  %.2135.lcssa = phi ptr [ %.1134.lcssa, %.preheader363 ], [ %i.jj, %.lr.ph379 ] ; 2 uses
  %.2131.lcssa = phi ptr [ %.1130.lcssa, %.preheader363 ], [ %i.il, %.lr.ph379 ] ; 2 uses
  %.2127.lcssa = phi ptr [ %.1126.lcssa, %.preheader363 ], [ %i.in, %.lr.ph379 ] ; 2 uses
  %.2124.lcssa = phi ptr [ %.1123.lcssa, %.preheader363 ], [ %i.ip, %.lr.ph379 ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader363 ], [ %i.jk, %.lr.ph379 ] ; 2 uses
  %i.gx = icmp slt i32 %.1.lcssa, %i.gw
  br i1 %i.gx, label %.lr.ph390, label %._crit_edge

.lr.ph379:                                        ; preds = %.preheader363, %.lr.ph379
  %.1378 = phi i32 [ %i.jk, %.lr.ph379 ], [ %.0.lcssa, %.preheader363 ]
  %.2124377 = phi ptr [ %i.ip, %.lr.ph379 ], [ %.1123.lcssa, %.preheader363 ] ; 5 uses
  %.2127376 = phi ptr [ %i.in, %.lr.ph379 ], [ %.1126.lcssa, %.preheader363 ] ; 5 uses
  %.2131375 = phi ptr [ %i.il, %.lr.ph379 ], [ %.1130.lcssa, %.preheader363 ] ; 5 uses
  %.2135374 = phi ptr [ %i.jj, %.lr.ph379 ], [ %.1134.lcssa, %.preheader363 ] ; 3 uses
  %i.gy = load <4 x float>, ptr %.2131375, align 16, !tbaa !87
  %i.gz = getelementptr inbounds nuw i8, ptr %.2131375, i64 16
  %i.ha = load <4 x float>, ptr %i.gz, align 16, !tbaa !87
  %i.hb = getelementptr inbounds nuw i8, ptr %.2131375, i64 32
  %i.hc = load <4 x float>, ptr %i.hb, align 16, !tbaa !87 ; 2 uses
  %i.hd = load <4 x float>, ptr %.2127376, align 16, !tbaa !87
  %i.he = getelementptr inbounds nuw i8, ptr %.2127376, i64 16
  %i.hf = load <4 x float>, ptr %i.he, align 16, !tbaa !87
  %i.hg = getelementptr inbounds nuw i8, ptr %.2127376, i64 32
  %i.hh = load <4 x float>, ptr %i.hg, align 16, !tbaa !87 ; 2 uses
  %i.hi = load <4 x float>, ptr %.2124377, align 16, !tbaa !87
  %i.hj = getelementptr inbounds nuw i8, ptr %.2124377, i64 16
  %i.hk = load <4 x float>, ptr %i.hj, align 16, !tbaa !87
  %i.hl = getelementptr inbounds nuw i8, ptr %.2124377, i64 32
  %i.hm = load <4 x float>, ptr %i.hl, align 16, !tbaa !87 ; 2 uses
  %i.hn = fmul fast <4 x float> %i.gy, %i.al
  %i.ho = fadd fast <4 x float> %i.hn, %i.ad
  %i.hp = fmul fast <4 x float> %i.ha, %i.an
  %i.hq = fadd fast <4 x float> %i.ho, %i.hp
  %i.hr = fmul fast <4 x float> %i.hc, %i.ap
  %i.hs = fadd fast <4 x float> %i.hq, %i.hr
  %i.ht = fmul fast <4 x float> %i.hd, %i.ar
  %i.hu = fadd fast <4 x float> %i.hs, %i.ht
  %i.hv = fmul fast <4 x float> %i.hf, %i.at
  %i.hw = fadd fast <4 x float> %i.hu, %i.hv
  %i.hx = fmul fast <4 x float> %i.hh, %i.av
  %i.hy = fadd fast <4 x float> %i.hw, %i.hx
  %i.hz = fmul fast <4 x float> %i.hi, %i.ax
  %i.ia = fadd fast <4 x float> %i.hy, %i.hz
  %i.ib = fmul fast <4 x float> %i.hk, %i.az
  %i.ic = fadd fast <4 x float> %i.ia, %i.ib
  %i.id = fmul fast <4 x float> %i.hm, %i.bb
  %i.ie = fadd fast <4 x float> %i.ic, %i.id
  %i.if = getelementptr inbounds nuw i8, ptr %.2131375, i64 48
  %i.ig = load <4 x float>, ptr %i.if, align 16, !tbaa !87
  %i.ih = getelementptr inbounds nuw i8, ptr %.2127376, i64 48
  %i.ii = load <4 x float>, ptr %i.ih, align 16, !tbaa !87
  %i.ij = getelementptr inbounds nuw i8, ptr %.2124377, i64 48
  %i.ik = load <4 x float>, ptr %i.ij, align 16, !tbaa !87
  %i.il = getelementptr inbounds nuw i8, ptr %.2131375, i64 64 ; 3 uses
  %i.im = load <4 x float>, ptr %i.il, align 16, !tbaa !87
  %i.in = getelementptr inbounds nuw i8, ptr %.2127376, i64 64 ; 3 uses
  %i.io = load <4 x float>, ptr %i.in, align 16, !tbaa !87
  %i.ip = getelementptr inbounds nuw i8, ptr %.2124377, i64 64 ; 3 uses
  %i.iq = load <4 x float>, ptr %i.ip, align 16, !tbaa !87
  store <4 x float> %i.ie, ptr %.2135374, align 16, !tbaa !87
  %i.ir = fmul fast <4 x float> %i.hc, %i.al
  %i.is = fadd fast <4 x float> %i.ir, %i.ad
  %i.it = fmul fast <4 x float> %i.ig, %i.an
  %i.iu = fmul fast <4 x float> %i.im, %i.ap
  %i.iv = fmul fast <4 x float> %i.hh, %i.ar
  %i.iw = fmul fast <4 x float> %i.ii, %i.at
  %i.ix = fmul fast <4 x float> %i.io, %i.av
  %i.iy = fmul fast <4 x float> %i.hm, %i.ax
  %i.iz = fmul fast <4 x float> %i.ik, %i.az
  %i.ja = fmul fast <4 x float> %i.iq, %i.bb
  %i.jb = fadd fast <4 x float> %i.is, %i.iv
  %i.jc = fadd fast <4 x float> %i.jb, %i.iy
  %i.jd = fadd fast <4 x float> %i.jc, %i.it
  %i.je = fadd fast <4 x float> %i.jd, %i.iw
  %i.jf = fadd fast <4 x float> %i.je, %i.iz
  %i.jg = fadd fast <4 x float> %i.jf, %i.iu
  %i.jh = fadd fast <4 x float> %i.jg, %i.ix
  %i.ji = fadd fast <4 x float> %i.jh, %i.ja
  %11 = getelementptr inbounds nuw i8, ptr %.2135374, i64 16
  store <4 x float> %i.ji, ptr %11, align 16, !tbaa !87
  %i.jj = getelementptr inbounds nuw i8, ptr %.2135374, i64 32 ; 2 uses
  %i.jk = add nuw nsw i32 %.1378, 2               ; 3 uses
  %i.jl = or disjoint i32 %i.jk, 1
  %i.jm = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.jn = icmp slt i32 %i.jl, %i.jm
  br i1 %i.jn, label %.lr.ph379, label %.preheader, !llvm.loop !253

.lr.ph390:                                        ; preds = %.preheader, %.lr.ph390
  %.2389 = phi i32 [ %i.kw, %.lr.ph390 ], [ %.1.lcssa, %.preheader ]
  %.3388 = phi ptr [ %i.kb, %.lr.ph390 ], [ %.2124.lcssa, %.preheader ] ; 3 uses
  %.3128387 = phi ptr [ %i.jw, %.lr.ph390 ], [ %.2127.lcssa, %.preheader ] ; 3 uses
  %.3132386 = phi ptr [ %i.jr, %.lr.ph390 ], [ %.2131.lcssa, %.preheader ] ; 3 uses
  %.3136385 = phi ptr [ %i.kv, %.lr.ph390 ], [ %.2135.lcssa, %.preheader ] ; 2 uses
  %i.jo = load <4 x float>, ptr %.3132386, align 16, !tbaa !87
  %i.jp = getelementptr inbounds nuw i8, ptr %.3132386, i64 16
  %i.jq = load <4 x float>, ptr %i.jp, align 16, !tbaa !87
  %i.jr = getelementptr inbounds nuw i8, ptr %.3132386, i64 32 ; 3 uses
  %i.js = load <4 x float>, ptr %i.jr, align 16, !tbaa !87
  %i.jt = load <4 x float>, ptr %.3128387, align 16, !tbaa !87
  %i.ju = getelementptr inbounds nuw i8, ptr %.3128387, i64 16
  %i.jv = load <4 x float>, ptr %i.ju, align 16, !tbaa !87
  %i.jw = getelementptr inbounds nuw i8, ptr %.3128387, i64 32 ; 3 uses
  %i.jx = load <4 x float>, ptr %i.jw, align 16, !tbaa !87
  %i.jy = load <4 x float>, ptr %.3388, align 16, !tbaa !87
  %i.jz = getelementptr inbounds nuw i8, ptr %.3388, i64 16
  %i.ka = load <4 x float>, ptr %i.jz, align 16, !tbaa !87
  %i.kb = getelementptr inbounds nuw i8, ptr %.3388, i64 32 ; 3 uses
  %i.kc = load <4 x float>, ptr %i.kb, align 16, !tbaa !87
  %i.kd = fmul fast <4 x float> %i.jo, %i.al
  %i.ke = fadd fast <4 x float> %i.kd, %i.ad
  %i.kf = fmul fast <4 x float> %i.jq, %i.an
  %i.kg = fadd fast <4 x float> %i.ke, %i.kf
  %i.kh = fmul fast <4 x float> %i.js, %i.ap
  %i.ki = fadd fast <4 x float> %i.kg, %i.kh
  %i.kj = fmul fast <4 x float> %i.jt, %i.ar
  %i.kk = fadd fast <4 x float> %i.ki, %i.kj
  %i.kl = fmul fast <4 x float> %i.jv, %i.at
  %i.km = fadd fast <4 x float> %i.kk, %i.kl
  %i.kn = fmul fast <4 x float> %i.jx, %i.av
  %i.ko = fadd fast <4 x float> %i.km, %i.kn
  %i.kp = fmul fast <4 x float> %i.jy, %i.ax
  %i.kq = fadd fast <4 x float> %i.ko, %i.kp
  %i.kr = fmul fast <4 x float> %i.ka, %i.az
  %i.ks = fadd fast <4 x float> %i.kq, %i.kr
  %i.kt = fmul fast <4 x float> %i.kc, %i.bb
  %i.ku = fadd fast <4 x float> %i.ks, %i.kt
  store <4 x float> %i.ku, ptr %.3136385, align 16, !tbaa !87
  %i.kv = getelementptr inbounds nuw i8, ptr %.3136385, i64 16 ; 2 uses
  %i.kw = add nuw nsw i32 %.2389, 1               ; 2 uses
  %i.kx = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.ky = icmp slt i32 %i.kw, %i.kx
  br i1 %i.ky, label %.lr.ph390, label %._crit_edge, !llvm.loop !254

._crit_edge:                                      ; preds = %.lr.ph390, %.preheader
  %i.kz = phi i32 [ %i.gw, %.preheader ], [ %i.kx, %.lr.ph390 ]
  %.3136.lcssa = phi ptr [ %.2135.lcssa, %.preheader ], [ %i.kv, %.lr.ph390 ]
  %.3132.lcssa = phi ptr [ %.2131.lcssa, %.preheader ], [ %i.jr, %.lr.ph390 ]
  %.3128.lcssa = phi ptr [ %.2127.lcssa, %.preheader ], [ %i.jw, %.lr.ph390 ]
  %.3.lcssa = phi ptr [ %.2124.lcssa, %.preheader ], [ %i.kb, %.lr.ph390 ]
  %i.la = load i32, ptr %9, align 4, !tbaa !69
  %i.lb = sext i32 %i.la to i64                   ; 3 uses
  %i.lc = getelementptr inbounds [4 x i8], ptr %.3132.lcssa, i64 %i.lb
  %i.ld = getelementptr inbounds [4 x i8], ptr %.3128.lcssa, i64 %i.lb
  %i.le = getelementptr inbounds [4 x i8], ptr %.3.lcssa, i64 %i.lb
  %i.lf = add nuw nsw i32 %.0121399, 1            ; 2 uses
  %i.lg = load i32, ptr %7, align 4, !tbaa !69
  %i.lh = icmp slt i32 %i.lf, %i.lg
  br i1 %i.lh, label %.preheader364, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !255

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %_ZNK4ncnn3Mat7channelEi.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge402, label %_ZN4ncnn3Mat7channelEi.exit

._crit_edge402:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge402, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21convdw5x5s1_pack4_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not548 = icmp sgt i32 %i.k, %i.j
  br i1 %.not548, label %._crit_edge550, label %_ZN4ncnn3Mat7channelEi.exit.lr.ph

_ZN4ncnn3Mat7channelEi.exit.lr.ph:                ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.t = sext i32 %i.k to i64
  %i.u = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3Mat7channelEi.exit

_ZN4ncnn3Mat7channelEi.exit:                      ; preds = %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvars.iv = phi i64 [ %i.t, %_ZN4ncnn3Mat7channelEi.exit.lr.ph ], [ %indvars.iv.next, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !75, !noalias !266
  %i.w = load ptr, ptr %3, align 8, !tbaa !21, !noalias !266 ; 2 uses
  %i.x = load i64, ptr %i.m, align 8, !tbaa !22, !noalias !266 ; 2 uses
  %i.y = mul i64 %i.x, %indvars.iv
  %i.z = load i64, ptr %i.n, align 8, !tbaa !67, !noalias !266 ; 3 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa ; 3 uses
  %i.ac = sext i32 %i.v to i64
  %i.ad = load ptr, ptr %4, align 8, !tbaa !97    ; 2 uses
  %.not215 = icmp eq ptr %i.ad, null
  br i1 %.not215, label %_ZNK4ncnn3Mat7channelEi.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %.idx
  %i.af = load <4 x float>, ptr %i.ae, align 1, !tbaa !87
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZN4ncnn3Mat7channelEi.exit, %bb.c
  %i.ag = phi fast <4 x float> [ %i.af, %bb.c ], [ zeroinitializer, %_ZN4ncnn3Mat7channelEi.exit ] ; 3 uses
  %i.ah = load ptr, ptr %5, align 8, !tbaa !21
  %i.ai = load i32, ptr %i.o, align 4, !tbaa !75
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %indvars.iv, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !67
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 50 uses
  %i.ao = load i32, ptr %i.q, align 4, !tbaa !75, !noalias !267
  %i.ap = load ptr, ptr %6, align 8, !tbaa !21, !noalias !267 ; 6 uses
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !22, !noalias !267 ; 2 uses
  %i.ar = mul i64 %i.aq, %indvars.iv              ; 5 uses
  %i.as = load i64, ptr %i.s, align 8, !tbaa !67, !noalias !267 ; 7 uses
  %i.at = mul i64 %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.at ; 7 uses
  %i.av = sext i32 %i.ao to i64                   ; 5 uses
  %i.aw = mul i64 %i.as, %i.av                    ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw ; 2 uses
  %i.ay = shl i64 %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay ; 2 uses
  %i.ba = mul i64 %i.aw, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ba ; 2 uses
  %i.bc = shl i64 %i.aw, 2
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %7, align 4, !tbaa !69    ; 5 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %.preheader485.lr.ph, label %.preheader486

.preheader485.lr.ph:                              ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 160
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 208
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 224
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 240
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 256
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 272
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 288
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 304
  %i.bz = getelementptr inbounds nuw i8, ptr %i.an, i64 320
end_hunk_0
begin_hunk_1_@_ZN4ncnnL15convdw3x3s2_sseERKNS_3MatERS0_S2_S2_RKNS_6OptionE.omp_outlined:bb.a
scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.us.us
  %.071115.us.us.ph = phi i32 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph.us.us ], [ %i.aw, %vector.body ]
  %.1114.us.us.ph = phi ptr [ %.073122.us.us, %vector.memcheck ], [ %.073122.us.us, %.lr.ph.us.us ], [ %i.br, %vector.body ]
  %.175113.us.us.ph = phi ptr [ %.074121.us.us, %vector.memcheck ], [ %.074121.us.us, %.lr.ph.us.us ], [ %i.bs, %vector.body ]
  %.177112.us.us.ph = phi ptr [ %.076120.us.us, %vector.memcheck ], [ %.076120.us.us, %.lr.ph.us.us ], [ %i.bt, %vector.body ]
  %.179111.us.us.ph = phi ptr [ %.078119.us.us, %vector.memcheck ], [ %.078119.us.us, %.lr.ph.us.us ], [ %i.bu, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.071115.us.us = phi i32 [ %i.dz, %scalar.ph ], [ %.071115.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.1114.us.us = phi ptr [ %i.du, %scalar.ph ], [ %.1114.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.175113.us.us = phi ptr [ %i.dg, %scalar.ph ], [ %.175113.us.us.ph, %scalar.ph.preheader ] ; 3 uses
  %.177112.us.us = phi ptr [ %i.dc, %scalar.ph ], [ %.177112.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.179111.us.us = phi ptr [ %i.dy, %scalar.ph ], [ %.179111.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.177112.us.us, i64 8 ; 3 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !45
  %i.de = load float, ptr %.175113.us.us, align 4, !tbaa !45
  %i.df = getelementptr inbounds nuw i8, ptr %.175113.us.us, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %.175113.us.us, i64 8 ; 2 uses
  %i.dh = load <2 x float>, ptr %.177112.us.us, align 4, !tbaa !45
  %i.di = load <2 x float>, ptr %i.df, align 4, !tbaa !45
  %i.dj = load <2 x float>, ptr %.1114.us.us, align 4, !tbaa !45
  %i.dk = load <8 x float>, ptr %i.be, align 4, !tbaa !45
  %i.dl = insertelement <8 x float> poison, float %i.dd, i64 2
  %i.dm = insertelement <8 x float> %i.dl, float %i.de, i64 3
  %i.dn = shufflevector <2 x float> %i.dh, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <8 x float> %i.dn, <8 x float> %i.dm, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dp = shufflevector <2 x float> %i.di, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <8 x float> %i.do, <8 x float> %i.dp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 poison, i32 poison>
  %i.dr = shufflevector <2 x float> %i.dj, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <8 x float> %i.dq, <8 x float> %i.dr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.dt = fmul fast <8 x float> %i.dk, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.1114.us.us, i64 8 ; 3 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !45
  %i.dw = load float, ptr %i.bp, align 4, !tbaa !45
  %i.dx = fmul fast float %i.dw, %i.dv
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v8f32(float %i.dx, <8 x float> %i.dt)
  %op.rdx202 = fadd fast float %op.rdx, %i.bd
  store float %op.rdx202, ptr %.179111.us.us, align 4, !tbaa !45
  %i.dy = getelementptr inbounds nuw i8, ptr %.179111.us.us, i64 4 ; 2 uses
  %i.dz = add nsw i32 %.071115.us.us, -1
  %i.ea = icmp sgt i32 %.071115.us.us, 1
  br i1 %i.ea, label %scalar.ph, label %._crit_edge.us.us, !llvm.loop !328

._crit_edge.us.us:                                ; preds = %scalar.ph
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.ag
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.ag
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ag
  %i.ee = add nuw nsw i32 %.072123.us.us, 1       ; 2 uses
  %exitcond.not = icmp eq i32 %i.ee, %i.ab
  br i1 %exitcond.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us, label %.lr.ph.us.us, !llvm.loop !329

._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us:           ; preds = %._crit_edge.us.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond136.not = icmp eq i32 %i.ai, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond136.not, label %._crit_edge127, label %_ZN4ncnn3Mat7channelEi.exit.us.us

._crit_edge127:                                   ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.us.us, %_ZN4ncnn3Mat7channelEi.exit.lr.ph, %_ZN4ncnn3Mat7channelEi.exit.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge127, %bb.a
  ret void
}

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn16quantize_to_int8ERKNS_3MatERS0_S2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn28ConvolutionDepthWise_x86_avx16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %10) #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !69     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 %i.g, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 1, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.h = load i32, ptr %0, align 4, !tbaa !69     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !69
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !69
  %i.k = load i32, ptr %i.a, align 4, !tbaa !69   ; 2 uses
  %.not429 = icmp sgt i32 %i.k, %i.j
  br i1 %.not429, label %._crit_edge431, label %_ZN4ncnn3MatD2Ev.exit91.lr.ph

_ZN4ncnn3MatD2Ev.exit91.lr.ph:                    ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 752
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 576
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 280 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 648
  %i.aa = load i32, ptr %7, align 4, !tbaa !69    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %_ZN4ncnn3MatD2Ev.exit91.preheader, label %._crit_edge431

_ZN4ncnn3MatD2Ev.exit91.preheader:                ; preds = %_ZN4ncnn3MatD2Ev.exit91.lr.ph
  %i.ac = sext i32 %i.k to i64
  %i.ad = add nsw i32 %i.j, 1
  br label %_ZN4ncnn3MatD2Ev.exit91

_ZN4ncnn3MatD2Ev.exit91:                          ; preds = %_ZN4ncnn3MatD2Ev.exit91.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.ae = phi i32 [ %i.aa, %_ZN4ncnn3MatD2Ev.exit91.preheader ], [ %i.bj, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.af = phi i32 [ %i.aa, %_ZN4ncnn3MatD2Ev.exit91.preheader ], [ %i.bk, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv437 = phi i64 [ %i.ac, %_ZN4ncnn3MatD2Ev.exit91.preheader ], [ %indvars.iv.next438, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.ah = load i32, ptr %5, align 4, !tbaa !69
  %i.ai = trunc nsw i64 %indvars.iv437 to i32
  %i.aj = shl i32 %i.ai, 3
  %i.ak = mul i32 %i.aj, %i.ah
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ag, i64 %i.al
  %i.an = load ptr, ptr %6, align 8, !tbaa !21, !noalias !348
  %i.ao = load i64, ptr %i.p, align 8, !tbaa !22, !noalias !348
  %i.ap = mul i64 %i.ao, %indvars.iv437
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !67, !noalias !348 ; 2 uses
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  %i.at = icmp sgt i32 %i.af, 0
  br i1 %i.at, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit91
  %i.au = load i32, ptr %i.o, align 4, !tbaa !75, !noalias !348
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %i.aq, %i.av
  %i.ax = shl nsw i64 %indvars.iv437, 3           ; 4 uses
  %i.ay = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ba = load ptr, ptr %3, align 8, !tbaa !21, !noalias !349
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !350
  %i.bc = mul i64 %i.bb, %indvars.iv437
  %i.bd = load i64, ptr %i.l, align 8, !tbaa !22, !noalias !349
  %i.be = mul i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.be ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge423
  %i.bg = phi i32 [ %i.bl, %._crit_edge423 ], [ %i.ae, %.preheader.preheader ]
  %i.bh = phi i32 [ %i.bm, %._crit_edge423 ], [ %i.ay, %.preheader.preheader ] ; 2 uses
  %.080428 = phi ptr [ %.1.lcssa, %._crit_edge423 ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %.081427 = phi ptr [ %.182.lcssa, %._crit_edge423 ], [ %i.bf, %.preheader.preheader ] ; 2 uses
  %.084426 = phi i32 [ %i.bn, %._crit_edge423 ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph422, label %._crit_edge423

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge423, %.preheader.lr.ph, %_ZN4ncnn3MatD2Ev.exit91
  %i.bj = phi i32 [ %i.ae, %_ZN4ncnn3MatD2Ev.exit91 ], [ %i.ae, %.preheader.lr.ph ], [ %i.bl, %._crit_edge423 ]
  %i.bk = phi i32 [ %i.af, %_ZN4ncnn3MatD2Ev.exit91 ], [ %i.af, %.preheader.lr.ph ], [ %i.bl, %._crit_edge423 ]
  %indvars.iv.next438 = add nsw i64 %indvars.iv437, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next438 to i32
  %exitcond440.not = icmp eq i32 %i.ad, %lftr.wideiv
  br i1 %exitcond440.not, label %._crit_edge431, label %_ZN4ncnn3MatD2Ev.exit91, !llvm.loop !344

._crit_edge423.loopexit:                          ; preds = %bb.h
  %.pre = load i32, ptr %7, align 4, !tbaa !69
  br label %._crit_edge423

._crit_edge423:                                   ; preds = %._crit_edge423.loopexit, %.preheader
  %i.bl = phi i32 [ %i.bg, %.preheader ], [ %.pre, %._crit_edge423.loopexit ] ; 4 uses
  %i.bm = phi i32 [ %i.bh, %.preheader ], [ %i.ra, %._crit_edge423.loopexit ]
  %.182.lcssa = phi ptr [ %.081427, %.preheader ], [ %.283, %._crit_edge423.loopexit ]
  %.1.lcssa = phi ptr [ %.080428, %.preheader ], [ %.2, %._crit_edge423.loopexit ]
  %i.bn = add nuw nsw i32 %.084426, 1             ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.bl
  br i1 %i.bo, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !345

.lr.ph422:                                        ; preds = %.preheader, %bb.h
  %.1421 = phi ptr [ %.2, %bb.h ], [ %.080428, %.preheader ] ; 3 uses
  %.182420 = phi ptr [ %.283, %bb.h ], [ %.081427, %.preheader ] ; 4 uses
  %.085419 = phi i32 [ %i.qz, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %i.bp = load i32, ptr %i.r, align 8, !tbaa !65
  %i.bq = mul nsw i32 %i.bp, %.084426
  %i.br = sext i32 %i.bq to i64
  %i.bs = mul i64 %i.aw, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.bs
  %i.bu = load i32, ptr %i.s, align 4, !tbaa !64
  %i.bv = shl i32 %.085419, 3
  %i.bw = mul i32 %i.bv, %i.bu
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 %i.bx
  %i.bz = load i32, ptr %5, align 4, !tbaa !69    ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph422
  %i.cb = load ptr, ptr %9, align 8, !tbaa !81
  %wide.trip.count = zext nneg i32 %i.bz to i64
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.cc = sitofp fast <4 x i32> %i.dr to <4 x float>
  %i.cd = sitofp fast <4 x i32> %i.dt to <4 x float>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph422
  %.lcssa416 = phi <4 x float> [ zeroinitializer, %.lr.ph422 ], [ %i.cd, %._crit_edge.loopexit ]
  %.lcssa = phi <4 x float> [ zeroinitializer, %.lr.ph422 ], [ %i.cc, %._crit_edge.loopexit ]
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.ax ; 2 uses
  %i.cg = load <4 x float>, ptr %i.cf, align 1, !tbaa !87
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ci = load <4 x float>, ptr %i.ch, align 1, !tbaa !87
  %i.cj = load ptr, ptr %i.u, align 8, !tbaa !21
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ax ; 2 uses
  %i.cl = load <4 x float>, ptr %i.ck, align 1, !tbaa !87 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cn = load <4 x float>, ptr %i.cm, align 1, !tbaa !87 ; 2 uses
  %i.co = fmul fast <4 x float> %i.cl, %i.cg
  %i.cp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.co)
  %i.cq = fmul fast <4 x float> %i.cn, %i.ci
  %i.cr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> nofpclass(nan inf) %i.cq)
  %i.cs = fcmp fast une <4 x float> %i.cl, zeroinitializer
  %i.ct = fcmp fast une <4 x float> %i.cn, zeroinitializer
  %i.cu = select <4 x i1> %i.cs, <4 x float> %i.cp, <4 x float> zeroinitializer
  %i.cv = select <4 x i1> %i.ct, <4 x float> %i.cr, <4 x float> zeroinitializer
  %i.cw = fmul fast <4 x float> %i.cu, %.lcssa    ; 2 uses
  %i.cx = fmul fast <4 x float> %i.cv, %.lcssa416 ; 2 uses
  %i.cy = load i32, ptr %i.v, align 8, !tbaa !77
  %.not89 = icmp eq i32 %i.cy, 0
  br i1 %.not89, label %bb.e, label %bb.d

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.cz = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.dr, %bb.c ]
  %i.da = phi <4 x i32> [ zeroinitializer, %.lr.ph ], [ %i.dt, %bb.c ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !69
  %i.dd = shl nsw i32 %i.dc, 3
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %i.by, i64 %i.de
  %i.dg = load <8 x i8>, ptr %i.df, align 1, !tbaa !87
  %i.dh = sext <8 x i8> %i.dg to <8 x i16>        ; 2 uses
  %i.di = shl nuw nsw i64 %indvars.iv, 3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.di
  %i.dk = load <8 x i8>, ptr %i.dj, align 1, !tbaa !87
  %i.dl = sext <8 x i8> %i.dk to <8 x i16>        ; 2 uses
  %i.dm = mul nsw <8 x i16> %i.dl, %i.dh          ; 2 uses
  %i.dn = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.dh, <8 x i16> %i.dl) ; 2 uses
  %i.do = shufflevector <8 x i16> %i.dm, <8 x i16> %i.dn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dp = shufflevector <8 x i16> %i.dm, <8 x i16> %i.dn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.dq = bitcast <8 x i16> %i.do to <4 x i32>
  %i.dr = add <4 x i32> %i.cz, %i.dq              ; 2 uses
  %i.ds = bitcast <8 x i16> %i.dp to <4 x i32>
  %i.dt = add <4 x i32> %i.da, %i.ds              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !346

bb.d:                                             ; preds = %._crit_edge
  %i.du = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.ax ; 2 uses
  %i.dw = load <4 x float>, ptr %i.dv, align 1, !tbaa !87
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dy = load <4 x float>, ptr %i.dx, align 1, !tbaa !87
  %i.dz = fadd fast <4 x float> %i.dw, %i.cw
  %i.ea = fadd fast <4 x float> %i.dy, %i.cx
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.0388 = phi nsz <4 x float> [ %i.cw, %._crit_edge ], [ %i.dz, %bb.d ] ; 10 uses
  %.0387 = phi nsz <4 x float> [ %i.cx, %._crit_edge ], [ %i.ea, %bb.d ] ; 10 uses
  %i.eb = load i32, ptr %i.x, align 8, !tbaa !44
  switch i32 %i.eb, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit [
    i32 1, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread
    i32 2, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392
    i32 3, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395
    i32 4, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398
    i32 5, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401
    i32 6, label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404
  ]

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread: ; preds = %bb.e
  %i.ec = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0388, <4 x float> zeroinitializer)
  %i.ed = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0387, <4 x float> zeroinitializer)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392: ; preds = %bb.e
  %i.ee = load ptr, ptr %i.y, align 8, !tbaa !21
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !45
  %i.eg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0388)
  %i.eh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0388)
  %i.ei = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ek = fmul fast <4 x float> %i.ej, %i.eh
  %i.el = fadd fast <4 x float> %i.ek, %i.eg
  %i.em = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0387)
  %i.en = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> zeroinitializer, <4 x float> nofpclass(nan inf) %.0387)
  %i.eo = fmul fast <4 x float> %i.ej, %i.en
  %i.ep = fadd fast <4 x float> %i.eo, %i.em
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395: ; preds = %bb.e
  %i.eq = load ptr, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %i.er = load float, ptr %i.eq, align 4, !tbaa !45
  %i.es = insertelement <4 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !45
  %i.ew = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ey = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0388, <4 x float> nofpclass(nan inf) %i.et)
  %i.ez = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ey, <4 x float> nofpclass(nan inf) %i.ex)
  %i.fa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0387, <4 x float> nofpclass(nan inf) %i.et)
  %i.fb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fa, <4 x float> nofpclass(nan inf) %i.ex)
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398: ; preds = %bb.e
  %i.fc = fneg fast <4 x float> %.0388
  %i.fd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.fc, <4 x float> splat (float f0x42B0C0A5))
  %i.fe = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.fd, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.ff = fmul fast <4 x float> %i.fe, splat (float f0x3FB8AA3B)
  %i.fg = fadd fast <4 x float> %i.ff, splat (float 5.000000e-01) ; 2 uses
  %i.fh = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fg)
  %i.fi = sitofp fast <4 x i32> %i.fh to <4 x float> ; 2 uses
  %i.fj = fcmp fast olt <4 x float> %i.fg, %i.fi
  %i.fk = select <4 x i1> %i.fj, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.fl = fsub fast <4 x float> %i.fi, %i.fk      ; 2 uses
  %i.fm = fmul fast <4 x float> %i.fl, splat (float f0x3F317218)
  %i.fn = fsub fast <4 x float> %i.fe, %i.fm      ; 8 uses
  %i.fo = fmul fast <4 x float> %i.fn, %i.fn
  %i.fp = fmul fast <4 x float> %i.fn, splat (float f0x39506967)
  %i.fq = fadd fast <4 x float> %i.fp, splat (float f0x3AB743CE)
  %i.fr = fmul fast <4 x float> %i.fq, %i.fn
  %i.fs = fadd fast <4 x float> %i.fr, splat (float f0x3C088908)
  %i.ft = fmul fast <4 x float> %i.fs, %i.fn
  %i.fu = fadd fast <4 x float> %i.ft, splat (float f0x3D2AA9C1)
  %i.fv = fmul fast <4 x float> %i.fu, %i.fn
  %i.fw = fadd fast <4 x float> %i.fv, splat (float f0x3E2AAAAA)
  %i.fx = fmul fast <4 x float> %i.fw, %i.fn
  %i.fy = fadd fast <4 x float> %i.fx, splat (float 5.000000e-01)
  %i.fz = fmul fast <4 x float> %i.fo, %i.fy
  %i.ga = fadd fast <4 x float> %i.fn, splat (float 1.000000e+00)
  %i.gb = fadd fast <4 x float> %i.ga, %i.fz
  %i.gc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.fl)
  %i.gd = shl <4 x i32> %i.gc, splat (i32 23)
  %i.ge = add <4 x i32> %i.gd, splat (i32 1065353216)
  %i.gf = bitcast <4 x i32> %i.ge to <4 x float>
  %i.gg = fmul fast <4 x float> %i.gb, %i.gf
  %i.gh = fadd fast <4 x float> %i.gg, splat (float 1.000000e+00)
  %i.gi = fdiv fast <4 x float> splat (float 1.000000e+00), %i.gh
  %i.gj = fneg fast <4 x float> %.0387
  %i.gk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.gj, <4 x float> splat (float f0x42B0C0A5))
  %i.gl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.gk, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.gm = fmul fast <4 x float> %i.gl, splat (float f0x3FB8AA3B)
  %i.gn = fadd fast <4 x float> %i.gm, splat (float 5.000000e-01) ; 2 uses
  %i.go = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gn)
  %i.gp = sitofp fast <4 x i32> %i.go to <4 x float> ; 2 uses
  %i.gq = fcmp fast olt <4 x float> %i.gn, %i.gp
  %i.gr = select <4 x i1> %i.gq, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.gs = fsub fast <4 x float> %i.gp, %i.gr      ; 2 uses
  %i.gt = fmul fast <4 x float> %i.gs, splat (float f0x3F317218)
  %i.gu = fsub fast <4 x float> %i.gl, %i.gt      ; 8 uses
  %i.gv = fmul fast <4 x float> %i.gu, %i.gu
  %i.gw = fmul fast <4 x float> %i.gu, splat (float f0x39506967)
  %i.gx = fadd fast <4 x float> %i.gw, splat (float f0x3AB743CE)
  %i.gy = fmul fast <4 x float> %i.gx, %i.gu
  %i.gz = fadd fast <4 x float> %i.gy, splat (float f0x3C088908)
  %i.ha = fmul fast <4 x float> %i.gz, %i.gu
  %i.hb = fadd fast <4 x float> %i.ha, splat (float f0x3D2AA9C1)
  %i.hc = fmul fast <4 x float> %i.hb, %i.gu
  %i.hd = fadd fast <4 x float> %i.hc, splat (float f0x3E2AAAAA)
  %i.he = fmul fast <4 x float> %i.hd, %i.gu
  %i.hf = fadd fast <4 x float> %i.he, splat (float 5.000000e-01)
  %i.hg = fmul fast <4 x float> %i.gv, %i.hf
  %i.hh = fadd fast <4 x float> %i.gu, splat (float 1.000000e+00)
  %i.hi = fadd fast <4 x float> %i.hh, %i.hg
  %i.hj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.gs)
  %i.hk = shl <4 x i32> %i.hj, splat (i32 23)
  %i.hl = add <4 x i32> %i.hk, splat (i32 1065353216)
end_hunk_1
begin_hunk_2_@_ZNK4ncnn28ConvolutionDepthWise_x86_avx16forward_int8_x86ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  %reass.add412 = fadd fast <4 x float> %i.kb, splat (float -5.000000e-01)
  %reass.mul413 = fmul fast <4 x float> %i.jk, %reass.add412
  %i.kc = fadd fast <4 x float> %reass.mul, %i.jj
  %i.kd = fadd fast <4 x float> %i.kc, %reass.mul413
  %.neg = fmul fast <4 x float> %i.kd, splat (float -2.000000e+00)
  %i.ke = select fast <4 x i1> %i.iv, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg
  %i.kf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ke, <4 x float> splat (float f0x42B0C0A5))
  %i.kg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.kf, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.kh = fmul fast <4 x float> %i.kg, splat (float f0x3FB8AA3B)
  %i.ki = fadd fast <4 x float> %i.kh, splat (float 5.000000e-01) ; 2 uses
  %i.kj = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ki)
  %i.kk = sitofp fast <4 x i32> %i.kj to <4 x float> ; 2 uses
  %i.kl = fcmp fast olt <4 x float> %i.ki, %i.kk
  %i.km = select <4 x i1> %i.kl, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.kn = fsub fast <4 x float> %i.kk, %i.km      ; 2 uses
  %i.ko = fmul fast <4 x float> %i.kn, splat (float f0x3F317218)
  %i.kp = fsub fast <4 x float> %i.kg, %i.ko      ; 8 uses
  %i.kq = fmul fast <4 x float> %i.kp, %i.kp
  %i.kr = fmul fast <4 x float> %i.kp, splat (float f0x39506967)
  %i.ks = fadd fast <4 x float> %i.kr, splat (float f0x3AB743CE)
  %i.kt = fmul fast <4 x float> %i.ks, %i.kp
  %i.ku = fadd fast <4 x float> %i.kt, splat (float f0x3C088908)
  %i.kv = fmul fast <4 x float> %i.ku, %i.kp
  %i.kw = fadd fast <4 x float> %i.kv, splat (float f0x3D2AA9C1)
  %i.kx = fmul fast <4 x float> %i.kw, %i.kp
  %i.ky = fadd fast <4 x float> %i.kx, splat (float f0x3E2AAAAA)
  %i.kz = fmul fast <4 x float> %i.ky, %i.kp
  %i.la = fadd fast <4 x float> %i.kz, splat (float 5.000000e-01)
  %i.lb = fmul fast <4 x float> %i.kq, %i.la
  %i.lc = fadd fast <4 x float> %i.kp, splat (float 1.000000e+00)
  %i.ld = fadd fast <4 x float> %i.lc, %i.lb
  %i.le = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.kn)
  %i.lf = shl <4 x i32> %i.le, splat (i32 23)
  %i.lg = add <4 x i32> %i.lf, splat (i32 1065353216)
  %i.lh = bitcast <4 x i32> %i.lg to <4 x float>
  %i.li = fmul fast <4 x float> %i.ld, %i.lh
  %i.lj = fadd fast <4 x float> %i.li, splat (float 1.000000e+00)
  %i.lk = fdiv fast <4 x float> splat (float 2.000000e+00), %i.lj
  %i.ll = fadd fast <4 x float> %i.lk, splat (float -1.000000e+00)
  %i.lm = fmul fast <4 x float> %i.ll, %.0388
  %i.ln = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %.0387, <4 x float> splat (float f0x42B0C0A5))
  %i.lo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ln, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.lp = fmul fast <4 x float> %i.lo, splat (float f0x3FB8AA3B)
  %i.lq = fadd fast <4 x float> %i.lp, splat (float 5.000000e-01) ; 2 uses
  %i.lr = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lq)
  %i.ls = sitofp fast <4 x i32> %i.lr to <4 x float> ; 2 uses
  %i.lt = fcmp fast olt <4 x float> %i.lq, %i.ls
  %i.lu = select <4 x i1> %i.lt, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.lv = fsub fast <4 x float> %i.ls, %i.lu      ; 2 uses
  %i.lw = fmul fast <4 x float> %i.lv, splat (float f0x3F317218)
  %i.lx = fsub fast <4 x float> %i.lo, %i.lw      ; 8 uses
  %i.ly = fmul fast <4 x float> %i.lx, %i.lx
  %i.lz = fmul fast <4 x float> %i.lx, splat (float f0x39506967)
  %i.ma = fadd fast <4 x float> %i.lz, splat (float f0x3AB743CE)
  %i.mb = fmul fast <4 x float> %i.ma, %i.lx
  %i.mc = fadd fast <4 x float> %i.mb, splat (float f0x3C088908)
  %i.md = fmul fast <4 x float> %i.mc, %i.lx
  %i.me = fadd fast <4 x float> %i.md, splat (float f0x3D2AA9C1)
  %i.mf = fmul fast <4 x float> %i.me, %i.lx
  %i.mg = fadd fast <4 x float> %i.mf, splat (float f0x3E2AAAAA)
  %i.mh = fmul fast <4 x float> %i.mg, %i.lx
  %i.mi = fadd fast <4 x float> %i.mh, splat (float 5.000000e-01)
  %i.mj = fmul fast <4 x float> %i.ly, %i.mi
  %i.mk = fadd fast <4 x float> %i.lx, splat (float 1.000000e+00)
  %i.ml = fadd fast <4 x float> %i.mk, %i.mj
  %i.mm = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.lv)
  %i.mn = shl <4 x i32> %i.mm, splat (i32 23)
  %i.mo = add <4 x i32> %i.mn, splat (i32 1065353216)
  %i.mp = bitcast <4 x i32> %i.mo to <4 x float>
  %i.mq = fmul fast <4 x float> %i.ml, %i.mp
  %i.mr = fadd fast <4 x float> %i.mq, splat (float 1.000000e+00) ; 2 uses
  %i.ms = fcmp fast ole <4 x float> %i.mr, zeroinitializer
  %i.mt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.mr, <4 x float> splat (float f0x00800000))
  %i.mu = bitcast <4 x float> %i.mt to <4 x i32>  ; 2 uses
  %i.mv = lshr <4 x i32> %i.mu, splat (i32 23)
  %i.mw = and <4 x i32> %i.mu, splat (i32 -2139095041)
  %i.mx = or disjoint <4 x i32> %i.mw, splat (i32 1056964608)
  %i.my = bitcast <4 x i32> %i.mx to <4 x float>  ; 3 uses
  %i.mz = add nsw <4 x i32> %i.mv, splat (i32 -127)
  %i.na = sitofp fast <4 x i32> %i.mz to <4 x float> ; 2 uses
  %i.nb = fadd fast <4 x float> %i.na, splat (float 1.000000e+00)
  %i.nc = fcmp fast olt <4 x float> %i.my, splat (float f0x3F3504F3) ; 2 uses
  %i.nd = select <4 x i1> %i.nc, <4 x float> %i.my, <4 x float> zeroinitializer
  %i.ne = fadd fast <4 x float> %i.my, splat (float -1.000000e+00)
  %i.nf = select fast <4 x i1> %i.nc, <4 x float> %i.na, <4 x float> %i.nb
  %i.ng = fadd fast <4 x float> %i.ne, %i.nd      ; 12 uses
  %i.nh = fmul fast <4 x float> %i.ng, %i.ng
  %i.ni = fmul fast <4 x float> %i.ng, splat (float f0x3D9021BB)
  %i.nj = fadd fast <4 x float> %i.ni, splat (float f0xBDEBD1B8)
  %i.nk = fmul fast <4 x float> %i.nj, %i.ng
  %i.nl = fadd fast <4 x float> %i.nk, splat (float f0x3DEF251A)
  %i.nm = fmul fast <4 x float> %i.nl, %i.ng
  %i.nn = fadd fast <4 x float> %i.nm, splat (float f0xBDFE5D4F)
  %i.no = fmul fast <4 x float> %i.nn, %i.ng
  %i.np = fadd fast <4 x float> %i.no, splat (float f0x3E11E9BF)
  %i.nq = fmul fast <4 x float> %i.np, %i.ng
  %i.nr = fadd fast <4 x float> %i.nq, splat (float f0xBE2AAE50)
  %i.ns = fmul fast <4 x float> %i.nr, %i.ng
  %i.nt = fadd fast <4 x float> %i.ns, splat (float f0x3E4CCEAC)
  %i.nu = fmul fast <4 x float> %i.nt, %i.ng
  %i.nv = fadd fast <4 x float> %i.nu, splat (float f0xBE7FFFFC)
  %i.nw = fmul fast <4 x float> %i.nv, %i.ng
  %i.nx = fadd fast <4 x float> %i.nw, splat (float f0x3EAAAAAA)
  %i.ny = fmul fast <4 x float> %i.nx, %i.ng
  %reass.mul411 = fmul fast <4 x float> %i.nf, splat (float f0x3F317218)
  %reass.add414 = fadd fast <4 x float> %i.ny, splat (float -5.000000e-01)
  %reass.mul415 = fmul fast <4 x float> %i.nh, %reass.add414
  %i.nz = fadd fast <4 x float> %reass.mul411, %i.ng
  %i.oa = fadd fast <4 x float> %i.nz, %reass.mul415
  %.neg407 = fmul fast <4 x float> %i.oa, splat (float -2.000000e+00)
  %i.ob = select fast <4 x i1> %i.ms, <4 x float> splat (float +nan(0x3FFFFF)), <4 x float> %.neg407
  %i.oc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.ob, <4 x float> splat (float f0x42B0C0A5))
  %i.od = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.oc, <4 x float> splat (float f0xC2B0C0A5)) ; 2 uses
  %i.oe = fmul fast <4 x float> %i.od, splat (float f0x3FB8AA3B)
  %i.of = fadd fast <4 x float> %i.oe, splat (float 5.000000e-01) ; 2 uses
  %i.og = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.of)
  %i.oh = sitofp fast <4 x i32> %i.og to <4 x float> ; 2 uses
  %i.oi = fcmp fast olt <4 x float> %i.of, %i.oh
  %i.oj = select <4 x i1> %i.oi, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer
  %i.ok = fsub fast <4 x float> %i.oh, %i.oj      ; 2 uses
  %i.ol = fmul fast <4 x float> %i.ok, splat (float f0x3F317218)
  %i.om = fsub fast <4 x float> %i.od, %i.ol      ; 8 uses
  %i.on = fmul fast <4 x float> %i.om, %i.om
  %i.oo = fmul fast <4 x float> %i.om, splat (float f0x39506967)
  %i.op = fadd fast <4 x float> %i.oo, splat (float f0x3AB743CE)
  %i.oq = fmul fast <4 x float> %i.op, %i.om
  %i.or = fadd fast <4 x float> %i.oq, splat (float f0x3C088908)
  %i.os = fmul fast <4 x float> %i.or, %i.om
  %i.ot = fadd fast <4 x float> %i.os, splat (float f0x3D2AA9C1)
  %i.ou = fmul fast <4 x float> %i.ot, %i.om
  %i.ov = fadd fast <4 x float> %i.ou, splat (float f0x3E2AAAAA)
  %i.ow = fmul fast <4 x float> %i.ov, %i.om
  %i.ox = fadd fast <4 x float> %i.ow, splat (float 5.000000e-01)
  %i.oy = fmul fast <4 x float> %i.on, %i.ox
  %i.oz = fadd fast <4 x float> %i.om, splat (float 1.000000e+00)
  %i.pa = fadd fast <4 x float> %i.oz, %i.oy
  %i.pb = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ok)
  %i.pc = shl <4 x i32> %i.pb, splat (i32 23)
  %i.pd = add <4 x i32> %i.pc, splat (i32 1065353216)
  %i.pe = bitcast <4 x i32> %i.pd to <4 x float>
  %i.pf = fmul fast <4 x float> %i.pa, %i.pe
  %i.pg = fadd fast <4 x float> %i.pf, splat (float 1.000000e+00)
  %i.ph = fdiv fast <4 x float> splat (float 2.000000e+00), %i.pg
  %i.pi = fadd fast <4 x float> %i.ph, splat (float -1.000000e+00)
  %i.pj = fmul fast <4 x float> %i.pi, %.0387
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404: ; preds = %bb.e
  %i.pk = load ptr, ptr %i.y, align 8, !tbaa !21  ; 2 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !45
  %i.pm = insertelement <4 x float> poison, float %i.pl, i64 0
  %i.pn = shufflevector <4 x float> %i.pm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  %i.pp = load float, ptr %i.po, align 4, !tbaa !45
  %i.pq = insertelement <4 x float> poison, float %i.pp, i64 0
  %i.pr = shufflevector <4 x float> %i.pq, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ps = fmul fast <4 x float> %i.pn, %.0388
  %i.pt = fadd fast <4 x float> %i.ps, %i.pr
  %i.pu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.pt, <4 x float> zeroinitializer)
  %i.pv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pu, <4 x float> splat (float 1.000000e+00))
  %i.pw = fmul fast <4 x float> %i.pv, %.0388
  %i.px = fmul fast <4 x float> %i.pn, %.0387
  %i.py = fadd fast <4 x float> %i.px, %i.pr
  %i.pz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.py, <4 x float> zeroinitializer)
  %i.qa = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.min.ps(<4 x float> nofpclass(nan inf) %i.pz, <4 x float> splat (float 1.000000e+00))
  %i.qb = fmul fast <4 x float> %i.qa, %.0387
  br label %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit

_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit:      ; preds = %bb.e, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread
  %.0.i110391 = phi <4 x float> [ %i.pw, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404 ], [ %i.ec, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread ], [ %i.el, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392 ], [ %i.ez, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395 ], [ %i.gi, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398 ], [ %i.lm, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401 ], [ %.0388, %bb.e ] ; 2 uses
  %.0.i = phi nsz <4 x float> [ %i.qb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread404 ], [ %i.ed, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread ], [ %i.ep, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread392 ], [ %i.fb, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread395 ], [ %i.hp, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread398 ], [ %i.pj, %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit114.thread401 ], [ %.0387, %bb.e ] ; 2 uses
  %i.qc = load i8, ptr %10, align 1, !tbaa !85, !range !54, !noundef !55
  %i.qd = trunc nuw i8 %i.qc to i1
  br i1 %i.qd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  %i.qe = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.qe, i64 %i.ax ; 2 uses
  %i.qg = load <4 x float>, ptr %i.qf, align 1, !tbaa !87
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  %i.qi = load <4 x float>, ptr %i.qh, align 1, !tbaa !87
  %i.qj = fmul fast <4 x float> %i.qg, %.0.i110391 ; 2 uses
  %i.qk = fmul fast <4 x float> %i.qi, %.0.i      ; 2 uses
  %i.ql = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qj)
  %i.qm = call <4 x float> @llvm.copysign.v4f32(<4 x float> splat (float 5.000000e-01), <4 x float> %i.qk)
  %i.qn = fadd fast <4 x float> %i.ql, %i.qj
  %i.qo = fadd fast <4 x float> %i.qm, %i.qk
  %i.qp = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qn)
  %i.qq = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.qo)
  %i.qr = call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.qp, <4 x i32> %i.qq)
  %i.qs = call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.qr, <8 x i16> splat (i16 -127))
  %i.qt = call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.qs, <8 x i16> splat (i16 127))
  %i.qu = call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.qt, <8 x i16> poison)
  %i.qv = bitcast <16 x i8> %i.qu to <2 x i64>
  %i.qw = extractelement <2 x i64> %i.qv, i64 0
  store i64 %i.qw, ptr %.1421, align 8, !tbaa !351
  %i.qx = getelementptr inbounds nuw i8, ptr %.1421, i64 8
  br label %bb.h

bb.g:                                             ; preds = %_ZL14activation_sseDv4_fiRKN4ncnn3MatE.exit
  store <4 x float> %.0.i110391, ptr %.182420, align 1, !tbaa !87
  %11 = getelementptr inbounds nuw i8, ptr %.182420, i64 16
  store <4 x float> %.0.i, ptr %11, align 1, !tbaa !87
  %i.qy = getelementptr inbounds nuw i8, ptr %.182420, i64 32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.283 = phi ptr [ %.182420, %bb.f ], [ %i.qy, %bb.g ] ; 2 uses
  %.2 = phi ptr [ %i.qx, %bb.f ], [ %.1421, %bb.g ] ; 2 uses
  %i.qz = add nuw nsw i32 %.085419, 1             ; 2 uses
  %i.ra = load i32, ptr %8, align 4, !tbaa !69    ; 2 uses
  %i.rb = icmp slt i32 %i.qz, %i.ra
  br i1 %i.rb, label %.lr.ph422, label %._crit_edge423.loopexit, !llvm.loop !347

._crit_edge431:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZN4ncnn3MatD2Ev.exit91.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge431, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIfSaIfEE9push_backERKf(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load float, ptr %1, align 4, !tbaa !45
  store float %i.e, ptr %i.b, align 4, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.f, ptr %i.a, align 8, !tbaa !100
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !95     ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775804
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 2                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 2305843009213693951)
  %i.p = select i1 %i.n, i64 2305843009213693951, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #25 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load float, ptr %1, align 4, !tbaa !45
  store float %i.t, ptr %i.s, align 4, !tbaa !45
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i

bb.e:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.not.i17.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !96
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.y) #23
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i, %bb.f
  store ptr %i.r, ptr %0, align 8, !tbaa !95
  store ptr %i.v, ptr %i.a, align 8, !tbaa !100
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  store ptr %i.z, ptr %i.c, align 8, !tbaa !96
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL28convdw3x3s1_int8_requant_sseERKNS_3MatERS0_S2_S2_St6vectorIfSaIfEERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr noundef nonnull align 8 %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %5) unnamed_addr #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !75
  store i32 %i.i, ptr %i.a, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !75
  store i32 %i.k, ptr %i.b, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !76
  store i32 %i.m, ptr %i.c, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !70
  store i32 %i.o, ptr %i.d, align 4, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.p = load ptr, ptr %2, align 8, !tbaa !21
  store ptr %i.p, ptr %i.e, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.q = load ptr, ptr %3, align 8, !tbaa !21
  store ptr %i.q, ptr %i.f, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !82
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.g, i32 %i.s)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL28convdw3x3s1_int8_requant_sseERKNS_3MatERS0_S2_S2_St6vectorIfSaIfEERKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull %1, ptr nonnull %i.f, ptr nonnull %4, ptr nonnull %i.e, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.c, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIfSaIfEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !95     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %.noexc.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i, !prof !352

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #24
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !95
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !96
  %i.m = load ptr, ptr %1, align 8, !tbaa !97     ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !353

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.m, i64 %i.q, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 4
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load float, ptr %i.m, align 4, !tbaa !45
  store float %i.t, ptr %i.i, align 4, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !100
  ret void
}
end_hunk_2
