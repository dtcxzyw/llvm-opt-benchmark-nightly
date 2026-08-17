inline.NumInlined: 15211
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZSt12construct_atIN7rocksdb12BlobMetaDataEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !416
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.am = load i64, ptr %i.al, align 8, !tbaa !417 ; 2 uses
  %i.an = icmp ult i64 %i.am, 16
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !25
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !28
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !417
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !417
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !25
  store i64 0, ptr %i.aq, align 8, !tbaa !417
  store i8 0, ptr %i.aj, align 8, !tbaa !28
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !416
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !25 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !417 ; 2 uses
  %i.bb = icmp ult i64 %i.ba, 16
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false)
  br label %_ZN7rocksdb12BlobMetaDataC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10.i
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !25
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !28
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !28
  br label %_ZN7rocksdb12BlobMetaDataC2EOS0_.exit

_ZN7rocksdb12BlobMetaDataC2EOS0_.exit:            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11.i
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !417
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !417
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !25
  store i64 0, ptr %i.be, align 8, !tbaa !417
  store i8 0, ptr %i.ax, align 8, !tbaa !28
  ret ptr %0
}

declare noundef i64 @_ZNK7rocksdb22SharedBlobFileMetaData15GetBlobFileSizeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE17_M_realloc_insertIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmRKSA_mRmSF_SA_SA_mRbRNS0_11TemperatureESF_mmSF_RSA_SJ_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !726  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !723    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #44
  unreachable

_ZNKSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 432                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 21350398233460129)
  %i.l = select i1 %i.j, i64 21350398233460129, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 432                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #45 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %3, align 8, !tbaa !439
  %i.s = load i64, ptr %5, align 8, !tbaa !439
  %i.t = load i64, ptr %6, align 8, !tbaa !439
  %i.u = load i64, ptr %7, align 8, !tbaa !439
  %i.v = load i64, ptr %10, align 8, !tbaa !439
  %i.w = load i8, ptr %11, align 1, !tbaa !469, !range !470, !noundef !471
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = load i8, ptr %12, align 1, !tbaa !759
  %i.z = load i64, ptr %13, align 8, !tbaa !439
  %i.aa = load i64, ptr %14, align 8, !tbaa !439
  %i.ab = load i64, ptr %15, align 8, !tbaa !439
  %i.ac = load i64, ptr %16, align 8, !tbaa !439
  invoke void @_ZN7rocksdb15SstFileMetaDataC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmS8_mmmS8_S8_mbNS_11TemperatureEmmmmRS6_SA_(ptr noundef nonnull align 8 dereferenceable(432) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.s, i64 noundef %i.t, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.v, i1 noundef zeroext %i.x, i8 noundef zeroext %i.y, i64 noundef %i.z, i64 noundef %i.aa, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %_ZNSt16allocator_traitsISaIN7rocksdb15SstFileMetaDataEEE9constructIS1_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmRKSA_mRmSF_SA_SA_mRbRNS0_11TemperatureESF_mmSF_RSA_SJ_EEEvRS2_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN7rocksdb15SstFileMetaDataEEE9constructIS1_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmRKSA_mRmSF_SA_SA_mRbRNS0_11TemperatureESF_mmSF_RSA_SJ_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN7rocksdb15SstFileMetaDataEEE9constructIS1_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmRKSA_mRmSF_SA_SA_mRbRNS0_11TemperatureESF_mmSF_RSA_SJ_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN7rocksdb15SstFileMetaDataEEE9constructIS1_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmRKSA_mRmSF_SA_SA_mRbRNS0_11TemperatureESF_mmSF_RSA_SJ_EEEvRS2_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN7rocksdb15SstFileMetaDataEEE9constructIS1_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmRKSA_mRmSF_SA_SA_mRbRNS0_11TemperatureESF_mmSF_RSA_SJ_EEEvRS2_PT_DpOT0_.exit ] ; 3 uses
  tail call void @_ZN7rocksdb15SstFileMetaDataC2EOS0_(ptr noundef nonnull align 8 dereferenceable(432) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(432) %.0911.i.i.i) #42
  tail call void @_ZN7rocksdb15SstFileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %.0911.i.i.i) #42
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 432 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 432 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !2910

