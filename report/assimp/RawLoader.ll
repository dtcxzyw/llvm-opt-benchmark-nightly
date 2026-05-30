inline.NumInlined: 772
inline.NumDeleted: 374
begin_hunk_0_@_ZN6Assimp11RAWImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %lpad.loopexit.split-lp553 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.df:                                            ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254, %_ZN6Assimp9IsLineEndIcEEbT_.exit254
  %i.ik = ptrtoint ptr %.0163 to i64
  %i.il = ptrtoint ptr %.1518.ph to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = trunc i64 %i.im to i32
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de, %bb.de, %bb.de, %bb.de
  %spec.select = select i1 %.ph, ptr @.str.6, ptr @.str.7
  %spec.select537 = select i1 %.ph, i32 9, i32 0
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.2519 = phi ptr [ %.1518.ph, %bb.df ], [ %spec.select, %bb.dg ] ; 3 uses
  %.0164 = phi i32 [ %i.in, %bb.df ], [ %spec.select537, %bb.dg ] ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0506.0611, i64 32 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8            ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0506.0611, i64 40 ; 5 uses
  %i.ir = load ptr, ptr %i.iq, align 8            ; 2 uses
  %.not543605 = icmp eq ptr %i.ip, %i.ir
  %.pre685 = zext i32 %.0164 to i64               ; 3 uses
  br i1 %.not543605, label %._crit_edge609, label %.lr.ph608

.lr.ph608:                                        ; preds = %bb.dh
  %.not194 = icmp eq i32 %.0164, 0
  br label %bb.di

bb.di:                                            ; preds = %.lr.ph608, %bb.dl
  %.sroa.0483.0606 = phi ptr [ %i.ip, %.lr.ph608 ], [ %i.ix, %bb.dl ] ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0483.0606, i64 8
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = icmp eq i64 %i.it, %.pre685
  br i1 %i.iu, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  br i1 %.not194, label %.loopexit548, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.iv = load ptr, ptr %.sroa.0483.0606, align 8
  %i.iw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.2519, ptr noundef nonnull dereferenceable(1) %i.iv) #26
  %.not195 = icmp eq i32 %i.iw, 0
  br i1 %.not195, label %.loopexit548, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.di
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0483.0606, i64 80 ; 2 uses
  %.not543 = icmp eq ptr %i.ix, %i.ir
  br i1 %.not543, label %._crit_edge609, label %bb.di

._crit_edge609:                                   ; preds = %bb.dl, %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %i.cg, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %.pre685, ptr %i.a, align 8
  %i.iy = icmp ugt i32 %.0164, 15
  br i1 %i.iy, label %.noexc.i259, label %._crit_edge.i.i258

.noexc.i259:                                      ; preds = %._crit_edge609
  %i.iz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc261 unwind label %bb.dr ; 2 uses

.noexc261:                                        ; preds = %.noexc.i259
  store ptr %i.iz, ptr %10, align 8
  %i.ja = load i64, ptr %i.a, align 8
  store i64 %i.ja, ptr %i.cg, align 8
  br label %._crit_edge.i.i258

._crit_edge.i.i258:                               ; preds = %.noexc261, %._crit_edge609
  %i.jb = phi ptr [ %i.iz, %.noexc261 ], [ %i.cg, %._crit_edge609 ] ; 2 uses
  switch i32 %.0164, label %bb.dn [
    i32 1, label %bb.dm
    i32 0, label %bb.do
  ]

bb.dm:                                            ; preds = %._crit_edge.i.i258
  %i.jc = load i8, ptr %.2519, align 1
  store i8 %i.jc, ptr %i.jb, align 1
  br label %bb.do

bb.dn:                                            ; preds = %._crit_edge.i.i258
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jb, ptr nonnull align 1 %.2519, i64 %.pre685, i1 false)
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm, %._crit_edge.i.i258
  %i.jd = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.jd, ptr %i.ch, align 8
  %i.je = load ptr, ptr %10, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.jd
  store i8 0, ptr %i.jf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.jg = load ptr, ptr %i.iq, align 8            ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0506.0611, i64 48
  %i.ji = load ptr, ptr %i.jh, align 8
  %.not.i263 = icmp eq ptr %i.jg, %i.ji
  br i1 %.not.i263, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN6Assimp11RAWImporter15MeshInformationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %.noexc265 unwind label %bb.ds

.noexc265:                                        ; preds = %bb.dp
  %i.jj = load ptr, ptr %i.iq, align 8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 80
  store ptr %i.jk, ptr %i.iq, align 8
  br label %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit

bb.dq:                                            ; preds = %bb.do
  invoke void @_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit unwind label %bb.ds

_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit: ; preds = %bb.dq, %.noexc265
  %i.jl = load ptr, ptr %10, align 8              ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.cg
  br i1 %i.jm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit
  %i.jn = load i64, ptr %i.cg, align 8
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12emplace_backIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS2_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.jp = load ptr, ptr %i.iq, align 8
  %i.jq = getelementptr inbounds i8, ptr %i.jp, i64 -80
  br label %.loopexit548

bb.dr:                                            ; preds = %.noexc.i259
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

bb.ds:                                            ; preds = %bb.dq, %bb.dp
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = load ptr, ptr %10, align 8              ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.cg
  br i1 %i.ju, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %bb.ds
  %i.jv = load i64, ptr %i.cg, align 8
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.jt, i64 noundef %i.jw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270, %bb.dr
  %.pn197 = phi { ptr, i32 } [ %i.jr, %bb.dr ], [ %i.js, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270 ], [ %i.js, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ew

.loopexit548:                                     ; preds = %bb.dk, %bb.dj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269
  %.3155 = phi ptr [ %i.jq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269 ], [ %.sroa.0483.0606, %bb.dj ], [ %.sroa.0483.0606, %bb.dk ] ; 9 uses
  br i1 %.ph802, label %bb.dt, label %bb.em

bb.dt:                                            ; preds = %.loopexit548
  %i.jx = load <2 x float>, ptr %i.d, align 16    ; 6 uses
  %i.jy = load float, ptr %i.cj, align 8          ; 6 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.3155, i64 56 ; 6 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.3155, i64 64 ; 10 uses
  %i.kb = load ptr, ptr %i.ka, align 8            ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.3155, i64 72 ; 6 uses
  %i.kd = load ptr, ptr %i.kc, align 8
  %.not.i273 = icmp eq ptr %i.kb, %i.kd
  br i1 %.not.i273, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  store <2 x float> %i.jx, ptr %i.kb, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.ke = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.jy, i64 0
  store <2 x float> %i.ke, ptr %.sroa.11.0..sroa_idx, align 4
  %i.kf = load ptr, ptr %i.ka, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16 ; 2 uses
  store ptr %i.kg, ptr %i.ka, align 8
  %.pre677 = load ptr, ptr %i.kc, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

bb.dv:                                            ; preds = %bb.dt
  %i.kh = load ptr, ptr %i.jz, align 8            ; 5 uses
  %i.ki = ptrtoint ptr %i.kb to i64
  %i.kj = ptrtoint ptr %i.kh to i64
  %i.kk = sub i64 %i.ki, %i.kj                    ; 4 uses
  %i.kl = icmp eq i64 %i.kk, 9223372036854775792
  br i1 %i.kl, label %.invoke867, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke867:                                       ; preds = %bb.ek, %bb.eh, %bb.ee, %bb.eb, %bb.dy, %bb.dv
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
          to label %.cont868 unwind label %.loopexit.split-lp556

.cont868:                                         ; preds = %.invoke867
  unreachable

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dv
  %i.km = ashr exact i64 %i.kk, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.km, i64 1)
  %i.kn = add nsw i64 %.sroa.speculated.i.i.i, %i.km ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.km
  %i.kp = call i64 @llvm.umin.i64(i64 %i.kn, i64 576460752303423487)
  %i.kq = select i1 %i.ko, i64 576460752303423487, i64 %i.kp ; 2 uses
  %i.kr = shl nuw nsw i64 %i.kq, 4
  %i.ks = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kr) #25
          to label %.noexc276 unwind label %.loopexit555 ; 5 uses

