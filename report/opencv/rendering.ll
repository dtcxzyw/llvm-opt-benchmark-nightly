Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rendering?download=true
inline.NumInlined: 324
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2cvL25triangleRasterizeInternalERKNS_11_InputArrayES2_S2_RNS_3MatES4_S2_dddRKNS_25TriangleRasterizeSettingsE:bb.a
  %i.on = load ptr, ptr %i.me, align 8, !tbaa !36
  %i.oo = load i64, ptr %i.mf, align 8, !tbaa !31
  %i.op = sext i32 %i.ol to i64
  %i.oq = mul i64 %i.oo, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 %i.oq
  %i.os = sext i32 %.recomposed to i64
  %i.ot = getelementptr inbounds [12 x i8], ptr %i.or, i64 %i.os
  br label %_ZN2cv3VecIfLi4EEC2ESt16initializer_listIfE.exit

_ZN2cv3VecIfLi4EEC2ESt16initializer_listIfE.exit: ; preds = %bb.fm, %bb.fl, %bb.fj, %bb.fh
  %.0.i = phi ptr [ %i.nv, %bb.fh ], [ %i.oc, %bb.fj ], [ %i.oi, %bb.fl ], [ %i.ot, %bb.fm ] ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.ov = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !39 ; 3 uses
  %i.ox = load float, ptr %i.ou, align 4, !tbaa !39 ; 3 uses
  %i.oy = load float, ptr %.0.i, align 4, !tbaa !39 ; 3 uses
  %i.oz = insertelement <2 x float> poison, float %i.ow, i64 0
  %i.pa = shufflevector <2 x float> %i.oz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pb = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.kx, <2 x float> %i.pa, <2 x float> %i.ky)
  %i.pc = insertelement <2 x float> poison, float %i.ox, i64 0
  %i.pd = shufflevector <2 x float> %i.pc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pe = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.kw, <2 x float> %i.pd, <2 x float> %i.pb)
  %i.pf = insertelement <2 x float> poison, float %i.oy, i64 0
  %i.pg = shufflevector <2 x float> %i.pf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ph = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.kv, <2 x float> %i.pg, <2 x float> %i.pe)
  %i.pi = call noundef float @llvm.fma.f32(float %i.la, float %i.ow, float %i.lb)
  %i.pj = call noundef float @llvm.fma.f32(float %i.mp, float %i.ox, float %i.pi)
  %i.pk = call noundef float @llvm.fma.f32(float %i.mo, float %i.oy, float %i.pj)
  %i.pl = call noundef float @llvm.fma.f32(float %i.mr, float %i.ow, float %i.le)
  %i.pm = call noundef float @llvm.fma.f32(float %i.mq, float %i.ox, float %i.pl)
  %i.pn = call noundef float @llvm.fma.f32(float %i.lc, float %i.oy, float %i.pm)
  %i.po = fdiv float 1.000000e+00, %i.pn          ; 3 uses
  %i.pp = insertelement <2 x float> poison, float %i.po, i64 0
  %i.pq = shufflevector <2 x float> %i.pp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pr = fmul <2 x float> %i.ph, %i.pq
  %i.ps = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.pr, <2 x float> %i.mh, <2 x float> %i.mh)
  %i.pt = fmul float %i.pk, %i.po
  %i.pu = call noundef float @llvm.fma.f32(float %i.pt, float 5.000000e-01, float 5.000000e-01)
  %i.pv = load i32, ptr %i.mi, align 4, !tbaa !72
  %i.pw = icmp slt i32 %i.pv, 2
  br i1 %i.pw, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %_ZN2cv3VecIfLi4EEC2ESt16initializer_listIfE.exit
  %i.px = load ptr, ptr %i.mm, align 8, !tbaa !36
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %indvars.iv
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit

bb.fo:                                            ; preds = %_ZN2cv3VecIfLi4EEC2ESt16initializer_listIfE.exit
  %i.pz = load i32, ptr %48, align 8, !tbaa !27
  %i.qa = and i32 %i.pz, 16384
  %i.qb = icmp ne i32 %i.qa, 0
  %i.qc = load i32, ptr %i.mj, align 4
  %i.qd = icmp eq i32 %i.qc, 1
  %or.cond.i272 = select i1 %i.qb, i1 true, i1 %i.qd
  br i1 %or.cond.i272, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.qe = load ptr, ptr %i.mm, align 8, !tbaa !36
  %i.qf = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %indvars.iv
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit

bb.fq:                                            ; preds = %bb.fo
  %i.qg = load i32, ptr %i.mk, align 8, !tbaa !33
  %i.qh = icmp eq i32 %i.qg, 1
  br i1 %i.qh, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.qi = load ptr, ptr %i.mm, align 8, !tbaa !36
  %i.qj = load i64, ptr %i.mn, align 8, !tbaa !31
  %i.qk = mul i64 %i.qj, %indvars.iv
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qk
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit

bb.fs:                                            ; preds = %bb.fq
  %i.qm = load i32, ptr %i.ml, align 4, !tbaa !35 ; 3 uses
  %i.qn = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.qo = sdiv i32 %i.qn, %i.qm                   ; 2 uses
  %i.qp = mul nsw i32 %i.qo, %i.qm                ; 0 uses
  %.recomposed538 = srem i32 %i.qn, %i.qm
  %i.qq = load ptr, ptr %i.mm, align 8, !tbaa !36
  %i.qr = load i64, ptr %i.mn, align 8, !tbaa !31
  %i.qs = sext i32 %i.qo to i64
  %i.qt = mul i64 %i.qr, %i.qs
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qt
  %i.qv = sext i32 %.recomposed538 to i64
  %i.qw = getelementptr inbounds [16 x i8], ptr %i.qu, i64 %i.qv
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit:         ; preds = %bb.fn, %bb.fp, %bb.fr, %bb.fs
  %.0.i273 = phi ptr [ %i.py, %bb.fn ], [ %i.qf, %bb.fp ], [ %i.ql, %bb.fr ], [ %i.qw, %bb.fs ] ; 3 uses
  %i.qx = shufflevector <2 x float> %i.ps, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qx, ptr %.0.i273, align 4
  %.sroa.5480.0..0.i273.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i273, i64 8
  store float %i.pu, ptr %.sroa.5480.0..0.i273.sroa_idx, align 4
  %.sroa.6481.0..0.i273.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i273, i64 12
  store float %i.po, ptr %.sroa.6481.0..0.i273.sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader437, label %bb.fg, !llvm.loop !67

._crit_edge:                                      ; preds = %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit, %.preheader437
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  br label %bb.if

bb.ft:                                            ; preds = %.lr.ph447, %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit
  %indvars.iv461 = phi i64 [ 0, %.lr.ph447 ], [ %indvars.iv.next462, %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit ] ; 5 uses
  %i.qy = load i32, ptr %i.mt, align 4, !tbaa !72
  %i.qz = icmp slt i32 %i.qy, 2
  br i1 %i.qz, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.ra = load ptr, ptr %i.mx, align 8, !tbaa !36
  %i.rb = getelementptr inbounds nuw [12 x i8], ptr %i.ra, i64 %indvars.iv461
  br label %.preheader.preheader

bb.fv:                                            ; preds = %bb.ft
  %i.rc = load i32, ptr %27, align 8, !tbaa !27
  %i.rd = and i32 %i.rc, 16384
  %i.re = icmp ne i32 %i.rd, 0
  %i.rf = load i32, ptr %i.mu, align 4
  %i.rg = icmp eq i32 %i.rf, 1
  %or.cond.i274 = select i1 %i.re, i1 true, i1 %i.rg
  br i1 %or.cond.i274, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.rh = load ptr, ptr %i.mx, align 8, !tbaa !36
  %i.ri = getelementptr inbounds nuw [12 x i8], ptr %i.rh, i64 %indvars.iv461
  br label %.preheader.preheader

bb.fx:                                            ; preds = %bb.fv
  %i.rj = load i32, ptr %i.mv, align 8, !tbaa !33
  %i.rk = icmp eq i32 %i.rj, 1
  br i1 %i.rk, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.rl = load ptr, ptr %i.mx, align 8, !tbaa !36
  %i.rm = load i64, ptr %i.my, align 8, !tbaa !31
  %i.rn = mul i64 %i.rm, %indvars.iv461
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rl, i64 %i.rn
  br label %.preheader.preheader

