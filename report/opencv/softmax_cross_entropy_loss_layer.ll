Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/softmax_cross_entropy_loss_layer?download=true
inline.NumInlined: 795
inline.NumDeleted: 350
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN2cv3dnn27SoftmaxCrossEntropyLossImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit332

bb.db:                                            ; preds = %bb.cv, %bb.cu
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit330

bb.dc:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %40)
          to label %bb.dd unwind label %bb.df

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull @__func__._ZN2cv3dnn27SoftmaxCrossEntropyLossImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.5, i32 noundef 136) #26
          to label %bb.de unwind label %bb.dg

bb.de:                                            ; preds = %bb.dd
  unreachable

bb.df:                                            ; preds = %bb.dc
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

bb.dg:                                            ; preds = %bb.dd
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ii = load ptr, ptr %39, align 8, !tbaa !23   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %bb.dg
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !22
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289, %bb.df
  %.pn182 = phi { ptr, i32 } [ %i.ig, %bb.df ], [ %i.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289 ], [ %i.ih, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #24
  br label %.body300

bb.dh:                                            ; preds = %bb.cw
  %i.in = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %23, i32 noundef 0)
          to label %bb.di unwind label %bb.eg

bb.di:                                            ; preds = %bb.dh
  store i64 %i.in, ptr %i.f, align 8, !tbaa !24
  %i.io = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %23, i32 noundef 1)
          to label %bb.dj unwind label %bb.eg

bb.dj:                                            ; preds = %bb.di
  store i64 %i.io, ptr %i.g, align 8, !tbaa !24
  %i.ip = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !69
  store ptr %i.iq, ptr %i.h, align 8, !tbaa !68
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i285
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #24
  %i.ir = load i32, ptr %i.b, align 4, !tbaa !60
  %i.is = mul nsw i32 %i.ir, %i.al
  store i32 0, ptr %41, align 4, !tbaa !71
  %i.it = getelementptr inbounds nuw i8, ptr %41, i64 4
  store i32 %i.is, ptr %i.it, align 4, !tbaa !72
  %i.iu = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %42, i8 0, i64 32, i1 false)
  %i.iv = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22
          to label %bb.do unwind label %bb.dl     ; 12 uses

bb.dl:                                            ; preds = %bb.dk
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = load ptr, ptr %i.iu, align 8, !tbaa !74 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i, label %.body292, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.iy = invoke noundef zeroext i1 %i.ix(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 3)
          to label %.body292 unwind label %bb.dn  ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.iz = landingpad { ptr, i32 }
          catch ptr null
  %i.ja = extractvalue { ptr, i32 } %i.iz, 0
  call void @__clang_call_terminate(ptr %i.ja) #27
  unreachable

bb.do:                                            ; preds = %bb.dk
  %i.jb = getelementptr inbounds nuw i8, ptr %42, i64 24
  store ptr %35, ptr %i.iv, align 16, !tbaa !75
  %.sroa.5355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  store ptr %37, ptr %.sroa.5355.0..sroa_idx, align 8, !tbaa !77
  %.sroa.6356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store ptr %38, ptr %.sroa.6356.0..sroa_idx, align 16, !tbaa !77
  %.sroa.7357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  store ptr %i.c, ptr %.sroa.7357.0..sroa_idx, align 8, !tbaa !79
  %.sroa.8358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  store ptr %i.d, ptr %.sroa.8358.0..sroa_idx, align 16, !tbaa !79
  %.sroa.9359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  store ptr %i.b, ptr %.sroa.9359.0..sroa_idx, align 8, !tbaa !81
  %.sroa.10360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 48
  store ptr %i.a, ptr %.sroa.10360.0..sroa_idx, align 16, !tbaa !81
  %.sroa.11361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  store ptr %i.e, ptr %.sroa.11361.0..sroa_idx, align 8, !tbaa !83
  %.sroa.12362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  store ptr %i.h, ptr %.sroa.12362.0..sroa_idx, align 16, !tbaa !86
  %.sroa.13363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 72
  store ptr %i.f, ptr %.sroa.13363.0..sroa_idx, align 8, !tbaa !79
  %.sroa.14364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iv, i64 80
  store ptr %i.g, ptr %.sroa.14364.0..sroa_idx, align 16, !tbaa !79
  store ptr %i.iv, ptr %42, align 8, !tbaa !87
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn27SoftmaxCrossEntropyLossImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.jb, align 8, !tbaa !89
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn27SoftmaxCrossEntropyLossImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.iu, align 8, !tbaa !74
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %41, ptr noundef align 8 %42, double noundef 1.600000e+01)
          to label %bb.dp unwind label %bb.ed