.noexc276:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.kk ; 2 uses
  store <2 x float> %i.jx, ptr %i.kt, align 4
  %.sroa.11.0..sroa_idx461 = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.ku = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.jy, i64 0
  store <2 x float> %i.ku, ptr %.sroa.11.0..sroa_idx461, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.kh, %i.kb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc276, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.i ], [ %i.ks, %.noexc276 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i ], [ %i.kh, %.noexc276 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !13
  %i.kv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kv, %i.kb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !17

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc276
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ks, %.noexc276 ], [ %i.kw, %.lr.ph.i.i.i.i.i ]
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.kk) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.dw, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ks, ptr %i.jz, align 8
  store ptr %i.kx, ptr %i.ka, align 8
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.ks, i64 %i.kq ; 2 uses
  store ptr %i.ky, ptr %i.kc, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.du
  %i.kz = phi ptr [ %i.ky, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre677, %bb.du ] ; 4 uses
  %i.la = phi ptr [ %i.kx, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.kg, %bb.du ] ; 3 uses
  %.not.i277 = icmp eq ptr %i.la, %i.kz
  br i1 %.not.i277, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit
  store <2 x float> %i.jx, ptr %i.la, align 4
  %.sroa.11.0..sroa_idx463 = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lb = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.jy, i64 0
  store <2 x float> %i.lb, ptr %.sroa.11.0..sroa_idx463, align 4
  %i.lc = load ptr, ptr %i.ka, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16 ; 2 uses
  store ptr %i.ld, ptr %i.ka, align 8
  %.pre678 = load ptr, ptr %i.kc, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit292

bb.dy:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit
  %i.le = load ptr, ptr %i.jz, align 8            ; 5 uses
  %i.lf = ptrtoint ptr %i.kz to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg                    ; 4 uses
  %i.li = icmp eq i64 %i.lh, 9223372036854775792
  br i1 %i.li, label %.invoke867, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i278

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i278: ; preds = %bb.dy
  %i.lj = ashr exact i64 %i.lh, 4                 ; 3 uses
  %.sroa.speculated.i.i.i279 = call i64 @llvm.umax.i64(i64 %i.lj, i64 1)
  %i.lk = add nsw i64 %.sroa.speculated.i.i.i279, %i.lj ; 2 uses
  %i.ll = icmp ult i64 %i.lk, %i.lj
  %i.lm = call i64 @llvm.umin.i64(i64 %i.lk, i64 576460752303423487)
  %i.ln = select i1 %i.ll, i64 576460752303423487, i64 %i.lm ; 2 uses
  %i.lo = shl nuw nsw i64 %i.ln, 4
  %i.lp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lo) #25
          to label %.noexc291 unwind label %.loopexit555 ; 5 uses

.noexc291:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i278
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.lh ; 2 uses
  store <2 x float> %i.jx, ptr %i.lq, align 4
  %.sroa.11.0..sroa_idx465 = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  %i.lr = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.jy, i64 0
  store <2 x float> %i.lr, ptr %.sroa.11.0..sroa_idx465, align 4
  %.not10.i.i.i.i.i281 = icmp eq ptr %i.le, %i.kz
  br i1 %.not10.i.i.i.i.i281, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i286, label %.lr.ph.i.i.i.i.i282

.lr.ph.i.i.i.i.i282:                              ; preds = %.noexc291, %.lr.ph.i.i.i.i.i282
  %.012.i.i.i.i.i283 = phi ptr [ %i.lt, %.lr.ph.i.i.i.i.i282 ], [ %i.lp, %.noexc291 ] ; 2 uses
  %.0911.i.i.i.i.i284 = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i282 ], [ %i.le, %.noexc291 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i283, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i284, i64 16, i1 false), !alias.scope !18
  %i.ls = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i284, i64 16 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i283, i64 16 ; 2 uses
  %.not.i.i.i.i.i285 = icmp eq ptr %i.ls, %i.kz
  br i1 %.not.i.i.i.i.i285, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i286, label %.lr.ph.i.i.i.i.i282, !llvm.loop !17

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i286: ; preds = %.lr.ph.i.i.i.i.i282, %.noexc291
  %.0.lcssa.i.i.i.i.i287 = phi ptr [ %i.lp, %.noexc291 ], [ %i.lt, %.lr.ph.i.i.i.i.i282 ]
  %i.lu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i287, i64 16 ; 2 uses
  %.not.i23.i.i288 = icmp eq ptr %i.le, null
  br i1 %.not.i23.i.i288, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i289, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i286
  call void @_ZdlPvm(ptr noundef nonnull %i.le, i64 noundef %i.lh) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i289

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i289: ; preds = %bb.dz, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i286
  store ptr %i.lp, ptr %i.jz, align 8
  store ptr %i.lu, ptr %i.ka, align 8
  %i.lv = getelementptr inbounds nuw [16 x i8], ptr %i.lp, i64 %i.ln ; 2 uses
  store ptr %i.lv, ptr %i.kc, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit292

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit292: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i289, %bb.dx
  %i.lw = phi ptr [ %i.lv, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i289 ], [ %.pre678, %bb.dx ] ; 4 uses
  %i.lx = phi ptr [ %i.lu, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i289 ], [ %i.ld, %bb.dx ] ; 3 uses
  %.not.i293 = icmp eq ptr %i.lx, %i.lw
  br i1 %.not.i293, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit292
  store <2 x float> %i.jx, ptr %i.lx, align 4
  %.sroa.11.0..sroa_idx467 = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %i.ly = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.jy, i64 0
  store <2 x float> %i.ly, ptr %.sroa.11.0..sroa_idx467, align 4
  %i.lz = load ptr, ptr %i.ka, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  store ptr %i.ma, ptr %i.ka, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit308

bb.eb:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit292
  %i.mb = load ptr, ptr %i.jz, align 8            ; 5 uses
  %i.mc = ptrtoint ptr %i.lw to i64
  %i.md = ptrtoint ptr %i.mb to i64
  %i.me = sub i64 %i.mc, %i.md                    ; 4 uses
  %i.mf = icmp eq i64 %i.me, 9223372036854775792
  br i1 %i.mf, label %.invoke867, label %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i294

_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i294: ; preds = %bb.eb
  %i.mg = ashr exact i64 %i.me, 4                 ; 3 uses
  %.sroa.speculated.i.i.i295 = call i64 @llvm.umax.i64(i64 %i.mg, i64 1)
  %i.mh = add nsw i64 %.sroa.speculated.i.i.i295, %i.mg ; 2 uses
  %i.mi = icmp ult i64 %i.mh, %i.mg
  %i.mj = call i64 @llvm.umin.i64(i64 %i.mh, i64 576460752303423487)
  %i.mk = select i1 %i.mi, i64 576460752303423487, i64 %i.mj ; 2 uses
  %i.ml = shl nuw nsw i64 %i.mk, 4
  %i.mm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ml) #25
          to label %.noexc307 unwind label %.loopexit555 ; 5 uses

.noexc307:                                        ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i294
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.me ; 3 uses
  store <2 x float> %i.jx, ptr %i.mn, align 4
  %.sroa.11.0..sroa_idx469 = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  store float %i.jy, ptr %.sroa.11.0..sroa_idx469, align 4
  %.sroa.12.0..sroa_idx479 = getelementptr inbounds nuw i8, ptr %i.mn, i64 12
  store float 1.000000e+00, ptr %.sroa.12.0..sroa_idx479, align 4
  %.not10.i.i.i.i.i297 = icmp eq ptr %i.mb, %i.lw
  br i1 %.not10.i.i.i.i.i297, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i302, label %.lr.ph.i.i.i.i.i298

.lr.ph.i.i.i.i.i298:                              ; preds = %.noexc307, %.lr.ph.i.i.i.i.i298
  %.012.i.i.i.i.i299 = phi ptr [ %i.mp, %.lr.ph.i.i.i.i.i298 ], [ %i.mm, %.noexc307 ] ; 2 uses
  %.0911.i.i.i.i.i300 = phi ptr [ %i.mo, %.lr.ph.i.i.i.i.i298 ], [ %i.mb, %.noexc307 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i299, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i300, i64 16, i1 false), !alias.scope !22
  %i.mo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i300, i64 16 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i299, i64 16 ; 2 uses
  %.not.i.i.i.i.i301 = icmp eq ptr %i.mo, %i.lw
  br i1 %.not.i.i.i.i.i301, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i302, label %.lr.ph.i.i.i.i.i298, !llvm.loop !17