bb.fz:                                            ; preds = %bb.fx
  %i.rp = load i32, ptr %i.mw, align 4, !tbaa !35 ; 3 uses
  %i.rq = trunc nuw nsw i64 %indvars.iv461 to i32 ; 2 uses
  %i.rr = sdiv i32 %i.rq, %i.rp                   ; 2 uses
  %i.rs = mul nsw i32 %i.rr, %i.rp                ; 0 uses
  %.recomposed539 = srem i32 %i.rq, %i.rp
  %i.rt = load ptr, ptr %i.mx, align 8, !tbaa !36
  %i.ru = load i64, ptr %i.my, align 8, !tbaa !31
  %i.rv = sext i32 %i.rr to i64
  %i.rw = mul i64 %i.ru, %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rw
  %i.ry = sext i32 %.recomposed539 to i64
  %i.rz = getelementptr inbounds [12 x i8], ptr %i.rx, i64 %i.ry
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.fz, %bb.fy, %bb.fw, %bb.fu
  %.0.i275 = phi ptr [ %i.rb, %bb.fu ], [ %i.ri, %bb.fw ], [ %i.ro, %bb.fy ], [ %i.rz, %bb.fz ] ; 3 uses
  %i.sa = load i32, ptr %.0.i275, align 4, !tbaa !33 ; 10 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.0.i275, i64 4
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !33 ; 10 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.0.i275, i64 8
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !33 ; 10 uses
  %i.sf = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %26)
          to label %bb.gk unwind label %bb.id

bb.ga:                                            ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit286.2
  %i.sg = icmp eq i64 %.sroa.3.0.extract.shift.i, 2
  %i.sh = fcmp oge float %i.aed, 0.000000e+00
  %or.cond3.i = select i1 %i.sg, i1 %i.sh, i1 false
  br i1 %or.cond3.i, label %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.si = call noundef float @llvm.fabs.f32(float %i.aed)
  %i.sj = fpext float %i.si to double
  %i.sk = fcmp olt double %i.sj, f0x3EB0C6F7A0B5ED8D
  br i1 %i.sk, label %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit, label %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit.i

_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit.i: ; preds = %bb.gb
  %i.sl = fdiv float 1.000000e+00, %i.aed
  %i.sm = icmp slt i32 %.sroa.speculated.i, %.sroa.speculated200.i
  br i1 %i.sm, label %.preheader.lr.ph.i, label %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit

.preheader.lr.ph.i:                               ; preds = %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit.i
  %i.sn = icmp slt i32 %.sroa.speculated167.i, %.sroa.speculated203.i
  %i.so = fneg float %i.ady
  br i1 %i.sn, label %.preheader.preheader.i, label %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.sp = zext nneg i32 %.sroa.speculated167.i to i64
  %i.sq = zext nneg i32 %.sroa.speculated.i to i64
  %i.sr = zext nneg i32 %.sroa.speculated200.i to i64
  %sext.i = zext nneg i32 %.sroa.speculated203.i to i64
  %49 = insertelement <2 x float> poison, float %.sroa.13.16.copyload, i64 0
  %50 = insertelement <2 x float> %49, float %.sroa.8.0.copyload, i64 1
  %i.ss = insertelement <2 x float> poison, float %i.sl, i64 0
  %51 = shufflevector <2 x float> %i.ss, <2 x float> poison, <2 x i32> zeroinitializer
  %i.st = insertelement <2 x float> poison, float %.sroa.8.0.1, i64 0
  %52 = insertelement <2 x float> %i.st, float %.sroa.8.0, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv254.i = phi i64 [ %i.sq, %.preheader.preheader.i ], [ %indvars.iv.next255.i, %._crit_edge.i ] ; 2 uses
  %i.su = trunc nuw nsw i64 %indvars.iv254.i to i32 ; 2 uses
  %i.sv = uitofp nneg i32 %i.su to float
  %i.sw = fadd float %i.sv, 5.000000e-01
  %i.sx = fsub float %i.sw, %i.adl                ; 2 uses
  %i.sy = fmul float %i.sx, %i.adz
  %i.sz = xor i32 %i.su, -1
  %i.ta = add i32 %i.adc, %i.sz
  %i.tb = sext i32 %i.ta to i64                   ; 2 uses
  %i.tc = insertelement <2 x float> poison, float %i.sx, i64 0
  %i.td = insertelement <2 x float> poison, float %i.sy, i64 1
  br label %bb.gc

