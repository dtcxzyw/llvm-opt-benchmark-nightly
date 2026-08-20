inline.NumInlined: 772
inline.NumDeleted: 374
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN6Assimp11RAWImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ig, ptr noundef nonnull @.str.5)
          to label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351 unwind label %.loopexit.split-lp, !llvm.loop !11

_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit250.jt12: ; preds = %.critedge.i.i248.9, %.critedge.i.i248.9, %.critedge.i.i248.9, %.critedge.i.i248.9, %switch.early.test540.9, %bb.db
  %i.ih = phi i1 [ true, %.critedge.i.i248.9 ], [ true, %.critedge.i.i248.9 ], [ true, %switch.early.test540.9 ], [ true, %.critedge.i.i248.9 ], [ true, %.critedge.i.i248.9 ], [ false, %bb.db ] ; 2 uses
  %i.ii = phi i1 [ false, %.critedge.i.i248.9 ], [ false, %.critedge.i.i248.9 ], [ false, %switch.early.test540.9 ], [ false, %.critedge.i.i248.9 ], [ false, %.critedge.i.i248.9 ], [ true, %bb.db ]
  %.1522.jt12 = phi ptr [ %.0.lcssa.i.i249.9, %.critedge.i.i248.9 ], [ %.0.lcssa.i.i249.9, %.critedge.i.i248.9 ], [ %.0.lcssa.i.i249.9, %switch.early.test540.9 ], [ %.0.lcssa.i.i249.9, %.critedge.i.i248.9 ], [ %.0.lcssa.i.i249.9, %.critedge.i.i248.9 ], [ %i.if, %bb.db ] ; 4 uses
  %i.ij = load i8, ptr %.1522.jt12, align 1       ; 2 uses
  switch i8 %i.ij, label %_ZN6Assimp9IsLineEndIcEEbT_.exit254 [
    i8 13, label %bb.de
    i8 10, label %bb.de
    i8 0, label %bb.de
    i8 12, label %bb.de
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit254:              ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit250.jt12, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit256
  %i.ik = phi i8 [ %.pr526, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit256 ], [ %i.ij, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit250.jt12 ]
  %.0129 = phi ptr [ %i.il, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit256 ], [ %.1522.jt12, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit250.jt12 ] ; 2 uses
  switch i8 %i.ik, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit256 [
    i8 32, label %bb.dd
    i8 9, label %bb.dd
    i8 13, label %bb.dd
    i8 10, label %bb.dd
    i8 0, label %bb.dd
    i8 12, label %bb.dd
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit256:      ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit254
  %i.il = getelementptr inbounds nuw i8, ptr %.0129, i64 1 ; 2 uses
  %.pr526 = load i8, ptr %i.il, align 1
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit254, !llvm.loop !12

.loopexit554:                                     ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i353, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i369, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i385
  %lpad.loopexit556 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

.loopexit.split-lp555:                            ; preds = %.invoke
  %lpad.loopexit.split-lp557 = landingpad { ptr, i32 }
          cleanup
  br label %bb.eu

bb.dd:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254
  %i.im = ptrtoint ptr %.0129 to i64
  %i.in = ptrtoint ptr %.1522.jt12 to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = trunc i64 %i.io to i32
  br label %bb.df

bb.de:                                            ; preds = %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit250.jt12, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit250.jt12, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit250.jt12, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit250.jt12
  %spec.select = select i1 %i.ih, ptr @.str.6, ptr @.str.7
  %spec.select541 = select i1 %i.ih, i32 9, i32 0
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.2523 = phi ptr [ %.1522.jt12, %bb.dd ], [ %spec.select, %bb.de ] ; 3 uses
  %.0128 = phi i32 [ %i.ip, %bb.dd ], [ %spec.select541, %bb.de ] ; 4 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0506.0615, i64 32 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8            ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0506.0615, i64 40 ; 5 uses
  %i.it = load ptr, ptr %i.is, align 8            ; 2 uses
  %.not547609 = icmp eq ptr %i.ir, %i.it
  %.pre689 = zext i32 %.0128 to i64               ; 3 uses
  br i1 %.not547609, label %._crit_edge613, label %.lr.ph612

.lr.ph612:                                        ; preds = %bb.df
  %.not194 = icmp eq i32 %.0128, 0
  br label %bb.dg

bb.dg:                                            ; preds = %.lr.ph612, %bb.dj
  %.sroa.0483.0610 = phi ptr [ %i.ir, %.lr.ph612 ], [ %i.iz, %bb.dj ] ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0483.0610, i64 8
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = icmp eq i64 %i.iv, %.pre689
  br i1 %i.iw, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  br i1 %.not194, label %.loopexit552, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ix = load ptr, ptr %.sroa.0483.0610, align 8
  %i.iy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.2523, ptr noundef nonnull dereferenceable(1) %i.ix) #26
  %.not195 = icmp eq i32 %i.iy, 0
  br i1 %.not195, label %.loopexit552, label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dg
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0483.0610, i64 80 ; 2 uses
  %.not547 = icmp eq ptr %i.iz, %i.it
  br i1 %.not547, label %._crit_edge613, label %bb.dg

._crit_edge613:                                   ; preds = %bb.dj, %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %i.cg, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %.pre689, ptr %i.a, align 8
  %i.ja = icmp ugt i32 %.0128, 15
  br i1 %i.ja, label %.noexc.i259, label %._crit_edge.i.i258

.noexc.i259:                                      ; preds = %._crit_edge613
  %i.jb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc261 unwind label %bb.dp ; 2 uses

.noexc261:                                        ; preds = %.noexc.i259
  store ptr %i.jb, ptr %10, align 8
  %i.jc = load i64, ptr %i.a, align 8
  store i64 %i.jc, ptr %i.cg, align 8
  br label %._crit_edge.i.i258

._crit_edge.i.i258:                               ; preds = %.noexc261, %._crit_edge613
  %i.jd = phi ptr [ %i.jb, %.noexc261 ], [ %i.cg, %._crit_edge613 ] ; 2 uses
  switch i32 %.0128, label %bb.dl [
    i32 1, label %bb.dk
    i32 0, label %bb.dm
  ]

bb.dk:                                            ; preds = %._crit_edge.i.i258
  %i.je = load i8, ptr %.2523, align 1
  store i8 %i.je, ptr %i.jd, align 1
  br label %bb.dm

bb.dl:                                            ; preds = %._crit_edge.i.i258
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jd, ptr nonnull align 1 %.2523, i64 %.pre689, i1 false)
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk, %._crit_edge.i.i258
  %i.jf = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.jf, ptr %i.ch, align 8
  %i.jg = load ptr, ptr %10, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jf
  store i8 0, ptr %i.jh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ji = load ptr, ptr %i.is, align 8            ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0506.0615, i64 48
  %i.jk = load ptr, ptr %i.jj, align 8
  %.not.i263 = icmp eq ptr %i.ji, %i.jk
  br i1 %.not.i263, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  invoke void @_ZN6Assimp11RAWImporter15MeshInformationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.ji, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc265 unwind label %bb.dq