_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i302: ; preds = %.lr.ph.i.i.i.i.i298, %.noexc307
  %.0.lcssa.i.i.i.i.i303 = phi ptr [ %i.mm, %.noexc307 ], [ %i.mp, %.lr.ph.i.i.i.i.i298 ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i303, i64 16
  %.not.i23.i.i304 = icmp eq ptr %i.mb, null
  br i1 %.not.i23.i.i304, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i305, label %bb.ec

bb.ec:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i302
  call void @_ZdlPvm(ptr noundef nonnull %i.mb, i64 noundef %i.me) #23
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i305

_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i305: ; preds = %bb.ec, %_ZNSt6vectorI9aiColor4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i302
  store ptr %i.mm, ptr %i.jz, align 8
  store ptr %i.mq, ptr %i.ka, align 8
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.mm, i64 %i.mk
  store ptr %i.mr, ptr %i.kc, align 8
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit308

_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit308: ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i305, %bb.ea
  %i.ms = getelementptr inbounds nuw i8, ptr %.3155, i64 32 ; 6 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.3155, i64 40 ; 10 uses
  %i.mu = load ptr, ptr %i.mt, align 8            ; 6 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.3155, i64 48 ; 6 uses
  %i.mw = load ptr, ptr %i.mv, align 8
  %.not.i309 = icmp eq ptr %i.mu, %i.mw
  br i1 %.not.i309, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit308
  %i.mx = load float, ptr %i.cm, align 4
  %i.my = load <2 x float>, ptr %i.ck, align 4
  store <2 x float> %i.my, ptr %i.mu, align 4
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store float %i.mx, ptr %i.mz, align 4
  %i.na = load ptr, ptr %i.mt, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 12 ; 2 uses
  store ptr %i.nb, ptr %i.mt, align 8
  %.pre679 = load ptr, ptr %i.mv, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

bb.ee:                                            ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EE9push_backERKS1_.exit308
  %i.nc = load ptr, ptr %i.ms, align 8            ; 5 uses
  %i.nd = ptrtoint ptr %i.mu to i64
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = sub i64 %i.nd, %i.ne                    ; 4 uses
  %i.ng = icmp eq i64 %i.nf, 9223372036854775800
  br i1 %i.ng, label %.invoke867, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ee
  %i.nh = sdiv exact i64 %i.nf, 12                ; 3 uses
  %.sroa.speculated.i.i.i310 = call i64 @llvm.umax.i64(i64 %i.nh, i64 1)
  %i.ni = add nsw i64 %.sroa.speculated.i.i.i310, %i.nh ; 2 uses
  %i.nj = icmp ult i64 %i.ni, %i.nh
  %i.nk = call i64 @llvm.umin.i64(i64 %i.ni, i64 768614336404564650)
  %i.nl = select i1 %i.nj, i64 768614336404564650, i64 %i.nk ; 2 uses
  %i.nm = mul nuw nsw i64 %i.nl, 12
  %i.nn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nm) #25
          to label %.noexc319 unwind label %.loopexit555 ; 5 uses

.noexc319:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nf ; 2 uses
  %i.np = load float, ptr %i.cm, align 4
  %i.nq = load <2 x float>, ptr %i.ck, align 4
  store <2 x float> %i.nq, ptr %i.no, align 4
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store float %i.np, ptr %i.nr, align 4
  %.not10.i.i.i.i.i312 = icmp eq ptr %i.nc, %i.mu
  br i1 %.not10.i.i.i.i.i312, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i313

.lr.ph.i.i.i.i.i313:                              ; preds = %.noexc319, %.lr.ph.i.i.i.i.i313
  %.012.i.i.i.i.i314 = phi ptr [ %i.nt, %.lr.ph.i.i.i.i.i313 ], [ %i.nn, %.noexc319 ] ; 2 uses
  %.0911.i.i.i.i.i315 = phi ptr [ %i.ns, %.lr.ph.i.i.i.i.i313 ], [ %i.nc, %.noexc319 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i314, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i315, i64 12, i1 false), !alias.scope !26
  %i.ns = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i315, i64 12 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i314, i64 12 ; 2 uses
  %.not.i.i.i.i.i316 = icmp eq ptr %i.ns, %i.mu
  br i1 %.not.i.i.i.i.i316, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i313, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i313, %.noexc319
  %.0.lcssa.i.i.i.i.i317 = phi ptr [ %i.nn, %.noexc319 ], [ %i.nt, %.lr.ph.i.i.i.i.i313 ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i317, i64 12 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.nc, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nc, i64 noundef %i.nf) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ef, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.nn, ptr %i.ms, align 8
  store ptr %i.nu, ptr %i.mt, align 8
  %i.nv = getelementptr inbounds nuw [12 x i8], ptr %i.nn, i64 %i.nl ; 2 uses
  store ptr %i.nv, ptr %i.mv, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ed
  %i.nw = phi ptr [ %i.nv, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre679, %bb.ed ] ; 4 uses
  %i.nx = phi ptr [ %i.nu, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.nb, %bb.ed ] ; 3 uses
  %.not.i320 = icmp eq ptr %i.nx, %i.nw
  br i1 %.not.i320, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit
  %i.ny = load float, ptr %i.cp, align 16
  %i.nz = load <2 x float>, ptr %i.cn, align 8
  store <2 x float> %i.nz, ptr %i.nx, align 4
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 8
  store float %i.ny, ptr %i.oa, align 4
  %i.ob = load ptr, ptr %i.mt, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 12 ; 2 uses
  store ptr %i.oc, ptr %i.mt, align 8
  %.pre680 = load ptr, ptr %i.mv, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit335

bb.eh:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit
  %i.od = load ptr, ptr %i.ms, align 8            ; 5 uses
  %i.oe = ptrtoint ptr %i.nw to i64
  %i.of = ptrtoint ptr %i.od to i64
  %i.og = sub i64 %i.oe, %i.of                    ; 4 uses
  %i.oh = icmp eq i64 %i.og, 9223372036854775800
  br i1 %i.oh, label %.invoke867, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i321

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i321: ; preds = %bb.eh
  %i.oi = sdiv exact i64 %i.og, 12                ; 3 uses
  %.sroa.speculated.i.i.i322 = call i64 @llvm.umax.i64(i64 %i.oi, i64 1)
  %i.oj = add nsw i64 %.sroa.speculated.i.i.i322, %i.oi ; 2 uses
  %i.ok = icmp ult i64 %i.oj, %i.oi
  %i.ol = call i64 @llvm.umin.i64(i64 %i.oj, i64 768614336404564650)
  %i.om = select i1 %i.ok, i64 768614336404564650, i64 %i.ol ; 2 uses
  %i.on = mul nuw nsw i64 %i.om, 12
  %i.oo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.on) #25
          to label %.noexc334 unwind label %.loopexit555 ; 5 uses

.noexc334:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i321
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 %i.og ; 2 uses
  %i.oq = load float, ptr %i.cp, align 16
  %i.or = load <2 x float>, ptr %i.cn, align 8
  store <2 x float> %i.or, ptr %i.op, align 4
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  store float %i.oq, ptr %i.os, align 4
  %.not10.i.i.i.i.i324 = icmp eq ptr %i.od, %i.nw
  br i1 %.not10.i.i.i.i.i324, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i329, label %.lr.ph.i.i.i.i.i325

