Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pipeline_modeling_tool?download=true
inline.NumInlined: 8267
inline.NumDeleted: 3627
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv4gapi2ie6ParamsINS0_7GenericEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_SC_:bb.a
  store i64 0, ptr %i.bn, align 8, !tbaa !449
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !121
  %i.bq = load ptr, ptr %1, align 8, !tbaa !124   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !126 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.bs, ptr %i.a, align 8, !tbaa !122
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %bb.f
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %bb.k   ; 2 uses

.noexc12:                                         ; preds = %.noexc.i11
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !124
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !122
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !125
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %.noexc12, %bb.f
  %i.bw = phi ptr [ %i.bu, %.noexc12 ], [ %i.bp, %bb.f ] ; 2 uses
  switch i64 %i.bs, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i10
  %i.bx = load i8, ptr %i.bq, align 1, !tbaa !125
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !125
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bq, i64 %i.bs, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i10
  %i.by = load i64, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !126
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !124
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret void

bb.j:                                             ; preds = %.noexc.i8
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = load ptr, ptr %i.q, align 8, !tbaa !124 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.r
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.cf = load i64, ptr %i.r, align 8, !tbaa !125
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ch = load ptr, ptr %0, align 8, !tbaa !124   ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.d
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cj = load i64, ptr %i.d, align 8, !tbaa !125
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

bb.k:                                             ; preds = %.noexc.i11
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4gapi2ie6detail9ParamDescD2Ev(ptr noundef nonnull align 8 dead_on_return(728) dereferenceable(728) %0) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14, %bb.k
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.k ], [ %i.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14 ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4gapi8networksIJRNS0_2ie6ParamsINS0_7GenericEEEEEENS0_11GNetPackageEDpOT_(ptr dead_on_unwind noalias writable sret(%"struct.cv::gapi::GNetPackage") align 8 %0, ptr noundef nonnull align 8 dereferenceable(760) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"struct.cv::gapi::GNetParam"], align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZN2cv6detail5stripIRNS_4gapi2ie6ParamsINS2_7GenericEEEEENS2_9GNetParamEOT_(ptr dead_on_unwind nonnull writable sret(%"struct.cv::gapi::GNetParam") align 8 %2, ptr noundef nonnull align 8 dereferenceable(760) %1)
  invoke void @_ZN2cv4gapi11GNetPackageC1ESt16initializer_listINS0_9GNetParamEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %2, i64 1)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN2cv4util3anyD2Ev.exit.i, label %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i: ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #35, !inline_history !775
  br label %_ZN2cv4util3anyD2Ev.exit.i

_ZN2cv4util3anyD2Ev.exit.i:                       ; preds = %_ZNKSt14default_deleteIN2cv4util3any6holderEEclEPS3_.exit.i.i.i, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !169  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN2cv4gapi8GBackendD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN2cv4util3anyD2Ev.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !220
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !221
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !116
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #35, !inline_history !776
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !116
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #35, !inline_history !776
  br label %_ZN2cv4gapi8GBackendD2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !125
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !222
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZN2cv4gapi8GBackendD2Ev.exit.i, !prof !223

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #35
  br label %_ZN2cv4gapi8GBackendD2Ev.exit.i

_ZN2cv4gapi8GBackendD2Ev.exit.i:                  ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %_ZN2cv4util3anyD2Ev.exit.i
  %i.w = load ptr, ptr %2, align 8, !tbaa !124    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN2cv4gapi9GNetParamD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN2cv4gapi8GBackendD2Ev.exit.i
  %i.z = load i64, ptr %i.x, align 8, !tbaa !125
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #38
  br label %_ZN2cv4gapi9GNetParamD2Ev.exit

_ZN2cv4gapi9GNetParamD2Ev.exit:                   ; preds = %_ZN2cv4gapi8GBackendD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void

bb.i:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv4gapi9GNetParamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN15PipelineBuilder7addCallI9InferCallEEvRK10CallParamsOT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array.385", align 8   ; 5 uses
  %4 = alloca %"struct.std::array.385", align 16  ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::shared_ptr.186", align 16 ; 12 uses
  %6 = alloca %struct.CallNode, align 8           ; 19 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %struct.DataNode, align 8           ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !284
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !285
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 5                   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !284  ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !285  ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 5
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.s = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #37 ; 16 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.s, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !121
  %i.w = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !126  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.y, ptr %i.a, align 8, !tbaa !122
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.y     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.aa, ptr %6, align 8, !tbaa !124
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !122
  store i64 %i.ab, ptr %i.v, align 8, !tbaa !125
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.ac = phi ptr [ %i.aa, %.noexc ], [ %i.v, %bb.a ] ; 2 uses
  switch i64 %i.y, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !125
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !125
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.w, i64 %i.y, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !126
  %i.ag = load ptr, ptr %6, align 8, !tbaa !124
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !362
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !362
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, i8 0, i64 32, i1 false)
  %i.an = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37
          to label %.noexc.i unwind label %bb.f   ; 9 uses

