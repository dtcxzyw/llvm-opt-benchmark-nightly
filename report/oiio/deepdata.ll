inline.NumInlined: 2081
inline.NumDeleted: 1015
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN11OpenImageIO4v3_18DeepData5splitElf:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %i.ck, i64 120
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !54
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %1
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !3
  %i.di = add i32 %i.dh, %.0127175
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ck, i64 216
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !92
  %i.dm = mul i64 %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !57
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %i.cq
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !95
  %i.dr = getelementptr i8, ptr %i.cy, i64 %i.dm
  %i.ds = getelementptr i8, ptr %i.dr, i64 %i.dq  ; 11 uses
  %.not.i146 = icmp eq ptr %i.ds, null
  br i1 %.not.i146, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i
  %i.dt = load ptr, ptr %i.ck, align 8, !tbaa !11
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.cq
  %i.dv = load i64, ptr %i.du, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.dv to i8
  switch i8 %.sroa.01.0.extract.trunc.i, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i [
    i8 11, label %bb.p
    i8 10, label %bb.q
    i8 6, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
    i8 4, label %bb.z
    i8 5, label %bb.aa
    i8 7, label %bb.ab
    i8 8, label %bb.ac
    i8 9, label %bb.ad
  ]

bb.p:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.dw = load float, ptr %i.ds, align 4, !tbaa !144
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.q:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.dx = load i16, ptr %i.ds, align 2, !tbaa !146 ; 2 uses
  %i.dy = zext i16 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 13
  %i.ea = and i32 %i.dz, 268427264                ; 6 uses
  %.signext.i.i.i = sext i16 %i.dx to i32
  %i.eb = and i32 %.signext.i.i.i, -2147483648    ; 3 uses
  %i.ec = icmp samesign ugt i32 %i.ea, 8388607
  br i1 %i.ec, label %bb.r, label %bb.u, !prof !140

bb.r:                                             ; preds = %bb.q
  %i.ed = or disjoint i32 %i.ea, %i.eb            ; 2 uses
  %i.ee = icmp samesign ult i32 %i.ea, 260046848
  br i1 %i.ee, label %bb.s, label %bb.t, !prof !140

bb.s:                                             ; preds = %bb.r
  %i.ef = add nuw nsw i32 %i.ed, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.t:                                             ; preds = %bb.r
  %i.eg = or i32 %i.ed, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

bb.u:                                             ; preds = %bb.q
  %.not.i.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not.i.i.i, label %_ZNK9Imath_3_14halfcvfEv.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eh = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ea, i1 true)
  %i.ei = add nsw i32 %i.eh, -8                   ; 2 uses
  %i.ej = shl i32 %i.ea, %i.ei
  %i.ek = or i32 %i.eb, %i.ej
  %i.el = or i32 %i.ek, 947912704
  %i.em = shl nuw nsw i32 %i.ei, 23
  %i.en = sub nuw i32 %i.el, %i.em
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i

_ZNK9Imath_3_14halfcvfEv.exit.i:                  ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.sroa.0.0.i.i.i = phi i32 [ %i.ef, %bb.s ], [ %i.eg, %bb.t ], [ %i.en, %bb.v ], [ %i.eb, %bb.u ]
  %i.eo = bitcast i32 %.sroa.0.0.i.i.i to float
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.w:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.ep = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.eq = uitofp i32 %i.ep to float
  %i.er = fmul nnan float %i.eq, f0x2F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.x:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.es = load i8, ptr %i.ds, align 1, !tbaa !47
  %i.et = uitofp i8 %i.es to float
  %i.eu = fmul nnan float %i.et, f0x3B808081
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.y:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.ev = load i8, ptr %i.ds, align 1, !tbaa !47
  %i.ew = sitofp i8 %i.ev to float
  %i.ex = fmul nnan float %i.ew, f0x3C010204
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.z:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.ey = load i16, ptr %i.ds, align 2, !tbaa !149
  %i.ez = uitofp i16 %i.ey to float
  %i.fa = fmul nnan float %i.ez, f0x37800080
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.aa:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.fb = load i16, ptr %i.ds, align 2, !tbaa !149
  %i.fc = sitofp i16 %i.fb to float
  %i.fd = fmul nnan float %i.fc, f0x38000100
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.ab:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.fe = load i32, ptr %i.ds, align 4, !tbaa !3
  %i.ff = sitofp i32 %i.fe to float
  %i.fg = fmul nnan float %i.ff, f0x30000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.ac:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.fh = load i64, ptr %i.ds, align 8, !tbaa !150
  %i.fi = uitofp i64 %i.fh to float
  %i.fj = fmul nnan float %i.fi, f0x1F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

bb.ad:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.fk = load i64, ptr %i.ds, align 8, !tbaa !150
  %i.fl = sitofp i64 %i.fk to float
  %i.fm = fmul nnan float %i.fl, f0x20000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i
  %i.fn = trunc i64 %i.dv to i32
  %i.fo = and i32 %i.fn, 255
  %i.fp = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.fq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fp, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.fo) #31 ; 0 uses
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit

_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit: ; preds = %bb.m, %bb.n, %bb.o, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i, %bb.p, %_ZNK9Imath_3_14halfcvfEv.exit.i, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i
  %.0.i145 = phi float [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i ], [ %i.dw, %bb.p ], [ %i.eo, %_ZNK9Imath_3_14halfcvfEv.exit.i ], [ %i.er, %bb.w ], [ %i.eu, %bb.x ], [ %i.ex, %bb.y ], [ %i.fa, %bb.z ], [ %i.fd, %bb.aa ], [ %i.fg, %bb.ab ], [ %i.fj, %bb.ac ], [ %i.fm, %bb.ad ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i ], [ 0.000000e+00, %bb.o ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.m ] ; 2 uses
  %.inv169 = fcmp oge float %.0.i145, 0.000000e+00
  %.0.i140 = select i1 %.inv169, float %.0.i145, float 0.000000e+00 ; 2 uses
  %i.fr = fcmp ogt float %.0.i140, 1.000000e+00
  %.1.i141 = select i1 %i.fr, float 1.000000e+00, float %.0.i140 ; 4 uses
  %i.fs = fcmp oeq float %.1.i141, 1.000000e+00
  br i1 %i.fs, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit
  %i.ft = fcmp ogt float %.1.i141, f0x00800000
  br i1 %i.ft, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fu = fneg float %.1.i141
  %i.fv = tail call noundef float @log1pf(float noundef %i.fu) #33
  %i.fw = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = fmul <2 x float> %i.ce, %i.fx           ; 2 uses
  %i.fz = extractelement <2 x float> %i.fy, i64 0
  %i.ga = tail call noundef float @expm1f(float noundef %i.fz) #33
  %i.gb = extractelement <2 x float> %i.fy, i64 1
  %i.gc = tail call noundef float @expm1f(float noundef %i.gb) #33
  %i.gd = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.ge = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.gd, i32 noundef %.0127175)
  %i.gf = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %i.gc, i64 1
  %i.gh = fneg <2 x float> %i.gg
  %i.gi = insertelement <2 x float> poison, float %.1.i141, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fdiv <2 x float> %i.gh, %i.gj
  %i.gl = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fmul <2 x float> %i.gk, %i.gm           ; 2 uses
  %i.go = extractelement <2 x float> %i.gn, i64 0
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.gd, i32 noundef %.0127175, float noundef %i.go)
  %i.gp = extractelement <2 x float> %i.gn, i64 1
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.gd, i32 noundef %i.z, float noundef %i.gp)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.gq = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.gr = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.gq, i32 noundef %.0127175)
  %i.gs = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = fmul <2 x float> %i.ce, %i.gt           ; 2 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 0
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.gq, i32 noundef %.0127175, float noundef %i.gv)
  %i.gw = extractelement <2 x float> %i.gu, i64 1
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.gq, i32 noundef %i.z, float noundef %i.gw)
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit, %bb.ag, %bb.af, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph172, label %bb.l, !llvm.loop !164

