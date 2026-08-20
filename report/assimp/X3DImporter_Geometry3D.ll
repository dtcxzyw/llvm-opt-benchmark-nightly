inline.NumInlined: 1396
inline.NumDeleted: 524
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a
  %i.oq = load float, ptr %i.op, align 4
  %i.or = fcmp une float %i.oo, %i.oq
  br i1 %i.or, label %.critedge34.i353, label %bb.cb

.critedge.i357:                                   ; preds = %.preheader.i354, %bb.cb
  %.not.i.i.i358 = icmp eq ptr %i.nr, %i.nh
  br i1 %.not.i.i.i358, label %bb.cd, label %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.critedge.i357
  store ptr %i.nr, ptr %i.av, align 8
  br label %bb.cd

.critedge34.i353:                                 ; preds = %_ZNK10aiVector3tIfEneERKS0_.exit.i, %bb.cc, %.lr.ph.i359, %_ZNK10aiVector3tIfEeqERKS0_.exit.i, %bb.ca, %bb.bz
  %i.os = add nuw i64 %.03046.i352, 1             ; 2 uses
  %exitcond52.not.i = icmp eq i64 %i.os, %i.nm
  br i1 %exitcond52.not.i, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit.thread, label %bb.bz, !llvm.loop !40

bb.cd:                                            ; preds = %.critedge.i357, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %.pre1132.pre-phi = phi i64 [ %i.nm, %.critedge.i357 ], [ %.03046.i352, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ]
  %i.ot = phi ptr [ %i.nh, %.critedge.i357 ], [ %i.nr, %_ZSt8_DestroyIP10aiVector3tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ]
  %i.ou = or i8 %.1878, %.1
  br label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit

bb.ce:                                            ; preds = %bb.it, %bb.is, %._crit_edge1034
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit: ; preds = %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit, %bb.cd
  %.pre-phi1133 = phi i64 [ %.pre1132.pre-phi, %bb.cd ], [ %i.nm, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ] ; 2 uses
  %i.ow = phi ptr [ %i.ot, %bb.cd ], [ %i.nh, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ]
  %.0877 = phi i8 [ 0, %bb.cd ], [ %.1878, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ] ; 2 uses
  %.0872 = phi i8 [ %i.ou, %bb.cd ], [ %.1, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ] ; 2 uses
  %.not1344 = icmp eq i64 %.pre-phi1133, 0
  br i1 %.not1344, label %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit.thread

_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit.thread: ; preds = %.critedge34.i353, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit
  %.08721353 = phi i8 [ %.0872, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ], [ %.1, %.critedge34.i353 ]
  %.08771351 = phi i8 [ %.0877, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ], [ %.1878, %.critedge34.i353 ]
  %i.ox = phi i1 [ %i.nn, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ], [ false, %.critedge34.i353 ]
  %.pre-phi11331349 = phi i64 [ %.pre-phi1133, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ], [ %i.nm, %.critedge34.i353 ]
  invoke void @_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %.pre-phi11331349)
          to label %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1080 unwind label %bb.cg

._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1080: ; preds = %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit.thread
  %.pre1081 = load ptr, ptr %i.av, align 8        ; 2 uses
  %.pre1082 = load ptr, ptr %15, align 8          ; 2 uses
  %.pre1134 = ptrtoint ptr %.pre1081 to i64
  %.pre1136 = ptrtoint ptr %.pre1082 to i64
  %.pre1138 = sub i64 %.pre1134, %.pre1136
  %.pre1140 = sdiv exact i64 %.pre1138, 12
  %i.oy = call i64 @llvm.umax.i64(i64 %.pre1140, i64 1)
  br label %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit

_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit: ; preds = %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1080
  %.08721352 = phi i8 [ %.08721353, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1080 ], [ %.0872, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ]
  %.08771350 = phi i8 [ %.08771351, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1080 ], [ %.0877, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ]
  %i.oz = phi i1 [ %i.ox, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1080 ], [ %i.nn, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ] ; 4 uses
  %.pre-phi1141 = phi i64 [ %i.oy, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1080 ], [ 1, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ]
  %i.pa = phi ptr [ %.pre1082, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1080 ], [ %i.ni, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ]
  %i.pb = phi ptr [ %.pre1081, %._ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit_crit_edge1080 ], [ %i.ow, %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit ]
  %.not1037 = icmp eq ptr %i.pb, %i.pa
  br i1 %.not1037, label %._crit_edge, label %.lr.ph1006

._crit_edge:                                      ; preds = %bb.cz, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.pc = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.pd = load ptr, ptr %12, align 8              ; 2 uses
  %i.pe = ptrtoint ptr %i.pc to i64
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = sub i64 %i.pe, %i.pf
  %i.ph = ashr exact i64 %i.pg, 3                 ; 3 uses
  %i.pi = icmp ugt i64 %i.ph, 768614336404564650
  br i1 %i.pi, label %bb.cf, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.cf:                                            ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #23
          to label %.noexc369 unwind label %bb.di

.noexc369:                                        ; preds = %bb.cf
  unreachable

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %._crit_edge
  store i64 0, ptr %18, align 8
  %.not.i.i.i.i366 = icmp eq ptr %i.pc, %i.pd
  br i1 %.not.i.i.i.i366, label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.pj = mul nuw nsw i64 %i.ph, 12               ; 3 uses
  %i.pk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pj) #21
          to label %.noexc370 unwind label %bb.di ; 4 uses

.noexc370:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.pk, ptr %18, align 8
  %i.pl = getelementptr inbounds nuw [12 x i8], ptr %i.pk, i64 %i.ph
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.pk, i8 0, i64 %i.pj, i1 false)
  %scevgep.i.i.i.i.i367 = getelementptr i8, ptr %i.pk, i64 %i.pj
  br label %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i

bb.cg:                                            ; preds = %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit.thread
  %i.pm = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