_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN7rocksdb15SstFileMetaDataEEE9constructIS1_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmRKSA_mRmSF_SA_SA_mRbRNS0_11TemperatureESF_mmSF_RSA_SJ_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN7rocksdb15SstFileMetaDataEEE9constructIS1_JNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKmRKSA_mRmSF_SA_SA_mRbRNS0_11TemperatureESF_mmSF_RSA_SJ_EEEvRS2_PT_DpOT0_.exit ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 432 ; 2 uses
  %.not10.i.i.i42 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i42, label %_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit48, label %.lr.ph.i.i.i43

.lr.ph.i.i.i43:                                   ; preds = %_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i43
  %.012.i.i.i44 = phi ptr [ %i.ah, %.lr.ph.i.i.i43 ], [ %i.af, %_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i45 = phi ptr [ %i.ag, %.lr.ph.i.i.i43 ], [ %1, %_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN7rocksdb15SstFileMetaDataC2EOS0_(ptr noundef nonnull align 8 dereferenceable(432) %.012.i.i.i44, ptr noundef nonnull align 8 dereferenceable(432) %.0911.i.i.i45) #42
  tail call void @_ZN7rocksdb15SstFileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(432) dereferenceable(432) %.0911.i.i.i45) #42
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i45, i64 432 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i44, i64 432 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit48, label %.lr.ph.i.i.i43, !llvm.loop !2910

_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit48: ; preds = %.lr.ph.i.i.i43, %_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i47 = phi ptr [ %i.af, %_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ah, %.lr.ph.i.i.i43 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i49 = icmp eq ptr %i.c, null
  br i1 %.not.i49, label %_ZNSt12_Vector_baseIN7rocksdb15SstFileMetaDataESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !728
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.al) #43
  br label %_ZNSt12_Vector_baseIN7rocksdb15SstFileMetaDataESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7rocksdb15SstFileMetaDataESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit48, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !723
  store ptr %.0.lcssa.i.i.i47, ptr %i.a, align 8, !tbaa !726
  %i.am = getelementptr inbounds nuw [432 x i8], ptr %i.p, i64 %i.l
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !728
  ret void

bb.d:                                             ; preds = %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN7rocksdb15SstFileMetaDataESaIS1_EE12_M_check_lenEmPKc.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %i.ap) #42 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #43
  invoke void @__cxa_rethrow() #44
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.an

bb.g:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #46
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_113LevelIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) initializes((216, 217)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !864  ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !864
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.c, align 8, !tbaa !469
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %.sroa.05.08 = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %i.j = icmp eq ptr %.sroa.05.08, null
  br i1 %i.j, label %_ZNSt10_HashtableImSt4pairIKmPN7rocksdb20InternalIteratorBaseINS2_5SliceEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !2934 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmPN7rocksdb20InternalIteratorBaseINS2_5SliceEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.k = load ptr, ptr %.06.i.i.i, align 8, !tbaa !148 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #43
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmPN7rocksdb20InternalIteratorBaseINS2_5SliceEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2935

_ZNSt10_HashtableImSt4pairIKmPN7rocksdb20InternalIteratorBaseINS2_5SliceEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.c, %._crit_edge
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !881
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !882
  %i.o = shl i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !881
  %i.q = load i64, ptr %i.m, align 8, !tbaa !882
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.r, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !881  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt13unordered_mapImPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmPN7rocksdb20InternalIteratorBaseINS2_5SliceEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.v = load i64, ptr %i.m, align 8, !tbaa !882
  %i.w = shl i64 %i.v, 3
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #43
  br label %_ZNSt13unordered_mapImPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEED2Ev.exit

_ZNSt13unordered_mapImPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmPN7rocksdb20InternalIteratorBaseINS2_5SliceEEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2936 ; 7 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt13unordered_mapImPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2937 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN7rocksdb13MultiScanArgsEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %bb.e ] ; 3 uses
  %i.ab = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !148 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i, i64 16
  tail call void @_ZN7rocksdb13MultiScanArgsD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.ac) #42
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 88) #43
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmN7rocksdb13MultiScanArgsEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2939

_ZNSt10_HashtableImSt4pairIKmN7rocksdb13MultiScanArgsEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.e
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !2940
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !2941
  %i.ag = shl i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ag, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !2940 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNKSt14default_deleteISt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEEclEPSB_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN7rocksdb13MultiScanArgsEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !2941
  %i.al = shl i64 %i.ak, 3
  tail call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #43
  br label %_ZNKSt14default_deleteISt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEEclEPSB_.exit.i

