Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/X3DImporter_Geometry3D?download=true
inline.NumInlined: 1396
inline.NumDeleted: 524
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.bw, %bb.bv
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lg, i64 113
  store i8 %.0873, ptr %i.mb, align 1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lg, i64 145
  store i8 %.0880, ptr %i.mc, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %i.lg, i64 176
  store float %.0879, ptr %i.md, align 8
  store i8 %.0876, ptr %i.lu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.me = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.mf = load ptr, ptr %12, align 8              ; 6 uses
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = ashr exact i64 %i.mi, 3                 ; 4 uses
  %i.mk = icmp ult i64 %i.mj, 4
  br i1 %i.mk, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit, label %.preheader39.i

.preheader39.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ml = load float, ptr %i.mf, align 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  %i.mn = load float, ptr %i.mm, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %.critedge34.i, %.preheader39.i
  %.03046.i = phi i64 [ 3, %.preheader39.i ], [ %.041.i, %.critedge34.i ] ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %.03046.i ; 4 uses
  %i.mp = load float, ptr %i.mo, align 4
  %i.mq = fcmp oeq float %i.ml, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.ms = load float, ptr %i.mr, align 4
  %i.mt = fcmp oeq float %i.mn, %i.ms
  %i.mu = select i1 %i.mq, i1 %i.mt, i1 false
  %.041.i = add nuw i64 %.03046.i, 1              ; 4 uses
  br i1 %i.mu, label %.preheader.i, label %.critedge34.i

.preheader.i:                                     ; preds = %bb.bx
  %.not42.i = icmp ult i64 %.041.i, %i.mj
  br i1 %.not42.i, label %.lr.ph.i, label %.critedge.i

bb.by:                                            ; preds = %.lr.ph.i
  %i.mv = add i64 %.02843.i, 1
  %.0.i350 = add i64 %.044.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %.0.i350, %i.mj
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !37

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.by
  %.044.i = phi i64 [ %.0.i350, %bb.by ], [ %.041.i, %.preheader.i ] ; 2 uses
  %.02843.i = phi i64 [ %i.mv, %bb.by ], [ 1, %.preheader.i ] ; 2 uses
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %.02843.i ; 2 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %.044.i ; 2 uses
  %i.my = load float, ptr %i.mw, align 4
  %i.mz = load float, ptr %i.mx, align 4
  %i.na = fcmp une float %i.my, %i.mz
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 4
  %i.nc = load float, ptr %i.nb, align 4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.ne = load float, ptr %i.nd, align 4
  %i.nf = fcmp une float %i.nc, %i.ne
  %i.ng = select i1 %i.na, i1 true, i1 %i.nf
  br i1 %i.ng, label %.critedge34.i, label %bb.by

.critedge.i:                                      ; preds = %.preheader.i, %bb.by
  %.not.i.i.i349 = icmp eq ptr %i.mo, %i.me
  br i1 %.not.i.i.i349, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit, label %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.critedge.i
  store ptr %i.mo, ptr %i.bz, align 8
  br label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit

.critedge34.i:                                    ; preds = %.lr.ph.i, %bb.bx
  %exitcond51.not.i = icmp eq i64 %.041.i, %i.mj
  br i1 %exitcond51.not.i, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit, label %bb.bx, !llvm.loop !38

_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit: ; preds = %.critedge34.i, %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %.critedge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %.0874 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ], [ true, %_ZSt8_DestroyIP10aiVector2tIfES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ], [ true, %.critedge.i ], [ false, %.critedge34.i ]
  %i.nh = load ptr, ptr %i.av, align 8            ; 4 uses
  %i.ni = load ptr, ptr %15, align 8              ; 8 uses
  %i.nj = ptrtoint ptr %i.nh to i64
  %i.nk = ptrtoint ptr %i.ni to i64
  %i.nl = sub i64 %i.nj, %i.nk
  %i.nm = sdiv exact i64 %i.nl, 12                ; 7 uses
  %i.nn = icmp ugt i64 %i.nm, 3                   ; 3 uses
  br i1 %i.nn, label %.preheader39.i351, label %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector3tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit

.preheader39.i351:                                ; preds = %_ZN6AssimpL38GeometryHelper_Extrusion_CurveIsClosedI10aiVector2tIfEEEvRSt6vectorIT_SaIS4_EEbbRb.exit
  %i.no = load float, ptr %i.ni, align 4
  %i.np = getelementptr inbounds nuw i8, ptr %i.ni, i64 4
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  br label %bb.bz

bb.bz:                                            ; preds = %.critedge34.i353, %.preheader39.i351
  %.03046.i352 = phi i64 [ 3, %.preheader39.i351 ], [ %i.os, %.critedge34.i353 ] ; 4 uses
  %i.nr = getelementptr inbounds nuw [12 x i8], ptr %i.ni, i64 %.03046.i352 ; 6 uses
  %i.ns = load float, ptr %i.nr, align 4
  %i.nt = fcmp oeq float %i.no, %i.ns
  br i1 %i.nt, label %bb.ca, label %.critedge34.i353

bb.ca:                                            ; preds = %bb.bz
  %i.nu = load float, ptr %i.np, align 4
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 4
  %i.nw = load float, ptr %i.nv, align 4
  %i.nx = fcmp oeq float %i.nu, %i.nw
  br i1 %i.nx, label %_ZNK10aiVector3tIfEeqERKS0_.exit.i, label %.critedge34.i353

_ZNK10aiVector3tIfEeqERKS0_.exit.i:               ; preds = %bb.ca
  %i.ny = load float, ptr %i.nq, align 4
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nr, i64 8
  %i.oa = load float, ptr %i.nz, align 4
  %i.ob = fcmp oeq float %i.ny, %i.oa
  br i1 %i.ob, label %.preheader.i354, label %.critedge34.i353

.preheader.i354:                                  ; preds = %_ZNK10aiVector3tIfEeqERKS0_.exit.i
  %.041.i355 = add nuw i64 %.03046.i352, 1        ; 2 uses
  %.not42.i356 = icmp ult i64 %.041.i355, %i.nm
  br i1 %.not42.i356, label %.lr.ph.i359, label %.critedge.i357

bb.cb:                                            ; preds = %_ZNK10aiVector3tIfEneERKS0_.exit.i
  %i.oc = add i64 %.02843.i361, 1
  %.0.i362 = add i64 %.044.i360, 1                ; 2 uses
  %exitcond.not.i363 = icmp eq i64 %.0.i362, %i.nm
  br i1 %exitcond.not.i363, label %.critedge.i357, label %.lr.ph.i359, !llvm.loop !39

.lr.ph.i359:                                      ; preds = %.preheader.i354, %bb.cb
  %.044.i360 = phi i64 [ %.0.i362, %bb.cb ], [ %.041.i355, %.preheader.i354 ] ; 2 uses
  %.02843.i361 = phi i64 [ %i.oc, %bb.cb ], [ 1, %.preheader.i354 ] ; 2 uses
  %i.od = getelementptr inbounds nuw [12 x i8], ptr %i.ni, i64 %.02843.i361 ; 3 uses
  %i.oe = getelementptr inbounds nuw [12 x i8], ptr %i.ni, i64 %.044.i360 ; 3 uses
  %i.of = load float, ptr %i.od, align 4
  %i.og = load float, ptr %i.oe, align 4
  %i.oh = fcmp une float %i.of, %i.og
  br i1 %i.oh, label %.critedge34.i353, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i359
  %i.oi = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %i.oj = load float, ptr %i.oi, align 4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  %i.ol = load float, ptr %i.ok, align 4
  %i.om = fcmp une float %i.oj, %i.ol
  br i1 %i.om, label %.critedge34.i353, label %_ZNK10aiVector3tIfEneERKS0_.exit.i