.noexc.i:                                         ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 3 uses
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !121
  %i.ap = load ptr, ptr %2, align 8, !tbaa !124   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %.noexc.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !126 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.noexc.i
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !124
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !125
  store i64 %i.aw, ptr %i.ao, align 8, !tbaa !125
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !126
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !110 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = invoke noundef zeroext i1 %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i32 noundef 3)
          to label %.body unwind label %bb.h      ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #39
  unreachable

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %i.bc = phi i64 [ %i.at, %bb.e ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !126
  store ptr %i.aq, ptr %2, align 8, !tbaa !124
  store i64 0, ptr %i.be, align 8, !tbaa !126
  store i8 0, ptr %i.aq, align 8, !tbaa !125
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.bh = load <2 x ptr>, ptr %i.c, align 8, !tbaa !436
  store <2 x ptr> %i.bh, ptr %i.bg, align 8, !tbaa !436
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !307
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !307
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.bl = load <2 x ptr>, ptr %i.k, align 8, !tbaa !436
  store <2 x ptr> %i.bl, ptr %10, align 8, !tbaa !436
  %11 = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 72
  %13 = load ptr, ptr %12, align 8, !tbaa !307
  store ptr %13, ptr %11, align 8, !tbaa !307
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  store ptr %i.an, ptr %i.al, align 8, !tbaa !451
  store ptr @_ZNSt17_Function_handlerIFvRKSt6vectorIN2cv4util7variantIJNS1_4GMatENS1_5GMatPENS1_6GFrameENS1_7GScalarENS1_6detail7GArrayUENS8_8GOpaqueUEEEESaISB_EERSD_E9InferCallE9_M_invokeERKSt9_Any_dataSF_SG_, ptr %i.bd, align 8, !tbaa !366
  store ptr @_ZNSt17_Function_handlerIFvRKSt6vectorIN2cv4util7variantIJNS1_4GMatENS1_5GMatPENS1_6GFrameENS1_7GScalarENS1_6detail7GArrayUENS8_8GOpaqueUEEEESaISB_EERSD_E9InferCallE10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation, ptr %i.am, align 8, !tbaa !110
  store i64 0, ptr %i.u, align 8, !tbaa !368
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 3 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !121
  %i.bo = load ptr, ptr %6, align 8, !tbaa !124   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.v
  br i1 %i.bp, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i56

bb.j:                                             ; preds = %bb.i
  %i.bq = load i64, ptr %i.af, align 8, !tbaa !126 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bn, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.bs, i1 false)
  br label %_ZN2cv4util7variantIJ8CallNode8DataNodeEEC2IS2_vEEOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i56: ; preds = %bb.i
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !124
  %i.bt = load i64, ptr %i.v, align 8, !tbaa !125
  store i64 %i.bt, ptr %i.bn, align 8, !tbaa !125
  %.pre = load i64, ptr %i.af, align 8, !tbaa !126
  br label %_ZN2cv4util7variantIJ8CallNode8DataNodeEEC2IS2_vEEOT_.exit

_ZN2cv4util7variantIJ8CallNode8DataNodeEEC2IS2_vEEOT_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i56, %bb.j
  %i.bu = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i56 ], [ %i.bq, %bb.j ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !126
  store ptr %i.v, ptr %6, align 8, !tbaa !124
  store i64 0, ptr %i.af, align 8, !tbaa !126
  store i8 0, ptr %i.v, align 8, !tbaa !125
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.bx = load i64, ptr %i.ai, align 8, !tbaa !362
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !362
  %i.by = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store ptr @_ZNSt17_Function_handlerIFvRKSt6vectorIN2cv4util7variantIJNS1_4GMatENS1_5GMatPENS1_6GFrameENS1_7GScalarENS1_6detail7GArrayUENS8_8GOpaqueUEEEESaISB_EERSD_E9InferCallE9_M_invokeERKSt9_Any_dataSF_SG_, ptr %i.bz, align 8, !tbaa !366
  %i.ca = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 16, i1 false), !tbaa.struct !369
  store ptr @_ZNSt17_Function_handlerIFvRKSt6vectorIN2cv4util7variantIJNS1_4GMatENS1_5GMatPENS1_6GFrameENS1_7GScalarENS1_6detail7GArrayUENS8_8GOpaqueUEEEESaISB_EERSD_E9InferCallE10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation, ptr %i.ca, align 8, !tbaa !110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store ptr %i.s, ptr %5, align 16, !tbaa !372
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store ptr null, ptr %i.cb, align 8, !tbaa !169
  %i.cc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #37
          to label %bb.o unwind label %bb.k       ; 5 uses