bb.ai:                                            ; preds = %.lr.ph172, %bb.be
  %indvars.iv180 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next181, %bb.be ] ; 7 uses
  %i.gx = load ptr, ptr %0, align 8, !tbaa !36    ; 8 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 192
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !39
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv180
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !3  ; 3 uses
  %i.hc = zext i32 %i.hb to i64
  %.not = icmp eq i64 %indvars.iv180, %i.hc
  br i1 %.not, label %bb.aj, label %bb.be

bb.aj:                                            ; preds = %bb.ai
  %i.hd = load i64, ptr %i.j, align 8, !tbaa !62
  %i.he = icmp slt i64 %1, %i.hd
  %3 = icmp sgt i32 %i.hb, -1
  %or.cond.not24.i.i147 = and i1 %3, %i.he
  %i.hf = load i32, ptr %i.h, align 8
  %.not.i.i148 = icmp slt i32 %i.hb, %i.hf
  %or.cond21.i.i149 = select i1 %or.cond.not24.i.i147, i1 %.not.i.i148, i1 false
  br i1 %or.cond21.i.i149, label %bb.ak, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.ak:                                            ; preds = %bb.aj
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gx, i64 144
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gx, i64 152
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !129
  %i.hj = load ptr, ptr %i.hg, align 8, !tbaa !51 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gx, i64 72
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !54
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %1
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3
  %.not19.i.i152 = icmp slt i32 %.0127175, %i.ho
  br i1 %.not19.i.i152, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153: ; preds = %bb.al
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gx, i64 120
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !54
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %1
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = add i32 %i.hs, %.0127175
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gx, i64 216
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !92
  %i.hx = mul i64 %i.hw, %i.hu
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !57
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv180
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !95
  %i.ic = getelementptr i8, ptr %i.hj, i64 %i.hx
  %i.id = getelementptr i8, ptr %i.ic, i64 %i.ib  ; 11 uses
  %.not.i154 = icmp eq ptr %i.id, null
  br i1 %.not.i154, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153
  %i.ie = load ptr, ptr %i.gx, align 8, !tbaa !11
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv180
  %i.ig = load i64, ptr %i.if, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i156 = trunc i64 %i.ig to i8
  switch i8 %.sroa.01.0.extract.trunc.i156, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161 [
    i8 11, label %bb.am
    i8 10, label %bb.an
    i8 6, label %bb.at
    i8 2, label %bb.au
    i8 3, label %bb.av
    i8 4, label %bb.aw
    i8 5, label %bb.ax
    i8 7, label %bb.ay
    i8 8, label %bb.az
    i8 9, label %bb.ba
  ]

bb.am:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.ih = load float, ptr %i.id, align 4, !tbaa !144
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.an:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.ii = load i16, ptr %i.id, align 2, !tbaa !146 ; 2 uses
  %i.ij = zext i16 %i.ii to i32
  %i.ik = shl nuw nsw i32 %i.ij, 13
  %i.il = and i32 %i.ik, 268427264                ; 6 uses
  %.signext.i.i.i157 = sext i16 %i.ii to i32
  %i.im = and i32 %.signext.i.i.i157, -2147483648 ; 3 uses
  %i.in = icmp samesign ugt i32 %i.il, 8388607
  br i1 %i.in, label %bb.ao, label %bb.ar, !prof !140

bb.ao:                                            ; preds = %bb.an
  %i.io = or disjoint i32 %i.il, %i.im            ; 2 uses
  %i.ip = icmp samesign ult i32 %i.il, 260046848
  br i1 %i.ip, label %bb.ap, label %bb.aq, !prof !140

bb.ap:                                            ; preds = %bb.ao
  %i.iq = add nuw nsw i32 %i.io, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i159

bb.aq:                                            ; preds = %bb.ao
  %i.ir = or i32 %i.io, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i159

bb.ar:                                            ; preds = %bb.an
  %.not.i.i.i158 = icmp eq i32 %i.il, 0
  br i1 %.not.i.i.i158, label %_ZNK9Imath_3_14halfcvfEv.exit.i159, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.is = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.il, i1 true)
  %i.it = add nsw i32 %i.is, -8                   ; 2 uses
  %i.iu = shl i32 %i.il, %i.it
  %i.iv = or i32 %i.im, %i.iu
  %i.iw = or i32 %i.iv, 947912704
  %i.ix = shl nuw nsw i32 %i.it, 23
  %i.iy = sub nuw i32 %i.iw, %i.ix
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i159

_ZNK9Imath_3_14halfcvfEv.exit.i159:               ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.sroa.0.0.i.i.i160 = phi i32 [ %i.iq, %bb.ap ], [ %i.ir, %bb.aq ], [ %i.iy, %bb.as ], [ %i.im, %bb.ar ]
  %i.iz = bitcast i32 %.sroa.0.0.i.i.i160 to float
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.at:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.ja = load i32, ptr %i.id, align 4, !tbaa !3
  %i.jb = uitofp i32 %i.ja to float
  %i.jc = fmul nnan float %i.jb, f0x2F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.au:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jd = load i8, ptr %i.id, align 1, !tbaa !47
  %i.je = uitofp i8 %i.jd to float
  %i.jf = fmul nnan float %i.je, f0x3B808081
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.av:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jg = load i8, ptr %i.id, align 1, !tbaa !47
  %i.jh = sitofp i8 %i.jg to float
  %i.ji = fmul nnan float %i.jh, f0x3C010204
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.aw:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jj = load i16, ptr %i.id, align 2, !tbaa !149
  %i.jk = uitofp i16 %i.jj to float
  %i.jl = fmul nnan float %i.jk, f0x37800080
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.ax:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jm = load i16, ptr %i.id, align 2, !tbaa !149
  %i.jn = sitofp i16 %i.jm to float
  %i.jo = fmul nnan float %i.jn, f0x38000100
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.ay:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jp = load i32, ptr %i.id, align 4, !tbaa !3
  %i.jq = sitofp i32 %i.jp to float
  %i.jr = fmul nnan float %i.jq, f0x30000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.az:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.js = load i64, ptr %i.id, align 8, !tbaa !150
  %i.jt = uitofp i64 %i.js to float
  %i.ju = fmul nnan float %i.jt, f0x1F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

bb.ba:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jv = load i64, ptr %i.id, align 8, !tbaa !150
  %i.jw = sitofp i64 %i.jv to float
  %i.jx = fmul nnan float %i.jw, f0x20000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i155
  %i.jy = trunc i64 %i.ig to i32
  %i.jz = and i32 %i.jy, 255
  %i.ka = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.kb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ka, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.jz) #31 ; 0 uses
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162