_ZNK10aiVector3tIfEneERKS0_.exit.i:               ; preds = %bb.cc
  %i.on = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.oo = load float, ptr %i.on, align 4
  %i.op = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
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
  %.02271005 = phi i64 [ %i.adp, %bb.cz ], [ 0, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EE6resizeEm.exit ] ; 16 uses
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
end_hunk_0
begin_hunk_1_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a
  %i.aca = load ptr, ptr %16, align 8
  %i.acb = getelementptr inbounds nuw [36 x i8], ptr %i.aca, i64 %.02271005
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 12
  %i.acd = extractelement <4 x float> %i.abq, i64 0
  store float %i.acd, ptr %i.acc, align 4
  %i.ace = load ptr, ptr %16, align 8
  %i.acf = getelementptr inbounds nuw [36 x i8], ptr %i.ace, i64 %.02271005
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %i.ach = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.aci = shufflevector <4 x float> %i.aae, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 3, i32 0>
  %i.acj = insertelement <4 x float> %i.aci, float %i.zu, i64 1
  %i.ack = fmul <4 x float> %i.ach, %i.acj
  %i.acl = shufflevector <2 x float> %.sroa.0.1.i, <2 x float> %.sroa.015.3.i, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.acm = shufflevector <4 x float> %i.acl, <4 x float> %i.aae, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.acn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acm, <4 x float> %i.abg, <4 x float> %i.ack)
  %i.aco = shufflevector <4 x float> %i.aae, <4 x float> %i.abi, <4 x i32> <i32 1, i32 poison, i32 4, i32 1>
  %i.acp = insertelement <4 x float> %i.aco, float %i.zw, i64 1
  %i.acq = insertelement <4 x float> poison, float %.sroa.13.1.i, i64 0
  %i.acr = insertelement <4 x float> %i.acq, float %.sroa.31.3.i, i64 1
  %i.acs = shufflevector <4 x float> %i.acr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.act = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.acp, <4 x float> %i.acs, <4 x float> %i.acn)
  %i.acu = fadd <4 x float> %i.act, zeroinitializer ; 4 uses
  %i.acv = extractelement <4 x float> %i.acu, i64 0
  store float %i.acv, ptr %i.acg, align 4
  %i.acw = load ptr, ptr %16, align 8
  %i.acx = getelementptr inbounds nuw [36 x i8], ptr %i.acw, i64 %.02271005
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 20
  %i.acz = extractelement <4 x float> %i.acu, i64 2
  store float %i.acz, ptr %i.acy, align 4
  %i.ada = fmul float %.sroa.0791.4.vec.extract, %i.aag
  %i.adb = call float @llvm.fmuladd.f32(float %i.aam, float %.sroa.0791.0.vec.extract, float %i.ada)
  %i.adc = call float @llvm.fmuladd.f32(float %i.abj, float %.sroa.31.3.i, float %i.adb)
  %i.add = fadd float %i.adc, 0.000000e+00
  %i.ade = load ptr, ptr %16, align 8
  %i.adf = getelementptr inbounds nuw [36 x i8], ptr %i.ade, i64 %.02271005
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 24
  %i.adh = extractelement <4 x float> %i.acu, i64 1
  store float %i.adh, ptr %i.adg, align 4
  %i.adi = load ptr, ptr %16, align 8
  %i.adj = getelementptr inbounds nuw [36 x i8], ptr %i.adi, i64 %.02271005
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adj, i64 28
  %i.adl = extractelement <4 x float> %i.acu, i64 3
  store float %i.adl, ptr %i.adk, align 4
  %i.adm = load ptr, ptr %16, align 8
  %i.adn = getelementptr inbounds nuw [36 x i8], ptr %i.adm, i64 %.02271005
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 32
  store float %i.add, ptr %i.ado, align 4
  %i.adp = add nuw i64 %.02271005, 1              ; 2 uses
  %exitcond1056.not = icmp eq i64 %i.adp, %.pre-phi1141
  br i1 %exitcond1056.not, label %._crit_edge, label %.lr.ph1006, !llvm.loop !42

_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i, %.noexc370
  %.sink.i = phi ptr [ %i.pl, %.noexc370 ], [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %.0.lcssa.i.i.i.i.i368 = phi ptr [ %scevgep.i.i.i.i.i367, %.noexc370 ], [ null, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i ]
  %i.adq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.adr = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.adr, align 8
  store ptr %.0.lcssa.i.i.i.i.i368, ptr %i.adq, align 8
  %i.ads = load ptr, ptr %i.av, align 8
  %i.adt = load ptr, ptr %15, align 8
  %i.adu = ptrtoint ptr %i.ads to i64
  %i.adv = ptrtoint ptr %i.adt to i64
  %i.adw = sub i64 %i.adu, %i.adv
  %i.adx = sdiv exact i64 %i.adw, 12              ; 5 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.adz = load ptr, ptr %i.ady, align 8          ; 7 uses
  %i.aea = load ptr, ptr %17, align 8             ; 10 uses
  %i.aeb = ptrtoint ptr %i.adz to i64             ; 2 uses
  %i.aec = ptrtoint ptr %i.aea to i64             ; 2 uses
  %i.aed = sub i64 %i.aeb, %i.aec                 ; 2 uses
  %i.aee = sdiv exact i64 %i.aed, 24              ; 7 uses
  %i.aef = icmp ugt i64 %i.adx, %i.aee
  br i1 %i.aef, label %bb.da, label %bb.de

bb.da:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i
  %i.aeg = sub nuw nsw i64 %i.adx, %i.aee         ; 5 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.aei = load ptr, ptr %i.aeh, align 8
  %i.aej = ptrtoint ptr %i.aei to i64             ; 2 uses
  %i.aek = sub i64 %i.aej, %i.aeb
  %i.ael = sdiv exact i64 %i.aek, 24              ; 2 uses
  %i.aem = icmp ult i64 %i.aee, 384307168202282326
  call void @llvm.assume(i1 %i.aem)
  %i.aen = sub nuw nsw i64 384307168202282325, %i.aee
  %i.aeo = icmp ule i64 %i.ael, %i.aen
  call void @llvm.assume(i1 %i.aeo)
  %.not28.i668 = icmp ult i64 %i.ael, %i.aeg
  br i1 %.not28.i668, label %bb.db, label %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i: ; preds = %bb.da
  %i.aep = mul nuw nsw i64 %i.aeg, 24             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.adz, i8 0, i64 %i.aep, i1 false)
  %scevgep.i.i.i.i669 = getelementptr i8, ptr %i.adz, i64 %i.aep
  store ptr %scevgep.i.i.i.i669, ptr %i.ady, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.db:                                            ; preds = %bb.da
  %i.aeq = icmp ugt i64 %i.adx, 384307168202282325
  br i1 %i.aeq, label %bb.dc, label %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.57) #23
          to label %.noexc677 unwind label %bb.dj

.noexc677:                                        ; preds = %bb.dc
  unreachable

_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.db
  %.sroa.speculated.i.i670 = call i64 @llvm.umax.i64(i64 %i.aee, i64 %i.aeg)
  %i.aer = add nuw nsw i64 %.sroa.speculated.i.i670, %i.aee
  %i.aes = call i64 @llvm.umin.i64(i64 %i.aer, i64 384307168202282325) ; 2 uses
  %i.aet = mul nuw nsw i64 %i.aes, 24
  %i.aeu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aet) #21
          to label %.noexc678 unwind label %bb.dj ; 5 uses