bb.dp:                                            ; preds = %bb.do
  %i.jc = load ptr, ptr %i.iu, align 8, !tbaa !74 ; 2 uses
  %.not.i = icmp eq ptr %i.jc, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.jd = invoke noundef zeroext i1 %i.jc(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.dr ; 0 uses

bb.dr:                                            ; preds = %bb.dq
  %i.je = landingpad { ptr, i32 }
          catch ptr null
  %i.jf = extractvalue { ptr, i32 } %i.je, 0
  call void @__clang_call_terminate(ptr %i.jf) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.dp, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  %i.jg = getelementptr inbounds nuw i8, ptr %i.n, i64 212
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !143
  %i.ji = load i32, ptr %i.x, align 4, !tbaa !143
  %i.jj = icmp eq i32 %i.jh, %i.ji
  br i1 %i.jj, label %bb.ds, label %bb.dx

bb.ds:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.jk = getelementptr inbounds nuw i8, ptr %i.n, i64 280
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !59
  %i.jm = icmp sgt i32 %i.jl, 1
  br i1 %i.jm, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc299 unwind label %bb.eg

.noexc299:                                        ; preds = %bb.dt
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.29, i32 noundef 103) #26
          to label %bb.du unwind label %bb.dv

bb.du:                                            ; preds = %.noexc299
  unreachable

bb.dv:                                            ; preds = %.noexc299
  %i.jn = landingpad { ptr, i32 }
          cleanup
  %i.jo = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i296: ; preds = %bb.dv
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !22
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i297: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body300

bb.dw:                                            ; preds = %bb.ds
  %i.jt = getelementptr inbounds nuw i8, ptr %i.n, i64 296
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !60
  %i.jv = load i32, ptr %i.a, align 4, !tbaa !60
  %i.jw = icmp eq i32 %i.ju, %i.jv
  br i1 %i.jw, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %_ZNSt14_Function_baseD2Ev.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.jy = load i8, ptr %i.jx, align 8, !tbaa !50, !range !90, !noundef !91
  %i.jz = trunc nuw i8 %i.jy to i1
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dw, %bb.dx
  %i.ka = phi i1 [ true, %bb.dw ], [ %i.jz, %bb.dx ]
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !66 ; 2 uses
  %i.kd = fcmp olt float %i.kc, 1.000000e+00
  %i.ke = select i1 %i.kd, float %i.kc, float 1.000000e+00 ; 4 uses
  %i.kf = fcmp ule float %i.ke, 0.000000e+00      ; 2 uses
  %.sroa.speculated352 = select i1 %i.kf, float 0.000000e+00, float %i.ke ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #24
  %i.kg = load i32, ptr %i.b, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #24
  %i.kh = mul nsw i32 %i.kg, %i.al
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %44, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %43, i32 noundef %i.kh, i32 noundef 1, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %44)
          to label %bb.dz unwind label %bb.eh

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #24
  %i.ki = load i32, ptr %i.b, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #24
  store double 1.000000e+00, ptr %46, align 8, !tbaa !93
  %i.kj = getelementptr inbounds nuw i8, ptr %46, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, i8 0, i64 24, i1 false)
  %i.kk = mul nsw i32 %i.ki, %i.al
  invoke void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %45, i32 noundef %i.kk, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %46)
          to label %bb.ea unwind label %bb.ei

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #24
  %i.kl = load i32, ptr %i.b, align 4, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #24
  store double 1.000000e+00, ptr %48, align 8, !tbaa !93
  %i.km = getelementptr inbounds nuw i8, ptr %48, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.km, i8 0, i64 24, i1 false)
  %i.kn = mul nsw i32 %i.kl, %i.al
  invoke void @_ZN2cv3MatC1EiiiRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %47, i32 noundef %i.kn, i32 noundef 1, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %48)
          to label %bb.eb unwind label %bb.ej

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  br i1 %i.ka, label %bb.ff, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ko = load i32, ptr %i.o, align 8, !tbaa !153
  %i.kp = and i32 %i.ko, 31
  switch i32 %i.kp, label %bb.ek [
    i32 4, label %bb.ep
    i32 11, label %bb.ep
  ]

