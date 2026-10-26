Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gcpustereo?download=true
inline.NumInlined: 883
inline.NumDeleted: 521
begin_hunk_0_@_ZN2cv6detail14OCVSetupHelperI10GCPUStereoSt5tupleIJNS_4GMatES4_NS_4gapi18StereoOutputFormatEEEE10setup_implIJLi0ELi1ELi2EEEEDTcmclL_ZNS2_5setupERKNS_8GMatDescESC_S6_RSt10shared_ptrI11StereoSetupERKSt6vectorINS_11GCompileArgESaISI_EEEspclsr6detailE11get_in_metaI_SUBSTPACK_Efp_fp0_T_EclL_ZSt7declvalISG_EDTcl9__declvalIT_ELi0EEEvEEfp2_Ecvv_EERKSH_INS_4util7variantIJNSS_9monostateESA_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISZ_EERKSH_INS_4GArgESaIS14_EERS14_SM_NS0_3SeqIJXspT_EEEE:bb.a

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZN2cv8GMatDescD2Ev.exit

_ZN2cv8GMatDescD2Ev.exit:                         ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !100  ; 3 uses
  %.not.i.i.i.i17 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i17, label %_ZN2cv8GMatDescD2Ev.exit18, label %bb.j

bb.j:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !101
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #24
  br label %_ZN2cv8GMatDescD2Ev.exit18

_ZN2cv8GMatDescD2Ev.exit18:                       ; preds = %_ZN2cv8GMatDescD2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !51, !noalias !170 ; 2 uses
  %i.ae = load <2 x ptr>, ptr %6, align 16, !tbaa !63, !noalias !170
  store <2 x ptr> %i.ae, ptr %4, align 16, !tbaa !63, !alias.scope !170
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i, label %_ZN2cv6detail9WrapValueISt10shared_ptrI11StereoSetupEvE4wrapERKS4_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !170
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !55, !noalias !170
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !55, !noalias !170
  br label %_ZN2cv6detail9WrapValueISt10shared_ptrI11StereoSetupEvE4wrapERKS4_.exit.i

bb.m:                                             ; preds = %bb.k
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4, !noalias !170 ; 0 uses
  br label %_ZN2cv6detail9WrapValueISt10shared_ptrI11StereoSetupEvE4wrapERKS4_.exit.i

_ZN2cv6detail9WrapValueISt10shared_ptrI11StereoSetupEvE4wrapERKS4_.exit.i: ; preds = %bb.m, %bb.l, %_ZN2cv8GMatDescD2Ev.exit18
  %i.ak = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26
          to label %bb.o unwind label %bb.n       ; 3 uses

bb.n:                                             ; preds = %_ZN2cv6detail9WrapValueISt10shared_ptrI11StereoSetupEvE4wrapERKS4_.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body19

bb.o:                                             ; preds = %_ZN2cv6detail9WrapValueISt10shared_ptrI11StereoSetupEvE4wrapERKS4_.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implISt10shared_ptrI11StereoSetupEEE, i64 16), ptr %i.ak, align 8, !tbaa !48
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load <2 x ptr>, ptr %4, align 16, !tbaa !63
  store <2 x ptr> %i.an, ptr %i.am, align 8, !tbaa !63
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store i64 0, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46 ; 3 uses
  store ptr %i.ak, ptr %i.ao, align 8, !tbaa !46
  %.not.i.i.i.i.i.i21 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i21, label %_ZN2cv4GArgD2Ev.exit, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #22, !inline_history !169
  br label %_ZN2cv4GArgD2Ev.exit

_ZN2cv4GArgD2Ev.exit:                             ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i.i.i.i, %bb.o
  %i.at = load ptr, ptr %i.ac, align 8, !tbaa !51 ; 8 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN2cv4GArgD2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 4 uses
  %i.av = load atomic i64, ptr %i.au acquire, align 8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 4294967297
  %i.ax = trunc i64 %i.av to i32                  ; 2 uses
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.au, align 8, !tbaa !53
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 0, ptr %i.ay, align 4, !tbaa !54
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #22, !inline_history !6
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #22, !inline_history !6
  br label %_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i23 = icmp eq i8 %i.bf, 0
  br i1 %.not.i.i.i23, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = add nsw i32 %i.ax, -1
  store i32 %i.bg, ptr %i.au, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bh = atomicrmw volatile add ptr %i.au, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i = phi i32 [ %i.ax, %bb.s ], [ %i.bh, %bb.t ]
  %i.bi = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bi, label %bb.u, label %_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.at) #22
  br label %_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2cv4GArgD2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void