.noexc678:                                        ; preds = %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 %i.aed ; 2 uses
  %i.aew = mul nuw nsw i64 %i.aeg, 24
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aev, i8 0, i64 %i.aew, i1 false)
  %.not10.i.i.i.i671 = icmp eq ptr %i.aea, %i.adz
  br i1 %.not10.i.i.i.i671, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i672

.lr.ph.i.i.i.i672:                                ; preds = %.noexc678, %.lr.ph.i.i.i.i672
  %.012.i.i.i.i673 = phi ptr [ %i.afc, %.lr.ph.i.i.i.i672 ], [ %i.aeu, %.noexc678 ] ; 3 uses
  %.0911.i.i.i.i674 = phi ptr [ %i.afb, %.lr.ph.i.i.i.i672 ], [ %i.aea, %.noexc678 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.aex = load <2 x ptr>, ptr %.0911.i.i.i.i674, align 8, !alias.scope !46, !noalias !43
  store <2 x ptr> %i.aex, ptr %.012.i.i.i.i673, align 8, !alias.scope !43, !noalias !46
  %i.aey = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i673, i64 16
  %i.aez = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i674, i64 16
  %i.afa = load ptr, ptr %i.aez, align 8, !alias.scope !46, !noalias !43
  store ptr %i.afa, ptr %i.aey, align 8, !alias.scope !43, !noalias !46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i674, i8 0, i64 24, i1 false), !alias.scope !46, !noalias !43
  %i.afb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i674, i64 24 ; 2 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i673, i64 24
  %.not.i.i.i.i675 = icmp eq ptr %i.afb, %i.adz
  br i1 %.not.i.i.i.i675, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i672, !llvm.loop !48

_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i672, %.noexc678
  %.not.i36.i676 = icmp eq ptr %i.aea, null
  br i1 %.not.i36.i676, label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  %i.afd = sub i64 %i.aej, %i.aec
  call void @_ZdlPvm(ptr noundef nonnull %i.aea, i64 noundef %i.afd) #22
  br label %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i

_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i: ; preds = %bb.dd, %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.aeu, ptr %17, align 8
  %i.afe = getelementptr inbounds nuw [24 x i8], ptr %i.aev, i64 %i.aeg
  store ptr %i.afe, ptr %i.ady, align 8
  %i.aff = getelementptr inbounds nuw [24 x i8], ptr %i.aeu, i64 %i.aes
  store ptr %i.aff, ptr %i.aeh, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.de:                                            ; preds = %_ZNSt12_Vector_baseI10aiVector3tIfESaIS1_EEC2EmRKS2_.exit.thread.i
  %i.afg = icmp ult i64 %i.adx, %i.aee
  br i1 %i.afg, label %bb.df, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

bb.df:                                            ; preds = %bb.de
  %i.afh = getelementptr inbounds nuw [24 x i8], ptr %i.aea, i64 %i.adx ; 3 uses
  %.not.i.i384 = icmp eq ptr %i.adz, %i.afh
  br i1 %.not.i.i384, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit, label %.lr.ph.i.i.i.i385

.lr.ph.i.i.i.i385:                                ; preds = %bb.df, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.afo, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.afh, %bb.df ] ; 3 uses
  %i.afi = load ptr, ptr %.05.i.i.i.i, align 8    ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.afi, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.i.i.i.i385
  %i.afj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.afk = load ptr, ptr %i.afj, align 8
  %i.afl = ptrtoint ptr %i.afk to i64
  %i.afm = ptrtoint ptr %i.afi to i64
  %i.afn = sub i64 %i.afl, %i.afm
  call void @_ZdlPvm(ptr noundef nonnull %i.afi, i64 noundef %i.afn) #22
  br label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.dg, %.lr.ph.i.i.i.i385
  %i.afo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i386 = icmp eq ptr %i.afo, %i.adz
  br i1 %.not.i.i.i.i386, label %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i385, !llvm.loop !49

_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.afh, ptr %i.ady, align 8
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit

_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, %bb.df, %bb.de, %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i
  %i.afp = phi ptr [ %i.aea, %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i ], [ %i.aea, %bb.df ], [ %i.aea, %bb.de ], [ %i.aeu, %_ZNSt12_Vector_baseISt6vectorI10aiVector3tIfESaIS2_EESaIS4_EE13_M_deallocateEPS4_m.exit37.i ], [ %i.aea, %_ZSt27__uninitialized_default_n_aIPSt6vectorI10aiVector3tIfESaIS2_EEmS4_ET_S6_T0_RSaIT1_E.exit.i ]
  %i.afq = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.afr = load ptr, ptr %15, align 8             ; 2 uses
  %.not1038 = icmp eq ptr %i.afq, %i.afr
  br i1 %.not1038, label %._crit_edge1013, label %.lr.ph1012.preheader

.lr.ph1012.preheader:                             ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit
  %i.afs = ptrtoint ptr %i.afq to i64
  %i.aft = ptrtoint ptr %i.afr to i64
  %i.afu = sub i64 %i.afs, %i.aft
  %i.afv = sdiv exact i64 %i.afu, 12
  br label %.lr.ph1012

._crit_edge1013:                                  ; preds = %bb.dl, %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE6resizeEm.exit
  %i.afw = load ptr, ptr %18, align 8             ; 3 uses
  %.not.i.i.i388 = icmp eq ptr %i.afw, null
  br i1 %.not.i.i.i388, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %._crit_edge1013
  %i.afx = load ptr, ptr %i.adr, align 8
  %i.afy = ptrtoint ptr %i.afx to i64
  %i.afz = ptrtoint ptr %i.afw to i64
  %i.aga = sub i64 %i.afy, %i.afz
  call void @_ZdlPvm(ptr noundef nonnull %i.afw, i64 noundef %i.aga) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %._crit_edge1013, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.agb = trunc nuw i8 %.08721352 to i1
  br i1 %i.agb, label %bb.dm, label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.di:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.cf
  %i.agc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit410

bb.dj:                                            ; preds = %_ZNKSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EE12_M_check_lenEmPKc.exit.i, %bb.dc
  %i.agd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

.lr.ph1012:                                       ; preds = %.lr.ph1012.preheader, %bb.dl
  %.02301011 = phi i64 [ %i.ajc, %bb.dl ], [ 0, %.lr.ph1012.preheader ] ; 5 uses
  %i.age = load ptr, ptr %14, align 8
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.age, i64 %.02301011 ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 4
  %i.agh = load float, ptr %i.agg, align 4
  %i.agi = load ptr, ptr %i.bz, align 8           ; 2 uses
  %i.agj = load ptr, ptr %12, align 8             ; 2 uses
  %.not1039 = icmp eq ptr %i.agi, %i.agj
  br i1 %.not1039, label %._crit_edge1010, label %.lr.ph1009.preheader

.lr.ph1009.preheader:                             ; preds = %.lr.ph1012
  %i.agk = load float, ptr %i.agf, align 4
  %i.agl = ptrtoint ptr %i.agi to i64
  %i.agm = ptrtoint ptr %i.agj to i64
  %i.agn = sub i64 %i.agl, %i.agm
  %i.ago = ashr exact i64 %i.agn, 3
  %i.agp = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.agk, i64 0
  br label %.lr.ph1009

._crit_edge1010:                                  ; preds = %.lr.ph1009, %.lr.ph1012
  %i.agq = getelementptr inbounds nuw [24 x i8], ptr %i.afp, i64 %.02301011
  %i.agr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI10aiVector3tIfESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.agq, ptr noundef nonnull align 8 dereferenceable(24) %18)
          to label %bb.dl unwind label %bb.dk     ; 0 uses