.noexc265:                                        ; preds = %bb.dn
  %i.jl = load ptr, ptr %i.is, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 80
  store ptr %i.jm, ptr %i.is, align 8
  br label %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit

bb.do:                                            ; preds = %bb.dm
  invoke void @_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, ptr %i.ji, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit unwind label %bb.dq

_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit: ; preds = %bb.do, %.noexc265
  %i.jn = load ptr, ptr %10, align 8              ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.cg
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit
  %i.jp = load i64, ptr %i.cg, align 8
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.jr = load ptr, ptr %i.is, align 8
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 -80
  br label %.loopexit552

bb.dp:                                            ; preds = %.noexc.i259
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

bb.dq:                                            ; preds = %bb.do, %bb.dn
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jv = load ptr, ptr %10, align 8              ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.cg
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %bb.dq
  %i.jx = load i64, ptr %i.cg, align 8
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270, %bb.dp
  %.pn197 = phi { ptr, i32 } [ %i.jt, %bb.dp ], [ %i.ju, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270 ], [ %i.ju, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.eu

.loopexit552:                                     ; preds = %bb.di, %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %.3 = phi ptr [ %i.js, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269 ], [ %.sroa.0483.0610, %bb.dh ], [ %.sroa.0483.0610, %bb.di ] ; 9 uses
  br i1 %i.ii, label %bb.dr, label %bb.ek

bb.dr:                                            ; preds = %.loopexit552
  %i.jz = load <2 x float>, ptr %i.d, align 16    ; 6 uses
  %i.ka = load float, ptr %i.cj, align 8          ; 6 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.3, i64 56 ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.3, i64 64 ; 10 uses
  %i.kd = load ptr, ptr %i.kc, align 8            ; 6 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.3, i64 72 ; 6 uses
  %i.kf = load ptr, ptr %i.ke, align 8
  %.not.i273 = icmp eq ptr %i.kd, %i.kf
  br i1 %.not.i273, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store <2 x float> %i.jz, ptr %i.kd, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %13 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ka, i64 0
  store <2 x float> %13, ptr %.sroa.11.0..sroa_idx, align 4
  %i.kg = load ptr, ptr %i.kc, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  store ptr %i.kh, ptr %i.kc, align 8
  %.pre681 = load ptr, ptr %i.ke, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

bb.dt:                                            ; preds = %bb.dr
  %i.ki = load ptr, ptr %i.kb, align 8            ; 5 uses
  %i.kj = ptrtoint ptr %i.kd to i64
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = sub i64 %i.kj, %i.kk                    ; 4 uses
  %i.km = icmp eq i64 %i.kl, 9223372036854775792
  br i1 %i.km, label %.invoke862, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke862:                                       ; preds = %bb.ei, %bb.ef, %bb.ec, %bb.dz, %bb.dw, %bb.dt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
          to label %.cont863 unwind label %.loopexit.split-lp560

.cont863:                                         ; preds = %.invoke862
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dt
  %i.kn = ashr exact i64 %i.kl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.kn, i64 1)
  %i.ko = add nsw i64 %.sroa.speculated.i.i.i, %i.kn ; 2 uses
  %i.kp = icmp ult i64 %i.ko, %i.kn
  %i.kq = call i64 @llvm.umin.i64(i64 %i.ko, i64 576460752303423487)
  %i.kr = select i1 %i.kp, i64 576460752303423487, i64 %i.kq ; 3 uses
  %.not.i.i.i274 = icmp ne i64 %i.kr, 0
  call void @llvm.assume(i1 %.not.i.i.i274)
  %i.ks = shl nuw nsw i64 %i.kr, 4
  %i.kt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ks) #25
          to label %.noexc276 unwind label %.loopexit559 ; 5 uses