bb.v:                                             ; preds = %bb.a
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit27

bb.w:                                             ; preds = %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv8GMatDescD2Ev.exit25

bb.x:                                             ; preds = %bb.d, %bb.g
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %i.bl, %bb.x ], [ %i.l, %bb.f ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i24, label %_ZN2cv8GMatDescD2Ev.exit25, label %bb.y

bb.y:                                             ; preds = %.body
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !101
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #24
  br label %_ZN2cv8GMatDescD2Ev.exit25

_ZN2cv8GMatDescD2Ev.exit25:                       ; preds = %bb.y, %.body, %bb.w
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.w ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !100 ; 3 uses
  %.not.i.i.i.i26 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i26, label %_ZN2cv8GMatDescD2Ev.exit27, label %bb.z

bb.z:                                             ; preds = %_ZN2cv8GMatDescD2Ev.exit25
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !101
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #24
  br label %_ZN2cv8GMatDescD2Ev.exit27

_ZN2cv8GMatDescD2Ev.exit27:                       ; preds = %bb.z, %_ZN2cv8GMatDescD2Ev.exit25, %bb.v
  %.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.v ], [ %.pn, %_ZN2cv8GMatDescD2Ev.exit25 ], [ %.pn, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body19

.body19:                                          ; preds = %bb.n, %_ZN2cv8GMatDescD2Ev.exit27
  %.pn14 = phi { ptr, i32 } [ %.pn.pn, %_ZN2cv8GMatDescD2Ev.exit27 ], [ %i.al, %bb.n ]
  call void @_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn14
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10GCPUStereo5setupERKN2cv8GMatDescES3_NS0_4gapi18StereoOutputFormatERSt10shared_ptrI11StereoSetupERKSt6vectorINS0_11GCompileArgESaISB_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0 = alloca ptr, align 8                  ; 4 uses
  %.sroa.4 = alloca ptr, align 8                  ; 4 uses
  %5 = alloca %"class.cv::util::bad_any_cast", align 8 ; 5 uses
  %6 = alloca %"class.cv::util::optional", align 8 ; 8 uses
  %7 = alloca %struct.StereoSetup, align 16       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.a = load ptr, ptr %4, align 8, !tbaa !179, !noalias !177 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !179, !noalias !177 ; 2 uses
  %.not12.i = icmp eq ptr %i.a, %i.c
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge.i
  %.sroa.06.013.i = phi ptr [ %i.v, %.critedge.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62, !noalias !177
  %i.f = icmp eq i64 %i.e, 21
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, label %.critedge.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %.lr.ph.i
  %i.g = load ptr, ptr %.sroa.06.013.i, align 8, !tbaa !42, !noalias !177 ; 2 uses
  %i.h = load i128, ptr %i.g, align 1
  %i.i = xor i128 %i.h, 134846007165633239776897454893733212783
  %i.j = getelementptr i8, ptr %i.g, i64 5
  %i.k = load i128, ptr %i.j, align 1
  %i.l = xor i128 %i.k, 154737875564384141202122280009483576688
  %i.m = or i128 %i.i, %i.l
  %i.n = icmp ne i128 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i, label %.critedge.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46, !noalias !177 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN2cv4util8any_castINS_4gapi7calib3d3cpu15StereoInitParamEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %_ZN2cv4util8any_castINS_4gapi7calib3d3cpu15StereoInitParamEEEPKT_PKNS0_3anyE.exit.i.i.i

_ZN2cv4util8any_castINS_4gapi7calib3d3cpu15StereoInitParamEEEPKT_PKNS0_3anyE.exit.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  %i.t = tail call ptr @__dynamic_cast(ptr nonnull %i.r, ptr nonnull @_ZTIN2cv4util3any6holderE, ptr nonnull @_ZTIN2cv4util3any11holder_implINS_4gapi7calib3d3cpu15StereoInitParamEEE, i64 0) #22, !noalias !177 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util8any_castINS_4gapi7calib3d3cpu15StereoInitParamEEEPKT_PKNS0_3anyE.exit.thread.i.i.i, label %bb.d

_ZN2cv4util8any_castINS_4gapi7calib3d3cpu15StereoInitParamEEEPKT_PKNS0_3anyE.exit.thread.i.i.i: ; preds = %_ZN2cv4util8any_castINS_4gapi7calib3d3cpu15StereoInitParamEEEPKT_PKNS0_3anyE.exit.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !177
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util12bad_any_castE, i64 16), ptr %5, align 8, !tbaa !48, !noalias !177
  invoke void @_ZN2cv4util11throw_errorINS0_12bad_any_castEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %5) #25
          to label %bb.b unwind label %bb.c, !noalias !177