bb.dk:                                            ; preds = %._crit_edge1010
  %i.ags = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

.lr.ph1009:                                       ; preds = %.lr.ph1009.preheader, %.lr.ph1009
  %.02281007 = phi i64 [ %i.ajb, %.lr.ph1009 ], [ 0, %.lr.ph1009.preheader ] ; 4 uses
  %i.agt = load ptr, ptr %12, align 8
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %i.agt, i64 %.02281007 ; 2 uses
  %i.agv = load float, ptr %i.agu, align 4
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agu, i64 4
  %i.agx = load float, ptr %i.agw, align 4        ; 2 uses
  %i.agy = insertelement <2 x float> poison, float %i.agv, i64 0
  %i.agz = shufflevector <2 x float> %i.agy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aha = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agp, <2 x float> %i.agz, <2 x float> zeroinitializer) ; 2 uses
  %i.ahb = insertelement <2 x float> poison, float %i.agx, i64 0
  %i.ahc = shufflevector <2 x float> %i.ahb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ahc, <2 x float> zeroinitializer, <2 x float> %i.aha)
  %i.ahe = fadd <2 x float> %i.ahd, zeroinitializer
  %i.ahf = extractelement <2 x float> %i.aha, i64 1
  %i.ahg = call float @llvm.fmuladd.f32(float %i.agh, float %i.agx, float %i.ahf)
  %i.ahh = fadd float %i.ahg, 0.000000e+00
  %i.ahi = load ptr, ptr %18, align 8
  %i.ahj = getelementptr inbounds nuw [12 x i8], ptr %i.ahi, i64 %.02281007 ; 2 uses
  store <2 x float> %i.ahe, ptr %i.ahj, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  store float %i.ahh, ptr %.sroa.4.0..sroa_idx, align 4
  %i.ahk = load ptr, ptr %16, align 8
  %i.ahl = getelementptr inbounds nuw [36 x i8], ptr %i.ahk, i64 %.02301011 ; 6 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %i.ahn = load float, ptr %i.ahm, align 4
  %i.aho = load ptr, ptr %18, align 8
  %i.ahp = getelementptr inbounds nuw [12 x i8], ptr %i.aho, i64 %.02281007 ; 4 uses
  %i.ahq = load float, ptr %i.ahp, align 4        ; 2 uses
  %i.ahr = fmul float %i.ahn, %i.ahq
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahl, i64 12
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahl, i64 20
  %i.ahu = load float, ptr %i.aht, align 4
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahp, i64 4
  %i.ahw = load float, ptr %i.ahv, align 4        ; 2 uses
  %i.ahx = fmul float %i.ahu, %i.ahw
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahl, i64 24
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahl, i64 32
  %i.aia = load float, ptr %i.ahz, align 4
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahp, i64 8 ; 2 uses
  %i.aic = load float, ptr %i.aib, align 4        ; 2 uses
  %i.aid = fmul float %i.aia, %i.aic
  %i.aie = fadd float %i.ahr, %i.ahx
  %i.aif = fadd float %i.aie, %i.aid
  %i.aig = load ptr, ptr %15, align 8
  %i.aih = getelementptr inbounds nuw [12 x i8], ptr %i.aig, i64 %.02301011 ; 2 uses
  %i.aii = load <2 x float>, ptr %i.ahl, align 4
  %i.aij = insertelement <2 x float> poison, float %i.ahq, i64 0
  %i.aik = shufflevector <2 x float> %i.aij, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ail = fmul <2 x float> %i.aii, %i.aik
  %i.aim = load <2 x float>, ptr %i.ahs, align 4
  %i.ain = insertelement <2 x float> poison, float %i.ahw, i64 0
  %i.aio = shufflevector <2 x float> %i.ain, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aip = fmul <2 x float> %i.aim, %i.aio
  %i.aiq = load <2 x float>, ptr %i.ahy, align 4
  %i.air = insertelement <2 x float> poison, float %i.aic, i64 0
  %i.ais = shufflevector <2 x float> %i.air, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ait = fmul <2 x float> %i.aiq, %i.ais
  %i.aiu = fadd <2 x float> %i.ail, %i.aip
  %i.aiv = fadd <2 x float> %i.aiu, %i.ait
  %i.aiw = load <2 x float>, ptr %i.aih, align 4
  %i.aix = fadd <2 x float> %i.aiv, %i.aiw
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aih, i64 8
  %i.aiz = load float, ptr %i.aiy, align 4
  %i.aja = fadd float %i.aif, %i.aiz
  store <2 x float> %i.aix, ptr %i.ahp, align 4
  store float %i.aja, ptr %i.aib, align 4
  %i.ajb = add nuw i64 %.02281007, 1              ; 2 uses
  %exitcond1058.not = icmp eq i64 %i.ajb, %i.ago
  br i1 %exitcond1058.not, label %._crit_edge1010, label %.lr.ph1009, !llvm.loop !50

bb.dl:                                            ; preds = %._crit_edge1010
  %i.ajc = add nuw i64 %.02301011, 1              ; 2 uses
  %exitcond1060.not = icmp eq i64 %i.ajc, %i.afv
  br i1 %exitcond1060.not, label %._crit_edge1013, label %.lr.ph1012, !llvm.loop !51

bb.dm:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.ajd = load ptr, ptr %i.bz, align 8           ; 2 uses
  %i.aje = load ptr, ptr %12, align 8             ; 2 uses
  %.not1040 = icmp eq ptr %i.ajd, %i.aje
  br i1 %.not1040, label %.._crit_edge1017_crit_edge, label %.lr.ph1016

.._crit_edge1017_crit_edge:                       ; preds = %bb.dm
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.lg, i64 160
  %.pre1084 = load ptr, ptr %.phi.trans.insert, align 8
  br label %._crit_edge1017

.lr.ph1016:                                       ; preds = %bb.dm
  %i.ajf = ptrtoint ptr %i.ajd to i64
  %i.ajg = ptrtoint ptr %i.aje to i64
  %i.ajh = sub i64 %i.ajf, %i.ajg
  %i.aji = ashr exact i64 %i.ajh, 3
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.lg, i64 160 ; 4 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.lg, i64 168 ; 2 uses
  %.pre1083 = load ptr, ptr %i.ajj, align 8
  br label %bb.du

._crit_edge1017:                                  ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit420, %.._crit_edge1017_crit_edge
  %i.ajl = phi ptr [ %.pre1084, %.._crit_edge1017_crit_edge ], [ %i.alh, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit420 ] ; 3 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.lg, i64 160 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.lg, i64 168 ; 2 uses
  %i.ajo = load ptr, ptr %i.ajn, align 8
  %.not.i.i405 = icmp eq ptr %i.ajl, %i.ajo
  br i1 %.not.i.i405, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %._crit_edge1017
  store i32 -1, ptr %i.ajl, align 4
  %i.ajp = load ptr, ptr %i.ajm, align 8
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ajp, i64 4
  store ptr %i.ajq, ptr %i.ajm, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.do:                                            ; preds = %._crit_edge1017
  %i.ajr = load ptr, ptr %i.lw, align 8           ; 4 uses
  %i.ajs = ptrtoint ptr %i.ajl to i64
  %i.ajt = ptrtoint ptr %i.ajr to i64
  %i.aju = sub i64 %i.ajs, %i.ajt                 ; 6 uses
  %i.ajv = icmp eq i64 %i.aju, 9223372036854775804
  br i1 %i.ajv, label %bb.dp, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc407 unwind label %bb.ea

