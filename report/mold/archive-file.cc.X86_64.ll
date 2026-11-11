Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/archive-file.cc.X86_64?download=true
inline.NumInlined: 580
inline.NumDeleted: 274
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4mold12_GLOBAL__N_15ArHdr9read_nameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERPh:_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm.exit, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IPKcvEET_S8_RKS3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !25     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !24   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !27
  %i.e = icmp eq ptr %i.a, null
  %i.f = icmp ne i64 %i.c, 0
  %or.cond.i.i.i = and i1 %i.e, %i.f
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.c, 15
  br i1 %i.g, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = icmp slt i64 %i.c, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.i = add nuw i64 %i.c, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.f
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #21 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !25
  store i64 %i.c, ptr %i.d, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.a, align 1, !tbaa !26
  store i8 %i.m, ptr %i.l, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr align 1 %i.a, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.n, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c
  store i8 0, ptr %i.o, align 1, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.p) #14
  tail call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN4mold14must_open_fileINS_6X86_64EEEPNS_10MappedFileERNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !27
  %i.b = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !30

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.i = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #21 ; 2 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !25
  store i64 %i.d, ptr %i.a, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !26
  store i8 %i.k, ptr %i.j, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !26
  %i.n = call noundef ptr @_ZN4mold9open_fileINS_6X86_64EEEPNS_10MappedFileERNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = load i64, ptr %i.a, align 8, !tbaa !26
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %0) #14
  %i.s = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA13_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 1 dereferenceable(13) @.str.18)
  %i.t = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.u = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA3_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.t, ptr noundef nonnull align 1 dereferenceable(3) @.str.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN4mold12errno_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4) #14
  %i.v = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %4) ; 0 uses
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %3) #20
  unreachable

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !26
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold24read_fat_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %i.f = icmp sgt i64 %i.e, 9
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12904
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12896 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12848
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit.thread
  %.033 = phi ptr [ %i.g, %.lr.ph ], [ %i.w, %_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit.thread ] ; 2 uses
  %.033.a = phi ptr [ null, %.lr.ph ], [ %.sroa.5.1, %_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit.thread ] ; 4 uses
  %5 = ptrtoint ptr %.033 to i64
  %i.r = sub i64 %i.h, %5
  %i.s = and i64 %i.r, 1
  %spec.select = getelementptr inbounds nuw i8, ptr %.033, i64 %i.s ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select, i64 60 ; 3 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %spec.select, i64 48
  %i.v = call i64 @__isoc23_strtol(ptr noundef nonnull %i.u, ptr noundef null, i32 noundef 10) #14, !inline_history !0
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v ; 3 uses
  %i.x = load i16, ptr %spec.select, align 1
  %i.y = xor i16 %i.x, 12079
  %i.z = getelementptr i8, ptr %spec.select, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i16
  %i.ac = xor i16 %i.ab, 32
  %i.ad = or i16 %i.y, %i.ac
  %i.ae = icmp ne i16 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit.thread, label %bb.c, !llvm.loop !76

bb.c:                                             ; preds = %bb.b
  %i.ah = load i16, ptr %spec.select, align 1
  %i.ai = icmp ne i16 %i.ah, 8239
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit.thread, label %_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit

_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit:   ; preds = %bb.c
  %i.al = load i64, ptr %spec.select, align 1
  %i.am = icmp ne i64 %i.al, 2319129740949672751
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit.thread, label %bb.d, !llvm.loop !76