.lr.ph.i.i.i.i.i325:                              ; preds = %.noexc334, %.lr.ph.i.i.i.i.i325
  %.012.i.i.i.i.i326 = phi ptr [ %i.ou, %.lr.ph.i.i.i.i.i325 ], [ %i.oo, %.noexc334 ] ; 2 uses
  %.0911.i.i.i.i.i327 = phi ptr [ %i.ot, %.lr.ph.i.i.i.i.i325 ], [ %i.od, %.noexc334 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i326, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i327, i64 12, i1 false), !alias.scope !31
  %i.ot = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i327, i64 12 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i326, i64 12 ; 2 uses
  %.not.i.i.i.i.i328 = icmp eq ptr %i.ot, %i.nw
  br i1 %.not.i.i.i.i.i328, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i329, label %.lr.ph.i.i.i.i.i325, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i329: ; preds = %.lr.ph.i.i.i.i.i325, %.noexc334
  %.0.lcssa.i.i.i.i.i330 = phi ptr [ %i.oo, %.noexc334 ], [ %i.ou, %.lr.ph.i.i.i.i.i325 ]
  %i.ov = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i330, i64 12 ; 2 uses
  %.not.i35.i.i331 = icmp eq ptr %i.od, null
  br i1 %.not.i35.i.i331, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i332, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i329
  call void @_ZdlPvm(ptr noundef nonnull %i.od, i64 noundef %i.og) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i332

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i332: ; preds = %bb.ei, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i329
  store ptr %i.oo, ptr %i.ms, align 8
  store ptr %i.ov, ptr %i.mt, align 8
  %i.ow = getelementptr inbounds nuw [12 x i8], ptr %i.oo, i64 %i.om ; 2 uses
  store ptr %i.ow, ptr %i.mv, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit335

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit335: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i332, %bb.eg
  %i.ox = phi ptr [ %i.ow, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i332 ], [ %.pre680, %bb.eg ] ; 4 uses
  %i.oy = phi ptr [ %i.ov, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i332 ], [ %i.oc, %bb.eg ] ; 3 uses
  %.not.i336 = icmp eq ptr %i.oy, %i.ox
  br i1 %.not.i336, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit335
  %i.oz = load float, ptr %i.cs, align 4
  %i.pa = load <2 x float>, ptr %i.cq, align 4
  store <2 x float> %i.pa, ptr %i.oy, align 4
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store float %i.oz, ptr %i.pb, align 4
  %i.pc = load ptr, ptr %i.mt, align 8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 12
  store ptr %i.pd, ptr %i.mt, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351

bb.ek:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit335
  %i.pe = load ptr, ptr %i.ms, align 8            ; 5 uses
  %i.pf = ptrtoint ptr %i.ox to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg                    ; 4 uses
  %i.pi = icmp eq i64 %i.ph, 9223372036854775800
  br i1 %i.pi, label %.invoke867, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i337

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i337: ; preds = %bb.ek
  %i.pj = sdiv exact i64 %i.ph, 12                ; 3 uses
  %.sroa.speculated.i.i.i338 = call i64 @llvm.umax.i64(i64 %i.pj, i64 1)
  %i.pk = add nsw i64 %.sroa.speculated.i.i.i338, %i.pj ; 2 uses
  %i.pl = icmp ult i64 %i.pk, %i.pj
  %i.pm = call i64 @llvm.umin.i64(i64 %i.pk, i64 768614336404564650)
  %i.pn = select i1 %i.pl, i64 768614336404564650, i64 %i.pm ; 2 uses
  %i.po = mul nuw nsw i64 %i.pn, 12
  %i.pp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.po) #25
          to label %.noexc350 unwind label %.loopexit555 ; 5 uses

.noexc350:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i337
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.ph ; 2 uses
  %i.pr = load float, ptr %i.cs, align 4
  %i.ps = load <2 x float>, ptr %i.cq, align 4
  store <2 x float> %i.ps, ptr %i.pq, align 4
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store float %i.pr, ptr %i.pt, align 4
  %.not10.i.i.i.i.i340 = icmp eq ptr %i.pe, %i.ox
  br i1 %.not10.i.i.i.i.i340, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i345, label %.lr.ph.i.i.i.i.i341

.lr.ph.i.i.i.i.i341:                              ; preds = %.noexc350, %.lr.ph.i.i.i.i.i341
  %.012.i.i.i.i.i342 = phi ptr [ %i.pv, %.lr.ph.i.i.i.i.i341 ], [ %i.pp, %.noexc350 ] ; 2 uses
  %.0911.i.i.i.i.i343 = phi ptr [ %i.pu, %.lr.ph.i.i.i.i.i341 ], [ %i.pe, %.noexc350 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i342, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i343, i64 12, i1 false), !alias.scope !35
  %i.pu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i343, i64 12 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i342, i64 12 ; 2 uses
  %.not.i.i.i.i.i344 = icmp eq ptr %i.pu, %i.ox
  br i1 %.not.i.i.i.i.i344, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i345, label %.lr.ph.i.i.i.i.i341, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i345: ; preds = %.lr.ph.i.i.i.i.i341, %.noexc350
  %.0.lcssa.i.i.i.i.i346 = phi ptr [ %i.pp, %.noexc350 ], [ %i.pv, %.lr.ph.i.i.i.i.i341 ]
  %i.pw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i346, i64 12
  %.not.i35.i.i347 = icmp eq ptr %i.pe, null
  br i1 %.not.i35.i.i347, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i348, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i345
  call void @_ZdlPvm(ptr noundef nonnull %i.pe, i64 noundef %i.ph) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i348

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i348: ; preds = %bb.el, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i345
  store ptr %i.pp, ptr %i.ms, align 8
  store ptr %i.pw, ptr %i.mt, align 8
  %i.px = getelementptr inbounds nuw [12 x i8], ptr %i.pp, i64 %i.pn
  store ptr %i.px, ptr %i.mv, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351

.loopexit555:                                     ; preds = %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i278, %_ZNKSt6vectorI9aiColor4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i294, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i321, %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i337
  %lpad.loopexit557 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

.loopexit.split-lp556:                            ; preds = %.invoke867
  %lpad.loopexit.split-lp558 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.em:                                            ; preds = %.loopexit548
  %i.py = getelementptr inbounds nuw i8, ptr %.3155, i64 32 ; 6 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.3155, i64 40 ; 10 uses
  %i.qa = load ptr, ptr %i.pz, align 8            ; 6 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.3155, i64 48 ; 6 uses
  %i.qc = load ptr, ptr %i.qb, align 8
  %.not.i352 = icmp eq ptr %i.qa, %i.qc
  br i1 %.not.i352, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.qd = load float, ptr %i.cj, align 8
  %i.qe = load <2 x float>, ptr %i.d, align 16
  store <2 x float> %i.qe, ptr %i.qa, align 4
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  store float %i.qd, ptr %i.qf, align 4
  %i.qg = load ptr, ptr %i.pz, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 12 ; 2 uses
  store ptr %i.qh, ptr %i.pz, align 8
  %.pre675.a = load ptr, ptr %i.qb, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit367

bb.eo:                                            ; preds = %bb.em
  %i.qi = load ptr, ptr %i.py, align 8            ; 5 uses
  %i.qj = ptrtoint ptr %i.qa to i64
  %i.qk = ptrtoint ptr %i.qi to i64
  %i.ql = sub i64 %i.qj, %i.qk                    ; 4 uses
  %i.qm = icmp eq i64 %i.ql, 9223372036854775800
  br i1 %i.qm, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i353

.invoke:                                          ; preds = %bb.eu, %bb.er, %bb.eo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
          to label %.cont unwind label %.loopexit.split-lp551

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i353: ; preds = %bb.eo
  %i.qn = sdiv exact i64 %i.ql, 12                ; 3 uses
  %.sroa.speculated.i.i.i354 = call i64 @llvm.umax.i64(i64 %i.qn, i64 1)
  %i.qo = add nsw i64 %.sroa.speculated.i.i.i354, %i.qn ; 2 uses
  %i.qp = icmp ult i64 %i.qo, %i.qn
  %i.qq = call i64 @llvm.umin.i64(i64 %i.qo, i64 768614336404564650)
  %i.qr = select i1 %i.qp, i64 768614336404564650, i64 %i.qq ; 2 uses
  %i.qs = mul nuw nsw i64 %i.qr, 12
  %i.qt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qs) #25
          to label %.noexc366 unwind label %.loopexit550 ; 5 uses

