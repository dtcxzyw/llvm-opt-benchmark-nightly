Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gridsample_layer?download=true
inline.NumInlined: 3976
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL10bilinear2DILi0EEEvPKfSA_PfiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1483, !nonnull !79, !align !114
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1484, !nonnull !79, !align !114
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1485, !nonnull !79, !align !114
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1486, !nonnull !79, !align !113
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !79, !align !113
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 160
  br i1 %i.af, label %.lr.ph10.split.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear2DILi0EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph10.split.i.i.i:                             ; preds = %.lr.ph10.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1487, !nonnull !79, !align !113
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !1488, !nonnull !79, !align !113
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !1489, !nonnull !79, !align !113
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !1490, !nonnull !79, !align !113
  %i.av = load i32, ptr %i.au, align 4, !tbaa !14 ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 0
  %wide.trip.count22.i.i.i = zext nneg i32 %i.ae to i64 ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.av to i64  ; 6 uses
  %i.ax = add nuw nsw i64 %wide.trip.count22.i.i.i, %wide.trip.count.i.i.i
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = getelementptr i8, ptr %i.v, i64 %i.ay
  %scevgep = getelementptr i8, ptr %i.az, i64 -4
  %i.ba = shl i64 %i.ab, 2
  %i.bb = shl i64 %i.y, 2
  %i.bc = shl i64 %i.j, 2
  %i.bd = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  %i.be = add nsw i64 %i.bd, -4
  %min.iters.check = icmp ugt i32 %i.av, 15
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br label %.lr.ph6.i.i.i

.lr.ph6.i.i.i:                                    ; preds = %._crit_edge7.i.i.i, %.lr.ph10.split.i.i.i
  %.08.i.i.i = phi i32 [ %.val2, %.lr.ph10.split.i.i.i ], [ %i.cb, %._crit_edge7.i.i.i ] ; 3 uses
  %i.bf = sdiv i32 %.08.i.i.i, %i.d               ; 2 uses
  %i.bg = mul nsw i32 %i.bf, %i.d                 ; 0 uses
  %.recomposed = srem i32 %.08.i.i.i, %i.d
  %i.bh = sext i32 %i.bf to i64                   ; 5 uses
  %i.bi = mul i64 %i.j, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bi ; 2 uses
  %i.bk = mul i64 %i.p, %i.bh
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bk
  %i.bm = sext i32 %.recomposed to i64            ; 3 uses
  %i.bn = mul i64 %i.s, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = mul i64 %i.y, %i.bh
  %i.bq = getelementptr [4 x i8], ptr %i.v, i64 %i.bp
  %i.br = mul i64 %i.ab, %i.bm
  %i.bs = getelementptr [4 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  %i.bt = mul i64 %i.ba, %i.bm
  %i.bu = mul i64 %i.bb, %i.bh
  %i.bv = getelementptr i8, ptr %scevgep, i64 %i.bt
  %scevgep9 = getelementptr i8, ptr %i.bv, i64 %i.bu
  %i.bw = mul i64 %i.bc, %i.bh                    ; 8 uses
  %scevgep10 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep12 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep15 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep17 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep22 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep24 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep29 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep31 = getelementptr i8, ptr %i.g, i64 %i.bw
  %i.bx = insertelement <4 x ptr> poison, ptr %i.bs, i64 0
  %i.by = shufflevector <4 x ptr> %i.bx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bz = insertelement <4 x ptr> poison, ptr %scevgep9, i64 0
  %i.ca = shufflevector <4 x ptr> %i.bz, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %bb.b

._crit_edge7.i.i.i:                               ; preds = %._crit_edge.i.i.i
  %i.cb = add nsw i32 %.08.i.i.i, 1               ; 2 uses
  %exitcond24.not.i.i.i = icmp eq i32 %i.cb, %.val3
  br i1 %exitcond24.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear2DILi0EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %.lr.ph6.i.i.i, !llvm.loop !1465

bb.b:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph6.i.i.i
  %indvars.iv19.i.i.i = phi i64 [ 0, %.lr.ph6.i.i.i ], [ %indvars.iv.next20.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv19.i.i.i, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i.i
  %i.cd = load float, ptr %i.ah, align 4, !tbaa !20
  %i.ce = load float, ptr %i.ar, align 4, !tbaa !20
  %i.cf = load float, ptr %i.as, align 4, !tbaa !20
  %i.cg = load float, ptr %i.at, align 4, !tbaa !20
  %i.ch = load <2 x float>, ptr %i.cc, align 4, !tbaa !20
  %i.ci = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.cf, i64 1
  %i.ck = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %i.cg, i64 1
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.cj, <2 x float> %i.cl) ; 2 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 0 ; 2 uses
  %i.co = tail call float @llvm.floor.f32(float %i.cn)
  %i.cp = insertelement <4 x float> poison, float %i.co, i64 0
  %i.cq = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.cp) ; 8 uses
  %i.cr = extractelement <2 x float> %i.cm, i64 1 ; 2 uses
  %i.cs = tail call float @llvm.floor.f32(float %i.cr)
  %i.ct = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.cu = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ct) ; 8 uses
  %i.cv = sitofp i32 %i.cq to float
  %i.cw = fsub float %i.cn, %i.cv                 ; 3 uses
  %i.cx = sitofp i32 %i.cu to float
  %i.cy = fsub float %i.cr, %i.cx                 ; 3 uses
  %i.cz = fsub float 1.000000e+00, %i.cw          ; 2 uses
  %i.da = fsub float 1.000000e+00, %i.cy          ; 2 uses
  %i.db = fmul float %i.cz, %i.da                 ; 3 uses
  %i.dc = fmul float %i.cw, %i.da                 ; 3 uses
  %i.dd = fmul float %i.cz, %i.cy                 ; 3 uses
  %i.de = fmul float %i.cw, %i.cy                 ; 3 uses
  %i.df = or i32 %i.cu, %i.cq
  %or.cond.i.i.i = icmp sgt i32 %i.df, -1         ; 2 uses
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.dg = add nuw nsw i32 %i.cq, 1
  %i.dh = load ptr, ptr %i.ai, align 8, !tbaa !1491, !nonnull !79, !align !113
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !14
  %i.dj = icmp slt i32 %i.dg, %i.di
  br i1 %i.dj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dk = add nuw nsw i32 %i.cu, 1
  %i.dl = load ptr, ptr %i.aj, align 8, !tbaa !1492, !nonnull !79, !align !113
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !14
  %i.dn = icmp slt i32 %i.dk, %i.dm
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.do = phi i1 [ false, %bb.c ], [ %i.dn, %bb.d ], [ false, %bb.b ]
  br i1 %i.aw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.dp = load ptr, ptr %i.ak, align 8, !tbaa !1493, !nonnull !79, !align !114
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !18 ; 7 uses
  %i.dr = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.ds = add i32 %i.cq, 1                        ; 5 uses
  %i.dt = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.du = sext i32 %i.cq to i64                   ; 11 uses
  %i.dv = sext i32 %i.ds to i64                   ; 11 uses
  %i.dw = load ptr, ptr %i.am, align 8, !tbaa !1494, !nonnull !79, !align !114
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !18 ; 3 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.bs, i64 %indvars.iv19.i.i.i ; 3 uses
  br i1 %i.do, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.dy = sext i32 %i.cu to i64                   ; 3 uses
  %i.dz = load ptr, ptr %i.al, align 8, !tbaa !1495, !nonnull !79, !align !114
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !18 ; 8 uses
  %i.eb = mul i64 %i.ea, %i.dy
  %invariant.gep2.i.i.i = getelementptr [4 x i8], ptr %i.bj, i64 %i.eb ; 5 uses
  %ident.check.not = icmp eq i64 %i.dx, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.us.i.i.i.preheader

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.i
  %i.ec = mul i64 %i.be, %i.dq                    ; 4 uses
  %i.ed = shl nsw i64 %i.dy, 2
  %i.ee = add nsw i64 %i.ed, 4
  %i.ef = mul i64 %i.ea, %i.ee                    ; 4 uses
  %i.eg = shl nsw i64 %i.dv, 2                    ; 4 uses
  %i.eh = getelementptr i8, ptr %scevgep10, i64 %i.ec
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.ef
  %scevgep11 = getelementptr i8, ptr %i.ei, i64 %i.eg ; 4 uses
  %i.ej = getelementptr i8, ptr %scevgep12, i64 %i.ef
  %scevgep13 = getelementptr i8, ptr %i.ej, i64 %i.eg ; 4 uses
  %i.ek = shl nsw i64 %i.du, 2                    ; 4 uses
  %i.el = getelementptr i8, ptr %scevgep15, i64 %i.ec
  %i.em = getelementptr i8, ptr %i.el, i64 %i.ef
  %scevgep16 = getelementptr i8, ptr %i.em, i64 %i.ek ; 4 uses
  %i.en = getelementptr i8, ptr %scevgep17, i64 %i.ef
  %scevgep18 = getelementptr i8, ptr %i.en, i64 %i.ek ; 4 uses
  %i.eo = shl i64 %i.ea, 2
  %i.ep = mul i64 %i.eo, %i.dy                    ; 4 uses
  %i.eq = getelementptr i8, ptr %scevgep22, i64 %i.ec
  %i.er = getelementptr i8, ptr %i.eq, i64 %i.ep
  %scevgep23 = getelementptr i8, ptr %i.er, i64 %i.eg ; 4 uses
  %i.es = getelementptr i8, ptr %scevgep24, i64 %i.ep
  %scevgep25 = getelementptr i8, ptr %i.es, i64 %i.eg ; 4 uses
  %i.et = getelementptr i8, ptr %scevgep29, i64 %i.ec
  %i.eu = getelementptr i8, ptr %i.et, i64 %i.ep
  %scevgep30 = getelementptr i8, ptr %i.eu, i64 %i.ek ; 4 uses
  %i.ev = getelementptr i8, ptr %scevgep31, i64 %i.ep
  %scevgep32 = getelementptr i8, ptr %i.ev, i64 %i.ek ; 4 uses
  %i.ew = icmp ult ptr %scevgep11, %scevgep13
  %umin = select i1 %i.ew, ptr %scevgep11, ptr %scevgep13
  %i.ex = icmp ugt ptr %scevgep11, %scevgep13
  %umax = select i1 %i.ex, ptr %scevgep11, ptr %scevgep13
  %i.ey = icmp ult ptr %scevgep16, %scevgep18
  %umin19 = select i1 %i.ey, ptr %scevgep16, ptr %scevgep18
  %i.ez = icmp ugt ptr %scevgep16, %scevgep18
  %umax20 = select i1 %i.ez, ptr %scevgep16, ptr %scevgep18
  %i.fa = icmp ult ptr %scevgep23, %scevgep25
  %umin26 = select i1 %i.fa, ptr %scevgep23, ptr %scevgep25
  %i.fb = icmp ugt ptr %scevgep23, %scevgep25
  %umax27 = select i1 %i.fb, ptr %scevgep23, ptr %scevgep25
  %i.fc = icmp ult ptr %scevgep30, %scevgep32
  %umin33 = select i1 %i.fc, ptr %scevgep30, ptr %scevgep32
  %i.fd = icmp ugt ptr %scevgep30, %scevgep32
  %umax34 = select i1 %i.fd, ptr %scevgep30, ptr %scevgep32
  %2 = insertelement <4 x ptr> poison, ptr %umax, i64 0
  %i.fe = insertelement <4 x ptr> %2, ptr %umax20, i64 1
  %i.ff = insertelement <4 x ptr> %i.fe, ptr %umax27, i64 2
  %i.fg = insertelement <4 x ptr> %i.ff, ptr %umax34, i64 3
  %3 = getelementptr i8, <4 x ptr> %i.fg, i64 4
  %i.fh = icmp ult <4 x ptr> %i.by, %3
  %i.fi = insertelement <4 x ptr> poison, ptr %umin, i64 0
  %i.fj = insertelement <4 x ptr> %i.fi, ptr %umin19, i64 1
  %i.fk = insertelement <4 x ptr> %i.fj, ptr %umin26, i64 2
  %i.fl = insertelement <4 x ptr> %i.fk, ptr %umin33, i64 3
  %i.fm = icmp ult <4 x ptr> %i.fl, %i.ca
  %i.fn = and <4 x i1> %i.fh, %i.fm
  %i.fo = bitcast <4 x i1> %i.fn to i4
  %.not = icmp eq i4 %i.fo, 0
  br i1 %.not, label %vector.ph, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.us.i.i.i.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert47 = insertelement <4 x float> poison, float %i.db, i64 0
  %broadcast.splat48 = shufflevector <4 x float> %broadcast.splatinsert47, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <4 x float> poison, float %i.dd, i64 0
  %broadcast.splat50 = shufflevector <4 x float> %broadcast.splatinsert49, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <4 x float> poison, float %i.de, i64 0
  %broadcast.splat52 = shufflevector <4 x float> %broadcast.splatinsert51, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.fp = or disjoint i64 %index, 1
  %i.fq = or disjoint i64 %index, 2
  %i.fr = or disjoint i64 %index, 3
  %i.fs = mul i64 %index, %i.dq
  %i.ft = mul i64 %i.fp, %i.dq
  %i.fu = mul i64 %i.fq, %i.dq
  %i.fv = mul i64 %i.fr, %i.dq
  %i.fw = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.fs ; 3 uses
  %i.fx = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.ft ; 3 uses
  %i.fy = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.fu ; 3 uses
  %i.fz = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.fv ; 3 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.ea ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.ea ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.ea ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.ea ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.du
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.du
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.du
  %i.gh = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.du
  %i.gi = load float, ptr %i.ge, align 4, !tbaa !20, !alias.scope !1496
  %i.gj = load float, ptr %i.gf, align 4, !tbaa !20, !alias.scope !1496
  %i.gk = load float, ptr %i.gg, align 4, !tbaa !20, !alias.scope !1496
  %i.gl = load float, ptr %i.gh, align 4, !tbaa !20, !alias.scope !1496
  %i.gm = insertelement <4 x float> poison, float %i.gi, i64 0
  %i.gn = insertelement <4 x float> %i.gm, float %i.gj, i64 1
  %i.go = insertelement <4 x float> %i.gn, float %i.gk, i64 2
  %i.gp = insertelement <4 x float> %i.go, float %i.gl, i64 3
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.dv
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.dv
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.dv
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.dv
  %i.gu = load float, ptr %i.gq, align 4, !tbaa !20, !alias.scope !1497
  %i.gv = load float, ptr %i.gr, align 4, !tbaa !20, !alias.scope !1497
  %i.gw = load float, ptr %i.gs, align 4, !tbaa !20, !alias.scope !1497
  %i.gx = load float, ptr %i.gt, align 4, !tbaa !20, !alias.scope !1497
  %i.gy = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.gz = insertelement <4 x float> %i.gy, float %i.gv, i64 1
  %i.ha = insertelement <4 x float> %i.gz, float %i.gw, i64 2
  %i.hb = insertelement <4 x float> %i.ha, float %i.gx, i64 3
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.du
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.du
  %i.he = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.du
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.du
  %i.hg = load float, ptr %i.hc, align 4, !tbaa !20, !alias.scope !1498
  %i.hh = load float, ptr %i.hd, align 4, !tbaa !20, !alias.scope !1498
  %i.hi = load float, ptr %i.he, align 4, !tbaa !20, !alias.scope !1498
  %i.hj = load float, ptr %i.hf, align 4, !tbaa !20, !alias.scope !1498
  %i.hk = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hl = insertelement <4 x float> %i.hk, float %i.hh, i64 1
  %i.hm = insertelement <4 x float> %i.hl, float %i.hi, i64 2
  %i.hn = insertelement <4 x float> %i.hm, float %i.hj, i64 3
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.dv
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.dv
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.dv
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %i.dv
  %i.hs = load float, ptr %i.ho, align 4, !tbaa !20, !alias.scope !1499
  %i.ht = load float, ptr %i.hp, align 4, !tbaa !20, !alias.scope !1499
  %i.hu = load float, ptr %i.hq, align 4, !tbaa !20, !alias.scope !1499
  %i.hv = load float, ptr %i.hr, align 4, !tbaa !20, !alias.scope !1499
  %i.hw = insertelement <4 x float> poison, float %i.hs, i64 0
  %i.hx = insertelement <4 x float> %i.hw, float %i.ht, i64 1
  %i.hy = insertelement <4 x float> %i.hx, float %i.hu, i64 2
  %i.hz = insertelement <4 x float> %i.hy, float %i.hv, i64 3
  %i.ia = fmul <4 x float> %broadcast.splat, %i.hb
  %i.ib = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat48, <4 x float> %i.gp, <4 x float> %i.ia)
  %i.ic = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat50, <4 x float> %i.hn, <4 x float> %i.ib)
  %i.id = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat52, <4 x float> %i.hz, <4 x float> %i.ic)
  %i.ie = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index
  store <4 x float> %i.id, ptr %i.ie, align 4, !tbaa !20, !alias.scope !1500, !noalias !1501
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %middle.block, label %vector.body, !llvm.loop !1472

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.us.i.i.i.preheader: ; preds = %vector.memcheck, %.lr.ph.split.us.i.i.i, %middle.block
  %indvars.iv14.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.i.i ], [ %n.vec, %middle.block ]
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.us.i.i.i
  %indvars.iv14.i.i.i = phi i64 [ %indvars.iv.next15.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.us.i.i.i ], [ %indvars.iv14.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.us.i.i.i.preheader ] ; 3 uses
  %i.ig = mul i64 %indvars.iv14.i.i.i, %i.dq
  %gep3.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.ig ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %gep3.i.i.i, i64 %i.ea ; 2 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %gep3.i.i.i, i64 %i.du
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !20
  %i.ik = getelementptr inbounds [4 x i8], ptr %gep3.i.i.i, i64 %i.dv
  %i.il = load float, ptr %i.ik, align 4, !tbaa !20
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.du
  %i.in = load float, ptr %i.im, align 4, !tbaa !20
  %i.io = getelementptr inbounds [4 x i8], ptr %i.ih, i64 %i.dv
  %i.ip = load float, ptr %i.io, align 4, !tbaa !20
  %i.iq = fmul float %i.dc, %i.il
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.db, float %i.ij, float %i.iq)
  %i.is = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.in, float %i.ir)
  %i.it = tail call float @llvm.fmuladd.f32(float %i.de, float %i.ip, float %i.is)
  %i.iu = mul i64 %indvars.iv14.i.i.i, %i.dx
  %gep.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.iu
  store float %i.it, ptr %gep.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next15.i.i.i = add nuw nsw i64 %indvars.iv14.i.i.i, 1 ; 2 uses
  %exitcond18.not.i.i.i = icmp eq i64 %indvars.iv.next15.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond18.not.i.i.i, label %._crit_edge.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.us.i.i.i, !llvm.loop !1473

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.iv = add nsw i32 %i.cu, 1                    ; 4 uses
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = or i32 %i.iv, %i.ds
  %or.cond.not.i98.i.i.i = icmp sgt i32 %i.ix, -1
  %i.iy = or i32 %i.iv, %i.cq
  %or.cond.not.i91.i.i.i = icmp sgt i32 %i.iy, -1
  %i.iz = zext nneg i32 %i.cu to i64
  %i.ja = or i32 %i.ds, %i.cu
  %or.cond.not.i84.i.i.i = icmp sgt i32 %i.ja, -1
  %i.jb = load ptr, ptr %i.aj, align 8, !tbaa !1492, !nonnull !79, !align !113
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !14 ; 2 uses
  %i.jd = load ptr, ptr %i.ai, align 8, !tbaa !1491, !nonnull !79, !align !113
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !14 ; 2 uses
  %i.jf = load ptr, ptr %i.al, align 8, !tbaa !1495, !nonnull !79, !align !114
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i.i = icmp slt i32 %i.cq, %i.je       ; 2 uses
  %or.cond.i.i.i.i = and i1 %or.cond.i.i.i, %.not.i.i.i.i
  %.not15.i.i.i.i = icmp slt i32 %i.cu, %i.jc     ; 2 uses
  %or.cond16.i.i.i.i = and i1 %.not15.i.i.i.i, %or.cond.i.i.i.i
  %.not.i85.i.i.i = icmp slt i32 %i.ds, %i.je     ; 2 uses
  %or.cond.i86.i.i.i = and i1 %or.cond.not.i84.i.i.i, %.not.i85.i.i.i
  %or.cond16.i88.i.i.i = and i1 %.not15.i.i.i.i, %or.cond.i86.i.i.i
  %or.cond.i93.i.i.i = and i1 %or.cond.not.i91.i.i.i, %.not.i.i.i.i
  %.not15.i94.i.i.i = icmp slt i32 %i.iv, %i.jc   ; 2 uses
  %or.cond16.i95.i.i.i = and i1 %.not15.i94.i.i.i, %or.cond.i93.i.i.i
  %or.cond.i100.i.i.i = and i1 %or.cond.not.i98.i.i.i, %.not.i85.i.i.i
  %or.cond16.i102.i.i.i = and i1 %.not15.i94.i.i.i, %or.cond.i100.i.i.i
  %i.jh = mul i64 %i.jg, %i.iz                    ; 2 uses
  %i.ji = mul i64 %i.jg, %i.iw                    ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.i.i.i, %.lr.ph.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.split.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.i.i.i ] ; 3 uses
  %i.jj = mul i64 %indvars.iv.i.i.i, %i.dq
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.jj ; 4 uses
  br i1 %or.cond16.i.i.i.i, label %bb.g, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.jl = getelementptr [4 x i8], ptr %i.jk, i64 %i.jh
  %i.jm = getelementptr [4 x i8], ptr %i.jl, i64 %i.dr
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi float [ %i.jn, %bb.g ], [ 0.000000e+00, %bb.f ]
  br i1 %or.cond16.i88.i.i.i, label %bb.h, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit90.i.i.i