_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162: ; preds = %bb.aj, %bb.ak, %bb.al, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153, %bb.am, %_ZNK9Imath_3_14halfcvfEv.exit.i159, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161
  %.0.i150 = phi float [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i161 ], [ %i.ih, %bb.am ], [ %i.iz, %_ZNK9Imath_3_14halfcvfEv.exit.i159 ], [ %i.jc, %bb.at ], [ %i.jf, %bb.au ], [ %i.ji, %bb.av ], [ %i.jl, %bb.aw ], [ %i.jo, %bb.ax ], [ %i.jr, %bb.ay ], [ %i.ju, %bb.az ], [ %i.jx, %bb.ba ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i153 ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.ak ], [ 0.000000e+00, %bb.aj ] ; 2 uses
  %.inv = fcmp oge float %.0.i150, 0.000000e+00
  %.0.i = select i1 %.inv, float %.0.i150, float 0.000000e+00 ; 2 uses
  %i.kc = fcmp ogt float %.0.i, 1.000000e+00
  %.1.i = select i1 %i.kc, float 1.000000e+00, float %.0.i ; 4 uses
  %i.kd = fcmp oeq float %.1.i, 1.000000e+00
  br i1 %i.kd, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162
  %i.ke = fcmp ogt float %.1.i, f0x00800000
  br i1 %i.ke, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kf = fneg float %.1.i
  %i.kg = tail call noundef float @log1pf(float noundef %i.kf) #33
  %i.kh = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kj = fmul <2 x float> %i.cj, %i.ki           ; 2 uses
  %i.kk = extractelement <2 x float> %i.kj, i64 0
  %i.kl = tail call noundef float @expm1f(float noundef %i.kk) #33
  %i.km = fneg float %i.kl
  %i.kn = extractelement <2 x float> %i.kj, i64 1
  %i.ko = tail call noundef float @expm1f(float noundef %i.kn) #33
  %i.kp = fneg float %i.ko
  %i.kq = trunc nuw nsw i64 %indvars.iv180 to i32 ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.kq, i32 noundef %.0127175, float noundef %i.km)
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.kq, i32 noundef %i.z, float noundef %i.kp)
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.kr = trunc nuw nsw i64 %indvars.iv180 to i32 ; 2 uses
  %i.ks = insertelement <2 x float> poison, float %.1.i, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fmul <2 x float> %i.cj, %i.kt           ; 2 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 0
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.kr, i32 noundef %.0127175, float noundef %i.kv)
  %i.kw = extractelement <2 x float> %i.ku, i64 1
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.kr, i32 noundef %i.z, float noundef %i.kw)
  br label %bb.be

bb.be:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit162, %bb.bd, %bb.bc, %bb.ai
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count183
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18DeepData14merge_overlapsEl:bb.a
_ZNK9Imath_3_14halfcvfEv.exit.i176:               ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt
  %.sroa.0.0.i.i.i177 = phi i32 [ %i.lc, %bb.bt ], [ %i.ld, %bb.bu ], [ %i.lk, %bb.bw ], [ %i.ky, %bb.bv ]
  %i.ll = bitcast i32 %.sroa.0.0.i.i.i177 to float
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

bb.bx:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.lm = load i32, ptr %i.kp, align 4, !tbaa !3
  %i.ln = uitofp i32 %i.lm to float
  %i.lo = fmul nnan float %i.ln, f0x2F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

bb.by:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.lp = load i8, ptr %i.kp, align 1, !tbaa !47
  %i.lq = uitofp i8 %i.lp to float
  %i.lr = fmul nnan float %i.lq, f0x3B808081
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

bb.bz:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.ls = load i8, ptr %i.kp, align 1, !tbaa !47
  %i.lt = sitofp i8 %i.ls to float
  %i.lu = fmul nnan float %i.lt, f0x3C010204
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

bb.ca:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.lv = load i16, ptr %i.kp, align 2, !tbaa !149
  %i.lw = uitofp i16 %i.lv to float
  %i.lx = fmul nnan float %i.lw, f0x37800080
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

bb.cb:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.ly = load i16, ptr %i.kp, align 2, !tbaa !149
  %i.lz = sitofp i16 %i.ly to float
  %i.ma = fmul nnan float %i.lz, f0x38000100
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

bb.cc:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.mb = load i32, ptr %i.kp, align 4, !tbaa !3
  %i.mc = sitofp i32 %i.mb to float
  %i.md = fmul nnan float %i.mc, f0x30000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

bb.cd:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.me = load i64, ptr %i.kp, align 8, !tbaa !150
  %i.mf = uitofp i64 %i.me to float
  %i.mg = fmul nnan float %i.mf, f0x1F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

bb.ce:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.mh = load i64, ptr %i.kp, align 8, !tbaa !150
  %i.mi = sitofp i64 %i.mh to float
  %i.mj = fmul nnan float %i.mi, f0x20000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i172
  %i.mk = trunc i64 %i.ks to i32
  %i.ml = and i32 %i.mk, 255
  %i.mm = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.mn = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mm, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.ml) #31 ; 0 uses
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179