_ZNKSt14default_deleteISt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEEclEPSB_.exit.i: ; preds = %bb.f, %_ZNSt10_HashtableImSt4pairIKmN7rocksdb13MultiScanArgsEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 56) #43
  br label %_ZNSt10unique_ptrISt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_EED2Ev.exit

_ZNSt10unique_ptrISt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_EED2Ev.exit: ; preds = %_ZNSt13unordered_mapImPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEED2Ev.exit, %_ZNKSt14default_deleteISt13unordered_mapImN7rocksdb13MultiScanArgsESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEEclEPSB_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.am) #42
  ret void

.lr.ph:                                           ; preds = %bb.c, %bb.h
  %.sroa.05.09 = phi ptr [ %.sroa.05.0, %bb.h ], [ %.sroa.05.08, %bb.c ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !2942 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !22
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #42
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.05.0 = load ptr, ptr %.sroa.05.09, align 8, !tbaa !148 ; 2 uses
  %i.at = icmp eq ptr %.sroa.05.0, null
  br i1 %i.at, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_113LevelIteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(392) initializes((216, 217)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN7rocksdb12_GLOBAL__N_113LevelIteratorD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) #42
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 392) #43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_113LevelIterator20SetRangeDelReadSeqnoEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(392) initializes((272, 280)) %0, i64 noundef %1) unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 %1, ptr %i.a, align 8, !tbaa !873
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZNK7rocksdb12_GLOBAL__N_113LevelIterator5ValidEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0) unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !867, !range !470, !noundef !471
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.e = load i8, ptr %i.d, align 1, !range !470
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  ret i1 %i.g
}

; Function Attrs: uwtable
define internal void @_ZN7rocksdb12_GLOBAL__N_113LevelIterator11SeekToFirstEv(ptr noundef nonnull align 8 dereferenceable(392) initializes((288, 290)) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %2 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 0, ptr %i.a, align 8, !tbaa !2944
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 289 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !2945
  tail call fastcc void @_ZN7rocksdb12_GLOBAL__N_113LevelIterator16InitFileIteratorEm(ptr noundef nonnull align 8 dereferenceable(392) %0, i64 noundef 0)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !864  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator25TrySetDeleteRangeSentinelERKNS_5SliceE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.d), !inline_history !2946
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !864  ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %i.h), !inline_history !2947 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.n = zext i1 %i.l to i8
  store i8 %i.n, ptr %i.m, align 8, !tbaa !867
  br i1 %i.l, label %bb.c, label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE11SeekToFirstEv.exit

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !864  ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call { ptr, i64 } %i.r(ptr noundef nonnull align 8 dereferenceable(40) %i.o), !inline_history !2947 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.t, ptr %i.v, align 8, !tbaa !442
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !439
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.w, align 8, !tbaa !2948
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 209
  store i8 0, ptr %i.x, align 1, !tbaa !2949
  br label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE11SeekToFirstEv.exit

_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE11SeekToFirstEv.exit: ; preds = %bb.b, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !870
  %.not1 = icmp eq ptr %i.z, null