.lr.ph1006:                                       ; preds = %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit, %bb.cz
  %.02271005 = phi i64 [ %i.abw, %bb.cz ], [ 0, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit ] ; 16 uses
  %.sroa.0791.01004 = phi <2 x float> [ %.sroa.015.3.i, %bb.cz ], [ zeroinitializer, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit ] ; 4 uses
  %.sroa.10796.01003 = phi float [ %.sroa.31.3.i, %bb.cz ], [ 0.000000e+00, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit ] ; 3 uses
  %.val = load ptr, ptr %15, align 8              ; 21 uses
  %.val256 = load ptr, ptr %i.av, align 8
  %i.pn = ptrtoint ptr %.val256 to i64
  %i.po = ptrtoint ptr %.val to i64
  %i.pp = sub i64 %i.pn, %i.po                    ; 2 uses
  %i.pq = sdiv exact i64 %i.pp, 12                ; 2 uses
  %i.pr = add nsw i64 %i.pq, -1                   ; 5 uses
  %i.ps = icmp eq i64 %.02271005, 0               ; 3 uses
  %i.pt = icmp eq i64 %.02271005, %i.pr           ; 2 uses
  %or.cond.i = or i1 %i.ps, %i.pt
  br i1 %or.cond.i, label %bb.ch, label %bb.cm

bb.ch:                                            ; preds = %.lr.ph1006
  br i1 %i.oz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.pu = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.pv = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.pr ; 2 uses
  %i.pw = load <2 x float>, ptr %i.pu, align 4
  %i.px = load <2 x float>, ptr %i.pv, align 4
  %i.py = fsub <2 x float> %i.pw, %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.qa = load float, ptr %i.pz, align 4
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.qc = load float, ptr %i.qb, align 4
  %i.qd = fsub float %i.qa, %i.qc
  br label %bb.cn

bb.cj:                                            ; preds = %bb.ch
  br i1 %i.ps, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.qe = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.qf = load <2 x float>, ptr %i.qe, align 4
  %i.qg = load <2 x float>, ptr %.val, align 4
  %i.qh = fsub <2 x float> %i.qf, %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.qj = load float, ptr %i.qi, align 4
  %i.qk = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ql = load float, ptr %i.qk, align 4
  %i.qm = fsub float %i.qj, %i.ql
  br label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  %i.qn = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.pr ; 2 uses
  %i.qo = getelementptr i8, ptr %.val, i64 %i.pp  ; 2 uses
  %i.qp = getelementptr i8, ptr %i.qo, i64 -24
  %i.qq = load <2 x float>, ptr %i.qn, align 4
  %i.qr = load <2 x float>, ptr %i.qp, align 4
  %i.qs = fsub <2 x float> %i.qq, %i.qr
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qu = load float, ptr %i.qt, align 4
  %i.qv = getelementptr i8, ptr %i.qo, i64 -16
  %i.qw = load float, ptr %i.qv, align 4
  %i.qx = fsub float %i.qu, %i.qw
  br label %bb.cn

bb.cm:                                            ; preds = %.lr.ph1006
  %i.qy = getelementptr [12 x i8], ptr %.val, i64 %.02271005 ; 4 uses
  %i.qz = getelementptr i8, ptr %i.qy, i64 12
  %i.ra = getelementptr i8, ptr %i.qy, i64 -12
  %i.rb = load <2 x float>, ptr %i.qz, align 4
  %i.rc = load <2 x float>, ptr %i.ra, align 4
  %i.rd = fsub <2 x float> %i.rb, %i.rc
  %i.re = getelementptr i8, ptr %i.qy, i64 20
  %i.rf = load float, ptr %i.re, align 4
  %i.rg = getelementptr i8, ptr %i.qy, i64 -4
  %i.rh = load float, ptr %i.rg, align 4
  %i.ri = fsub float %i.rf, %i.rh
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.ci
  %.sroa.13.0.i = phi float [ %i.qd, %bb.ci ], [ %i.qx, %bb.cl ], [ %i.qm, %bb.ck ], [ %i.ri, %bb.cm ] ; 4 uses
  %i.rj = phi <2 x float> [ %i.py, %bb.ci ], [ %i.qs, %bb.cl ], [ %i.qh, %bb.ck ], [ %i.rd, %bb.cm ] ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.rj, %i.rj
  %i.rk = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.rl = extractelement <2 x float> %i.rj, i64 0 ; 2 uses
  %i.rm = call float @llvm.fmuladd.f32(float %i.rl, float %i.rl, float %i.rk)
  %i.rn = call noundef float @llvm.fmuladd.f32(float %.sroa.13.0.i, float %.sroa.13.0.i, float %i.rm) ; 2 uses
  %i.ro = fcmp oeq float %i.rn, 0.000000e+00
  br i1 %i.ro, label %bb.co, label %_ZN10aiVector3tIfEdVEf.exit.i.i

_ZN10aiVector3tIfEdVEf.exit.i.i:                  ; preds = %bb.cn
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.rn)
  %i.rp = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.rq = insertelement <2 x float> poison, float %i.rp, i64 0
  %i.rr = shufflevector <2 x float> %i.rq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rs = fmul <2 x float> %i.rj, %i.rr
  %i.rt = fmul float %.sroa.13.0.i, %i.rp
  br label %bb.co

bb.co:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i.i, %bb.cn
  %.sroa.13.1.i = phi float [ %.sroa.13.0.i, %bb.cn ], [ %i.rt, %_ZN10aiVector3tIfEdVEf.exit.i.i ] ; 4 uses
  %.sroa.0.1.i = phi <2 x float> [ %i.rj, %bb.cn ], [ %i.rs, %_ZN10aiVector3tIfEdVEf.exit.i.i ] ; 7 uses
  %i.ru = icmp ult i64 %i.pq, 3
  br i1 %i.ru, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.ps, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  br i1 %i.oz, label %bb.cr, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i