bb.h:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.i.i.i
  %i.jo = getelementptr [4 x i8], ptr %i.jk, i64 %i.jh
  %i.jp = getelementptr [4 x i8], ptr %i.jo, i64 %i.dt
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit90.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit90.i.i.i: ; preds = %bb.h, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.i.i.i
  %.0.i89.i.i.i = phi float [ %i.jq, %bb.h ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit.i.i.i ]
  br i1 %or.cond16.i95.i.i.i, label %bb.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit97.i.i.i

bb.i:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit90.i.i.i
  %i.jr = getelementptr [4 x i8], ptr %i.jk, i64 %i.ji
  %i.js = getelementptr [4 x i8], ptr %i.jr, i64 %i.dr
  %i.jt = load float, ptr %i.js, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit97.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit97.i.i.i: ; preds = %bb.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit90.i.i.i
  %.0.i96.i.i.i = phi float [ %i.jt, %bb.i ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit90.i.i.i ]
  br i1 %or.cond16.i102.i.i.i, label %bb.j, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.i.i.i

bb.j:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit97.i.i.i
  %i.ju = getelementptr [4 x i8], ptr %i.jk, i64 %i.ji
  %i.jv = getelementptr [4 x i8], ptr %i.ju, i64 %i.dt
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi0EEEfPKfiiiimb.exit104.i.i.i
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL10bilinear2DILi1EEEvPKfSA_PfiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1519, !nonnull !79, !align !114
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1520, !nonnull !79, !align !114
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1521, !nonnull !79, !align !114
  %i.y = load i64, ptr %i.x, align 8, !tbaa !18   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1522, !nonnull !79, !align !114
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1523, !nonnull !79, !align !113
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !14 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !79, !align !113
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 144 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 160
  br i1 %i.af, label %.lr.ph10.split.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear2DILi1EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

.lr.ph10.split.i.i.i:                             ; preds = %.lr.ph10.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.ao = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.aq = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1524, !nonnull !79, !align !113
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !1525, !nonnull !79, !align !113
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !1526, !nonnull !79, !align !113
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !1527, !nonnull !79, !align !113
  %i.av = load i32, ptr %i.au, align 4, !tbaa !14 ; 3 uses
  %i.aw = icmp sgt i32 %i.av, 0
  %wide.trip.count22.i.i.i = zext nneg i32 %i.ae to i64 ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.av to i64  ; 6 uses
  %i.ax = add nuw nsw i64 %wide.trip.count22.i.i.i, %wide.trip.count.i.i.i
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = getelementptr i8, ptr %i.v, i64 %i.ay
  %scevgep = getelementptr i8, ptr %i.az, i64 -4
  %i.ba = shl i64 %i.ab, 2
  %i.bb = shl i64 %i.y, 2
  %i.bc = shl i64 %i.j, 2
  %i.bd = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  %i.be = add nsw i64 %i.bd, -4
  %min.iters.check = icmp ugt i32 %i.av, 15
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br label %.lr.ph6.i.i.i

