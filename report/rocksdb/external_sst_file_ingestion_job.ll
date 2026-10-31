Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/external_sst_file_ingestion_job?download=true
inline.NumInlined: 4284
inline.NumDeleted: 1560
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE:bb.a
bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %1, align 1, !tbaa !45
  store i8 %i.n, ptr %i.m, align 1, !tbaa !45
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %2, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d, i64 noundef 0, ptr noundef %1, i64 noundef %2)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.c, %bb.g
  store i64 %i.g, ptr %i.b, align 8, !tbaa !46
  %i.o = load ptr, ptr %0, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.g
  store i8 0, ptr %i.p, align 1, !tbaa !45
  %i.q = load i64, ptr %i.b, align 8, !tbaa !46   ; 5 uses
  %i.r = sub i64 9223372036854775807, %i.q
  %i.s = icmp ult i64 %i.r, %4
  br i1 %i.s, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10

.invoke:                                          ; preds = %bb.h, %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #26
          to label %.cont unwind label %bb.n

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10: ; preds = %bb.h
  %i.t = add i64 %i.q, %4                         ; 3 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10
  %i.w = icmp ult i64 %i.q, 16
  tail call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10
  %i.x = load i64, ptr %i.a, align 8, !tbaa !45
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16
  %i.y = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i16 ]
  %.not.i.i13 = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i.i13, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12
  %.not8.i.i14 = icmp eq i64 %4, 0
  br i1 %.not8.i.i14, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.q ; 2 uses
  %cond.i.i15 = icmp eq i64 %4, 1
  br i1 %cond.i.i15, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aa = load i8, ptr %3, align 1, !tbaa !45
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !45
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %3, i64 %4, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q, i64 noundef 0, ptr noundef %3, i64 noundef %4)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %.invoke, %bb.m, %bb.g, %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %0, align 8, !tbaa !44    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !45
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ab

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.m
  store i64 %i.t, ptr %i.b, align 8, !tbaa !46
  %i.ag = load ptr, ptr %0, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.t
  store i8 0, ptr %i.ah, align 1, !tbaa !45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = load i64, ptr %i.b, align 8
  %i.e = select i1 %i.c, i64 15, i64 %i.d         ; 2 uses
  %.not = icmp ugt i64 %1, %i.e
  br i1 %.not, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.130) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = shl nuw i64 %i.e, 1                      ; 2 uses
  %i.h = icmp ult i64 %1, %i.g
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 9223372036854775807)
  %.0 = select i1 %i.h, i64 %spec.store.select.i, i64 %1 ; 2 uses
  %i.i = add nuw i64 %.0, 1                       ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !41

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.c
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #28 ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !44     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 2 uses
  switch i64 %i.o, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  ]

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.p = load i8, ptr %i.l, align 1, !tbaa !45
  store i8 %i.p, ptr %i.k, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.e, %bb.f
  %i.q = icmp eq ptr %i.l, %i.b
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.r = icmp ult i64 %i.n, 16
  tail call void @llvm.assume(i1 %i.r)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.s = load i64, ptr %i.b, align 8, !tbaa !45
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.t) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4
  store ptr %i.k, ptr %0, align 8, !tbaa !44
  store i64 %.0, ptr %i.b, align 8, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE17_M_realloc_insertIJbEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !533  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !545    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775712
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #26
  unreachable

_ZNKSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 176                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 52405522936674862)
  %i.l = select i1 %i.j, i64 52405522936674862, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 176
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 11 uses
  %i.r = load i8, ptr %2, align 1, !tbaa !177, !range !174, !noundef !175
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !46
  store i8 0, ptr %i.s, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !46
  store i8 0, ptr %i.v, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store i64 0, ptr %i.x, align 8, !tbaa !540
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr %i.z, ptr %i.y, align 8, !tbaa !541
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  store i8 %i.r, ptr %i.ab, align 8, !tbaa !544
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.du, %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE12_M_check_lenEmPKc.exit ] ; 14 uses
  %.0911.i.i.i = phi ptr [ %i.dt, %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE12_M_check_lenEmPKc.exit ] ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !tbaa !40, !alias.scope !1152
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !44, !alias.scope !1153 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !46, !alias.scope !1153 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !1154
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !44, !alias.scope !1152
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !45, !alias.scope !1153
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !45, !alias.scope !1152
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !46, !alias.scope !1153
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i.i.i.i

