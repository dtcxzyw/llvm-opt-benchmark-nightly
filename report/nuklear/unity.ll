inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_font_bake:bb.a

bb.i:                                             ; preds = %.preheader, %._crit_edge173
  %indvars.iv187 = phi i64 [ %.2177, %.preheader ], [ %indvars.iv.next188, %._crit_edge173 ] ; 2 uses
  %.1138 = phi ptr [ %.1140175, %.preheader ], [ %i.fp, %._crit_edge173 ] ; 8 uses
  %.1136 = phi i32 [ %.0135176, %.preheader ], [ %i.fn, %._crit_edge173 ] ; 2 uses
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, 1 ; 3 uses
  %i.bl = getelementptr inbounds [184 x i8], ptr %i.be, i64 %indvars.iv187 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1138, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !588 ; 10 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1138, i64 25
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !581
  %.not = icmp eq i8 %i.bp, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.1138, i64 32
  %i.br = load float, ptr %i.bq, align 8, !tbaa !565 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !359
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !392
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 %i.bw ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %.val6.i147 = load i8, ptr %i.by, align 1, !tbaa !11
  %i.bz = zext i8 %.val6.i147 to i16
  %i.ca = shl nuw i16 %i.bz, 8
  %i.cb = getelementptr i8, ptr %i.bx, i64 5
  %.val7.i = load i8, ptr %i.cb, align 1, !tbaa !11
  %i.cc = zext i8 %.val7.i to i16
  %i.cd = or disjoint i16 %i.ca, %i.cc            ; 2 uses
  %i.ce = sext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 6
  %.val.i148 = load i8, ptr %i.cf, align 1, !tbaa !11
  %i.cg = zext i8 %.val.i148 to i16
  %i.ch = shl nuw i16 %i.cg, 8
  %i.ci = getelementptr i8, ptr %i.bx, i64 7
  %.val5.i149 = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.cj = zext i8 %.val5.i149 to i16
  %i.ck = or disjoint i16 %i.ch, %i.cj            ; 2 uses
  %i.cl = sext i16 %i.ck to i32
  %i.cm = sub nsw i32 %i.ce, %i.cl
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fdiv float %i.br, %i.cn                 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.1138, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !559
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !678
  store float %i.br, ptr %i.bn, align 8, !tbaa !679
  %i.cs = sitofp i16 %i.cd to float
  %i.ct = fmul float %i.co, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store float %i.ct, ptr %i.cu, align 4, !tbaa !680
  %i.cv = sitofp i16 %i.ck to float
  %i.cw = fmul float %i.co, %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store float %i.cw, ptr %i.cx, align 8, !tbaa !681
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 %.1136, ptr %i.cy, align 4, !tbaa !649
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 0, ptr %i.cz, align 8, !tbaa !682
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 176
  %i.db = load i32, ptr %i.da, align 8, !tbaa !667 ; 2 uses
  %i.dc = zext i32 %i.db to i64
  %.not178 = icmp eq i32 %i.db, 0
  br i1 %.not178, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.k
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bl, i64 168
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !665
  %i.df = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.1138, i64 36
  %i.dj = getelementptr inbounds nuw i8, ptr %.1138, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %.1138, i64 26
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph172, %._crit_edge168
  %.0170 = phi i32 [ 0, %.lr.ph172 ], [ %.1.lcssa, %._crit_edge168 ] ; 2 uses
  %.0132169 = phi i64 [ 0, %.lr.ph172 ], [ %i.fj, %._crit_edge168 ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.de, i64 %.0132169 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !490 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph, label %._crit_edge168

.lr.ph:                                           ; preds = %bb.l
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !509
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !492
  %i.dt = load i32, ptr %i.df, align 4, !tbaa !649
  %i.du = load i32, ptr %i.dg, align 8, !tbaa !682
  %invariant.op = add i32 %i.dt, %i.du
  %i.dv = load float, ptr %i.dh, align 4, !tbaa !680
  %i.dw = fadd float %i.dv, 5.000000e-01
  %i.dx = load i32, ptr %i.di, align 4, !tbaa !568
  %i.dy = icmp eq i32 %i.dx, 1
  %i.dz = load float, ptr %i.dj, align 8, !tbaa !683
  %i.ea = load i8, ptr %i.dk, align 2, !tbaa !684
  %.not145 = icmp eq i8 %i.ea, 0
  %wide.trip.count = zext nneg i32 %i.dn to i64
  %i.eb = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float poison>, float %i.dw, i64 1
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv183 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next184, %bb.m ] ; 3 uses
  %.1166 = phi i32 [ %.0170, %.lr.ph ], [ %i.fi, %bb.m ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [28 x i8], ptr %i.dq, i64 %indvars.iv183 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  %i.eg = load <4 x i16>, ptr %i.ed, align 4, !tbaa !121
  %i.eh = uitofp <4 x i16> %i.eg to <4 x float>
  %i.ei = fmul <4 x float> %i.bj, %i.eh           ; 2 uses
  %.reass = add i32 %.1166, %invariant.op
  %i.ej = zext i32 %.reass to i64
  %i.ek = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %i.ej ; 5 uses
  %i.el = trunc i64 %indvars.iv183 to i32
  %i.em = add i32 %i.ds, %i.el
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !685
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load <2 x float>, ptr %i.ee, align 4, !tbaa !8
  %i.ep = load <2 x float>, ptr %i.ef, align 4, !tbaa !8
  %i.eq = shufflevector <2 x float> %i.eo, <2 x float> %i.ep, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.er = fadd <4 x float> %i.eq, <float -0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00>
  %i.es = fadd <4 x float> %i.er, %i.ec           ; 3 uses
  store <4 x float> %i.es, ptr %i.en, align 4, !tbaa !8
  %i.et = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.eu = shufflevector <4 x float> %i.es, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ev = shufflevector <4 x float> %i.es, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ew = fsub <2 x float> %i.eu, %i.ev
  %i.ex = fadd <2 x float> %i.ew, <float 5.000000e-01, float -0.000000e+00>
  store <2 x float> %i.ex, ptr %i.et, align 4, !tbaa !8
  %i.ey = fmul <4 x float> %i.ei, %i.bk
  %i.ez = select i1 %i.dy, <4 x float> %i.ey, <4 x float> %i.ei
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  store <4 x float> %i.ez, ptr %i.fa, align 4, !tbaa !8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !539
  %i.fd = fadd float %i.fc, %i.dz                 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.ff = fadd float %i.fd, 5.000000e-01
  %i.fg = fptosi float %i.ff to i32
  %i.fh = sitofp i32 %i.fg to float
  %storemerge = select i1 %.not145, float %i.fd, float %i.fh
  store float %storemerge, ptr %i.fe, align 4, !tbaa !687
  %i.fi = add i32 %.1166, 1                       ; 2 uses
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge168, label %bb.m, !llvm.loop !688

._crit_edge168:                                   ; preds = %bb.m, %bb.l
  %.1.lcssa = phi i32 [ %.0170, %bb.l ], [ %i.fi, %bb.m ] ; 2 uses
  %i.fj = add nuw nsw i64 %.0132169, 1            ; 2 uses
  %exitcond186.not = icmp eq i64 %i.fj, %i.dc
  br i1 %exitcond186.not, label %._crit_edge173, label %bb.l, !llvm.loop !689

._crit_edge173:                                   ; preds = %._crit_edge168, %bb.k
  %.0.lcssa = phi i32 [ 0, %bb.k ], [ %.1.lcssa, %._crit_edge168 ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !682
  %i.fm = add i32 %i.fl, %.0.lcssa
  store i32 %i.fm, ptr %i.fk, align 8, !tbaa !682
  %i.fn = add i32 %.0.lcssa, %.1136               ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.1138, i64 72
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !563 ; 2 uses
  %.not144 = icmp eq ptr %i.fp, %.1140175
  br i1 %.not144, label %bb.n, label %bb.i, !llvm.loop !690

bb.n:                                             ; preds = %._crit_edge173
  %i.fq = trunc nsw i64 %indvars.iv.next188 to i32
  %i.fr = load ptr, ptr %.1140175, align 8, !tbaa !583 ; 2 uses
  %i.fs = icmp sgt i32 %7, %i.fq
  %i.ft = icmp ne ptr %i.fr, null
  %i.fu = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %i.fu, label %.preheader, label %.loopexit, !llvm.loop !691

.loopexit:                                        ; preds = %bb.n, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @nk_font_bake_custom_data(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i64 %3) unnamed_addr #13 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp ne i32 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %.preheader1, label %.loopexit

.preheader1:                                      ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i64 %3, 16
  %.sroa.2.0.extract.trunc = trunc i64 %.sroa.2.0.extract.shift to i16
  %.sroa.0.0.extract.trunc = trunc i64 %3 to i16
  %i.d = sext i16 %.sroa.0.0.extract.trunc to i32 ; 2 uses
  %i.e = sext i16 %.sroa.2.0.extract.trunc to i32 ; 2 uses
  %4 = mul i32 %1, %i.e
  %5 = add i32 %4, %i.d
  br label %iter.check

iter.check:                                       ; preds = %.preheader1, %.loopexit7
  %.05 = phi i32 [ 0, %.preheader1 ], [ %i.dx, %.loopexit7 ] ; 3 uses
  %.0314 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next.1, %.loopexit7 ] ; 8 uses
  %6 = add nsw i32 %.05, %i.e
  %7 = mul nsw i32 %6, %1
  %i.f = add i32 %7, %i.d                         ; 8 uses
  %i.g = mul i32 %1, %.05
  %i.h = add i32 %5, %i.g
  %i.i = icmp sgt i32 %i.h, 2147483558
  br i1 %i.i, label %vec.epilog.scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %iter.check
  %i.j = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load = load <8 x i8>, ptr %i.j, align 1, !tbaa !11 ; 2 uses
  %wide.load1 = load <8 x i8>, ptr %i.k, align 1, !tbaa !11 ; 2 uses
  %i.l = icmp eq <8 x i8> %wide.load, splat (i8 46)
  %i.m = icmp eq <8 x i8> %wide.load1, splat (i8 46)
  %i.n = sext <8 x i1> %i.l to <8 x i8>
  %i.o = sext <8 x i1> %i.m to <8 x i8>
  %i.p = sext i32 %i.f to i64
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <8 x i8> %i.n, ptr %i.q, align 1, !tbaa !11
  store <8 x i8> %i.o, ptr %i.r, align 1, !tbaa !11
  %i.s = icmp eq <8 x i8> %wide.load, splat (i8 88)
  %i.t = icmp eq <8 x i8> %wide.load1, splat (i8 88)
  %i.u = sext <8 x i1> %i.s to <8 x i8>
  %i.v = sext <8 x i1> %i.t to <8 x i8>
  %i.w = getelementptr i8, ptr %i.q, i64 91
  %i.x = getelementptr i8, ptr %i.q, i64 99
  store <8 x i8> %i.u, ptr %i.w, align 1, !tbaa !11
  store <8 x i8> %i.v, ptr %i.x, align 1, !tbaa !11
  %i.y = add i32 %i.f, 16
  %i.z = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = getelementptr i8, ptr %i.z, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !11 ; 2 uses
  %wide.load1.1 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !11 ; 2 uses
  %i.ac = icmp eq <8 x i8> %wide.load.1, splat (i8 46)
  %i.ad = icmp eq <8 x i8> %wide.load1.1, splat (i8 46)
  %i.ae = sext <8 x i1> %i.ac to <8 x i8>
  %i.af = sext <8 x i1> %i.ad to <8 x i8>
  %i.ag = sext i32 %i.y to i64
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store <8 x i8> %i.ae, ptr %i.ah, align 1, !tbaa !11
  store <8 x i8> %i.af, ptr %i.ai, align 1, !tbaa !11
  %i.aj = icmp eq <8 x i8> %wide.load.1, splat (i8 88)
  %i.ak = icmp eq <8 x i8> %wide.load1.1, splat (i8 88)
  %i.al = sext <8 x i1> %i.aj to <8 x i8>
  %i.am = sext <8 x i1> %i.ak to <8 x i8>
  %i.an = getelementptr i8, ptr %i.ah, i64 91
  %i.ao = getelementptr i8, ptr %i.ah, i64 99
  store <8 x i8> %i.al, ptr %i.an, align 1, !tbaa !11
  store <8 x i8> %i.am, ptr %i.ao, align 1, !tbaa !11
  %i.ap = add i32 %i.f, 32
  %i.aq = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 32
  %i.as = getelementptr i8, ptr %i.aq, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !11 ; 2 uses
  %wide.load1.2 = load <8 x i8>, ptr %i.as, align 1, !tbaa !11 ; 2 uses
  %i.at = icmp eq <8 x i8> %wide.load.2, splat (i8 46)
  %i.au = icmp eq <8 x i8> %wide.load1.2, splat (i8 46)
  %i.av = sext <8 x i1> %i.at to <8 x i8>
  %i.aw = sext <8 x i1> %i.au to <8 x i8>
  %i.ax = sext i32 %i.ap to i64
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store <8 x i8> %i.av, ptr %i.ay, align 1, !tbaa !11
  store <8 x i8> %i.aw, ptr %i.az, align 1, !tbaa !11
  %i.ba = icmp eq <8 x i8> %wide.load.2, splat (i8 88)
  %i.bb = icmp eq <8 x i8> %wide.load1.2, splat (i8 88)
  %i.bc = sext <8 x i1> %i.ba to <8 x i8>
  %i.bd = sext <8 x i1> %i.bb to <8 x i8>
  %i.be = getelementptr i8, ptr %i.ay, i64 91
  %i.bf = getelementptr i8, ptr %i.ay, i64 99
  store <8 x i8> %i.bc, ptr %i.be, align 1, !tbaa !11
  store <8 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !11
  %i.bg = add i32 %i.f, 48
  %i.bh = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 48
  %i.bj = getelementptr i8, ptr %i.bh, i64 56
  %wide.load.3 = load <8 x i8>, ptr %i.bi, align 1, !tbaa !11 ; 2 uses
  %wide.load1.3 = load <8 x i8>, ptr %i.bj, align 1, !tbaa !11 ; 2 uses
  %i.bk = icmp eq <8 x i8> %wide.load.3, splat (i8 46)
  %i.bl = icmp eq <8 x i8> %wide.load1.3, splat (i8 46)
  %i.bm = sext <8 x i1> %i.bk to <8 x i8>
  %i.bn = sext <8 x i1> %i.bl to <8 x i8>
  %i.bo = sext i32 %i.bg to i64
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store <8 x i8> %i.bm, ptr %i.bp, align 1, !tbaa !11
  store <8 x i8> %i.bn, ptr %i.bq, align 1, !tbaa !11
  %i.br = icmp eq <8 x i8> %wide.load.3, splat (i8 88)
  %i.bs = icmp eq <8 x i8> %wide.load1.3, splat (i8 88)
  %i.bt = sext <8 x i1> %i.br to <8 x i8>
  %i.bu = sext <8 x i1> %i.bs to <8 x i8>
  %i.bv = getelementptr i8, ptr %i.bp, i64 91
  %i.bw = getelementptr i8, ptr %i.bp, i64 99
  store <8 x i8> %i.bt, ptr %i.bv, align 1, !tbaa !11
  store <8 x i8> %i.bu, ptr %i.bw, align 1, !tbaa !11
  %i.bx = add i32 %i.f, 64
  %i.by = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 64
  %i.ca = getelementptr i8, ptr %i.by, i64 72
  %wide.load.4 = load <8 x i8>, ptr %i.bz, align 1, !tbaa !11 ; 2 uses
  %wide.load1.4 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !11 ; 2 uses
  %i.cb = icmp eq <8 x i8> %wide.load.4, splat (i8 46)
  %i.cc = icmp eq <8 x i8> %wide.load1.4, splat (i8 46)
  %i.cd = sext <8 x i1> %i.cb to <8 x i8>
  %i.ce = sext <8 x i1> %i.cc to <8 x i8>
  %i.cf = sext i32 %i.bx to i64
  %i.cg = getelementptr inbounds i8, ptr %0, i64 %i.cf ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store <8 x i8> %i.cd, ptr %i.cg, align 1, !tbaa !11
  store <8 x i8> %i.ce, ptr %i.ch, align 1, !tbaa !11
  %i.ci = icmp eq <8 x i8> %wide.load.4, splat (i8 88)
  %i.cj = icmp eq <8 x i8> %wide.load1.4, splat (i8 88)
  %i.ck = sext <8 x i1> %i.ci to <8 x i8>
  %i.cl = sext <8 x i1> %i.cj to <8 x i8>
  %i.cm = getelementptr i8, ptr %i.cg, i64 91
  %i.cn = getelementptr i8, ptr %i.cg, i64 99
  store <8 x i8> %i.ck, ptr %i.cm, align 1, !tbaa !11
  store <8 x i8> %i.cl, ptr %i.cn, align 1, !tbaa !11
  %i.co = add i64 %.0314, 88
  %i.cp = add i32 %i.f, 80
  %i.cq = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314
  %i.cr = getelementptr i8, ptr %i.cq, i64 80
  %wide.load3 = load <8 x i8>, ptr %i.cr, align 1, !tbaa !11 ; 2 uses
  %i.cs = icmp eq <8 x i8> %wide.load3, splat (i8 46)
  %i.ct = sext <8 x i1> %i.cs to <8 x i8>
  %i.cu = sext i32 %i.cp to i64
  %i.cv = getelementptr inbounds i8, ptr %0, i64 %i.cu ; 2 uses
  store <8 x i8> %i.ct, ptr %i.cv, align 1, !tbaa !11
  %i.cw = icmp eq <8 x i8> %wide.load3, splat (i8 88)
  %i.cx = sext <8 x i1> %i.cw to <8 x i8>
  %i.cy = getelementptr i8, ptr %i.cv, i64 91
  store <8 x i8> %i.cx, ptr %i.cy, align 1, !tbaa !11
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.body, %iter.check
  %indvars.iv6.ph = phi i64 [ 0, %iter.check ], [ 88, %vector.body ]
  %indvars.iv.ph = phi i64 [ %.0314, %iter.check ], [ %i.co, %vector.body ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader
  %indvars.iv6 = phi i64 [ %indvars.iv6.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next7.1, %vec.epilog.scalar.ph ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.1, %vec.epilog.scalar.ph ] ; 3 uses
  %i.cz = trunc nuw nsw i64 %indvars.iv6 to i32
  %i.da = add i32 %i.f, %i.cz
  %i.db = getelementptr inbounds i8, ptr @nk_custom_cursor_data, i64 %indvars.iv
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !11  ; 2 uses
  %i.dd = icmp eq i8 %i.dc, 46
  %i.de = sext i1 %i.dd to i8
  %i.df = sext i32 %i.da to i64
  %i.dg = getelementptr inbounds i8, ptr %0, i64 %i.df ; 2 uses
  store i8 %i.de, ptr %i.dg, align 1, !tbaa !11
  %i.dh = icmp eq i8 %i.dc, 88
  %i.di = sext i1 %i.dh to i8
  %i.dj = getelementptr i8, ptr %i.dg, i64 91
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !11
  %i.dk = trunc i64 %indvars.iv6 to i32
  %i.dl = or disjoint i32 %i.dk, 1
  %i.dm = add i32 %i.f, %i.dl
  %i.dn = getelementptr i8, ptr @nk_custom_cursor_data, i64 %indvars.iv
  %i.do = getelementptr i8, ptr %i.dn, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !11  ; 2 uses
  %i.dq = icmp eq i8 %i.dp, 46
  %i.dr = sext i1 %i.dq to i8
  %i.ds = sext i32 %i.dm to i64
  %i.dt = getelementptr inbounds i8, ptr %0, i64 %i.ds ; 2 uses
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !11
  %i.du = icmp eq i8 %i.dp, 88
  %i.dv = sext i1 %i.du to i8
  %i.dw = getelementptr i8, ptr %i.dt, i64 91
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !11
  %indvars.iv.next7.1 = add nuw nsw i64 %indvars.iv6, 2 ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next7.1, 90
  br i1 %exitcond.not.1, label %.loopexit7, label %vec.epilog.scalar.ph, !llvm.loop !692

.loopexit7:                                       ; preds = %vec.epilog.scalar.ph
  %i.dx = add nuw nsw i32 %.05, 1                 ; 2 uses
  %exitcond11.not = icmp eq i32 %i.dx, 27
  br i1 %exitcond11.not, label %.loopexit, label %iter.check, !llvm.loop !693

.loopexit:                                        ; preds = %.loopexit7, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @nk_handle_ptr(ptr nofree noundef readnone returned captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define void @nk_font_atlas_end(ptr nofree noundef captures(address_is_null) %0, ptr %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  %.not37 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not37, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> splat (float 5.000000e-01), ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  store ptr %1, ptr %2, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load <2 x i16>, ptr %i.b, align 8, !tbaa !121
  %i.f = sitofp <2 x i16> %i.e to <2 x float>
  %i.g = fadd <2 x float> %i.f, splat (float 5.000000e-01)
  %i.h = load <2 x i32>, ptr %i.c, align 8, !tbaa !10
  %i.i = sitofp <2 x i32> %i.h to <2 x float>
  %i.j = fdiv <2 x float> %i.g, %i.i
  store <2 x float> %i.j, ptr %i.d, align 8, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.03541 = load ptr, ptr %i.k, align 8, !tbaa !640 ; 2 uses
  %.not3942 = icmp eq ptr %.03541, null
  br i1 %.not3942, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.m, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %1, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %1, ptr %i.o, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %1, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %1, ptr %i.q, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %1, ptr %i.r, align 8, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !573
  %i.v = load ptr, ptr %0, align 8, !tbaa !577
  %i.w = load ptr, ptr %i.s, align 8
  tail call void %i.u(ptr %i.w, ptr noundef %i.v) #50
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.x, align 8
  br label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.03543 = phi ptr [ %.035, %.lr.ph ], [ %.03541, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03543, i64 112
  store ptr %1, ptr %i.y, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %.03543, i64 40
  store ptr %1, ptr %i.z, align 8, !tbaa !11
  %.035 = load ptr, ptr %.03543, align 8, !tbaa !640 ; 2 uses
  %.not39 = icmp eq ptr %.035, null
  br i1 %.not39, label %.preheader, label %.lr.ph, !llvm.loop !694

bb.f:                                             ; preds = %bb.b, %.preheader
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_font_atlas_cleanup(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %.not22 = icmp eq ptr %i.c, null
  br i1 %.not22, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !575
  %.not23 = icmp eq ptr %i.e, null
  br i1 %.not23, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !582  ; 2 uses
  %.not24 = icmp eq ptr %i.g, null
  br i1 %.not24, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d, %._crit_edge
  %.01932 = phi ptr [ %i.p, %._crit_edge ], [ %i.g, %bb.d ] ; 5 uses
  %.0.in28 = getelementptr inbounds nuw i8, ptr %.01932, i64 72
  %.029 = load ptr, ptr %.0.in28, align 8, !tbaa !563 ; 2 uses
  %.not2630 = icmp eq ptr %.029, %.01932
  br i1 %.not2630, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.031 = phi ptr [ %.0, %.lr.ph ], [ %.029, %.preheader ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !575
  %i.i = getelementptr inbounds nuw i8, ptr %.031, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !578
  %i.k = load ptr, ptr %i.a, align 8
  tail call void %i.h(ptr %i.k, ptr noundef %i.j) #50
  store ptr null, ptr %i.i, align 8, !tbaa !578
  %.0.in = getelementptr inbounds nuw i8, ptr %.031, i64 72
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !563 ; 2 uses
  %.not26 = icmp eq ptr %.0, %.01932
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !llvm.loop !695

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !575
  %i.m = getelementptr inbounds nuw i8, ptr %.01932, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !578
  %i.o = load ptr, ptr %i.a, align 8
  tail call void %i.l(ptr %i.o, ptr noundef %i.n) #50
  store ptr null, ptr %i.m, align 8, !tbaa !578
  %i.p = load ptr, ptr %.01932, align 8, !tbaa !583 ; 2 uses
  %.not25 = icmp eq ptr %i.p, null
  br i1 %.not25, label %.loopexit, label %.preheader, !llvm.loop !696

.loopexit:                                        ; preds = %._crit_edge, %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_font_atlas_clear(ptr noundef %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_zero.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !574
  %.not49 = icmp eq ptr %i.c, null
  br i1 %.not49, label %nk_zero.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !575
  %.not50 = icmp eq ptr %i.e, null
  br i1 %.not50, label %nk_zero.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !582  ; 2 uses
  %.not51 = icmp eq ptr %i.g, null
  br i1 %.not51, label %bb.j, label %.preheader62

.preheader62:                                     ; preds = %bb.d, %bb.h
  %.04365 = phi ptr [ %i.q, %bb.h ], [ %i.g, %bb.d ] ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.04365, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !563  ; 3 uses
  %.not5663 = icmp eq ptr %i.i, %.04365
end_hunk_0