bb.cr:                                            ; preds = %bb.cq
  %i.rv = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.rw = load float, ptr %i.rv, align 4
  %i.rx = load float, ptr %.val, align 4
  %i.ry = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.rz = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.sa = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.pr ; 2 uses
  %i.sb = load float, ptr %i.sa, align 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 4
  %i.sd = load <2 x float>, ptr %i.ry, align 4    ; 2 uses
  %i.se = load <2 x float>, ptr %i.rz, align 4    ; 3 uses
  %i.sf = fsub <2 x float> %i.sd, %i.se           ; 2 uses
  %i.sg = shufflevector <2 x float> %i.sd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sh = insertelement <2 x float> %i.sg, float %i.rw, i64 1
  %i.si = shufflevector <2 x float> %i.se, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sj = insertelement <2 x float> %i.si, float %i.rx, i64 1 ; 2 uses
  %i.sk = fsub <2 x float> %i.sh, %i.sj           ; 2 uses
  %i.sl = load <2 x float>, ptr %i.sc, align 4    ; 2 uses
  %i.sm = shufflevector <2 x float> %i.sl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sn = insertelement <2 x float> %i.sm, float %i.sb, i64 1
  %i.so = fsub <2 x float> %i.sn, %i.sj           ; 2 uses
  %i.sp = fsub <2 x float> %i.sl, %i.se           ; 2 uses
  %i.sq = fneg <2 x float> %i.sp
  %i.sr = fmul <2 x float> %i.sk, %i.sq
  %i.ss = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sf, <2 x float> %i.so, <2 x float> %i.sr)
  %i.st = extractelement <2 x float> %i.so, i64 1
  %i.su = fneg float %i.st
  %i.sv = extractelement <2 x float> %i.sf, i64 0
  %i.sw = fmul float %i.sv, %i.su
  %i.sx = extractelement <2 x float> %i.sk, i64 1
  %i.sy = extractelement <2 x float> %i.sp, i64 0
  %i.sz = call float @llvm.fmuladd.f32(float %i.sx, float %i.sy, float %i.sw)
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

._crit_edge.i:                                    ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i
  br i1 %.not88.i, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i, label %bb.cs

_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i:          ; preds = %bb.cq, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i
  %.010292.i = phi i64 [ %i.um, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i ], [ 2, %bb.cq ] ; 2 uses
  %i.ta = getelementptr [12 x i8], ptr %.val, i64 %.010292.i ; 6 uses
  %i.tb = getelementptr i8, ptr %i.ta, i64 -12
  %i.tc = load float, ptr %i.ta, align 4
  %i.td = load float, ptr %i.tb, align 4
  %i.te = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %i.tf = getelementptr i8, ptr %i.ta, i64 -8
  %i.tg = getelementptr i8, ptr %i.ta, i64 -24
  %i.th = load float, ptr %i.tg, align 4
  %i.ti = getelementptr i8, ptr %i.ta, i64 -20
  %i.tj = load <2 x float>, ptr %i.te, align 4    ; 2 uses
  %i.tk = load <2 x float>, ptr %i.tf, align 4    ; 3 uses
  %i.tl = fsub <2 x float> %i.tj, %i.tk           ; 2 uses
  %i.tm = shufflevector <2 x float> %i.tj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tn = insertelement <2 x float> %i.tm, float %i.tc, i64 1
  %i.to = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tp = insertelement <2 x float> %i.to, float %i.td, i64 1 ; 2 uses
  %i.tq = fsub <2 x float> %i.tn, %i.tp           ; 2 uses
  %i.tr = load <2 x float>, ptr %i.ti, align 4    ; 2 uses
  %i.ts = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.tt = insertelement <2 x float> %i.ts, float %i.th, i64 1
  %i.tu = fsub <2 x float> %i.tt, %i.tp           ; 2 uses
  %i.tv = fsub <2 x float> %i.tr, %i.tk           ; 2 uses
  %i.tw = fneg <2 x float> %i.tv
  %i.tx = fmul <2 x float> %i.tq, %i.tw
  %i.ty = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> %i.tu, <2 x float> %i.tx) ; 2 uses
  %i.tz = extractelement <2 x float> %i.tu, i64 1
  %i.ua = fneg float %i.tz
  %i.ub = extractelement <2 x float> %i.tl, i64 0
  %i.uc = fmul float %i.ub, %i.ua
  %i.ud = extractelement <2 x float> %i.tq, i64 1
  %i.ue = extractelement <2 x float> %i.tv, i64 0
  %i.uf = call float @llvm.fmuladd.f32(float %i.ud, float %i.ue, float %i.uc) ; 2 uses
  %i.ug = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ty)
  %i.uh = fcmp ugt <2 x float> %i.ug, splat (float f0x358637BD) ; 2 uses
  %i.ui = extractelement <2 x i1> %i.uh, i64 0
  %i.uj = extractelement <2 x i1> %i.uh, i64 1
  %or.cond.not.not91.i = select i1 %i.ui, i1 true, i1 %i.uj
  %i.uk = call float @llvm.fabs.f32(float %i.uf)
  %i.ul = fcmp ugt float %i.uk, f0x358637BD
  %.not88.i = select i1 %or.cond.not.not91.i, i1 true, i1 %i.ul ; 2 uses
  %i.um = add i64 %.010292.i, 1                   ; 2 uses
  %i.un = icmp ugt i64 %i.um, %i.pr
  %.not104.i = or i1 %i.un, %.not88.i
  br i1 %.not104.i, label %._crit_edge.i, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit.i, !llvm.loop !41