._crit_edge.i:                                    ; preds = %.noexc279
  %indvars.iv.next255.i = add nuw nsw i64 %indvars.iv254.i, 1 ; 2 uses
  %i.te = icmp samesign ult i64 %indvars.iv.next255.i, %i.sr
  br i1 %i.te, label %.preheader.i, label %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit, !llvm.loop !68

bb.gc:                                            ; preds = %.noexc279, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.sp, %.preheader.i ], [ %indvars.iv.next.i, %.noexc279 ] ; 4 uses
  %i.tf = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.tg = uitofp nneg i32 %i.tf to float
  %i.th = fadd float %i.tg, 5.000000e-01
  %i.ti = fsub float %i.th, %i.adk                ; 2 uses
  %i.tj = fmul float %i.ti, %i.so
  %i.tk = insertelement <2 x float> %i.tc, float %i.ti, i64 1
  %i.tl = insertelement <2 x float> %i.td, float %i.tj, i64 0
  %i.tm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tk, <2 x float> %i.adx, <2 x float> %i.tl)
  %i.tn = fmul <2 x float> %51, %i.tm             ; 3 uses
  %i.to = extractelement <2 x float> %i.tn, i64 1 ; 4 uses
  %i.tp = fsub float 1.000000e+00, %i.to
  %i.tq = extractelement <2 x float> %i.tn, i64 0 ; 3 uses
  %i.tr = fsub float %i.tp, %i.tq                 ; 4 uses
  %i.ts = fcmp ult float %i.to, 0.000000e+00
  %i.tt = fcmp ult float %i.tq, 0.000000e+00
  %i.tu = fcmp ult float %i.tr, 0.000000e+00
  %i.tv = or i1 %i.tt, %i.tu
  %or.cond234.i = select i1 %i.ts, i1 true, i1 %i.tv
  br i1 %or.cond234.i, label %.noexc279, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.tw = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %.noexc278 unwind label %bb.gj

.noexc278:                                        ; preds = %bb.gd
  br i1 %i.tw, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %.noexc278
  %i.tx = load i32, ptr %i.nl, align 4, !tbaa !72
  %i.ty = icmp slt i32 %i.tx, 2
  %i.tz = load ptr, ptr %i.nm, align 8, !tbaa !36
  %i.ua = load i64, ptr %i.nn, align 8
  %i.ub = mul i64 %i.ua, %i.tb
  %.sink.idx.i.i = select i1 %i.ty, i64 0, i64 %i.ub
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.tz, i64 %.sink.idx.i.i
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %indvars.iv.i ; 2 uses
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !39
  %i.ue = fmul float %.sroa.12.16.copyload, %i.tq
  %i.uf = call float @llvm.fmuladd.f32(float %i.to, float %.sroa.7.0.copyload, float %i.ue)
  %i.ug = call float @llvm.fmuladd.f32(float %i.tr, float %.sroa.17.32.copyload, float %i.uf) ; 2 uses
  %i.uh = fcmp olt float %i.ug, %i.ud
  br i1 %i.uh, label %bb.gf, label %.thread.i277

.thread.i277:                                     ; preds = %bb.ge
  %i.ui = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %.noexc279 unwind label %bb.gj ; 0 uses

bb.gf:                                            ; preds = %bb.ge
  store float %i.ug, ptr %i.uc, align 4, !tbaa !39
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %.noexc278
  %i.uj = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %.noexc280 unwind label %bb.gj

.noexc280:                                        ; preds = %bb.gg
  br i1 %i.uj, label %.noexc279, label %bb.gh

bb.gh:                                            ; preds = %.noexc280
  switch i32 %.sroa.084.0.extract.trunc.i, label %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit135.i [
    i32 0, label %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit129.i
    i32 1, label %bb.gi
  ]