.noexc407:                                        ; preds = %bb.dp
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.do
  %i.ajw = ashr exact i64 %i.aju, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ajw, i64 1)
  %i.ajx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ajw ; 2 uses
  %i.ajy = icmp ult i64 %i.ajx, %i.ajw
  %i.ajz = call i64 @llvm.umin.i64(i64 %i.ajx, i64 2305843009213693951)
  %i.aka = select i1 %i.ajy, i64 2305843009213693951, i64 %i.ajz ; 3 uses
  %.not.i.i.i.i406 = icmp ne i64 %i.aka, 0
  call void @llvm.assume(i1 %.not.i.i.i.i406)
  %i.akb = shl nuw nsw i64 %i.aka, 2
  %i.akc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.akb) #21
          to label %.noexc408 unwind label %bb.ea ; 4 uses

.noexc408:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.akd = getelementptr inbounds i8, ptr %i.akc, i64 %i.aju ; 2 uses
  store i32 -1, ptr %i.akd, align 4
  %i.ake = icmp sgt i64 %i.aju, 0
  br i1 %i.ake, label %bb.dq, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.dq:                                            ; preds = %.noexc408
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.akc, ptr align 4 %i.ajr, i64 %i.aju, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dq, %.noexc408
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akd, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.ajr, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.dr

bb.dr:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ajr, i64 noundef %i.aju) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.dr, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.akc, ptr %i.lw, align 8
  store ptr %i.akf, ptr %i.ajm, align 8
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.aka
  store ptr %i.akg, ptr %i.ajn, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.ds:                                            ; preds = %bb.dk, %bb.dj
  %.pn242.pn = phi { ptr, i32 } [ %i.agd, %bb.dj ], [ %i.ags, %bb.dk ] ; 2 uses
  %i.akh = load ptr, ptr %18, align 8             ; 3 uses
  %.not.i.i.i409 = icmp eq ptr %i.akh, null
  br i1 %.not.i.i.i409, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit410, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.aki = load ptr, ptr %i.adr, align 8
  %i.akj = ptrtoint ptr %i.aki to i64
  %i.akk = ptrtoint ptr %i.akh to i64
  %i.akl = sub i64 %i.akj, %i.akk
  call void @_ZdlPvm(ptr noundef nonnull %i.akh, i64 noundef %i.akl) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit410

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit410: ; preds = %bb.dt, %bb.ds, %bb.di
  %.pn242.pn.pn = phi { ptr, i32 } [ %i.agc, %bb.di ], [ %.pn242.pn, %bb.ds ], [ %.pn242.pn, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  br label %bb.iy

bb.du:                                            ; preds = %.lr.ph1016, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit420
  %i.akm = phi ptr [ %.pre1083, %.lr.ph1016 ], [ %i.alh, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit420 ] ; 3 uses
  %.02101014 = phi i64 [ 0, %.lr.ph1016 ], [ %i.ali, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit420 ] ; 2 uses
  %i.akn = trunc i64 %.02101014 to i32            ; 2 uses
  %i.ako = load ptr, ptr %i.ajk, align 8
  %.not.i.i411 = icmp eq ptr %i.akm, %i.ako
  br i1 %.not.i.i411, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  store i32 %i.akn, ptr %i.akm, align 4
  %i.akp = load ptr, ptr %i.ajj, align 8
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 4 ; 2 uses
  store ptr %i.akq, ptr %i.ajj, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit420

bb.dw:                                            ; preds = %bb.du
  %i.akr = load ptr, ptr %i.lw, align 8           ; 4 uses
  %i.aks = ptrtoint ptr %i.akm to i64
  %i.akt = ptrtoint ptr %i.akr to i64
  %i.aku = sub i64 %i.aks, %i.akt                 ; 6 uses
  %i.akv = icmp eq i64 %i.aku, 9223372036854775804
  br i1 %i.akv, label %bb.dx, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i412

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc418 unwind label %.loopexit.split-lp973

.noexc418:                                        ; preds = %bb.dx
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i412: ; preds = %bb.dw
  %i.akw = ashr exact i64 %i.aku, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i413 = call i64 @llvm.umax.i64(i64 %i.akw, i64 1)
  %i.akx = add nsw i64 %.sroa.speculated.i.i.i.i413, %i.akw ; 2 uses
  %i.aky = icmp ult i64 %i.akx, %i.akw
  %i.akz = call i64 @llvm.umin.i64(i64 %i.akx, i64 2305843009213693951)
  %i.ala = select i1 %i.aky, i64 2305843009213693951, i64 %i.akz ; 3 uses
  %.not.i.i.i.i414 = icmp ne i64 %i.ala, 0
  call void @llvm.assume(i1 %.not.i.i.i.i414)
  %i.alb = shl nuw nsw i64 %i.ala, 2
  %i.alc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alb) #21
          to label %.noexc419 unwind label %.loopexit972 ; 4 uses

.noexc419:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i412
  %i.ald = getelementptr inbounds i8, ptr %i.alc, i64 %i.aku ; 2 uses
  store i32 %i.akn, ptr %i.ald, align 4
  %i.ale = icmp sgt i64 %i.aku, 0
  br i1 %i.ale, label %bb.dy, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i415

bb.dy:                                            ; preds = %.noexc419
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.alc, ptr align 4 %i.akr, i64 %i.aku, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i415

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i415: ; preds = %bb.dy, %.noexc419
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ald, i64 4 ; 2 uses
  %.not.i17.i.i.i416 = icmp eq ptr %i.akr, null
  br i1 %.not.i17.i.i.i416, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i417, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i415
  call void @_ZdlPvm(ptr noundef nonnull %i.akr, i64 noundef %i.aku) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i417

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i417: ; preds = %bb.dz, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i415
  store ptr %i.alc, ptr %i.lw, align 8
  store ptr %i.alf, ptr %i.ajj, align 8
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.alc, i64 %i.ala
  store ptr %i.alg, ptr %i.ajk, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit420

_ZNSt6vectorIiSaIiEE9push_backEOi.exit420:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i417, %bb.dv
  %i.alh = phi ptr [ %i.alf, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i417 ], [ %i.akq, %bb.dv ] ; 2 uses
  %i.ali = add nuw i64 %.02101014, 1              ; 2 uses
  %exitcond1062.not = icmp eq i64 %i.ali, %i.aji
  br i1 %exitcond1062.not, label %._crit_edge1017, label %bb.du, !llvm.loop !52

.loopexit972:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i412
  %lpad.loopexit974 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

.loopexit.split-lp973:                            ; preds = %bb.dx
  %lpad.loopexit.split-lp975 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.ea:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i, %bb.dp
  %i.alj = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy
end_hunk_1
begin_hunk_2_@_ZN6Assimp11X3DImporter13readExtrusionERN4pugi8xml_nodeE:bb.a
  br i1 %.not.i.i601, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit600
  store i32 %i.aow, ptr %i.bbs, align 4
  %i.bbt = load ptr, ptr %i.aof, align 8
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bbt, i64 4 ; 2 uses
  store ptr %i.bbu, ptr %i.aof, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit570

bb.id:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit600
  %i.bbv = load ptr, ptr %i.lw, align 8           ; 4 uses
  %i.bbw = ptrtoint ptr %i.bbr to i64
  %i.bbx = ptrtoint ptr %i.bbv to i64
  %i.bby = sub i64 %i.bbw, %i.bbx                 ; 6 uses
  %i.bbz = icmp eq i64 %i.bby, 9223372036854775804
  br i1 %i.bbz, label %bb.ie, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i602