bb.cs:                                            ; preds = %._crit_edge.i
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.ct:                                            ; preds = %bb.cp
  br i1 %i.pt, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.oz, label %bb.cv, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.cv:                                            ; preds = %bb.cu
  %i.uo = getelementptr [12 x i8], ptr %.val, i64 %.02271005 ; 4 uses
  %i.up = load float, ptr %.val, align 4
  %i.uq = load float, ptr %i.uo, align 4
  %i.ur = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.us = getelementptr inbounds nuw i8, ptr %i.uo, i64 4
  %i.ut = getelementptr i8, ptr %i.uo, i64 -12
  %i.uu = load float, ptr %i.ut, align 4
  %i.uv = getelementptr i8, ptr %i.uo, i64 -8
  %i.uw = load <2 x float>, ptr %i.ur, align 4    ; 2 uses
  %i.ux = load <2 x float>, ptr %i.us, align 4    ; 3 uses
  %i.uy = fsub <2 x float> %i.uw, %i.ux           ; 2 uses
  %i.uz = shufflevector <2 x float> %i.uw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.va = insertelement <2 x float> %i.uz, float %i.up, i64 1
  %i.vb = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vc = insertelement <2 x float> %i.vb, float %i.uq, i64 1 ; 2 uses
  %i.vd = fsub <2 x float> %i.va, %i.vc           ; 2 uses
  %i.ve = load <2 x float>, ptr %i.uv, align 4    ; 2 uses
  %i.vf = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vg = insertelement <2 x float> %i.vf, float %i.uu, i64 1
  %i.vh = fsub <2 x float> %i.vg, %i.vc           ; 2 uses
  %i.vi = fsub <2 x float> %i.ve, %i.ux           ; 2 uses
  %i.vj = fneg <2 x float> %i.vi
  %i.vk = fmul <2 x float> %i.vd, %i.vj
  %i.vl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uy, <2 x float> %i.vh, <2 x float> %i.vk) ; 2 uses
  %i.vm = extractelement <2 x float> %i.vh, i64 1
  %i.vn = fneg float %i.vm
  %i.vo = extractelement <2 x float> %i.uy, i64 0
  %i.vp = fmul float %i.vo, %i.vn
  %i.vq = extractelement <2 x float> %i.vd, i64 1
  %i.vr = extractelement <2 x float> %i.vi, i64 0
  %i.vs = call float @llvm.fmuladd.f32(float %i.vq, float %i.vr, float %i.vp) ; 2 uses
  %i.vt = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.vl)
  %i.vu = fcmp ole <2 x float> %i.vt, splat (float f0x358637BD) ; 2 uses
  %i.vv = extractelement <2 x i1> %i.vu, i64 0
  %i.vw = extractelement <2 x i1> %i.vu, i64 1
  %or.cond76.not86.i = select i1 %i.vv, i1 %i.vw, i1 false
  %i.vx = call float @llvm.fabs.f32(float %i.vs)
  %i.vy = fcmp ole float %i.vx, f0x358637BD
  %or.cond78.i = select i1 %or.cond76.not86.i, i1 %i.vy, i1 false
  br i1 %or.cond78.i, label %bb.cx, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.cw:                                            ; preds = %bb.ct
  %i.vz = getelementptr [12 x i8], ptr %.val, i64 %.02271005 ; 6 uses
  %i.wa = getelementptr i8, ptr %i.vz, i64 12
  %i.wb = load float, ptr %i.wa, align 4
  %i.wc = load float, ptr %i.vz, align 4
  %i.wd = getelementptr i8, ptr %i.vz, i64 16
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 4
  %i.wf = getelementptr i8, ptr %i.vz, i64 -12
  %i.wg = load float, ptr %i.wf, align 4
  %i.wh = getelementptr i8, ptr %i.vz, i64 -8
  %i.wi = load <2 x float>, ptr %i.wd, align 4    ; 2 uses
  %i.wj = load <2 x float>, ptr %i.we, align 4    ; 3 uses
  %i.wk = fsub <2 x float> %i.wi, %i.wj           ; 2 uses
  %i.wl = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wm = insertelement <2 x float> %i.wl, float %i.wb, i64 1
  %i.wn = shufflevector <2 x float> %i.wj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wo = insertelement <2 x float> %i.wn, float %i.wc, i64 1 ; 2 uses
  %i.wp = fsub <2 x float> %i.wm, %i.wo           ; 2 uses
  %i.wq = load <2 x float>, ptr %i.wh, align 4    ; 2 uses
  %i.wr = shufflevector <2 x float> %i.wq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ws = insertelement <2 x float> %i.wr, float %i.wg, i64 1
  %i.wt = fsub <2 x float> %i.ws, %i.wo           ; 2 uses
  %i.wu = fsub <2 x float> %i.wq, %i.wj           ; 2 uses
  %i.wv = fneg <2 x float> %i.wu
  %i.ww = fmul <2 x float> %i.wp, %i.wv
  %i.wx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wk, <2 x float> %i.wt, <2 x float> %i.ww) ; 2 uses
  %i.wy = extractelement <2 x float> %i.wt, i64 1
  %i.wz = fneg float %i.wy
  %i.xa = extractelement <2 x float> %i.wk, i64 0
  %i.xb = fmul float %i.xa, %i.wz
  %i.xc = extractelement <2 x float> %i.wp, i64 1
  %i.xd = extractelement <2 x float> %i.wu, i64 0
  %i.xe = call float @llvm.fmuladd.f32(float %i.xc, float %i.xd, float %i.xb) ; 2 uses
  %i.xf = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.wx)
  %i.xg = fcmp ole <2 x float> %i.xf, splat (float f0x358637BD) ; 2 uses
  %i.xh = extractelement <2 x i1> %i.xg, i64 0
  %i.xi = extractelement <2 x i1> %i.xg, i64 1
  %or.cond80.not84.i = select i1 %i.xh, i1 %i.xi, i1 false
  %i.xj = call float @llvm.fabs.f32(float %i.xe)
  %i.xk = fcmp ole float %i.xj, f0x358637BD
  %or.cond82.i = select i1 %or.cond80.not84.i, i1 %i.xk, i1 false
  br i1 %or.cond82.i, label %bb.cx, label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  br label %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i