.noexc276:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kl ; 2 uses
  store <2 x float> %i.jz, ptr %i.ku, align 4
  %.sroa.11.0..sroa_idx461 = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %14 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ka, i64 0
  store <2 x float> %14, ptr %.sroa.11.0..sroa_idx461, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.ki, %i.kd
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc276, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.i ], [ %i.kt, %.noexc276 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i ], [ %i.ki, %.noexc276 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !13
  %i.kv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kv, %i.kd
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc276
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.kt, %.noexc276 ], [ %i.kw, %.lr.ph.i.i.i.i.i ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ki, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.kl) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.du, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.kt, ptr %i.kb, align 8
  store ptr %i.kx, ptr %i.kc, align 8
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.kt, i64 %i.kr ; 2 uses
  store ptr %i.ky, ptr %i.ke, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ds
  %i.kz = phi ptr [ %i.ky, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre681, %bb.ds ] ; 4 uses
  %i.la = phi ptr [ %i.kx, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.kh, %bb.ds ] ; 3 uses
  %.not.i277 = icmp eq ptr %i.la, %i.kz
  br i1 %.not.i277, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit
  store <2 x float> %i.jz, ptr %i.la, align 4
  %.sroa.11.0..sroa_idx463 = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %15 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ka, i64 0
  store <2 x float> %15, ptr %.sroa.11.0..sroa_idx463, align 4
  %i.lb = load ptr, ptr %i.kc, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  store ptr %i.lc, ptr %i.kc, align 8
  %.pre682 = load ptr, ptr %i.ke, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit292