bb.ed:                                            ; preds = %bb.do
  %i.kq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kr = load ptr, ptr %i.iu, align 8, !tbaa !74 ; 2 uses
  %.not.i304 = icmp eq ptr %i.kr, null
  br i1 %.not.i304, label %.body292, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ks = invoke noundef zeroext i1 %i.kr(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %42, i32 noundef 3)
          to label %.body292 unwind label %bb.ef  ; 0 uses

bb.ef:                                            ; preds = %bb.ee
  %i.kt = landingpad { ptr, i32 }
          catch ptr null
  %i.ku = extractvalue { ptr, i32 } %i.kt, 0
  call void @__clang_call_terminate(ptr %i.ku) #27
  unreachable

.body292:                                         ; preds = %bb.ee, %bb.ed, %bb.dm, %bb.dl
  %.pn184 = phi { ptr, i32 } [ %i.iw, %bb.dl ], [ %i.kq, %bb.ee ], [ %i.iw, %bb.dm ], [ %i.kq, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #24
  br label %.body300

bb.eg:                                            ; preds = %bb.dt, %bb.dh, %bb.di
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %.body300

bb.eh:                                            ; preds = %bb.dy
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #24
  br label %bb.gw

bb.ei:                                            ; preds = %bb.dz
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #24
  br label %bb.gv

bb.ej:                                            ; preds = %bb.ea
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #24
  br label %bb.gu

bb.ek:                                            ; preds = %bb.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %50)
          to label %bb.el unwind label %bb.en

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull @__func__._ZN2cv3dnn27SoftmaxCrossEntropyLossImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.5, i32 noundef 225) #26
          to label %bb.em unwind label %bb.eo

bb.em:                                            ; preds = %bb.el
  unreachable

bb.en:                                            ; preds = %bb.ek
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

bb.eo:                                            ; preds = %bb.el
  %i.la = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lb = load ptr, ptr %49, align 8, !tbaa !23   ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306: ; preds = %bb.eo
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !22
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit308: ; preds = %bb.eo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306, %bb.en
  %.pn186 = phi { ptr, i32 } [ %i.kz, %bb.en ], [ %i.la, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i306 ], [ %i.la, %bb.eo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #24
  br label %bb.gt

bb.ep:                                            ; preds = %bb.ec, %bb.ec
  %i.lg = invoke noundef i64 @_ZNK2cv3Mat5totalEv(ptr noundef nonnull align 8 dereferenceable(208) %i.o)
          to label %bb.eq unwind label %bb.go

bb.eq:                                            ; preds = %bb.ep
  %i.lh = trunc i64 %i.lg to i32                  ; 2 uses
  %i.li = load i32, ptr %i.b, align 4, !tbaa !60
  %i.lj = mul nsw i32 %i.li, %i.al
  %i.lk = icmp eq i32 %i.lj, %i.lh
  br i1 %i.lk, label %bb.ew, label %bb.er

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %52)
          to label %bb.es unwind label %bb.eu

bb.es:                                            ; preds = %bb.er
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull @__func__._ZN2cv3dnn27SoftmaxCrossEntropyLossImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_, ptr noundef nonnull @.str.5, i32 noundef 226) #26
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %bb.es
  unreachable

bb.eu:                                            ; preds = %bb.er
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