_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i: ; preds = %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.cs, %._crit_edge.i, %bb.cr, %bb.co
  %.sroa.015.1.i = phi <2 x float> [ %.sroa.0791.01004, %bb.cu ], [ %i.ss, %bb.cr ], [ %i.ty, %._crit_edge.i ], [ zeroinitializer, %bb.cs ], [ zeroinitializer, %bb.co ], [ %i.wx, %bb.cw ], [ %i.vl, %bb.cv ], [ %.sroa.0791.01004, %bb.cx ] ; 4 uses
  %.sroa.31.1.i = phi float [ %.sroa.10796.01003, %bb.cu ], [ %i.sz, %bb.cr ], [ %i.uf, %._crit_edge.i ], [ 1.000000e+00, %bb.cs ], [ 1.000000e+00, %bb.co ], [ %i.xe, %bb.cw ], [ %i.vs, %bb.cv ], [ %.sroa.10796.01003, %bb.cx ] ; 3 uses
  %.sroa.015.0.vec.extract27.i = extractelement <2 x float> %.sroa.015.1.i, i64 0
  %.sroa.069.0.vec.extract.i = extractelement <2 x float> %.sroa.0791.01004, i64 0
  %foldExtExtBinop1410 = fmul <2 x float> %.sroa.0791.01004, %.sroa.015.1.i
  %i.xl = extractelement <2 x float> %foldExtExtBinop1410, i64 1
  %i.xm = call float @llvm.fmuladd.f32(float %.sroa.015.0.vec.extract27.i, float %.sroa.069.0.vec.extract.i, float %i.xl)
  %i.xn = call noundef float @llvm.fmuladd.f32(float %.sroa.31.1.i, float %.sroa.10796.01003, float %i.xm)
  %i.xo = fcmp olt float %i.xn, 0.000000e+00      ; 2 uses
  %i.xp = fneg <2 x float> %.sroa.015.1.i
  %i.xq = fneg float %.sroa.31.1.i
  %.sroa.31.2.i = select i1 %i.xo, float %i.xq, float %.sroa.31.1.i ; 4 uses
  %i.xr = select i1 %i.xo, <2 x float> %i.xp, <2 x float> %.sroa.015.1.i ; 5 uses
  %foldExtExtBinop1412 = fmul <2 x float> %i.xr, %i.xr
  %i.xs = extractelement <2 x float> %foldExtExtBinop1412, i64 1
  %i.xt = extractelement <2 x float> %i.xr, i64 0 ; 2 uses
  %i.xu = call float @llvm.fmuladd.f32(float %i.xt, float %i.xt, float %i.xs)
  %i.xv = call noundef float @llvm.fmuladd.f32(float %.sroa.31.2.i, float %.sroa.31.2.i, float %i.xu) ; 2 uses
  %i.xw = fcmp oeq float %i.xv, 0.000000e+00
  br i1 %i.xw, label %bb.cy, label %_ZN10aiVector3tIfEdVEf.exit.i.i372

_ZN10aiVector3tIfEdVEf.exit.i.i372:               ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i
  %sqrt.i.i.i373 = call noundef float @llvm.sqrt.f32(float %i.xv)
  %i.xx = fdiv float 1.000000e+00, %sqrt.i.i.i373 ; 2 uses
  %i.xy = insertelement <2 x float> poison, float %i.xx, i64 0
  %i.xz = shufflevector <2 x float> %i.xy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ya = fmul <2 x float> %i.xr, %i.xz
  %i.yb = fmul float %.sroa.31.2.i, %i.xx
  br label %bb.cy

