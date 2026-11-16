Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_font_bake:bb.a
  store i32 %i.af, ptr %i.v, align 4, !tbaa !310
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = icmp ult i8 %i.ac, 9
  br i1 %i.ag, label %bb.g, label %stbtt_PackSetOversampling.exit

bb.g:                                             ; preds = %bb.f
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !311
  br label %stbtt_PackSetOversampling.exit

stbtt_PackSetOversampling.exit:                   ; preds = %bb.f, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !377
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !378
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 160
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !379
  %i.an = tail call i32 @stbtt_PackFontRangesRenderIntoRects(ptr noundef nonnull %i.q, ptr noundef %i.y, ptr noundef %i.ai, i32 noundef %i.ak, ptr noundef %i.am) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0137, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !338 ; 2 uses
  %.not146 = icmp eq ptr %i.ap, %.0139163
  br i1 %.not146, label %bb.h, label %bb.d, !llvm.loop !975

bb.h:                                             ; preds = %stbtt_PackSetOversampling.exit
  %i.aq = trunc nsw i64 %indvars.iv.next to i32
  %i.ar = load ptr, ptr %.0139163, align 8, !tbaa !356 ; 2 uses
  %i.as = icmp sgt i32 %7, %i.aq
  %i.at = icmp ne ptr %i.ar, null
  %i.au = select i1 %i.as, i1 %i.at, i1 false
  br i1 %i.au, label %.preheader160, label %._crit_edge, !llvm.loop !976