bb.ev:                                            ; preds = %bb.es
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ln = load ptr, ptr %51, align 8, !tbaa !23   ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.lp = icmp eq ptr %i.ln, %i.lo
  br i1 %i.lp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309: ; preds = %bb.ev
  %i.lq = load i64, ptr %i.lo, align 8, !tbaa !22
  %i.lr = add i64 %i.lq, 1
  call void @_ZdlPvm(ptr noundef %i.ln, i64 noundef %i.lr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit311: ; preds = %bb.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309, %bb.eu
  %.pn188 = phi { ptr, i32 } [ %i.ll, %bb.eu ], [ %i.lm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i309 ], [ %i.lm, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #24
  br label %bb.gt

bb.ew:                                            ; preds = %bb.eq
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #24
  invoke void @_ZNK2cv3Mat7reshapeEii(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %53, ptr noundef nonnull align 8 dereferenceable(208) %i.o, i32 noundef 1, i32 noundef %i.lh)
          to label %bb.ex unwind label %bb.fa

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.v, label %bb.ey, label %.thread

bb.ey:                                            ; preds = %bb.ex
  %i.ls = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !69 ; 2 uses
  %i.lu = load i32, ptr %i.o, align 8, !tbaa !153
  %i.lv = and i32 %i.lu, 31
  %i.lw = icmp eq i32 %i.lv, 4
  %i.lx = load i64, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %i.ly = load i64, ptr %i.d, align 8, !tbaa !24  ; 2 uses
  %i.lz = load i32, ptr %i.b, align 4, !tbaa !60  ; 2 uses
  %i.ma = load i32, ptr %i.a, align 4, !tbaa !60  ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !49 ; 2 uses
  %i.md = load ptr, ptr %38, align 8, !tbaa !65   ; 2 uses
  %i.me = load ptr, ptr %37, align 8, !tbaa !65   ; 2 uses
  br i1 %i.lw, label %bb.ez, label %bb.fc

.thread:                                          ; preds = %bb.ex
  %i.mf = load i32, ptr %i.o, align 8, !tbaa !153
  %i.mg = and i32 %i.mf, 31
  %i.mh = icmp eq i32 %i.mg, 4
  %i.mi = load i64, ptr %i.c, align 8, !tbaa !24  ; 2 uses
  %i.mj = load i64, ptr %i.d, align 8, !tbaa !24  ; 2 uses
  %i.mk = load i32, ptr %i.b, align 4, !tbaa !60  ; 2 uses
  %i.ml = load i32, ptr %i.a, align 4, !tbaa !60  ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !49 ; 2 uses
  %i.mo = load ptr, ptr %38, align 8, !tbaa !65   ; 2 uses
  %i.mp = load ptr, ptr %37, align 8, !tbaa !65   ; 2 uses
  br i1 %i.mh, label %.thread367, label %.thread368

bb.ez:                                            ; preds = %bb.ey
  invoke void @_ZN2cv3dnn27SoftmaxCrossEntropyLossImpl18reduceSCEPerSampleIiLb1EEEvRKNS_3MatEmmiS5_iifPKfS7_S7_RS3_S8_S8_i(ptr noundef nonnull align 8 dereferenceable(208) %35, i64 noundef %i.lx, i64 noundef %i.ly, i32 noundef %i.lz, ptr noundef nonnull align 8 dereferenceable(208) %53, i32 noundef %i.ma, i32 noundef %i.mc, float noundef %.sroa.speculated352, ptr noundef %i.md, ptr noundef %i.me, ptr noundef %i.lt, ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(208) %45, i32 noundef 16)
          to label %bb.fd unwind label %bb.fb

bb.fa:                                            ; preds = %bb.ew
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.fb:                                            ; preds = %.thread368, %bb.fc, %.thread367, %bb.ez
  %i.mr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #24
  br label %bb.fe

.thread367:                                       ; preds = %.thread
  invoke void @_ZN2cv3dnn27SoftmaxCrossEntropyLossImpl18reduceSCEPerSampleIiLb0EEEvRKNS_3MatEmmiS5_iifPKfS7_S7_RS3_S8_S8_i(ptr noundef nonnull align 8 dereferenceable(208) %35, i64 noundef %i.mi, i64 noundef %i.mj, i32 noundef %i.mk, ptr noundef nonnull align 8 dereferenceable(208) %53, i32 noundef %i.ml, i32 noundef %i.mn, float noundef %.sroa.speculated352, ptr noundef %i.mo, ptr noundef %i.mp, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(208) %45, i32 noundef 16)
          to label %bb.fd unwind label %bb.fb

bb.fc:                                            ; preds = %bb.ey
  invoke void @_ZN2cv3dnn27SoftmaxCrossEntropyLossImpl18reduceSCEPerSampleIlLb1EEEvRKNS_3MatEmmiS5_iifPKfS7_S7_RS3_S8_S8_i(ptr noundef nonnull align 8 dereferenceable(208) %35, i64 noundef %i.lx, i64 noundef %i.ly, i32 noundef %i.lz, ptr noundef nonnull align 8 dereferenceable(208) %53, i32 noundef %i.ma, i32 noundef %i.mc, float noundef %.sroa.speculated352, ptr noundef %i.md, ptr noundef %i.me, ptr noundef %i.lt, ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(208) %45, i32 noundef 16)
          to label %bb.fd unwind label %bb.fb

.thread368:                                       ; preds = %.thread
  invoke void @_ZN2cv3dnn27SoftmaxCrossEntropyLossImpl18reduceSCEPerSampleIlLb0EEEvRKNS_3MatEmmiS5_iifPKfS7_S7_RS3_S8_S8_i(ptr noundef nonnull align 8 dereferenceable(208) %35, i64 noundef %i.mi, i64 noundef %i.mj, i32 noundef %i.mk, ptr noundef nonnull align 8 dereferenceable(208) %53, i32 noundef %i.ml, i32 noundef %i.mn, float noundef %.sroa.speculated352, ptr noundef %i.mo, ptr noundef %i.mp, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(208) %43, ptr noundef nonnull align 8 dereferenceable(208) %47, ptr noundef nonnull align 8 dereferenceable(208) %45, i32 noundef 16)
          to label %bb.fd unwind label %bb.fb

bb.fd:                                            ; preds = %bb.fc, %.thread368, %bb.ez, %.thread367
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %53) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  br label %bb.gg

bb.fe:                                            ; preds = %bb.fb, %bb.fa
  %.pn190 = phi { ptr, i32 } [ %i.mr, %bb.fb ], [ %i.mq, %bb.fa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #24
  br label %bb.gt

bb.ff:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #24
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %54) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #24
  %i.ms = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %55, i64 16
  store i64 0, ptr %i.mt, align 8
  store i32 33619968, ptr %55, align 8, !tbaa !154
  store ptr %54, ptr %i.ms, align 8, !tbaa !148
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %55, i32 noundef 5, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.fg unwind label %bb.fk

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  %i.mu = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %54, i32 noundef 0)
          to label %bb.fh unwind label %bb.fl