.lr.ph6.i.i.i:                                    ; preds = %._crit_edge7.i.i.i, %.lr.ph10.split.i.i.i
  %.08.i.i.i = phi i32 [ %.val2, %.lr.ph10.split.i.i.i ], [ %i.cb, %._crit_edge7.i.i.i ] ; 3 uses
  %i.bf = sdiv i32 %.08.i.i.i, %i.d               ; 2 uses
  %i.bg = mul nsw i32 %i.bf, %i.d                 ; 0 uses
  %.recomposed = srem i32 %.08.i.i.i, %i.d
  %i.bh = sext i32 %i.bf to i64                   ; 5 uses
  %i.bi = mul i64 %i.j, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bi ; 2 uses
  %i.bk = mul i64 %i.p, %i.bh
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bk
  %i.bm = sext i32 %.recomposed to i64            ; 3 uses
  %i.bn = mul i64 %i.s, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = mul i64 %i.y, %i.bh
  %i.bq = getelementptr [4 x i8], ptr %i.v, i64 %i.bp
  %i.br = mul i64 %i.ab, %i.bm
  %i.bs = getelementptr [4 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  %i.bt = mul i64 %i.ba, %i.bm
  %i.bu = mul i64 %i.bb, %i.bh
  %i.bv = getelementptr i8, ptr %scevgep, i64 %i.bt
  %scevgep9 = getelementptr i8, ptr %i.bv, i64 %i.bu
  %i.bw = mul i64 %i.bc, %i.bh                    ; 8 uses
  %scevgep10 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep12 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep15 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep17 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep22 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep24 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep29 = getelementptr i8, ptr %i.g, i64 %i.bw
  %scevgep31 = getelementptr i8, ptr %i.g, i64 %i.bw
  %i.bx = insertelement <4 x ptr> poison, ptr %i.bs, i64 0
  %i.by = shufflevector <4 x ptr> %i.bx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bz = insertelement <4 x ptr> poison, ptr %scevgep9, i64 0
  %i.ca = shufflevector <4 x ptr> %i.bz, <4 x ptr> poison, <4 x i32> zeroinitializer
  br label %bb.b

._crit_edge7.i.i.i:                               ; preds = %._crit_edge.i.i.i
  %i.cb = add nsw i32 %.08.i.i.i, 1               ; 2 uses
  %exitcond24.not.i.i.i = icmp eq i32 %i.cb, %.val3
  br i1 %exitcond24.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear2DILi1EEEvPKfS6_PfiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %.lr.ph6.i.i.i, !llvm.loop !1502

bb.b:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph6.i.i.i
  %indvars.iv19.i.i.i = phi i64 [ 0, %.lr.ph6.i.i.i ], [ %indvars.iv.next20.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv19.i.i.i, 3
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i.i.i
  %i.cd = load float, ptr %i.ah, align 4, !tbaa !20
  %i.ce = load float, ptr %i.ar, align 4, !tbaa !20
  %i.cf = load float, ptr %i.as, align 4, !tbaa !20
  %i.cg = load float, ptr %i.at, align 4, !tbaa !20
  %i.ch = load <2 x float>, ptr %i.cc, align 4, !tbaa !20
  %i.ci = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.cf, i64 1
  %i.ck = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.cl = insertelement <2 x float> %i.ck, float %i.cg, i64 1
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.cj, <2 x float> %i.cl) ; 2 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 0 ; 2 uses
  %i.co = tail call float @llvm.floor.f32(float %i.cn)
  %i.cp = insertelement <4 x float> poison, float %i.co, i64 0
  %i.cq = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.cp) ; 6 uses
  %i.cr = extractelement <2 x float> %i.cm, i64 1 ; 2 uses
  %i.cs = tail call float @llvm.floor.f32(float %i.cr)
  %i.ct = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.cu = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ct) ; 6 uses
  %i.cv = sitofp i32 %i.cq to float
  %i.cw = fsub float %i.cn, %i.cv                 ; 3 uses
  %i.cx = sitofp i32 %i.cu to float
  %i.cy = fsub float %i.cr, %i.cx                 ; 3 uses
  %i.cz = fsub float 1.000000e+00, %i.cw          ; 2 uses
  %i.da = fsub float 1.000000e+00, %i.cy          ; 2 uses
  %i.db = fmul float %i.cz, %i.da                 ; 3 uses
  %i.dc = fmul float %i.cw, %i.da                 ; 3 uses
  %i.dd = fmul float %i.cz, %i.cy                 ; 3 uses
  %i.de = fmul float %i.cw, %i.cy                 ; 3 uses
  %i.df = or i32 %i.cu, %i.cq
  %or.cond.i.i.i = icmp sgt i32 %i.df, -1
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.dg = add nuw nsw i32 %i.cq, 1
  %i.dh = load ptr, ptr %i.ai, align 8, !tbaa !1528, !nonnull !79, !align !113
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !14
  %i.dj = icmp slt i32 %i.dg, %i.di
  br i1 %i.dj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dk = add nuw nsw i32 %i.cu, 1
  %i.dl = load ptr, ptr %i.aj, align 8, !tbaa !1529, !nonnull !79, !align !113
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !14
  %i.dn = icmp slt i32 %i.dk, %i.dm
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.do = phi i1 [ false, %bb.c ], [ %i.dn, %bb.d ], [ false, %bb.b ]
  br i1 %i.aw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.dp = load ptr, ptr %i.ak, align 8, !tbaa !1530, !nonnull !79, !align !114
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !18 ; 7 uses
  %i.dr = sext i32 %i.cq to i64                   ; 11 uses
  %i.ds = add i32 %i.cq, 1                        ; 2 uses
  %i.dt = sext i32 %i.ds to i64                   ; 11 uses
  %i.du = load ptr, ptr %i.am, align 8, !tbaa !1531, !nonnull !79, !align !114
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !18 ; 3 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.bs, i64 %indvars.iv19.i.i.i ; 3 uses
  br i1 %i.do, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.dw = sext i32 %i.cu to i64                   ; 3 uses
  %i.dx = load ptr, ptr %i.al, align 8, !tbaa !1532, !nonnull !79, !align !114
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !18 ; 8 uses
  %i.dz = mul i64 %i.dy, %i.dw
  %invariant.gep2.i.i.i = getelementptr [4 x i8], ptr %i.bj, i64 %i.dz ; 5 uses
  %ident.check.not = icmp eq i64 %i.dv, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.us.i.i.i.preheader

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.i
  %i.ea = mul i64 %i.be, %i.dq                    ; 4 uses
  %i.eb = shl nsw i64 %i.dw, 2
  %i.ec = add nsw i64 %i.eb, 4
  %i.ed = mul i64 %i.dy, %i.ec                    ; 4 uses
  %i.ee = shl nsw i64 %i.dt, 2                    ; 4 uses
  %i.ef = getelementptr i8, ptr %scevgep10, i64 %i.ea
  %i.eg = getelementptr i8, ptr %i.ef, i64 %i.ed
  %scevgep11 = getelementptr i8, ptr %i.eg, i64 %i.ee ; 4 uses
  %i.eh = getelementptr i8, ptr %scevgep12, i64 %i.ed
  %scevgep13 = getelementptr i8, ptr %i.eh, i64 %i.ee ; 4 uses
  %i.ei = shl nsw i64 %i.dr, 2                    ; 4 uses
  %i.ej = getelementptr i8, ptr %scevgep15, i64 %i.ea
  %i.ek = getelementptr i8, ptr %i.ej, i64 %i.ed
  %scevgep16 = getelementptr i8, ptr %i.ek, i64 %i.ei ; 4 uses
  %i.el = getelementptr i8, ptr %scevgep17, i64 %i.ed
  %scevgep18 = getelementptr i8, ptr %i.el, i64 %i.ei ; 4 uses
  %i.em = shl i64 %i.dy, 2
  %i.en = mul i64 %i.em, %i.dw                    ; 4 uses
  %i.eo = getelementptr i8, ptr %scevgep22, i64 %i.ea
  %i.ep = getelementptr i8, ptr %i.eo, i64 %i.en
  %scevgep23 = getelementptr i8, ptr %i.ep, i64 %i.ee ; 4 uses
  %i.eq = getelementptr i8, ptr %scevgep24, i64 %i.en
  %scevgep25 = getelementptr i8, ptr %i.eq, i64 %i.ee ; 4 uses
  %i.er = getelementptr i8, ptr %scevgep29, i64 %i.ea
  %i.es = getelementptr i8, ptr %i.er, i64 %i.en
  %scevgep30 = getelementptr i8, ptr %i.es, i64 %i.ei ; 4 uses
  %i.et = getelementptr i8, ptr %scevgep31, i64 %i.en
  %scevgep32 = getelementptr i8, ptr %i.et, i64 %i.ei ; 4 uses
  %i.eu = icmp ult ptr %scevgep11, %scevgep13
  %umin = select i1 %i.eu, ptr %scevgep11, ptr %scevgep13
  %i.ev = icmp ugt ptr %scevgep11, %scevgep13
  %umax = select i1 %i.ev, ptr %scevgep11, ptr %scevgep13
  %i.ew = icmp ult ptr %scevgep16, %scevgep18
  %umin19 = select i1 %i.ew, ptr %scevgep16, ptr %scevgep18
  %i.ex = icmp ugt ptr %scevgep16, %scevgep18
  %umax20 = select i1 %i.ex, ptr %scevgep16, ptr %scevgep18
  %i.ey = icmp ult ptr %scevgep23, %scevgep25
  %umin26 = select i1 %i.ey, ptr %scevgep23, ptr %scevgep25
  %i.ez = icmp ugt ptr %scevgep23, %scevgep25
  %umax27 = select i1 %i.ez, ptr %scevgep23, ptr %scevgep25
  %i.fa = icmp ult ptr %scevgep30, %scevgep32
  %umin33 = select i1 %i.fa, ptr %scevgep30, ptr %scevgep32
  %i.fb = icmp ugt ptr %scevgep30, %scevgep32
  %umax34 = select i1 %i.fb, ptr %scevgep30, ptr %scevgep32
  %2 = insertelement <4 x ptr> poison, ptr %umax, i64 0
  %i.fc = insertelement <4 x ptr> %2, ptr %umax20, i64 1
  %i.fd = insertelement <4 x ptr> %i.fc, ptr %umax27, i64 2
  %i.fe = insertelement <4 x ptr> %i.fd, ptr %umax34, i64 3
  %3 = getelementptr i8, <4 x ptr> %i.fe, i64 4
  %i.ff = icmp ult <4 x ptr> %i.by, %3
  %i.fg = insertelement <4 x ptr> poison, ptr %umin, i64 0
  %i.fh = insertelement <4 x ptr> %i.fg, ptr %umin19, i64 1
  %i.fi = insertelement <4 x ptr> %i.fh, ptr %umin26, i64 2
  %i.fj = insertelement <4 x ptr> %i.fi, ptr %umin33, i64 3
  %i.fk = icmp ult <4 x ptr> %i.fj, %i.ca
  %i.fl = and <4 x i1> %i.ff, %i.fk
  %i.fm = bitcast <4 x i1> %i.fl to i4
  %.not = icmp eq i4 %i.fm, 0
  br i1 %.not, label %vector.ph, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.us.i.i.i.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert47 = insertelement <4 x float> poison, float %i.db, i64 0
  %broadcast.splat48 = shufflevector <4 x float> %broadcast.splatinsert47, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert49 = insertelement <4 x float> poison, float %i.dd, i64 0
  %broadcast.splat50 = shufflevector <4 x float> %broadcast.splatinsert49, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <4 x float> poison, float %i.de, i64 0
  %broadcast.splat52 = shufflevector <4 x float> %broadcast.splatinsert51, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.fn = or disjoint i64 %index, 1
  %i.fo = or disjoint i64 %index, 2
  %i.fp = or disjoint i64 %index, 3
  %i.fq = mul i64 %index, %i.dq
  %i.fr = mul i64 %i.fn, %i.dq
  %i.fs = mul i64 %i.fo, %i.dq
  %i.ft = mul i64 %i.fp, %i.dq
  %i.fu = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.fq ; 3 uses
  %i.fv = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.fr ; 3 uses
  %i.fw = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.fs ; 3 uses
  %i.fx = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.ft ; 3 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.dy ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.dy ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %i.dy ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.dy ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.dr
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.dr
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.dr
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.dr
  %i.gg = load float, ptr %i.gc, align 4, !tbaa !20, !alias.scope !1533
  %i.gh = load float, ptr %i.gd, align 4, !tbaa !20, !alias.scope !1533
  %i.gi = load float, ptr %i.ge, align 4, !tbaa !20, !alias.scope !1533
  %i.gj = load float, ptr %i.gf, align 4, !tbaa !20, !alias.scope !1533
  %i.gk = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.gl = insertelement <4 x float> %i.gk, float %i.gh, i64 1
  %i.gm = insertelement <4 x float> %i.gl, float %i.gi, i64 2
  %i.gn = insertelement <4 x float> %i.gm, float %i.gj, i64 3
  %i.go = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.dt
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.dt
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.dt
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.fx, i64 %i.dt
  %i.gs = load float, ptr %i.go, align 4, !tbaa !20, !alias.scope !1534
  %i.gt = load float, ptr %i.gp, align 4, !tbaa !20, !alias.scope !1534
  %i.gu = load float, ptr %i.gq, align 4, !tbaa !20, !alias.scope !1534
  %i.gv = load float, ptr %i.gr, align 4, !tbaa !20, !alias.scope !1534
  %i.gw = insertelement <4 x float> poison, float %i.gs, i64 0
  %i.gx = insertelement <4 x float> %i.gw, float %i.gt, i64 1
  %i.gy = insertelement <4 x float> %i.gx, float %i.gu, i64 2
  %i.gz = insertelement <4 x float> %i.gy, float %i.gv, i64 3
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.dr
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.dr
  %i.hc = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.dr
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.dr
  %i.he = load float, ptr %i.ha, align 4, !tbaa !20, !alias.scope !1535
  %i.hf = load float, ptr %i.hb, align 4, !tbaa !20, !alias.scope !1535
  %i.hg = load float, ptr %i.hc, align 4, !tbaa !20, !alias.scope !1535
  %i.hh = load float, ptr %i.hd, align 4, !tbaa !20, !alias.scope !1535
  %i.hi = insertelement <4 x float> poison, float %i.he, i64 0
  %i.hj = insertelement <4 x float> %i.hi, float %i.hf, i64 1
  %i.hk = insertelement <4 x float> %i.hj, float %i.hg, i64 2
  %i.hl = insertelement <4 x float> %i.hk, float %i.hh, i64 3
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.dt
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.dt
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.ga, i64 %i.dt
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.dt
  %i.hq = load float, ptr %i.hm, align 4, !tbaa !20, !alias.scope !1536
  %i.hr = load float, ptr %i.hn, align 4, !tbaa !20, !alias.scope !1536
  %i.hs = load float, ptr %i.ho, align 4, !tbaa !20, !alias.scope !1536
  %i.ht = load float, ptr %i.hp, align 4, !tbaa !20, !alias.scope !1536
  %i.hu = insertelement <4 x float> poison, float %i.hq, i64 0
  %i.hv = insertelement <4 x float> %i.hu, float %i.hr, i64 1
  %i.hw = insertelement <4 x float> %i.hv, float %i.hs, i64 2
  %i.hx = insertelement <4 x float> %i.hw, float %i.ht, i64 3
  %i.hy = fmul <4 x float> %broadcast.splat, %i.gz
  %i.hz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat48, <4 x float> %i.gn, <4 x float> %i.hy)
  %i.ia = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat50, <4 x float> %i.hl, <4 x float> %i.hz)
  %i.ib = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat52, <4 x float> %i.hx, <4 x float> %i.ia)
  %i.ic = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index
  store <4 x float> %i.ib, ptr %i.ic, align 4, !tbaa !20, !alias.scope !1537, !noalias !1538
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !1509

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.us.i.i.i.preheader: ; preds = %vector.memcheck, %.lr.ph.split.us.i.i.i, %middle.block
  %indvars.iv14.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.i.i ], [ %n.vec, %middle.block ]
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.us.i.i.i
  %indvars.iv14.i.i.i = phi i64 [ %indvars.iv.next15.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.us.i.i.i ], [ %indvars.iv14.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.us.i.i.i.preheader ] ; 3 uses
  %i.ie = mul i64 %indvars.iv14.i.i.i, %i.dq
  %gep3.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.ie ; 3 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %gep3.i.i.i, i64 %i.dy ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %gep3.i.i.i, i64 %i.dr
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !20
  %i.ii = getelementptr inbounds [4 x i8], ptr %gep3.i.i.i, i64 %i.dt
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !20
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.dr
  %i.il = load float, ptr %i.ik, align 4, !tbaa !20
  %i.im = getelementptr inbounds [4 x i8], ptr %i.if, i64 %i.dt
  %i.in = load float, ptr %i.im, align 4, !tbaa !20
  %i.io = fmul float %i.dc, %i.ij
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.db, float %i.ih, float %i.io)
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.il, float %i.ip)
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.de, float %i.in, float %i.iq)
  %i.is = mul i64 %indvars.iv14.i.i.i, %i.dv
  %gep.us.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.is
  store float %i.ir, ptr %gep.us.i.i.i, align 4, !tbaa !20
  %indvars.iv.next15.i.i.i = add nuw nsw i64 %indvars.iv14.i.i.i, 1 ; 2 uses
  %exitcond18.not.i.i.i = icmp eq i64 %indvars.iv.next15.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond18.not.i.i.i, label %._crit_edge.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.us.i.i.i, !llvm.loop !1510

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.it = add nsw i32 %i.cu, 1
  %i.iu = load ptr, ptr %i.aj, align 8, !tbaa !1529, !nonnull !79, !align !113
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !14 ; 3 uses
  %i.iw = load ptr, ptr %i.ai, align 8, !tbaa !1528, !nonnull !79, !align !113
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !14 ; 3 uses
  %i.iy = load ptr, ptr %i.al, align 8, !tbaa !1532, !nonnull !79, !align !114
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !18 ; 2 uses
  %i.ja = add nsw i32 %i.ix, -1                   ; 2 uses
  %.sroa.speculated33.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.ja)
  %.sroa.speculated22.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated33.i.i.i.i, i32 0) ; 2 uses
  %i.jb = add nsw i32 %i.iv, -1                   ; 2 uses
  %.sroa.speculated26.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.jb)
  %.sroa.speculated.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated26.i.i.i.i, i32 0) ; 2 uses
  %.not.i.i.i.i = icmp slt i32 %.sroa.speculated22.i.i.i.i, %i.ix ; 2 uses
  %.not11.i.i.i.i = icmp slt i32 %.sroa.speculated.i.i.i.i, %i.iv ; 2 uses
  %or.cond13.i.i.i.i = select i1 %.not.i.i.i.i, i1 %.not11.i.i.i.i, i1 false
  %.sroa.speculated33.i84.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ds, i32 %i.ja)
  %.sroa.speculated22.i85.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated33.i84.i.i.i, i32 0) ; 2 uses
  %.not.i88.i.i.i = icmp slt i32 %.sroa.speculated22.i85.i.i.i, %i.ix ; 2 uses
  %or.cond13.i90.i.i.i = select i1 %.not.i88.i.i.i, i1 %.not11.i.i.i.i, i1 false
  %.sroa.speculated26.i95.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.it, i32 %i.jb)
  %.sroa.speculated.i96.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated26.i95.i.i.i, i32 0) ; 2 uses
  %.not11.i98.i.i.i = icmp slt i32 %.sroa.speculated.i96.i.i.i, %i.iv ; 2 uses
  %or.cond13.i99.i.i.i = select i1 %.not.i.i.i.i, i1 %.not11.i98.i.i.i, i1 false
  %or.cond13.i108.i.i.i = select i1 %.not.i88.i.i.i, i1 %.not11.i98.i.i.i, i1 false
  %i.jc = zext nneg i32 %.sroa.speculated.i.i.i.i to i64
  %i.jd = mul i64 %i.iz, %i.jc                    ; 2 uses
  %i.je = zext nneg i32 %.sroa.speculated22.i.i.i.i to i64 ; 2 uses
  %i.jf = zext nneg i32 %.sroa.speculated22.i85.i.i.i to i64 ; 2 uses
  %i.jg = zext nneg i32 %.sroa.speculated.i96.i.i.i to i64
  %i.jh = mul i64 %i.iz, %i.jg                    ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.i.i.i, %.lr.ph.split.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.split.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.i.i.i ] ; 3 uses
  %i.ji = mul i64 %indvars.iv.i.i.i, %i.dq
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.ji ; 4 uses
  br i1 %or.cond13.i.i.i.i, label %bb.g, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.jk = getelementptr [4 x i8], ptr %i.jj, i64 %i.jd
  %i.jl = getelementptr [4 x i8], ptr %i.jk, i64 %i.je
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi float [ %i.jm, %bb.g ], [ 0.000000e+00, %bb.f ]
  br i1 %or.cond13.i90.i.i.i, label %bb.h, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit92.i.i.i

