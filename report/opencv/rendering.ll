Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rendering?download=true
inline.NumInlined: 324
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2cvL25triangleRasterizeInternalERKNS_11_InputArrayES2_S2_RNS_3MatES4_S2_dddRKNS_25TriangleRasterizeSettingsE:bb.a
bb.fl:                                            ; preds = %bb.fk
  %i.oa = load ptr, ptr %i.lz, align 8, !tbaa !36
  %i.ob = load i64, ptr %i.ma, align 8, !tbaa !31
  %i.oc = mul i64 %i.ob, %indvars.iv
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 %i.oc
  br label %_ZN2cv3VecIfLi4EEC2ESt16initializer_listIfE.exit

bb.fm:                                            ; preds = %bb.fk
  %i.oe = load i32, ptr %i.ly, align 4, !tbaa !35 ; 3 uses
  %i.of = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.og = sdiv i32 %i.of, %i.oe                   ; 2 uses
  %i.oh = mul nsw i32 %i.og, %i.oe                ; 0 uses
  %.recomposed = srem i32 %i.of, %i.oe
  %i.oi = load ptr, ptr %i.lz, align 8, !tbaa !36
  %i.oj = load i64, ptr %i.ma, align 8, !tbaa !31
  %i.ok = sext i32 %i.og to i64
  %i.ol = mul i64 %i.oj, %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ol
  %i.on = sext i32 %.recomposed to i64
  %i.oo = getelementptr inbounds [12 x i8], ptr %i.om, i64 %i.on
  br label %_ZN2cv3VecIfLi4EEC2ESt16initializer_listIfE.exit

_ZN2cv3VecIfLi4EEC2ESt16initializer_listIfE.exit: ; preds = %bb.fm, %bb.fl, %bb.fj, %bb.fh
  %.0.i = phi ptr [ %i.nq, %bb.fh ], [ %i.nx, %bb.fj ], [ %i.od, %bb.fl ], [ %i.oo, %bb.fm ] ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.oq = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.or = load float, ptr %.0.i, align 4, !tbaa !39 ; 3 uses
  %i.os = load float, ptr %i.op, align 4, !tbaa !39 ; 3 uses
  %i.ot = load float, ptr %i.oq, align 4, !tbaa !39 ; 3 uses
  %i.ou = insertelement <2 x float> poison, float %i.ot, i64 0
  %i.ov = shufflevector <2 x float> %i.ou, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ow = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ks, <2 x float> %i.ov, <2 x float> %i.kt)
  %i.ox = insertelement <2 x float> poison, float %i.os, i64 0
  %i.oy = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oz = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.kr, <2 x float> %i.oy, <2 x float> %i.ow)
  %i.pa = insertelement <2 x float> poison, float %i.or, i64 0
  %i.pb = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pc = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.kq, <2 x float> %i.pb, <2 x float> %i.oz)
  %i.pd = call noundef float @llvm.fma.f32(float %i.mk, float %i.ot, float %i.kw)
  %i.pe = call noundef float @llvm.fma.f32(float %i.mj, float %i.os, float %i.pd)
  %i.pf = call noundef float @llvm.fma.f32(float %i.ku, float %i.or, float %i.pe)
  %i.pg = call noundef float @llvm.fma.f32(float %i.mm, float %i.ot, float %i.kz)
  %i.ph = call noundef float @llvm.fma.f32(float %i.ml, float %i.os, float %i.pg)
  %i.pi = call noundef float @llvm.fma.f32(float %i.kx, float %i.or, float %i.ph)
  %i.pj = fdiv float 1.000000e+00, %i.pi          ; 3 uses
  %i.pk = insertelement <2 x float> poison, float %i.pj, i64 0
  %i.pl = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pm = fmul <2 x float> %i.pc, %i.pl
  %i.pn = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.pm, <2 x float> %i.mc, <2 x float> %i.mc)
  %i.po = fmul float %i.pf, %i.pj
  %i.pp = call noundef float @llvm.fma.f32(float %i.po, float 5.000000e-01, float 5.000000e-01)
  %i.pq = load i32, ptr %i.md, align 4, !tbaa !72
  %i.pr = icmp slt i32 %i.pq, 2
  br i1 %i.pr, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %_ZN2cv3VecIfLi4EEC2ESt16initializer_listIfE.exit
  %i.ps = load ptr, ptr %i.mh, align 8, !tbaa !36
  %i.pt = getelementptr inbounds nuw [16 x i8], ptr %i.ps, i64 %indvars.iv
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit

bb.fo:                                            ; preds = %_ZN2cv3VecIfLi4EEC2ESt16initializer_listIfE.exit
  %i.pu = load i32, ptr %48, align 8, !tbaa !27
  %i.pv = and i32 %i.pu, 16384
  %i.pw = icmp ne i32 %i.pv, 0
  %i.px = load i32, ptr %i.me, align 4
  %i.py = icmp eq i32 %i.px, 1
  %or.cond.i272 = select i1 %i.pw, i1 true, i1 %i.py
  br i1 %or.cond.i272, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.pz = load ptr, ptr %i.mh, align 8, !tbaa !36
  %i.qa = getelementptr inbounds nuw [16 x i8], ptr %i.pz, i64 %indvars.iv
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit

bb.fq:                                            ; preds = %bb.fo
  %i.qb = load i32, ptr %i.mf, align 8, !tbaa !33
  %i.qc = icmp eq i32 %i.qb, 1
  br i1 %i.qc, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.qd = load ptr, ptr %i.mh, align 8, !tbaa !36
  %i.qe = load i64, ptr %i.mi, align 8, !tbaa !31
  %i.qf = mul i64 %i.qe, %indvars.iv
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qf
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit

bb.fs:                                            ; preds = %bb.fq
  %i.qh = load i32, ptr %i.mg, align 4, !tbaa !35 ; 3 uses
  %i.qi = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.qj = sdiv i32 %i.qi, %i.qh                   ; 2 uses
  %i.qk = mul nsw i32 %i.qj, %i.qh                ; 0 uses
  %.recomposed539.a = srem i32 %i.qi, %i.qh
  %i.ql = load ptr, ptr %i.mh, align 8, !tbaa !36
  %i.qm = load i64, ptr %i.mi, align 8, !tbaa !31
  %i.qn = sext i32 %i.qj to i64
  %i.qo = mul i64 %i.qm, %i.qn
  %i.qp = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qo
  %i.qq = sext i32 %.recomposed539.a to i64
  %i.qr = getelementptr inbounds [16 x i8], ptr %i.qp, i64 %i.qq
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit:         ; preds = %bb.fn, %bb.fp, %bb.fr, %bb.fs
  %.0.i273 = phi ptr [ %i.pt, %bb.fn ], [ %i.qa, %bb.fp ], [ %i.qg, %bb.fr ], [ %i.qr, %bb.fs ] ; 3 uses
  %i.qs = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qs, ptr %.0.i273, align 4
  %.sroa.5479.0..0.i273.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i273, i64 8
  store float %i.pp, ptr %.sroa.5479.0..0.i273.sroa_idx, align 4
  %.sroa.6480.0..0.i273.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i273, i64 12
  store float %i.pj, ptr %.sroa.6480.0..0.i273.sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader436, label %bb.fg, !llvm.loop !67

._crit_edge:                                      ; preds = %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit, %.preheader436
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  br label %bb.if

bb.ft:                                            ; preds = %.lr.ph446, %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit
  %indvars.iv460 = phi i64 [ 0, %.lr.ph446 ], [ %indvars.iv.next461, %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit ] ; 5 uses
  %i.qt = load i32, ptr %i.mo, align 4, !tbaa !72
  %i.qu = icmp slt i32 %i.qt, 2
  br i1 %i.qu, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.qv = load ptr, ptr %i.ms, align 8, !tbaa !36
  %i.qw = getelementptr inbounds nuw [12 x i8], ptr %i.qv, i64 %indvars.iv460
  br label %.preheader.preheader

bb.fv:                                            ; preds = %bb.ft
  %i.qx = load i32, ptr %27, align 8, !tbaa !27
  %i.qy = and i32 %i.qx, 16384
  %i.qz = icmp ne i32 %i.qy, 0
  %i.ra = load i32, ptr %i.mp, align 4
  %i.rb = icmp eq i32 %i.ra, 1
  %or.cond.i274 = select i1 %i.qz, i1 true, i1 %i.rb
  br i1 %or.cond.i274, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.rc = load ptr, ptr %i.ms, align 8, !tbaa !36
  %i.rd = getelementptr inbounds nuw [12 x i8], ptr %i.rc, i64 %indvars.iv460
  br label %.preheader.preheader

bb.fx:                                            ; preds = %bb.fv
  %i.re = load i32, ptr %i.mq, align 8, !tbaa !33
  %i.rf = icmp eq i32 %i.re, 1
  br i1 %i.rf, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.rg = load ptr, ptr %i.ms, align 8, !tbaa !36
  %i.rh = load i64, ptr %i.mt, align 8, !tbaa !31
  %i.ri = mul i64 %i.rh, %indvars.iv460
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.ri
  br label %.preheader.preheader

bb.fz:                                            ; preds = %bb.fx
  %i.rk = load i32, ptr %i.mr, align 4, !tbaa !35 ; 3 uses
  %i.rl = trunc nuw nsw i64 %indvars.iv460 to i32 ; 2 uses
  %i.rm = sdiv i32 %i.rl, %i.rk                   ; 2 uses
  %i.rn = mul nsw i32 %i.rm, %i.rk                ; 0 uses
  %.recomposed540.a = srem i32 %i.rl, %i.rk
  %i.ro = load ptr, ptr %i.ms, align 8, !tbaa !36
  %i.rp = load i64, ptr %i.mt, align 8, !tbaa !31
  %i.rq = sext i32 %i.rm to i64
  %i.rr = mul i64 %i.rp, %i.rq
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rr
  %i.rt = sext i32 %.recomposed540.a to i64
  %i.ru = getelementptr inbounds [12 x i8], ptr %i.rs, i64 %i.rt
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.fz, %bb.fy, %bb.fw, %bb.fu
  %.0.i275 = phi ptr [ %i.qw, %bb.fu ], [ %i.rd, %bb.fw ], [ %i.rj, %bb.fy ], [ %i.ru, %bb.fz ] ; 3 uses
  %i.rv = load i32, ptr %.0.i275, align 4, !tbaa !33 ; 10 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %.0.i275, i64 4
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !33 ; 10 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.0.i275, i64 8
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !33 ; 10 uses
  %i.sa = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %26)
          to label %bb.gk unwind label %bb.id

bb.ga:                                            ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.2
  %i.sb = icmp eq i64 %.sroa.3.0.extract.shift.i, 2
  %i.sc = fcmp oge float %i.adp, 0.000000e+00
  %or.cond3.i = select i1 %i.sb, i1 %i.sc, i1 false
  br i1 %or.cond3.i, label %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.sd = call noundef float @llvm.fabs.f32(float %i.adp)
  %i.se = fpext float %i.sd to double
  %i.sf = fcmp olt double %i.se, f0x3EB0C6F7A0B5ED8D
  br i1 %i.sf, label %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit, label %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit.i

_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit.i: ; preds = %bb.gb
  %i.sg = fdiv float 1.000000e+00, %i.adp
  %i.sh = icmp slt i32 %.sroa.speculated.i.a, %.sroa.speculated200.i.a
  br i1 %i.sh, label %.preheader.lr.ph.i, label %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit

.preheader.lr.ph.i:                               ; preds = %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit.i
  %i.si = icmp slt i32 %.sroa.speculated167.i.a, %.sroa.speculated203.i.a
  %i.sj = fneg float %72
  br i1 %i.si, label %.preheader.preheader.i, label %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.sk = zext nneg i32 %.sroa.speculated167.i.a to i64
  %i.sl = zext nneg i32 %.sroa.speculated.i.a to i64
  %i.sm = zext nneg i32 %.sroa.speculated200.i.a to i64
  %sext.i = zext nneg i32 %.sroa.speculated203.i.a to i64
  %i.sn = insertelement <2 x float> poison, float %.sroa.13.16.copyload, i64 0
  %i.so = insertelement <2 x float> %i.sn, float %.sroa.8.0.copyload, i64 1
  %i.sp = insertelement <2 x float> poison, float %i.sg, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = insertelement <2 x float> poison, float %.sroa.8.0.1, i64 0
  %i.ss = insertelement <2 x float> %i.sr, float %.sroa.8.0, i64 1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv254.i = phi i64 [ %i.sl, %.preheader.preheader.i ], [ %indvars.iv.next255.i, %._crit_edge.i ] ; 2 uses
  %i.st = trunc nuw nsw i64 %indvars.iv254.i to i32 ; 2 uses
  %i.su = uitofp nneg i32 %i.st to float
  %i.sv = fadd float %i.su, 5.000000e-01
  %i.sw = fsub float %i.sv, %59                   ; 2 uses
  %i.sx = fmul float %i.sw, %i.adl
  %i.sy = xor i32 %i.st, -1
  %i.sz = add i32 %i.adi, %i.sy
  %i.ta = sext i32 %i.sz to i64                   ; 2 uses
  %i.tb = insertelement <2 x float> poison, float %i.sw, i64 0
  %i.tc = insertelement <2 x float> poison, float %i.sx, i64 1
  br label %bb.gc

._crit_edge.i:                                    ; preds = %.noexc278
  %indvars.iv.next255.i = add nuw nsw i64 %indvars.iv254.i, 1 ; 2 uses
  %49 = icmp samesign ult i64 %indvars.iv.next255.i, %i.sm
  br i1 %49, label %.preheader.i, label %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit, !llvm.loop !68

bb.gc:                                            ; preds = %.noexc278, %.preheader.i
  %indvars.iv.i = phi i64 [ %i.sk, %.preheader.i ], [ %indvars.iv.next.i, %.noexc278 ] ; 4 uses
  %i.td = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.te = uitofp nneg i32 %i.td to float
  %i.tf = fadd float %i.te, 5.000000e-01
  %i.tg = fsub float %i.tf, %i.adk                ; 2 uses
  %i.th = fmul float %i.tg, %i.sj
  %i.ti = insertelement <2 x float> %i.tb, float %i.tg, i64 1
  %i.tj = insertelement <2 x float> %i.tc, float %i.th, i64 0
  %i.tk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ti, <2 x float> %71, <2 x float> %i.tj)
  %i.tl = fmul <2 x float> %i.sq, %i.tk           ; 3 uses
  %i.tm = extractelement <2 x float> %i.tl, i64 1 ; 4 uses
  %i.tn = fsub float 1.000000e+00, %i.tm
  %i.to = extractelement <2 x float> %i.tl, i64 0 ; 3 uses
  %i.tp = fsub float %i.tn, %i.to                 ; 4 uses
  %i.tq = fcmp ult float %i.tm, 0.000000e+00
  %i.tr = fcmp ult float %i.to, 0.000000e+00
  %i.ts = fcmp ult float %i.tp, 0.000000e+00
  %i.tt = or i1 %i.tr, %i.ts
  %or.cond234.i = select i1 %i.tq, i1 true, i1 %i.tt
  br i1 %or.cond234.i, label %.noexc278, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.tu = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %.noexc277 unwind label %bb.gj

.noexc277:                                        ; preds = %bb.gd
  br i1 %i.tu, label %bb.gg, label %bb.ge

bb.ge:                                            ; preds = %.noexc277
  %i.tv = load i32, ptr %i.ng, align 4, !tbaa !72
  %i.tw = icmp slt i32 %i.tv, 2
  %i.tx = load ptr, ptr %i.nh, align 8, !tbaa !36
  %i.ty = load i64, ptr %i.ni, align 8
  %i.tz = mul i64 %i.ty, %i.ta
  %.sink.idx.i.i = select i1 %i.tw, i64 0, i64 %i.tz
  %.sink.i.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 %.sink.idx.i.i
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i, i64 %indvars.iv.i ; 2 uses
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !39
  %i.uc = fmul float %.sroa.12.16.copyload, %i.to
  %i.ud = call float @llvm.fmuladd.f32(float %i.tm, float %.sroa.7.0.copyload, float %i.uc)
  %i.ue = call float @llvm.fmuladd.f32(float %i.tp, float %.sroa.17.32.copyload, float %i.ud) ; 2 uses
  %i.uf = fcmp olt float %i.ue, %i.ub
  br i1 %i.uf, label %bb.gf, label %.thread.i

.thread.i:                                        ; preds = %bb.ge
  %i.ug = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %.noexc278 unwind label %bb.gj ; 0 uses

bb.gf:                                            ; preds = %bb.ge
  store float %i.ue, ptr %i.ua, align 4, !tbaa !39
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %.noexc277
  %i.uh = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %3)
          to label %.noexc279 unwind label %bb.gj

.noexc279:                                        ; preds = %bb.gg
  br i1 %i.uh, label %.noexc278, label %bb.gh

bb.gh:                                            ; preds = %.noexc279
  switch i32 %.sroa.084.0.extract.trunc.i, label %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit135.i [
    i32 0, label %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit129.i
    i32 1, label %bb.gi
  ]

bb.gi:                                            ; preds = %bb.gh
  br label %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit129.i

_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit135.i: ; preds = %bb.gh
  %i.ui = fmul <2 x float> %i.so, %i.tl           ; 4 uses
  %i.uj = fmul <2 x float> %i.ui, %i.ss           ; 2 uses
  %i.uk = extractelement <2 x float> %i.uj, i64 1
  %i.ul = fadd float %i.uk, 0.000000e+00
  %i.um = extractelement <2 x float> %i.uj, i64 0
  %i.un = fadd float %i.ul, %i.um
  %i.uo = fmul float %.sroa.18.32.copyload, %i.tp ; 2 uses
  %i.up = fmul float %i.uo, %.sroa.8.0.2
  %i.uq = shufflevector <2 x float> %i.ui, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ur = fmul <2 x float> %i.uq, %i.wy
  %i.us = fadd <2 x float> %i.ur, zeroinitializer
  %i.ut = shufflevector <2 x float> %i.ui, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uu = fmul <2 x float> %i.ut, %i.zl
  %i.uv = fadd <2 x float> %i.us, %i.uu
  %i.uw = insertelement <2 x float> poison, float %i.uo, i64 0
  %i.ux = shufflevector <2 x float> %i.uw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uy = fmul <2 x float> %i.ux, %i.aby
  %i.uz = fadd <2 x float> %i.uv, %i.uy
  %i.va = fadd float %i.un, %i.up
  %i.vb = extractelement <2 x float> %i.ui, i64 0
  %i.vc = call float @llvm.fmuladd.f32(float %i.tm, float %.sroa.8.0.copyload, float %i.vb)
  %i.vd = call float @llvm.fmuladd.f32(float %i.tp, float %.sroa.18.32.copyload, float %i.vc)
  %i.ve = fdiv float 1.000000e+00, %i.vd          ; 2 uses
  %i.vf = insertelement <2 x float> poison, float %i.ve, i64 0
  %i.vg = shufflevector <2 x float> %i.vf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vh = fmul <2 x float> %i.vg, %i.uz
  %i.vi = fmul float %i.ve, %i.va
  br label %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit129.i