.noexc366:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i353
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.ql ; 2 uses
  %i.qv = load float, ptr %i.cj, align 8
  %i.qw = load <2 x float>, ptr %i.d, align 16
  store <2 x float> %i.qw, ptr %i.qu, align 4
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  store float %i.qv, ptr %i.qx, align 4
  %.not10.i.i.i.i.i356 = icmp eq ptr %i.qi, %i.qa
  br i1 %.not10.i.i.i.i.i356, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i361, label %.lr.ph.i.i.i.i.i357

.lr.ph.i.i.i.i.i357:                              ; preds = %.noexc366, %.lr.ph.i.i.i.i.i357
  %.012.i.i.i.i.i358 = phi ptr [ %i.qz, %.lr.ph.i.i.i.i.i357 ], [ %i.qt, %.noexc366 ] ; 2 uses
  %.0911.i.i.i.i.i359 = phi ptr [ %i.qy, %.lr.ph.i.i.i.i.i357 ], [ %i.qi, %.noexc366 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i358, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i359, i64 12, i1 false), !alias.scope !39
  %i.qy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i359, i64 12 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i358, i64 12 ; 2 uses
  %.not.i.i.i.i.i360 = icmp eq ptr %i.qy, %i.qa
  br i1 %.not.i.i.i.i.i360, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i361, label %.lr.ph.i.i.i.i.i357, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i361: ; preds = %.lr.ph.i.i.i.i.i357, %.noexc366
  %.0.lcssa.i.i.i.i.i362 = phi ptr [ %i.qt, %.noexc366 ], [ %i.qz, %.lr.ph.i.i.i.i.i357 ]
  %i.ra = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i362, i64 12 ; 2 uses
  %.not.i35.i.i363 = icmp eq ptr %i.qi, null
  br i1 %.not.i35.i.i363, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i364, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i361
  call void @_ZdlPvm(ptr noundef nonnull %i.qi, i64 noundef %i.ql) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i364

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i364: ; preds = %bb.ep, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i361
  store ptr %i.qt, ptr %i.py, align 8
  store ptr %i.ra, ptr %i.pz, align 8
  %i.rb = getelementptr inbounds nuw [12 x i8], ptr %i.qt, i64 %i.qr ; 2 uses
  store ptr %i.rb, ptr %i.qb, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit367

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit367: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i364, %bb.en
  %i.rc = phi ptr [ %i.rb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i364 ], [ %.pre675.a, %bb.en ] ; 4 uses
  %i.rd = phi ptr [ %i.ra, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i364 ], [ %i.qh, %bb.en ] ; 3 uses
  %.not.i368 = icmp eq ptr %i.rd, %i.rc
  br i1 %.not.i368, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit367
  %i.re = load float, ptr %i.cm, align 4
  %i.rf = load <2 x float>, ptr %i.ck, align 4
  store <2 x float> %i.rf, ptr %i.rd, align 4
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store float %i.re, ptr %i.rg, align 4
  %i.rh = load ptr, ptr %i.pz, align 8
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 12 ; 2 uses
  store ptr %i.ri, ptr %i.pz, align 8
  %.pre676 = load ptr, ptr %i.qb, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit383

bb.er:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit367
  %i.rj = load ptr, ptr %i.py, align 8            ; 5 uses
  %i.rk = ptrtoint ptr %i.rc to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl                    ; 4 uses
  %i.rn = icmp eq i64 %i.rm, 9223372036854775800
  br i1 %i.rn, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i369

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i369: ; preds = %bb.er
  %i.ro = sdiv exact i64 %i.rm, 12                ; 3 uses
  %.sroa.speculated.i.i.i370 = call i64 @llvm.umax.i64(i64 %i.ro, i64 1)
  %i.rp = add nsw i64 %.sroa.speculated.i.i.i370, %i.ro ; 2 uses
  %i.rq = icmp ult i64 %i.rp, %i.ro
  %i.rr = call i64 @llvm.umin.i64(i64 %i.rp, i64 768614336404564650)
  %i.rs = select i1 %i.rq, i64 768614336404564650, i64 %i.rr ; 2 uses
  %i.rt = mul nuw nsw i64 %i.rs, 12
  %i.ru = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rt) #25
          to label %.noexc382 unwind label %.loopexit550 ; 5 uses

.noexc382:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i369
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rm ; 2 uses
  %i.rw = load float, ptr %i.cm, align 4
  %i.rx = load <2 x float>, ptr %i.ck, align 4
  store <2 x float> %i.rx, ptr %i.rv, align 4
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  store float %i.rw, ptr %i.ry, align 4
  %.not10.i.i.i.i.i372 = icmp eq ptr %i.rj, %i.rc
  br i1 %.not10.i.i.i.i.i372, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i377, label %.lr.ph.i.i.i.i.i373

.lr.ph.i.i.i.i.i373:                              ; preds = %.noexc382, %.lr.ph.i.i.i.i.i373
  %.012.i.i.i.i.i374 = phi ptr [ %i.sa, %.lr.ph.i.i.i.i.i373 ], [ %i.ru, %.noexc382 ] ; 2 uses
  %.0911.i.i.i.i.i375 = phi ptr [ %i.rz, %.lr.ph.i.i.i.i.i373 ], [ %i.rj, %.noexc382 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i374, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i375, i64 12, i1 false), !alias.scope !43
  %i.rz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i375, i64 12 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i374, i64 12 ; 2 uses
  %.not.i.i.i.i.i376 = icmp eq ptr %i.rz, %i.rc
  br i1 %.not.i.i.i.i.i376, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i377, label %.lr.ph.i.i.i.i.i373, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i377: ; preds = %.lr.ph.i.i.i.i.i373, %.noexc382
  %.0.lcssa.i.i.i.i.i378 = phi ptr [ %i.ru, %.noexc382 ], [ %i.sa, %.lr.ph.i.i.i.i.i373 ]
  %i.sb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i378, i64 12 ; 2 uses
  %.not.i35.i.i379 = icmp eq ptr %i.rj, null
  br i1 %.not.i35.i.i379, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i380, label %bb.es

bb.es:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i377
  call void @_ZdlPvm(ptr noundef nonnull %i.rj, i64 noundef %i.rm) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i380

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i380: ; preds = %bb.es, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i377
  store ptr %i.ru, ptr %i.py, align 8
  store ptr %i.sb, ptr %i.pz, align 8
  %i.sc = getelementptr inbounds nuw [12 x i8], ptr %i.ru, i64 %i.rs ; 2 uses
  store ptr %i.sc, ptr %i.qb, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit383

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit383: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i380, %bb.eq
  %i.sd = phi ptr [ %i.sc, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i380 ], [ %.pre676, %bb.eq ] ; 4 uses
  %i.se = phi ptr [ %i.sb, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i380 ], [ %i.ri, %bb.eq ] ; 3 uses
  %.not.i384 = icmp eq ptr %i.se, %i.sd
  br i1 %.not.i384, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit383
  %i.sf = load float, ptr %i.cp, align 16
  %i.sg = load <2 x float>, ptr %i.cn, align 8
  store <2 x float> %i.sg, ptr %i.se, align 4
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  store float %i.sf, ptr %i.sh, align 4
  %i.si = load ptr, ptr %i.pz, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 12
  store ptr %i.sj, ptr %i.pz, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351

bb.eu:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit383
  %i.sk = load ptr, ptr %i.py, align 8            ; 5 uses
  %i.sl = ptrtoint ptr %i.sd to i64
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = sub i64 %i.sl, %i.sm                    ; 4 uses
  %i.so = icmp eq i64 %i.sn, 9223372036854775800
  br i1 %i.so, label %.invoke, label %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i385

_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i385: ; preds = %bb.eu
  %i.sp = sdiv exact i64 %i.sn, 12                ; 3 uses
  %.sroa.speculated.i.i.i386 = call i64 @llvm.umax.i64(i64 %i.sp, i64 1)
  %i.sq = add nsw i64 %.sroa.speculated.i.i.i386, %i.sp ; 2 uses
  %i.sr = icmp ult i64 %i.sq, %i.sp
  %i.ss = call i64 @llvm.umin.i64(i64 %i.sq, i64 768614336404564650)
  %i.st = select i1 %i.sr, i64 768614336404564650, i64 %i.ss ; 2 uses
  %i.su = mul nuw nsw i64 %i.st, 12
  %i.sv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.su) #25
          to label %.noexc398 unwind label %.loopexit550 ; 5 uses