_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179: ; preds = %bb.h, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170, %bb.bq, %_ZNK9Imath_3_14halfcvfEv.exit.i176, %bb.bx, %bb.by, %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178
  %.0.i149247 = phi float [ %.0.i149.ph, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178 ], [ %.0.i149.ph, %bb.bq ], [ %.0.i149.ph, %_ZNK9Imath_3_14halfcvfEv.exit.i176 ], [ %.0.i149.ph, %bb.bx ], [ %.0.i149.ph, %bb.by ], [ %.0.i149.ph, %bb.bz ], [ %.0.i149.ph, %bb.ca ], [ %.0.i149.ph, %bb.cb ], [ %.0.i149.ph, %bb.cc ], [ %.0.i149.ph, %bb.cd ], [ %.0.i149.ph, %bb.ce ], [ %.0.i149.ph, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170 ], [ %.0.i149.ph, %bb.bp ], [ %.0.i149.ph, %bb.bo ], [ %.0.i149.ph, %bb.bn ], [ %.0.i149.ph, %bb.bm ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %.1.i125230236245 = phi float [ %.1.i125228, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178 ], [ %.1.i125228, %bb.bq ], [ %.1.i125228, %_ZNK9Imath_3_14halfcvfEv.exit.i176 ], [ %.1.i125228, %bb.bx ], [ %.1.i125228, %bb.by ], [ %.1.i125228, %bb.bz ], [ %.1.i125228, %bb.ca ], [ %.1.i125228, %bb.cb ], [ %.1.i125228, %bb.cc ], [ %.1.i125228, %bb.cd ], [ %.1.i125228, %bb.ce ], [ %.1.i125228, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170 ], [ %.1.i125228, %bb.bp ], [ %.1.i125228, %bb.bo ], [ %.1.i125228, %bb.bn ], [ %.1.i125228, %bb.bm ], [ 0.000000e+00, %bb.h ] ; 5 uses
  %.1.i123238243 = phi float [ %.1.i123234, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178 ], [ %.1.i123234, %bb.bq ], [ %.1.i123234, %_ZNK9Imath_3_14halfcvfEv.exit.i176 ], [ %.1.i123234, %bb.bx ], [ %.1.i123234, %bb.by ], [ %.1.i123234, %bb.bz ], [ %.1.i123234, %bb.ca ], [ %.1.i123234, %bb.cb ], [ %.1.i123234, %bb.cc ], [ %.1.i123234, %bb.cd ], [ %.1.i123234, %bb.ce ], [ %.1.i123234, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170 ], [ %.1.i123234, %bb.bp ], [ %.1.i123234, %bb.bo ], [ %.1.i123234, %bb.bn ], [ %.1.i123234, %bb.bm ], [ 0.000000e+00, %bb.h ] ; 6 uses
  %.0.i166 = phi float [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i178 ], [ %i.kt, %bb.bq ], [ %i.ll, %_ZNK9Imath_3_14halfcvfEv.exit.i176 ], [ %i.lo, %bb.bx ], [ %i.lr, %bb.by ], [ %i.lu, %bb.bz ], [ %i.lx, %bb.ca ], [ %i.ma, %bb.cb ], [ %i.md, %bb.cc ], [ %i.mg, %bb.cd ], [ %i.mj, %bb.ce ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i170 ], [ 0.000000e+00, %bb.bp ], [ 0.000000e+00, %bb.bo ], [ 0.000000e+00, %bb.bn ], [ 0.000000e+00, %bb.bm ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %i.mo = fadd float %.1.i125230236245, %.1.i123238243
  %i.mp = fneg float %.1.i125230236245            ; 2 uses
  %i.mq = tail call float @llvm.fmuladd.f32(float %i.mp, float %.1.i123238243, float %i.mo) ; 2 uses
  %i.mr = fcmp oeq float %.1.i125230236245, 1.000000e+00 ; 3 uses
  %i.ms = fcmp oeq float %.1.i123238243, 1.000000e+00 ; 2 uses
  %or.cond = and i1 %i.mr, %i.ms
  br i1 %or.cond, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179
  %i.mt = fadd float %.0.i149247, %.0.i166
  %i.mu = fmul float %i.mt, 5.000000e-01
  br label %bb.ci

bb.cg:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit179
  %brmerge = or i1 %i.mr, %i.ms
  %.mux = select i1 %i.mr, float %.0.i149247, float %.0.i166
  br i1 %brmerge, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mv = tail call noundef float @log1pf(float noundef %i.mp) #33 ; 2 uses
  %i.mw = fneg float %i.mv                        ; 2 uses
  %i.mx = fmul float %.1.i125230236245, f0x7F7FFFFF
  %i.my = fcmp ogt float %i.mx, %i.mw
  %i.mz = fdiv float %i.mw, %.1.i125230236245
  %i.na = select i1 %i.my, float %i.mz, float 1.000000e+00
  %i.nb = fneg float %.1.i123238243
  %i.nc = tail call noundef float @log1pf(float noundef %i.nb) #33
  %i.nd = fneg float %i.nc                        ; 3 uses
  %i.ne = fmul float %.1.i123238243, f0x7F7FFFFF
  %i.nf = fcmp ogt float %i.ne, %i.nd
  %i.ng = fsub float %i.nd, %i.mv                 ; 3 uses
  %i.nh = fcmp ogt float %i.ng, 1.000000e+00
  %i.ni = fmul float %i.ng, f0x7F7FFFFF
  %i.nj = fcmp olt float %i.mq, %i.ni
  %or.cond118 = or i1 %i.nh, %i.nj
  %i.nk = insertelement <2 x float> poison, float %i.nd, i64 0
  %i.nl = insertelement <2 x float> %i.nk, float %i.mq, i64 1
  %i.nm = insertelement <2 x float> poison, float %.1.i123238243, i64 0
  %i.nn = insertelement <2 x float> %i.nm, float %i.ng, i64 1
  %i.no = fdiv <2 x float> %i.nl, %i.nn
  %i.np = insertelement <2 x i1> poison, i1 %i.nf, i64 0
  %i.nq = insertelement <2 x i1> %i.np, i1 %or.cond118, i64 1
  %i.nr = select <2 x i1> %i.nq, <2 x float> %i.no, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %i.ns = extractelement <2 x float> %i.nr, i64 0
  %i.nt = fmul float %.0.i166, %i.ns
  %i.nu = tail call float @llvm.fmuladd.f32(float %.0.i149247, float %i.na, float %i.nt)
  %i.nv = extractelement <2 x float> %i.nr, i64 1
  %i.nw = fmul float %i.nu, %i.nv
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch, %bb.cf
  %.0105 = phi float [ %i.mu, %bb.cf ], [ %i.nw, %bb.ch ], [ %.mux, %bb.cg ]
  %i.nx = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.nx, i32 noundef %i.w, float noundef %.0105)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.g, %bb.ci
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph262, label %bb.g, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.ea, %.preheader259
  %i.ny = load ptr, ptr %0, align 8, !tbaa !36    ; 6 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 72
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !54
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %1
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !3  ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.oc, i32 1) ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ny, i64 248
  %i.oe = load i8, ptr %i.od, align 8, !tbaa !64, !range !83, !noundef !84
  %i.of = trunc nuw i8 %i.oe to i1
  br i1 %i.of, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i, label %_ZN11OpenImageIO4v3_18DeepData13erase_samplesElii.exit

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i: ; preds = %._crit_edge
  %i.og = load i64, ptr %i.k, align 8
  %.not.i.i180 = icmp slt i64 %1, %i.og
  %or.cond.i.i = select i1 %i.j, i1 %.not.i.i180, i1 false
  %spec.select.i = select i1 %or.cond.i.i, i32 %i.oc, i32 0
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ny, i64 120
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !54
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %1
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !3  ; 2 uses
  %i.ol = add i32 %i.ok, %.0107
  %i.om = zext i32 %i.ol to i64
  %i.on = getelementptr inbounds nuw i8, ptr %i.ny, i64 216
  %i.oo = load i64, ptr %i.on, align 8, !tbaa !92 ; 3 uses
  %i.op = mul i64 %i.oo, %i.om
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !57
  %i.os = load i64, ptr %i.or, align 8, !tbaa !95 ; 2 uses
  %i.ot = add i32 %spec.select.i, %i.ok
  %i.ou = zext i32 %i.ot to i64
  %i.ov = mul i64 %i.oo, %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ny, i64 144
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !134
  %i.oy = add i64 %i.op, %i.os                    ; 2 uses
  %i.oz = getelementptr i8, ptr %i.ox, i64 %i.oy  ; 3 uses
  %i.pa = sext i32 %.sroa.speculated.i to i64
  %i.pb = mul i64 %i.oo, %i.pa                    ; 2 uses
  %i.pc = getelementptr inbounds i8, ptr %i.oz, i64 %i.pb ; 2 uses
  %i.pd = add i64 %i.os, %i.ov
  %i.pe = add i64 %i.pb, %i.oy
  %gepdiff.i = sub i64 %i.pd, %i.pe               ; 3 uses
  %i.pf = icmp sgt i64 %gepdiff.i, 1
  br i1 %i.pf, label %bb.ck, label %bb.cl, !prof !140

bb.ck:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.oz, ptr align 1 %i.pc, i64 %gepdiff.i, i1 false)
  br label %_ZN11OpenImageIO4v3_18DeepData13erase_samplesElii.exit

bb.cl:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.i
  %i.pg = icmp eq i64 %gepdiff.i, 1
  br i1 %i.pg, label %bb.cm, label %_ZN11OpenImageIO4v3_18DeepData13erase_samplesElii.exit