_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit129.i: ; preds = %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit135.i, %bb.gi, %bb.gh
  %.sroa.15.1.i = phi float [ %i.vi, %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit135.i ], [ %.sroa.8.0, %bb.gi ], [ 1.000000e+00, %bb.gh ]
  %i.vj = phi <2 x float> [ %i.vh, %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit135.i ], [ %i.wy, %bb.gi ], [ splat (float 1.000000e+00), %bb.gh ]
  %i.vk = load i32, ptr %i.nj, align 4, !tbaa !72
  %i.vl = icmp slt i32 %i.vk, 2
  %i.vm = load ptr, ptr %i.nk, align 8, !tbaa !36
  %i.vn = load i64, ptr %i.nl, align 8
  %i.vo = mul i64 %i.vn, %i.ta
  %.sink.idx.i136.i = select i1 %i.vl, i64 0, i64 %i.vo
  %.sink.i137.i = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.sink.idx.i136.i
  %i.vp = getelementptr inbounds nuw [12 x i8], ptr %.sink.i137.i, i64 %indvars.iv.i ; 2 uses
  store <2 x float> %i.vj, ptr %i.vp, align 4
  %.sroa.15.0..sroa_idx154.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  store float %.sroa.15.1.i, ptr %.sroa.15.0..sroa_idx154.i, align 4
  br label %.noexc278

.noexc278:                                        ; preds = %.thread.i, %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit129.i, %.noexc279, %bb.gc
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %50 = icmp samesign ult i64 %indvars.iv.next.i, %sext.i
  br i1 %50, label %bb.gc, label %._crit_edge.i, !llvm.loop !69

bb.gj:                                            ; preds = %bb.gg, %.thread.i, %bb.gd
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.gk:                                            ; preds = %.preheader.preheader
  br i1 %i.sa, label %bb.gs, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.vr = load i32, ptr %i.mu, align 4, !tbaa !72
  %i.vs = icmp slt i32 %i.vr, 2
  br i1 %i.vs, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.vt = load ptr, ptr %i.my, align 8, !tbaa !36
  %i.vu = sext i32 %i.rv to i64
  %i.vv = getelementptr inbounds [12 x i8], ptr %i.vt, i64 %i.vu
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282

bb.gn:                                            ; preds = %bb.gl
  %i.vw = load i32, ptr %26, align 8, !tbaa !27
  %i.vx = and i32 %i.vw, 16384
  %i.vy = icmp ne i32 %i.vx, 0
  %i.vz = load i32, ptr %i.mv, align 4
  %i.wa = icmp eq i32 %i.vz, 1
  %or.cond.i280 = select i1 %i.vy, i1 true, i1 %i.wa
  br i1 %or.cond.i280, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.wb = load ptr, ptr %i.my, align 8, !tbaa !36
  %i.wc = sext i32 %i.rv to i64
  %i.wd = getelementptr inbounds [12 x i8], ptr %i.wb, i64 %i.wc
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282

bb.gp:                                            ; preds = %bb.gn
  %i.we = load i32, ptr %i.mw, align 8, !tbaa !33
  %i.wf = icmp eq i32 %i.we, 1
  br i1 %i.wf, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.wg = load ptr, ptr %i.my, align 8, !tbaa !36
  %i.wh = load i64, ptr %i.mz, align 8, !tbaa !31
  %i.wi = sext i32 %i.rv to i64
  %i.wj = mul i64 %i.wh, %i.wi
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.wj
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282

bb.gr:                                            ; preds = %bb.gp
  %i.wl = load i32, ptr %i.mx, align 4, !tbaa !35 ; 3 uses
  %i.wm = sdiv i32 %i.rv, %i.wl                   ; 2 uses
  %i.wn = mul nsw i32 %i.wm, %i.wl                ; 0 uses
  %.recomposed541.a = srem i32 %i.rv, %i.wl
  %i.wo = load ptr, ptr %i.my, align 8, !tbaa !36
  %i.wp = load i64, ptr %i.mz, align 8, !tbaa !31
  %i.wq = sext i32 %i.wm to i64
  %i.wr = mul i64 %i.wp, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wo, i64 %i.wr
  %i.wt = sext i32 %.recomposed541.a to i64
  %i.wu = getelementptr inbounds [12 x i8], ptr %i.ws, i64 %i.wt
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282

_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282:      ; preds = %bb.gm, %bb.go, %bb.gq, %bb.gr
  %.0.i281 = phi ptr [ %i.vv, %bb.gm ], [ %i.wd, %bb.go ], [ %i.wk, %bb.gq ], [ %i.wu, %bb.gr ] ; 2 uses
  %i.wv = load <2 x float>, ptr %.0.i281, align 4, !tbaa !39
  %i.ww = getelementptr inbounds nuw i8, ptr %.0.i281, i64 8
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !39
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gk, %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282
  %.sroa.8.0 = phi float [ %i.wx, %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282 ], [ 0.000000e+00, %bb.gk ] ; 2 uses
  %i.wy = phi <2 x float> [ %i.wv, %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282 ], [ zeroinitializer, %bb.gk ] ; 2 uses
  %i.wz = load i32, ptr %i.na, align 4, !tbaa !72
  %i.xa = icmp slt i32 %i.wz, 2
  br i1 %i.xa, label %bb.gt, label %bb.gu

bb.gt:                                            ; preds = %bb.gs
  %i.xb = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.xc = sext i32 %i.rv to i64
  %i.xd = getelementptr inbounds [16 x i8], ptr %i.xb, i64 %i.xc
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285