bb.ie:                                            ; preds = %bb.id
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc608 unwind label %.loopexit.split-lp938

.noexc608:                                        ; preds = %bb.ie
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i602: ; preds = %bb.id
  %i.bca = ashr exact i64 %i.bby, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i603 = call i64 @llvm.umax.i64(i64 %i.bca, i64 1)
  %i.bcb = add nsw i64 %.sroa.speculated.i.i.i.i603, %i.bca ; 2 uses
  %i.bcc = icmp ult i64 %i.bcb, %i.bca
  %i.bcd = call i64 @llvm.umin.i64(i64 %i.bcb, i64 2305843009213693951)
  %i.bce = select i1 %i.bcc, i64 2305843009213693951, i64 %i.bcd ; 3 uses
  %.not.i.i.i.i604 = icmp ne i64 %i.bce, 0
  call void @llvm.assume(i1 %.not.i.i.i.i604)
  %i.bcf = shl nuw nsw i64 %i.bce, 2
  %i.bcg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bcf) #21
          to label %.noexc609 unwind label %.loopexit937 ; 4 uses

.noexc609:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i602
  %i.bch = getelementptr inbounds i8, ptr %i.bcg, i64 %i.bby ; 2 uses
  store i32 %i.aow, ptr %i.bch, align 4
  %i.bci = icmp sgt i64 %i.bby, 0
  br i1 %i.bci, label %bb.if, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i605

bb.if:                                            ; preds = %.noexc609
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bcg, ptr align 4 %i.bbv, i64 %i.bby, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i605

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i605: ; preds = %bb.if, %.noexc609
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bch, i64 4 ; 2 uses
  %.not.i17.i.i.i606 = icmp eq ptr %i.bbv, null
  br i1 %.not.i17.i.i.i606, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i607, label %bb.ig

bb.ig:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i605
  call void @_ZdlPvm(ptr noundef nonnull %i.bbv, i64 noundef %i.bby) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i607

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i607: ; preds = %bb.ig, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i605
  store ptr %i.bcg, ptr %i.lw, align 8
  store ptr %i.bcj, ptr %i.aof, align 8
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %i.bce
  store ptr %i.bck, ptr %i.aog, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit570

.loopexit922:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i572
  %lpad.loopexit924 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

.loopexit.split-lp923:                            ; preds = %bb.hp
  %lpad.loopexit.split-lp925 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

.loopexit927:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i582
  %lpad.loopexit929 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

.loopexit.split-lp928:                            ; preds = %bb.hu
  %lpad.loopexit.split-lp930 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

.loopexit932:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i592
  %lpad.loopexit934 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

.loopexit.split-lp933:                            ; preds = %bb.hz
  %lpad.loopexit.split-lp935 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

.loopexit937:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i602
  %lpad.loopexit939 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

.loopexit.split-lp938:                            ; preds = %bb.ie
  %lpad.loopexit.split-lp940 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

_ZNSt6vectorIiSaIiEE9push_backEOi.exit570:        ; preds = %bb.ic, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i607, %bb.hh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i567
  %i.bcl = phi ptr [ %i.bbu, %bb.ic ], [ %i.bcj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i607 ], [ %i.ayu, %bb.hh ], [ %i.azj, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i567 ] ; 3 uses
  %i.bcm = load ptr, ptr %i.aog, align 8
  %.not.i.i611 = icmp eq ptr %i.bcl, %i.bcm
  br i1 %.not.i.i611, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit570
  store i32 -1, ptr %i.bcl, align 4
  %i.bcn = load ptr, ptr %i.aof, align 8
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 4
  store ptr %i.bco, ptr %i.aof, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit530

bb.ii:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit570
  %i.bcp = load ptr, ptr %i.lw, align 8           ; 4 uses
  %i.bcq = ptrtoint ptr %i.bcl to i64
  %i.bcr = ptrtoint ptr %i.bcp to i64
  %i.bcs = sub i64 %i.bcq, %i.bcr                 ; 6 uses
  %i.bct = icmp eq i64 %i.bcs, 9223372036854775804
  br i1 %i.bct, label %bb.ij, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i612

bb.ij:                                            ; preds = %bb.ii
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
          to label %.noexc618 unwind label %.loopexit.split-lp963

.noexc618:                                        ; preds = %bb.ij
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i612: ; preds = %bb.ii
  %i.bcu = ashr exact i64 %i.bcs, 2               ; 3 uses
  %.sroa.speculated.i.i.i.i613 = call i64 @llvm.umax.i64(i64 %i.bcu, i64 1)
  %i.bcv = add nsw i64 %.sroa.speculated.i.i.i.i613, %i.bcu ; 2 uses
  %i.bcw = icmp ult i64 %i.bcv, %i.bcu
  %i.bcx = call i64 @llvm.umin.i64(i64 %i.bcv, i64 2305843009213693951)
  %i.bcy = select i1 %i.bcw, i64 2305843009213693951, i64 %i.bcx ; 3 uses
  %.not.i.i.i.i614 = icmp ne i64 %i.bcy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i614)
  %i.bcz = shl nuw nsw i64 %i.bcy, 2
  %i.bda = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bcz) #21
          to label %.noexc619 unwind label %.loopexit962 ; 4 uses

.noexc619:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i612
  %i.bdb = getelementptr inbounds i8, ptr %i.bda, i64 %i.bcs ; 2 uses
  store i32 -1, ptr %i.bdb, align 4
  %i.bdc = icmp sgt i64 %i.bcs, 0
  br i1 %i.bdc, label %bb.ik, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i615

bb.ik:                                            ; preds = %.noexc619
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bda, ptr align 4 %i.bcp, i64 %i.bcs, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i615

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i615: ; preds = %bb.ik, %.noexc619
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdb, i64 4
  %.not.i17.i.i.i616 = icmp eq ptr %i.bcp, null
  br i1 %.not.i17.i.i.i616, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i617, label %bb.il

bb.il:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i615
  call void @_ZdlPvm(ptr noundef nonnull %i.bcp, i64 noundef %i.bcs) #22
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i617

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i617: ; preds = %bb.il, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i615
  store ptr %i.bda, ptr %i.lw, align 8
  store ptr %i.bdd, ptr %i.aof, align 8
  %i.bde = getelementptr inbounds nuw [4 x i8], ptr %i.bda, i64 %i.bcy
  store ptr %i.bde, ptr %i.aog, align 8
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit530

.loopexit962:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i612
  %lpad.loopexit964 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

.loopexit.split-lp963:                            ; preds = %bb.ij
  %lpad.loopexit.split-lp965 = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

_ZNSt6vectorIiSaIiEE9push_backEOi.exit530:        ; preds = %bb.ih, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i617, %bb.gk, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i527, %bb.gp
  %i.bdf = add nuw i64 %.02061022, 1              ; 2 uses
  %exitcond1065.not = icmp eq i64 %i.bdf, %i.aom
  br i1 %exitcond1065.not, label %._crit_edge1026, label %bb.es, !llvm.loop !54

._crit_edge1026:                                  ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit530, %bb.er
  %i.bdg = add i64 %.02081027, 1                  ; 2 uses
  %.not234 = icmp ugt i64 %i.bdg, %i.aod
  br i1 %.not234, label %.critedge, label %bb.eo, !llvm.loop !55

.critedge:                                        ; preds = %bb.eq, %._crit_edge1026
  %i.bdh = load ptr, ptr %i.av, align 8           ; 2 uses
  %i.bdi = load ptr, ptr %15, align 8             ; 2 uses
  %.not1042 = icmp eq ptr %i.bdh, %i.bdi
  br i1 %.not1042, label %._crit_edge1034, label %.lr.ph1033