bb.cy:                                            ; preds = %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i, %_ZN10aiVector3tIfEdVEf.exit.i.i372
  %.sroa.015.3.i = phi <2 x float> [ %i.xr, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i ], [ %i.ya, %_ZN10aiVector3tIfEdVEf.exit.i.i372 ] ; 7 uses
  %.sroa.31.3.i = phi float [ %.sroa.31.2.i, %_ZNK10aiVector3tIfE5EqualERKS0_f.exit137.thread.i ], [ %i.yb, %_ZN10aiVector3tIfEdVEf.exit.i.i372 ] ; 5 uses
  %.sroa.0797.4.vec.extract = extractelement <2 x float> %.sroa.0.1.i, i64 1 ; 2 uses
  %.sroa.0791.4.vec.extract = extractelement <2 x float> %.sroa.015.3.i, i64 1 ; 2 uses
  %.sroa.0791.0.vec.extract = extractelement <2 x float> %.sroa.015.3.i, i64 0 ; 2 uses
  %.sroa.0797.0.vec.extract = extractelement <2 x float> %.sroa.0.1.i, i64 0 ; 2 uses
  %20 = shufflevector <2 x float> %.sroa.015.3.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.yc = insertelement <2 x float> %20, float %.sroa.31.3.i, i64 1
  %i.yd = fneg <2 x float> %i.yc
  %i.ye = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.yf = insertelement <2 x float> %i.ye, float %.sroa.13.1.i, i64 0
  %i.yg = fmul <2 x float> %i.yf, %i.yd
  %i.yh = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <2 x i32> <i32 1, i32 2>
  %i.yi = insertelement <2 x float> poison, float %.sroa.31.3.i, i64 0
  %i.yj = insertelement <2 x float> %i.yi, float %.sroa.13.1.i, i64 1
  %i.yk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yh, <2 x float> %i.yj, <2 x float> %i.yg) ; 5 uses
  %i.yl = fneg float %.sroa.0791.0.vec.extract
  %i.ym = fmul float %.sroa.0797.4.vec.extract, %i.yl
  %i.yn = call float @llvm.fmuladd.f32(float %.sroa.0797.0.vec.extract, float %.sroa.0791.4.vec.extract, float %i.ym) ; 4 uses
  %foldExtExtBinop1414 = fmul <2 x float> %i.yk, %i.yk
  %i.yo = extractelement <2 x float> %foldExtExtBinop1414, i64 1
  %i.yp = extractelement <2 x float> %i.yk, i64 0 ; 2 uses
  %i.yq = call float @llvm.fmuladd.f32(float %i.yp, float %i.yp, float %i.yo)
  %i.yr = call noundef float @llvm.fmuladd.f32(float %i.yn, float %i.yn, float %i.yq) ; 2 uses
  %i.ys = fcmp oeq float %i.yr, 0.000000e+00
  br i1 %i.ys, label %bb.cz, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.cy
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.yr)
  %i.yt = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.yu = insertelement <2 x float> poison, float %i.yt, i64 0
  %i.yv = shufflevector <2 x float> %i.yu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yw = fmul <2 x float> %i.yk, %i.yv
  %i.yx = fmul float %i.yn, %i.yt
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.cy
  %.sroa.9.0 = phi float [ %i.yn, %bb.cy ], [ %i.yx, %_ZN10aiVector3tIfEdVEf.exit.i ]
  %.sroa.0753.0 = phi <2 x float> [ %i.yk, %bb.cy ], [ %i.yw, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 2 uses
  %i.yy = load ptr, ptr %13, align 8
  %.idx = shl i64 %.02271005, 4
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 %.idx ; 3 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 12
  %i.zb = load float, ptr %i.za, align 4          ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  %i.zd = load <2 x float>, ptr %i.yz, align 4    ; 4 uses
  %i.ze = load <2 x float>, ptr %i.zc, align 4    ; 3 uses
  %i.zf = shufflevector <2 x float> %i.ze, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.zg = extractelement <2 x float> %i.zd, i64 0
  %i.zh = extractelement <2 x float> %i.ze, i64 1 ; 3 uses
  %i.zi = extractelement <2 x float> %i.zd, i64 1 ; 2 uses
  %i.zj = call noundef float @cosf(float noundef %i.zb) #20 ; 4 uses
  %i.zk = call noundef float @sinf(float noundef %i.zb) #20 ; 3 uses
  %i.zl = fsub float 1.000000e+00, %i.zj          ; 2 uses
  %i.zm = insertelement <2 x float> poison, float %i.zl, i64 0
  %i.zn = shufflevector <2 x float> %i.zm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zo = fmul <2 x float> %i.zd, %i.zn           ; 3 uses
  %i.zp = shufflevector <2 x float> %i.zo, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.zq = extractelement <2 x float> %i.zo, i64 0 ; 2 uses
  %i.zr = fmul float %i.zh, %i.zk                 ; 2 uses
  %i.zs = fneg float %i.zr
  %21 = call float @llvm.fmuladd.f32(float %i.zq, float %i.zi, float %i.zs) ; 3 uses
  %i.zt = fmul float %i.zi, %i.zk                 ; 2 uses
  %i.zu = call float @llvm.fmuladd.f32(float %i.zq, float %i.zh, float %i.zt) ; 2 uses
  %i.zv = fmul float %i.zg, %i.zk                 ; 2 uses
  %i.zw = fneg float %i.zv
  %i.zx = fneg float %i.zt
  %i.zy = insertelement <4 x float> poison, float %i.zj, i64 0
  %i.zz = insertelement <4 x float> %i.zy, float %i.zw, i64 1
  %i.aaa = insertelement <4 x float> %i.zz, float %i.zx, i64 2
  %i.aab = insertelement <4 x float> %i.aaa, float %i.zv, i64 3
  %i.aac = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zp, <4 x float> %i.zf, <4 x float> %i.aab) ; 8 uses
  %i.aad = fmul float %i.zh, %i.zl
  %22 = extractelement <4 x float> %i.aac, i64 3
  %i.aae = shufflevector <2 x float> %.sroa.0753.0, <2 x float> <float 1.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.aaf = shufflevector <4 x float> %i.aac, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.aag = insertelement <4 x float> %i.aaf, float %i.zj, i64 0
  %i.aah = insertelement <4 x float> %i.aag, float %21, i64 1
  %23 = fmul <4 x float> %i.aae, %i.aah
  %24 = extractelement <4 x float> %i.aac, i64 2
  %25 = shufflevector <4 x float> %i.aac, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 2>
  %26 = insertelement <4 x float> %25, float %i.aad, i64 0
  %27 = shufflevector <2 x float> %i.ze, <2 x float> %.sroa.0753.0, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %28 = load ptr, ptr %16, align 8
  %29 = getelementptr inbounds nuw [36 x i8], ptr %28, i64 %.02271005
  %30 = fmul float %.sroa.0797.4.vec.extract, %21
  %i.aai = insertelement <4 x float> poison, float %i.zu, i64 0
  %i.aaj = shufflevector <4 x float> %i.aai, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %31 = insertelement <4 x float> poison, float %.sroa.9.0, i64 0
  %32 = insertelement <4 x float> %31, float %.sroa.13.1.i, i64 1
  %33 = shufflevector <4 x float> %32, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.aak = shufflevector <2 x float> %i.zo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %34 = shufflevector <4 x float> %i.aak, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 5, i32 0>
  %35 = shufflevector <2 x float> %i.zd, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.aal = insertelement <4 x float> %35, float -0.000000e+00, i64 2
  %36 = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %37 = insertelement <4 x float> %36, float %i.zr, i64 0
  %38 = insertelement <4 x float> %37, float %i.zj, i64 1
  %39 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %40 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %34, <4 x float> %i.aal, <4 x float> %39) ; 3 uses
  %41 = shufflevector <4 x float> %26, <4 x float> %40, <4 x i32> <i32 0, i32 5, i32 4, i32 3>
  %i.aam = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %41, <4 x float> %27, <4 x float> %23) ; 4 uses
  %i.aan = extractelement <4 x float> %i.aam, i64 0
  %i.aao = extractelement <4 x float> %40, i64 1
  %42 = call float @llvm.fmuladd.f32(float %i.aao, float %.sroa.0797.0.vec.extract, float %30)
  %43 = shufflevector <4 x float> %i.aac, <4 x float> %i.aam, <4 x i32> <i32 poison, i32 poison, i32 1, i32 4>
  %44 = shufflevector <4 x float> %i.aaj, <4 x float> %43, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aap = insertelement <4 x float> %i.aam, float %42, i64 0
  %i.aaq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %44, <4 x float> %33, <4 x float> %i.aap)
  %45 = fadd <4 x float> %i.aaq, zeroinitializer  ; 4 uses
  %i.aar = extractelement <4 x float> %45, i64 1
  store float %i.aar, ptr %29, align 4
  %i.aas = load ptr, ptr %16, align 8
  %i.aat = getelementptr inbounds nuw [36 x i8], ptr %i.aas, i64 %.02271005
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 4
  %46 = extractelement <4 x float> %45, i64 2
  store float %46, ptr %i.aau, align 4
  %i.aav = load ptr, ptr %16, align 8
  %i.aaw = getelementptr inbounds nuw [36 x i8], ptr %i.aav, i64 %.02271005
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %i.aay = extractelement <4 x float> %45, i64 3
  store float %i.aay, ptr %i.aax, align 4
  %47 = load ptr, ptr %16, align 8
  %48 = getelementptr inbounds nuw [36 x i8], ptr %47, i64 %.02271005
  %49 = getelementptr inbounds nuw i8, ptr %48, i64 12
  %50 = extractelement <4 x float> %45, i64 0
  store float %50, ptr %49, align 4
  %51 = load ptr, ptr %16, align 8
  %52 = getelementptr inbounds nuw [36 x i8], ptr %51, i64 %.02271005
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 16
  %54 = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %55 = shufflevector <4 x float> %i.aac, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 3, i32 0>
  %56 = insertelement <4 x float> %55, float %21, i64 1
  %57 = fmul <4 x float> %54, %56
  %58 = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %59 = shufflevector <4 x float> %58, <4 x float> %i.aac, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %60 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %59, <4 x float> %40, <4 x float> %57)
  %61 = shufflevector <4 x float> %i.aac, <4 x float> %i.aam, <4 x i32> <i32 1, i32 poison, i32 4, i32 1>
  %i.aaz = insertelement <4 x float> %61, float %i.zu, i64 1
  %i.aba = insertelement <4 x float> poison, float %.sroa.13.1.i, i64 0
  %i.abb = insertelement <4 x float> %i.aba, float %.sroa.31.3.i, i64 1
  %62 = shufflevector <4 x float> %i.abb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.abc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaz, <4 x float> %62, <4 x float> %60)
  %i.abd = fadd <4 x float> %i.abc, zeroinitializer ; 4 uses
  %i.abe = extractelement <4 x float> %i.abd, i64 0
  store float %i.abe, ptr %53, align 4
  %i.abf = load ptr, ptr %16, align 8
  %i.abg = getelementptr inbounds nuw [36 x i8], ptr %i.abf, i64 %.02271005
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 20
  %i.abi = extractelement <4 x float> %i.abd, i64 2
  store float %i.abi, ptr %i.abh, align 4
  %63 = fmul float %.sroa.0791.4.vec.extract, %22
  %64 = call float @llvm.fmuladd.f32(float %24, float %.sroa.0791.0.vec.extract, float %63)
  %i.abj = call float @llvm.fmuladd.f32(float %i.aan, float %.sroa.31.3.i, float %64)
  %i.abk = fadd float %i.abj, 0.000000e+00
  %i.abl = load ptr, ptr %16, align 8
  %i.abm = getelementptr inbounds nuw [36 x i8], ptr %i.abl, i64 %.02271005
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 24
  %i.abo = extractelement <4 x float> %i.abd, i64 1
  store float %i.abo, ptr %i.abn, align 4
  %i.abp = load ptr, ptr %16, align 8
  %i.abq = getelementptr inbounds nuw [36 x i8], ptr %i.abp, i64 %.02271005
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 28
  %i.abs = extractelement <4 x float> %i.abd, i64 3
  store float %i.abs, ptr %i.abr, align 4
  %i.abt = load ptr, ptr %16, align 8
  %i.abu = getelementptr inbounds nuw [36 x i8], ptr %i.abt, i64 %.02271005
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 32
  store float %i.abk, ptr %i.abv, align 4
  %i.abw = add nuw i64 %.02271005, 1              ; 2 uses
  %exitcond1056.not = icmp eq i64 %i.abw, %.pre-phi1141
  br i1 %exitcond1056.not, label %._crit_edge, label %.lr.ph1006, !llvm.loop !42

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.noexc370
  %.sink.i = phi ptr [ %i.pl, %.noexc370 ], [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.0.lcssa.i.i.i.i.i368 = phi ptr [ %scevgep.i.i.i.i.i367, %.noexc370 ], [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %i.abx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.aby = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.aby, align 8
  store ptr %.0.lcssa.i.i.i.i.i368, ptr %i.abx, align 8
  %i.abz = load ptr, ptr %i.av, align 8
  %i.aca = load ptr, ptr %15, align 8
  %i.acb = ptrtoint ptr %i.abz to i64
  %i.acc = ptrtoint ptr %i.aca to i64
  %i.acd = sub i64 %i.acb, %i.acc
  %i.ace = sdiv exact i64 %i.acd, 12              ; 5 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.acg = load ptr, ptr %i.acf, align 8          ; 7 uses
  %i.ach = load ptr, ptr %17, align 8             ; 10 uses
  %i.aci = ptrtoint ptr %i.acg to i64             ; 2 uses
  %i.acj = ptrtoint ptr %i.ach to i64             ; 2 uses
  %i.ack = sub i64 %i.aci, %i.acj                 ; 2 uses
  %i.acl = sdiv exact i64 %i.ack, 24              ; 7 uses
  %i.acm = icmp ugt i64 %i.ace, %i.acl
  br i1 %i.acm, label %bb.da, label %bb.de

bb.da:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i
  %i.acn = sub nuw nsw i64 %i.ace, %i.acl         ; 5 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.acp = load ptr, ptr %i.aco, align 8
  %i.acq = ptrtoint ptr %i.acp to i64             ; 2 uses
  %i.acr = sub i64 %i.acq, %i.aci
  %i.acs = sdiv exact i64 %i.acr, 24              ; 2 uses
  %i.act = icmp ult i64 %i.acl, 384307168202282326
  call void @llvm.assume(i1 %i.act)
  %i.acu = sub nuw nsw i64 384307168202282325, %i.acl
  %i.acv = icmp ule i64 %i.acs, %i.acu
  call void @llvm.assume(i1 %i.acv)
  %.not28.i668 = icmp ult i64 %i.acs, %i.acn
  br i1 %.not28.i668, label %bb.db, label %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i: ; preds = %bb.da
  %i.acw = mul nuw nsw i64 %i.acn, 24             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.acg, i8 0, i64 %i.acw, i1 false)
  %scevgep.i.i.i.i669 = getelementptr i8, ptr %i.acg, i64 %i.acw
  store ptr %scevgep.i.i.i.i669, ptr %i.acf, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.db:                                            ; preds = %bb.da
  %i.acx = icmp ugt i64 %i.ace, 384307168202282325
  br i1 %i.acx, label %bb.dc, label %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
          to label %.noexc677 unwind label %bb.dj

.noexc677:                                        ; preds = %bb.dc
  unreachable

_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.db
  %.sroa.speculated.i.i670 = call i64 @llvm.umax.i64(i64 %i.acl, i64 %i.acn)
  %i.acy = add nuw nsw i64 %.sroa.speculated.i.i670, %i.acl
  %i.acz = call i64 @llvm.umin.i64(i64 %i.acy, i64 384307168202282325) ; 2 uses
  %i.ada = mul nuw nsw i64 %i.acz, 24
  %i.adb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ada) #21
          to label %.noexc678 unwind label %bb.dj ; 5 uses