bb.gu:                                            ; preds = %bb.gs
  %i.xe = load i32, ptr %48, align 8, !tbaa !27
  %i.xf = and i32 %i.xe, 16384
  %i.xg = icmp ne i32 %i.xf, 0
  %i.xh = load i32, ptr %i.nb, align 4
  %i.xi = icmp eq i32 %i.xh, 1
  %or.cond.i283 = select i1 %i.xg, i1 true, i1 %i.xi
  br i1 %or.cond.i283, label %bb.gv, label %bb.gw

bb.gv:                                            ; preds = %bb.gu
  %i.xj = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.xk = sext i32 %i.rv to i64
  %i.xl = getelementptr inbounds [16 x i8], ptr %i.xj, i64 %i.xk
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285

bb.gw:                                            ; preds = %bb.gu
  %i.xm = load i32, ptr %i.nc, align 8, !tbaa !33
  %i.xn = icmp eq i32 %i.xm, 1
  br i1 %i.xn, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.xo = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.xp = load i64, ptr %i.nf, align 8, !tbaa !31
  %i.xq = sext i32 %i.rv to i64
  %i.xr = mul i64 %i.xp, %i.xq
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.xr
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285

bb.gy:                                            ; preds = %bb.gw
  %i.xt = load i32, ptr %i.nd, align 4, !tbaa !35 ; 3 uses
  %i.xu = sdiv i32 %i.rv, %i.xt                   ; 2 uses
  %i.xv = mul nsw i32 %i.xu, %i.xt                ; 0 uses
  %.recomposed542.a = srem i32 %i.rv, %i.xt
  %i.xw = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.xx = load i64, ptr %i.nf, align 8, !tbaa !31
  %i.xy = sext i32 %i.xu to i64
  %i.xz = mul i64 %i.xx, %i.xy
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xz
  %i.yb = sext i32 %.recomposed542.a to i64
  %i.yc = getelementptr inbounds [16 x i8], ptr %i.ya, i64 %i.yb
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285:      ; preds = %bb.gt, %bb.gv, %bb.gx, %bb.gy
  %.0.i284 = phi ptr [ %i.xd, %bb.gt ], [ %i.xl, %bb.gv ], [ %i.xs, %bb.gx ], [ %i.yc, %bb.gy ] ; 3 uses
  %51 = load <2 x float>, ptr %.0.i284, align 4   ; 3 uses
  %.sroa.7.0..0.i284.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i284, i64 8
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..0.i284.sroa_idx, align 4
  %.sroa.8.0..0.i284.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i284, i64 12
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..0.i284.sroa_idx, align 4 ; 2 uses
  %i.yd = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %26)
          to label %bb.gz unwind label %bb.id

bb.gz:                                            ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285
  br i1 %i.yd, label %bb.hh, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ye = load i32, ptr %i.mu, align 4, !tbaa !72
  %i.yf = icmp slt i32 %i.ye, 2
  br i1 %i.yf, label %bb.hg, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.yg = load i32, ptr %26, align 8, !tbaa !27
  %i.yh = and i32 %i.yg, 16384
  %i.yi = icmp ne i32 %i.yh, 0
  %i.yj = load i32, ptr %i.mv, align 4
  %i.yk = icmp eq i32 %i.yj, 1
  %or.cond.i280.1 = select i1 %i.yi, i1 true, i1 %i.yk
  br i1 %or.cond.i280.1, label %bb.hf, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.yl = load i32, ptr %i.mw, align 8, !tbaa !33
  %i.ym = icmp eq i32 %i.yl, 1
  br i1 %i.ym, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.yn = load i32, ptr %i.mx, align 4, !tbaa !35 ; 3 uses
  %i.yo = sdiv i32 %i.rx, %i.yn                   ; 2 uses
  %i.yp = mul nsw i32 %i.yo, %i.yn                ; 0 uses
  %.recomposed543.a = srem i32 %i.rx, %i.yn
  %i.yq = load ptr, ptr %i.my, align 8, !tbaa !36
  %i.yr = load i64, ptr %i.mz, align 8, !tbaa !31
  %i.ys = sext i32 %i.yo to i64
  %i.yt = mul i64 %i.yr, %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yt
  %i.yv = sext i32 %.recomposed543.a to i64
  %i.yw = getelementptr inbounds [12 x i8], ptr %i.yu, i64 %i.yv
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.1

bb.he:                                            ; preds = %bb.hc
  %i.yx = load ptr, ptr %i.my, align 8, !tbaa !36
  %i.yy = load i64, ptr %i.mz, align 8, !tbaa !31
  %i.yz = sext i32 %i.rx to i64
  %i.za = mul i64 %i.yy, %i.yz
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yx, i64 %i.za
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.1

bb.hf:                                            ; preds = %bb.hb
  %i.zc = load ptr, ptr %i.my, align 8, !tbaa !36
  %i.zd = sext i32 %i.rx to i64
  %i.ze = getelementptr inbounds [12 x i8], ptr %i.zc, i64 %i.zd
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.1

bb.hg:                                            ; preds = %bb.ha
  %i.zf = load ptr, ptr %i.my, align 8, !tbaa !36
  %i.zg = sext i32 %i.rx to i64
  %i.zh = getelementptr inbounds [12 x i8], ptr %i.zf, i64 %i.zg
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.1

_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.1:    ; preds = %bb.hg, %bb.hf, %bb.he, %bb.hd
  %.0.i281.1 = phi ptr [ %i.zh, %bb.hg ], [ %i.ze, %bb.hf ], [ %i.zb, %bb.he ], [ %i.yw, %bb.hd ] ; 2 uses
  %i.zi = load <2 x float>, ptr %.0.i281.1, align 4, !tbaa !39
  %i.zj = getelementptr inbounds nuw i8, ptr %.0.i281.1, i64 8
  %i.zk = load float, ptr %i.zj, align 4, !tbaa !39
  br label %bb.hh