end_hunk_0
begin_hunk_1_@_ZN7rocksdb12_GLOBAL__N_113LevelIterator20SkipEmptyFileForwardEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #42
  %i.ga = load ptr, ptr %6, align 8, !tbaa !25
  %i.gb = load i64, ptr %i.r, align 8, !tbaa !417
  store ptr %i.ga, ptr %10, align 8
  store i64 %i.gb, ptr %i.ad, align 8
  %i.gc = load ptr, ptr %i.d, align 8, !tbaa !864 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !22
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gf = load ptr, ptr %i.ge, align 8
  invoke void %i.gf(ptr noundef nonnull align 8 dereferenceable(40) %i.gc, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %.noexc unwind label %bb.ay, !inline_history !2966

.noexc:                                           ; preds = %bb.aw
  %i.gg = load ptr, ptr %i.d, align 8, !tbaa !864 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !22
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = invoke noundef zeroext i1 %i.gj(ptr noundef nonnull align 8 dereferenceable(40) %i.gg)
          to label %.noexc68 unwind label %bb.ay, !inline_history !2966 ; 2 uses

.noexc68:                                         ; preds = %.noexc
  %i.gl = zext i1 %i.gk to i8
  store i8 %i.gl, ptr %i.e, align 8, !tbaa !867
  br i1 %i.gk, label %bb.ax, label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE4SeekERKS1_.exit

bb.ax:                                            ; preds = %.noexc68
  %i.gm = load ptr, ptr %i.d, align 8, !tbaa !864 ; 2 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !22
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 88
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = invoke { ptr, i64 } %i.gp(ptr noundef nonnull align 8 dereferenceable(40) %i.gm)
          to label %.noexc69 unwind label %bb.ay, !inline_history !2966 ; 2 uses

.noexc69:                                         ; preds = %bb.ax
  %i.gr = extractvalue { ptr, i64 } %i.gq, 0
  %i.gs = extractvalue { ptr, i64 } %i.gq, 1
  store ptr %i.gr, ptr %i.ae, align 8, !tbaa !442
  store i64 %i.gs, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !439
  store i8 0, ptr %i.af, align 8, !tbaa !2948
  store i8 0, ptr %i.ag, align 1, !tbaa !2949
  br label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE4SeekERKS1_.exit

_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE4SeekERKS1_.exit: ; preds = %.noexc69, %.noexc68
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #42
  %i.gt = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.q
  br i1 %i.gu, label %_ZN7rocksdb11InternalKeyD2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE4SeekERKS1_.exit
  %i.gv = load i64, ptr %i.q, align 8, !tbaa !28
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #43
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit73

_ZN7rocksdb11InternalKeyD2Ev.exit73:              ; preds = %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE4SeekERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  br label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE11SeekToFirstEv.exit

bb.ay:                                            ; preds = %bb.ax, %.noexc, %bb.aw
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #42
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %.body
  %.pn24 = phi { ptr, i32 } [ %i.gx, %bb.ay ], [ %i.dv, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ]
  %i.gy = load ptr, ptr %6, align 8, !tbaa !25    ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.q
  br i1 %i.gz, label %_ZN7rocksdb11InternalKeyD2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74: ; preds = %bb.az
  %i.ha = load i64, ptr %i.q, align 8, !tbaa !28
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #43
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit77

_ZN7rocksdb11InternalKeyD2Ev.exit77:              ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  br label %bb.bg

_ZN7rocksdb12_GLOBAL__N_113LevelIterator19FileHasMultiScanArgEm.exit.thread: ; preds = %.lr.ph.i.i.i.i.i, %bb.w, %..loopexit_crit_edge21.i.i.i.i.i, %bb.y, %bb.t, %_ZN7rocksdb12_GLOBAL__N_113LevelIterator19FileHasMultiScanArgEm.exit, %bb.s
  %i.hc = load ptr, ptr %i.cl, align 8, !tbaa !22
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  %i.he = load ptr, ptr %i.hd, align 8
  call void %i.he(ptr noundef nonnull align 8 dereferenceable(40) %i.cl), !inline_history !2946
  %i.hf = load ptr, ptr %i.d, align 8, !tbaa !864 ; 2 uses
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !22
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = call noundef zeroext i1 %i.hi(ptr noundef nonnull align 8 dereferenceable(40) %i.hf), !inline_history !2947 ; 2 uses
  %i.hk = zext i1 %i.hj to i8
  store i8 %i.hk, ptr %i.e, align 8, !tbaa !867
  br i1 %i.hj, label %bb.ba, label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE11SeekToFirstEv.exit

bb.ba:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_113LevelIterator19FileHasMultiScanArgEm.exit.thread
  %i.hl = load ptr, ptr %i.d, align 8, !tbaa !864 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !22
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 88
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = call { ptr, i64 } %i.ho(ptr noundef nonnull align 8 dereferenceable(40) %i.hl), !inline_history !2947 ; 2 uses
  %i.hq = extractvalue { ptr, i64 } %i.hp, 0
  %i.hr = extractvalue { ptr, i64 } %i.hp, 1
  store ptr %i.hq, ptr %i.ae, align 8, !tbaa !442
  store i64 %i.hr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !439
  store i8 0, ptr %i.af, align 8, !tbaa !2948
  store i8 0, ptr %i.ag, align 1, !tbaa !2949
  br label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE11SeekToFirstEv.exit

_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE11SeekToFirstEv.exit: ; preds = %bb.ba, %_ZN7rocksdb12_GLOBAL__N_113LevelIterator19FileHasMultiScanArgEm.exit.thread, %_ZN7rocksdb11InternalKeyD2Ev.exit73
  %i.hs = load ptr, ptr %i.ah, align 8, !tbaa !870 ; 2 uses
  %.not27 = icmp eq ptr %i.hs, null
  br i1 %.not27, label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator25TrySetDeleteRangeSentinelERKNS_5SliceE.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE11SeekToFirstEv.exit
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !821 ; 2 uses
  %.not85 = icmp eq ptr %i.ht, null
  br i1 %.not85, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN7rocksdb25TruncatedRangeDelIterator11SeekToFirstEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ht)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hu = load i64, ptr %i.g, align 8, !tbaa !862
  %.val32 = load ptr, ptr %i.h, align 8, !tbaa !855
  %i.hv = getelementptr i8, ptr %.val32, i64 8
  %.val32.val = load ptr, ptr %i.hv, align 8, !tbaa !436
  %i.hw = getelementptr inbounds nuw [88 x i8], ptr %.val32.val, i64 %i.hu
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 72
  %i.hy = load ptr, ptr %i.d, align 8, !tbaa !864 ; 3 uses
  %.not.i79 = icmp eq ptr %i.hy, null
  %i.hz = load i8, ptr %i.e, align 8, !range !470
  %i.ia = trunc nuw i8 %i.hz to i1
  %or.cond.i = select i1 %.not.i79, i1 true, i1 %i.ia
  br i1 %or.cond.i, label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator25TrySetDeleteRangeSentinelERKNS_5SliceE.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  %i.ib = load ptr, ptr %i.hy, align 8, !tbaa !22, !noalias !3067
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 120
  %i.id = load ptr, ptr %i.ic, align 8, !noalias !3067
  call void %i.id(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %1, ptr noundef nonnull align 8 dereferenceable(40) %i.hy), !inline_history !2953
  %i.ie = load i8, ptr %1, align 8, !tbaa !454
  %i.if = icmp eq i8 %i.ie, 0
  %i.ig = load ptr, ptr %i.ai, align 8, !tbaa !442 ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i80, label %.critedge.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %bb.be
  call void @_ZdaPv(ptr noundef nonnull %i.ig) #43
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #42
  br i1 %i.if, label %bb.bf, label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator25TrySetDeleteRangeSentinelERKNS_5SliceE.exit

