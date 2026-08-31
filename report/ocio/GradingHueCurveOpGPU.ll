Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingHueCurveOpGPU?download=true
inline.NumInlined: 586
inline.NumDeleted: 225
begin_hunk_0_@_ZN16OpenColorIO_v2_534GetGradingHueCurveGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_21GradingHueCurveOpDataEE:bb.a
  store <2 x i64> %i.ro, ptr %i.dk, align 8, !tbaa !24
  br label %bb.dd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i186.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i185.i
  %i.rp = load i64, ptr %i.dh, align 8, !tbaa !24
  store ptr %i.rd, ptr %i.dg, align 8, !tbaa !38
  %i.rq = getelementptr inbounds nuw i8, ptr %99, i64 8
  %i.rr = load <2 x i64>, ptr %i.rq, align 8, !tbaa !24
  store <2 x i64> %i.rr, ptr %i.dk, align 8, !tbaa !24
  %.not.i187.i = icmp eq ptr %i.rb, null
  br i1 %.not.i187.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i186.i
  store ptr %i.rb, ptr %99, align 8, !tbaa !38
  store i64 %i.rp, ptr %i.re, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit192.i

bb.dd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i186.i, %.thread.i191.i
  store ptr %i.re, ptr %99, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit192.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit192.i: ; preds = %bb.dd, %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i188.i
  %i.rs = phi ptr [ %.pre.i189.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i188.i ], [ %i.rb, %bb.dc ], [ %i.re, %bb.dd ]
  %i.rt = getelementptr inbounds nuw i8, ptr %99, i64 8
  store i64 0, ptr %i.rt, align 8, !tbaa !40
  store i8 0, ptr %i.rs, align 1, !tbaa !24
  %i.ru = load ptr, ptr %99, align 8, !tbaa !38   ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %99, i64 16 ; 2 uses
  %i.rw = icmp eq ptr %i.ru, %i.rv
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit192.i
  %i.rx = load i64, ptr %i.rv, align 8, !tbaa !24
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.ry) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit192.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #19
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_124BuildResourceNameIndexedERSt10shared_ptrINS_16GpuShaderCreatorEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_j(ptr dead_on_unwind noalias writable align 8 %100, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i32 noundef %i.mk)
          to label %.noexc103 unwind label %bb.hv

.noexc103:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i
  %i.rz = load ptr, ptr %i.dn, align 8, !tbaa !38 ; 6 uses
  %i.sa = icmp eq ptr %i.rz, %i.do
  %i.sb = load ptr, ptr %100, align 8, !tbaa !38  ; 5 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %100, i64 16 ; 4 uses
  %i.sd = icmp eq ptr %i.sb, %i.sc                ; 2 uses
  br i1 %i.sa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i201.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i196.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i201.i: ; preds = %.noexc103
  br i1 %i.sd, label %bb.de, label %.thread.i202.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i196.i: ; preds = %.noexc103
  br i1 %i.sd, label %bb.de, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i197.i

bb.de:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i196.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i201.i
  %i.se = getelementptr inbounds nuw i8, ptr %100, i64 8 ; 2 uses
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !40 ; 3 uses
  %i.sg = icmp ult i64 %i.sf, 16
  call void @llvm.assume(i1 %i.sg)
  switch i64 %i.sf, label %bb.dg [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i199.i
    i64 1, label %bb.df
  ]

bb.df:                                            ; preds = %bb.de
  %i.sh = load i8, ptr %i.sb, align 1, !tbaa !24
  store i8 %i.sh, ptr %i.rz, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i199.i

bb.dg:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rz, ptr align 1 %i.sb, i64 %i.sf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i199.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i199.i: ; preds = %bb.dg, %bb.df, %bb.de
  %i.si = load i64, ptr %i.se, align 8, !tbaa !40 ; 2 uses
  store i64 %i.si, ptr %i.ew, align 8, !tbaa !40
  %i.sj = load ptr, ptr %i.dn, align 8, !tbaa !38
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.si
  store i8 0, ptr %i.sk, align 1, !tbaa !24
  %.pre.i200.i = load ptr, ptr %100, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit203.i

.thread.i202.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i201.i
  store ptr %i.sb, ptr %i.dn, align 8, !tbaa !38
  %i.sl = getelementptr inbounds nuw i8, ptr %100, i64 8
  %i.sm = load <2 x i64>, ptr %i.sl, align 8, !tbaa !24
  store <2 x i64> %i.sm, ptr %i.ew, align 8, !tbaa !24
  br label %bb.di

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i197.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i196.i
  %i.sn = load i64, ptr %i.do, align 8, !tbaa !24
  store ptr %i.sb, ptr %i.dn, align 8, !tbaa !38
  %i.so = getelementptr inbounds nuw i8, ptr %100, i64 8
  %i.sp = load <2 x i64>, ptr %i.so, align 8, !tbaa !24
  store <2 x i64> %i.sp, ptr %i.ew, align 8, !tbaa !24
  %.not.i198.i = icmp eq ptr %i.rz, null
  br i1 %.not.i198.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i197.i
  store ptr %i.rz, ptr %100, align 8, !tbaa !38
  store i64 %i.sn, ptr %i.sc, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit203.i