bb.h:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.i.i.i
  %i.jn = getelementptr [4 x i8], ptr %i.jj, i64 %i.jd
  %i.jo = getelementptr [4 x i8], ptr %i.jn, i64 %i.jf
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit92.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit92.i.i.i: ; preds = %bb.h, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.i.i.i
  %.0.i91.i.i.i = phi float [ %i.jp, %bb.h ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit.i.i.i ]
  br i1 %or.cond13.i99.i.i.i, label %bb.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit101.i.i.i

bb.i:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit92.i.i.i
  %i.jq = getelementptr [4 x i8], ptr %i.jj, i64 %i.jh
  %i.jr = getelementptr [4 x i8], ptr %i.jq, i64 %i.je
  %i.js = load float, ptr %i.jr, align 4, !tbaa !20
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit101.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit101.i.i.i: ; preds = %bb.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit92.i.i.i
  %.0.i100.i.i.i = phi float [ %i.js, %bb.i ], [ 0.000000e+00, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit92.i.i.i ]
  br i1 %or.cond13.i108.i.i.i, label %bb.j, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit110.i.i.i

bb.j:                                             ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch2DILi1EEEfPKfiiiimb.exit101.i.i.i
  %i.jt = getelementptr [4 x i8], ptr %i.jj, i64 %i.jh
  %i.ju = getelementptr [4 x i8], ptr %i.jt, i64 %i.jf
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfSA_PfiiiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  %scevgep38 = getelementptr i8, ptr %i.k, i64 %i.cw
  %scevgep43 = getelementptr i8, ptr %i.k, i64 %i.cw
  %scevgep45 = getelementptr i8, ptr %i.k, i64 %i.cw
  %scevgep50 = getelementptr i8, ptr %i.k, i64 %i.cw
  %scevgep52 = getelementptr i8, ptr %i.k, i64 %i.cw
  %scevgep57 = getelementptr i8, ptr %i.k, i64 %i.cw
  %scevgep59 = getelementptr i8, ptr %i.k, i64 %i.cw
  %i.cx = insertelement <8 x ptr> poison, ptr %i.cq, i64 0
  %i.cy = shufflevector <8 x ptr> %i.cx, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.cz = insertelement <8 x ptr> poison, ptr %scevgep9, i64 0
  %i.da = shufflevector <8 x ptr> %i.cz, <8 x ptr> poison, <8 x i32> zeroinitializer
  br label %bb.b

._crit_edge7.i.i.i:                               ; preds = %._crit_edge.i.i.i
  %i.db = add nsw i32 %.08.i.i.i, 1               ; 2 uses
  %exitcond24.not.i.i.i = icmp eq i32 %i.db, %.val3
  br i1 %exitcond24.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi1EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %.lr.ph6.i.i.i, !llvm.loop !1768