bb.cm:                                            ; preds = %bb.cl
  %i.ph = load i8, ptr %i.pc, align 1, !tbaa !47
  store i8 %i.ph, ptr %i.oz, align 1, !tbaa !47
  br label %_ZN11OpenImageIO4v3_18DeepData13erase_samplesElii.exit

_ZN11OpenImageIO4v3_18DeepData13erase_samplesElii.exit: ; preds = %._crit_edge, %bb.ck, %bb.cl, %bb.cm
  %i.pi = load ptr, ptr %0, align 8, !tbaa !36
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 72
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !54
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %1 ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !3
  %i.pn = sub i32 %i.pm, %.sroa.speculated.i
  store i32 %i.pn, ptr %i.pl, align 4, !tbaa !3
  br label %bb.eb

bb.cn:                                            ; preds = %.lr.ph262, %bb.ea
  %indvars.iv264 = phi i64 [ 0, %.lr.ph262 ], [ %indvars.iv.next265, %bb.ea ] ; 8 uses
  %i.po = load ptr, ptr %0, align 8, !tbaa !36    ; 8 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 192
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !39
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv264
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !3  ; 4 uses
  %i.pt = zext i32 %i.ps to i64
  %.not = icmp eq i64 %indvars.iv264, %i.pt
  br i1 %.not, label %2, label %bb.ea

2:                                                ; preds = %bb.cn
  %3 = icmp slt i32 %i.ps, 0
  br i1 %3, label %.thread, label %bb.co

bb.co:                                            ; preds = %2
  br i1 %i.m, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pu = load i64, ptr %i.k, align 8, !tbaa !62  ; 15 uses
  %i.pv = icmp slt i64 %1, %i.pu
  %i.pw = load i32, ptr %i.h, align 8             ; 15 uses
  %.not.i.i182 = icmp slt i32 %i.ps, %i.pw
  %or.cond21.i.i183 = select i1 %i.pv, i1 %.not.i.i182, i1 false
  br i1 %or.cond21.i.i183, label %bb.cq, label %bb.dh

bb.cq:                                            ; preds = %bb.cp
  %i.px = getelementptr inbounds nuw i8, ptr %i.po, i64 144
  %i.py = getelementptr inbounds nuw i8, ptr %i.po, i64 152
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !129
  %i.qa = load ptr, ptr %i.px, align 8, !tbaa !51 ; 2 uses
  %i.qb = icmp eq ptr %i.pz, %i.qa
  %or.cond3.i.i186 = or i1 %i.ad, %i.qb
  br i1 %or.cond3.i.i186, label %bb.dh, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.qc = getelementptr inbounds nuw i8, ptr %i.po, i64 72
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !54
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %1
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !3
  %.not19.i.i187.not = icmp sgt i32 %.0107, %i.qf
  br i1 %.not19.i.i187.not, label %bb.dh, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188: ; preds = %bb.cr
  %i.qg = getelementptr inbounds nuw i8, ptr %i.po, i64 120
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !54
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %1
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !3
  %i.qk = add i32 %i.qj, %i.w
  %i.ql = zext i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw i8, ptr %i.po, i64 216
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !92
  %i.qo = mul i64 %i.qn, %i.ql
  %i.qp = getelementptr inbounds nuw i8, ptr %i.po, i64 48
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !57
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %indvars.iv264
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !95
  %i.qt = getelementptr i8, ptr %i.qa, i64 %i.qo
  %i.qu = getelementptr i8, ptr %i.qt, i64 %i.qs  ; 11 uses
  %.not.i189 = icmp eq ptr %i.qu, null
  br i1 %.not.i189, label %bb.dh, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188
  %i.qv = load ptr, ptr %i.po, align 8, !tbaa !11
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %indvars.iv264
  %i.qx = load i64, ptr %i.qw, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i191 = trunc i64 %i.qx to i8
  switch i8 %.sroa.01.0.extract.trunc.i191, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i196 [
    i8 11, label %bb.cs
    i8 10, label %bb.ct
    i8 6, label %bb.cz
    i8 2, label %bb.da
    i8 3, label %bb.db
    i8 4, label %bb.dc
    i8 5, label %bb.dd
    i8 7, label %bb.de
    i8 8, label %bb.df
    i8 9, label %bb.dg
  ]

bb.cs:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.qy = load float, ptr %i.qu, align 4, !tbaa !144
  br label %bb.dh

bb.ct:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.qz = load i16, ptr %i.qu, align 2, !tbaa !146 ; 2 uses
  %i.ra = zext i16 %i.qz to i32
  %i.rb = shl nuw nsw i32 %i.ra, 13
  %i.rc = and i32 %i.rb, 268427264                ; 6 uses
  %.signext.i.i.i192 = sext i16 %i.qz to i32
  %i.rd = and i32 %.signext.i.i.i192, -2147483648 ; 3 uses
  %i.re = icmp samesign ugt i32 %i.rc, 8388607
  br i1 %i.re, label %bb.cu, label %bb.cx, !prof !140

bb.cu:                                            ; preds = %bb.ct
  %i.rf = or disjoint i32 %i.rc, %i.rd            ; 2 uses
  %i.rg = icmp samesign ult i32 %i.rc, 260046848
  br i1 %i.rg, label %bb.cv, label %bb.cw, !prof !140

bb.cv:                                            ; preds = %bb.cu
  %i.rh = add nuw nsw i32 %i.rf, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i194

bb.cw:                                            ; preds = %bb.cu
  %i.ri = or i32 %i.rf, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i194

bb.cx:                                            ; preds = %bb.ct
  %.not.i.i.i193 = icmp eq i32 %i.rc, 0
  br i1 %.not.i.i.i193, label %_ZNK9Imath_3_14halfcvfEv.exit.i194, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.rj = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.rc, i1 true)
  %i.rk = add nsw i32 %i.rj, -8                   ; 2 uses
  %i.rl = shl i32 %i.rc, %i.rk
  %i.rm = or i32 %i.rd, %i.rl
  %i.rn = or i32 %i.rm, 947912704
  %i.ro = shl nuw nsw i32 %i.rk, 23
  %i.rp = sub nuw i32 %i.rn, %i.ro
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i194

_ZNK9Imath_3_14halfcvfEv.exit.i194:               ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cv
  %.sroa.0.0.i.i.i195 = phi i32 [ %i.rh, %bb.cv ], [ %i.ri, %bb.cw ], [ %i.rp, %bb.cy ], [ %i.rd, %bb.cx ]
  %i.rq = bitcast i32 %.sroa.0.0.i.i.i195 to float
  br label %bb.dh

bb.cz:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.rr = load i32, ptr %i.qu, align 4, !tbaa !3
  %i.rs = uitofp i32 %i.rr to float
  %i.rt = fmul nnan float %i.rs, f0x2F800000
  br label %bb.dh

bb.da:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.ru = load i8, ptr %i.qu, align 1, !tbaa !47
  %i.rv = uitofp i8 %i.ru to float
  %i.rw = fmul nnan float %i.rv, f0x3B808081
  br label %bb.dh

bb.db:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.rx = load i8, ptr %i.qu, align 1, !tbaa !47
  %i.ry = sitofp i8 %i.rx to float
  %i.rz = fmul nnan float %i.ry, f0x3C010204
  br label %bb.dh

bb.dc:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.sa = load i16, ptr %i.qu, align 2, !tbaa !149
  %i.sb = uitofp i16 %i.sa to float
  %i.sc = fmul nnan float %i.sb, f0x37800080
  br label %bb.dh