_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %i.al = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ah, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !tbaa !46, !alias.scope !1152
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !tbaa !44, !alias.scope !1153
  store i64 0, ptr %i.am, align 8, !tbaa !46, !alias.scope !1153
  store i8 0, ptr %i.ae, align 8, !tbaa !45, !alias.scope !1153
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !40, !alias.scope !1152
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !44, !alias.scope !1153 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !46, !alias.scope !1153 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !1154
  br label %_ZN7rocksdb12KeyRangeInfoC2EOS0_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i: ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i.i.i.i
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !44, !alias.scope !1152
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !45, !alias.scope !1153
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !45, !alias.scope !1152
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !46, !alias.scope !1153
  br label %_ZN7rocksdb12KeyRangeInfoC2EOS0_.exit.i.i.i.i.i.i

_ZN7rocksdb12KeyRangeInfoC2EOS0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i, %bb.d
  %i.az = phi i64 [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i ], [ %i.av, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !46, !alias.scope !1152
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !44, !alias.scope !1153
  store i64 0, ptr %i.ba, align 8, !tbaa !46, !alias.scope !1153
  store i8 0, ptr %i.as, align 8, !tbaa !45, !alias.scope !1153
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 144
  %i.bf = getelementptr i8, ptr %.012.i.i.i, i64 72 ; 14 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 136
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !541, !alias.scope !1152
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 144 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 160
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !1155, !alias.scope !1153
  store <2 x ptr> %i.bj, ptr %i.be, align 8, !tbaa !1155, !alias.scope !1152
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 160
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !548, !alias.scope !1153
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !548, !alias.scope !1152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false), !alias.scope !1153
  %i.bm = load i64, ptr %i.bd, align 8, !tbaa !540, !alias.scope !1153 ; 13 uses
  store i64 %i.bm, ptr %i.bc, align 8, !tbaa !540, !alias.scope !1152
  store i64 0, ptr %i.bd, align 8, !tbaa !540, !alias.scope !1153
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN7rocksdb12KeyRangeInfoC2EOS0_.exit.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 136
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !541, !alias.scope !1153 ; 13 uses
  %min.iters.check = icmp ult i64 %i.bm, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bp = shl i64 %i.bm, 3                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bf, i64 %i.bp
  %scevgep77 = getelementptr i8, ptr %i.bo, i64 %i.bp
  %bound0 = icmp ult ptr %i.bf, %scevgep77
  %bound1 = icmp ult ptr %i.bo, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check78 = icmp ult i64 %i.bm, 16
  br i1 %min.iters.check78, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bq = and i64 %i.bm, 12
  %n.vec = and i64 %i.bm, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96 ; 2 uses
  store <4 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !530, !alias.scope !1156, !noalias !1157
  store <4 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !530, !alias.scope !1156, !noalias !1157
  store <4 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !530, !alias.scope !1156, !noalias !1157
  store <4 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !530, !alias.scope !1156, !noalias !1157
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 96
  %wide.load = load <4 x ptr>, ptr %i.bv, align 8, !tbaa !530, !alias.scope !1157
  %wide.load79 = load <4 x ptr>, ptr %i.bw, align 8, !tbaa !530, !alias.scope !1157
  %wide.load80 = load <4 x ptr>, ptr %i.bx, align 8, !tbaa !530, !alias.scope !1157
  %wide.load81 = load <4 x ptr>, ptr %i.by, align 8, !tbaa !530, !alias.scope !1157
  store <4 x ptr> %wide.load, ptr %i.br, align 8, !tbaa !530, !alias.scope !1156, !noalias !1157
  store <4 x ptr> %wide.load79, ptr %i.bs, align 8, !tbaa !530, !alias.scope !1156, !noalias !1157
  store <4 x ptr> %wide.load80, ptr %i.bt, align 8, !tbaa !530, !alias.scope !1156, !noalias !1157
  store <4 x ptr> %wide.load81, ptr %i.bu, align 8, !tbaa !530, !alias.scope !1156, !noalias !1157
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1158

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec82 = and i64 %i.bm, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index83 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next85, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index83 ; 2 uses
  store <4 x ptr> splat (ptr null), ptr %i.ca, align 8, !tbaa !530, !alias.scope !1156, !noalias !1157
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index83
  %wide.load84 = load <4 x ptr>, ptr %i.cb, align 8, !tbaa !530, !alias.scope !1157
  store <4 x ptr> %wide.load84, ptr %i.ca, align 8, !tbaa !530, !alias.scope !1156, !noalias !1157
  %index.next85 = add nuw i64 %index83, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next85, %n.vec82
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1138

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n86 = icmp eq i64 %i.bm, %n.vec82
  br i1 %cmp.n86, label %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec82, %vec.epilog.middle.block ] ; 4 uses
  %i.cd = sub i64 %i.bm, %.011.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.cd, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.011.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ch, %vec.epilog.scalar.ph.prol ], [ %.011.i.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.011.i.i.i.i.i.i.i.i.prol ; 2 uses
  store ptr null, ptr %i.ce, align 8, !tbaa !530, !alias.scope !1152
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.011.i.i.i.i.i.i.i.i.prol
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !530
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !530, !alias.scope !1152
  %i.ch = add nuw i64 %.011.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1139

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.011.i.i.i.i.i.i.i.i.unr = phi i64 [ %.011.i.i.i.i.i.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ch, %vec.epilog.scalar.ph.prol ]
  %i.ci = sub i64 %.011.i.i.i.i.i.i.i.i.ph, %i.bm
  %i.cj = icmp ugt i64 %i.ci, -8
  br i1 %i.cj, label %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.dp, %vec.epilog.scalar.ph ], [ %.011.i.i.i.i.i.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.011.i.i.i.i.i.i.i.i ; 2 uses
  store ptr null, ptr %i.ck, align 8, !tbaa !530, !alias.scope !1152
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.011.i.i.i.i.i.i.i.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !530
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !530, !alias.scope !1152
  %i.cn = add nuw i64 %.011.i.i.i.i.i.i.i.i, 1    ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cn ; 2 uses
  store ptr null, ptr %i.co, align 8, !tbaa !530, !alias.scope !1152
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cn
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !530
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !530, !alias.scope !1152
  %i.cr = add nuw i64 %.011.i.i.i.i.i.i.i.i, 2    ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cr ; 2 uses
  store ptr null, ptr %i.cs, align 8, !tbaa !530, !alias.scope !1152
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cr
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !530
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !530, !alias.scope !1152
  %i.cv = add nuw i64 %.011.i.i.i.i.i.i.i.i, 3    ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cv ; 2 uses
  store ptr null, ptr %i.cw, align 8, !tbaa !530, !alias.scope !1152
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cv
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !530
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !530, !alias.scope !1152
  %i.cz = add nuw i64 %.011.i.i.i.i.i.i.i.i, 4    ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cz ; 2 uses
  store ptr null, ptr %i.da, align 8, !tbaa !530, !alias.scope !1152
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.cz
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !530
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !530, !alias.scope !1152
  %i.dd = add nuw i64 %.011.i.i.i.i.i.i.i.i, 5    ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.dd ; 2 uses
  store ptr null, ptr %i.de, align 8, !tbaa !530, !alias.scope !1152
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.dd
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !530
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !530, !alias.scope !1152
  %i.dh = add nuw i64 %.011.i.i.i.i.i.i.i.i, 6    ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.dh ; 2 uses
  store ptr null, ptr %i.di, align 8, !tbaa !530, !alias.scope !1152
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.dh
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !530
  store ptr %i.dk, ptr %i.di, align 8, !tbaa !530, !alias.scope !1152
  %i.dl = add nuw i64 %.011.i.i.i.i.i.i.i.i, 7    ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.dl ; 2 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !530, !alias.scope !1152
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.dl
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !530
  store ptr %i.do, ptr %i.dm, align 8, !tbaa !530, !alias.scope !1152
  %i.dp = add nuw i64 %.011.i.i.i.i.i.i.i.i, 8    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.7 = icmp eq i64 %i.dp, %i.bm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.7, label %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !1140

_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZN7rocksdb12KeyRangeInfoC2EOS0_.exit.i.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 168
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 168
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !544, !range !174, !alias.scope !1153, !noundef !175
  store i8 %i.ds, ptr %i.dq, align 8, !tbaa !544, !alias.scope !1152
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 176 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dt, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1141

_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.du, %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 176 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit45, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i42
  %.012.i.i.i28 = phi ptr [ %i.ho, %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i42 ], [ %i.dv, %_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 14 uses
  %.0911.i.i.i29 = phi ptr [ %i.hn, %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i42 ], [ %1, %_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.dw, ptr %.012.i.i.i28, align 8, !tbaa !40, !alias.scope !1159
  %i.dx = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !44, !alias.scope !1160 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  br i1 %i.dz, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i30

bb.e:                                             ; preds = %.lr.ph.i.i.i27
  %i.ea = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !46, !alias.scope !1160 ; 3 uses
  %i.ec = icmp ult i64 %i.eb, 16
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = add nuw nsw i64 %i.eb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dw, ptr noundef nonnull align 8 dereferenceable(1) %i.dy, i64 %i.ed, i1 false), !alias.scope !1161
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.dx, ptr %.012.i.i.i28, align 8, !tbaa !44, !alias.scope !1159
  %i.ee = load i64, ptr %i.dy, align 8, !tbaa !45, !alias.scope !1160
  store i64 %i.ee, ptr %i.dw, align 8, !tbaa !45, !alias.scope !1159
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !46, !alias.scope !1160
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i.i.i.i33

_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i30, %bb.e
  %i.ef = phi i64 [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i30 ], [ %i.eb, %bb.e ]
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.ef, ptr %i.eh, align 8, !tbaa !46, !alias.scope !1159
  store ptr %i.dy, ptr %.0911.i.i.i29, align 8, !tbaa !44, !alias.scope !1160
  store i64 0, ptr %i.eg, align 8, !tbaa !46, !alias.scope !1160
  store i8 0, ptr %i.dy, align 8, !tbaa !45, !alias.scope !1160
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 3 uses
  store ptr %i.ek, ptr %i.ei, align 8, !tbaa !40, !alias.scope !1159
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !44, !alias.scope !1160 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 5 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i34

bb.f:                                             ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i.i.i.i33
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !46, !alias.scope !1160 ; 3 uses
  %i.eq = icmp ult i64 %i.ep, 16
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = add nuw nsw i64 %i.ep, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ek, ptr noundef nonnull align 8 dereferenceable(1) %i.em, i64 %i.er, i1 false), !alias.scope !1161
  br label %_ZN7rocksdb12KeyRangeInfoC2EOS0_.exit.i.i.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i34: ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i.i.i.i33
  store ptr %i.el, ptr %i.ei, align 8, !tbaa !44, !alias.scope !1159
  %i.es = load i64, ptr %i.em, align 8, !tbaa !45, !alias.scope !1160
  store i64 %i.es, ptr %i.ek, align 8, !tbaa !45, !alias.scope !1159
  %.phi.trans.insert5.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %.pre6.i.i.i.i36 = load i64, ptr %.phi.trans.insert5.i.i.i.i35, align 8, !tbaa !46, !alias.scope !1160
  br label %_ZN7rocksdb12KeyRangeInfoC2EOS0_.exit.i.i.i.i.i.i37

_ZN7rocksdb12KeyRangeInfoC2EOS0_.exit.i.i.i.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i34, %bb.f
  %i.et = phi i64 [ %.pre6.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i.i.i.i34 ], [ %i.ep, %bb.f ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.ev = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  store i64 %i.et, ptr %i.ev, align 8, !tbaa !46, !alias.scope !1159
  store ptr %i.em, ptr %i.ej, align 8, !tbaa !44, !alias.scope !1160
  store i64 0, ptr %i.eu, align 8, !tbaa !46, !alias.scope !1160
  store i8 0, ptr %i.em, align 8, !tbaa !45, !alias.scope !1160
  %i.ew = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 64 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 144
  %i.ez = getelementptr i8, ptr %.012.i.i.i28, i64 72 ; 14 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 136
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !541, !alias.scope !1159
  %i.fb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 144 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 160
  %i.fd = load <2 x ptr>, ptr %i.fb, align 8, !tbaa !1155, !alias.scope !1160
  store <2 x ptr> %i.fd, ptr %i.ey, align 8, !tbaa !1155, !alias.scope !1159
  %i.fe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 160
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !548, !alias.scope !1160
  store ptr %i.ff, ptr %i.fc, align 8, !tbaa !548, !alias.scope !1159
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fb, i8 0, i64 24, i1 false), !alias.scope !1160
  %i.fg = load i64, ptr %i.ex, align 8, !tbaa !540, !alias.scope !1160 ; 13 uses
  store i64 %i.fg, ptr %i.ew, align 8, !tbaa !540, !alias.scope !1159
  store i64 0, ptr %i.ex, align 8, !tbaa !540, !alias.scope !1160
  %.not.i.i.i.i.i.i.i.i38 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i.i.i.i.i.i38, label %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i42, label %iter.check107

iter.check107:                                    ; preds = %_ZN7rocksdb12KeyRangeInfoC2EOS0_.exit.i.i.i.i.i.i37
  %i.fh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 136
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !541, !alias.scope !1160 ; 13 uses
  %min.iters.check93 = icmp ult i64 %i.fg, 4
  br i1 %min.iters.check93, label %vec.epilog.scalar.ph109.preheader, label %vector.memcheck87

vector.memcheck87:                                ; preds = %iter.check107
  %i.fj = shl i64 %i.fg, 3                        ; 2 uses
  %scevgep88 = getelementptr i8, ptr %i.ez, i64 %i.fj
  %scevgep89 = getelementptr i8, ptr %i.fi, i64 %i.fj
  %bound090 = icmp ult ptr %i.ez, %scevgep89
  %bound191 = icmp ult ptr %i.fi, %scevgep88
  %found.conflict92 = and i1 %bound090, %bound191
  br i1 %found.conflict92, label %vec.epilog.scalar.ph109.preheader, label %vector.main.loop.iter.check94

vector.main.loop.iter.check94:                    ; preds = %vector.memcheck87
  %min.iters.check95 = icmp ult i64 %i.fg, 16
  br i1 %min.iters.check95, label %vec.epilog.ph111, label %vector.ph96

vector.ph96:                                      ; preds = %vector.main.loop.iter.check94
  %i.fk = and i64 %i.fg, 12
  %n.vec97 = and i64 %i.fg, -16                   ; 4 uses
  br label %vector.body98

vector.body98:                                    ; preds = %vector.ph96, %vector.body98
  %index99 = phi i64 [ 0, %vector.ph96 ], [ %index.next104, %vector.body98 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index99 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 64 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 96 ; 2 uses
  store <4 x ptr> splat (ptr null), ptr %i.fl, align 8, !tbaa !530, !alias.scope !1162, !noalias !1163
  store <4 x ptr> splat (ptr null), ptr %i.fm, align 8, !tbaa !530, !alias.scope !1162, !noalias !1163
  store <4 x ptr> splat (ptr null), ptr %i.fn, align 8, !tbaa !530, !alias.scope !1162, !noalias !1163
  store <4 x ptr> splat (ptr null), ptr %i.fo, align 8, !tbaa !530, !alias.scope !1162, !noalias !1163
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %index99 ; 4 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 96
  %wide.load100 = load <4 x ptr>, ptr %i.fp, align 8, !tbaa !530, !alias.scope !1163
  %wide.load101 = load <4 x ptr>, ptr %i.fq, align 8, !tbaa !530, !alias.scope !1163
  %wide.load102 = load <4 x ptr>, ptr %i.fr, align 8, !tbaa !530, !alias.scope !1163
  %wide.load103 = load <4 x ptr>, ptr %i.fs, align 8, !tbaa !530, !alias.scope !1163
  store <4 x ptr> %wide.load100, ptr %i.fl, align 8, !tbaa !530, !alias.scope !1162, !noalias !1163
  store <4 x ptr> %wide.load101, ptr %i.fm, align 8, !tbaa !530, !alias.scope !1162, !noalias !1163
  store <4 x ptr> %wide.load102, ptr %i.fn, align 8, !tbaa !530, !alias.scope !1162, !noalias !1163
  store <4 x ptr> %wide.load103, ptr %i.fo, align 8, !tbaa !530, !alias.scope !1162, !noalias !1163
  %index.next104 = add nuw i64 %index99, 16       ; 2 uses
  %i.ft = icmp eq i64 %index.next104, %n.vec97
  br i1 %i.ft, label %middle.block105, label %vector.body98, !llvm.loop !1148

middle.block105:                                  ; preds = %vector.body98
  %cmp.n106 = icmp eq i64 %i.fg, %n.vec97
  br i1 %cmp.n106, label %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i42, label %vec.epilog.iter.check108

vec.epilog.iter.check108:                         ; preds = %middle.block105
  %min.epilog.iters.check110 = icmp eq i64 %i.fk, 0
  br i1 %min.epilog.iters.check110, label %vec.epilog.scalar.ph109.preheader, label %vec.epilog.ph111, !prof !1158

vec.epilog.ph111:                                 ; preds = %vector.main.loop.iter.check94, %vec.epilog.iter.check108
  %vec.epilog.resume.val112 = phi i64 [ %n.vec97, %vec.epilog.iter.check108 ], [ 0, %vector.main.loop.iter.check94 ]
  %n.vec113 = and i64 %i.fg, -4                   ; 3 uses
  br label %vec.epilog.vector.body114

vec.epilog.vector.body114:                        ; preds = %vec.epilog.vector.body114, %vec.epilog.ph111
  %index115 = phi i64 [ %vec.epilog.resume.val112, %vec.epilog.ph111 ], [ %index.next117, %vec.epilog.vector.body114 ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index115 ; 2 uses
  store <4 x ptr> splat (ptr null), ptr %i.fu, align 8, !tbaa !530, !alias.scope !1162, !noalias !1163
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %index115
  %wide.load116 = load <4 x ptr>, ptr %i.fv, align 8, !tbaa !530, !alias.scope !1163
  store <4 x ptr> %wide.load116, ptr %i.fu, align 8, !tbaa !530, !alias.scope !1162, !noalias !1163
  %index.next117 = add nuw i64 %index115, 4       ; 2 uses
  %i.fw = icmp eq i64 %index.next117, %n.vec113
  br i1 %i.fw, label %vec.epilog.middle.block118, label %vec.epilog.vector.body114, !llvm.loop !1149

vec.epilog.middle.block118:                       ; preds = %vec.epilog.vector.body114
  %cmp.n119 = icmp eq i64 %i.fg, %n.vec113
  br i1 %cmp.n119, label %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i42, label %vec.epilog.scalar.ph109.preheader

vec.epilog.scalar.ph109.preheader:                ; preds = %iter.check107, %vector.memcheck87, %vec.epilog.iter.check108, %vec.epilog.middle.block118
  %.011.i.i.i.i.i.i.i.i40.ph = phi i64 [ 0, %iter.check107 ], [ 0, %vector.memcheck87 ], [ %n.vec97, %vec.epilog.iter.check108 ], [ %n.vec113, %vec.epilog.middle.block118 ] ; 4 uses
  %i.fx = sub i64 %i.fg, %.011.i.i.i.i.i.i.i.i40.ph
  %xtraiter122 = and i64 %i.fx, 7                 ; 2 uses
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  br i1 %lcmp.mod123.not, label %vec.epilog.scalar.ph109.prol.loopexit, label %vec.epilog.scalar.ph109.prol

vec.epilog.scalar.ph109.prol:                     ; preds = %vec.epilog.scalar.ph109.preheader, %vec.epilog.scalar.ph109.prol
  %.011.i.i.i.i.i.i.i.i40.prol = phi i64 [ %i.gb, %vec.epilog.scalar.ph109.prol ], [ %.011.i.i.i.i.i.i.i.i40.ph, %vec.epilog.scalar.ph109.preheader ] ; 3 uses
  %prol.iter124 = phi i64 [ %prol.iter124.next, %vec.epilog.scalar.ph109.prol ], [ 0, %vec.epilog.scalar.ph109.preheader ]
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.011.i.i.i.i.i.i.i.i40.prol ; 2 uses
  store ptr null, ptr %i.fy, align 8, !tbaa !530, !alias.scope !1159
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.011.i.i.i.i.i.i.i.i40.prol
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !530
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !530, !alias.scope !1159
  %i.gb = add nuw i64 %.011.i.i.i.i.i.i.i.i40.prol, 1 ; 2 uses
  %prol.iter124.next = add i64 %prol.iter124, 1   ; 2 uses
  %prol.iter124.cmp.not = icmp eq i64 %prol.iter124.next, %xtraiter122
  br i1 %prol.iter124.cmp.not, label %vec.epilog.scalar.ph109.prol.loopexit, label %vec.epilog.scalar.ph109.prol, !llvm.loop !1150

vec.epilog.scalar.ph109.prol.loopexit:            ; preds = %vec.epilog.scalar.ph109.prol, %vec.epilog.scalar.ph109.preheader
  %.011.i.i.i.i.i.i.i.i40.unr = phi i64 [ %.011.i.i.i.i.i.i.i.i40.ph, %vec.epilog.scalar.ph109.preheader ], [ %i.gb, %vec.epilog.scalar.ph109.prol ]
  %i.gc = sub i64 %.011.i.i.i.i.i.i.i.i40.ph, %i.fg
  %i.gd = icmp ugt i64 %i.gc, -8
  br i1 %i.gd, label %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i42, label %vec.epilog.scalar.ph109

vec.epilog.scalar.ph109:                          ; preds = %vec.epilog.scalar.ph109.prol.loopexit, %vec.epilog.scalar.ph109
  %.011.i.i.i.i.i.i.i.i40 = phi i64 [ %i.hj, %vec.epilog.scalar.ph109 ], [ %.011.i.i.i.i.i.i.i.i40.unr, %vec.epilog.scalar.ph109.prol.loopexit ] ; 10 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.011.i.i.i.i.i.i.i.i40 ; 2 uses
  store ptr null, ptr %i.ge, align 8, !tbaa !530, !alias.scope !1159
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.011.i.i.i.i.i.i.i.i40
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !530
  store ptr %i.gg, ptr %i.ge, align 8, !tbaa !530, !alias.scope !1159
  %i.gh = add nuw i64 %.011.i.i.i.i.i.i.i.i40, 1  ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.gh ; 2 uses
  store ptr null, ptr %i.gi, align 8, !tbaa !530, !alias.scope !1159
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.gh
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !530
  store ptr %i.gk, ptr %i.gi, align 8, !tbaa !530, !alias.scope !1159
  %i.gl = add nuw i64 %.011.i.i.i.i.i.i.i.i40, 2  ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.gl ; 2 uses
  store ptr null, ptr %i.gm, align 8, !tbaa !530, !alias.scope !1159
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.gl
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !530
  store ptr %i.go, ptr %i.gm, align 8, !tbaa !530, !alias.scope !1159
  %i.gp = add nuw i64 %.011.i.i.i.i.i.i.i.i40, 3  ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.gp ; 2 uses
  store ptr null, ptr %i.gq, align 8, !tbaa !530, !alias.scope !1159
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.gp
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !530
  store ptr %i.gs, ptr %i.gq, align 8, !tbaa !530, !alias.scope !1159
  %i.gt = add nuw i64 %.011.i.i.i.i.i.i.i.i40, 4  ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.gt ; 2 uses
  store ptr null, ptr %i.gu, align 8, !tbaa !530, !alias.scope !1159
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.gt
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !530
  store ptr %i.gw, ptr %i.gu, align 8, !tbaa !530, !alias.scope !1159
  %i.gx = add nuw i64 %.011.i.i.i.i.i.i.i.i40, 5  ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.gx ; 2 uses
  store ptr null, ptr %i.gy, align 8, !tbaa !530, !alias.scope !1159
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.gx
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !530
  store ptr %i.ha, ptr %i.gy, align 8, !tbaa !530, !alias.scope !1159
  %i.hb = add nuw i64 %.011.i.i.i.i.i.i.i.i40, 6  ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.hb ; 2 uses
  store ptr null, ptr %i.hc, align 8, !tbaa !530, !alias.scope !1159
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.hb
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !530
  store ptr %i.he, ptr %i.hc, align 8, !tbaa !530, !alias.scope !1159
  %i.hf = add nuw i64 %.011.i.i.i.i.i.i.i.i40, 7  ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.hf ; 2 uses
  store ptr null, ptr %i.hg, align 8, !tbaa !530, !alias.scope !1159
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.hf
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !530
  store ptr %i.hi, ptr %i.hg, align 8, !tbaa !530, !alias.scope !1159
  %i.hj = add nuw i64 %.011.i.i.i.i.i.i.i.i40, 8  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i41.7 = icmp eq i64 %i.hj, %i.fg
  br i1 %exitcond.not.i.i.i.i.i.i.i.i41.7, label %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i42, label %vec.epilog.scalar.ph109, !llvm.loop !1151

_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i42: ; preds = %vec.epilog.scalar.ph109.prol.loopexit, %vec.epilog.scalar.ph109, %middle.block105, %vec.epilog.middle.block118, %_ZN7rocksdb12KeyRangeInfoC2EOS0_.exit.i.i.i.i.i.i37
  %i.hk = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 168
  %i.hl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 168
  %i.hm = load i8, ptr %i.hl, align 8, !tbaa !544, !range !174, !alias.scope !1160, !noundef !175
  store i8 %i.hm, ptr %i.hk, align 8, !tbaa !544, !alias.scope !1159
  %i.hn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 176 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 176 ; 2 uses
  %.not.i.i.i43 = icmp eq ptr %i.hn, %i.b
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit45, label %.lr.ph.i.i.i27, !llvm.loop !1141

_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit45: ; preds = %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i42, %_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i44 = phi ptr [ %i.dv, %_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ho, %_ZSt19__relocate_object_aIN7rocksdb13FileBatchInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i42 ]
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i46 = icmp eq ptr %i.c, null
  br i1 %.not.i46, label %_ZNSt12_Vector_baseIN7rocksdb13FileBatchInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit45
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !534
  %i.hr = ptrtoint ptr %i.hq to i64
  %i.hs = sub i64 %i.hr, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.hs) #29
  br label %_ZNSt12_Vector_baseIN7rocksdb13FileBatchInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN7rocksdb13FileBatchInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN7rocksdb13FileBatchInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit45, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !545
  store ptr %.0.lcssa.i.i.i44, ptr %i.a, align 8, !tbaa !533
  %i.ht = getelementptr inbounds nuw [176 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ht, ptr %i.hp, align 8, !tbaa !534
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb10autovectorIPNS_16IngestedFileInfoELm8EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !540    ; 3 uses
  %i.b = icmp ult i64 %i.a, 8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !541
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !530
  %i.f = load ptr, ptr %1, align 8, !tbaa !530
  %i.g = add nuw nsw i64 %i.a, 1
  store i64 %i.g, ptr %0, align 8, !tbaa !540
  store ptr %i.f, ptr %i.e, align 8, !tbaa !530
  br label %_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE9push_backERKS2_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !547  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !548
  %.not.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !530
  store ptr %i.m, ptr %i.j, align 8, !tbaa !530
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.i, align 8, !tbaa !547
  br label %_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !546  ; 4 uses
  %i.p = ptrtoint ptr %i.j to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.132) #26
  unreachable

_ZNKSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #28 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  %i.ab = load ptr, ptr %1, align 8, !tbaa !530
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !530
  %i.ac = icmp sgt i64 %i.r, 0
  br i1 %i.ac, label %bb.g, label %_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !548
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = sub i64 %i.af, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ag) #29
  br label %_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.z, ptr %i.h, align 8, !tbaa !546
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !547
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !548
  br label %_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIPN7rocksdb16IngestedFileInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN7rocksdb10autovectorIPKNS0_16IngestedFileInfoELm8EE13iterator_implIS5_S4_EElN9__gnu_cxx5__ops15_Iter_comp_iterINS0_24ExternalFileRangeCheckerEEEEvT_SD_T0_T1_(ptr noundef align 8 %0, ptr noundef align 8 %1, i64 noundef %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %5 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %6 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %7 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %8 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %9 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %10 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %11 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 9 uses
  %12 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %13 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %14 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 4 uses
  %15 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 5 uses
  %16 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 2 uses
  %17 = alloca %"class.rocksdb::autovector<const rocksdb::IngestedFileInfo *>::iterator_impl", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !756  ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !756
  %.sroa.25.0.copyload.fr.i43 = freeze i64 %i.d   ; 3 uses
  %i.e = sub i64 %i.c, %.sroa.25.0.copyload.fr.i43 ; 2 uses
  %i.f = icmp sgt i64 %i.e, 16
  br i1 %i.f, label %.lr.ph, label %.loopexit40

.lr.ph:                                           ; preds = %bb.a
  %.sroa.5.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.3.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = icmp eq i64 %2, 0
  br i1 %i.j, label %.noexc, label %.noexc15

bb.b:                                             ; preds = %.noexc15
  %i.k = icmp eq i64 %i.ax, 0
  br i1 %i.k, label %.noexc, label %.noexc15, !llvm.loop !1164

.noexc:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.25.0.copyload.fr.i45.lcssa = phi i64 [ %.sroa.25.0.copyload.fr.i43, %.lr.ph ], [ %.sroa.25.0.copyload.fr.i, %bb.b ] ; 9 uses
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.bc, %bb.b ] ; 4 uses
  %.sroa.034.0.copyload = load ptr, ptr %0, align 8, !tbaa !532 ; 5 uses
  %.sroa.029.0.copyload = load ptr, ptr %1, align 8, !tbaa !532 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr %.sroa.034.0.copyload, ptr %12, align 8, !tbaa !532
  %.sroa.336.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %.sroa.25.0.copyload.fr.i45.lcssa, ptr %.sroa.336.0..sroa_idx37, align 8, !tbaa !411
  store ptr %.sroa.029.0.copyload, ptr %13, align 8, !tbaa !532
  %.sroa.331.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.lcssa, ptr %.sroa.331.0..sroa_idx32, align 8, !tbaa !411
  call void @_ZSt13__heap_selectIN7rocksdb10autovectorIPKNS0_16IngestedFileInfoELm8EE13iterator_implIS5_S4_EEN9__gnu_cxx5__ops15_Iter_comp_iterINS0_24ExternalFileRangeCheckerEEEEvT_SD_SD_T0_(ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 %13, ptr noundef nonnull align 8 %14, ptr %3)
  %i.l = sub i64 %.lcssa, %.sroa.25.0.copyload.fr.i45.lcssa
  %i.m = icmp sgt i64 %i.l, 1
  br i1 %i.m, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.noexc
  %.sroa.3.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.029.0.copyload, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.029.0.copyload, i64 80 ; 2 uses
  %i.p = icmp ult i64 %.sroa.25.0.copyload.fr.i45.lcssa, 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.034.0.copyload, i64 80
  br i1 %i.p, label %.noexc.us.i, label %.noexc.i

.noexc.us.i:                                      ; preds = %.lr.ph.i.i, %.noexc.us.i
  %i.s = phi i64 [ %i.t, %.noexc.us.i ], [ %.lcssa, %.lr.ph.i.i ]
  %i.t = add i64 %i.s, -1                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.u = icmp ult i64 %i.t, 8
  %i.v = load ptr, ptr %i.n, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  %i.x = load ptr, ptr %i.o, align 8
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %i.t
  %i.z = getelementptr i8, ptr %i.y, i64 -64
  %.0.i.i.i.i.us.i = select i1 %i.u, ptr %i.w, ptr %i.z ; 2 uses
  %i.aa = load ptr, ptr %.0.i.i.i.i.us.i, align 8, !tbaa !530
  %i.ab = load ptr, ptr %i.q, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.25.0.copyload.fr.i45.lcssa
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !530
  store ptr %i.ad, ptr %.0.i.i.i.i.us.i, align 8, !tbaa !530
  store ptr %.sroa.034.0.copyload, ptr %11, align 8, !tbaa !532
end_hunk_0