bb.b:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph6.i.i.i
  %indvars.iv19.i.i.i = phi i64 [ 0, %.lr.ph6.i.i.i ], [ %indvars.iv.next20.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv19.i.i.i, 12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx.i.i.i ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !20
  %i.de = load float, ptr %i.be, align 4, !tbaa !20
  %i.df = load float, ptr %i.bf, align 4, !tbaa !20
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.de, float %i.df) ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.di = load float, ptr %i.bg, align 4, !tbaa !20
  %i.dj = load float, ptr %i.bh, align 4, !tbaa !20
  %i.dk = load float, ptr %i.bi, align 4, !tbaa !20
  %i.dl = load float, ptr %i.bj, align 4, !tbaa !20
  %i.dm = load <2 x float>, ptr %i.dh, align 4, !tbaa !20
  %i.dn = insertelement <2 x float> poison, float %i.di, i64 0
  %i.do = insertelement <2 x float> %i.dn, float %i.dk, i64 1
  %i.dp = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.dl, i64 1
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.do, <2 x float> %i.dq) ; 2 uses
  %i.ds = tail call float @llvm.floor.f32(float %i.dg)
  %i.dt = insertelement <4 x float> poison, float %i.ds, i64 0
  %i.du = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dt) ; 6 uses
  %i.dv = extractelement <2 x float> %i.dr, i64 0 ; 2 uses
  %i.dw = tail call float @llvm.floor.f32(float %i.dv)
  %i.dx = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.dy = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dx) ; 7 uses
  %i.dz = extractelement <2 x float> %i.dr, i64 1 ; 2 uses
  %i.ea = tail call float @llvm.floor.f32(float %i.dz)
  %i.eb = insertelement <4 x float> poison, float %i.ea, i64 0
  %i.ec = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.eb) ; 6 uses
  %i.ed = sitofp i32 %i.du to float
  %i.ee = fsub float %i.dg, %i.ed                 ; 3 uses
  %i.ef = sitofp i32 %i.dy to float
  %i.eg = fsub float %i.dv, %i.ef                 ; 3 uses
  %i.eh = sitofp i32 %i.ec to float
  %i.ei = fsub float %i.dz, %i.eh                 ; 5 uses
  %i.ej = fsub float 1.000000e+00, %i.ee          ; 2 uses
  %i.ek = fsub float 1.000000e+00, %i.eg          ; 2 uses
  %i.el = fmul float %i.ej, %i.ek                 ; 2 uses
  %i.em = fsub float 1.000000e+00, %i.ei          ; 4 uses
  %i.en = fmul float %i.el, %i.em                 ; 3 uses
  %i.eo = fmul float %i.ee, %i.ek                 ; 2 uses
  %i.ep = fmul float %i.eo, %i.em                 ; 3 uses
  %i.eq = fmul float %i.ej, %i.eg                 ; 2 uses
  %i.er = fmul float %i.eq, %i.em                 ; 3 uses
  %i.es = fmul float %i.ee, %i.eg                 ; 2 uses
  %i.et = fmul float %i.es, %i.em                 ; 3 uses
  %i.eu = fmul float %i.ei, %i.el                 ; 3 uses
  %i.ev = fmul float %i.ei, %i.eo                 ; 3 uses
  %i.ew = fmul float %i.eq, %i.ei                 ; 3 uses
  %i.ex = fmul float %i.es, %i.ei                 ; 3 uses
  %i.ey = or i32 %i.dy, %i.du
  %i.ez = or i32 %i.ey, %i.ec
  %or.cond3.i.i.i = icmp sgt i32 %i.ez, -1
  br i1 %or.cond3.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.fa = add nuw nsw i32 %i.du, 1
  %i.fb = load ptr, ptr %i.aq, align 8, !tbaa !1804, !nonnull !79, !align !113
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !14
  %i.fd = icmp slt i32 %i.fa, %i.fc
  br i1 %i.fd, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.fe = add nuw nsw i32 %i.dy, 1
  %i.ff = load ptr, ptr %i.ar, align 8, !tbaa !1805, !nonnull !79, !align !113
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !14
  %i.fh = icmp slt i32 %i.fe, %i.fg
  br i1 %i.fh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.fi = add nuw nsw i32 %i.ec, 1
  %i.fj = load ptr, ptr %i.as, align 8, !tbaa !1806, !nonnull !79, !align !113
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !14
  %i.fl = icmp slt i32 %i.fi, %i.fk
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.fm = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ %i.fl, %bb.e ]
  br i1 %i.bm, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.fn = load ptr, ptr %i.at, align 8, !tbaa !1807, !nonnull !79, !align !114
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !18 ; 7 uses
  %i.fp = sext i32 %i.du to i64                   ; 21 uses
  %i.fq = add i32 %i.du, 1                        ; 2 uses
  %i.fr = sext i32 %i.fq to i64                   ; 21 uses
  %i.fs = load ptr, ptr %i.aw, align 8, !tbaa !1808, !nonnull !79, !align !114
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !18 ; 3 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.cq, i64 %indvars.iv19.i.i.i ; 3 uses
  br i1 %i.fm, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.fu = add nsw i32 %i.dy, 1
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = sext i32 %i.dy to i64                   ; 2 uses
  %i.fx = sext i32 %i.ec to i64                   ; 3 uses
  %i.fy = load ptr, ptr %i.au, align 8, !tbaa !1809, !nonnull !79, !align !114
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !18 ; 8 uses
  %i.ga = mul i64 %i.fz, %i.fx
  %invariant.gep2.i.i.i = getelementptr [4 x i8], ptr %i.cc, i64 %i.ga ; 5 uses
  %i.gb = load ptr, ptr %i.av, align 8, !tbaa !1810, !nonnull !79, !align !114
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !18 ; 4 uses
  %i.gd = mul i64 %i.gc, %i.fw                    ; 10 uses
  %i.ge = mul i64 %i.gc, %i.fv                    ; 10 uses
  %ident.check.not = icmp eq i64 %i.ft, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.us.i.i.i.preheader

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.i
  %i.gf = mul i64 %i.bv, %i.fo                    ; 8 uses
  %i.gg = shl i64 %i.gc, 2
  %i.gh = mul i64 %i.gg, %i.fv                    ; 8 uses
  %i.gi = shl nsw i64 %i.fx, 2
  %i.gj = add nsw i64 %i.gi, 4
  %i.gk = mul i64 %i.fz, %i.gj                    ; 8 uses
  %i.gl = shl nsw i64 %i.fr, 2                    ; 8 uses
  %i.gm = getelementptr i8, ptr %scevgep10, i64 %i.gf
  %i.gn = getelementptr i8, ptr %i.gm, i64 %i.gh
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.gk
  %scevgep11 = getelementptr i8, ptr %i.go, i64 %i.gl ; 4 uses
  %i.gp = getelementptr i8, ptr %scevgep12, i64 %i.gh
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.gk
  %scevgep13 = getelementptr i8, ptr %i.gq, i64 %i.gl ; 4 uses
  %i.gr = shl nsw i64 %i.fp, 2                    ; 8 uses
  %i.gs = getelementptr i8, ptr %scevgep15, i64 %i.gf
  %i.gt = getelementptr i8, ptr %i.gs, i64 %i.gh
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.gk
  %scevgep16 = getelementptr i8, ptr %i.gu, i64 %i.gr ; 4 uses
  %i.gv = getelementptr i8, ptr %scevgep17, i64 %i.gh
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gk
  %scevgep18 = getelementptr i8, ptr %i.gw, i64 %i.gr ; 4 uses
  %i.gx = shl i64 %i.gc, 2
  %i.gy = mul i64 %i.gx, %i.fw                    ; 8 uses
  %i.gz = getelementptr i8, ptr %scevgep22, i64 %i.gf
  %i.ha = getelementptr i8, ptr %i.gz, i64 %i.gy
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gk
  %scevgep23 = getelementptr i8, ptr %i.hb, i64 %i.gl ; 4 uses
  %i.hc = getelementptr i8, ptr %scevgep24, i64 %i.gy
  %i.hd = getelementptr i8, ptr %i.hc, i64 %i.gk
  %scevgep25 = getelementptr i8, ptr %i.hd, i64 %i.gl ; 4 uses
  %i.he = getelementptr i8, ptr %scevgep29, i64 %i.gf
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.gy
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.gk
  %scevgep30 = getelementptr i8, ptr %i.hg, i64 %i.gr ; 4 uses
  %i.hh = getelementptr i8, ptr %scevgep31, i64 %i.gy
  %i.hi = getelementptr i8, ptr %i.hh, i64 %i.gk
  %scevgep32 = getelementptr i8, ptr %i.hi, i64 %i.gr ; 4 uses
  %i.hj = shl i64 %i.fz, 2
  %i.hk = mul i64 %i.hj, %i.fx                    ; 8 uses
  %i.hl = getelementptr i8, ptr %scevgep36, i64 %i.gf
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hk
  %i.hn = getelementptr i8, ptr %i.hm, i64 %i.gh
  %scevgep37 = getelementptr i8, ptr %i.hn, i64 %i.gl ; 4 uses
  %i.ho = getelementptr i8, ptr %scevgep38, i64 %i.hk
  %i.hp = getelementptr i8, ptr %i.ho, i64 %i.gh
  %scevgep39 = getelementptr i8, ptr %i.hp, i64 %i.gl ; 4 uses
  %i.hq = getelementptr i8, ptr %scevgep43, i64 %i.gf
  %i.hr = getelementptr i8, ptr %i.hq, i64 %i.hk
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.gh
  %scevgep44 = getelementptr i8, ptr %i.hs, i64 %i.gr ; 4 uses
  %i.ht = getelementptr i8, ptr %scevgep45, i64 %i.hk
  %i.hu = getelementptr i8, ptr %i.ht, i64 %i.gh
  %scevgep46 = getelementptr i8, ptr %i.hu, i64 %i.gr ; 4 uses
  %i.hv = getelementptr i8, ptr %scevgep50, i64 %i.gf
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.hk
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.gy
  %scevgep51 = getelementptr i8, ptr %i.hx, i64 %i.gl ; 4 uses
  %i.hy = getelementptr i8, ptr %scevgep52, i64 %i.hk
  %i.hz = getelementptr i8, ptr %i.hy, i64 %i.gy
  %scevgep53 = getelementptr i8, ptr %i.hz, i64 %i.gl ; 4 uses
  %i.ia = getelementptr i8, ptr %scevgep57, i64 %i.gf
  %i.ib = getelementptr i8, ptr %i.ia, i64 %i.hk
  %i.ic = getelementptr i8, ptr %i.ib, i64 %i.gy
  %scevgep58 = getelementptr i8, ptr %i.ic, i64 %i.gr ; 4 uses
  %i.id = getelementptr i8, ptr %scevgep59, i64 %i.hk
  %i.ie = getelementptr i8, ptr %i.id, i64 %i.gy
  %scevgep60 = getelementptr i8, ptr %i.ie, i64 %i.gr ; 4 uses
  %i.if = icmp ult ptr %scevgep11, %scevgep13
  %umin = select i1 %i.if, ptr %scevgep11, ptr %scevgep13
  %i.ig = icmp ugt ptr %scevgep11, %scevgep13
  %umax = select i1 %i.ig, ptr %scevgep11, ptr %scevgep13
  %i.ih = icmp ult ptr %scevgep16, %scevgep18
  %umin19 = select i1 %i.ih, ptr %scevgep16, ptr %scevgep18
  %i.ii = icmp ugt ptr %scevgep16, %scevgep18
  %umax20 = select i1 %i.ii, ptr %scevgep16, ptr %scevgep18
  %i.ij = icmp ult ptr %scevgep23, %scevgep25
  %umin26 = select i1 %i.ij, ptr %scevgep23, ptr %scevgep25
  %i.ik = icmp ugt ptr %scevgep23, %scevgep25
  %umax27 = select i1 %i.ik, ptr %scevgep23, ptr %scevgep25
  %i.il = icmp ult ptr %scevgep30, %scevgep32
  %umin33 = select i1 %i.il, ptr %scevgep30, ptr %scevgep32
  %i.im = icmp ugt ptr %scevgep30, %scevgep32
  %umax34 = select i1 %i.im, ptr %scevgep30, ptr %scevgep32
  %i.in = icmp ult ptr %scevgep37, %scevgep39
  %umin40 = select i1 %i.in, ptr %scevgep37, ptr %scevgep39
  %i.io = icmp ugt ptr %scevgep37, %scevgep39
  %umax41 = select i1 %i.io, ptr %scevgep37, ptr %scevgep39
  %i.ip = icmp ult ptr %scevgep44, %scevgep46
  %umin47 = select i1 %i.ip, ptr %scevgep44, ptr %scevgep46
  %i.iq = icmp ugt ptr %scevgep44, %scevgep46
  %umax48 = select i1 %i.iq, ptr %scevgep44, ptr %scevgep46
  %i.ir = icmp ult ptr %scevgep51, %scevgep53
  %umin54 = select i1 %i.ir, ptr %scevgep51, ptr %scevgep53
  %i.is = icmp ugt ptr %scevgep51, %scevgep53
  %umax55 = select i1 %i.is, ptr %scevgep51, ptr %scevgep53
  %i.it = icmp ult ptr %scevgep58, %scevgep60
  %umin61 = select i1 %i.it, ptr %scevgep58, ptr %scevgep60
  %i.iu = icmp ugt ptr %scevgep58, %scevgep60
  %umax62 = select i1 %i.iu, ptr %scevgep58, ptr %scevgep60
  %2 = insertelement <8 x ptr> poison, ptr %umax, i64 0
  %i.iv = insertelement <8 x ptr> %2, ptr %umax20, i64 1
  %i.iw = insertelement <8 x ptr> %i.iv, ptr %umax27, i64 2
  %i.ix = insertelement <8 x ptr> %i.iw, ptr %umax34, i64 3
  %i.iy = insertelement <8 x ptr> %i.ix, ptr %umax41, i64 4
  %i.iz = insertelement <8 x ptr> %i.iy, ptr %umax48, i64 5
  %i.ja = insertelement <8 x ptr> %i.iz, ptr %umax55, i64 6
  %i.jb = insertelement <8 x ptr> %i.ja, ptr %umax62, i64 7
  %3 = getelementptr i8, <8 x ptr> %i.jb, i64 4
  %i.jc = icmp ult <8 x ptr> %i.cy, %3
  %i.jd = insertelement <8 x ptr> poison, ptr %umin, i64 0
  %i.je = insertelement <8 x ptr> %i.jd, ptr %umin19, i64 1
  %i.jf = insertelement <8 x ptr> %i.je, ptr %umin26, i64 2
  %i.jg = insertelement <8 x ptr> %i.jf, ptr %umin33, i64 3
  %i.jh = insertelement <8 x ptr> %i.jg, ptr %umin40, i64 4
  %i.ji = insertelement <8 x ptr> %i.jh, ptr %umin47, i64 5
  %i.jj = insertelement <8 x ptr> %i.ji, ptr %umin54, i64 6
  %i.jk = insertelement <8 x ptr> %i.jj, ptr %umin61, i64 7
  %i.jl = icmp ult <8 x ptr> %i.jk, %i.da
  %i.jm = and <8 x i1> %i.jc, %i.jl
  %i.jn = bitcast <8 x i1> %i.jm to i8
  %.not = icmp eq i8 %i.jn, 0
  br i1 %.not, label %vector.ph, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.us.i.i.i.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ep, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <4 x float> poison, float %i.en, i64 0
  %broadcast.splat92 = shufflevector <4 x float> %broadcast.splatinsert91, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert93 = insertelement <4 x float> poison, float %i.er, i64 0
  %broadcast.splat94 = shufflevector <4 x float> %broadcast.splatinsert93, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %i.et, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert97 = insertelement <4 x float> poison, float %i.eu, i64 0
  %broadcast.splat98 = shufflevector <4 x float> %broadcast.splatinsert97, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert99 = insertelement <4 x float> poison, float %i.ev, i64 0
  %broadcast.splat100 = shufflevector <4 x float> %broadcast.splatinsert99, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <4 x float> poison, float %i.ew, i64 0
  %broadcast.splat102 = shufflevector <4 x float> %broadcast.splatinsert101, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <4 x float> poison, float %i.ex, i64 0
  %broadcast.splat104 = shufflevector <4 x float> %broadcast.splatinsert103, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.jo = or disjoint i64 %index, 1
  %i.jp = or disjoint i64 %index, 2
  %i.jq = or disjoint i64 %index, 3
  %i.jr = mul i64 %index, %i.fo
  %i.js = mul i64 %i.jo, %i.fo
  %i.jt = mul i64 %i.jp, %i.fo
  %i.ju = mul i64 %i.jq, %i.fo
  %i.jv = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.jr ; 3 uses
  %i.jw = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.js ; 3 uses
  %i.jx = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.jt ; 3 uses
  %i.jy = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.ju ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.fz ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.fz ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.fz ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.fz ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.gd ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.gd ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.gd ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.gd ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.ge ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.ge ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.ge ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.ge ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.gd ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.gd ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.gd ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.gd ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %i.ge ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.ge ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.ge ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.ge ; 2 uses
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.fp
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.fp
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.fp
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.fp
  %i.kx = load float, ptr %i.kt, align 4, !tbaa !20, !alias.scope !1811
  %i.ky = load float, ptr %i.ku, align 4, !tbaa !20, !alias.scope !1811
  %i.kz = load float, ptr %i.kv, align 4, !tbaa !20, !alias.scope !1811
  %i.la = load float, ptr %i.kw, align 4, !tbaa !20, !alias.scope !1811
  %i.lb = insertelement <4 x float> poison, float %i.kx, i64 0
  %i.lc = insertelement <4 x float> %i.lb, float %i.ky, i64 1
  %i.ld = insertelement <4 x float> %i.lc, float %i.kz, i64 2
  %i.le = insertelement <4 x float> %i.ld, float %i.la, i64 3
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.fr
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.fr
  %i.lh = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.fr
  %i.li = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.fr
  %i.lj = load float, ptr %i.lf, align 4, !tbaa !20, !alias.scope !1812
  %i.lk = load float, ptr %i.lg, align 4, !tbaa !20, !alias.scope !1812
  %i.ll = load float, ptr %i.lh, align 4, !tbaa !20, !alias.scope !1812
  %i.lm = load float, ptr %i.li, align 4, !tbaa !20, !alias.scope !1812
  %i.ln = insertelement <4 x float> poison, float %i.lj, i64 0
  %i.lo = insertelement <4 x float> %i.ln, float %i.lk, i64 1
  %i.lp = insertelement <4 x float> %i.lo, float %i.ll, i64 2
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 3
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.fp
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.fp
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.fp
  %i.lu = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.fp
  %i.lv = load float, ptr %i.lr, align 4, !tbaa !20, !alias.scope !1813
  %i.lw = load float, ptr %i.ls, align 4, !tbaa !20, !alias.scope !1813
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !20, !alias.scope !1813
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !20, !alias.scope !1813
  %i.lz = insertelement <4 x float> poison, float %i.lv, i64 0
  %i.ma = insertelement <4 x float> %i.lz, float %i.lw, i64 1
  %i.mb = insertelement <4 x float> %i.ma, float %i.lx, i64 2
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 3
  %i.md = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.fr
  %i.me = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.fr
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.fr
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.fr
  %i.mh = load float, ptr %i.md, align 4, !tbaa !20, !alias.scope !1814
  %i.mi = load float, ptr %i.me, align 4, !tbaa !20, !alias.scope !1814
  %i.mj = load float, ptr %i.mf, align 4, !tbaa !20, !alias.scope !1814
  %i.mk = load float, ptr %i.mg, align 4, !tbaa !20, !alias.scope !1814
  %i.ml = insertelement <4 x float> poison, float %i.mh, i64 0
  %i.mm = insertelement <4 x float> %i.ml, float %i.mi, i64 1
  %i.mn = insertelement <4 x float> %i.mm, float %i.mj, i64 2
  %i.mo = insertelement <4 x float> %i.mn, float %i.mk, i64 3
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.fp
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.fp
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.fp
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.fp
  %i.mt = load float, ptr %i.mp, align 4, !tbaa !20, !alias.scope !1815
  %i.mu = load float, ptr %i.mq, align 4, !tbaa !20, !alias.scope !1815
  %i.mv = load float, ptr %i.mr, align 4, !tbaa !20, !alias.scope !1815
  %i.mw = load float, ptr %i.ms, align 4, !tbaa !20, !alias.scope !1815
  %i.mx = insertelement <4 x float> poison, float %i.mt, i64 0
  %i.my = insertelement <4 x float> %i.mx, float %i.mu, i64 1
  %i.mz = insertelement <4 x float> %i.my, float %i.mv, i64 2
  %i.na = insertelement <4 x float> %i.mz, float %i.mw, i64 3
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.fr
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.fr
  %i.nd = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.fr
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.fr
  %i.nf = load float, ptr %i.nb, align 4, !tbaa !20, !alias.scope !1816
  %i.ng = load float, ptr %i.nc, align 4, !tbaa !20, !alias.scope !1816
  %i.nh = load float, ptr %i.nd, align 4, !tbaa !20, !alias.scope !1816
  %i.ni = load float, ptr %i.ne, align 4, !tbaa !20, !alias.scope !1816
  %i.nj = insertelement <4 x float> poison, float %i.nf, i64 0
  %i.nk = insertelement <4 x float> %i.nj, float %i.ng, i64 1
  %i.nl = insertelement <4 x float> %i.nk, float %i.nh, i64 2
  %i.nm = insertelement <4 x float> %i.nl, float %i.ni, i64 3
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.fp
  %i.no = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.fp
  %i.np = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.fp
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.fp
  %i.nr = load float, ptr %i.nn, align 4, !tbaa !20, !alias.scope !1817
  %i.ns = load float, ptr %i.no, align 4, !tbaa !20, !alias.scope !1817
  %i.nt = load float, ptr %i.np, align 4, !tbaa !20, !alias.scope !1817
  %i.nu = load float, ptr %i.nq, align 4, !tbaa !20, !alias.scope !1817
  %i.nv = insertelement <4 x float> poison, float %i.nr, i64 0
  %i.nw = insertelement <4 x float> %i.nv, float %i.ns, i64 1
  %i.nx = insertelement <4 x float> %i.nw, float %i.nt, i64 2
  %i.ny = insertelement <4 x float> %i.nx, float %i.nu, i64 3
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.fr
  %i.oa = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.fr
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.fr
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.fr
  %i.od = load float, ptr %i.nz, align 4, !tbaa !20, !alias.scope !1818
  %i.oe = load float, ptr %i.oa, align 4, !tbaa !20, !alias.scope !1818
  %i.of = load float, ptr %i.ob, align 4, !tbaa !20, !alias.scope !1818
  %i.og = load float, ptr %i.oc, align 4, !tbaa !20, !alias.scope !1818
  %i.oh = insertelement <4 x float> poison, float %i.od, i64 0
  %i.oi = insertelement <4 x float> %i.oh, float %i.oe, i64 1
  %i.oj = insertelement <4 x float> %i.oi, float %i.of, i64 2
  %i.ok = insertelement <4 x float> %i.oj, float %i.og, i64 3
  %i.ol = fmul <4 x float> %broadcast.splat, %i.lq
  %i.om = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat92, <4 x float> %i.le, <4 x float> %i.ol)
  %i.on = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat94, <4 x float> %i.mc, <4 x float> %i.om)
  %i.oo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat96, <4 x float> %i.mo, <4 x float> %i.on)
  %i.op = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat98, <4 x float> %i.na, <4 x float> %i.oo)
  %i.oq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat100, <4 x float> %i.nm, <4 x float> %i.op)
  %i.or = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat102, <4 x float> %i.ny, <4 x float> %i.oq)
  %i.os = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat104, <4 x float> %i.ok, <4 x float> %i.or)
  %i.ot = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index
  store <4 x float> %i.os, ptr %i.ot, align 4, !tbaa !20, !alias.scope !1819, !noalias !1820
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ou = icmp eq i64 %index.next, %n.vec
  br i1 %i.ou, label %middle.block, label %vector.body, !llvm.loop !1779

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.us.i.i.i.preheader: ; preds = %vector.memcheck, %.lr.ph.split.us.i.i.i, %middle.block
  %indvars.iv14.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.i.i ], [ %n.vec, %middle.block ]
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.us.i.i.i
  %indvars.iv14.i.i.i = phi i64 [ %indvars.iv.next15.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.us.i.i.i ], [ %indvars.iv14.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi1EEEfPKfiiiiiimmb.exit253.us.i.i.i.preheader ] ; 3 uses
  %i.ov = mul i64 %indvars.iv14.i.i.i, %i.fo
  %gep3.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.ov ; 3 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %gep3.i.i.i, i64 %i.fz ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %gep3.i.i.i, i64 %i.gd ; 2 uses
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %gep3.i.i.i, i64 %i.ge ; 2 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.gd ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %i.ge ; 2 uses
  %i.pb = getelementptr inbounds [4 x i8], ptr %i.ox, i64 %i.fp
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !20
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.ox, i64 %i.fr
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !20
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.oy, i64 %i.fp
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !20
  %i.ph = getelementptr inbounds [4 x i8], ptr %i.oy, i64 %i.fr
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !20
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi2EEEvPKfSA_PfiiiiiiiibEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_:bb.a
  br label %bb.b