.noexc398:                                        ; preds = %_ZNKSt6vectorI10aiVector3tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i385
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sn ; 2 uses
  %i.sx = load float, ptr %i.cp, align 16
  %i.sy = load <2 x float>, ptr %i.cn, align 8
  store <2 x float> %i.sy, ptr %i.sw, align 4
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store float %i.sx, ptr %i.sz, align 4
  %.not10.i.i.i.i.i388 = icmp eq ptr %i.sk, %i.sd
  br i1 %.not10.i.i.i.i.i388, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i393, label %.lr.ph.i.i.i.i.i389

.lr.ph.i.i.i.i.i389:                              ; preds = %.noexc398, %.lr.ph.i.i.i.i.i389
  %.012.i.i.i.i.i390 = phi ptr [ %i.tb, %.lr.ph.i.i.i.i.i389 ], [ %i.sv, %.noexc398 ] ; 2 uses
  %.0911.i.i.i.i.i391 = phi ptr [ %i.ta, %.lr.ph.i.i.i.i.i389 ], [ %i.sk, %.noexc398 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i390, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i391, i64 12, i1 false), !alias.scope !47
  %i.ta = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i391, i64 12 ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i390, i64 12 ; 2 uses
  %.not.i.i.i.i.i392 = icmp eq ptr %i.ta, %i.sd
  br i1 %.not.i.i.i.i.i392, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i393, label %.lr.ph.i.i.i.i.i389, !llvm.loop !30

_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i393: ; preds = %.lr.ph.i.i.i.i.i389, %.noexc398
  %.0.lcssa.i.i.i.i.i394 = phi ptr [ %i.sv, %.noexc398 ], [ %i.tb, %.lr.ph.i.i.i.i.i389 ]
  %i.tc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i394, i64 12
  %.not.i35.i.i395 = icmp eq ptr %i.sk, null
  br i1 %.not.i35.i.i395, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i396, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i393
  call void @_ZdlPvm(ptr noundef nonnull %i.sk, i64 noundef %i.sn) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i396

_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i396: ; preds = %bb.ev, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i393
  store ptr %i.sv, ptr %i.py, align 8
  store ptr %i.tc, ptr %i.pz, align 8
  %i.td = getelementptr inbounds nuw [12 x i8], ptr %i.sv, i64 %i.st
  store ptr %i.td, ptr %i.qb, align 8
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351

_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i396, %bb.et, %bb.ej, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE17_M_realloc_insertIJRfS5_S5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i348, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread

bb.ew:                                            ; preds = %.loopexit555, %.loopexit.split-lp556, %.loopexit550, %.loopexit.split-lp551, %.loopexit549, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272
  %.pn203 = phi { ptr, i32 } [ %.pn197, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ], [ %lpad.loopexit.split-lp553, %.loopexit.split-lp551 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit549 ], [ %lpad.loopexit552, %.loopexit550 ], [ %lpad.loopexit557, %.loopexit555 ], [ %lpad.loopexit.split-lp558, %.loopexit.split-lp556 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  br label %bb.gv

_ZN6Assimp9IsLineEndIcEEbT_.exit.thread:          ; preds = %bb.z, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %.sroa.0506.1 = phi ptr [ %i.ew, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %.sroa.0506.0611, %_ZNSt6vectorI10aiVector3tIfESaIS1_EE12emplace_backIJRfS5_S5_EEERS1_DpOT_.exit351 ], [ %.sroa.0506.0611, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit ], [ %.sroa.0506.0611, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit ], [ %.sroa.0506.0611, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit ], [ %.sroa.0506.0611, %_ZN6Assimp10SkipSpacesIcEEbPPKT_S3_.exit.loopexit ], [ %.sroa.0489.0602, %bb.z ]
  %i.te = load i8, ptr %.2, align 1               ; 2 uses
  %.not538 = icmp eq i8 %i.te, 0
  br i1 %.not538, label %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.thread, label %bb.m

_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.thread: ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223
  %i.tf = invoke noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #25
          to label %bb.ex unwind label %bb.x      ; 6 uses

bb.ex:                                            ; preds = %_ZN6Assimp11GetNextLineIcEEbRPKT_PS1_.exit.thread
  invoke void @_ZN6aiNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(1144) %i.tf)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406 unwind label %bb.ey

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406: ; preds = %bb.ex
  %i.tg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store ptr %i.tf, ptr %i.tg, align 8
  store i32 9, ptr %i.tf, align 4
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.th, ptr noundef nonnull align 1 dereferenceable(9) @.str.8, i64 9, i1 false)
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 13
  store i8 0, ptr %i.ti, align 1
  %.pre681 = load ptr, ptr %6, align 8            ; 4 uses
  %.pre682 = load ptr, ptr %i.ac, align 8         ; 4 uses
  %.not539616 = icmp eq ptr %.pre681, %.pre682    ; 2 uses
  br i1 %.not539616, label %._crit_edge619, label %.lr.ph618

.lr.ph618:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406
  %i.tj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.ez

._crit_edge619:                                   ; preds = %bb.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit406
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 8            ; 2 uses
  %.not = icmp eq i32 %i.tl, 0
  br i1 %.not, label %bb.fc, label %bb.ff

bb.ey:                                            ; preds = %bb.ex
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.tf, i64 noundef 1144) #23
  br label %bb.gv

bb.ez:                                            ; preds = %.lr.ph618, %bb.fb
  %.sroa.0441.0617 = phi ptr [ %.pre681, %.lr.ph618 ], [ %i.uf, %bb.fb ] ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.0441.0617, i64 32 ; 2 uses
  %i.to = load ptr, ptr %i.tn, align 8
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.0441.0617, i64 40 ; 2 uses
  %i.tq = load ptr, ptr %i.tp, align 8
  %i.tr = icmp eq ptr %i.to, %i.tq
  br i1 %i.tr, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ts = load ptr, ptr %i.tg, align 8
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 1104 ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 8
  %i.tv = add i32 %i.tu, 1
  store i32 %i.tv, ptr %i.tt, align 8
  %i.tw = load ptr, ptr %i.tp, align 8
  %i.tx = load ptr, ptr %i.tn, align 8
  %i.ty = ptrtoint ptr %i.tw to i64
  %i.tz = ptrtoint ptr %i.tx to i64
  %i.ua = sub i64 %i.ty, %i.tz
  %i.ub = sdiv exact i64 %i.ua, 80
  %i.uc = trunc i64 %i.ub to i32
  %i.ud = load i32, ptr %i.tj, align 8
  %i.ue = add i32 %i.ud, %i.uc
  store i32 %i.ue, ptr %i.tj, align 8
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.0441.0617, i64 56 ; 2 uses
  %.not539 = icmp eq ptr %i.uf, %.pre682
  br i1 %.not539, label %._crit_edge619, label %bb.ez

bb.fc:                                            ; preds = %._crit_edge619
  %i.ug = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ug, ptr noundef nonnull @.str.9)
          to label %bb.fd unwind label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  invoke void @__cxa_throw(ptr nonnull %i.ug, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.gz unwind label %bb.x

bb.fe:                                            ; preds = %bb.fc
  %i.uh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ug) #22
  br label %bb.gv

bb.ff:                                            ; preds = %._crit_edge619
  %i.ui = zext i32 %i.tl to i64
  %i.uj = shl nuw nsw i64 %i.ui, 3
  %i.uk = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.uj) #25
          to label %bb.fg unwind label %bb.x

bb.fg:                                            ; preds = %bb.ff
  %i.ul = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.uk, ptr %i.ul, align 8
  %i.um = load ptr, ptr %i.tg, align 8            ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 1104 ; 3 uses
  %i.uo = load i32, ptr %i.un, align 8            ; 2 uses
  %i.up = icmp eq i32 %i.uo, 1
  br i1 %i.up, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store i32 0, ptr %i.un, align 8
  br label %bb.fl