.lr.ph1033:                                       ; preds = %.critedge
  %i.bdj = ptrtoint ptr %i.bdh to i64
  %i.bdk = ptrtoint ptr %i.bdi to i64
  %i.bdl = sub i64 %i.bdj, %i.bdk
  %i.bdm = sdiv exact i64 %i.bdl, 12
  br label %bb.im

._crit_edge1034:                                  ; preds = %._crit_edge1031, %.critedge
  %i.bdn = invoke noundef zeroext i1 @_ZN6Assimp11X3DImporter11isNodeEmptyERN4pugi8xml_nodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.ip unwind label %bb.ce

bb.im:                                            ; preds = %.lr.ph1033, %._crit_edge1031
  %.02051032 = phi i64 [ 0, %.lr.ph1033 ], [ %i.bdv, %._crit_edge1031 ] ; 2 uses
  %i.bdo = load ptr, ptr %i.bz, align 8           ; 2 uses
  %i.bdp = load ptr, ptr %12, align 8             ; 2 uses
  %.not1043 = icmp eq ptr %i.bdo, %i.bdp
  br i1 %.not1043, label %._crit_edge1031, label %.lr.ph1030.preheader

.lr.ph1030.preheader:                             ; preds = %bb.im
  %i.bdq = ptrtoint ptr %i.bdo to i64
  %i.bdr = ptrtoint ptr %i.bdp to i64
  %i.bds = sub i64 %i.bdq, %i.bdr
  %i.bdt = ashr exact i64 %i.bds, 3
  %.pre1100 = load ptr, ptr %17, align 8
  %i.bdu = getelementptr inbounds nuw [24 x i8], ptr %.pre1100, i64 %.02051032
  br label %.lr.ph1030

._crit_edge1031:                                  ; preds = %bb.in, %bb.im
  %i.bdv = add nuw i64 %.02051032, 1              ; 2 uses
  %exitcond1069.not = icmp eq i64 %i.bdv, %i.bdm
  br i1 %exitcond1069.not, label %._crit_edge1034, label %bb.im, !llvm.loop !56

.lr.ph1030:                                       ; preds = %.lr.ph1030.preheader, %bb.in
  %.01028 = phi i64 [ %i.bec, %bb.in ], [ 0, %.lr.ph1030.preheader ] ; 2 uses
  %i.bdw = load ptr, ptr %i.bdu, align 8
  %i.bdx = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %bb.in unwind label %bb.io     ; 2 uses

bb.in:                                            ; preds = %.lr.ph1030
  %i.bdy = getelementptr inbounds nuw [12 x i8], ptr %i.bdw, i64 %.01028
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bdz, ptr noundef nonnull align 4 dereferenceable(12) %i.bdy, i64 12, i1 false)
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bdx, ptr noundef nonnull align 8 dereferenceable(24) %i.lr) #20
  %i.bea = load i64, ptr %i.lt, align 8
  %i.beb = add i64 %i.bea, 1
  store i64 %i.beb, ptr %i.lt, align 8
  %i.bec = add nuw i64 %.01028, 1                 ; 2 uses
  %exitcond1067.not = icmp eq i64 %i.bec, %i.bdt
  br i1 %exitcond1067.not, label %._crit_edge1031, label %.lr.ph1030, !llvm.loop !57

bb.io:                                            ; preds = %.lr.ph1030
  %i.bed = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.ip:                                            ; preds = %._crit_edge1034
  br i1 %i.bdn, label %bb.is, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  %i.bee = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.bee, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bee, ptr noundef nonnull align 1 dereferenceable(9) @.str.38, i64 9, i1 false)
  %i.bef = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 9, ptr %i.bef, align 8
  %i.beg = getelementptr inbounds nuw i8, ptr %19, i64 25
  store i8 0, ptr %i.beg, align 1
  invoke void @_ZN6Assimp11X3DImporter20childrenReadMetadataERN4pugi8xml_nodeEP18X3DNodeElementBaseRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.lg, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.iq unwind label %bb.ir

bb.iq:                                            ; preds = %._crit_edge.i.i
  %i.beh = load ptr, ptr %19, align 8             ; 2 uses
  %i.bei = icmp eq ptr %i.beh, %i.bee
  br i1 %i.bei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.iq
  %i.bej = load i64, ptr %i.bee, align 8
  %i.bek = add i64 %i.bej, 1
  call void @_ZdlPvm(ptr noundef %i.beh, i64 noundef %i.bek) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.iq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.it

bb.ir:                                            ; preds = %._crit_edge.i.i
  %i.bel = landingpad { ptr, i32 }
          cleanup
  %i.bem = load ptr, ptr %19, align 8             ; 2 uses
  %i.ben = icmp eq ptr %i.bem, %i.bee
  br i1 %i.ben, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i623

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i623: ; preds = %bb.ir
  %i.beo = load i64, ptr %i.bee, align 8
  %i.bep = add i64 %i.beo, 1
  call void @_ZdlPvm(ptr noundef %i.bem, i64 noundef %i.bep) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625: ; preds = %bb.ir, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i623
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.iy

bb.is:                                            ; preds = %bb.ip
  %i.beq = load ptr, ptr %i.lh, align 8           ; 2 uses
  %i.ber = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit unwind label %bb.ce ; 2 uses

_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit: ; preds = %bb.is
  %i.bes = getelementptr inbounds nuw i8, ptr %i.beq, i64 48
  %i.bet = getelementptr inbounds nuw i8, ptr %i.ber, i64 16
  store ptr %i.lg, ptr %i.bet, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ber, ptr noundef nonnull align 8 dereferenceable(24) %i.bes) #20
  %i.beu = getelementptr inbounds nuw i8, ptr %i.beq, i64 64 ; 2 uses
  %i.bev = load i64, ptr %i.beu, align 8
  %i.bew = add i64 %i.bev, 1
  store i64 %i.bew, ptr %i.beu, align 8
  br label %bb.it

bb.it:                                            ; preds = %_ZNSt7__cxx114listIP18X3DNodeElementBaseSaIS2_EE9push_backERKS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bex = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21
          to label %bb.iu unwind label %bb.ce     ; 2 uses

bb.iu:                                            ; preds = %bb.it
  %i.bey = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bex, i64 16
  store ptr %i.lg, ptr %i.bez, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bex, ptr noundef nonnull align 8 dereferenceable(24) %i.bey) #20
  %i.bfa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bfb = load i64, ptr %i.bfa, align 8
  %i.bfc = add i64 %i.bfb, 1
  store i64 %i.bfc, ptr %i.bfa, align 8
  %i.bfd = load ptr, ptr %17, align 8             ; 5 uses
  %i.bfe = load ptr, ptr %i.ady, align 8          ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bfd, %i.bfe
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.iu, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bfl, %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i ], [ %i.bfd, %bb.iu ] ; 3 uses
  %i.bff = load ptr, ptr %.05.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bff, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i, label %bb.iv

bb.iv:                                            ; preds = %.lr.ph.i.i.i
  %i.bfg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bfh = load ptr, ptr %i.bfg, align 8
  %i.bfi = ptrtoint ptr %i.bfh to i64
  %i.bfj = ptrtoint ptr %i.bff to i64
  %i.bfk = sub i64 %i.bfi, %i.bfj
  call void @_ZdlPvm(ptr noundef nonnull %i.bff, i64 noundef %i.bfk) #22
  br label %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.iv, %.lr.ph.i.i.i
  %i.bfl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i629 = icmp eq ptr %i.bfl, %i.bfe
  br i1 %.not.i.i.i629, label %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !49