.noexc678:                                        ; preds = %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 %i.ack ; 2 uses
  %i.add = mul nuw nsw i64 %i.acn, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.adc, i8 0, i64 %i.add, i1 false)
  %.not10.i.i.i.i671 = icmp eq ptr %i.ach, %i.acg
  br i1 %.not10.i.i.i.i671, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i672

.lr.ph.i.i.i.i672:                                ; preds = %.noexc678, %.lr.ph.i.i.i.i672
  %.012.i.i.i.i673 = phi ptr [ %i.adj, %.lr.ph.i.i.i.i672 ], [ %i.adb, %.noexc678 ] ; 3 uses
  %.0911.i.i.i.i674 = phi ptr [ %i.adi, %.lr.ph.i.i.i.i672 ], [ %i.ach, %.noexc678 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.ade = load <2 x ptr>, ptr %.0911.i.i.i.i674, align 8, !alias.scope !46, !noalias !43
  store <2 x ptr> %i.ade, ptr %.012.i.i.i.i673, align 8, !alias.scope !43, !noalias !46
  %i.adf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i673, i64 16
  %i.adg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i674, i64 16
  %i.adh = load ptr, ptr %i.adg, align 8, !alias.scope !46, !noalias !43
  store ptr %i.adh, ptr %i.adf, align 8, !alias.scope !43, !noalias !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i674, i8 0, i64 24, i1 false), !alias.scope !46, !noalias !43
  %i.adi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i674, i64 24 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i673, i64 24
  %.not.i.i.i.i675 = icmp eq ptr %i.adi, %i.acg
  br i1 %.not.i.i.i.i675, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i672, !llvm.loop !48