bb.dw:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit
  %i.ld = load ptr, ptr %i.kb, align 8            ; 5 uses
  %i.le = ptrtoint ptr %i.kz to i64
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = sub i64 %i.le, %i.lf                    ; 4 uses
  %i.lh = icmp eq i64 %i.lg, 9223372036854775792
  br i1 %i.lh, label %.invoke862, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i278

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i278: ; preds = %bb.dw
  %i.li = ashr exact i64 %i.lg, 4                 ; 3 uses
  %.sroa.speculated.i.i.i279 = call i64 @llvm.umax.i64(i64 %i.li, i64 1)
  %i.lj = add nsw i64 %.sroa.speculated.i.i.i279, %i.li ; 2 uses
  %i.lk = icmp ult i64 %i.lj, %i.li
  %i.ll = call i64 @llvm.umin.i64(i64 %i.lj, i64 576460752303423487)
  %i.lm = select i1 %i.lk, i64 576460752303423487, i64 %i.ll ; 3 uses
  %.not.i.i.i280 = icmp ne i64 %i.lm, 0
  call void @llvm.assume(i1 %.not.i.i.i280)
  %i.ln = shl nuw nsw i64 %i.lm, 4
  %i.lo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ln) #25
          to label %.noexc291 unwind label %.loopexit559 ; 5 uses

.noexc291:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i278
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.lg ; 2 uses
  store <2 x float> %i.jz, ptr %i.lp, align 4
  %.sroa.11.0..sroa_idx465 = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %16 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ka, i64 0
  store <2 x float> %16, ptr %.sroa.11.0..sroa_idx465, align 4
  %.not10.i.i.i.i.i281 = icmp eq ptr %i.ld, %i.kz
  br i1 %.not10.i.i.i.i.i281, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i286, label %.lr.ph.i.i.i.i.i282

.lr.ph.i.i.i.i.i282:                              ; preds = %.noexc291, %.lr.ph.i.i.i.i.i282
  %.012.i.i.i.i.i283 = phi ptr [ %i.lr, %.lr.ph.i.i.i.i.i282 ], [ %i.lo, %.noexc291 ] ; 2 uses
  %.0911.i.i.i.i.i284 = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i282 ], [ %i.ld, %.noexc291 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i283, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i284, i64 16, i1 false), !alias.scope !18
  %i.lq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i284, i64 16 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i283, i64 16 ; 2 uses
  %.not.i.i.i.i.i285 = icmp eq ptr %i.lq, %i.kz
  br i1 %.not.i.i.i.i.i285, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i286, label %.lr.ph.i.i.i.i.i282, !llvm.loop !17

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i286: ; preds = %.lr.ph.i.i.i.i.i282, %.noexc291
  %.0.lcssa.i.i.i.i.i287 = phi ptr [ %i.lo, %.noexc291 ], [ %i.lr, %.lr.ph.i.i.i.i.i282 ]
  %i.ls = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i287, i64 16 ; 2 uses
  %.not.i23.i.i288 = icmp eq ptr %i.ld, null
  br i1 %.not.i23.i.i288, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i289, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i286
  call void @_ZdlPvm(ptr noundef nonnull %i.ld, i64 noundef %i.lg) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i289

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i289: ; preds = %bb.dx, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i286
  store ptr %i.lo, ptr %i.kb, align 8
  store ptr %i.ls, ptr %i.kc, align 8
  %i.lt = getelementptr inbounds nuw [16 x i8], ptr %i.lo, i64 %i.lm ; 2 uses
  store ptr %i.lt, ptr %i.ke, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit292

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit292: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i289, %bb.dv
  %i.lu = phi ptr [ %i.lt, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i289 ], [ %.pre682, %bb.dv ] ; 4 uses
  %i.lv = phi ptr [ %i.ls, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i289 ], [ %i.lc, %bb.dv ] ; 3 uses
  %.not.i293 = icmp eq ptr %i.lv, %i.lu
  br i1 %.not.i293, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit292
  store <2 x float> %i.jz, ptr %i.lv, align 4
  %.sroa.11.0..sroa_idx467 = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %17 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ka, i64 0
  store <2 x float> %17, ptr %.sroa.11.0..sroa_idx467, align 4
  %i.lw = load ptr, ptr %i.kc, align 8
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store ptr %i.lx, ptr %i.kc, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit308