._crit_edge7.i.i.i:                               ; preds = %._crit_edge.i.i.i, %.lr.ph10.split.i.i.i
  %i.cm = phi i32 [ %i.bd, %.lr.ph10.split.i.i.i ], [ %i.amd, %._crit_edge.i.i.i ]
  %i.cn = phi i32 [ %i.be, %.lr.ph10.split.i.i.i ], [ %i.amd, %._crit_edge.i.i.i ]
  %i.co = add nsw i32 %.08.i.i.i, 1               ; 2 uses
  %exitcond21.not.i.i.i = icmp eq i32 %i.co, %.val3
  br i1 %exitcond21.not.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn12cpu_baseline16gs_simd_internalL10bilinear3DILi2EEEvPKfS6_PfiiiiiiiibEUlRKNS0_5RangeEE_JSA_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %.lr.ph10.split.i.i.i, !llvm.loop !1821

bb.b:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph6.i.i.i
  %i.cp = phi i32 [ %i.bd, %.lr.ph6.i.i.i ], [ %i.amd, %._crit_edge.i.i.i ] ; 3 uses
  %indvars.iv18.i.i.i = phi i64 [ 0, %.lr.ph6.i.i.i ], [ %indvars.iv.next19.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv18.i.i.i, 12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i.i ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !20
  %i.cs = load float, ptr %i.ce, align 4, !tbaa !20
  %i.ct = load float, ptr %i.cf, align 4, !tbaa !20
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cs, float %i.ct) ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.cw = load float, ptr %i.cg, align 4, !tbaa !20
  %i.cx = load float, ptr %i.ch, align 4, !tbaa !20
  %i.cy = load float, ptr %i.ci, align 4, !tbaa !20
  %i.cz = load float, ptr %i.cj, align 4, !tbaa !20
  %i.da = load <2 x float>, ptr %i.cv, align 4, !tbaa !20
  %i.db = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.cy, i64 1
  %i.dd = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %i.cz, i64 1
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.dc, <2 x float> %i.de) ; 2 uses
  %i.dg = tail call float @llvm.floor.f32(float %i.cu)
  %i.dh = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.di = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dh) ; 5 uses
  %i.dj = extractelement <2 x float> %i.df, i64 0 ; 2 uses
  %i.dk = tail call float @llvm.floor.f32(float %i.dj)
  %i.dl = insertelement <4 x float> poison, float %i.dk, i64 0
  %i.dm = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dl) ; 6 uses
  %i.dn = extractelement <2 x float> %i.df, i64 1 ; 2 uses
  %i.do = tail call float @llvm.floor.f32(float %i.dn)
  %i.dp = insertelement <4 x float> poison, float %i.do, i64 0
  %i.dq = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dp) ; 5 uses
  %i.dr = sitofp i32 %i.di to float               ; 2 uses
  %i.ds = fsub float %i.cu, %i.dr                 ; 3 uses
  %i.dt = sitofp i32 %i.dm to float               ; 2 uses
  %i.du = fsub float %i.dj, %i.dt                 ; 3 uses
  %i.dv = sitofp i32 %i.dq to float               ; 2 uses
  %i.dw = fsub float %i.dn, %i.dv                 ; 5 uses
  %i.dx = fsub float 1.000000e+00, %i.ds          ; 2 uses
  %i.dy = fsub float 1.000000e+00, %i.du          ; 2 uses
  %i.dz = fmul float %i.dx, %i.dy                 ; 2 uses
  %i.ea = fsub float 1.000000e+00, %i.dw          ; 4 uses
  %i.eb = fmul float %i.dz, %i.ea                 ; 3 uses
  %i.ec = fmul float %i.ds, %i.dy                 ; 2 uses
  %i.ed = fmul float %i.ec, %i.ea                 ; 3 uses
  %i.ee = fmul float %i.dx, %i.du                 ; 2 uses
  %i.ef = fmul float %i.ee, %i.ea                 ; 3 uses
  %i.eg = fmul float %i.ds, %i.du                 ; 2 uses
  %i.eh = fmul float %i.eg, %i.ea                 ; 3 uses
  %i.ei = fmul float %i.dw, %i.dz                 ; 3 uses
  %i.ej = fmul float %i.dw, %i.ec                 ; 3 uses
  %i.ek = fmul float %i.ee, %i.dw                 ; 3 uses
  %i.el = fmul float %i.eg, %i.dw                 ; 3 uses
  %i.em = or i32 %i.dm, %i.di
  %i.en = or i32 %i.em, %i.dq
  %or.cond3.i.i.i = icmp sgt i32 %i.en, -1
  br i1 %or.cond3.i.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.eo = add nuw nsw i32 %i.di, 1
  %i.ep = load ptr, ptr %i.ar, align 8, !tbaa !1857, !nonnull !79, !align !113
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !14
  %i.er = icmp slt i32 %i.eo, %i.eq
  br i1 %i.er, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.es = add nuw nsw i32 %i.dm, 1
  %i.et = load ptr, ptr %i.as, align 8, !tbaa !1858, !nonnull !79, !align !113
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !14
  %i.ev = icmp slt i32 %i.es, %i.eu
  br i1 %i.ev, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ew = add nuw nsw i32 %i.dq, 1
  %i.ex = load ptr, ptr %i.at, align 8, !tbaa !1859, !nonnull !79, !align !113
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !14
  %i.ez = icmp slt i32 %i.ew, %i.ey
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.fa = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ %i.ez, %bb.e ]
  %i.fb = load i32, ptr %i.ck, align 4, !tbaa !14 ; 3 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.fd = load ptr, ptr %i.av, align 8, !tbaa !1860, !nonnull !79, !align !114
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !18 ; 7 uses
  %i.ff = sext i32 %i.di to i64                   ; 21 uses
  %i.fg = add i32 %i.di, 1                        ; 2 uses
  %i.fh = sext i32 %i.fg to i64                   ; 21 uses
  %i.fi = load ptr, ptr %i.az, align 8, !tbaa !1861, !nonnull !79, !align !114
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !18 ; 3 uses
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.cc, i64 %indvars.iv18.i.i.i ; 5 uses
  br i1 %i.fa, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.fk = add i32 %i.dm, 1
  %i.fl = sext i32 %i.fk to i64                   ; 2 uses
  %i.fm = sext i32 %i.dm to i64                   ; 2 uses
  %i.fn = sext i32 %i.dq to i64                   ; 3 uses
  %i.fo = load ptr, ptr %i.aw, align 8, !tbaa !1862, !nonnull !79, !align !114
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !18 ; 8 uses
  %i.fq = mul i64 %i.fp, %i.fn
  %invariant.gep2.i.i.i = getelementptr [4 x i8], ptr %i.bo, i64 %i.fq ; 5 uses
  %i.fr = load ptr, ptr %i.ax, align 8, !tbaa !1863, !nonnull !79, !align !114
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !18 ; 4 uses
  %i.ft = mul i64 %i.fs, %i.fm                    ; 10 uses
  %i.fu = mul i64 %i.fs, %i.fl                    ; 10 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.fb to i64 ; 5 uses
  %min.iters.check = icmp ugt i32 %i.fb, 15
  %ident.check.not = icmp eq i64 %i.fj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i.preheader