bb.b:                                             ; preds = %_ZN2cv4util8any_castINS_4gapi7calib3d3cpu15StereoInitParamEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  unreachable

common.resume:                                    ; preds = %bb.v, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.cb, %bb.v ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %_ZN2cv4util8any_castINS_4gapi7calib3d3cpu15StereoInitParamEEEPKT_PKNS0_3anyE.exit.thread.i.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8bad_castD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22, !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !177
  br label %common.resume

.critedge.i:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i, %.lr.ph.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.06.013.i, i64 72 ; 2 uses
  %.not.i = icmp eq ptr %i.v, %i.c
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %_ZN2cv4util8any_castINS_4gapi7calib3d3cpu15StereoInitParamEEEPKT_PKNS0_3anyE.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %6, align 8, !tbaa !181, !alias.scope !177
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !tbaa.struct !183
  br label %bb.e

._crit_edge.i:                                    ; preds = %.critedge.i, %bb.a
  store i64 0, ptr %6, align 8, !tbaa !181, !alias.scope !177
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %bb.d
  %i.y = phi i1 [ false, %._crit_edge.i ], [ true, %bb.d ] ; 3 uses
  %.sroa.phi = phi ptr [ %.sroa.0, %._crit_edge.i ], [ %.sroa.4, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.010.0.copyload.sroa.speculate.load.true = load i32, ptr %i.z, align 8
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.5.0.copyload.sroa.speculate.load.true = load i32, ptr %.sroa.gep, align 4
  %.sroa.gep15 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = load <2 x double>, ptr %.sroa.gep15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  store ptr @_ZN2cv4util7variantIJNS0_8optionalINS_4gapi7calib3d3cpu15StereoInitParamEE7nothingES6_EE6dtor_hIS8_E4helpEPNSt15aligned_storageILm24ELm8EE4typeE, ptr %.sroa.0, align 8
  store ptr @_ZN2cv4util7variantIJNS0_8optionalINS_4gapi7calib3d3cpu15StereoInitParamEE7nothingES6_EE6dtor_hIS6_E4helpEPNSt15aligned_storageILm24ELm8EE4typeE, ptr %.sroa.4, align 8
  %8 = load ptr, ptr %.sroa.phi, align 8, !tbaa !63
  invoke void %8(ptr noundef nonnull %i.z)
          to label %_ZN2cv4util8optionalINS_4gapi7calib3d3cpu15StereoInitParamEED2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #23
  unreachable

_ZN2cv4util8optionalINS_4gapi7calib3d3cpu15StereoInitParamEED2Ev.exit: ; preds = %bb.e
  %i.ad = insertelement <2 x i1> poison, i1 %i.y, i64 0
  %i.ae = shufflevector <2 x i1> %i.ad, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.af = select <2 x i1> %i.ae, <2 x double> %i.aa, <2 x double> <double 6.350000e+01, double 3.600000e+00>
  %.sroa.5.0.copyload.sroa.speculated = select i1 %i.y, i32 %.sroa.5.0.copyload.sroa.speculate.load.true, i32 21
  %.sroa.010.0.copyload.sroa.speculated = select i1 %i.y, i32 %.sroa.010.0.copyload.sroa.speculate.load.true, i32 0
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store <2 x double> %i.af, ptr %7, align 16, !tbaa !182
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  call void @_ZN2cv8StereoBM6createEii(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr") align 8 %i.ag, i32 noundef %.sroa.010.0.copyload.sroa.speculated, i32 noundef %.sroa.5.0.copyload.sroa.speculated)
  %i.ah = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26
          to label %.noexc unwind label %bb.v     ; 6 uses

.noexc:                                           ; preds = %_ZN2cv4util8optionalINS_4gapi7calib3d3cpu15StereoInitParamEED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 1, ptr %i.ai, align 8, !tbaa !53, !noalias !184
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 1, ptr %i.aj, align 4, !tbaa !54, !noalias !184
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceI11StereoSetupSaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ah, align 8, !tbaa !48, !noalias !184
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 16 dereferenceable(32) %7, i64 16, i1 false), !noalias !184
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51, !noalias !184 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.ag, align 16, !tbaa !63, !noalias !184
  store <2 x ptr> %i.ao, ptr %i.al, align 8, !tbaa !63, !noalias !184
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt11make_sharedI11StereoSetupJRS0_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43, !noalias !184
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !55, !noalias !184
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !55, !noalias !184
  br label %_ZSt11make_sharedI11StereoSetupJRS0_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4, !noalias !184 ; 0 uses
  br label %_ZSt11make_sharedI11StereoSetupJRS0_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit

_ZSt11make_sharedI11StereoSetupJRS0_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit: ; preds = %bb.i, %bb.h, %.noexc
  store ptr %i.ak, ptr %3, align 8, !tbaa !185
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !51 ; 8 uses
  store ptr %i.ah, ptr %i.au, align 8, !tbaa !51
  %.not.i.i.i.i5 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i5, label %_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt11make_sharedI11StereoSetupJRS0_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.aw, align 8, !tbaa !53
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !54
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #22, !inline_history !175
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #22, !inline_history !175
  br label %_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i = phi i32 [ %i.az, %bb.m ], [ %i.bj, %bb.n ]
  %i.bk = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bk, label %bb.o, label %_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #22
  br label %_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.k, %_ZSt11make_sharedI11StereoSetupJRS0_EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_.exit
  %i.bl = load ptr, ptr %i.am, align 8, !tbaa !51 ; 8 uses
  %.not.i.i.i6 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i6, label %_ZN11StereoSetupD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.bm, align 8, !tbaa !53
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !54
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #22, !inline_history !176
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #22, !inline_history !176
  br label %_ZN11StereoSetupD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i7 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i7, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i = phi i32 [ %i.bp, %bb.s ], [ %i.bz, %bb.t ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.u, label %_ZN11StereoSetupD2Ev.exit, !prof !56

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #22
  br label %_ZN11StereoSetupD2Ev.exit

_ZN11StereoSetupD2Ev.exit:                        ; preds = %_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  ret void

bb.v:                                             ; preds = %_ZN2cv4util8optionalINS_4gapi7calib3d3cpu15StereoInitParamEED2Ev.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11StereoSetupD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail11get_in_metaINS_4GMatEEENSt9enable_ifIXntsr15is_nongapi_typeIT_EE5valueENS0_8MetaTypeIS4_E4typeEE4typeERKSt6vectorINS_4util7variantIJNSB_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISJ_EERKSA_INS_4GArgESaISO_EEi(ptr dead_on_unwind noalias writable sret(%"struct.cv::GMatDesc") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::util::bad_variant_access", align 8 ; 5 uses
  %i.a = sext i32 %3 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.d = load ptr, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 56                  ; 2 uses
  %.not.i.i = icmp ugt i64 %i.h, %i.a
  br i1 %.not.i.i, label %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.8, i64 noundef %i.a, i64 noundef %i.h) #25
  unreachable

_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %i.a ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !107
  %.not.i = icmp eq i64 %i.j, 1
  br i1 %.not.i, label %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %4, align 8, !tbaa !48
  invoke void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %4) #25
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.k

_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit: ; preds = %_ZNKSt6vectorIN2cv4util7variantIJNS1_9monostateENS0_8GMatDescENS0_11GScalarDescENS0_10GArrayDescENS0_11GOpaqueDescENS0_10GFrameDescEEEESaIS9_EE2atEm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 17, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !108  ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !100  ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %i.u = icmp ugt i64 %i.t, 9223372036854775804
  br i1 %i.u, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, !prof !56

.noexc.i.i.i:                                     ; preds = %bb.f
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #26
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !109 ; 2 uses
  %.pre1 = load ptr, ptr %i.o, align 8, !tbaa !109
  %.pre2 = ptrtoint ptr %.pre1 to i64
  %.pre3 = ptrtoint ptr %.pre to i64
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit
  %.pre-phi4 = phi i64 [ %.pre3, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.s, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit ]
  %.pre-phi = phi i64 [ %.pre2, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.r, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit ]
  %i.w = phi ptr [ %.pre, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.q, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit ] ; 2 uses
  %i.x = phi ptr [ %i.v, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %_ZN2cv4util3getINS_8GMatDescEJNS0_9monostateES2_NS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEERKT_RKNS0_7variantIJDpT0_EEE.exit ] ; 5 uses
  store ptr %i.x, ptr %i.m, align 8, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.y, ptr %i.z, align 8, !tbaa !101
  %i.aa = sub i64 %.pre-phi, %.pre-phi4           ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 4
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !110

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.x, ptr align 4 %i.w, i64 %i.aa, i1 false)
  br label %_ZN2cv8GMatDescC2ERKS0_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.aa, 4
  br i1 %i.ac, label %bb.j, label %_ZN2cv8GMatDescC2ERKS0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !55
  store i32 %i.ad, ptr %i.x, align 4, !tbaa !55
  br label %_ZN2cv8GMatDescC2ERKS0_.exit