bb.di:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i197.i, %.thread.i202.i
  store ptr %i.sc, ptr %100, align 8, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit203.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit203.i: ; preds = %bb.di, %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i199.i
  %i.sq = phi ptr [ %.pre.i200.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i199.i ], [ %i.rz, %bb.dh ], [ %i.sc, %bb.di ]
  %i.sr = getelementptr inbounds nuw i8, ptr %100, i64 8
  store i64 0, ptr %i.sr, align 8, !tbaa !40
  store i8 0, ptr %i.sq, align 1, !tbaa !24
  %i.ss = load ptr, ptr %100, align 8, !tbaa !38  ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %100, i64 16 ; 2 uses
  %i.su = icmp eq ptr %i.ss, %i.st
  br i1 %i.su, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit203.i
  %i.sv = load i64, ptr %i.st, align 8, !tbaa !24
  %i.sw = add i64 %i.sv, 1
  call void @_ZdlPvm(ptr noundef %i.ss, i64 noundef %i.sw) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit203.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204.i
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #19
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_115SetGCPropertiesERSt10shared_ptrINS_16GpuShaderCreatorEEbRNS0_12GCPropertiesE.exit

_ZN16OpenColorIO_v2_512_GLOBAL__N_115SetGCPropertiesERSt10shared_ptrINS_16GpuShaderCreatorEEbRNS0_12GCPropertiesE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #19
  %i.sx = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 176
  %i.sz = getelementptr inbounds nuw i8, ptr %109, i64 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 184
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !23, !noalias !62 ; 2 uses
  %i.tc = load <2 x ptr>, ptr %i.sy, align 8, !tbaa !65, !noalias !62
  store <2 x ptr> %i.tc, ptr %109, align 16, !tbaa !65, !alias.scope !62
  %.not.i.i.i.i104 = icmp eq ptr %i.tb, null
  br i1 %.not.i.i.i.i104, label %_ZNK16OpenColorIO_v2_521GradingHueCurveOpData26getDynamicPropertyInternalEv.exit106, label %bb.dj

bb.dj:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115SetGCPropertiesERSt10shared_ptrINS_16GpuShaderCreatorEEbRNS0_12GCPropertiesE.exit
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 8 ; 3 uses
  %i.te = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !62
  %.not.i.i.i.i.i105 = icmp eq i8 %i.te, 0
  br i1 %.not.i.i.i.i.i105, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.tf = load i32, ptr %i.td, align 4, !tbaa !25, !noalias !62
  %i.tg = add nsw i32 %i.tf, 1
  store i32 %i.tg, ptr %i.td, align 4, !tbaa !25, !noalias !62
  br label %_ZNK16OpenColorIO_v2_521GradingHueCurveOpData26getDynamicPropertyInternalEv.exit106

bb.dl:                                            ; preds = %bb.dj
  %i.th = atomicrmw volatile add ptr %i.td, i32 1 acq_rel, align 4, !noalias !62 ; 0 uses
  br label %_ZNK16OpenColorIO_v2_521GradingHueCurveOpData26getDynamicPropertyInternalEv.exit106

_ZNK16OpenColorIO_v2_521GradingHueCurveOpData26getDynamicPropertyInternalEv.exit106: ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_115SetGCPropertiesERSt10shared_ptrINS_16GpuShaderCreatorEEbRNS0_12GCPropertiesE.exit, %bb.dk, %bb.dl
  br i1 %i.ao, label %bb.dm, label %bb.hz

bb.dm:                                            ; preds = %_ZNK16OpenColorIO_v2_521GradingHueCurveOpData26getDynamicPropertyInternalEv.exit106
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #19
  %i.ti = load ptr, ptr %109, align 16, !tbaa !20
  invoke void @_ZNK16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImpl18createEditableCopyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %110, ptr noundef nonnull align 8 dereferenceable(152) %i.ti)
          to label %bb.dn unwind label %bb.hw

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #19
  %i.tj = getelementptr inbounds nuw i8, ptr %111, i64 8
  %i.tk = getelementptr inbounds nuw i8, ptr %110, i64 8 ; 2 uses
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !23 ; 2 uses
  %i.tm = load <2 x ptr>, ptr %110, align 16, !tbaa !65
  store <2 x ptr> %i.tm, ptr %111, align 16, !tbaa !65
  %.not.i.i.i107 = icmp eq ptr %i.tl, null
  br i1 %.not.i.i.i107, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2INS0_34DynamicPropertyGradingHueCurveImplEvEERKS_IT_E.exit, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 3 uses
  %i.to = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i108 = icmp eq i8 %i.to, 0
  br i1 %.not.i.i.i.i108, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.tp = load i32, ptr %i.tn, align 4, !tbaa !25
  %i.tq = add nsw i32 %i.tp, 1
  store i32 %i.tq, ptr %i.tn, align 4, !tbaa !25
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2INS0_34DynamicPropertyGradingHueCurveImplEvEERKS_IT_E.exit

bb.dq:                                            ; preds = %bb.do
  %i.tr = atomicrmw volatile add ptr %i.tn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2INS0_34DynamicPropertyGradingHueCurveImplEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2INS0_34DynamicPropertyGradingHueCurveImplEvEERKS_IT_E.exit: ; preds = %bb.dn, %bb.dp, %bb.dq
  %i.ts = load ptr, ptr %0, align 8, !tbaa !14
  invoke void @_ZN16OpenColorIO_v2_516GpuShaderCreator18addDynamicPropertyERSt10shared_ptrINS_15DynamicPropertyEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ts, ptr noundef nonnull align 8 dereferenceable(16) %111)
          to label %bb.dr unwind label %bb.hx