bb.bf:                                            ; preds = %.critedge.i
  store i8 1, ptr %i.a, align 1, !tbaa !2945
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.hx, i64 16, i1 false), !tbaa.struct !449
  br label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator25TrySetDeleteRangeSentinelERKNS_5SliceE.exit

_ZN7rocksdb12_GLOBAL__N_113LevelIterator25TrySetDeleteRangeSentinelERKNS_5SliceE.exit: ; preds = %bb.bf, %.critedge.i, %bb.bd, %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE11SeekToFirstEv.exit, %bb.r
  %i.ih = load i8, ptr %i.a, align 1, !tbaa !2945, !range !470, !noundef !471
  %i.ii = trunc nuw i8 %i.ih to i1
  br i1 %i.ii, label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator23ClearRangeTombstoneIterEv.exit, label %bb.b, !llvm.loop !3070

_ZN7rocksdb12_GLOBAL__N_113LevelIterator23ClearRangeTombstoneIterEv.exit: ; preds = %.critedge, %bb.c, %_ZN7rocksdb12_GLOBAL__N_113LevelIterator25TrySetDeleteRangeSentinelERKNS_5SliceE.exit, %bb.a, %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i.i.i, %bb.o, %bb.n
  ret void

bb.bg:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit39, %_ZN7rocksdb11InternalKeyD2Ev.exit77
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %_ZN7rocksdb11InternalKeyD2Ev.exit77 ], [ %i.ch, %_ZN7rocksdb6StatusD2Ev.exit39 ]
  resume { ptr, i32 } %.pn24.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7rocksdb12_GLOBAL__N_113LevelIterator15SetFileIteratorEPNS_20InternalIteratorBaseINS_5SliceEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(392) %0, ptr noundef %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.rocksdb::ReadaheadFileInfo", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !868  ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !864
  store ptr %1, ptr %i.h, align 8, !tbaa !864
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !864  ; 2 uses
  store ptr %1, ptr %i.j, align 8, !tbaa !864
  %i.l = icmp eq ptr %1, null
  br i1 %i.l, label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE6UpdateEv.exit.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.m = phi ptr [ %i.i, %.thread ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.h, %.thread ], [ %i.j, %bb.b ] ; 3 uses
  %i.o = load ptr, ptr %1, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(40) %1), !inline_history !3071 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = zext i1 %i.r to i8
  store i8 %i.t, ptr %i.s, align 8, !tbaa !867
  br i1 %i.r, label %bb.d, label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE3SetEPNS_20InternalIteratorBaseIS1_EE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !864  ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call { ptr, i64 } %i.x(ptr noundef nonnull align 8 dereferenceable(40) %i.u), !inline_history !3071 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !442
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %i.aa, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !439
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.ac, align 8, !tbaa !2948
  br label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE6UpdateEv.exit.sink.split.i