bb.fh:                                            ; preds = %bb.fg
  store i64 %i.mu, ptr %i.i, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #24
  %i.mv = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %54, i32 noundef 1)
          to label %bb.fi unwind label %bb.fm

bb.fi:                                            ; preds = %bb.fh
  store i64 %i.mv, ptr %i.j, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #24
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.mx = load i8, ptr %i.mw, align 8, !tbaa !50, !range !90, !noundef !91
  %i.my = trunc nuw i8 %i.mx to i1
  %or.cond.not = select i1 %i.my, i1 true, i1 %i.kf ; 2 uses
  %i.mz = fsub float 1.000000e+00, %i.ke
  %i.na = select i1 %or.cond.not, float 1.000000e+00, float %i.mz
  store float %i.na, ptr %i.k, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #24
  %i.nb = load i32, ptr %i.a, align 4             ; 4 uses
  %i.nc = sitofp i32 %i.nb to float
  %i.nd = fdiv float %i.ke, %i.nc
  %i.ne = select i1 %or.cond.not, float 0.000000e+00, float %i.nd
  store float %i.ne, ptr %i.l, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #24
  store ptr null, ptr %i.m, align 8, !tbaa !68
  br i1 %i.v, label %bb.fj, label %bb.fn

bb.fj:                                            ; preds = %bb.fi
  %i.nf = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !69
  br label %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit

bb.fk:                                            ; preds = %bb.ff
  %i.nh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #24
  br label %bb.gf

bb.fl:                                            ; preds = %bb.fg
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.ge

bb.fm:                                            ; preds = %bb.fh
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.fn:                                            ; preds = %bb.fi
  %i.nk = sext i32 %i.nb to i64                   ; 2 uses
  %.not = icmp eq i32 %i.nb, 0
  br i1 %.not, label %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.nl = icmp slt i32 %i.nb, 0
  br i1 %i.nl, label %bb.fp, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.fp:                                            ; preds = %bb.fo
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #26
          to label %.noexc335 unwind label %.thread369

.noexc335:                                        ; preds = %bb.fp
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.fo
  %i.nm = shl nuw nsw i64 %i.nk, 2                ; 3 uses
  %i.nn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nm) #22
          to label %.noexc336 unwind label %.thread369 ; 7 uses

.noexc336:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.nm
  %i.np = add nsw i64 %i.nm, -4                   ; 2 uses
  %i.nq = lshr exact i64 %i.np, 2
  %i.nr = add nuw nsw i64 %i.nq, 1                ; 2 uses
  %min.iters.check475 = icmp ult i64 %i.np, 28
  br i1 %min.iters.check475, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph476

vector.ph476:                                     ; preds = %.noexc336
  %n.vec477 = and i64 %i.nr, 9223372036854775800  ; 3 uses
  %i.ns = shl i64 %n.vec477, 2
  %i.nt = getelementptr i8, ptr %i.nn, i64 %i.ns
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph476
  %index479 = phi i64 [ 0, %vector.ph476 ], [ %index.next480, %vector.body478 ] ; 2 uses
  %i.nu = shl i64 %index479, 2
  %next.gep = getelementptr i8, ptr %i.nn, i64 %i.nu ; 2 uses
  %i.nv = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> splat (float 1.000000e+00), ptr %next.gep, align 4, !tbaa !66
  store <4 x float> splat (float 1.000000e+00), ptr %i.nv, align 4, !tbaa !66
  %index.next480 = add nuw i64 %index479, 8       ; 2 uses
  %i.nw = icmp eq i64 %index.next480, %n.vec477
  br i1 %i.nw, label %middle.block481, label %vector.body478, !llvm.loop !140

middle.block481:                                  ; preds = %vector.body478
  %cmp.n = icmp eq i64 %i.nr, %n.vec477
  br i1 %cmp.n, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %.noexc336, %middle.block481
  %.07.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.nn, %.noexc336 ], [ %i.nt, %middle.block481 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.nx, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store float 1.000000e+00, ptr %.07.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !66
  %i.nx = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.nx, %i.no
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !141

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block481
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %i.nk
  %i.nz = ptrtoint ptr %i.ny to i64
  br label %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit

.thread369:                                       ; preds = %bb.fp, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.oa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit322

_ZNSt6vectorIfSaIfEE6assignEmRKf.exit:            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i, %bb.fn, %bb.fj
  %.sroa.0339.0 = phi ptr [ null, %bb.fj ], [ %i.nn, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i ], [ null, %bb.fn ] ; 6 uses
  %.sroa.14345.0 = phi i64 [ 0, %bb.fj ], [ %i.nz, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i ], [ 0, %bb.fn ] ; 2 uses
  %storemerge = phi ptr [ %i.ng, %bb.fj ], [ %i.nn, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit.i ], [ null, %bb.fn ]
  store ptr %storemerge, ptr %i.m, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #24
  %i.ob = load i32, ptr %i.b, align 4, !tbaa !60
  %i.oc = mul nsw i32 %i.ob, %i.al
  store i32 0, ptr %56, align 4, !tbaa !71
  %i.od = getelementptr inbounds nuw i8, ptr %56, i64 4
  store i32 %i.oc, ptr %i.od, align 4, !tbaa !72
  %i.oe = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %57, i8 0, i64 32, i1 false)
  %i.of = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22
          to label %bb.ft unwind label %bb.fq     ; 16 uses