bb.dr:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_515DynamicPropertyEEC2INS0_34DynamicPropertyGradingHueCurveImplEvEERKS_IT_E.exit
  %.val = load ptr, ptr %110, align 16, !tbaa !20 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #19
  %i.tt = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %77, i64 24
  %i.tv = getelementptr inbounds nuw i8, ptr %77, i64 8
  store i64 0, ptr %i.tv, align 8
  store ptr @_ZN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImpl18GetNumOffsetValuesEv, ptr %77, align 8, !tbaa !65
  store ptr @_ZNSt17_Function_handlerIFivEPS0_E9_M_invokeERKSt9_Any_data, ptr %i.tu, align 8, !tbaa !66
  store ptr @_ZNSt17_Function_handlerIFivEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.tt, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #19
  %i.tw = getelementptr inbounds nuw i8, ptr %78, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %78, i8 0, i64 32, i1 false)
  %i.tx = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.dv unwind label %bb.ds     ; 4 uses

bb.ds:                                            ; preds = %bb.dr
  %i.ty = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tz = load ptr, ptr %i.tw, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i109 = icmp eq ptr %i.tz, null
  br i1 %.not.i.i.i109, label %.body.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ua = invoke noundef zeroext i1 %i.tz(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(32) %78, i32 noundef 3)
          to label %.body.i unwind label %bb.du   ; 0 uses

bb.du:                                            ; preds = %bb.dt
  %i.ub = landingpad { ptr, i32 }
          catch ptr null
  %i.uc = extractvalue { ptr, i32 } %i.ub, 0
  call void @__clang_call_terminate(ptr %i.uc) #23
  unreachable

bb.dv:                                            ; preds = %bb.dr
  %i.ud = getelementptr inbounds nuw i8, ptr %78, i64 24
  store i64 ptrtoint (ptr @_ZNK16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImpl20getKnotsOffsetsArrayEv to i64), ptr %i.tx, align 16
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  store i64 0, ptr %.sroa.525.0..sroa_idx.i, align 8
  %.sroa.626.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  store ptr %.val, ptr %.sroa.626.0..sroa_idx.i, align 16
  store ptr %i.tx, ptr %78, align 8, !tbaa !70
  store ptr @_ZNSt17_Function_handlerIFPKivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFS1_vEPS5_EEE9_M_invokeERKSt9_Any_data, ptr %i.ud, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFPKivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFS1_vEPS5_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.tw, align 8, !tbaa !69
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_110AddUniformERSt10shared_ptrINS_16GpuShaderCreatorEERKSt8functionIFivEERKS5_IFPKivEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(256) %108)
          to label %bb.dw unwind label %bb.fx

bb.dw:                                            ; preds = %bb.dv
  %i.ue = load ptr, ptr %i.tw, align 8, !tbaa !69 ; 2 uses
  %.not.i.i111 = icmp eq ptr %i.ue, null
  br i1 %.not.i.i111, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.uf = invoke noundef zeroext i1 %i.ue(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(32) %78, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.dy ; 0 uses

bb.dy:                                            ; preds = %bb.dx
  %i.ug = landingpad { ptr, i32 }
          catch ptr null
  %i.uh = extractvalue { ptr, i32 } %i.ug, 0
  call void @__clang_call_terminate(ptr %i.uh) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.dx, %bb.dw
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #19
  %i.ui = load ptr, ptr %i.tt, align 8, !tbaa !69 ; 2 uses
  %.not.i62.i = icmp eq ptr %i.ui, null
  br i1 %.not.i62.i, label %_ZNSt14_Function_baseD2Ev.exit63.i, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.uj = invoke noundef zeroext i1 %i.ui(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull align 8 dereferenceable(32) %77, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit63.i unwind label %bb.ea ; 0 uses

bb.ea:                                            ; preds = %bb.dz
  %i.uk = landingpad { ptr, i32 }
          catch ptr null
  %i.ul = extractvalue { ptr, i32 } %i.uk, 0
  call void @__clang_call_terminate(ptr %i.ul) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit63.i:               ; preds = %bb.dz, %_ZNSt14_Function_baseD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #19
  %i.um = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %79, i8 0, i64 32, i1 false)
  %i.un = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %_ZNSt8functionIFivEEC2IRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFivEPS5_EEvEEOT_.exit.i unwind label %bb.eb ; 4 uses

bb.eb:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit63.i
  %i.uo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.up = load ptr, ptr %i.um, align 8, !tbaa !69 ; 2 uses
  %.not.i.i64.i = icmp eq ptr %i.up, null
  br i1 %.not.i.i64.i, label %.body114, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.uq = invoke noundef zeroext i1 %i.up(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull align 8 dereferenceable(32) %79, i32 noundef 3)
          to label %.body114 unwind label %bb.ed  ; 0 uses

bb.ed:                                            ; preds = %bb.ec
  %i.ur = landingpad { ptr, i32 }
          catch ptr null
  %i.us = extractvalue { ptr, i32 } %i.ur, 0
  call void @__clang_call_terminate(ptr %i.us) #23
  unreachable

_ZNSt8functionIFivEEC2IRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFivEPS5_EEvEEOT_.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit63.i
  %i.ut = getelementptr inbounds nuw i8, ptr %79, i64 24
  store i64 ptrtoint (ptr @_ZNK16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImpl11getNumKnotsEv to i64), ptr %i.un, align 16
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  store i64 0, ptr %.sroa.530.0..sroa_idx.i, align 8
  %.sroa.631.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  store ptr %.val, ptr %.sroa.631.0..sroa_idx.i, align 16
  store ptr %i.un, ptr %79, align 8, !tbaa !74
  store ptr @_ZNSt17_Function_handlerIFivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFivEPS3_EEE9_M_invokeERKSt9_Any_data, ptr %i.ut, align 8, !tbaa !66
  store ptr @_ZNSt17_Function_handlerIFivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFivEPS3_EEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.um, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #19
  %i.uu = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %80, i8 0, i64 32, i1 false)
  %i.uv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.eh unwind label %bb.ee     ; 4 uses