_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE6UpdateEv.exit.sink.split.i: ; preds = %bb.d, %bb.b
  %3 = phi ptr [ %i.m, %bb.d ], [ %i.k, %bb.b ]
  %4 = phi ptr [ %i.n, %bb.d ], [ %i.j, %bb.b ]   ; 2 uses
  %.sink3.i = phi i64 [ 25, %bb.d ], [ 32, %bb.b ]
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %.sink3.i
  store i8 0, ptr %5, align 1, !tbaa !469
  br label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE3SetEPNS_20InternalIteratorBaseIS1_EE.exit

_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE3SetEPNS_20InternalIteratorBaseIS1_EE.exit: ; preds = %bb.c, %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE6UpdateEv.exit.sink.split.i
  %6 = phi ptr [ %i.m, %bb.c ], [ %3, %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE6UpdateEv.exit.sink.split.i ] ; 9 uses
  %7 = phi ptr [ %i.n, %bb.c ], [ %4, %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE6UpdateEv.exit.sink.split.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 287
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !2996, !range !470, !noundef !471
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.e, label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE20UpdateReadaheadStateEPNS_20InternalIteratorBaseIS1_EE.exit

bb.e:                                             ; preds = %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE3SetEPNS_20InternalIteratorBaseIS1_EE.exit
  %.not.i = icmp eq ptr %6, null
  %i.ag = load ptr, ptr %7, align 8
  %.not3.i = icmp eq ptr %i.ag, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not3.i
  br i1 %or.cond.i, label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE20UpdateReadaheadStateEPNS_20InternalIteratorBaseIS1_EE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.ah = load ptr, ptr %6, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 184
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %2), !inline_history !3072
  %i.ak = load ptr, ptr %7, align 8, !tbaa !864   ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 192
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, ptr noundef nonnull %2), !inline_history !3072
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  br label %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE20UpdateReadaheadStateEPNS_20InternalIteratorBaseIS1_EE.exit

_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE20UpdateReadaheadStateEPNS_20InternalIteratorBaseIS1_EE.exit: ; preds = %bb.f, %bb.e, %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE3SetEPNS_20InternalIteratorBaseIS1_EE.exit
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !868 ; 5 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE20UpdateReadaheadStateEPNS_20InternalIteratorBaseIS1_EE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !2613, !range !470, !noundef !471
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.as = icmp eq ptr %6, null
  br i1 %i.as, label %_ZN7rocksdb22PinnedIteratorsManager11PinIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 48 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !3073 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 56 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2786
  %.not.i.i3.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i.i3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %6, ptr %i.av, align 8, !tbaa !3074
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @_ZN7rocksdb22PinnedIteratorsManager23ReleaseInternalIteratorEPv, ptr %i.ay, align 8, !tbaa !3076
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store ptr %i.az, ptr %i.au, align 8, !tbaa !3073
  br label %_ZN7rocksdb22PinnedIteratorsManager11PinIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit

bb.k:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !2785 ; 5 uses
  %i.bb = ptrtoint ptr %i.av to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 4 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775792
  br i1 %i.be, label %bb.l, label %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i4.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.112) #44
  unreachable