bb.gi:                                            ; preds = %bb.gh
  br label %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit129.i

_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit135.i: ; preds = %bb.gh
  %53 = fmul <2 x float> %50, %i.tn               ; 4 uses
  %54 = fmul <2 x float> %53, %52                 ; 2 uses
  %i.uk = extractelement <2 x float> %54, i64 1
  %i.ul = fadd float %i.uk, 0.000000e+00
  %i.um = extractelement <2 x float> %54, i64 0
  %55 = fadd float %i.ul, %i.um
  %56 = fmul float %.sroa.18.32.copyload, %i.tr   ; 2 uses
  %57 = fmul float %56, %.sroa.8.0.2
  %58 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.un = fmul <2 x float> %58, %i.wq
  %i.uo = fadd <2 x float> %i.un, zeroinitializer
  %59 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> zeroinitializer
  %i.up = fmul <2 x float> %59, %i.ze
  %i.uq = fadd <2 x float> %i.uo, %i.up
  %60 = insertelement <2 x float> poison, float %56, i64 0
  %61 = shufflevector <2 x float> %60, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ur = fmul <2 x float> %61, %i.abs
  %i.us = fadd <2 x float> %i.uq, %i.ur
  %62 = fadd float %55, %57
  %63 = extractelement <2 x float> %53, i64 0
  %i.ut = call float @llvm.fmuladd.f32(float %i.to, float %.sroa.8.0.copyload, float %63)
  %i.uu = call float @llvm.fmuladd.f32(float %i.tr, float %.sroa.18.32.copyload, float %i.ut)
  %i.uv = fdiv float 1.000000e+00, %i.uu          ; 2 uses
  %i.uw = insertelement <2 x float> poison, float %i.uv, i64 0
  %i.ux = shufflevector <2 x float> %i.uw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uy = fmul <2 x float> %i.ux, %i.us
  %i.uz = fmul float %i.uv, %62
  br label %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit129.i

_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit129.i: ; preds = %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit135.i, %bb.gi, %bb.gh
  %.sroa.15.1.i = phi float [ %i.uz, %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit135.i ], [ %.sroa.8.0, %bb.gi ], [ 1.000000e+00, %bb.gh ]
  %i.va = phi <2 x float> [ %i.uy, %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit135.i ], [ %i.wq, %bb.gi ], [ splat (float 1.000000e+00), %bb.gh ]
  %i.vb = load i32, ptr %i.no, align 4, !tbaa !72
  %i.vc = icmp slt i32 %i.vb, 2
  %i.vd = load ptr, ptr %i.np, align 8, !tbaa !36
  %i.ve = load i64, ptr %i.nq, align 8
  %i.vf = mul i64 %i.ve, %i.tb
  %.sink.idx.i136.i = select i1 %i.vc, i64 0, i64 %i.vf
  %.sink.i137.i = getelementptr inbounds nuw i8, ptr %i.vd, i64 %.sink.idx.i136.i
  %i.vg = getelementptr inbounds nuw [12 x i8], ptr %.sink.i137.i, i64 %indvars.iv.i ; 2 uses
  store <2 x float> %i.va, ptr %i.vg, align 4
  %.sroa.15.0..sroa_idx154.i = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  store float %.sroa.15.1.i, ptr %.sroa.15.0..sroa_idx154.i, align 4
  br label %.noexc279

.noexc279:                                        ; preds = %.thread.i277, %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit129.i, %.noexc280, %bb.gc
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.vh = icmp samesign ult i64 %indvars.iv.next.i, %sext.i
  br i1 %i.vh, label %bb.gc, label %._crit_edge.i, !llvm.loop !69

bb.gj:                                            ; preds = %bb.gg, %.thread.i277, %bb.gd
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.gk:                                            ; preds = %.preheader.preheader
  br i1 %i.sf, label %bb.gs, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.vj = load i32, ptr %i.mz, align 4, !tbaa !72
  %i.vk = icmp slt i32 %i.vj, 2
  br i1 %i.vk, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.vl = load ptr, ptr %i.nd, align 8, !tbaa !36
  %i.vm = sext i32 %i.sa to i64
  %i.vn = getelementptr inbounds [12 x i8], ptr %i.vl, i64 %i.vm
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit283