bb.ee:                                            ; preds = %_ZNSt8functionIFivEEC2IRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFivEPS5_EEvEEOT_.exit.i
  %i.uw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ux = load ptr, ptr %i.uu, align 8, !tbaa !69 ; 2 uses
  %.not.i.i66.i = icmp eq ptr %i.ux, null
  br i1 %.not.i.i66.i, label %.body68.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.uy = invoke noundef zeroext i1 %i.ux(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull align 8 dereferenceable(32) %80, i32 noundef 3)
          to label %.body68.i unwind label %bb.eg ; 0 uses

bb.eg:                                            ; preds = %bb.ef
  %i.uz = landingpad { ptr, i32 }
          catch ptr null
  %i.va = extractvalue { ptr, i32 } %i.uz, 0
  call void @__clang_call_terminate(ptr %i.va) #23
  unreachable

bb.eh:                                            ; preds = %_ZNSt8functionIFivEEC2IRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFivEPS5_EEvEEOT_.exit.i
  %i.vb = getelementptr inbounds nuw i8, ptr %80, i64 24
  store i64 ptrtoint (ptr @_ZNK16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImpl13getKnotsArrayEv to i64), ptr %i.uv, align 16
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uv, i64 8
  store i64 0, ptr %.sroa.520.0..sroa_idx.i, align 8
  %.sroa.621.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uv, i64 16
  store ptr %.val, ptr %.sroa.621.0..sroa_idx.i, align 16
  store ptr %i.uv, ptr %80, align 8, !tbaa !76
  store ptr @_ZNSt17_Function_handlerIFPKfvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFS1_vEPS5_EEE9_M_invokeERKSt9_Any_data, ptr %i.vb, align 8, !tbaa !78
  store ptr @_ZNSt17_Function_handlerIFPKfvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFS1_vEPS5_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.uu, align 8, !tbaa !69
  %i.vc = invoke noundef i32 @_ZN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImpl11GetMaxKnotsEv()
          to label %bb.ei unwind label %bb.gc

bb.ei:                                            ; preds = %bb.eh
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_110AddUniformERSt10shared_ptrINS_16GpuShaderCreatorEERKSt8functionIFivEERKS5_IFPKfvEEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull align 8 dereferenceable(32) %80, i32 noundef %i.vc, ptr noundef nonnull align 8 dereferenceable(32) %i.cj)
          to label %bb.ej unwind label %bb.gc

bb.ej:                                            ; preds = %bb.ei
  %i.vd = load ptr, ptr %i.uu, align 8, !tbaa !69 ; 2 uses
  %.not.i70.i = icmp eq ptr %i.vd, null
  br i1 %.not.i70.i, label %_ZNSt14_Function_baseD2Ev.exit71.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ve = invoke noundef zeroext i1 %i.vd(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull align 8 dereferenceable(32) %80, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit71.i unwind label %bb.el ; 0 uses

bb.el:                                            ; preds = %bb.ek
  %i.vf = landingpad { ptr, i32 }
          catch ptr null
  %i.vg = extractvalue { ptr, i32 } %i.vf, 0
  call void @__clang_call_terminate(ptr %i.vg) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit71.i:               ; preds = %bb.ek, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #19
  %i.vh = load ptr, ptr %i.um, align 8, !tbaa !69 ; 2 uses
  %.not.i72.i = icmp eq ptr %i.vh, null
  br i1 %.not.i72.i, label %_ZNSt14_Function_baseD2Ev.exit73.i, label %bb.em

bb.em:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit71.i
  %i.vi = invoke noundef zeroext i1 %i.vh(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull align 8 dereferenceable(32) %79, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit73.i unwind label %bb.en ; 0 uses

bb.en:                                            ; preds = %bb.em
  %i.vj = landingpad { ptr, i32 }
          catch ptr null
  %i.vk = extractvalue { ptr, i32 } %i.vj, 0
  call void @__clang_call_terminate(ptr %i.vk) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit73.i:               ; preds = %bb.em, %_ZNSt14_Function_baseD2Ev.exit71.i
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #19
  %i.vl = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 3 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %81, i64 24
  %i.vn = getelementptr inbounds nuw i8, ptr %81, i64 8
  store i64 0, ptr %i.vn, align 8
  store ptr @_ZN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImpl18GetNumOffsetValuesEv, ptr %81, align 8, !tbaa !65
  store ptr @_ZNSt17_Function_handlerIFivEPS0_E9_M_invokeERKSt9_Any_data, ptr %i.vm, align 8, !tbaa !66
  store ptr @_ZNSt17_Function_handlerIFivEPS0_E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation, ptr %i.vl, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #19
  %i.vo = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %82, i8 0, i64 32, i1 false)
  %i.vp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.er unwind label %bb.eo     ; 4 uses

bb.eo:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit73.i
  %i.vq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vr = load ptr, ptr %i.vo, align 8, !tbaa !69 ; 2 uses
  %.not.i.i74.i = icmp eq ptr %i.vr, null
  br i1 %.not.i.i74.i, label %.body76.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.vs = invoke noundef zeroext i1 %i.vr(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(32) %82, i32 noundef 3)
          to label %.body76.i unwind label %bb.eq ; 0 uses

bb.eq:                                            ; preds = %bb.ep
  %i.vt = landingpad { ptr, i32 }
          catch ptr null
  %i.vu = extractvalue { ptr, i32 } %i.vt, 0
  call void @__clang_call_terminate(ptr %i.vu) #23
  unreachable

bb.er:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit73.i
  %i.vv = getelementptr inbounds nuw i8, ptr %82, i64 24
  store i64 ptrtoint (ptr @_ZNK16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImpl20getCoefsOffsetsArrayEv to i64), ptr %i.vp, align 16
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  store i64 0, ptr %.sroa.510.0..sroa_idx.i, align 8
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  store ptr %.val, ptr %.sroa.611.0..sroa_idx.i, align 16
  store ptr %i.vp, ptr %82, align 8, !tbaa !70
  store ptr @_ZNSt17_Function_handlerIFPKivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFS1_vEPS5_EEE9_M_invokeERKSt9_Any_data, ptr %i.vv, align 8, !tbaa !72
  store ptr @_ZNSt17_Function_handlerIFPKivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFS1_vEPS5_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.vo, align 8, !tbaa !69
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_110AddUniformERSt10shared_ptrINS_16GpuShaderCreatorEERKSt8functionIFivEERKS5_IFPKivEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(32) %i.cn)
          to label %bb.es unwind label %bb.gh