bb.dd:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.sd = load i16, ptr %i.qu, align 2, !tbaa !149
  %i.se = sitofp i16 %i.sd to float
  %i.sf = fmul nnan float %i.se, f0x38000100
  br label %bb.dh

bb.de:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.sg = load i32, ptr %i.qu, align 4, !tbaa !3
  %i.sh = sitofp i32 %i.sg to float
  %i.si = fmul nnan float %i.sh, f0x30000000
  br label %bb.dh

bb.df:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.sj = load i64, ptr %i.qu, align 8, !tbaa !150
  %i.sk = uitofp i64 %i.sj to float
  %i.sl = fmul nnan float %i.sk, f0x1F800000
  br label %bb.dh

bb.dg:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.sm = load i64, ptr %i.qu, align 8, !tbaa !150
  %i.sn = sitofp i64 %i.sm to float
  %i.so = fmul nnan float %i.sn, f0x20000000
  br label %bb.dh

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i196: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i190
  %i.sp = trunc i64 %i.qx to i32
  %i.sq = and i32 %i.sp, 255
  %i.sr = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.ss = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.sr, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.sq) #31 ; 0 uses
  %.pre274 = load i64, ptr %i.k, align 8, !tbaa !62
  %.pre275 = load i32, ptr %i.h, align 8
  br label %bb.dh

bb.dh:                                            ; preds = %bb.cp, %bb.cq, %bb.cr, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188, %bb.cs, %_ZNK9Imath_3_14halfcvfEv.exit.i194, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.df, %bb.dg, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i196
  %i.st = phi i32 [ %i.pw, %bb.cp ], [ %i.pw, %bb.cq ], [ %i.pw, %bb.cr ], [ %i.pw, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188 ], [ %i.pw, %bb.dg ], [ %i.pw, %bb.df ], [ %i.pw, %bb.de ], [ %i.pw, %bb.dd ], [ %i.pw, %bb.dc ], [ %i.pw, %bb.db ], [ %i.pw, %bb.da ], [ %i.pw, %bb.cz ], [ %i.pw, %_ZNK9Imath_3_14halfcvfEv.exit.i194 ], [ %i.pw, %bb.cs ], [ %.pre275, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i196 ]
  %i.su = phi i64 [ %i.pu, %bb.cp ], [ %i.pu, %bb.cq ], [ %i.pu, %bb.cr ], [ %i.pu, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188 ], [ %i.pu, %bb.dg ], [ %i.pu, %bb.df ], [ %i.pu, %bb.de ], [ %i.pu, %bb.dd ], [ %i.pu, %bb.dc ], [ %i.pu, %bb.db ], [ %i.pu, %bb.da ], [ %i.pu, %bb.cz ], [ %i.pu, %_ZNK9Imath_3_14halfcvfEv.exit.i194 ], [ %i.pu, %bb.cs ], [ %.pre274, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i196 ]
  %.0.i184.ph = phi float [ 0.000000e+00, %bb.cp ], [ 0.000000e+00, %bb.cq ], [ 0.000000e+00, %bb.cr ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i188 ], [ %i.so, %bb.dg ], [ %i.sl, %bb.df ], [ %i.si, %bb.de ], [ %i.sf, %bb.dd ], [ %i.sc, %bb.dc ], [ %i.rz, %bb.db ], [ %i.rw, %bb.da ], [ %i.rt, %bb.cz ], [ %i.rq, %_ZNK9Imath_3_14halfcvfEv.exit.i194 ], [ %i.qy, %bb.cs ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i196 ] ; 2 uses
  %.inv = fcmp oge float %.0.i184.ph, 0.000000e+00
  %.0.i120250 = select i1 %.inv, float %.0.i184.ph, float 0.000000e+00 ; 2 uses
  %i.sv = fcmp ogt float %.0.i120250, 1.000000e+00
  %.1.i121251 = select i1 %i.sv, float 1.000000e+00, float %.0.i120250 ; 16 uses
  %i.sw = icmp slt i64 %1, %i.su
  %.not.i.i199 = icmp slt i32 %i.ps, %i.st
  %or.cond21.i.i200 = select i1 %i.sw, i1 %.not.i.i199, i1 false
  br i1 %or.cond21.i.i200, label %bb.di, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

bb.di:                                            ; preds = %bb.dh
  %i.sx = load ptr, ptr %0, align 8, !tbaa !36    ; 8 uses
  %.not18.i.i202 = icmp eq ptr %i.sx, null
  br i1 %.not18.i.i202, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 144
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 152
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !129
  %i.tb = load ptr, ptr %i.sy, align 8, !tbaa !51 ; 2 uses
  %i.tc = icmp eq ptr %i.ta, %i.tb
  %or.cond3.i.i203 = or i1 %i.ae, %i.tc
  br i1 %or.cond3.i.i203, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.td = getelementptr inbounds nuw i8, ptr %i.sx, i64 72
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !54
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.te, i64 %1
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !3
  %.not19.i.i204 = icmp slt i32 %.0107, %i.tg
  br i1 %.not19.i.i204, label %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i205, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i205: ; preds = %bb.dk
  %i.th = getelementptr inbounds nuw i8, ptr %i.sx, i64 120
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !54
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.ti, i64 %1
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !3
  %i.tl = add i32 %i.tk, %.0107
  %i.tm = zext i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sx, i64 216
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !92
  %i.tp = mul i64 %i.to, %i.tm
  %i.tq = getelementptr inbounds nuw i8, ptr %i.sx, i64 48
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !57
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv264
  %i.tt = load i64, ptr %i.ts, align 8, !tbaa !95
  %i.tu = getelementptr i8, ptr %i.tb, i64 %i.tp
  %i.tv = getelementptr i8, ptr %i.tu, i64 %i.tt  ; 11 uses
  %.not.i206 = icmp eq ptr %i.tv, null
  br i1 %.not.i206, label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207: ; preds = %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i205
  %i.tw = load ptr, ptr %i.sx, align 8, !tbaa !11
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tw, i64 %indvars.iv264
  %i.ty = load i64, ptr %i.tx, align 4            ; 2 uses
  %.sroa.01.0.extract.trunc.i208 = trunc i64 %i.ty to i8
  switch i8 %.sroa.01.0.extract.trunc.i208, label %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i213 [
    i8 11, label %bb.dl
    i8 10, label %bb.dm
    i8 6, label %bb.ds
    i8 2, label %bb.dt
    i8 3, label %bb.du
    i8 4, label %bb.dv
    i8 5, label %bb.dw
    i8 7, label %bb.dx
    i8 8, label %bb.dy
    i8 9, label %bb.dz
  ]

bb.dl:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207
  %i.tz = load float, ptr %i.tv, align 4, !tbaa !144
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

bb.dm:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207
  %i.ua = load i16, ptr %i.tv, align 2, !tbaa !146 ; 2 uses
  %i.ub = zext i16 %i.ua to i32
  %i.uc = shl nuw nsw i32 %i.ub, 13
  %i.ud = and i32 %i.uc, 268427264                ; 6 uses
  %.signext.i.i.i209 = sext i16 %i.ua to i32
  %i.ue = and i32 %.signext.i.i.i209, -2147483648 ; 3 uses
  %i.uf = icmp samesign ugt i32 %i.ud, 8388607
  br i1 %i.uf, label %bb.dn, label %bb.dq, !prof !140