bb.dz:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit292
  %i.ly = load ptr, ptr %i.kb, align 8            ; 5 uses
  %i.lz = ptrtoint ptr %i.lu to i64
  %i.ma = ptrtoint ptr %i.ly to i64
  %i.mb = sub i64 %i.lz, %i.ma                    ; 4 uses
  %i.mc = icmp eq i64 %i.mb, 9223372036854775792
  br i1 %i.mc, label %.invoke862, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i294

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i294: ; preds = %bb.dz
  %i.md = ashr exact i64 %i.mb, 4                 ; 3 uses
  %.sroa.speculated.i.i.i295 = call i64 @llvm.umax.i64(i64 %i.md, i64 1)
  %i.me = add nsw i64 %.sroa.speculated.i.i.i295, %i.md ; 2 uses
  %i.mf = icmp ult i64 %i.me, %i.md
  %i.mg = call i64 @llvm.umin.i64(i64 %i.me, i64 576460752303423487)
  %i.mh = select i1 %i.mf, i64 576460752303423487, i64 %i.mg ; 3 uses
  %.not.i.i.i296 = icmp ne i64 %i.mh, 0
  call void @llvm.assume(i1 %.not.i.i.i296)
  %i.mi = shl nuw nsw i64 %i.mh, 4
  %i.mj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mi) #25
          to label %.noexc307 unwind label %.loopexit559 ; 5 uses

.noexc307:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i294
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 %i.mb ; 3 uses
  store <2 x float> %i.jz, ptr %i.mk, align 4
  %.sroa.11.0..sroa_idx469 = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  store float %i.ka, ptr %.sroa.11.0..sroa_idx469, align 4
  %.sroa.12.0..sroa_idx479 = getelementptr inbounds nuw i8, ptr %i.mk, i64 12
  store float 1.000000e+00, ptr %.sroa.12.0..sroa_idx479, align 4
  %.not10.i.i.i.i.i297 = icmp eq ptr %i.ly, %i.lu
  br i1 %.not10.i.i.i.i.i297, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i302, label %.lr.ph.i.i.i.i.i298