bb.es:                                            ; preds = %bb.er
  %i.vw = load ptr, ptr %i.vo, align 8, !tbaa !69 ; 2 uses
  %.not.i79.i = icmp eq ptr %i.vw, null
  br i1 %.not.i79.i, label %_ZNSt14_Function_baseD2Ev.exit80.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.vx = invoke noundef zeroext i1 %i.vw(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull align 8 dereferenceable(32) %82, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit80.i unwind label %bb.eu ; 0 uses

bb.eu:                                            ; preds = %bb.et
  %i.vy = landingpad { ptr, i32 }
          catch ptr null
  %i.vz = extractvalue { ptr, i32 } %i.vy, 0
  call void @__clang_call_terminate(ptr %i.vz) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit80.i:               ; preds = %bb.et, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #19
  %i.wa = load ptr, ptr %i.vl, align 8, !tbaa !69 ; 2 uses
  %.not.i81.i = icmp eq ptr %i.wa, null
  br i1 %.not.i81.i, label %_ZNSt14_Function_baseD2Ev.exit82.i, label %bb.ev

bb.ev:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit80.i
  %i.wb = invoke noundef zeroext i1 %i.wa(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull align 8 dereferenceable(32) %81, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit82.i unwind label %bb.ew ; 0 uses

bb.ew:                                            ; preds = %bb.ev
  %i.wc = landingpad { ptr, i32 }
          catch ptr null
  %i.wd = extractvalue { ptr, i32 } %i.wc, 0
  call void @__clang_call_terminate(ptr %i.wd) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit82.i:               ; preds = %bb.ev, %_ZNSt14_Function_baseD2Ev.exit80.i
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #19
  %i.we = getelementptr inbounds nuw i8, ptr %83, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %83, i8 0, i64 32, i1 false)
  %i.wf = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %_ZNSt8functionIFivEEC2IRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFivEPS5_EEvEEOT_.exit85.i unwind label %bb.ex ; 4 uses

bb.ex:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit82.i
  %i.wg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wh = load ptr, ptr %i.we, align 8, !tbaa !69 ; 2 uses
  %.not.i.i83.i = icmp eq ptr %i.wh, null
  br i1 %.not.i.i83.i, label %.body114, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.wi = invoke noundef zeroext i1 %i.wh(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 8 dereferenceable(32) %83, i32 noundef 3)
          to label %.body114 unwind label %bb.ez  ; 0 uses

bb.ez:                                            ; preds = %bb.ey
  %i.wj = landingpad { ptr, i32 }
          catch ptr null
  %i.wk = extractvalue { ptr, i32 } %i.wj, 0
  call void @__clang_call_terminate(ptr %i.wk) #23
  unreachable

_ZNSt8functionIFivEEC2IRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFivEPS5_EEvEEOT_.exit85.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit82.i
  %i.wl = getelementptr inbounds nuw i8, ptr %83, i64 24
  store i64 ptrtoint (ptr @_ZNK16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImpl11getNumCoefsEv to i64), ptr %i.wf, align 16
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  store i64 0, ptr %.sroa.515.0..sroa_idx.i, align 8
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  store ptr %.val, ptr %.sroa.616.0..sroa_idx.i, align 16
  store ptr %i.wf, ptr %83, align 8, !tbaa !74
  store ptr @_ZNSt17_Function_handlerIFivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFivEPS3_EEE9_M_invokeERKSt9_Any_data, ptr %i.wl, align 8, !tbaa !66
  store ptr @_ZNSt17_Function_handlerIFivESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFivEPS3_EEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.we, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #19
  %i.wm = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %84, i8 0, i64 32, i1 false)
  %i.wn = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.fd unwind label %bb.fa     ; 4 uses