._crit_edge:                                      ; preds = %bb.h, %nk_zero.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !307
  %i.ax = load ptr, ptr %i.q, align 8, !tbaa !304 ; 2 uses
  %.val5.i = load ptr, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %.val6.i = load ptr, ptr %i.ay, align 8, !tbaa !278
  tail call void %.val6.i(ptr %.val5.i, ptr noundef %i.aw) #50, !inline_history !977
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !306
  %i.bb = load ptr, ptr %i.q, align 8, !tbaa !304 ; 2 uses
  %.val.i = load ptr, ptr %i.bb, align 8
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %.val4.i = load ptr, ptr %i.bc, align 8, !tbaa !278
  tail call void %.val4.i(ptr %.val.i, ptr noundef %i.ba) #50, !inline_history !977
  br i1 %i.t, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !369
  %i.bf = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.bg = insertelement <2 x i32> %i.bf, i32 %3, i64 1
  %i.bh = sitofp <2 x i32> %i.bg to <2 x float>   ; 2 uses
  %i.bi = fdiv nnan <2 x float> splat (float 1.000000e+00), %i.bh
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bk = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.n
  %.2177 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next188, %bb.n ]
  %.0135176 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.fo, %bb.n ]
  %.1140175 = phi ptr [ %6, %.preheader.lr.ph ], [ %i.fs, %bb.n ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %._crit_edge173
  %indvars.iv187 = phi i64 [ %.2177, %.preheader ], [ %indvars.iv.next188, %._crit_edge173 ] ; 2 uses
  %.1138 = phi ptr [ %.1140175, %.preheader ], [ %i.fq, %._crit_edge173 ] ; 8 uses
  %.1136 = phi i32 [ %.0135176, %.preheader ], [ %i.fo, %._crit_edge173 ] ; 2 uses
  %indvars.iv.next188 = add nsw i64 %indvars.iv187, 1 ; 3 uses
  %i.bl = getelementptr inbounds [184 x i8], ptr %i.be, i64 %indvars.iv187 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.1138, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !359 ; 9 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.1138, i64 25
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !354
  %.not = icmp eq i8 %i.bp, 0
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.1138, i64 32
  %i.br = load float, ptr %i.bq, align 8, !tbaa !339 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !264
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !282
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bt, i64 %i.bw ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  %i.bz = getelementptr i8, ptr %i.bx, i64 5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 6
  %i.cb = getelementptr i8, ptr %i.bx, i64 7
  %i.cc = getelementptr inbounds nuw i8, ptr %.1138, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !337
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %.val6.i147 = load i8, ptr %i.by, align 1, !tbaa !56
  %i.cg = zext i8 %.val6.i147 to i16
  %i.ch = shl nuw i16 %i.cg, 8
  %.val7.i = load i8, ptr %i.bz, align 1, !tbaa !56
  %i.ci = zext i8 %.val7.i to i16
  %i.cj = or disjoint i16 %i.ch, %i.ci            ; 2 uses
  %i.ck = sext i16 %i.cj to i32
  %.val.i148 = load i8, ptr %i.ca, align 1, !tbaa !56
  %i.cl = zext i8 %.val.i148 to i16
  %i.cm = shl nuw i16 %i.cl, 8
  %.val5.i149 = load i8, ptr %i.cb, align 1, !tbaa !56
  %i.cn = zext i8 %.val5.i149 to i16
  %i.co = or disjoint i16 %i.cm, %i.cn            ; 2 uses
  %i.cp = sext i16 %i.co to i32
  %i.cq = sub nsw i32 %i.ck, %i.cp
  %i.cr = sitofp i32 %i.cq to float
  %i.cs = fdiv float %i.br, %i.cr
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !984
  store float %i.br, ptr %i.bn, align 8, !tbaa !985
  %i.ct = insertelement <2 x i16> poison, i16 %i.cj, i64 0
  %i.cu = insertelement <2 x i16> %i.ct, i16 %i.co, i64 1
  %i.cv = sitofp <2 x i16> %i.cu to <2 x float>
  %i.cw = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.cx, %i.cv
  store <2 x float> %i.cy, ptr %i.cf, align 4, !tbaa !54
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 %.1136, ptr %i.cz, align 4, !tbaa !375
  %i.da = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 0, ptr %i.da, align 8, !tbaa !986
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.bl, i64 176
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !378 ; 2 uses
  %i.dd = zext i32 %i.dc to i64
  %.not178 = icmp eq i32 %i.dc, 0
  br i1 %.not178, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.k
  %i.de = getelementptr inbounds nuw i8, ptr %i.bl, i64 168
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !377
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.1138, i64 36
  %i.dk = getelementptr inbounds nuw i8, ptr %.1138, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %.1138, i64 26
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph172, %._crit_edge168
  %.0170 = phi i32 [ 0, %.lr.ph172 ], [ %.1.lcssa, %._crit_edge168 ] ; 2 uses
  %.0132169 = phi i64 [ 0, %.lr.ph172 ], [ %i.fk, %._crit_edge168 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %.0132169 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !316 ; 2 uses
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %.lr.ph, label %._crit_edge168

.lr.ph:                                           ; preds = %bb.l
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !319
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !318
  %i.du = load i32, ptr %i.dg, align 4, !tbaa !375
  %i.dv = load i32, ptr %i.dh, align 8, !tbaa !986
  %invariant.op = add i32 %i.du, %i.dv
  %i.dw = load float, ptr %i.di, align 4, !tbaa !987
  %i.dx = fadd float %i.dw, 5.000000e-01
  %i.dy = load i32, ptr %i.dj, align 4, !tbaa !342
  %i.dz = icmp eq i32 %i.dy, 1
  %i.ea = load float, ptr %i.dk, align 8, !tbaa !988
  %i.eb = load i8, ptr %i.dl, align 2, !tbaa !989
  %.not145 = icmp eq i8 %i.eb, 0
  %wide.trip.count = zext nneg i32 %i.do to i64
  %i.ec = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float poison>, float %i.dx, i64 1
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv183 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next184, %bb.m ] ; 3 uses
  %.1166 = phi i32 [ %.0170, %.lr.ph ], [ %i.fj, %bb.m ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [28 x i8], ptr %i.dr, i64 %indvars.iv183 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  %i.eh = load <4 x i16>, ptr %i.ee, align 4, !tbaa !106
  %i.ei = uitofp <4 x i16> %i.eh to <4 x float>
  %i.ej = fmul <4 x float> %i.bj, %i.ei           ; 2 uses
  %.reass = add i32 %.1166, %invariant.op
  %i.ek = zext i32 %.reass to i64
  %i.el = getelementptr inbounds nuw [48 x i8], ptr %4, i64 %i.ek ; 5 uses
  %i.em = trunc i64 %indvars.iv183 to i32
  %i.en = add i32 %i.dt, %i.em
  store i32 %i.en, ptr %i.el, align 4, !tbaa !990
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ep = load <2 x float>, ptr %i.ef, align 4, !tbaa !54
  %i.eq = load <2 x float>, ptr %i.eg, align 4, !tbaa !54
  %i.er = shufflevector <2 x float> %i.ep, <2 x float> %i.eq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.es = fadd <4 x float> %i.er, <float -0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00>
  %i.et = fadd <4 x float> %i.es, %i.ed           ; 3 uses
  store <4 x float> %i.et, ptr %i.eo, align 4, !tbaa !54
  %i.eu = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.ev = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ew = shufflevector <4 x float> %i.et, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ex = fsub <2 x float> %i.ev, %i.ew           ; 2 uses
  %i.ey = fadd <2 x float> %i.ex, <float 5.000000e-01, float poison>
  %8 = shufflevector <2 x float> %i.ey, <2 x float> %i.ex, <2 x i32> <i32 0, i32 3>
  store <2 x float> %8, ptr %i.eu, align 4, !tbaa !54
  %i.ez = fmul <4 x float> %i.ej, %i.bk
  %i.fa = select i1 %i.dz, <4 x float> %i.ez, <4 x float> %i.ej
  %i.fb = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  store <4 x float> %i.fa, ptr %i.fb, align 4, !tbaa !54
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !326
  %i.fe = fadd float %i.fd, %i.ea                 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.fg = fadd float %i.fe, 5.000000e-01
  %i.fh = fptosi float %i.fg to i32
  %i.fi = sitofp i32 %i.fh to float
  %storemerge = select i1 %.not145, float %i.fe, float %i.fi
  store float %storemerge, ptr %i.ff, align 4, !tbaa !381
  %i.fj = add i32 %.1166, 1                       ; 2 uses
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge168, label %bb.m, !llvm.loop !978

._crit_edge168:                                   ; preds = %bb.m, %bb.l
  %.1.lcssa = phi i32 [ %.0170, %bb.l ], [ %i.fj, %bb.m ] ; 2 uses
  %i.fk = add nuw nsw i64 %.0132169, 1            ; 2 uses
  %exitcond186.not = icmp eq i64 %i.fk, %i.dd
  br i1 %exitcond186.not, label %._crit_edge173, label %bb.l, !llvm.loop !979

._crit_edge173:                                   ; preds = %._crit_edge168, %bb.k
  %.0.lcssa = phi i32 [ 0, %bb.k ], [ %.1.lcssa, %._crit_edge168 ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !986
  %i.fn = add i32 %i.fm, %.0.lcssa
  store i32 %i.fn, ptr %i.fl, align 8, !tbaa !986
  %i.fo = add i32 %.0.lcssa, %.1136               ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.1138, i64 72
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !338 ; 2 uses
  %.not144 = icmp eq ptr %i.fq, %.1140175
  br i1 %.not144, label %bb.n, label %bb.i, !llvm.loop !980

bb.n:                                             ; preds = %._crit_edge173
  %i.fr = trunc nsw i64 %indvars.iv.next188 to i32
  %i.fs = load ptr, ptr %.1140175, align 8, !tbaa !356 ; 2 uses
  %i.ft = icmp sgt i32 %7, %i.fr
  %i.fu = icmp ne ptr %i.fs, null
  %i.fv = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %i.fv, label %.preheader, label %.loopexit, !llvm.loop !981

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
  %i.d = sext i16 %.sroa.0.0.extract.trunc to i32
  %i.e = sext i16 %.sroa.2.0.extract.trunc to i32
  br label %iter.check

iter.check:                                       ; preds = %.preheader1, %.loopexit6
  %.05 = phi i32 [ 0, %.preheader1 ], [ %i.dx, %.loopexit6 ] ; 2 uses
  %.0314 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next.1, %.loopexit6 ] ; 8 uses
  %i.f = add nsw i32 %.05, %i.e
  %i.g = mul nsw i32 %i.f, %1
  %i.h = add i32 %i.g, %i.d                       ; 9 uses
  %i.i = icmp sgt i32 %i.h, 2147483558
  br i1 %i.i, label %vec.epilog.scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %iter.check
  %i.j = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load = load <8 x i8>, ptr %i.j, align 1, !tbaa !56 ; 2 uses
  %wide.load1 = load <8 x i8>, ptr %i.k, align 1, !tbaa !56 ; 2 uses
  %i.l = icmp eq <8 x i8> %wide.load, splat (i8 46)
  %i.m = icmp eq <8 x i8> %wide.load1, splat (i8 46)
  %i.n = sext <8 x i1> %i.l to <8 x i8>
  %i.o = sext <8 x i1> %i.m to <8 x i8>
  %i.p = sext i32 %i.h to i64
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store <8 x i8> %i.n, ptr %i.q, align 1, !tbaa !56
  store <8 x i8> %i.o, ptr %i.r, align 1, !tbaa !56
  %i.s = icmp eq <8 x i8> %wide.load, splat (i8 88)
  %i.t = icmp eq <8 x i8> %wide.load1, splat (i8 88)
  %i.u = sext <8 x i1> %i.s to <8 x i8>
  %i.v = sext <8 x i1> %i.t to <8 x i8>
  %i.w = getelementptr i8, ptr %i.q, i64 91
  %i.x = getelementptr i8, ptr %i.q, i64 99
  store <8 x i8> %i.u, ptr %i.w, align 1, !tbaa !56
  store <8 x i8> %i.v, ptr %i.x, align 1, !tbaa !56
  %i.y = add i32 %i.h, 16
  %i.z = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = getelementptr i8, ptr %i.z, i64 24
  %wide.load.1 = load <8 x i8>, ptr %i.aa, align 1, !tbaa !56 ; 2 uses
  %wide.load1.1 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !56 ; 2 uses
  %i.ac = icmp eq <8 x i8> %wide.load.1, splat (i8 46)
  %i.ad = icmp eq <8 x i8> %wide.load1.1, splat (i8 46)
  %i.ae = sext <8 x i1> %i.ac to <8 x i8>
  %i.af = sext <8 x i1> %i.ad to <8 x i8>
  %i.ag = sext i32 %i.y to i64
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store <8 x i8> %i.ae, ptr %i.ah, align 1, !tbaa !56
  store <8 x i8> %i.af, ptr %i.ai, align 1, !tbaa !56
  %i.aj = icmp eq <8 x i8> %wide.load.1, splat (i8 88)
  %i.ak = icmp eq <8 x i8> %wide.load1.1, splat (i8 88)
  %i.al = sext <8 x i1> %i.aj to <8 x i8>
  %i.am = sext <8 x i1> %i.ak to <8 x i8>
  %i.an = getelementptr i8, ptr %i.ah, i64 91
  %i.ao = getelementptr i8, ptr %i.ah, i64 99
  store <8 x i8> %i.al, ptr %i.an, align 1, !tbaa !56
  store <8 x i8> %i.am, ptr %i.ao, align 1, !tbaa !56
  %i.ap = add i32 %i.h, 32
  %i.aq = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 32
  %i.as = getelementptr i8, ptr %i.aq, i64 40
  %wide.load.2 = load <8 x i8>, ptr %i.ar, align 1, !tbaa !56 ; 2 uses
  %wide.load1.2 = load <8 x i8>, ptr %i.as, align 1, !tbaa !56 ; 2 uses
  %i.at = icmp eq <8 x i8> %wide.load.2, splat (i8 46)
  %i.au = icmp eq <8 x i8> %wide.load1.2, splat (i8 46)
  %i.av = sext <8 x i1> %i.at to <8 x i8>
  %i.aw = sext <8 x i1> %i.au to <8 x i8>
  %i.ax = sext i32 %i.ap to i64
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %i.ax ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store <8 x i8> %i.av, ptr %i.ay, align 1, !tbaa !56
  store <8 x i8> %i.aw, ptr %i.az, align 1, !tbaa !56
  %i.ba = icmp eq <8 x i8> %wide.load.2, splat (i8 88)
  %i.bb = icmp eq <8 x i8> %wide.load1.2, splat (i8 88)
  %i.bc = sext <8 x i1> %i.ba to <8 x i8>
  %i.bd = sext <8 x i1> %i.bb to <8 x i8>
  %i.be = getelementptr i8, ptr %i.ay, i64 91
  %i.bf = getelementptr i8, ptr %i.ay, i64 99
  store <8 x i8> %i.bc, ptr %i.be, align 1, !tbaa !56
  store <8 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !56
  %i.bg = add i32 %i.h, 48
  %i.bh = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 48
  %i.bj = getelementptr i8, ptr %i.bh, i64 56
  %wide.load.3 = load <8 x i8>, ptr %i.bi, align 1, !tbaa !56 ; 2 uses
  %wide.load1.3 = load <8 x i8>, ptr %i.bj, align 1, !tbaa !56 ; 2 uses
  %i.bk = icmp eq <8 x i8> %wide.load.3, splat (i8 46)
  %i.bl = icmp eq <8 x i8> %wide.load1.3, splat (i8 46)
  %i.bm = sext <8 x i1> %i.bk to <8 x i8>
  %i.bn = sext <8 x i1> %i.bl to <8 x i8>
  %i.bo = sext i32 %i.bg to i64
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store <8 x i8> %i.bm, ptr %i.bp, align 1, !tbaa !56
  store <8 x i8> %i.bn, ptr %i.bq, align 1, !tbaa !56
  %i.br = icmp eq <8 x i8> %wide.load.3, splat (i8 88)
  %i.bs = icmp eq <8 x i8> %wide.load1.3, splat (i8 88)
  %i.bt = sext <8 x i1> %i.br to <8 x i8>
  %i.bu = sext <8 x i1> %i.bs to <8 x i8>
  %i.bv = getelementptr i8, ptr %i.bp, i64 91
  %i.bw = getelementptr i8, ptr %i.bp, i64 99
  store <8 x i8> %i.bt, ptr %i.bv, align 1, !tbaa !56
  store <8 x i8> %i.bu, ptr %i.bw, align 1, !tbaa !56
  %i.bx = add i32 %i.h, 64
  %i.by = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 64
  %i.ca = getelementptr i8, ptr %i.by, i64 72
  %wide.load.4 = load <8 x i8>, ptr %i.bz, align 1, !tbaa !56 ; 2 uses
  %wide.load1.4 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !56 ; 2 uses
  %i.cb = icmp eq <8 x i8> %wide.load.4, splat (i8 46)
  %i.cc = icmp eq <8 x i8> %wide.load1.4, splat (i8 46)
  %i.cd = sext <8 x i1> %i.cb to <8 x i8>
  %i.ce = sext <8 x i1> %i.cc to <8 x i8>
  %i.cf = sext i32 %i.bx to i64
  %i.cg = getelementptr inbounds i8, ptr %0, i64 %i.cf ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store <8 x i8> %i.cd, ptr %i.cg, align 1, !tbaa !56
  store <8 x i8> %i.ce, ptr %i.ch, align 1, !tbaa !56
  %i.ci = icmp eq <8 x i8> %wide.load.4, splat (i8 88)
  %i.cj = icmp eq <8 x i8> %wide.load1.4, splat (i8 88)
  %i.ck = sext <8 x i1> %i.ci to <8 x i8>
  %i.cl = sext <8 x i1> %i.cj to <8 x i8>
  %i.cm = getelementptr i8, ptr %i.cg, i64 91
  %i.cn = getelementptr i8, ptr %i.cg, i64 99
  store <8 x i8> %i.ck, ptr %i.cm, align 1, !tbaa !56
  store <8 x i8> %i.cl, ptr %i.cn, align 1, !tbaa !56
  %i.co = add i64 %.0314, 88
  %i.cp = add i32 %i.h, 80
  %i.cq = getelementptr i8, ptr @nk_custom_cursor_data, i64 %.0314
  %i.cr = getelementptr i8, ptr %i.cq, i64 80
  %wide.load3 = load <8 x i8>, ptr %i.cr, align 1, !tbaa !56 ; 2 uses
  %i.cs = icmp eq <8 x i8> %wide.load3, splat (i8 46)
  %i.ct = sext <8 x i1> %i.cs to <8 x i8>
  %i.cu = sext i32 %i.cp to i64
  %i.cv = getelementptr inbounds i8, ptr %0, i64 %i.cu ; 2 uses
  store <8 x i8> %i.ct, ptr %i.cv, align 1, !tbaa !56
  %i.cw = icmp eq <8 x i8> %wide.load3, splat (i8 88)
end_hunk_0