.lr.ph.i.i.i.i.i298:                              ; preds = %.noexc307, %.lr.ph.i.i.i.i.i298
  %.012.i.i.i.i.i299 = phi ptr [ %i.mm, %.lr.ph.i.i.i.i.i298 ], [ %i.mj, %.noexc307 ] ; 2 uses
  %.0911.i.i.i.i.i300 = phi ptr [ %i.ml, %.lr.ph.i.i.i.i.i298 ], [ %i.ly, %.noexc307 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i299, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i300, i64 16, i1 false), !alias.scope !22
  %i.ml = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i300, i64 16 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i299, i64 16 ; 2 uses
  %.not.i.i.i.i.i301 = icmp eq ptr %i.ml, %i.lu
  br i1 %.not.i.i.i.i.i301, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i302, label %.lr.ph.i.i.i.i.i298, !llvm.loop !17

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i302: ; preds = %.lr.ph.i.i.i.i.i298, %.noexc307
  %.0.lcssa.i.i.i.i.i303 = phi ptr [ %i.mj, %.noexc307 ], [ %i.mm, %.lr.ph.i.i.i.i.i298 ]
  %i.mn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i303, i64 16
  %.not.i23.i.i304 = icmp eq ptr %i.ly, null
  br i1 %.not.i23.i.i304, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i305, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i302
  call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.mb) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i305

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i305: ; preds = %bb.ea, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i302
  store ptr %i.mj, ptr %i.kb, align 8
  store ptr %i.mn, ptr %i.kc, align 8
  %i.mo = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.mh
  store ptr %i.mo, ptr %i.ke, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit308

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit308: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i305, %bb.dy
  %i.mp = getelementptr inbounds nuw i8, ptr %.3, i64 32 ; 6 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.3, i64 40 ; 10 uses
  %i.mr = load ptr, ptr %i.mq, align 8            ; 6 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.3, i64 48 ; 6 uses
  %i.mt = load ptr, ptr %i.ms, align 8
  %.not.i309 = icmp eq ptr %i.mr, %i.mt
  br i1 %.not.i309, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit308
  %i.mu = load float, ptr %i.cm, align 4
  %i.mv = load <2 x float>, ptr %i.ck, align 4
  store <2 x float> %i.mv, ptr %i.mr, align 4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store float %i.mu, ptr %i.mw, align 4
  %i.mx = load ptr, ptr %i.mq, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 12 ; 2 uses
  store ptr %i.my, ptr %i.mq, align 8
  %.pre683 = load ptr, ptr %i.ms, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.ec:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit308
  %i.mz = load ptr, ptr %i.mp, align 8            ; 5 uses
  %i.na = ptrtoint ptr %i.mr to i64
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = sub i64 %i.na, %i.nb                    ; 4 uses
  %i.nd = icmp eq i64 %i.nc, 9223372036854775800
  br i1 %i.nd, label %.invoke862, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ec
  %i.ne = sdiv exact i64 %i.nc, 12                ; 3 uses
  %.sroa.speculated.i.i.i310 = call i64 @llvm.umax.i64(i64 %i.ne, i64 1)
  %i.nf = add nsw i64 %.sroa.speculated.i.i.i310, %i.ne ; 2 uses
  %i.ng = icmp ult i64 %i.nf, %i.ne
  %i.nh = call i64 @llvm.umin.i64(i64 %i.nf, i64 768614336404564650)
  %i.ni = select i1 %i.ng, i64 768614336404564650, i64 %i.nh ; 3 uses
  %.not.i.i.i311 = icmp ne i64 %i.ni, 0
  call void @llvm.assume(i1 %.not.i.i.i311)
  %i.nj = mul nuw nsw i64 %i.ni, 12
  %i.nk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nj) #25
          to label %.noexc319 unwind label %.loopexit559 ; 5 uses

.noexc319:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nc ; 2 uses
  %i.nm = load float, ptr %i.cm, align 4
  %i.nn = load <2 x float>, ptr %i.ck, align 4
  store <2 x float> %i.nn, ptr %i.nl, align 4
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  store float %i.nm, ptr %i.no, align 4
  %.not10.i.i.i.i.i312 = icmp eq ptr %i.mz, %i.mr
  br i1 %.not10.i.i.i.i.i312, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i313

.lr.ph.i.i.i.i.i313:                              ; preds = %.noexc319, %.lr.ph.i.i.i.i.i313
  %.012.i.i.i.i.i314 = phi ptr [ %i.nq, %.lr.ph.i.i.i.i.i313 ], [ %i.nk, %.noexc319 ] ; 2 uses
  %.0911.i.i.i.i.i315 = phi ptr [ %i.np, %.lr.ph.i.i.i.i.i313 ], [ %i.mz, %.noexc319 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i314, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i315, i64 12, i1 false), !alias.scope !26
  %i.np = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i315, i64 12 ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i314, i64 12 ; 2 uses
  %.not.i.i.i.i.i316 = icmp eq ptr %i.np, %i.mr
  br i1 %.not.i.i.i.i.i316, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i313, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i313, %.noexc319
  %.0.lcssa.i.i.i.i.i317 = phi ptr [ %i.nk, %.noexc319 ], [ %i.nq, %.lr.ph.i.i.i.i.i313 ]
  %i.nr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i317, i64 12 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.mz, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef %i.nc) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ed, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.nk, ptr %i.mp, align 8
  store ptr %i.nr, ptr %i.mq, align 8
  %i.ns = getelementptr inbounds nuw [12 x i8], ptr %i.nk, i64 %i.ni ; 2 uses
  store ptr %i.ns, ptr %i.ms, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.eb
  %i.nt = phi ptr [ %i.ns, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre683, %bb.eb ] ; 4 uses
  %i.nu = phi ptr [ %i.nr, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.my, %bb.eb ] ; 3 uses
  %.not.i320 = icmp eq ptr %i.nu, %i.nt
  br i1 %.not.i320, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit
  %i.nv = load float, ptr %i.cp, align 16
  %i.nw = load <2 x float>, ptr %i.cn, align 8
  store <2 x float> %i.nw, ptr %i.nu, align 4
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  store float %i.nv, ptr %i.nx, align 4
  %i.ny = load ptr, ptr %i.mq, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 12 ; 2 uses
  store ptr %i.nz, ptr %i.mq, align 8
  %.pre684 = load ptr, ptr %i.ms, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit335