bb.fa:                                            ; preds = %_ZNSt8functionIFivEEC2IRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFivEPS5_EEvEEOT_.exit85.i
  %i.wo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wp = load ptr, ptr %i.wm, align 8, !tbaa !69 ; 2 uses
  %.not.i.i86.i = icmp eq ptr %i.wp, null
  br i1 %.not.i.i86.i, label %.body88.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.wq = invoke noundef zeroext i1 %i.wp(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull align 8 dereferenceable(32) %84, i32 noundef 3)
          to label %.body88.i unwind label %bb.fc ; 0 uses

bb.fc:                                            ; preds = %bb.fb
  %i.wr = landingpad { ptr, i32 }
          catch ptr null
  %i.ws = extractvalue { ptr, i32 } %i.wr, 0
  call void @__clang_call_terminate(ptr %i.ws) #23
  unreachable

bb.fd:                                            ; preds = %_ZNSt8functionIFivEEC2IRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFivEPS5_EEvEEOT_.exit85.i
  %i.wt = getelementptr inbounds nuw i8, ptr %84, i64 24
  store i64 ptrtoint (ptr @_ZNK16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImpl13getCoefsArrayEv to i64), ptr %i.wn, align 16
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  store i64 0, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  store ptr %.val, ptr %.sroa.66.0..sroa_idx.i, align 16
  store ptr %i.wn, ptr %84, align 8, !tbaa !76
  store ptr @_ZNSt17_Function_handlerIFPKfvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFS1_vEPS5_EEE9_M_invokeERKSt9_Any_data, ptr %i.wt, align 8, !tbaa !78
  store ptr @_ZNSt17_Function_handlerIFPKfvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFS1_vEPS5_EEE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.wm, align 8, !tbaa !69
  %i.wu = invoke noundef i32 @_ZN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImpl11GetMaxCoefsEv()
          to label %bb.fe unwind label %bb.gm

bb.fe:                                            ; preds = %bb.fd
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_110AddUniformERSt10shared_ptrINS_16GpuShaderCreatorEERKSt8functionIFivEERKS5_IFPKfvEEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 8 dereferenceable(32) %84, i32 noundef %i.wu, ptr noundef nonnull align 8 dereferenceable(32) %i.cr)
          to label %bb.ff unwind label %bb.gm

bb.ff:                                            ; preds = %bb.fe
  %i.wv = load ptr, ptr %i.wm, align 8, !tbaa !69 ; 2 uses
  %.not.i91.i = icmp eq ptr %i.wv, null
  br i1 %.not.i91.i, label %_ZNSt14_Function_baseD2Ev.exit92.i, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.ww = invoke noundef zeroext i1 %i.wv(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull align 8 dereferenceable(32) %84, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit92.i unwind label %bb.fh ; 0 uses

bb.fh:                                            ; preds = %bb.fg
  %i.wx = landingpad { ptr, i32 }
          catch ptr null
  %i.wy = extractvalue { ptr, i32 } %i.wx, 0
  call void @__clang_call_terminate(ptr %i.wy) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit92.i:               ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #19
  %i.wz = load ptr, ptr %i.we, align 8, !tbaa !69 ; 2 uses
  %.not.i93.i = icmp eq ptr %i.wz, null
  br i1 %.not.i93.i, label %_ZNSt14_Function_baseD2Ev.exit94.i, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit92.i
  %i.xa = invoke noundef zeroext i1 %i.wz(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull align 8 dereferenceable(32) %83, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit94.i unwind label %bb.fj ; 0 uses

bb.fj:                                            ; preds = %bb.fi
  %i.xb = landingpad { ptr, i32 }
          catch ptr null
  %i.xc = extractvalue { ptr, i32 } %i.xb, 0
  call void @__clang_call_terminate(ptr %i.xc) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit94.i:               ; preds = %bb.fi, %_ZNSt14_Function_baseD2Ev.exit92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %85) #19
  %i.xd = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %85, i8 0, i64 32, i1 false)
  %i.xe = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %_ZNSt8functionIFbvEEC2IRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFbvEPS5_EEvEEOT_.exit.i unwind label %bb.fk ; 4 uses

bb.fk:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit94.i
  %i.xf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xg = load ptr, ptr %i.xd, align 8, !tbaa !69 ; 2 uses
  %.not.i.i95.i = icmp eq ptr %i.xg, null
  br i1 %.not.i.i95.i, label %.body114, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.xh = invoke noundef zeroext i1 %i.xg(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef nonnull align 8 dereferenceable(32) %85, i32 noundef 3)
          to label %.body114 unwind label %bb.fm  ; 0 uses

bb.fm:                                            ; preds = %bb.fl
  %i.xi = landingpad { ptr, i32 }
          catch ptr null
  %i.xj = extractvalue { ptr, i32 } %i.xi, 0
  call void @__clang_call_terminate(ptr %i.xj) #23
  unreachable