bb.fq:                                            ; preds = %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oh = load ptr, ptr %i.oe, align 8, !tbaa !74 ; 2 uses
  %.not.i.i313 = icmp eq ptr %i.oh, null
  br i1 %.not.i.i313, label %bb.gb, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.oi = invoke noundef zeroext i1 %i.oh(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 8 dereferenceable(32) %57, i32 noundef 3)
          to label %bb.gb unwind label %bb.fs     ; 0 uses

bb.fs:                                            ; preds = %bb.fr
  %i.oj = landingpad { ptr, i32 }
          catch ptr null
  %i.ok = extractvalue { ptr, i32 } %i.oj, 0
  call void @__clang_call_terminate(ptr %i.ok) #27
  unreachable

bb.ft:                                            ; preds = %_ZNSt6vectorIfSaIfEE6assignEmRKf.exit
  %i.ol = getelementptr inbounds nuw i8, ptr %57, i64 24
  store ptr %35, ptr %i.of, align 16, !tbaa !75
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  store ptr %54, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  store ptr %i.m, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !86
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  store ptr %43, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !75
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  store ptr %47, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !75
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 40
  store ptr %45, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !75
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 48
  store ptr %37, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !77
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 56
  store ptr %i.c, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !79
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 64
  store ptr %i.d, ptr %.sroa.12.0..sroa_idx, align 16, !tbaa !79
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 72
  store ptr %i.i, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !79
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 80
  store ptr %i.j, ptr %.sroa.14.0..sroa_idx, align 16, !tbaa !79
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 88
  store ptr %i.b, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !81
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 96
  store ptr %i.a, ptr %.sroa.16.0..sroa_idx, align 16, !tbaa !81
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 104
  store ptr %i.k, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !68
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.of, i64 112
  store ptr %i.l, ptr %.sroa.18.0..sroa_idx, align 16, !tbaa !68
  store ptr %i.of, ptr %57, align 8, !tbaa !87
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn27SoftmaxCrossEntropyLossImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E0_E9_M_invokeERKSt9_Any_dataS3_, ptr %i.ol, align 8, !tbaa !89
  store ptr @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn27SoftmaxCrossEntropyLossImpl7forwardERKNS0_11_InputArrayERKNS0_12_OutputArrayESC_EUlS3_E0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.oe, align 8, !tbaa !74
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %56, ptr noundef align 8 %57, double noundef 1.600000e+01)
          to label %bb.fu unwind label %bb.fy

bb.fu:                                            ; preds = %bb.ft
  %i.om = load ptr, ptr %i.oe, align 8, !tbaa !74 ; 2 uses
  %.not.i317 = icmp eq ptr %i.om, null
  br i1 %.not.i317, label %_ZNSt14_Function_baseD2Ev.exit318, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.on = invoke noundef zeroext i1 %i.om(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull align 8 dereferenceable(32) %57, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit318 unwind label %bb.fw ; 0 uses

bb.fw:                                            ; preds = %bb.fv
  %i.oo = landingpad { ptr, i32 }
          catch ptr null
  %i.op = extractvalue { ptr, i32 } %i.oo, 0
  call void @__clang_call_terminate(ptr %i.op) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit318:                ; preds = %bb.fu, %bb.fv
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #24
  %.not.i.i.i = icmp eq ptr %.sroa.0339.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.fx

bb.fx:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit318
  %i.oq = ptrtoint ptr %.sroa.0339.0 to i64
  %i.or = sub i64 %.sroa.14345.0, %i.oq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0339.0, i64 noundef %i.or) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt14_Function_baseD2Ev.exit318, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #24
end_hunk_0