_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i672, %.noexc678
  %.not.i36.i676 = icmp eq ptr %i.ach, null
  br i1 %.not.i36.i676, label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.adk = sub i64 %i.acq, %i.acj
  call void @_ZdlPvm(ptr noundef nonnull %i.ach, i64 noundef %i.adk) #22
  br label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i

_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i: ; preds = %bb.dd, %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.adb, ptr %17, align 8
  %i.adl = getelementptr inbounds nuw [24 x i8], ptr %i.adc, i64 %i.acn
  store ptr %i.adl, ptr %i.acf, align 8
  %i.adm = getelementptr inbounds nuw [24 x i8], ptr %i.adb, i64 %i.acz
  store ptr %i.adm, ptr %i.aco, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.de:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i
  %i.adn = icmp ult i64 %i.ace, %i.acl
  br i1 %i.adn, label %bb.df, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.df:                                            ; preds = %bb.de
  %i.ado = getelementptr inbounds nuw [24 x i8], ptr %i.ach, i64 %i.ace ; 3 uses
  %.not.i.i384 = icmp eq ptr %i.acg, %i.ado
  br i1 %.not.i.i384, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i385

.lr.ph.i.i.i.i385:                                ; preds = %bb.df, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.adv, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ado, %bb.df ] ; 3 uses
  %i.adp = load ptr, ptr %.05.i.i.i.i, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.adp, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i385
  %i.adq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.adr = load ptr, ptr %i.adq, align 8
  %i.ads = ptrtoint ptr %i.adr to i64
  %i.adt = ptrtoint ptr %i.adp to i64
  %i.adu = sub i64 %i.ads, %i.adt
  call void @_ZdlPvm(ptr noundef nonnull %i.adp, i64 noundef %i.adu) #22
  br label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.dg, %.lr.ph.i.i.i.i385
  %i.adv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i386 = icmp eq ptr %i.adv, %i.acg
  br i1 %.not.i.i.i.i386, label %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i385, !llvm.loop !49

_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.ado, ptr %i.acf, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.df, %bb.de, %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i
  %i.adw = phi ptr [ %i.ach, %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i ], [ %i.ach, %bb.df ], [ %i.ach, %bb.de ], [ %i.adb, %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i ], [ %i.ach, %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i ]
  %i.adx = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.ady = load ptr, ptr %15, align 8             ; 2 uses
  %.not1038 = icmp eq ptr %i.adx, %i.ady
  br i1 %.not1038, label %._crit_edge1013, label %.lr.ph1012.preheader

.lr.ph1012.preheader:                             ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit
  %i.adz = ptrtoint ptr %i.adx to i64
  %i.aea = ptrtoint ptr %i.ady to i64
  %i.aeb = sub i64 %i.adz, %i.aea
  %i.aec = sdiv exact i64 %i.aeb, 12
  br label %.lr.ph1012

._crit_edge1013:                                  ; preds = %bb.dl, %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit
  %i.aed = load ptr, ptr %18, align 8             ; 3 uses
  %.not.i.i.i388 = icmp eq ptr %i.aed, null
  br i1 %.not.i.i.i388, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %._crit_edge1013
  %i.aee = load ptr, ptr %i.aby, align 8
  %i.aef = ptrtoint ptr %i.aee to i64
  %i.aeg = ptrtoint ptr %i.aed to i64
  %i.aeh = sub i64 %i.aef, %i.aeg
  call void @_ZdlPvm(ptr noundef nonnull %i.aed, i64 noundef %i.aeh) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %._crit_edge1013, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.aei = trunc nuw i8 %.08721352 to i1
  br i1 %i.aei, label %bb.dm, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.di:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cf
  %i.aej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit410

bb.dj:                                            ; preds = %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.dc
  %i.aek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

.lr.ph1012:                                       ; preds = %.lr.ph1012.preheader, %bb.dl
  %.02301011 = phi i64 [ %i.ahj, %bb.dl ], [ 0, %.lr.ph1012.preheader ] ; 5 uses
  %i.ael = load ptr, ptr %14, align 8
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.ael, i64 %.02301011 ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 4
  %i.aeo = load float, ptr %i.aen, align 4
end_hunk_0