_ZNSt8functionIFbvEEC2IRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFbvEPS5_EEvEEOT_.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit94.i
  %i.xk = getelementptr inbounds nuw i8, ptr %85, i64 24
  store i64 ptrtoint (ptr @_ZNK16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImpl14getLocalBypassEv to i64), ptr %i.xe, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xe, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  store ptr %.val, ptr %.sroa.6.0..sroa_idx.i, align 16
  store ptr %i.xe, ptr %85, align 8, !tbaa !80
  store ptr @_ZNSt17_Function_handlerIFbvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFbvEPS3_EEE9_M_invokeERKSt9_Any_data, ptr %i.xk, align 8, !tbaa !82
  store ptr @_ZNSt17_Function_handlerIFbvESt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFbvEPS3_EEE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.xd, align 8, !tbaa !69
  %i.xl = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  %i.xm = load ptr, ptr %i.cv, align 8, !tbaa !38
  %i.xn = load ptr, ptr %i.xl, align 8, !tbaa !29
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 72
  %i.xp = load ptr, ptr %i.xo, align 8
  %i.xq = invoke noundef zeroext i1 %i.xp(ptr noundef nonnull align 8 dereferenceable(16) %i.xl, ptr noundef %i.xm, ptr noundef nonnull align 8 dereferenceable(32) %85)
          to label %.noexc.i113 unwind label %bb.gr, !inline_history !84

.noexc.i113:                                      ; preds = %_ZNSt8functionIFbvEEC2IRSt5_BindIFMN16OpenColorIO_v2_534DynamicPropertyGradingHueCurveImplEKFbvEPS5_EEvEEOT_.exit.i
  br i1 %i.xq, label %bb.fn, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110AddUniformERSt10shared_ptrINS_16GpuShaderCreatorEERKSt8functionIFbvEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

bb.fn:                                            ; preds = %.noexc.i113
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #19
  %i.xr = load ptr, ptr %0, align 8, !tbaa !14
  %i.xs = call noundef i32 @_ZNK16OpenColorIO_v2_516GpuShaderCreator11getLanguageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xr) #19
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderTextC1ENS_11GpuLanguageE(ptr noundef nonnull align 8 dereferenceable(764) %75, i32 noundef %i.xs)
          to label %.noexc97.i unwind label %bb.gr

.noexc97.i:                                       ; preds = %bb.fn
  invoke void @_ZN16OpenColorIO_v2_513GpuShaderText18declareUniformBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(764) %75, ptr noundef nonnull align 8 dereferenceable(32) %i.cv)
          to label %bb.fo unwind label %bb.fr

bb.fo:                                            ; preds = %.noexc97.i
  %i.xt = load ptr, ptr %0, align 8, !tbaa !14    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #19
  invoke void @_ZNK16OpenColorIO_v2_513GpuShaderText6stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr noundef nonnull align 8 dereferenceable(764) %75)
          to label %bb.fp unwind label %bb.fs

bb.fp:                                            ; preds = %bb.fo
  %i.xu = load ptr, ptr %76, align 8, !tbaa !38
  %i.xv = load ptr, ptr %i.xt, align 8, !tbaa !29
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 120
  %i.xx = load ptr, ptr %i.xw, align 8
  invoke void %i.xx(ptr noundef nonnull align 8 dereferenceable(16) %i.xt, ptr noundef %i.xu)
          to label %bb.fq unwind label %bb.ft

bb.fq:                                            ; preds = %bb.fp
  %i.xy = load ptr, ptr %76, align 8, !tbaa !38   ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  %i.ya = icmp eq ptr %i.xy, %i.xz
  br i1 %i.ya, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.fq
  %i.yb = load i64, ptr %i.xz, align 8, !tbaa !24
  %i.yc = add i64 %i.yb, 1
  call void @_ZdlPvm(ptr noundef %i.xy, i64 noundef %i.yc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.fq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  %i.yd = getelementptr inbounds nuw i8, ptr %75, i64 384 ; 2 uses
  %i.ye = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.ye, ptr %i.yd, align 8, !tbaa !29
  %i.yf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.yg = getelementptr i8, ptr %i.ye, i64 -24    ; 2 uses
  %i.yh = load i64, ptr %i.yg, align 8
  %i.yi = getelementptr inbounds i8, ptr %i.yd, i64 %i.yh
  store ptr %i.yf, ptr %i.yi, align 8, !tbaa !29
  %i.yj = getelementptr inbounds nuw i8, ptr %75, i64 392 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.yj, align 8, !tbaa !29
  %i.yk = getelementptr inbounds nuw i8, ptr %75, i64 464
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !38 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %75, i64 480 ; 2 uses
  %i.yn = icmp eq ptr %i.yl, %i.ym
  br i1 %i.yn, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.yo = load i64, ptr %i.ym, align 8, !tbaa !24
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.yl, i64 noundef %i.yp) #21
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i.i

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.yj, align 8, !tbaa !29
  %i.yq = getelementptr inbounds nuw i8, ptr %75, i64 448
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.yq) #19
  %i.yr = getelementptr inbounds nuw i8, ptr %75, i64 496
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.yr) #19
  %i.ys = getelementptr inbounds nuw i8, ptr %75, i64 8 ; 2 uses
  store ptr %i.ye, ptr %i.ys, align 8, !tbaa !29
  %i.yt = load i64, ptr %i.yg, align 8
  %i.yu = getelementptr inbounds i8, ptr %i.ys, i64 %i.yt
  store ptr %i.yf, ptr %i.yu, align 8, !tbaa !29
  %i.yv = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.yv, align 8, !tbaa !29
  %i.yw = getelementptr inbounds nuw i8, ptr %75, i64 88
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !38 ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %75, i64 104 ; 2 uses
  %i.yz = icmp eq ptr %i.yx, %i.yy
  br i1 %i.yz, label %_ZN16OpenColorIO_v2_513GpuShaderTextD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i.i
  %i.za = load i64, ptr %i.yy, align 8, !tbaa !24
  %i.zb = add i64 %i.za, 1
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.zb) #21
  br label %_ZN16OpenColorIO_v2_513GpuShaderTextD2Ev.exit.i.i