bb.hh:                                            ; preds = %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.1, %bb.gz
  %.sroa.8.0.1 = phi float [ %i.zk, %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.1 ], [ 0.000000e+00, %bb.gz ]
  %i.zl = phi <2 x float> [ %i.zi, %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.1 ], [ zeroinitializer, %bb.gz ]
  %i.zm = load i32, ptr %i.na, align 4, !tbaa !72
  %i.zn = icmp slt i32 %i.zm, 2
  br i1 %i.zn, label %bb.hn, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.zo = load i32, ptr %48, align 8, !tbaa !27
  %i.zp = and i32 %i.zo, 16384
  %i.zq = icmp ne i32 %i.zp, 0
  %i.zr = load i32, ptr %i.nb, align 4
  %i.zs = icmp eq i32 %i.zr, 1
  %or.cond.i283.1 = select i1 %i.zq, i1 true, i1 %i.zs
  br i1 %or.cond.i283.1, label %bb.hm, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.zt = load i32, ptr %i.nc, align 8, !tbaa !33
  %i.zu = icmp eq i32 %i.zt, 1
  br i1 %i.zu, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.zv = load i32, ptr %i.nd, align 4, !tbaa !35 ; 3 uses
  %i.zw = sdiv i32 %i.rx, %i.zv                   ; 2 uses
  %i.zx = mul nsw i32 %i.zw, %i.zv                ; 0 uses
  %.recomposed544 = srem i32 %i.rx, %i.zv
  %i.zy = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.zz = load i64, ptr %i.nf, align 8, !tbaa !31
  %i.aaa = sext i32 %i.zw to i64
  %i.aab = mul i64 %i.zz, %i.aaa
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aab
  %i.aad = sext i32 %.recomposed544 to i64
  %i.aae = getelementptr inbounds [16 x i8], ptr %i.aac, i64 %i.aad
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.1

bb.hl:                                            ; preds = %bb.hj
  %i.aaf = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.aag = load i64, ptr %i.nf, align 8, !tbaa !31
  %i.aah = sext i32 %i.rx to i64
  %i.aai = mul i64 %i.aag, %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 %i.aai
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.1

bb.hm:                                            ; preds = %bb.hi
  %i.aak = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.aal = sext i32 %i.rx to i64
  %i.aam = getelementptr inbounds [16 x i8], ptr %i.aak, i64 %i.aal
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.1

bb.hn:                                            ; preds = %bb.hh
  %i.aan = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.aao = sext i32 %i.rx to i64
  %i.aap = getelementptr inbounds [16 x i8], ptr %i.aan, i64 %i.aao
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.1

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.1:    ; preds = %bb.hn, %bb.hm, %bb.hl, %bb.hk
  %.0.i284.1 = phi ptr [ %i.aap, %bb.hn ], [ %i.aam, %bb.hm ], [ %i.aaj, %bb.hl ], [ %i.aae, %bb.hk ] ; 3 uses
  %52 = load <2 x float>, ptr %.0.i284.1, align 4 ; 3 uses
  %.sroa.12.16..0.i284.1.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i284.1, i64 8
  %.sroa.12.16.copyload = load float, ptr %.sroa.12.16..0.i284.1.sroa_idx, align 4
  %.sroa.13.16..0.i284.1.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i284.1, i64 12
  %.sroa.13.16.copyload = load float, ptr %.sroa.13.16..0.i284.1.sroa_idx, align 4
  %i.aaq = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %26)
          to label %bb.ho unwind label %bb.id

bb.ho:                                            ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.1
  br i1 %i.aaq, label %bb.hw, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aar = load i32, ptr %i.mu, align 4, !tbaa !72
  %i.aas = icmp slt i32 %i.aar, 2
  br i1 %i.aas, label %bb.hv, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aat = load i32, ptr %26, align 8, !tbaa !27
  %i.aau = and i32 %i.aat, 16384
  %i.aav = icmp ne i32 %i.aau, 0
  %i.aaw = load i32, ptr %i.mv, align 4
  %i.aax = icmp eq i32 %i.aaw, 1
  %or.cond.i280.2 = select i1 %i.aav, i1 true, i1 %i.aax
  br i1 %or.cond.i280.2, label %bb.hu, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.aay = load i32, ptr %i.mw, align 8, !tbaa !33
  %i.aaz = icmp eq i32 %i.aay, 1
  br i1 %i.aaz, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.aba = load i32, ptr %i.mx, align 4, !tbaa !35 ; 3 uses
  %i.abb = sdiv i32 %i.rz, %i.aba                 ; 2 uses
  %i.abc = mul nsw i32 %i.abb, %i.aba             ; 0 uses
  %.recomposed545 = srem i32 %i.rz, %i.aba
  %i.abd = load ptr, ptr %i.my, align 8, !tbaa !36
  %i.abe = load i64, ptr %i.mz, align 8, !tbaa !31
  %i.abf = sext i32 %i.abb to i64
  %i.abg = mul i64 %i.abe, %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.abg
  %i.abi = sext i32 %.recomposed545 to i64
  %i.abj = getelementptr inbounds [12 x i8], ptr %i.abh, i64 %i.abi
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.2

bb.ht:                                            ; preds = %bb.hr
  %i.abk = load ptr, ptr %i.my, align 8, !tbaa !36
  %i.abl = load i64, ptr %i.mz, align 8, !tbaa !31
  %i.abm = sext i32 %i.rz to i64
  %i.abn = mul i64 %i.abl, %i.abm
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abn
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.2

bb.hu:                                            ; preds = %bb.hq
  %i.abp = load ptr, ptr %i.my, align 8, !tbaa !36
  %i.abq = sext i32 %i.rz to i64
  %i.abr = getelementptr inbounds [12 x i8], ptr %i.abp, i64 %i.abq
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.2

bb.hv:                                            ; preds = %bb.hp
  %i.abs = load ptr, ptr %i.my, align 8, !tbaa !36
  %i.abt = sext i32 %i.rz to i64
  %i.abu = getelementptr inbounds [12 x i8], ptr %i.abs, i64 %i.abt
  br label %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.2

_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.2:    ; preds = %bb.hv, %bb.hu, %bb.ht, %bb.hs
  %.0.i281.2 = phi ptr [ %i.abu, %bb.hv ], [ %i.abr, %bb.hu ], [ %i.abo, %bb.ht ], [ %i.abj, %bb.hs ] ; 2 uses
  %i.abv = load <2 x float>, ptr %.0.i281.2, align 4, !tbaa !39
  %i.abw = getelementptr inbounds nuw i8, ptr %.0.i281.2, i64 8
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !39
  br label %bb.hw