_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i4.i: ; preds = %bb.k
  %i.bf = ashr exact i64 %i.bd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i5.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i5.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 576460752303423487)
  %i.bj = select i1 %i.bh, i64 576460752303423487, i64 %i.bi ; 3 uses
  %.not.i.i.i.i6.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i6.i)
  %i.bk = shl nuw nsw i64 %i.bj, 4
  %i.bl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #45 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store ptr %6, ptr %i.bm, align 8, !tbaa !3074
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store ptr @_ZN7rocksdb22PinnedIteratorsManager23ReleaseInternalIteratorEPv, ptr %i.bn, align 8, !tbaa !3076
  %.not10.i.i.i.i.i.i7.i = icmp eq ptr %i.ba, %i.av
  br i1 %.not10.i.i.i.i.i.i7.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i12.i, label %.lr.ph.i.i.i.i.i.i8.i

.lr.ph.i.i.i.i.i.i8.i:                            ; preds = %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i4.i, %.lr.ph.i.i.i.i.i.i8.i
  %.012.i.i.i.i.i.i9.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i8.i ], [ %i.bl, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i4.i ] ; 2 uses
  %.0911.i.i.i.i.i.i10.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i.i8.i ], [ %i.ba, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i4.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i9.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i10.i, i64 16, i1 false), !alias.scope !3077
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i10.i, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i9.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i11.i = icmp eq ptr %i.bo, %i.av
  br i1 %.not.i.i.i.i.i.i11.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i12.i, label %.lr.ph.i.i.i.i.i.i8.i, !llvm.loop !3081

_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i12.i: ; preds = %.lr.ph.i.i.i.i.i.i8.i, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i4.i
  %.0.lcssa.i.i.i.i.i.i13.i = phi ptr [ %i.bl, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i4.i ], [ %i.bp, %.lr.ph.i.i.i.i.i.i8.i ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i13.i, i64 16
  %.not.i24.i.i.i14.i = icmp eq ptr %i.ba, null
  br i1 %.not.i24.i.i.i14.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i15.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i12.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #43
  br label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i15.i

_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i15.i: ; preds = %bb.m, %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i12.i
  store ptr %i.bl, ptr %i.at, align 8, !tbaa !2785
  store ptr %i.bq, ptr %i.au, align 8, !tbaa !3073
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.br, ptr %i.aw, align 8, !tbaa !2786
  br label %_ZN7rocksdb22PinnedIteratorsManager11PinIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit

bb.n:                                             ; preds = %bb.g, %_ZN7rocksdb19IteratorWrapperBaseINS_5SliceEE20UpdateReadaheadStateEPNS_20InternalIteratorBaseIS1_EE.exit
  %i.bs = icmp eq ptr %6, null
  br i1 %i.bs, label %_ZN7rocksdb22PinnedIteratorsManager11PinIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %6, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(40) %6) #42
  br label %_ZN7rocksdb22PinnedIteratorsManager11PinIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit

_ZN7rocksdb22PinnedIteratorsManager11PinIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit: ; preds = %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i15.i, %bb.j, %bb.h, %bb.n, %bb.o
  ret void
}

; Function Attrs: uwtable
define internal fastcc noundef ptr @_ZN7rocksdb12_GLOBAL__N_113LevelIterator15NewFileIteratorEv(ptr noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %2 = alloca %"struct.rocksdb::FdWithKeyRange", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !855
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !436
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !862
  %i.g = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %i.f ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, i8 0, i64 16, i1 false)
  %i.h = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb17PinnedTableReaderaSERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.g) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load <4 x i64>, ptr %i.i, align 8, !tbaa !439
  store <4 x i64> %i.k, ptr %i.j, align 8, !tbaa !439
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !869  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.e, align 8, !tbaa !862
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !3082
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.p ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3083
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3085
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.03 = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ]
  %.0 = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !2954, !nonnull !471, !align !1811
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !2955 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator25CheckMayBeOutOfLowerBoundEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.e, align 8, !tbaa !862  ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !855 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !430
  %i.ac = icmp ult i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.e, label %_ZN7rocksdb12_GLOBAL__N_113LevelIterator25CheckMayBeOutOfLowerBoundEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #42
  %i.ae = getelementptr i8, ptr %i.aa, i64 8
  %.val.val.i = load ptr, ptr %i.ae, align 8, !tbaa !436
  %i.af = getelementptr inbounds nuw [88 x i8], ptr %.val.val.i, i64 %i.z ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14
  %i.ak = add i64 %i.aj, -8
  store ptr %i.ah, ptr %1, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ak, ptr %i.al, align 8
  %.not.i.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  br i1 %.not.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i, label %bb.f

end_hunk_1