_ZN16OpenColorIO_v2_513GpuShaderTextD2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.yv, align 8, !tbaa !29
  %i.zc = getelementptr inbounds nuw i8, ptr %75, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.zc) #19
  %i.zd = getelementptr inbounds nuw i8, ptr %75, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.zd) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #19
  br label %_ZN16OpenColorIO_v2_512_GLOBAL__N_110AddUniformERSt10shared_ptrINS_16GpuShaderCreatorEERKSt8functionIFbvEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

bb.fr:                                            ; preds = %.noexc97.i
  %i.ze = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.fs:                                            ; preds = %bb.fo
  %i.zf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

bb.ft:                                            ; preds = %bb.fp
  %i.zg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zh = load ptr, ptr %76, align 8, !tbaa !38   ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  %i.zj = icmp eq ptr %i.zh, %i.zi
  br i1 %i.zj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.ft
  %i.zk = load i64, ptr %i.zi, align 8, !tbaa !24
  %i.zl = add i64 %i.zk, 1
  call void @_ZdlPvm(ptr noundef %i.zh, i64 noundef %i.zl) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i, %bb.fs
  %.pn.i.i = phi { ptr, i32 } [ %i.zf, %bb.fs ], [ %i.zg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i ], [ %i.zg, %bb.ft ]
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  br label %bb.fu

bb.fu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, %bb.fr
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i ], [ %i.ze, %bb.fr ]
  call void @_ZN16OpenColorIO_v2_513GpuShaderTextD2Ev(ptr noundef nonnull align 8 dead_on_return(764) dereferenceable(764) %75) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #19
  br label %.body98.i

_ZN16OpenColorIO_v2_512_GLOBAL__N_110AddUniformERSt10shared_ptrINS_16GpuShaderCreatorEERKSt8functionIFbvEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZN16OpenColorIO_v2_513GpuShaderTextD2Ev.exit.i.i, %.noexc.i113
  %i.zm = load ptr, ptr %i.xd, align 8, !tbaa !69 ; 2 uses
  %.not.i100.i = icmp eq ptr %i.zm, null
  br i1 %.not.i100.i, label %bb.gu, label %bb.fv

bb.fv:                                            ; preds = %_ZN16OpenColorIO_v2_512_GLOBAL__N_110AddUniformERSt10shared_ptrINS_16GpuShaderCreatorEERKSt8functionIFbvEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.zn = invoke noundef zeroext i1 %i.zm(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef nonnull align 8 dereferenceable(32) %85, i32 noundef 3)
          to label %bb.gu unwind label %bb.fw     ; 0 uses

bb.fw:                                            ; preds = %bb.fv
  %i.zo = landingpad { ptr, i32 }
          catch ptr null
  %i.zp = extractvalue { ptr, i32 } %i.zo, 0
  call void @__clang_call_terminate(ptr %i.zp) #23
  unreachable

bb.fx:                                            ; preds = %bb.dv
  %i.zq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zr = load ptr, ptr %i.tw, align 8, !tbaa !69 ; 2 uses
  %.not.i102.i = icmp eq ptr %i.zr, null
  br i1 %.not.i102.i, label %.body.i, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.zs = invoke noundef zeroext i1 %i.zr(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull align 8 dereferenceable(32) %78, i32 noundef 3)
          to label %.body.i unwind label %bb.fz   ; 0 uses

bb.fz:                                            ; preds = %bb.fy
  %i.zt = landingpad { ptr, i32 }
          catch ptr null
  %i.zu = extractvalue { ptr, i32 } %i.zt, 0
  call void @__clang_call_terminate(ptr %i.zu) #23
  unreachable

.body.i:                                          ; preds = %bb.fy, %bb.fx, %bb.dt, %bb.ds
  %.pn.i110 = phi { ptr, i32 } [ %i.ty, %bb.ds ], [ %i.zq, %bb.fy ], [ %i.ty, %bb.dt ], [ %i.zq, %bb.fx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #19
  %i.zv = load ptr, ptr %i.tt, align 8, !tbaa !69 ; 2 uses
  %.not.i104.i = icmp eq ptr %i.zv, null
  br i1 %.not.i104.i, label %_ZNSt14_Function_baseD2Ev.exit105.i, label %bb.ga

bb.ga:                                            ; preds = %.body.i
  %i.zw = invoke noundef zeroext i1 %i.zv(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull align 8 dereferenceable(32) %77, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit105.i unwind label %bb.gb ; 0 uses

bb.gb:                                            ; preds = %bb.ga
  %i.zx = landingpad { ptr, i32 }
          catch ptr null
  %i.zy = extractvalue { ptr, i32 } %i.zx, 0
  call void @__clang_call_terminate(ptr %i.zy) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit105.i:              ; preds = %bb.ga, %.body.i
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #19
  br label %.body114

end_hunk_0
