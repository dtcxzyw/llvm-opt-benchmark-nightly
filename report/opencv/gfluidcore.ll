Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gfluidcore?download=true
inline.NumInlined: 7926
inline.NumDeleted: 1201
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid10GFluidAndSESt5tupleIJNS_4GMatENS_7GScalarEEES5_IJS6_EELb0EE4callERKSt6vectorINS_4GArgESaISC_EERKSB_IPNS3_6BufferESaISI_EE:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81
  call void @_ZN2cv4gapi5fluid10GFluidAndS3runERKNS1_4ViewERKNS_7Scalar_IdEERNS1_6BufferE(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid10GFluidAndSESt5tupleIJNS_4GMatENS_7GScalarEEES5_IJS6_EELb0EE12init_scratchERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EERNS3_6BufferE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.4, i64 13, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 13, ptr %i.b, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 29
  store i8 0, ptr %i.c, align 1, !tbaa !52
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv6detail14scratch_helperILb0ENS_4gapi5fluid9GFluidAddEJNS_4GMatES5_iEE9help_initERKSt6vectorINS_4util7variantIJNS8_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISG_EERKS7_INS_4GArgESaISL_EERNS3_6BufferE, ptr noundef nonnull @.str.5, i32 noundef 251) #29
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %3, align 8, !tbaa !51     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !52
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid10GFluidAndSESt5tupleIJNS_4GMatENS_7GScalarEEES5_IJS6_EELb0EE13reset_scratchERNS3_6BufferE(ptr noundef nonnull align 8 dereferenceable(16) %0) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.a, ptr noundef nonnull align 1 dereferenceable(13) @.str.4, i64 13, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.b, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.c, align 1, !tbaa !52
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv6detail14scratch_helperILb0ENS_4gapi5fluid9GFluidAddEJNS_4GMatES5_iEE10help_resetERNS3_6BufferE, ptr noundef nonnull @.str.5, i32 noundef 255) #29
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.a, align 8, !tbaa !52
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid10GFluidAndSESt5tupleIJNS_4GMatENS_7GScalarEEES5_IJS6_EELb0EE9getBorderERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EE(ptr dead_on_unwind noalias writable sret(%"class.cv::util::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #0 comdat align 2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !83, !alias.scope !651
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv6detail15FluidCallHelperINS_4gapi5fluid10GFluidAndSESt5tupleIJNS_4GMatENS_7GScalarEEES5_IJS6_EELb0EE9getWindowERKSt6vectorINS_4util7variantIJNSC_9monostateENS_8GMatDescENS_11GScalarDescENS_10GArrayDescENS_11GOpaqueDescENS_10GFrameDescEEEESaISK_EERKSB_INS_4GArgESaISP_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #0 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv4gapi5fluid10GFluidAndS3runERKNS1_4ViewERKNS_7Scalar_IdEERNS1_6BufferE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array.93", align 8    ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = tail call fastcc { i64, i64 } @_ZN2cv4gapi5fluidL23convertScalarForBitwiseERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  store i64 %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = extractvalue { i64, i64 } %i.a, 1
  store i64 %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !102
  switch i32 %i.h, label %.thread24 [
    i32 0, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !102
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %.thread24

bb.c:                                             ; preds = %bb.b
  %.val16.val = load ptr, ptr %i.j, align 8, !tbaa !120
  %i.n = getelementptr i8, ptr %i.j, i64 72
  %.val16.val17 = load i32, ptr %i.n, align 8, !tbaa !119
  call fastcc void @_ZN2cv4gapi5fluidL13run_bitwise_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKiNS1_7BitwiseE(ptr nonnull %i.f, ptr %.val16.val, i32 %.val16.val17, ptr noundef nonnull %3, i32 noundef 0)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !112  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !102
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %bb.e, label %.thread24

bb.e:                                             ; preds = %bb.d
  %.val19.val = load ptr, ptr %i.p, align 8, !tbaa !120
  %i.t = getelementptr i8, ptr %i.p, i64 72
  %.val19.val20 = load i32, ptr %i.t, align 8, !tbaa !119
  call fastcc void @_ZN2cv4gapi5fluidL13run_bitwise_sIttEEvRNS1_6BufferERKNS1_4ViewEPKiNS1_7BitwiseE(ptr nonnull %i.f, ptr %.val19.val, i32 %.val19.val20, ptr noundef nonnull %3, i32 noundef 0)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !112  ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !102
  %i.y = icmp eq i32 %i.x, 3
  br i1 %i.y, label %bb.g, label %.thread24

bb.g:                                             ; preds = %bb.f
  %.val22.val = load ptr, ptr %i.v, align 8, !tbaa !120
  %i.z = getelementptr i8, ptr %i.v, i64 72
  %.val22.val23 = load i32, ptr %i.z, align 8, !tbaa !119
  call fastcc void @_ZN2cv4gapi5fluidL13run_bitwise_sIssEEvRNS1_6BufferERKNS1_4ViewEPKiNS1_7BitwiseE(ptr nonnull %i.f, ptr %.val22.val, i32 %.val22.val23, ptr noundef nonnull %3, i32 noundef 0)
  br label %bb.j

.thread24:                                        ; preds = %bb.a, %bb.b, %bb.d, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv4gapi5fluid9GFluidAdd3runERKNS1_4ViewES5_iRNS1_6BufferE, ptr noundef nonnull @.str.2, i32 noundef 1482) #29
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.thread24
  unreachable

bb.i:                                             ; preds = %.thread24
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !52
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.aa

bb.j:                                             ; preds = %bb.g, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc { i64, i64 } @_ZN2cv4gapi5fluidL23convertScalarForBitwiseERKNS_7Scalar_IdEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %i.a = load <4 x double>, ptr %0, align 8, !tbaa !163 ; 2 uses
  %i.b = fptosi <4 x double> %i.a to <4 x i32>    ; 3 uses
  %i.c = sitofp <4 x i32> %i.b to <4 x double>
  %i.d = fcmp oeq <4 x double> %i.a, %i.c
  %i.e = freeze <4 x i1> %i.d
  %i.f = bitcast <4 x i1> %i.e to i4
  %i.g = icmp eq i4 %i.f, -1
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %2)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv4gapi5fluidL23convertScalarForBitwiseERKNS_7Scalar_IdEE, ptr noundef nonnull @.str.2, i32 noundef 1411) #29
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !52
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.a
  %.sroa.0.0.insert.insert.v.bc = bitcast <4 x i32> %i.b to <2 x i64>
  %.sroa.0.0.insert.insert.v.extract = extractelement <2 x i64> %.sroa.0.0.insert.insert.v.bc, i64 0
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert.v.extract, 0
  %.sroa.5.8.insert.insert.v.bc = bitcast <4 x i32> %i.b to <2 x i64>
  %.sroa.5.8.insert.insert.v.extract = extractelement <2 x i64> %.sroa.5.8.insert.insert.v.bc, i64 1
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.8.insert.insert.v.extract, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cv4gapi5fluidL13run_bitwise_sIhhEEvRNS1_6BufferERKNS1_4ViewEPKiNS1_7BitwiseE(ptr nofree readonly captures(none) %.8.val, ptr nofree readonly captures(none) %.8.val1.0.val, i32 %.8.val1.72.val, ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.26", align 1 ; 3 uses
  %i.a = sext i32 %.8.val1.72.val to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %.8.val1.0.val, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !121  ; 147 uses
  %i.d = load ptr, ptr %.8.val, align 8, !tbaa !123
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 84 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !128  ; 36 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !129  ; 3 uses
  switch i32 %1, label %default.unreachable29 [
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %i.i, label %bb.c [
    i32 4, label %.preheader.i.i
    i32 3, label %.preheader84.i.i
    i32 2, label %.preheader86.i.i
    i32 1, label %.preheader88.i.i
  ]

.preheader88.i.i:                                 ; preds = %bb.b
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph.preheader.i.i, label %_ZN2cv4gapi5fluidL13run_bitwise_sIhPFhhiEEEvPT_PKS5_iiPKiT0_.exit

.lr.ph.preheader.i.i:                             ; preds = %.preheader88.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.g to i64 ; 7 uses
  %min.iters.check313 = icmp ult i32 %i.g, 8
  br i1 %min.iters.check313, label %.lr.ph.i.i.preheader, label %vector.memcheck314

vector.memcheck314:                               ; preds = %.lr.ph.preheader.i.i
  %i.k = getelementptr i8, ptr %i.e, i64 %wide.trip.count.i.i ; 2 uses
  %i.l = getelementptr i8, ptr %i.c, i64 %wide.trip.count.i.i
  %i.m = getelementptr i8, ptr %0, i64 4
  %bound0315 = icmp ult ptr %i.e, %i.l
  %bound1316 = icmp ult ptr %i.c, %i.k
  %found.conflict317 = and i1 %bound0315, %bound1316
  %bound0318 = icmp ult ptr %i.e, %i.m
  %bound1319 = icmp ult ptr %0, %i.k
  %found.conflict320 = and i1 %bound0318, %bound1319
  %conflict.rdx321 = or i1 %found.conflict317, %found.conflict320
  br i1 %conflict.rdx321, label %.lr.ph.i.i.preheader, label %vector.ph322

vector.ph322:                                     ; preds = %vector.memcheck314
  %n.vec323 = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %i.n = load i32, ptr %0, align 4, !tbaa !60, !alias.scope !724 ; 2 uses
  %.scalar = tail call i32 @llvm.umin.i32(i32 %i.n, i32 255)
  %i.o = trunc nuw i32 %.scalar to i8
  %i.p = insertelement <4 x i8> poison, i8 %i.o, i64 0
  %i.q = shufflevector <4 x i8> %i.p, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.r = icmp slt i32 %i.n, 0
  %i.s = select i1 %i.r, <4 x i8> zeroinitializer, <4 x i8> %i.q ; 2 uses
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph322
  %index327 = phi i64 [ 0, %vector.ph322 ], [ %index.next330, %vector.body326 ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %index327 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %wide.load328 = load <4 x i8>, ptr %i.t, align 1, !tbaa !52, !alias.scope !725
  %wide.load329 = load <4 x i8>, ptr %i.u, align 1, !tbaa !52, !alias.scope !725
  %i.v = and <4 x i8> %i.s, %wide.load328
  %i.w = and <4 x i8> %i.s, %wide.load329
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 %index327 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store <4 x i8> %i.v, ptr %i.x, align 1, !tbaa !52, !alias.scope !726, !noalias !727
  store <4 x i8> %i.w, ptr %i.y, align 1, !tbaa !52, !alias.scope !726, !noalias !727
  %index.next330 = add nuw i64 %index327, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next330, %n.vec323
  br i1 %i.z, label %middle.block331, label %vector.body326, !llvm.loop !656

middle.block331:                                  ; preds = %vector.body326
  %cmp.n332 = icmp eq i64 %n.vec323, %wide.trip.count.i.i
  br i1 %cmp.n332, label %_ZN2cv4gapi5fluidL13run_bitwise_sIhPFhhiEEEvPT_PKS5_iiPKiT0_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck314, %.lr.ph.preheader.i.i, %middle.block331
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck314 ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec323, %middle.block331 ] ; 5 uses
  %xtraiter480 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod481.not = icmp eq i64 %xtraiter480, 0
  br i1 %lcmp.mod481.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.ph
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !52
  %i.ac = load i32, ptr %0, align 4, !tbaa !60    ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  %spec.select2.i.prol = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 255)
  %spec.select.i.prol = trunc nuw i32 %spec.select2.i.prol to i8
  %i.ae = select i1 %i.ad, i8 0, i8 %spec.select.i.prol
  %i.af = and i8 %i.ae, %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i.i.ph
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !52
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ah = add nsw i64 %wide.trip.count.i.i, -1
  %i.ai = icmp eq i64 %indvars.iv.i.i.ph, %i.ah
  br i1 %i.ai, label %_ZN2cv4gapi5fluidL13run_bitwise_sIhPFhhiEEEvPT_PKS5_iiPKiT0_.exit, label %.lr.ph.i.i

.preheader86.i.i:                                 ; preds = %bb.b
  %i.aj = icmp sgt i32 %i.g, 0
  br i1 %i.aj, label %.lr.ph92.i.i, label %_ZN2cv4gapi5fluidL13run_bitwise_sIhPFhhiEEEvPT_PKS5_iiPKiT0_.exit

.lr.ph92.i.i:                                     ; preds = %.preheader86.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %wide.trip.count104.i.i = zext nneg i32 %i.g to i64 ; 4 uses
  %min.iters.check345 = icmp ult i32 %i.g, 8
  br i1 %min.iters.check345, label %scalar.ph344.preheader, label %vector.memcheck346

vector.memcheck346:                               ; preds = %.lr.ph92.i.i
  %i.al = shl nuw nsw i64 %wide.trip.count104.i.i, 1 ; 2 uses
  %i.am = getelementptr i8, ptr %i.e, i64 %i.al   ; 2 uses
  %i.an = getelementptr i8, ptr %i.c, i64 %i.al
  %i.ao = getelementptr i8, ptr %0, i64 8
  %bound0347 = icmp ult ptr %i.e, %i.an
  %bound1348 = icmp ult ptr %i.c, %i.am
  %found.conflict349 = and i1 %bound0347, %bound1348
  %bound0350 = icmp ult ptr %i.e, %i.ao
  %bound1351 = icmp ult ptr %0, %i.am
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %found.conflict349, %found.conflict352
  br i1 %conflict.rdx353, label %scalar.ph344.preheader, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck346
  %n.vec355 = and i64 %wide.trip.count104.i.i, 2147483644 ; 3 uses
  %i.ap = load <2 x i32>, ptr %0, align 4, !tbaa !60, !alias.scope !728 ; 3 uses
  %i.aq = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.ar = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.aq, <4 x i32> splat (i32 255))
  %i.as = trunc nuw <4 x i32> %i.ar to <4 x i8>
  %i.at = icmp slt <2 x i32> %i.ap, zeroinitializer ; 2 uses
  %.splat459 = shufflevector <2 x i1> %i.at, <2 x i1> poison, <4 x i32> zeroinitializer
  %i.au = select <4 x i1> %.splat459, <4 x i8> zeroinitializer, <4 x i8> %i.as
  %i.av = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.av, <4 x i32> splat (i32 255))
  %i.ax = trunc nuw <4 x i32> %i.aw to <4 x i8>
  %.splat460 = shufflevector <2 x i1> %i.at, <2 x i1> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ay = select <4 x i1> %.splat460, <4 x i8> zeroinitializer, <4 x i8> %i.ax
  br label %vector.body360