bb.hw:                                            ; preds = %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.2, %bb.ho
  %.sroa.8.0.2 = phi float [ %i.abx, %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.2 ], [ 0.000000e+00, %bb.ho ]
  %i.aby = phi <2 x float> [ %i.abv, %_ZN2cv3Mat2atINS_3VecIfLi3EEEEERT_i.exit282.2 ], [ zeroinitializer, %bb.ho ]
  %i.abz = load i32, ptr %i.na, align 4, !tbaa !72
  %i.aca = icmp slt i32 %i.abz, 2
  br i1 %i.aca, label %bb.ic, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.acb = load i32, ptr %48, align 8, !tbaa !27
  %i.acc = and i32 %i.acb, 16384
  %i.acd = icmp ne i32 %i.acc, 0
  %i.ace = load i32, ptr %i.nb, align 4
  %i.acf = icmp eq i32 %i.ace, 1
  %or.cond.i283.2 = select i1 %i.acd, i1 true, i1 %i.acf
  br i1 %or.cond.i283.2, label %bb.ib, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.acg = load i32, ptr %i.nc, align 8, !tbaa !33
  %i.ach = icmp eq i32 %i.acg, 1
  br i1 %i.ach, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.aci = load i32, ptr %i.nd, align 4, !tbaa !35 ; 3 uses
  %i.acj = sdiv i32 %i.rz, %i.aci                 ; 2 uses
  %i.ack = mul nsw i32 %i.acj, %i.aci             ; 0 uses
  %.recomposed546 = srem i32 %i.rz, %i.aci
  %i.acl = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.acm = load i64, ptr %i.nf, align 8, !tbaa !31
  %i.acn = sext i32 %i.acj to i64
  %i.aco = mul i64 %i.acm, %i.acn
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acl, i64 %i.aco
  %i.acq = sext i32 %.recomposed546 to i64
  %i.acr = getelementptr inbounds [16 x i8], ptr %i.acp, i64 %i.acq
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.2

bb.ia:                                            ; preds = %bb.hy
  %i.acs = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.act = load i64, ptr %i.nf, align 8, !tbaa !31
  %i.acu = sext i32 %i.rz to i64
  %i.acv = mul i64 %i.act, %i.acu
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acs, i64 %i.acv
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.2

bb.ib:                                            ; preds = %bb.hx
  %i.acx = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.acy = sext i32 %i.rz to i64
  %i.acz = getelementptr inbounds [16 x i8], ptr %i.acx, i64 %i.acy
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.2

bb.ic:                                            ; preds = %bb.hw
  %i.ada = load ptr, ptr %i.ne, align 8, !tbaa !36
  %i.adb = sext i32 %i.rz to i64
  %i.adc = getelementptr inbounds [16 x i8], ptr %i.ada, i64 %i.adb
  br label %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.2

_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.2:    ; preds = %bb.ic, %bb.ib, %bb.ia, %bb.hz
  %.0.i284.2 = phi ptr [ %i.adc, %bb.ic ], [ %i.acz, %bb.ib ], [ %i.acw, %bb.ia ], [ %i.acr, %bb.hz ] ; 3 uses
  %.sroa.17.32..0.i284.2.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i284.2, i64 8
  %.sroa.17.32.copyload = load float, ptr %.sroa.17.32..0.i284.2.sroa_idx, align 4
  %.sroa.18.32..0.i284.2.sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i284.2, i64 12
  %.sroa.18.32.copyload = load float, ptr %.sroa.18.32..0.i284.2.sroa_idx, align 4 ; 2 uses
  %.sroa.08.0.copyload = load i64, ptr %9, align 4 ; 2 uses
  %i.add = load i32, ptr %i.hm, align 4, !tbaa !33
  %i.ade = load i32, ptr %i.hn, align 4, !tbaa !33
  %i.adf = call i32 @llvm.smax.i32(i32 %i.add, i32 %i.ade) ; 2 uses
  %i.adg = load i32, ptr %i.ho, align 8, !tbaa !33
  %i.adh = load i32, ptr %i.hp, align 8, !tbaa !33
  %i.adi = call i32 @llvm.smax.i32(i32 %i.adg, i32 %i.adh) ; 3 uses
  %53 = fptosi <2 x float> %51 to <2 x i32>       ; 3 uses
  %54 = extractelement <2 x i32> %53, i64 0
  %.sroa.speculated189.i.a = call i32 @llvm.smin.i32(i32 %i.adf, i32 %54)
  %55 = extractelement <2 x i32> %53, i64 1
  %.sroa.speculated182.i = call i32 @llvm.smin.i32(i32 %i.adi, i32 %55)
  %56 = fptosi <2 x float> %52 to <2 x i32>       ; 3 uses
  %57 = extractelement <2 x i32> %56, i64 0
  %.sroa.speculated189.1.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated189.i.a, i32 %57)
  %58 = extractelement <2 x i32> %56, i64 1
  %.sroa.speculated182.1.i.a = call i32 @llvm.smin.i32(i32 %.sroa.speculated182.i, i32 %58)
  %.sroa.084.0.extract.trunc.i = trunc i64 %.sroa.08.0.copyload to i32
  %.sroa.3.0.extract.shift.i = lshr i64 %.sroa.08.0.copyload, 32 ; 2 uses
  %i.adj = load <2 x float>, ptr %.0.i284.2, align 4 ; 6 uses
  %i.adk = extractelement <2 x float> %i.adj, i64 0
  %59 = extractelement <2 x float> %i.adj, i64 1
  %60 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %53, <2 x i32> %56)
  %61 = fptosi <2 x float> %i.adj to <2 x i32>    ; 3 uses
  %62 = extractelement <2 x i32> %61, i64 0
  %.sroa.speculated189.2.i.a = call i32 @llvm.smin.i32(i32 %.sroa.speculated189.1.i, i32 %62)
  %63 = extractelement <2 x i32> %61, i64 1
  %.sroa.speculated182.2.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated182.1.i.a, i32 %63)
  %64 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %60, <2 x i32> %61)
  %65 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %64, <2 x i32> splat (i32 -1))
  %66 = add nsw <2 x i32> %65, splat (i32 1)      ; 2 uses
  %.sroa.speculated167.i.a = call i32 @llvm.smax.i32(i32 %.sroa.speculated189.2.i.a, i32 0) ; 2 uses
  %67 = extractelement <2 x i32> %66, i64 0
  %.sroa.speculated203.i.a = call i32 @llvm.smin.i32(i32 %i.adf, i32 %67) ; 2 uses
  %.sroa.speculated.i.a = call i32 @llvm.smax.i32(i32 %.sroa.speculated182.2.i, i32 0) ; 2 uses
  %68 = extractelement <2 x i32> %66, i64 1
  %.sroa.speculated200.i.a = call i32 @llvm.smin.i32(i32 %i.adi, i32 %68) ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %52, %i.adj
  %69 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %70 = shufflevector <2 x float> %51, <2 x float> %52, <2 x i32> <i32 0, i32 3>
  %71 = fsub <2 x float> %70, %i.adj              ; 3 uses
  %foldExtExtBinop536 = fsub <2 x float> %51, %i.adj
  %72 = extractelement <2 x float> %foldExtExtBinop536, i64 1 ; 2 uses
  %i.adl = fneg float %69                         ; 2 uses
  %i.adm = fmul float %72, %i.adl
  %i.adn = extractelement <2 x float> %71, i64 0
  %i.ado = extractelement <2 x float> %71, i64 1
  %i.adp = call float @llvm.fmuladd.f32(float %i.adn, float %i.ado, float %i.adm) ; 4 uses
  %i.adq = icmp eq i64 %.sroa.3.0.extract.shift.i, 1
  %i.adr = fcmp ole float %i.adp, 0.000000e+00
  %or.cond.i276 = select i1 %i.adq, i1 %i.adr, i1 false
  br i1 %or.cond.i276, label %_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit, label %bb.ga