bb.gn:                                            ; preds = %bb.gl
  %i.vo = load i32, ptr %26, align 8, !tbaa !27
  %i.vp = and i32 %i.vo, 16384
  %i.vq = icmp ne i32 %i.vp, 0
  %i.vr = load i32, ptr %i.na, align 4
  %i.vs = icmp eq i32 %i.vr, 1
  %or.cond.i281 = select i1 %i.vq, i1 true, i1 %i.vs
  br i1 %or.cond.i281, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.vt = load ptr, ptr %i.nd, align 8, !tbaa !36
  %i.vu = sext i32 %i.sa to i64
  %i.vv = getelementptr inbounds [12 x i8], ptr %i.vt, i64 %i.vu
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit283

bb.gp:                                            ; preds = %bb.gn
  %i.vw = load i32, ptr %i.nb, align 8, !tbaa !33
  %i.vx = icmp eq i32 %i.vw, 1
  br i1 %i.vx, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.vy = load ptr, ptr %i.nd, align 8, !tbaa !36
  %i.vz = load i64, ptr %i.ne, align 8, !tbaa !31
  %i.wa = sext i32 %i.sa to i64
  %i.wb = mul i64 %i.vz, %i.wa
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.wb
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit283

bb.gr:                                            ; preds = %bb.gp
  %i.wd = load i32, ptr %i.nc, align 4, !tbaa !35 ; 3 uses
  %i.we = sdiv i32 %i.sa, %i.wd                   ; 2 uses
  %i.wf = mul nsw i32 %i.we, %i.wd                ; 0 uses
  %.recomposed540 = srem i32 %i.sa, %i.wd
  %i.wg = load ptr, ptr %i.nd, align 8, !tbaa !36
  %i.wh = load i64, ptr %i.ne, align 8, !tbaa !31
  %i.wi = sext i32 %i.we to i64
  %i.wj = mul i64 %i.wh, %i.wi
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.wj
  %i.wl = sext i32 %.recomposed540 to i64
  %i.wm = getelementptr inbounds [12 x i8], ptr %i.wk, i64 %i.wl
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit283

_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit283:      ; preds = %bb.gm, %bb.go, %bb.gq, %bb.gr
  %.0.i282 = phi ptr [ %i.vn, %bb.gm ], [ %i.vv, %bb.go ], [ %i.wc, %bb.gq ], [ %i.wm, %bb.gr ] ; 2 uses
  %i.wn = load <2 x float>, ptr %.0.i282, align 4, !tbaa !39
  %i.wo = getelementptr inbounds nuw i8, ptr %.0.i282, i64 8
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !39
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gk, %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit283
  %.sroa.8.0 = phi float [ %i.wp, %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit283 ], [ 0.000000e+00, %bb.gk ] ; 2 uses
  %i.wq = phi <2 x float> [ %i.wn, %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit283 ], [ zeroinitializer, %bb.gk ] ; 2 uses
  %i.wr = load i32, ptr %i.nf, align 4, !tbaa !72
  %i.ws = icmp slt i32 %i.wr, 2
  br i1 %i.ws, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.wt = load ptr, ptr %i.nj, align 8, !tbaa !36
  %i.wu = sext i32 %i.sa to i64
  %i.wv = getelementptr inbounds [16 x i8], ptr %i.wt, i64 %i.wu
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit286

bb.gu:                                            ; preds = %bb.gs
  %i.ww = load i32, ptr %48, align 8, !tbaa !27
  %i.wx = and i32 %i.ww, 16384
  %i.wy = icmp ne i32 %i.wx, 0
  %i.wz = load i32, ptr %i.ng, align 4
  %i.xa = icmp eq i32 %i.wz, 1
  %or.cond.i284 = select i1 %i.wy, i1 true, i1 %i.xa
  br i1 %or.cond.i284, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.xb = load ptr, ptr %i.nj, align 8, !tbaa !36
  %i.xc = sext i32 %i.sa to i64
  %i.xd = getelementptr inbounds [16 x i8], ptr %i.xb, i64 %i.xc
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit286