vector.body360:                                   ; preds = %vector.body360, %vector.ph354
  %index361 = phi i64 [ 0, %vector.ph354 ], [ %index.next363, %vector.body360 ] ; 5 uses
  %i.az = shl nuw nsw i64 %index361, 1            ; 3 uses
  %i.ba = shl i64 %index361, 1                    ; 2 uses
  %i.bb = shl i64 %index361, 1                    ; 2 uses
  %i.bc = shl i64 %index361, 1                    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bc
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  %i.bk = load i8, ptr %i.bd, align 1, !tbaa !52, !alias.scope !729
  %i.bl = load i8, ptr %i.bf, align 1, !tbaa !52, !alias.scope !729
  %i.bm = load i8, ptr %i.bh, align 1, !tbaa !52, !alias.scope !729
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !52, !alias.scope !729
  %i.bo = insertelement <4 x i8> poison, i8 %i.bk, i64 0
  %i.bp = insertelement <4 x i8> %i.bo, i8 %i.bl, i64 1
  %i.bq = insertelement <4 x i8> %i.bp, i8 %i.bm, i64 2
  %i.br = insertelement <4 x i8> %i.bq, i8 %i.bn, i64 3
  %i.bs = and <4 x i8> %i.au, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.az
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.az
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ba
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bb
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bc
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 7
  %i.cc = load i8, ptr %i.bv, align 1, !tbaa !52, !alias.scope !729
  %i.cd = load i8, ptr %i.bx, align 1, !tbaa !52, !alias.scope !729
  %i.ce = load i8, ptr %i.bz, align 1, !tbaa !52, !alias.scope !729
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !52, !alias.scope !729
  %i.cg = insertelement <4 x i8> poison, i8 %i.cc, i64 0
  %i.ch = insertelement <4 x i8> %i.cg, i8 %i.cd, i64 1
  %i.ci = insertelement <4 x i8> %i.ch, i8 %i.ce, i64 2
  %i.cj = insertelement <4 x i8> %i.ci, i8 %i.cf, i64 3
  %i.ck = and <4 x i8> %i.ay, %i.cj
  %interleaved.vec362 = shufflevector <4 x i8> %i.bs, <4 x i8> %i.ck, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec362, ptr %i.bt, align 1, !tbaa !52, !alias.scope !730, !noalias !731
  %index.next363 = add nuw i64 %index361, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next363, %n.vec355
  br i1 %i.cl, label %middle.block364, label %vector.body360, !llvm.loop !661

end_hunk_0