bb.d:                                             ; preds = %_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call fastcc void @_ZNK4mold12_GLOBAL__N_15ArHdr9read_nameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEERPh(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 1 dereferenceable(60) %spec.select, ptr %.033.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ap = load i64, ptr %i.i, align 8, !tbaa !24  ; 9 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !25    ; 5 uses
  switch i64 %i.ap, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread30 [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 16, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.d
  %i.aq = load i64, ptr %.pre, align 1
  %i.ar = xor i64 %i.aq, 4991199333076328287
  %i.as = getelementptr i8, ptr %.pre, i64 8
  %i.at = load i8, ptr %i.as, align 1
  %i.au = zext i8 %i.at to i64
  %i.av = xor i64 %i.au, 70
  %i.aw = or i64 %i.ar, %i.av
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %._crit_edge.i.i.thread, !llvm.loop !76

._crit_edge.i.i.thread:                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store ptr %i.j, ptr %4, align 8, !tbaa !27
  br label %bb.j

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22: ; preds = %bb.d
  %i.ba = load i128, ptr %.pre, align 1
  %i.bb = icmp ne i128 %i.ba, 90747482440279024404723789557641666399
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %.thread43, !llvm.loop !76

.thread43:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  store ptr %i.j, ptr %4, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread30: ; preds = %bb.d
  store ptr %i.j, ptr %4, align 8, !tbaa !27
  %i.be = icmp ugt i64 %i.ap, 15
  br i1 %i.be, label %bb.e, label %._crit_edge.i.i

bb.e:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread30
  %i.bf = icmp slt i64 %i.ap, 0
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bg = add nuw i64 %i.ap, 1                    ; 2 uses
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !81

bb.h:                                             ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %.thread43, %bb.g
  %i.bi = phi i64 [ 17, %.thread43 ], [ %i.bg, %bb.g ]
  %i.bj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #21 ; 2 uses
  store ptr %i.bj, ptr %4, align 8, !tbaa !25
  store i64 %i.ap, ptr %i.j, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread30
  %i.bk = phi ptr [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.j, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22.thread30 ] ; 4 uses
  switch i64 %i.ap, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bl = load i8, ptr %.pre, align 1, !tbaa !26
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.j:                                             ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.bm = phi ptr [ %i.j, %._crit_edge.i.i.thread ], [ %i.bk, %._crit_edge.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr align 1 %.pre, i64 %i.ap, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.i, %bb.j
  %i.bn = phi ptr [ %i.bk, %._crit_edge.i.i ], [ %i.bk, %bb.i ], [ %i.bm, %bb.j ]
  store i64 %i.ap, ptr %i.k, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ap
  store i8 0, ptr %i.bo, align 1, !tbaa !26
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !22
  %i.bq = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.br = sub i64 %i.bq, %i.h
  %i.bs = ptrtoint ptr %i.w to i64
  %i.bt = sub i64 %i.bs, %i.bq
  %i.bu = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #21 ; 13 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !24
  store i8 0, ptr %i.bv, align 8, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.by, align 8, !tbaa !82
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 56 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.ca, align 8, !tbaa !83
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 76
  store i32 -1, ptr %i.cb, align 4, !tbaa !84
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.cc = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.br
  store ptr %i.cd, ptr %i.bx, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i64 %i.bt, ptr %i.ce, align 8, !tbaa !21
  store ptr %2, ptr %i.bz, align 8, !tbaa !85
  %i.cf = atomicrmw add ptr %i.l, i64 1 seq_cst, align 8, !noalias !86
  %i.cg = load atomic i64, ptr %i.m monotonic, align 8, !noalias !86
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.k, label %_ZN4mold10MappedFile5sliceINS_6X86_64EEEPS0_RNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ci = cmpxchg ptr %i.m, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !86 ; 0 uses
  br label %_ZN4mold10MappedFile5sliceINS_6X86_64EEEPS0_RNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit

_ZN4mold10MappedFile5sliceINS_6X86_64EEEPS0_RNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.k
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE18internal_subscriptILb1EEERS8_m(ptr noundef nonnull align 8 dereferenceable(65) %i.n, i64 noundef %i.cf), !noalias !86
  store ptr %i.bu, ptr %i.cj, align 8, !tbaa !35, !noalias !86
  %i.ck = load ptr, ptr %i.o, align 8, !tbaa !33  ; 4 uses
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !34
  %.not.i.i = icmp eq ptr %i.ck, %i.cl
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4mold10MappedFile5sliceINS_6X86_64EEEPS0_RNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit
  store ptr %i.bu, ptr %i.ck, align 8, !tbaa !35
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cm, ptr %i.o, align 8, !tbaa !33
  br label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE9push_backEOS2_.exit

bb.m:                                             ; preds = %_ZN4mold10MappedFile5sliceINS_6X86_64EEEPS0_RNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit
  %i.cn = load ptr, ptr %0, align 8, !tbaa !36    ; 4 uses
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 6 uses
  %i.cr = icmp eq i64 %i.cq, 9223372036854775800
  br i1 %i.cr, label %bb.n, label %_ZNKSt6vectorIPN4mold10MappedFileESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #20
  unreachable

_ZNKSt6vectorIPN4mold10MappedFileESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.m
  %i.cs = ashr exact i64 %i.cq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cs, i64 1)
  %i.ct = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cs ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %i.cv = call i64 @llvm.umin.i64(i64 %i.ct, i64 1152921504606846975)
  %i.cw = select i1 %i.cu, i64 1152921504606846975, i64 %i.cv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #21 ; 4 uses
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 %i.cq ; 2 uses
  store ptr %i.bu, ptr %i.cz, align 8, !tbaa !35
  %i.da = icmp sgt i64 %i.cq, 0
  br i1 %i.da, label %bb.o, label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.o:                                             ; preds = %_ZNKSt6vectorIPN4mold10MappedFileESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr align 8 %i.cn, i64 %i.cq, i1 false)
  br label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.o, %_ZNKSt6vectorIPN4mold10MappedFileESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cq) #19
  br label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.cy, ptr %0, align 8, !tbaa !36
  store ptr %i.db, ptr %i.o, align 8, !tbaa !33
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  store ptr %i.dc, ptr %i.p, align 8, !tbaa !34
  br label %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.l, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.dd = load ptr, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.j
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE9push_backEOS2_.exit
  %i.df = load i64, ptr %i.j, align 8, !tbaa !26
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EE9push_backEOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit22
  %i.dh = load ptr, ptr %3, align 8, !tbaa !25    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.q
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dj = load i64, ptr %i.q, align 8, !tbaa !26
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit.thread