bb.fi:                                            ; preds = %bb.fg
  %i.uq = zext i32 %i.uo to i64
  %i.ur = shl nuw nsw i64 %i.uq, 3
  %i.us = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ur) #25
          to label %bb.fj unwind label %bb.fk     ; 3 uses

bb.fj:                                            ; preds = %bb.fi
  %i.ut = load i32, ptr %i.un, align 8
  %i.uu = zext i32 %i.ut to i64
  %i.uv = shl nuw nsw i64 %i.uu, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.us, i8 0, i64 %i.uv, i1 false)
  %i.uw = getelementptr inbounds nuw i8, ptr %i.um, i64 1112
  store ptr %i.us, ptr %i.uw, align 8
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fi
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.fl:                                            ; preds = %bb.fj, %bb.fh
  %.0162 = phi ptr [ %i.tg, %bb.fh ], [ %i.us, %bb.fj ] ; 2 uses
  %i.uy = load i32, ptr %i.tk, align 8            ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.uy, ptr %i.uz, align 8
  %i.va = zext i32 %i.uy to i64
  %i.vb = shl nuw nsw i64 %i.va, 3
  %i.vc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.vb) #25
          to label %bb.fm unwind label %bb.fp     ; 2 uses

bb.fm:                                            ; preds = %bb.fl
  %i.vd = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.vc, ptr %i.vd, align 8
  br i1 %.not539616, label %._crit_edge643, label %.lr.ph642

.lr.ph642:                                        ; preds = %bb.fm
  %i.ve = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.vf = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  br label %bb.fq

._crit_edge643.loopexit:                          ; preds = %.loopexit547
  %.pre683 = load ptr, ptr %6, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp11RAWImporter15MeshInformationC2ERKS1_:bb.a
  store i64 %i.e, ptr %i.a, align 8
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = load i64, ptr %i.a, align 8
  store i64 %i.h, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.b, %bb.a ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i.i, label %.noexc7, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = sdiv exact i64 %i.v, 12
  %i.x = icmp ugt i64 %i.w, 768614336404564650
  br i1 %i.x, label %.noexc.i.i, label %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i, !prof !75

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #25
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.y, %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.z, ptr %i.o, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not7.i.i.i.i.i, label %.loopexit18, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc7, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.z, %.noexc7 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %i.ad, %.noexc7 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.09.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.04.08.i.i.i.i.i, i64 12, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i.i.i, label %.loopexit18, label %.lr.ph.i.i.i.i.i, !llvm.loop !77

.loopexit18:                                      ; preds = %.lr.ph.i.i.i.i.i, %.noexc7
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.z, %.noexc7 ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i8 = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i8, label %.noexc17, label %bb.e

bb.e:                                             ; preds = %.loopexit18
  %i.ap = icmp ugt i64 %i.ao, 9223372036854775792
  br i1 %i.ap, label %.noexc.i.i15, label %_ZNSt15__new_allocatorI9aiColor4tIfEE8allocateEmPKv.exit.i.i.i.i, !prof !75

.noexc.i.i15:                                     ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc16 unwind label %bb.g

.noexc16:                                         ; preds = %.noexc.i.i15
  unreachable

_ZNSt15__new_allocatorI9aiColor4tIfEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.e
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #25
          to label %.noexc17 unwind label %bb.g

.noexc17:                                         ; preds = %_ZNSt15__new_allocatorI9aiColor4tIfEE8allocateEmPKv.exit.i.i.i.i, %.loopexit18
  %i.ar = phi ptr [ null, %.loopexit18 ], [ %i.aq, %_ZNSt15__new_allocatorI9aiColor4tIfEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.ar, ptr %i.ah, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.at, ptr %i.au, align 8
  %i.av = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.aw = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not7.i.i.i.i.i9 = icmp eq ptr %i.av, %i.aw
  br i1 %.not7.i.i.i.i.i9, label %.loopexit, label %.lr.ph.i.i.i.i.i10

.lr.ph.i.i.i.i.i10:                               ; preds = %.noexc17, %.lr.ph.i.i.i.i.i10
  %.09.i.i.i.i.i11 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i10 ], [ %i.ar, %.noexc17 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i12 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i10 ], [ %i.av, %.noexc17 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.09.i.i.i.i.i11, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.04.08.i.i.i.i.i12, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i12, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i11, i64 16 ; 2 uses
  %.not.i.i.i.i.i13 = icmp eq ptr %i.ax, %i.aw
  br i1 %.not.i.i.i.i.i13, label %.loopexit, label %.lr.ph.i.i.i.i.i10, !llvm.loop !78

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i10, %.noexc17
  %.0.lcssa.i.i.i.i.i14 = phi ptr [ %i.ar, %.noexc17 ], [ %i.ay, %.lr.ph.i.i.i.i.i10 ]
  store ptr %.0.lcssa.i.i.i.i.i14, ptr %i.as, align 8
  ret void

bb.f:                                             ; preds = %_ZNSt15__new_allocatorI10aiVector3tIfEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt15__new_allocatorI9aiColor4tIfEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %i.o, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.ac, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #23
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %bb.h, %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.az, %bb.f ], [ %i.ba, %bb.g ], [ %i.ba, %bb.h ]
  %i.bg = load ptr, ptr %0, align 8               ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.b
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit
  %i.bi = load i64, ptr %i.b, align 8
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

_ZNKSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 56                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN6Assimp11RAWImporter16GroupInformationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter16GroupInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter16GroupInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter16GroupInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter16GroupInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.an, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter16GroupInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !alias.scope !79, !noalias !82
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !82, !noalias !79 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 7 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !82, !noalias !79 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !84
  br label %_ZN6Assimp11RAWImporter16GroupInformationC2EOS1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !alias.scope !79, !noalias !82
  %i.z = load i64, ptr %i.t, align 8, !alias.scope !82, !noalias !79
  store i64 %i.z, ptr %i.r, align 8, !alias.scope !79, !noalias !82
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !82, !noalias !79
  br label %_ZN6Assimp11RAWImporter16GroupInformationC2EOS1_.exit.i.i.i.i

_ZN6Assimp11RAWImporter16GroupInformationC2EOS1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !alias.scope !79, !noalias !82
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !alias.scope !82, !noalias !79
  store i64 0, ptr %i.ab, align 8, !alias.scope !82, !noalias !79
  store i8 0, ptr %i.t, align 8, !alias.scope !82, !noalias !79
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 3 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !alias.scope !82, !noalias !79
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !alias.scope !79, !noalias !82
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !82, !noalias !79
  store ptr %i.ai, ptr %i.ag, align 8, !alias.scope !79, !noalias !82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false), !alias.scope !82, !noalias !79
  tail call void @_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #22
  %i.aj = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !82, !noalias !79 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.t
  br i1 %i.ak, label %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN6Assimp11RAWImporter16GroupInformationC2EOS1_.exit.i.i.i.i
  %i.al = load i64, ptr %i.t, align 8, !alias.scope !82, !noalias !79
  %i.am = add i64 %i.al, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #23
  br label %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZN6Assimp11RAWImporter16GroupInformationC2EOS1_.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !85