_ZN2cv8GMatDescC2ERKS0_.exit:                     ; preds = %bb.h, %bb.i, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !108
  ret void
}

declare void @_ZN2cv8StereoBM6createEii(ptr dead_on_unwind writable sret(%"struct.cv::Ptr") align 8, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11StereoSetupD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv8StereoBMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !54
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !186
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !186
  br label %_ZNSt12__shared_ptrIN2cv8StereoBMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN2cv8StereoBMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt12__shared_ptrIN2cv8StereoBMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv8StereoBMELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZN2cv4util11throw_errorINS0_18bad_variant_accessEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #15 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util18bad_variant_accessE, i64 16), ptr %i.a, align 8, !tbaa !48
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN2cv4util18bad_variant_accessE, ptr nonnull @_ZNSt9exceptionD2Ev) #25
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2cv4util18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str.11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_8optionalINS_4gapi7calib3d3cpu15StereoInitParamEE7nothingES6_EE6dtor_hIS8_E4helpEPNSt15aligned_storageILm24ELm8EE4typeE(ptr noundef %0) #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJNS0_8optionalINS_4gapi7calib3d3cpu15StereoInitParamEE7nothingES6_EE6dtor_hIS6_E4helpEPNSt15aligned_storageILm24ELm8EE4typeE(ptr noundef %0) #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceI11StereoSetupSaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceI11StereoSetupSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyI11StereoSetupEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !54
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !187
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !187
  br label %_ZSt8_DestroyI11StereoSetupEvPT_.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZSt8_DestroyI11StereoSetupEvPT_.exit, !prof !56

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZSt8_DestroyI11StereoSetupEvPT_.exit

_ZSt8_DestroyI11StereoSetupEvPT_.exit:            ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceI11StereoSetupSaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceI11StereoSetupSaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceI11StereoSetupSaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !43
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrI11StereoSetupLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !54
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !190
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !190
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !55
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4util3any11holder_implISt10shared_ptrI11StereoSetupEE5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #26 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4util3any11holder_implISt10shared_ptrI11StereoSetupEEE, i64 16), ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !63
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !63
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4util3any11holder_implISt10shared_ptrI11StereoSetupEEC2IRS5_EEOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !55
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !55
  br label %_ZN2cv4util3any11holder_implISt10shared_ptrI11StereoSetupEEC2IRS5_EEOT_.exit

end_hunk_0