bb.ef:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit
  %i.oa = load ptr, ptr %i.mp, align 8            ; 5 uses
  %i.ob = ptrtoint ptr %i.nt to i64
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = sub i64 %i.ob, %i.oc                    ; 4 uses
  %i.oe = icmp eq i64 %i.od, 9223372036854775800
  br i1 %i.oe, label %.invoke862, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i321

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i321: ; preds = %bb.ef
  %i.of = sdiv exact i64 %i.od, 12                ; 3 uses
  %.sroa.speculated.i.i.i322 = call i64 @llvm.umax.i64(i64 %i.of, i64 1)
  %i.og = add nsw i64 %.sroa.speculated.i.i.i322, %i.of ; 2 uses
  %i.oh = icmp ult i64 %i.og, %i.of
  %i.oi = call i64 @llvm.umin.i64(i64 %i.og, i64 768614336404564650)
  %i.oj = select i1 %i.oh, i64 768614336404564650, i64 %i.oi ; 3 uses
  %.not.i.i.i323 = icmp ne i64 %i.oj, 0
  call void @llvm.assume(i1 %.not.i.i.i323)
  %i.ok = mul nuw nsw i64 %i.oj, 12
  %i.ol = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ok) #25
          to label %.noexc334 unwind label %.loopexit559 ; 5 uses

.noexc334:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i321
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 %i.od ; 2 uses
  %i.on = load float, ptr %i.cp, align 16
  %i.oo = load <2 x float>, ptr %i.cn, align 8
  store <2 x float> %i.oo, ptr %i.om, align 4
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  store float %i.on, ptr %i.op, align 4
  %.not10.i.i.i.i.i324 = icmp eq ptr %i.oa, %i.nt
  br i1 %.not10.i.i.i.i.i324, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i329, label %.lr.ph.i.i.i.i.i325

.lr.ph.i.i.i.i.i325:                              ; preds = %.noexc334, %.lr.ph.i.i.i.i.i325
  %.012.i.i.i.i.i326 = phi ptr [ %i.or, %.lr.ph.i.i.i.i.i325 ], [ %i.ol, %.noexc334 ] ; 2 uses
  %.0911.i.i.i.i.i327 = phi ptr [ %i.oq, %.lr.ph.i.i.i.i.i325 ], [ %i.oa, %.noexc334 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i326, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i327, i64 12, i1 false), !alias.scope !31
  %i.oq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i327, i64 12 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i326, i64 12 ; 2 uses
  %.not.i.i.i.i.i328 = icmp eq ptr %i.oq, %i.nt
  br i1 %.not.i.i.i.i.i328, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i329, label %.lr.ph.i.i.i.i.i325, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i329: ; preds = %.lr.ph.i.i.i.i.i325, %.noexc334
  %.0.lcssa.i.i.i.i.i330 = phi ptr [ %i.ol, %.noexc334 ], [ %i.or, %.lr.ph.i.i.i.i.i325 ]
end_hunk_0