vector.memcheck:                                  ; preds = %.lr.ph.split.us.i.i.i
  %i.fv = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  %scevgep = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %i.fv
  %i.fw = shl i64 %i.fe, 2
  %i.fx = add nsw i64 %wide.trip.count.i.i.i, -1
  %i.fy = mul i64 %i.fw, %i.fx                    ; 8 uses
  %i.fz = shl i64 %i.fs, 2
  %i.ga = mul i64 %i.fz, %i.fl                    ; 8 uses
  %i.gb = shl nsw i64 %i.fn, 2
  %i.gc = add nsw i64 %i.gb, 4
  %i.gd = mul i64 %i.fp, %i.gc                    ; 8 uses
  %i.ge = shl nsw i64 %i.fh, 2                    ; 8 uses
  %i.gf = getelementptr i8, ptr %scevgep55, i64 %i.fy
  %i.gg = getelementptr i8, ptr %i.gf, i64 %i.ga
  %i.gh = getelementptr i8, ptr %i.gg, i64 %i.gd
  %scevgep56 = getelementptr i8, ptr %i.gh, i64 %i.ge ; 4 uses
  %i.gi = getelementptr i8, ptr %scevgep57, i64 %i.ga
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.gd
  %scevgep58 = getelementptr i8, ptr %i.gj, i64 %i.ge ; 4 uses
  %i.gk = shl nsw i64 %i.ff, 2                    ; 8 uses
  %i.gl = getelementptr i8, ptr %scevgep60, i64 %i.fy
  %i.gm = getelementptr i8, ptr %i.gl, i64 %i.ga
  %i.gn = getelementptr i8, ptr %i.gm, i64 %i.gd
  %scevgep61 = getelementptr i8, ptr %i.gn, i64 %i.gk ; 4 uses
  %i.go = getelementptr i8, ptr %scevgep62, i64 %i.ga
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.gd
  %scevgep63 = getelementptr i8, ptr %i.gp, i64 %i.gk ; 4 uses
  %i.gq = shl i64 %i.fs, 2
  %i.gr = mul i64 %i.gq, %i.fm                    ; 8 uses
  %i.gs = getelementptr i8, ptr %scevgep67, i64 %i.fy
  %i.gt = getelementptr i8, ptr %i.gs, i64 %i.gr
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.gd
  %scevgep68 = getelementptr i8, ptr %i.gu, i64 %i.ge ; 4 uses
  %i.gv = getelementptr i8, ptr %scevgep69, i64 %i.gr
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gd
  %scevgep70 = getelementptr i8, ptr %i.gw, i64 %i.ge ; 4 uses
  %i.gx = getelementptr i8, ptr %scevgep74, i64 %i.fy
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.gr
  %i.gz = getelementptr i8, ptr %i.gy, i64 %i.gd
  %scevgep75 = getelementptr i8, ptr %i.gz, i64 %i.gk ; 4 uses
  %i.ha = getelementptr i8, ptr %scevgep76, i64 %i.gr
  %i.hb = getelementptr i8, ptr %i.ha, i64 %i.gd
  %scevgep77 = getelementptr i8, ptr %i.hb, i64 %i.gk ; 4 uses
  %i.hc = shl i64 %i.fp, 2
  %i.hd = mul i64 %i.hc, %i.fn                    ; 8 uses
  %i.he = getelementptr i8, ptr %scevgep81, i64 %i.fy
  %i.hf = getelementptr i8, ptr %i.he, i64 %i.hd
  %i.hg = getelementptr i8, ptr %i.hf, i64 %i.ga
  %scevgep82 = getelementptr i8, ptr %i.hg, i64 %i.ge ; 4 uses
  %i.hh = getelementptr i8, ptr %scevgep83, i64 %i.hd
  %i.hi = getelementptr i8, ptr %i.hh, i64 %i.ga
  %scevgep84 = getelementptr i8, ptr %i.hi, i64 %i.ge ; 4 uses
  %i.hj = getelementptr i8, ptr %scevgep88, i64 %i.fy
  %i.hk = getelementptr i8, ptr %i.hj, i64 %i.hd
  %i.hl = getelementptr i8, ptr %i.hk, i64 %i.ga
  %scevgep89 = getelementptr i8, ptr %i.hl, i64 %i.gk ; 4 uses
  %i.hm = getelementptr i8, ptr %scevgep90, i64 %i.hd
  %i.hn = getelementptr i8, ptr %i.hm, i64 %i.ga
  %scevgep91 = getelementptr i8, ptr %i.hn, i64 %i.gk ; 4 uses
  %i.ho = getelementptr i8, ptr %scevgep95, i64 %i.fy
  %i.hp = getelementptr i8, ptr %i.ho, i64 %i.hd
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.gr
  %scevgep96 = getelementptr i8, ptr %i.hq, i64 %i.ge ; 4 uses
  %i.hr = getelementptr i8, ptr %scevgep97, i64 %i.hd
  %i.hs = getelementptr i8, ptr %i.hr, i64 %i.gr
  %scevgep98 = getelementptr i8, ptr %i.hs, i64 %i.ge ; 4 uses
  %i.ht = getelementptr i8, ptr %scevgep102, i64 %i.fy
  %i.hu = getelementptr i8, ptr %i.ht, i64 %i.hd
  %i.hv = getelementptr i8, ptr %i.hu, i64 %i.gr
  %scevgep103 = getelementptr i8, ptr %i.hv, i64 %i.gk ; 4 uses
  %i.hw = getelementptr i8, ptr %scevgep104, i64 %i.hd
  %i.hx = getelementptr i8, ptr %i.hw, i64 %i.gr
  %scevgep105 = getelementptr i8, ptr %i.hx, i64 %i.gk ; 4 uses
  %i.hy = icmp ult ptr %scevgep56, %scevgep58
  %umin = select i1 %i.hy, ptr %scevgep56, ptr %scevgep58
  %i.hz = icmp ugt ptr %scevgep56, %scevgep58
  %umax = select i1 %i.hz, ptr %scevgep56, ptr %scevgep58
  %i.ia = icmp ult ptr %scevgep61, %scevgep63
  %umin64 = select i1 %i.ia, ptr %scevgep61, ptr %scevgep63
  %i.ib = icmp ugt ptr %scevgep61, %scevgep63
  %umax65 = select i1 %i.ib, ptr %scevgep61, ptr %scevgep63
  %i.ic = icmp ult ptr %scevgep68, %scevgep70
  %umin71 = select i1 %i.ic, ptr %scevgep68, ptr %scevgep70
  %i.id = icmp ugt ptr %scevgep68, %scevgep70
  %umax72 = select i1 %i.id, ptr %scevgep68, ptr %scevgep70
  %i.ie = icmp ult ptr %scevgep75, %scevgep77
  %umin78 = select i1 %i.ie, ptr %scevgep75, ptr %scevgep77
  %i.if = icmp ugt ptr %scevgep75, %scevgep77
  %umax79 = select i1 %i.if, ptr %scevgep75, ptr %scevgep77
  %i.ig = icmp ult ptr %scevgep82, %scevgep84
  %umin85 = select i1 %i.ig, ptr %scevgep82, ptr %scevgep84
  %i.ih = icmp ugt ptr %scevgep82, %scevgep84
  %umax86 = select i1 %i.ih, ptr %scevgep82, ptr %scevgep84
  %i.ii = icmp ult ptr %scevgep89, %scevgep91
  %umin92 = select i1 %i.ii, ptr %scevgep89, ptr %scevgep91
  %i.ij = icmp ugt ptr %scevgep89, %scevgep91
  %umax93 = select i1 %i.ij, ptr %scevgep89, ptr %scevgep91
  %i.ik = icmp ult ptr %scevgep96, %scevgep98
  %umin99 = select i1 %i.ik, ptr %scevgep96, ptr %scevgep98
  %i.il = icmp ugt ptr %scevgep96, %scevgep98
  %umax100 = select i1 %i.il, ptr %scevgep96, ptr %scevgep98
  %i.im = icmp ult ptr %scevgep103, %scevgep105
  %umin106 = select i1 %i.im, ptr %scevgep103, ptr %scevgep105
  %i.in = icmp ugt ptr %scevgep103, %scevgep105
  %umax107 = select i1 %i.in, ptr %scevgep103, ptr %scevgep105
  %2 = insertelement <8 x ptr> poison, ptr %umax, i64 0
  %i.io = insertelement <8 x ptr> %2, ptr %umax65, i64 1
  %3 = insertelement <8 x ptr> %i.io, ptr %umax72, i64 2
  %i.ip = insertelement <8 x ptr> %3, ptr %umax79, i64 3
  %i.iq = insertelement <8 x ptr> %i.ip, ptr %umax86, i64 4
  %i.ir = insertelement <8 x ptr> %i.iq, ptr %umax93, i64 5
  %i.is = insertelement <8 x ptr> %i.ir, ptr %umax100, i64 6
  %i.it = insertelement <8 x ptr> %i.is, ptr %umax107, i64 7
  %4 = getelementptr i8, <8 x ptr> %i.it, i64 4
  %i.iu = insertelement <8 x ptr> poison, ptr %invariant.gep.i.i.i, i64 0
  %5 = shufflevector <8 x ptr> %i.iu, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.iv = icmp ult <8 x ptr> %5, %4
  %i.iw = insertelement <8 x ptr> poison, ptr %umin, i64 0
  %i.ix = insertelement <8 x ptr> %i.iw, ptr %umin64, i64 1
  %i.iy = insertelement <8 x ptr> %i.ix, ptr %umin71, i64 2
  %i.iz = insertelement <8 x ptr> %i.iy, ptr %umin78, i64 3
  %i.ja = insertelement <8 x ptr> %i.iz, ptr %umin85, i64 4
  %i.jb = insertelement <8 x ptr> %i.ja, ptr %umin92, i64 5
  %i.jc = insertelement <8 x ptr> %i.jb, ptr %umin99, i64 6
  %i.jd = insertelement <8 x ptr> %i.jc, ptr %umin106, i64 7
  %i.je = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.jf = shufflevector <8 x ptr> %i.je, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.jg = icmp ult <8 x ptr> %i.jd, %i.jf
  %i.jh = and <8 x i1> %i.iv, %i.jg
  %i.ji = bitcast <8 x i1> %i.jh to i8
  %.not = icmp eq i8 %i.ji, 0
  br i1 %.not, label %vector.ph, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i.preheader

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ed, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert136 = insertelement <4 x float> poison, float %i.eb, i64 0
  %broadcast.splat137 = shufflevector <4 x float> %broadcast.splatinsert136, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert138 = insertelement <4 x float> poison, float %i.ef, i64 0
  %broadcast.splat139 = shufflevector <4 x float> %broadcast.splatinsert138, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert140 = insertelement <4 x float> poison, float %i.eh, i64 0
  %broadcast.splat141 = shufflevector <4 x float> %broadcast.splatinsert140, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert142 = insertelement <4 x float> poison, float %i.ei, i64 0
  %broadcast.splat143 = shufflevector <4 x float> %broadcast.splatinsert142, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert144 = insertelement <4 x float> poison, float %i.ej, i64 0
  %broadcast.splat145 = shufflevector <4 x float> %broadcast.splatinsert144, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert146 = insertelement <4 x float> poison, float %i.ek, i64 0
  %broadcast.splat147 = shufflevector <4 x float> %broadcast.splatinsert146, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert148 = insertelement <4 x float> poison, float %i.el, i64 0
  %broadcast.splat149 = shufflevector <4 x float> %broadcast.splatinsert148, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.jj = or disjoint i64 %index, 1
  %i.jk = or disjoint i64 %index, 2
  %i.jl = or disjoint i64 %index, 3
  %i.jm = mul i64 %index, %i.fe
  %i.jn = mul i64 %i.jj, %i.fe
  %i.jo = mul i64 %i.jk, %i.fe
  %i.jp = mul i64 %i.jl, %i.fe
  %i.jq = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.jm ; 3 uses
  %i.jr = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.jn ; 3 uses
  %i.js = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.jo ; 3 uses
  %i.jt = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.jp ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.fp ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.fp ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.fp ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.fp ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.ft ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.ft ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ft ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.ft ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.fu ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.fu ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.fu ; 2 uses
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.fu ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.ft ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.ft ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.ft ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.ft ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.fu ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.fu ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jw, i64 %i.fu ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.fu ; 2 uses
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.ff
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.ff
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.ff
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.ff
  %i.ks = load float, ptr %i.ko, align 4, !tbaa !20, !alias.scope !1864
  %i.kt = load float, ptr %i.kp, align 4, !tbaa !20, !alias.scope !1864
  %i.ku = load float, ptr %i.kq, align 4, !tbaa !20, !alias.scope !1864
  %i.kv = load float, ptr %i.kr, align 4, !tbaa !20, !alias.scope !1864
  %i.kw = insertelement <4 x float> poison, float %i.ks, i64 0
  %i.kx = insertelement <4 x float> %i.kw, float %i.kt, i64 1
  %i.ky = insertelement <4 x float> %i.kx, float %i.ku, i64 2
  %i.kz = insertelement <4 x float> %i.ky, float %i.kv, i64 3
  %i.la = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %i.fh
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.jz, i64 %i.fh
  %i.lc = getelementptr inbounds [4 x i8], ptr %i.ka, i64 %i.fh
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.fh
  %i.le = load float, ptr %i.la, align 4, !tbaa !20, !alias.scope !1865
  %i.lf = load float, ptr %i.lb, align 4, !tbaa !20, !alias.scope !1865
  %i.lg = load float, ptr %i.lc, align 4, !tbaa !20, !alias.scope !1865
  %i.lh = load float, ptr %i.ld, align 4, !tbaa !20, !alias.scope !1865
  %i.li = insertelement <4 x float> poison, float %i.le, i64 0
  %i.lj = insertelement <4 x float> %i.li, float %i.lf, i64 1
  %i.lk = insertelement <4 x float> %i.lj, float %i.lg, i64 2
  %i.ll = insertelement <4 x float> %i.lk, float %i.lh, i64 3
  %i.lm = getelementptr inbounds [4 x i8], ptr %i.kc, i64 %i.ff
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.ff
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.ff
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.ff
  %i.lq = load float, ptr %i.lm, align 4, !tbaa !20, !alias.scope !1866
  %i.lr = load float, ptr %i.ln, align 4, !tbaa !20, !alias.scope !1866
  %i.ls = load float, ptr %i.lo, align 4, !tbaa !20, !alias.scope !1866
  %i.lt = load float, ptr %i.lp, align 4, !tbaa !20, !alias.scope !1866
  %i.lu = insertelement <4 x float> poison, float %i.lq, i64 0
  %i.lv = insertelement <4 x float> %i.lu, float %i.lr, i64 1
  %i.lw = insertelement <4 x float> %i.lv, float %i.ls, i64 2
  %i.lx = insertelement <4 x float> %i.lw, float %i.lt, i64 3
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.kc, i64 %i.fh
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.fh
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %i.fh
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.fh
  %i.mc = load float, ptr %i.ly, align 4, !tbaa !20, !alias.scope !1867
  %i.md = load float, ptr %i.lz, align 4, !tbaa !20, !alias.scope !1867
  %i.me = load float, ptr %i.ma, align 4, !tbaa !20, !alias.scope !1867
  %i.mf = load float, ptr %i.mb, align 4, !tbaa !20, !alias.scope !1867
  %i.mg = insertelement <4 x float> poison, float %i.mc, i64 0
  %i.mh = insertelement <4 x float> %i.mg, float %i.md, i64 1
  %i.mi = insertelement <4 x float> %i.mh, float %i.me, i64 2
  %i.mj = insertelement <4 x float> %i.mi, float %i.mf, i64 3
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.ff
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.ff
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.ff
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.ff
  %i.mo = load float, ptr %i.mk, align 4, !tbaa !20, !alias.scope !1868
  %i.mp = load float, ptr %i.ml, align 4, !tbaa !20, !alias.scope !1868
  %i.mq = load float, ptr %i.mm, align 4, !tbaa !20, !alias.scope !1868
  %i.mr = load float, ptr %i.mn, align 4, !tbaa !20, !alias.scope !1868
  %i.ms = insertelement <4 x float> poison, float %i.mo, i64 0
  %i.mt = insertelement <4 x float> %i.ms, float %i.mp, i64 1
  %i.mu = insertelement <4 x float> %i.mt, float %i.mq, i64 2
  %i.mv = insertelement <4 x float> %i.mu, float %i.mr, i64 3
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.fh
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.fh
  %i.my = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.fh
  %i.mz = getelementptr inbounds [4 x i8], ptr %i.kj, i64 %i.fh
  %i.na = load float, ptr %i.mw, align 4, !tbaa !20, !alias.scope !1869
  %i.nb = load float, ptr %i.mx, align 4, !tbaa !20, !alias.scope !1869
  %i.nc = load float, ptr %i.my, align 4, !tbaa !20, !alias.scope !1869
  %i.nd = load float, ptr %i.mz, align 4, !tbaa !20, !alias.scope !1869
  %i.ne = insertelement <4 x float> poison, float %i.na, i64 0
  %i.nf = insertelement <4 x float> %i.ne, float %i.nb, i64 1
  %i.ng = insertelement <4 x float> %i.nf, float %i.nc, i64 2
  %i.nh = insertelement <4 x float> %i.ng, float %i.nd, i64 3
  %i.ni = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.ff
  %i.nj = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.ff
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.ff
  %i.nl = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.ff
  %i.nm = load float, ptr %i.ni, align 4, !tbaa !20, !alias.scope !1870
  %i.nn = load float, ptr %i.nj, align 4, !tbaa !20, !alias.scope !1870
  %i.no = load float, ptr %i.nk, align 4, !tbaa !20, !alias.scope !1870
  %i.np = load float, ptr %i.nl, align 4, !tbaa !20, !alias.scope !1870
  %i.nq = insertelement <4 x float> poison, float %i.nm, i64 0
  %i.nr = insertelement <4 x float> %i.nq, float %i.nn, i64 1
  %i.ns = insertelement <4 x float> %i.nr, float %i.no, i64 2
  %i.nt = insertelement <4 x float> %i.ns, float %i.np, i64 3
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %i.fh
  %i.nv = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.fh
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.fh
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.kn, i64 %i.fh
  %i.ny = load float, ptr %i.nu, align 4, !tbaa !20, !alias.scope !1871
  %i.nz = load float, ptr %i.nv, align 4, !tbaa !20, !alias.scope !1871
  %i.oa = load float, ptr %i.nw, align 4, !tbaa !20, !alias.scope !1871
  %i.ob = load float, ptr %i.nx, align 4, !tbaa !20, !alias.scope !1871
  %i.oc = insertelement <4 x float> poison, float %i.ny, i64 0
  %i.od = insertelement <4 x float> %i.oc, float %i.nz, i64 1
  %i.oe = insertelement <4 x float> %i.od, float %i.oa, i64 2
  %i.of = insertelement <4 x float> %i.oe, float %i.ob, i64 3
  %i.og = fmul <4 x float> %broadcast.splat, %i.ll
  %i.oh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat137, <4 x float> %i.kz, <4 x float> %i.og)
  %i.oi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat139, <4 x float> %i.lx, <4 x float> %i.oh)
  %i.oj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat141, <4 x float> %i.mj, <4 x float> %i.oi)
  %i.ok = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat143, <4 x float> %i.mv, <4 x float> %i.oj)
  %i.ol = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat145, <4 x float> %i.nh, <4 x float> %i.ok)
  %i.om = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat147, <4 x float> %i.nt, <4 x float> %i.ol)
  %i.on = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat149, <4 x float> %i.of, <4 x float> %i.om)
  %i.oo = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index
  store <4 x float> %i.on, ptr %i.oo, align 4, !tbaa !20, !alias.scope !1872, !noalias !1873
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.op = icmp eq i64 %index.next, %n.vec
  br i1 %i.op, label %middle.block, label %vector.body, !llvm.loop !1832

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i.preheader

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i.preheader: ; preds = %vector.memcheck, %.lr.ph.split.us.i.i.i, %middle.block
  %indvars.iv15.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.i.i.i ], [ %n.vec, %middle.block ]
  br label %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i

_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i: ; preds = %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i.preheader, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i
  %indvars.iv15.i.i.i = phi i64 [ %indvars.iv.next16.i.i.i, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i ], [ %indvars.iv15.i.i.i.ph, %_ZN2cv3dnn12cpu_baseline16gs_simd_internalL10gs_fetch3DILi2EEEfPKfiiiiiimmb.exit309.us.i.i.i.preheader ] ; 3 uses
  %i.oq = mul i64 %indvars.iv15.i.i.i, %i.fe
  %gep3.i.i.i = getelementptr [4 x i8], ptr %invariant.gep2.i.i.i, i64 %i.oq ; 3 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %gep3.i.i.i, i64 %i.fp ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %gep3.i.i.i, i64 %i.ft ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %gep3.i.i.i, i64 %i.fu ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.ft ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %i.fu ; 2 uses
  %i.ow = getelementptr inbounds [4 x i8], ptr %i.os, i64 %i.ff
  %i.ox = load float, ptr %i.ow, align 4, !tbaa !20
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.os, i64 %i.fh
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !20
end_hunk_3