bb.dn:                                            ; preds = %bb.dm
  %i.ug = or disjoint i32 %i.ud, %i.ue            ; 2 uses
  %i.uh = icmp samesign ult i32 %i.ud, 260046848
  br i1 %i.uh, label %bb.do, label %bb.dp, !prof !140

bb.do:                                            ; preds = %bb.dn
  %i.ui = add nuw nsw i32 %i.ug, 939524096
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i211

bb.dp:                                            ; preds = %bb.dn
  %i.uj = or i32 %i.ug, 2139095040
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i211

bb.dq:                                            ; preds = %bb.dm
  %.not.i.i.i210 = icmp eq i32 %i.ud, 0
  br i1 %.not.i.i.i210, label %_ZNK9Imath_3_14halfcvfEv.exit.i211, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.uk = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ud, i1 true)
  %i.ul = add nsw i32 %i.uk, -8                   ; 2 uses
  %i.um = shl i32 %i.ud, %i.ul
  %i.un = or i32 %i.ue, %i.um
  %i.uo = or i32 %i.un, 947912704
  %i.up = shl nuw nsw i32 %i.ul, 23
  %i.uq = sub nuw i32 %i.uo, %i.up
  br label %_ZNK9Imath_3_14halfcvfEv.exit.i211

_ZNK9Imath_3_14halfcvfEv.exit.i211:               ; preds = %bb.dr, %bb.dq, %bb.dp, %bb.do
  %.sroa.0.0.i.i.i212 = phi i32 [ %i.ui, %bb.do ], [ %i.uj, %bb.dp ], [ %i.uq, %bb.dr ], [ %i.ue, %bb.dq ]
  %i.ur = bitcast i32 %.sroa.0.0.i.i.i212 to float
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

bb.ds:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207
  %i.us = load i32, ptr %i.tv, align 4, !tbaa !3
  %i.ut = uitofp i32 %i.us to float
  %i.uu = fmul nnan float %i.ut, f0x2F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

bb.dt:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207
  %i.uv = load i8, ptr %i.tv, align 1, !tbaa !47
  %i.uw = uitofp i8 %i.uv to float
  %i.ux = fmul nnan float %i.uw, f0x3B808081
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

bb.du:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207
  %i.uy = load i8, ptr %i.tv, align 1, !tbaa !47
  %i.uz = sitofp i8 %i.uy to float
  %i.va = fmul nnan float %i.uz, f0x3C010204
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

bb.dv:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207
  %i.vb = load i16, ptr %i.tv, align 2, !tbaa !149
  %i.vc = uitofp i16 %i.vb to float
  %i.vd = fmul nnan float %i.vc, f0x37800080
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

bb.dw:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207
  %i.ve = load i16, ptr %i.tv, align 2, !tbaa !149
  %i.vf = sitofp i16 %i.ve to float
  %i.vg = fmul nnan float %i.vf, f0x38000100
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

bb.dx:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207
  %i.vh = load i32, ptr %i.tv, align 4, !tbaa !3
  %i.vi = sitofp i32 %i.vh to float
  %i.vj = fmul nnan float %i.vi, f0x30000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

bb.dy:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207
  %i.vk = load i64, ptr %i.tv, align 8, !tbaa !150
  %i.vl = uitofp i64 %i.vk to float
  %i.vm = fmul nnan float %i.vl, f0x1F800000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

bb.dz:                                            ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207
  %i.vn = load i64, ptr %i.tv, align 8, !tbaa !150
  %i.vo = sitofp i64 %i.vn to float
  %i.vp = fmul nnan float %i.vo, f0x20000000
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i213: ; preds = %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit.i207
  %i.vq = trunc i64 %i.ty to i32
  %i.vr = and i32 %i.vq, 255
  %i.vs = load ptr, ptr @stderr, align 8, !tbaa !88
  %i.vt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.vs, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 692, ptr noundef nonnull @__FUNCTION__._ZNK11OpenImageIO4v3_18DeepData10deep_valueElii, ptr noundef nonnull @.str.11, i32 noundef %i.vr) #31 ; 0 uses
  br label %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214

_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214: ; preds = %bb.co, %bb.dh, %bb.di, %bb.dj, %bb.dk, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i205, %bb.dl, %_ZNK9Imath_3_14halfcvfEv.exit.i211, %bb.ds, %bb.dt, %bb.du, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i213
  %.1.i121253 = phi float [ %.1.i121251, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i213 ], [ %.1.i121251, %bb.dl ], [ %.1.i121251, %_ZNK9Imath_3_14halfcvfEv.exit.i211 ], [ %.1.i121251, %bb.ds ], [ %.1.i121251, %bb.dt ], [ %.1.i121251, %bb.du ], [ %.1.i121251, %bb.dv ], [ %.1.i121251, %bb.dw ], [ %.1.i121251, %bb.dx ], [ %.1.i121251, %bb.dy ], [ %.1.i121251, %bb.dz ], [ %.1.i121251, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i205 ], [ %.1.i121251, %bb.dk ], [ %.1.i121251, %bb.dj ], [ %.1.i121251, %bb.di ], [ %.1.i121251, %bb.dh ], [ 0.000000e+00, %bb.co ]
  %.0.i201 = phi float [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData11channeltypeEi.exit24.i213 ], [ %i.tz, %bb.dl ], [ %i.ur, %_ZNK9Imath_3_14halfcvfEv.exit.i211 ], [ %i.uu, %bb.ds ], [ %i.ux, %bb.dt ], [ %i.va, %bb.du ], [ %i.vd, %bb.dv ], [ %i.vg, %bb.dw ], [ %i.vj, %bb.dx ], [ %i.vm, %bb.dy ], [ %i.vp, %bb.dz ], [ 0.000000e+00, %_ZNK11OpenImageIO4v3_18DeepData8data_ptrElii.exit.i205 ], [ 0.000000e+00, %bb.dk ], [ 0.000000e+00, %bb.dj ], [ 0.000000e+00, %bb.di ], [ 0.000000e+00, %bb.dh ], [ 0.000000e+00, %bb.co ] ; 2 uses
  %.inv254 = fcmp oge float %.0.i201, 0.000000e+00
  %.0.i = select i1 %.inv254, float %.0.i201, float 0.000000e+00 ; 2 uses
  %4 = fcmp ogt float %.0.i, 1.000000e+00
  %.1.i = select i1 %4, float 1.000000e+00, float %.0.i
  br label %.thread

.thread:                                          ; preds = %2, %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214
  %5 = phi float [ %.1.i121253, %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214 ], [ 1.000000e+00, %2 ] ; 2 uses
  %6 = phi float [ %.1.i, %_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii.exit214 ], [ 1.000000e+00, %2 ] ; 2 uses
  %i.vu = fadd float %5, %6
  %i.vv = fneg float %5
  %i.vw = tail call float @llvm.fmuladd.f32(float %i.vv, float %6, float %i.vu)
  %i.vx = trunc nuw nsw i64 %indvars.iv264 to i32
  tail call void @_ZN11OpenImageIO4v3_18DeepData14set_deep_valueEliif(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.vx, i32 noundef %i.w, float noundef %i.vw)
  br label %bb.ea