_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit.thread: ; preds = %bb.c, %bb.b, %_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.sroa.5.1 = phi ptr [ %.033.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %.033.a, %_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit ], [ %i.t, %bb.b ], [ %.033.a, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.dl = load i64, ptr %i.d, align 8, !tbaa !21
  %i.dm = getelementptr inbounds i8, ptr %i.c, i64 %i.dl
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = ptrtoint ptr %i.w to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = icmp sgt i64 %i.dp, 1
  br i1 %i.dq, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK4mold12_GLOBAL__N_15ArHdr9is_symtabEv.exit.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold20read_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21
  %.not.i.i = icmp ult i64 %i.b, 8
  br i1 %.not.i.i, label %bb.b, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = load i64, ptr %i.d, align 1
  %i.f = icmp ne i64 %i.e, 738142165265366049
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit, label %bb.b

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  tail call void @_ZN4mold24read_fat_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind writable sret(%"class.std::vector.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull %2)
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  tail call void @_ZN4mold25read_thin_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind writable sret(%"class.std::vector.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE11starts_withEPKc.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path5_ListC1ERKS2_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 noundef zeroext %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !37 ; 9 uses
  %.sroa.2.0..0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..0..sroa_idx.i, align 8, !tbaa !22 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !27
  %i.b = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.c = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.c, %i.b
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.f = add nuw i64 %.sroa.0.0.copyload.i, 1     ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.f
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !25
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !26
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !26
  store i8 %i.j, ptr %i.i, align 1, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.i, ptr %i.k, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.0.0.copyload.i
  store i8 0, ptr %i.l, align 1, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #14
  tail call void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void
}

declare void @_ZNKSt10filesystem7__cxx114path11parent_pathEv(ptr dead_on_unwind writable sret(%"class.std::filesystem::__cxx11::path") align 8, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN4mold9open_fileINS_6X86_64EEEPNS_10MappedFileERNS_7ContextIT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat {
bb.a:
  %2 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2928
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14, !noalias !93
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef %i.k, i64 noundef %i.h, ptr noundef nonnull @.str.1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.l = load ptr, ptr %1, align 8, !tbaa !25
  %i.m = load i64, ptr %i.a, align 8, !tbaa !24
  call void @_ZN4mold10path_cleanB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %i.m, ptr %i.l)
  call void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.n = load ptr, ptr %1, align 8, !tbaa !25     ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  %i.q = load ptr, ptr %3, align 8, !tbaa !25     ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.s = icmp eq ptr %i.q, %i.r                   ; 2 uses
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

end_hunk_0