_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter16GroupInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter16GroupInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit ], [ %i.ao, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 56 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35
  %.012.i.i.i28 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %i.ap, %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 7 uses
  %.0911.i.i.i29 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35 ], [ %1, %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.aq, ptr %.012.i.i.i28, align 8, !alias.scope !86, !noalias !89
  %i.ar = load ptr, ptr %.0911.i.i.i29, align 8, !alias.scope !89, !noalias !86 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 7 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.d:                                             ; preds = %.lr.ph.i.i.i27
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !89, !noalias !86 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !91
  br label %_ZN6Assimp11RAWImporter16GroupInformationC2EOS1_.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.ar, ptr %.012.i.i.i28, align 8, !alias.scope !86, !noalias !89
  %i.ay = load i64, ptr %i.as, align 8, !alias.scope !89, !noalias !86
  store i64 %i.ay, ptr %i.aq, align 8, !alias.scope !86, !noalias !89
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !alias.scope !89, !noalias !86
  br label %_ZN6Assimp11RAWImporter16GroupInformationC2EOS1_.exit.i.i.i.i33

_ZN6Assimp11RAWImporter16GroupInformationC2EOS1_.exit.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.d
  %i.az = phi i64 [ %i.av, %bb.d ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !alias.scope !86, !noalias !89
  store ptr %i.as, ptr %.0911.i.i.i29, align 8, !alias.scope !89, !noalias !86
  store i64 0, ptr %i.ba, align 8, !alias.scope !89, !noalias !86
  store i8 0, ptr %i.as, align 8, !alias.scope !89, !noalias !86
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 3 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !alias.scope !89, !noalias !86
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !alias.scope !86, !noalias !89
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !89, !noalias !86
  store ptr %i.bh, ptr %i.bf, align 8, !alias.scope !86, !noalias !89
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false), !alias.scope !89, !noalias !86
  tail call void @_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.bd) #22
  %i.bi = load ptr, ptr %.0911.i.i.i29, align 8, !alias.scope !89, !noalias !86 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.as
  br i1 %i.bj, label %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34: ; preds = %_ZN6Assimp11RAWImporter16GroupInformationC2EOS1_.exit.i.i.i.i33
  %i.bk = load i64, ptr %i.as, align 8, !alias.scope !89, !noalias !86
  %i.bl = add i64 %i.bk, 1
  tail call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #23
  br label %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35

_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35: ; preds = %_ZN6Assimp11RAWImporter16GroupInformationC2EOS1_.exit.i.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i34
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 56 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 56 ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.bm, %i.b
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39, label %.lr.ph.i.i.i27, !llvm.loop !85

_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39: ; preds = %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35, %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i37 = phi ptr [ %i.ap, %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bn, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter16GroupInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i35 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN6Assimp11RAWImporter16GroupInformationESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.br) #23
  br label %_ZNSt12_Vector_baseIN6Assimp11RAWImporter16GroupInformationESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp11RAWImporter16GroupInformationESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit39, %bb.e
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i37, ptr %i.a, align 8
  %i.bs = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bs, ptr %i.bo, align 8
  ret void

bb.f:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN6Assimp11RAWImporter16GroupInformationESaIS2_EE12_M_check_lenEmPKc.exit
  %i.bu = landingpad { ptr, i32 }
          catch ptr null
  %i.bv = extractvalue { ptr, i32 } %i.bu, 0
  %i.bw = tail call ptr @__cxa_begin_catch(ptr %i.bv) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.bt

bb.i:                                             ; preds = %bb.f
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  tail call void @__clang_call_terminate(ptr %i.by) #27
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_Z18ai_str_toprintableB5cxx11PKcic(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = icmp ne ptr %1, null
  %i.d = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.c, %i.d
end_hunk_1
begin_hunk_2_@_ZN15DeadlyErrorBaseC2IJERA36_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_:bb.a
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #22
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #22
  resume { ptr, i32 } %i.q
}

declare void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA37_KcERPS2_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcSA_SB_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(37) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #22
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(37) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %5, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %5, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #22
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #22
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #22
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA37_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(37) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(37) %3) #22
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(37) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !110
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !110
  store i8 0, ptr %i.c, align 8, !alias.scope !110
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !110 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !110 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !110 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !110 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !110
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #22
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #22
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

_ZNKSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = mul nuw nsw i64 %i.l, 80                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN6Assimp11RAWImporter15MeshInformationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter15MeshInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter15MeshInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter15MeshInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter15MeshInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter15MeshInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !alias.scope !111, !noalias !114
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !114, !noalias !111 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !114, !noalias !111 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !116
  br label %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !alias.scope !111, !noalias !114
  %i.z = load i64, ptr %i.t, align 8, !alias.scope !114, !noalias !111
  store i64 %i.z, ptr %i.r, align 8, !alias.scope !111, !noalias !114
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !114, !noalias !111
  br label %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !alias.scope !111, !noalias !114
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !alias.scope !114, !noalias !111
  store i64 0, ptr %i.ab, align 8, !alias.scope !114, !noalias !111
  store i8 0, ptr %i.t, align 8, !alias.scope !114, !noalias !111
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !alias.scope !114, !noalias !111
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !alias.scope !111, !noalias !114
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !114, !noalias !111
  store ptr %i.ai, ptr %i.ag, align 8, !alias.scope !111, !noalias !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false), !alias.scope !114, !noalias !111
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !alias.scope !114, !noalias !111
  store <2 x ptr> %i.al, ptr %i.aj, align 8, !alias.scope !111, !noalias !114
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !114, !noalias !111
  store ptr %i.ao, ptr %i.am, align 8, !alias.scope !111, !noalias !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false), !alias.scope !114, !noalias !111
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !63

_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter15MeshInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN6Assimp11RAWImporter15MeshInformationEEE9constructIS2_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS3_PT_DpOT0_.exit ], [ %i.aq, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 80 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.br, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ar, %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 9 uses
  %.0911.i.i.i29 = phi ptr [ %i.bq, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i28, align 8, !alias.scope !117, !noalias !120
  %i.at = load ptr, ptr %.0911.i.i.i29, align 8, !alias.scope !120, !noalias !117 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.d:                                             ; preds = %.lr.ph.i.i.i27
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !120, !noalias !117 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !122
  br label %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !alias.scope !117, !noalias !120
  %i.ba = load i64, ptr %i.au, align 8, !alias.scope !120, !noalias !117
  store i64 %i.ba, ptr %i.as, align 8, !alias.scope !117, !noalias !120
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !alias.scope !120, !noalias !117
  br label %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.d
  %i.bb = phi i64 [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ], [ %i.ax, %bb.d ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !alias.scope !117, !noalias !120
  store ptr %i.au, ptr %.0911.i.i.i29, align 8, !alias.scope !120, !noalias !117
  store i64 0, ptr %i.bc, align 8, !alias.scope !120, !noalias !117
  store i8 0, ptr %i.au, align 8, !alias.scope !120, !noalias !117
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = load <2 x ptr>, ptr %i.bf, align 8, !alias.scope !120, !noalias !117
  store <2 x ptr> %i.bg, ptr %i.be, align 8, !alias.scope !117, !noalias !120
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !120, !noalias !117
  store ptr %i.bj, ptr %i.bh, align 8, !alias.scope !117, !noalias !120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false), !alias.scope !120, !noalias !117
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 56
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 56 ; 2 uses
  %i.bm = load <2 x ptr>, ptr %i.bl, align 8, !alias.scope !120, !noalias !117
  store <2 x ptr> %i.bm, ptr %i.bk, align 8, !alias.scope !117, !noalias !120
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 72
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !120, !noalias !117
  store ptr %i.bp, ptr %i.bn, align 8, !alias.scope !117, !noalias !120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false), !alias.scope !120, !noalias !117
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 80 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 80 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bq, %i.b
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !63

_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36: ; preds = %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ar, %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.br, %_ZSt19__relocate_object_aIN6Assimp11RAWImporter15MeshInformationES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.c, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseIN6Assimp11RAWImporter15MeshInformationESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bv) #23
  br label %_ZNSt12_Vector_baseIN6Assimp11RAWImporter15MeshInformationESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp11RAWImporter15MeshInformationESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit36, %bb.e
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.a, align 8
  %i.bw = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bw, ptr %i.bs, align 8
  ret void

bb.f:                                             ; preds = %bb.g
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.g:                                             ; preds = %_ZNKSt6vectorIN6Assimp11RAWImporter15MeshInformationESaIS2_EE12_M_check_lenEmPKc.exit
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  %i.ca = tail call ptr @__cxa_begin_catch(ptr %i.bz) #22 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.f

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.bx

bb.i:                                             ; preds = %bb.f
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  tail call void @__clang_call_terminate(ptr %i.cc) #27
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp11RAWImporter15MeshInformationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.e, ptr %i.a, align 8
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
end_hunk_2