bb.id:                                            ; preds = %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.1, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285, %.preheader.preheader
  %i.ads = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

_ZN2cvL12drawTriangleEPNS_3VecIfLi4EEEPNS0_IfLi3EEERNS_3MatES6_NS_25TriangleRasterizeSettingsE.exit: ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %_ZN2cv3VecIfLi3EEC2ESt16initializer_listIfE.exit.i, %bb.gb, %bb.ga, %_ZN2cv3Mat2atINS_3VecIfLi4EEEEERT_i.exit285.2
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 2 uses
  %exitcond464.not = icmp eq i64 %indvars.iv.next461, %wide.trip.count463
  br i1 %exitcond464.not, label %._crit_edge, label %bb.ft, !llvm.loop !70

bb.ie:                                            ; preds = %bb.id, %bb.gj
  %.pn198 = phi { ptr, i32 } [ %i.ads, %bb.id ], [ %i.vq, %bb.gj ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #13
  br label %.body

bb.if:                                            ; preds = %bb.ao, %._crit_edge
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  ret void

.body:                                            ; preds = %bb.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ie
  %.pn202.pn.pn = phi { ptr, i32 } [ %.pn198, %bb.ie ], [ %i.nm, %bb.ff ], [ %i.ld, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #13
  br label %bb.ig

bb.ig:                                            ; preds = %.body, %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %bb.cw, %bb.cz, %bb.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268, %bb.er, %bb.ei, %bb.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %bb.dm, %bb.cc, %bb.bs, %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %bb.aw
  %.pn202.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236 ], [ %i.cg, %bb.aw ], [ %.pn167.pn, %bb.cc ], [ %.pn165, %bb.bs ], [ %.pn163, %bb.bp ], [ %.pn180, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %.pn170, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ], [ %i.dx, %bb.cd ], [ %.pn177.pn, %bb.dl ], [ %.pn175, %bb.cz ], [ %.pn172, %bb.cw ], [ %.pn190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268 ], [ %i.fp, %bb.dm ], [ %.pn187.pn, %bb.er ], [ %.pn185, %bb.ei ], [ %.pn182, %bb.ef ], [ %.pn202.pn.pn, %.body ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %26) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #13
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %25) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  br label %bb.ih

bb.ih:                                            ; preds = %bb.an, %bb.ig, %bb.am
  %.pn209.pn = phi { ptr, i32 } [ %.pn158.pn, %bb.am ], [ %.pn202.pn.pn.pn.pn.pn, %bb.ig ], [ %i.cb, %bb.an ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn209.pn.pn = phi { ptr, i32 } [ %.pn209.pn, %bb.ih ], [ %.pn156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231 ], [ %.pn154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ], [ %.pn152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit225 ], [ %.pn150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit222 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn209.pn.pn
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL14linearizeDepthERKNS_3MatES2_S0_dd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, double noundef %3, double noundef %4) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !27
  %i.b = and i32 %i.a, 4095
  %i.c = icmp eq i32 %i.b, 5
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cvL14linearizeDepthERKNS_3MatES2_S0_dd, ptr noundef nonnull @.str.1, i32 noundef 120) #14
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %9, align 8, !tbaa !19     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.i = load i64, ptr %i.g, align 8, !tbaa !20
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.e, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.k = load i32, ptr %1, align 8, !tbaa !27
  %i.l = and i32 %i.k, 4095
  switch i32 %i.l, label %bb.h [
    i32 0, label %bb.m
    i32 1, label %bb.m
    i32 9, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cvL14linearizeDepthERKNS_3MatES2_S0_dd, ptr noundef nonnull @.str.1, i32 noundef 121) #14
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.l:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %11, align 8, !tbaa !19    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.l
  %i.r = load i64, ptr %i.p, align 8, !tbaa !20
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.k
  %.pn38 = phi { ptr, i32 } [ %i.m, %bb.k ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %i.n, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  br label %common.resume

bb.m:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.t = load i32, ptr %2, align 8, !tbaa !27
  %i.u = and i32 %i.t, 4095
  %i.v = icmp eq i32 %i.u, 5
  br i1 %i.v, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cvL14linearizeDepthERKNS_3MatES2_S0_dd, ptr noundef nonnull @.str.1, i32 noundef 122) #14
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.r:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %13, align 8, !tbaa !19    ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.r
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !20
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.q
  %.pn40 = phi { ptr, i32 } [ %i.w, %bb.q ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.x, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
end_hunk_0