_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorI10aiVector3tIfESaIS2_EEEvPT_.exit.i.i.i, %bb.iu
  %.not.i.i1.i = icmp eq ptr %i.bfd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EED2Ev.exit, label %bb.iw

bb.iw:                                            ; preds = %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.bfm = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.bfn = load ptr, ptr %i.bfm, align 8
  %i.bfo = ptrtoint ptr %i.bfn to i64
  %i.bfp = ptrtoint ptr %i.bfd to i64
  %i.bfq = sub i64 %i.bfo, %i.bfp
  call void @_ZdlPvm(ptr noundef nonnull %i.bfd, i64 noundef %i.bfq) #22
  br label %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorI10aiVector3tIfESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.iw
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.bfr = load ptr, ptr %16, align 8             ; 3 uses
  %.not.i.i.i630 = icmp eq ptr %i.bfr, null
  br i1 %.not.i.i.i630, label %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EED2Ev.exit, label %bb.ix

bb.ix:                                            ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EED2Ev.exit
  %i.bfs = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bft = load ptr, ptr %i.bfs, align 8
  %i.bfu = ptrtoint ptr %i.bft to i64
  %i.bfv = ptrtoint ptr %i.bfr to i64
  %i.bfw = sub i64 %i.bfu, %i.bfv
  call void @_ZdlPvm(ptr noundef nonnull %i.bfr, i64 noundef %i.bfw) #22
  br label %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EED2Ev.exit:  ; preds = %_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EED2Ev.exit, %bb.ix
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.ja

bb.iy:                                            ; preds = %.loopexit962, %.loopexit.split-lp963, %.loopexit937, %.loopexit.split-lp938, %.loopexit932, %.loopexit.split-lp933, %.loopexit927, %.loopexit.split-lp928, %.loopexit922, %.loopexit.split-lp923, %.loopexit957, %.loopexit.split-lp958, %.loopexit952, %.loopexit.split-lp953, %.loopexit947, %.loopexit.split-lp948, %.loopexit942, %.loopexit.split-lp943, %.loopexit917, %.loopexit.split-lp918, %.loopexit892, %.loopexit.split-lp893, %.loopexit887, %.loopexit.split-lp888, %.loopexit882, %.loopexit.split-lp883, %.loopexit, %.loopexit.split-lp, %.loopexit912, %.loopexit.split-lp913, %.loopexit907, %.loopexit.split-lp908, %.loopexit902, %.loopexit.split-lp903, %.loopexit897, %.loopexit.split-lp898, %.loopexit967, %.loopexit.split-lp968, %.loopexit972, %.loopexit.split-lp973, %bb.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625, %bb.io, %bb.ea, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit410, %bb.cg, %bb.ce
  %.pn246.pn.pn = phi { ptr, i32 } [ %i.pm, %bb.cg ], [ %.pn242.pn.pn, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit410 ], [ %lpad.loopexit.split-lp960, %.loopexit.split-lp958 ], [ %i.alj, %bb.ea ], [ %i.anw, %bb.en ], [ %i.bed, %bb.io ], [ %i.ov, %bb.ce ], [ %i.bel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit625 ], [ %lpad.loopexit.split-lp975, %.loopexit.split-lp973 ], [ %lpad.loopexit.split-lp895, %.loopexit.split-lp893 ], [ %lpad.loopexit.split-lp910, %.loopexit.split-lp908 ], [ %lpad.loopexit.split-lp905, %.loopexit.split-lp903 ], [ %lpad.loopexit.split-lp900, %.loopexit.split-lp898 ], [ %lpad.loopexit.split-lp970, %.loopexit.split-lp968 ], [ %lpad.loopexit.split-lp890, %.loopexit.split-lp888 ], [ %lpad.loopexit.split-lp885, %.loopexit.split-lp883 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp915, %.loopexit.split-lp913 ], [ %lpad.loopexit.split-lp940, %.loopexit.split-lp938 ], [ %lpad.loopexit.split-lp955, %.loopexit.split-lp953 ], [ %lpad.loopexit.split-lp950, %.loopexit.split-lp948 ], [ %lpad.loopexit.split-lp945, %.loopexit.split-lp943 ], [ %lpad.loopexit.split-lp920, %.loopexit.split-lp918 ], [ %lpad.loopexit.split-lp935, %.loopexit.split-lp933 ], [ %lpad.loopexit.split-lp930, %.loopexit.split-lp928 ], [ %lpad.loopexit.split-lp925, %.loopexit.split-lp923 ], [ %lpad.loopexit974, %.loopexit972 ], [ %lpad.loopexit969, %.loopexit967 ], [ %lpad.loopexit899, %.loopexit897 ], [ %lpad.loopexit904, %.loopexit902 ], [ %lpad.loopexit909, %.loopexit907 ], [ %lpad.loopexit914, %.loopexit912 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit884, %.loopexit882 ], [ %lpad.loopexit889, %.loopexit887 ], [ %lpad.loopexit894, %.loopexit892 ], [ %lpad.loopexit919, %.loopexit917 ], [ %lpad.loopexit944, %.loopexit942 ], [ %lpad.loopexit949, %.loopexit947 ], [ %lpad.loopexit954, %.loopexit952 ], [ %lpad.loopexit959, %.loopexit957 ], [ %lpad.loopexit924, %.loopexit922 ], [ %lpad.loopexit929, %.loopexit927 ], [ %lpad.loopexit934, %.loopexit932 ], [ %lpad.loopexit939, %.loopexit937 ], [ %lpad.loopexit964, %.loopexit962 ], [ %lpad.loopexit.split-lp965, %.loopexit.split-lp963 ]
  call void @_ZNSt6vectorIS_I10aiVector3tIfESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  %i.bfx = load ptr, ptr %16, align 8             ; 3 uses
  %.not.i.i.i631 = icmp eq ptr %i.bfx, null
  br i1 %.not.i.i.i631, label %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EED2Ev.exit632, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.bfy = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bfz = load ptr, ptr %i.bfy, align 8
  %i.bga = ptrtoint ptr %i.bfz to i64
  %i.bgb = ptrtoint ptr %i.bfx to i64
  %i.bgc = sub i64 %i.bga, %i.bgb
  call void @_ZdlPvm(ptr noundef nonnull %i.bfx, i64 noundef %i.bgc) #22
  br label %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EED2Ev.exit632

_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EED2Ev.exit632: ; preds = %bb.iy, %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.jf

bb.ja:                                            ; preds = %bb.v, %_ZNSt6vectorI12aiMatrix3x3tIfESaIS1_EED2Ev.exit
  %i.bgd = load ptr, ptr %15, align 8             ; 3 uses
  %.not.i.i.i633 = icmp eq ptr %i.bgd, null
  br i1 %.not.i.i.i633, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit634, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.bge = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bgf = load ptr, ptr %i.bge, align 8
  %i.bgg = ptrtoint ptr %i.bgf to i64
  %i.bgh = ptrtoint ptr %i.bgd to i64
  %i.bgi = sub i64 %i.bgg, %i.bgh
  call void @_ZdlPvm(ptr noundef nonnull %i.bgd, i64 noundef %i.bgi) #22
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit634

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit634: ; preds = %bb.ja, %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.bgj = load ptr, ptr %14, align 8             ; 3 uses
  %.not.i.i.i635 = icmp eq ptr %i.bgj, null
  br i1 %.not.i.i.i635, label %_ZNSt6vectorI10aiVector2tIfESaIS1_EED2Ev.exit, label %bb.jc

bb.jc:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit634
end_hunk_2