bb.gw:                                            ; preds = %bb.gu
  %i.xe = load i32, ptr %i.nh, align 8, !tbaa !33
  %i.xf = icmp eq i32 %i.xe, 1
  br i1 %i.xf, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.xg = load ptr, ptr %i.nj, align 8, !tbaa !36
  %i.xh = load i64, ptr %i.nk, align 8, !tbaa !31
  %i.xi = sext i32 %i.sa to i64
  %i.xj = mul i64 %i.xh, %i.xi
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xj
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit286

bb.gy:                                            ; preds = %bb.gw
  %i.xl = load i32, ptr %i.ni, align 4, !tbaa !35 ; 3 uses
  %i.xm = sdiv i32 %i.sa, %i.xl                   ; 2 uses
  %i.xn = mul nsw i32 %i.xm, %i.xl                ; 0 uses
  %.recomposed541 = srem i32 %i.sa, %i.xl
  %i.xo = load ptr, ptr %i.nj, align 8, !tbaa !36
  %i.xp = load i64, ptr %i.nk, align 8, !tbaa !31
  %i.xq = sext i32 %i.xm to i64
  %i.xr = mul i64 %i.xp, %i.xq
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.xr
  %i.xt = sext i32 %.recomposed541 to i64
  %i.xu = getelementptr inbounds [16 x i8], ptr %i.xs, i64 %i.xt
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit286

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit286:      ; preds = %bb.gt, %bb.gv, %bb.gx, %bb.gy
  %.0.i285 = phi ptr [ %i.wv, %bb.gt ], [ %i.xd, %bb.gv ], [ %i.xk, %bb.gx ], [ %i.xu, %bb.gy ] ; 3 uses
  %i.xv = load <2 x float>, ptr %.0.i285, align 4 ; 3 uses
  %.sroa.7.0..0.i285.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i285, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..0.i285.sroa_idx, align 4
  %.sroa.8.0..0.i285.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i285, i64 12
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..0.i285.sroa_idx, align 4 ; 2 uses
  %i.xw = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %26)
          to label %bb.gz unwind label %bb.id

bb.gz:                                            ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit286
  br i1 %i.xw, label %bb.hh, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.xx = load i32, ptr %i.mz, align 4, !tbaa !72
  %i.xy = icmp slt i32 %i.xx, 2
  br i1 %i.xy, label %bb.hg, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.xz = load i32, ptr %26, align 8, !tbaa !27
  %i.ya = and i32 %i.xz, 16384
  %i.yb = icmp ne i32 %i.ya, 0
  %i.yc = load i32, ptr %i.na, align 4
  %i.yd = icmp eq i32 %i.yc, 1
  %or.cond.i281.1 = select i1 %i.yb, i1 true, i1 %i.yd
  br i1 %or.cond.i281.1, label %bb.hf, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ye = load i32, ptr %i.nb, align 8, !tbaa !33
  %i.yf = icmp eq i32 %i.ye, 1
  br i1 %i.yf, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.yg = load i32, ptr %i.nc, align 4, !tbaa !35 ; 3 uses
  %i.yh = sdiv i32 %i.sc, %i.yg                   ; 2 uses
  %i.yi = mul nsw i32 %i.yh, %i.yg                ; 0 uses
  %.recomposed542 = srem i32 %i.sc, %i.yg
  %i.yj = load ptr, ptr %i.nd, align 8, !tbaa !36
  %i.yk = load i64, ptr %i.ne, align 8, !tbaa !31
  %i.yl = sext i32 %i.yh to i64
  %i.ym = mul i64 %i.yk, %i.yl
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yj, i64 %i.ym
  %i.yo = sext i32 %.recomposed542 to i64
  %i.yp = getelementptr inbounds [12 x i8], ptr %i.yn, i64 %i.yo
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit283.1

bb.he:                                            ; preds = %bb.hc
  %i.yq = load ptr, ptr %i.nd, align 8, !tbaa !36
  %i.yr = load i64, ptr %i.ne, align 8, !tbaa !31
  %i.ys = sext i32 %i.sc to i64
  %i.yt = mul i64 %i.yr, %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yt
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit283.1

end_hunk_0