bb.ea:                                            ; preds = %bb.cn, %.thread
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  br i1 %exitcond268.not, label %._crit_edge, label %bb.cn, !llvm.loop !172

bb.eb:                                            ; preds = %_ZN11OpenImageIO4v3_18DeepData13erase_samplesElii.exit, %bb.f, %bb.e
  %.1 = phi i32 [ %i.w, %_ZN11OpenImageIO4v3_18DeepData13erase_samplesElii.exit ], [ %.0107, %bb.f ], [ %.0107, %bb.e ]
  %i.vy = add nsw i32 %.1, 1
  br label %bb.c, !llvm.loop !173

.loopexit:                                        ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #16

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_18DeepData17merge_deep_pixelsElRKS1_i(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 4 uses
  %i.b = icmp sgt i32 %3, -1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %.not.i = icmp sgt i64 %i.d, %i.a
  %or.cond.i = select i1 %i.b, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit:   ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.a
  %i.i = load i32, ptr %i.h, align 4, !tbaa !3    ; 4 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit
  %i.k = icmp sgt i64 %1, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8
  %.not.i39 = icmp slt i64 %1, %i.m
  %or.cond.i40 = select i1 %i.k, i1 %.not.i39, i1 false
  br i1 %or.cond.i40, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit42, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit42.thread

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit42: ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %1
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 3 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit42.thread, label %bb.c

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit42.thread: ; preds = %bb.b, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit42
  %i.t = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18DeepData15copy_deep_pixelElRKS1_l(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 noundef %i.a) ; 0 uses
  br label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit42
  %i.u = add nsw i32 %i.r, %i.i
  tail call void @_ZN11OpenImageIO4v3_18DeepData11set_samplesEli(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.u)
  %i.v = icmp sgt i32 %i.i, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  tail call void @_ZN11OpenImageIO4v3_18DeepData4sortEl(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1)
  %i.w = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 224
  %i.y = load i32, ptr %i.x, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 228
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !101
  %i.ab = load i64, ptr %i.l, align 8
  %.not.i4350 = icmp slt i64 %1, %i.ab
  br i1 %.not.i4350, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit46, label %.critedge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.03649 = phi i32 [ %i.ae, %.lr.ph ], [ 0, %bb.c ] ; 3 uses
  %i.ac = add nsw i32 %.03649, %i.r
  %i.ad = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18DeepData16copy_deep_sampleEliRKS1_li(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 noundef %i.a, i32 noundef %.03649) ; 0 uses
  %i.ae = add nuw nsw i32 %.03649, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !174

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit46: ; preds = %._crit_edge, %bb.d
  %.051 = phi i32 [ %i.ap, %bb.d ], [ 0, %._crit_edge ] ; 4 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ak = icmp slt i32 %.051, %i.aj
  br i1 %i.ak, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit46, %bb.d, %._crit_edge
  tail call void @_ZN11OpenImageIO4v3_18DeepData4sortEl(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1)
  tail call void @_ZN11OpenImageIO4v3_18DeepData14merge_overlapsEl(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1)
  br label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit46
  %i.al = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.y, i32 noundef %.051)
  %i.am = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.aa, i32 noundef %.051)
  %i.an = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18DeepData5splitElf(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, float noundef %i.al) ; 0 uses
  %i.ao = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18DeepData5splitElf(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, float noundef %i.am) ; 0 uses
  %i.ap = add nuw nsw i32 %.051, 1
  %i.aq = load i64, ptr %i.l, align 8
  %.not.i43 = icmp slt i64 %1, %i.aq
  br i1 %.not.i43, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit46, label %.critedge, !llvm.loop !175

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread: ; preds = %bb.a, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit42.thread, %.critedge, %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef float @_ZNK11OpenImageIO4v3_18DeepData8opaque_zEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, i64 noundef %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %.not.i = icmp slt i64 %1, %i.c
  %or.cond56 = select i1 %i.a, i1 %.not.i, i1 false
  br i1 %or.cond56, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread

_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit:   ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !36     ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %1
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.j = load i32, ptr %i.i, align 8, !tbaa !96   ; 3 uses
  %i.k = icmp eq i32 %i.h, 0
  %i.l = icmp slt i32 %i.j, 0
  %or.cond = or i1 %i.k, %i.l
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread, label %_ZNK11OpenImageIO4v3_18DeepData13Zback_channelEv.exit

_ZNK11OpenImageIO4v3_18DeepData13Zback_channelEv.exit: ; preds = %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 228
  %i.n = load i32, ptr %i.m, align 4, !tbaa !101  ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  %spec.select = select i1 %i.o, i32 %i.j, i32 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.q = load i32, ptr %i.p, align 8, !tbaa !102  ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  %i.s = load i32, ptr %i.r, align 4, !tbaa !103  ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  %i.u = select i1 %i.t, i32 %i.q, i32 %i.s       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.w = load i32, ptr %i.v, align 8, !tbaa !104  ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  %i.y = select i1 %i.x, i32 %i.q, i32 %i.w       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 244
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !105 ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = select i1 %i.ab, i32 %i.q, i32 %i.aa    ; 2 uses
  %i.ad = or i32 %i.y, %i.u
  %i.ae = or i32 %i.ad, %i.ac
  %or.cond6.not = icmp sgt i32 %i.ae, -1
  br i1 %or.cond6.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %_ZNK11OpenImageIO4v3_18DeepData13Zback_channelEv.exit
  %.not58 = icmp sgt i32 %i.h, 0
  br i1 %.not58, label %.lr.ph, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.af = icmp sgt i32 %i.q, -1
  br i1 %i.af, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %.03859.us = phi i32 [ %i.ai, %bb.b ], [ 0, %.lr.ph ] ; 3 uses
  %i.ag = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.q, i32 noundef %.03859.us)
  %i.ah = fcmp ult float %i.ag, 1.000000e+00
  br i1 %i.ah, label %bb.b, label %.thread53

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.ai = add nuw nsw i32 %.03859.us, 1           ; 2 uses
  %exitcond64.not = icmp eq i32 %i.ai, %i.h
  br i1 %exitcond64.not, label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread, label %.lr.ph.split.us, !llvm.loop !176

bb.c:                                             ; preds = %_ZNK11OpenImageIO4v3_18DeepData13Zback_channelEv.exit
  %i.aj = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.j, i32 noundef 0)
  br label %_ZNK11OpenImageIO4v3_18DeepData7samplesEl.exit.thread

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.03859 = phi i32 [ %i.as, %bb.d ], [ 0, %.lr.ph ] ; 5 uses
  %i.ak = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.u, i32 noundef %.03859)
  %i.al = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.y, i32 noundef %.03859)
  %i.am = fadd float %i.ak, %i.al
  %i.an = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %i.ac, i32 noundef %.03859)
  %i.ao = fadd float %i.am, %i.an
  %i.ap = fdiv float %i.ao, 3.000000e+00
  %i.aq = fcmp ult float %i.ap, 1.000000e+00
  br i1 %i.aq, label %bb.d, label %.thread53

.thread53:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i32 [ %.03859.us, %.lr.ph.split.us ], [ %.03859, %.lr.ph.split ]
  %i.ar = tail call noundef float @_ZNK11OpenImageIO4v3_18DeepData10deep_valueElii(ptr noundef nonnull align 8 dereferenceable(20) %0, i64 noundef %1, i32 noundef %spec.select, i32 noundef %.us-phi)
end_hunk_1