bb.k:                                             ; preds = %_ZN2cv4util7variantIJ8CallNode8DataNodeEEC2IS2_vEEOT_.exit
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  %i.cf = call ptr @__cxa_begin_catch(ptr %i.ce) #35 ; 0 uses
  call void @_ZN4NodeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %i.s) #35
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 128) #38
  invoke void @__cxa_rethrow() #36
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN10CallParamsD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #39
  unreachable

bb.n:                                             ; preds = %bb.k
  unreachable

bb.o:                                             ; preds = %_ZN2cv4util7variantIJ8CallNode8DataNodeEEC2IS2_vEEOT_.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 1, ptr %i.cj, align 8, !tbaa !220
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 1, ptr %i.ck, align 4, !tbaa !221
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIP4NodeLN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cc, align 8, !tbaa !116
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.s, ptr %i.cl, align 8, !tbaa !374
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !169
  %i.cm = load ptr, ptr %i.am, align 8, !tbaa !110 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i58, label %_ZNSt14_Function_baseD2Ev.exit.i59, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = invoke noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i59 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  call void @__clang_call_terminate(ptr %i.cp) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i59:               ; preds = %bb.p, %bb.o
  %i.cq = load ptr, ptr %6, align 8, !tbaa !124   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.v
  br i1 %i.cr, label %_ZN8CallNodeD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i59
  %i.cs = load i64, ptr %i.v, align 8, !tbaa !125
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #38
  br label %_ZN8CallNodeD2Ev.exit

_ZN8CallNodeD2Ev.exit:                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.cu = load ptr, ptr %5, align 16, !tbaa !372  ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !377 ; 3 uses
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !378 ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 4                 ; 3 uses
  %i.dc = icmp ugt i64 %i.j, %i.db
  br i1 %i.dc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN8CallNodeD2Ev.exit
  %i.dd = sub nuw nsw i64 %i.j, %i.db
  invoke void @_ZNSt6vectorISt8weak_ptrI4NodeESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 noundef %i.dd)
          to label %_ZNSt6vectorISt8weak_ptrI4NodeESaIS2_EE6resizeEm.exit unwind label %bb.z

bb.s:                                             ; preds = %_ZN8CallNodeD2Ev.exit
  %i.de = icmp ult i64 %i.j, %i.db
  br i1 %i.de, label %bb.t, label %_ZNSt6vectorISt8weak_ptrI4NodeESaIS2_EE6resizeEm.exit

bb.t:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.j ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.cw, %i.df
  br i1 %.not.i.i60, label %_ZNSt6vectorISt8weak_ptrI4NodeESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %_ZSt8_DestroyISt8weak_ptrI4NodeEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dr, %_ZSt8_DestroyISt8weak_ptrI4NodeEEvPT_.exit.i.i.i.i ], [ %i.df, %bb.t ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !238 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt8weak_ptrI4NodeEEvPT_.exit.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 12 ; 3 uses
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !125
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = load i32, ptr %i.di, align 4, !tbaa !222 ; 2 uses
  %i.dl = add nsw i32 %i.dk, -1
  store i32 %i.dl, ptr %i.di, align 4, !tbaa !222
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.dm = atomicrmw volatile add ptr %i.di, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dk, %bb.v ], [ %i.dm, %bb.w ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.dn, label %bb.x, label %_ZSt8_DestroyISt8weak_ptrI4NodeEEvPT_.exit.i.i.i.i

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !116
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.dh) #35, !inline_history !17
  br label %_ZSt8_DestroyISt8weak_ptrI4NodeEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt8weak_ptrI4NodeEEvPT_.exit.i.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dr, %i.cw
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrI4NodeES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt8weak_ptrI4NodeES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt8weak_ptrI4NodeEEvPT_.exit.i.i.i.i
  store ptr %i.df, ptr %i.cv, align 8, !tbaa !377
  br label %_ZNSt6vectorISt8weak_ptrI4NodeESaIS2_EE6resizeEm.exit

_ZNSt6vectorISt8weak_ptrI4NodeESaIS2_EE6resizeEm.exit: ; preds = %bb.r, %bb.s, %bb.t, %_ZSt8_DestroyIPSt8weak_ptrI4NodeES2_EvT_S4_RSaIT0_E.exit.i.i
  %.not116 = icmp eq ptr %i.m, %i.n
  br i1 %.not116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt8weak_ptrI4NodeESaIS2_EE6resizeEm.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.aa

._crit_edge:                                      ; preds = %_ZNSt10__weak_ptrI4NodeLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt6vectorISt8weak_ptrI4NodeESaIS2_EE6resizeEm.exit
  %i.dt = load ptr, ptr %0, align 8, !tbaa !358
  %i.du = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrI4NodeEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrI4NodeESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE4findERSE_.exit unwind label %bb.bh

bb.y:                                             ; preds = %.noexc.i.i
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

end_hunk_0
