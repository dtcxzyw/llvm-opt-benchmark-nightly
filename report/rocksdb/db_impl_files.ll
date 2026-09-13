Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/db_impl_files?download=true
inline.NumInlined: 4264
inline.NumDeleted: 1992
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZSt12construct_atIN7rocksdb10JobContext17CandidateFileInfoEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS8_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSB_DpOSC_:bb.a
  %i.v = phi ptr [ %i.u, %.noexc5 ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  switch i64 %i.p, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.w = load i8, ptr %i.n, align 1, !tbaa !40
  store i8 %i.w, ptr %i.v, align 1, !tbaa !40
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.p, ptr %i.x, align 8, !tbaa !698
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.p
  store i8 0, ptr %i.y, align 1, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !741
  %i.aa = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !698 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.ae, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  store ptr %i.aa, ptr %0, align 8, !tbaa !39
  %i.af = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.af, ptr %i.z, align 8, !tbaa !40
  %.pre13 = load i64, ptr %i.l, align 8, !tbaa !698
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %i.ag = phi i64 [ %.pre13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ac, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !698
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !741
  %i.ak = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.m
  br i1 %i.al, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.am = load i64, ptr %i.x, align 8, !tbaa !698 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !39
  %i.ap = load i64, ptr %i.m, align 8, !tbaa !40
  store i64 %i.ap, ptr %i.aj, align 8, !tbaa !40
  %.pre14 = load i64, ptr %i.x, align 8, !tbaa !698
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i
  %i.aq = phi i64 [ %i.am, %bb.i ], [ %.pre14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !698
  ret ptr %0

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.noexc6.i, %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.a
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.j
  %i.av = load i64, ptr %i.a, align 8, !tbaa !40
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  resume { ptr, i32 } %i.as
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb12FileMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(417) dereferenceable(417) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !40
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !40
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8, !tbaa !40
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN7rocksdb11InternalKeyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !40
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #29
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit

_ZN7rocksdb11InternalKeyD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !39 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN7rocksdb11InternalKeyD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !40
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #29
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit15

_ZN7rocksdb11InternalKeyD2Ev.exit15:              ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  ret void
}

; Function Attrs: nounwind
declare i64 @malloc_usable_size(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.rocksdb::JobContext::CandidateFileInfo", align 8 ; 16 uses
  %4 = alloca %"struct.rocksdb::JobContext::CandidateFileInfo", align 8 ; 12 uses
  %5 = alloca %"struct.rocksdb::JobContext::CandidateFileInfo", align 8 ; 11 uses
  %6 = alloca %"struct.rocksdb::JobContext::CandidateFileInfo", align 8 ; 10 uses
  %7 = alloca %"struct.rocksdb::JobContext::CandidateFileInfo", align 8 ; 11 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 6                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.r = icmp eq i64 %2, 0
  br i1 %i.r, label %._crit_edge, label %.lr.ph200

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEET_SG_SG_T0_.exit"
  %i.s = icmp eq i64 %i.es, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph200, !llvm.loop !1245

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa189 = phi i64 [ %i.d, %.lr.ph ], [ %i.oj, %bb.b ] ; 2 uses
  %storemerge59.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.032.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.t = add nsw i64 %.lcssa189, -2
  %i.u = lshr i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 10 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 40
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_RT0_.exit.i.i.a", %._crit_edge
  %.010.i.i.i = phi i64 [ %i.u, %._crit_edge ], [ %i.bt, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_RT0_.exit.i.i.a" ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.af = getelementptr inbounds [64 x i8], ptr %0, i64 %.010.i.i.i ; 11 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !39 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !698 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.ag, ptr %6, align 8, !tbaa !39
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !40
  store i64 %i.an, ptr %i.v, align 8, !tbaa !40
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !698
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.ao = phi ptr [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.ap = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ak, %bb.d ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.ap, ptr %i.w, align 8, !tbaa !698
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !39
  store i64 0, ptr %i.aq, align 8, !tbaa !698
  store i8 0, ptr %i.ah, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !741
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !698 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false)
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
  store ptr %i.as, ptr %i.x, align 8, !tbaa !39
  %i.az = load i64, ptr %i.at, align 8, !tbaa !40
  store i64 %i.az, ptr %i.y, align 8, !tbaa !40
  %.phi.trans.insert6.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %.pre7.i.i.i = load i64, ptr %.phi.trans.insert6.i.i.i, align 8, !tbaa !698
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit.i.i.i

_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i, %bb.e
  %i.ba = phi ptr [ %i.y, %bb.e ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i ] ; 2 uses
  %i.bb = phi i64 [ %i.aw, %bb.e ], [ %.pre7.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i ] ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 %i.bb, ptr %i.z, align 8, !tbaa !698
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !39
  store i64 0, ptr %i.bc, align 8, !tbaa !698
  store i8 0, ptr %i.at, align 8, !tbaa !40
  store ptr %i.aa, ptr %7, align 8, !tbaa !741
  %i.bd = icmp eq ptr %i.ao, %i.v
  br i1 %i.bd, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i

bb.f:                                             ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit.i.i.i
  %i.be = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.bf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit.i.i.i
  store ptr %i.ao, ptr %7, align 8, !tbaa !39
  %i.bg = load i64, ptr %i.v, align 8, !tbaa !40
  store i64 %i.bg, ptr %i.aa, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i12.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i12.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i.i, %bb.f
  store i64 %i.ap, ptr %i.ab, align 8, !tbaa !698
  store ptr %i.v, ptr %6, align 8, !tbaa !39
  store i64 0, ptr %i.w, align 8, !tbaa !698
  store i8 0, ptr %i.v, align 8, !tbaa !40
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !741
  %i.bh = icmp eq ptr %i.ba, %i.y
  br i1 %i.bh, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i13.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i12.i.i.i
  %i.bi = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.bj, i1 false)
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit14.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i13.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i12.i.i.i
  store ptr %i.ba, ptr %i.ac, align 8, !tbaa !39
  %i.bk = load i64, ptr %i.y, align 8, !tbaa !40
  store i64 %i.bk, ptr %i.ad, align 8, !tbaa !40
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit14.i.i.i

_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit14.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i13.i.i.i, %bb.g
  store i64 %i.bb, ptr %i.ae, align 8, !tbaa !698
  store ptr %i.y, ptr %i.x, align 8, !tbaa !39
  store i64 0, ptr %i.z, align 8, !tbaa !698
  store i8 0, ptr %i.y, align 8, !tbaa !40
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_T0_SH_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa189, ptr noundef align 8 %7)
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ad
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit14.i.i.i
  %i.bn = load i64, ptr %i.ad, align 8, !tbaa !40
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit14.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bp = load ptr, ptr %7, align 8, !tbaa !39    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.aa
  br i1 %i.bq, label %_ZN7rocksdb10JobContext17CandidateFileInfoD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.br = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #29
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoD2Ev.exit.i.i.i

_ZN7rocksdb10JobContext17CandidateFileInfoD2Ev.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.bt = add nsw i64 %.010.i.i.i, -1
  %i.bu = load ptr, ptr %i.x, align 8, !tbaa !39  ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.y
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15.i.i.i: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoD2Ev.exit.i.i.i
  %i.bw = load i64, ptr %i.y, align 8, !tbaa !40
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16.i.i.i: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15.i.i.i
  %i.by = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.v
  br i1 %i.bz, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_RT0_.exit.i.i.a", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16.i.i.i
  %i.ca = load i64, ptr %i.v, align 8, !tbaa !40
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #29
  br label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_RT0_.exit.i.i.a"

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_RT0_.exit.i.i.a": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i16.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i17.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br i1 %.not.i.i.i, label %.lr.ph.i9.i.preheader, label %bb.c, !llvm.loop !1246

.lr.ph.i9.i.preheader:                            ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_RT0_.exit.i.i.a"
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_SG_RT0_.exit"
  %.sroa.0.03.i.i = phi ptr [ %i.cm, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_SG_RT0_.exit" ], [ %storemerge59.lcssa, %.lr.ph.i9.i.preheader ] ; 10 uses
  %i.cm = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -64 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  store ptr %i.cc, ptr %4, align 8, !tbaa !741
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !39 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -48 ; 5 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i9.i
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -56
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !698 ; 3 uses
  %i.cs = icmp ult i64 %i.cr, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.cr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.cn, ptr %4, align 8, !tbaa !39
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !40
  store i64 %i.cu, ptr %i.cc, align 8, !tbaa !40
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -56
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !698
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.h
  %i.cv = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.cr, %bb.h ]
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -56
  store i64 %i.cv, ptr %i.cd, align 8, !tbaa !698
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !39
  store i64 0, ptr %i.cw, align 8, !tbaa !698
  store i8 0, ptr %i.co, align 8, !tbaa !40
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -32 ; 2 uses
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !741
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !39 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -16 ; 5 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !698 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 16
  call void @llvm.assume(i1 %i.dd)
  %i.de = add nuw nsw i64 %i.dc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cf, ptr noundef nonnull align 8 dereferenceable(1) %i.cz, i64 %i.de, i1 false)
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.cy, ptr %i.ce, align 8, !tbaa !39
  %i.df = load i64, ptr %i.cz, align 8, !tbaa !40
  store i64 %i.df, ptr %i.cf, align 8, !tbaa !40
  %.phi.trans.insert5.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  %.pre6.i = load i64, ptr %.phi.trans.insert5.i, align 8, !tbaa !698
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit.i

_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i, %bb.i
  %i.dg = phi i64 [ %i.dc, %bb.i ], [ %.pre6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i ]
  %i.dh = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24
  store i64 %i.dg, ptr %i.cg, align 8, !tbaa !698
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !39
  store i64 0, ptr %i.dh, align 8, !tbaa !698
  store i8 0, ptr %i.cz, align 8, !tbaa !40
  %i.di = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, ptr noundef nonnull align 8 dereferenceable(64) %0) #31 ; 0 uses
  %i.dj = ptrtoint ptr %i.cm to i64
  %i.dk = sub i64 %i.dj, %i.a                     ; 2 uses
  %i.dl = ashr exact i64 %i.dk, 6
  store ptr %i.ch, ptr %5, align 8, !tbaa !741
  %i.dm = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.cc
  br i1 %i.dn, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

bb.j:                                             ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit.i
  %i.do = load i64, ptr %i.cd, align 8, !tbaa !698 ; 3 uses
  %i.dp = icmp ult i64 %i.do, 16
  call void @llvm.assume(i1 %i.dp)
  %i.dq = add nuw nsw i64 %i.do, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ch, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.dq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit.i
  store ptr %i.dm, ptr %5, align 8, !tbaa !39
  %i.dr = load i64, ptr %i.cc, align 8, !tbaa !40
  store i64 %i.dr, ptr %i.ch, align 8, !tbaa !40
  %.pre7.i = load i64, ptr %i.cd, align 8, !tbaa !698
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i, %bb.j
  %i.ds = phi i64 [ %.pre7.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i ], [ %i.do, %bb.j ]
  store i64 %i.ds, ptr %i.ci, align 8, !tbaa !698
  store ptr %i.cc, ptr %4, align 8, !tbaa !39
  store i64 0, ptr %i.cd, align 8, !tbaa !698
  store i8 0, ptr %i.cc, align 8, !tbaa !40
  store ptr %i.ck, ptr %i.cj, align 8, !tbaa !741
  %i.dt = load ptr, ptr %i.ce, align 8, !tbaa !39 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.cf
  br i1 %i.du, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i5.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i
  %i.dv = load i64, ptr %i.cg, align 8, !tbaa !698 ; 3 uses
  %i.dw = icmp ult i64 %i.dv, 16
  call void @llvm.assume(i1 %i.dw)
  %i.dx = add nuw nsw i64 %i.dv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ck, ptr noundef nonnull align 8 dereferenceable(1) %i.cf, i64 %i.dx, i1 false)
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4.i
  store ptr %i.dt, ptr %i.cj, align 8, !tbaa !39
  %i.dy = load i64, ptr %i.cf, align 8, !tbaa !40
  store i64 %i.dy, ptr %i.ck, align 8, !tbaa !40
  %.pre8.i = load i64, ptr %i.cg, align 8, !tbaa !698
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit6.i

_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i5.i, %bb.k
  %i.dz = phi i64 [ %i.dv, %bb.k ], [ %.pre8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i5.i ]
  store i64 %i.dz, ptr %i.cl, align 8, !tbaa !698
  store ptr %i.cf, ptr %i.ce, align 8, !tbaa !39
  store i64 0, ptr %i.cg, align 8, !tbaa !698
  store i8 0, ptr %i.cf, align 8, !tbaa !40
  call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_T0_SH_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.dl, ptr noundef align 8 %5)
  %i.ea = load ptr, ptr %i.cj, align 8, !tbaa !39 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ck
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit6.i
  %i.ec = load i64, ptr %i.ck, align 8, !tbaa !40
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ee = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.ch
  br i1 %i.ef, label %_ZN7rocksdb10JobContext17CandidateFileInfoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.eg = load i64, ptr %i.ch, align 8, !tbaa !40
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #29
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoD2Ev.exit.i

_ZN7rocksdb10JobContext17CandidateFileInfoD2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.ei = load ptr, ptr %i.ce, align 8, !tbaa !39 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.cf
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoD2Ev.exit.i
  %i.ek = load i64, ptr %i.cf, align 8, !tbaa !40
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i8.i: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i
  %i.em = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.cc
  br i1 %i.en, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_SG_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i8.i
  %i.eo = load i64, ptr %i.cc, align 8, !tbaa !40
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #29
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_SG_RT0_.exit"

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_SG_RT0_.exit": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.eq = icmp sgt i64 %i.dk, 64
  br i1 %i.eq, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !1247

.lr.ph200:                                        ; preds = %.lr.ph, %bb.b
  %storemerge59194 = phi ptr [ %.sroa.032.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 13 uses
  %.060193 = phi i64 [ %i.es, %bb.b ], [ %2, %.lr.ph ]
  %i.er = phi i64 [ %i.oj, %bb.b ], [ %i.d, %.lr.ph ]
  %i.es = add nsw i64 %.060193, -1                ; 3 uses
  %i.et = lshr i64 %i.er, 1
  %i.eu = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.et ; 15 uses
  %i.ev = getelementptr inbounds i8, ptr %storemerge59194, i64 -64 ; 12 uses
  %i.ew = load i64, ptr %i.g, align 8, !tbaa !698 ; 9 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !698 ; 9 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.ew) ; 2 uses
  %i.ez = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ez, label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph200
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_T0_T1_":bb.a
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !698
  store i64 %i.mm, ptr %i.li, align 8, !tbaa !698
  %i.mn = load i64, ptr %i.ly, align 8, !tbaa !40
  store i64 %i.mn, ptr %i.la, align 8, !tbaa !40
  %.not.i5.i36 = icmp eq ptr %i.lv, null
  br i1 %.not.i5.i36, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i35
  store ptr %i.lv, ptr %i.lu, align 8, !tbaa !39
  store i64 %i.mk, ptr %i.ly, align 8, !tbaa !40
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_.exit47

bb.af:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i35, %.thread.i10.i41
  store ptr %i.ly, ptr %i.lu, align 8, !tbaa !39
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_.exit47

_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i38, %bb.ae, %bb.af
  %i.mo = phi ptr [ %.pre.i8.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i38 ], [ %i.lv, %bb.ae ], [ %i.ly, %bb.af ]
  %i.mp = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 4 uses
  store i64 0, ptr %i.mp, align 8, !tbaa !698
  store i8 0, ptr %i.mo, align 1, !tbaa !40
  %i.mq = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !39 ; 6 uses
  %i.mr = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 4 uses
  %i.ms = icmp eq ptr %i.mq, %i.mr
  %i.mt = load ptr, ptr %3, align 8, !tbaa !39    ; 6 uses
  %i.mu = icmp eq ptr %i.mt, %i.m                 ; 2 uses
  br i1 %i.ms, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_.exit47
  br i1 %i.mu, label %bb.ag, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_.exit47
  br i1 %i.mu, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.mv = load i64, ptr %i.n, align 8, !tbaa !698 ; 3 uses
  %i.mw = icmp ult i64 %i.mv, 16
  call void @llvm.assume(i1 %i.mw)
  %.not21.i.i = icmp eq ptr %3, %.sroa.0.1.i.i
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.ah, !prof !742

bb.ah:                                            ; preds = %bb.ag
  switch i64 %i.mv, label %bb.aj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.mx = load i8, ptr %i.mt, align 1, !tbaa !40
  store i8 %i.mx, ptr %i.mq, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mq, ptr align 1 %i.mt, i64 %i.mv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.my = load i64, ptr %i.n, align 8, !tbaa !698 ; 2 uses
  store i64 %i.my, ptr %i.kr, align 8, !tbaa !698
  %i.mz = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !39
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.my
  store i8 0, ptr %i.na, align 1, !tbaa !40
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.mt, ptr %.sroa.0.1.i.i, align 8, !tbaa !39
  %i.nb = load i64, ptr %i.n, align 8, !tbaa !698
  store i64 %i.nb, ptr %i.kr, align 8, !tbaa !698
  %i.nc = load i64, ptr %i.m, align 8, !tbaa !40
  store i64 %i.nc, ptr %i.mr, align 8, !tbaa !40
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.nd = load i64, ptr %i.mr, align 8, !tbaa !40
  store ptr %i.mt, ptr %.sroa.0.1.i.i, align 8, !tbaa !39
  %i.ne = load i64, ptr %i.n, align 8, !tbaa !698
  store i64 %i.ne, ptr %i.kr, align 8, !tbaa !698
  %i.nf = load i64, ptr %i.m, align 8, !tbaa !40
  store i64 %i.nf, ptr %i.mr, align 8, !tbaa !40
  %.not.i.i29 = icmp eq ptr %i.mq, null
  br i1 %.not.i.i29, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.mq, ptr %3, align 8, !tbaa !39
  store i64 %i.nd, ptr %i.m, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.m, ptr %3, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.al, %bb.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.ag
  %i.ng = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.mq, %bb.ak ], [ %i.m, %bb.al ], [ %i.mt, %bb.ag ]
  store i64 0, ptr %i.n, align 8, !tbaa !698
  store i8 0, ptr %i.ng, align 1, !tbaa !40
  %i.nh = load ptr, ptr %i.lu, align 8, !tbaa !39 ; 6 uses
  %i.ni = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 4 uses
  %i.nj = icmp eq ptr %i.nh, %i.ni
  %i.nk = load ptr, ptr %i.o, align 8, !tbaa !39  ; 6 uses
  %i.nl = icmp eq ptr %i.nk, %i.p                 ; 2 uses
  br i1 %i.nj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  br i1 %i.nl, label %bb.am, label %.thread.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  br i1 %i.nl, label %bb.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i
  %i.nm = load i64, ptr %i.q, align 8, !tbaa !698 ; 3 uses
  %i.nn = icmp ult i64 %i.nm, 16
  call void @llvm.assume(i1 %i.nn)
  %.not21.i6.i = icmp eq ptr %3, %.sroa.0.1.i.i
  br i1 %.not21.i6.i, label %_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_.exit, label %bb.an, !prof !742

bb.an:                                            ; preds = %bb.am
  switch i64 %i.nm, label %bb.ap [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i
    i64 1, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.no = load i8, ptr %i.nk, align 1, !tbaa !40
  store i8 %i.no, ptr %i.nh, align 1, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nh, ptr align 1 %i.nk, i64 %i.nm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.np = load i64, ptr %i.q, align 8, !tbaa !698 ; 2 uses
  store i64 %i.np, ptr %i.mp, align 8, !tbaa !698
  %i.nq = load ptr, ptr %i.lu, align 8, !tbaa !39
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.np
  store i8 0, ptr %i.nr, align 1, !tbaa !40
  %.pre.i8.i = load ptr, ptr %i.o, align 8, !tbaa !39
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_.exit

.thread.i10.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i
  store ptr %i.nk, ptr %i.lu, align 8, !tbaa !39
  %i.ns = load i64, ptr %i.q, align 8, !tbaa !698
  store i64 %i.ns, ptr %i.mp, align 8, !tbaa !698
  %i.nt = load i64, ptr %i.p, align 8, !tbaa !40
  store i64 %i.nt, ptr %i.ni, align 8, !tbaa !40
  br label %bb.ar

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i3.i
  %i.nu = load i64, ptr %i.ni, align 8, !tbaa !40
  store ptr %i.nk, ptr %i.lu, align 8, !tbaa !39
  %i.nv = load i64, ptr %i.q, align 8, !tbaa !698
  store i64 %i.nv, ptr %i.mp, align 8, !tbaa !698
  %i.nw = load i64, ptr %i.p, align 8, !tbaa !40
  store i64 %i.nw, ptr %i.ni, align 8, !tbaa !40
  %.not.i5.i = icmp eq ptr %i.nh, null
  br i1 %.not.i5.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i
  store ptr %i.nh, ptr %i.o, align 8, !tbaa !39
  store i64 %i.nu, ptr %i.p, align 8, !tbaa !40
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_.exit

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i4.i, %.thread.i10.i
  store ptr %i.p, ptr %i.o, align 8, !tbaa !39
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_.exit

_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_.exit: ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i, %bb.aq, %bb.ar
  %i.nx = phi ptr [ %.pre.i8.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i7.i ], [ %i.nh, %bb.aq ], [ %i.p, %bb.ar ], [ %i.nk, %bb.am ]
  store i64 0, ptr %i.q, align 8, !tbaa !698
  store i8 0, ptr %i.nx, align 1, !tbaa !40
  %i.ny = load ptr, ptr %i.o, align 8, !tbaa !39  ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.p
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_.exit
  %i.oa = load i64, ptr %i.p, align 8, !tbaa !40
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24: ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i23
  %i.oc = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.m
  br i1 %i.od, label %_ZSt4swapIN7rocksdb10JobContext17CandidateFileInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24
  %i.oe = load i64, ptr %i.m, align 8, !tbaa !40
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #29
  br label %_ZSt4swapIN7rocksdb10JobContext17CandidateFileInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit

_ZSt4swapIN7rocksdb10JobContext17CandidateFileInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.og = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i, i64 64
  br label %bb.q, !llvm.loop !1250

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEET_SG_SG_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit29.thread39.i.i"
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_T0_T1_"(ptr %.sroa.032.1.i.i, ptr %storemerge59194, i64 noundef %i.es)
  %i.oh = ptrtoint ptr %.sroa.032.1.i.i to i64
  %i.oi = sub i64 %i.oh, %i.a
  %i.oj = ashr exact i64 %i.oi, 6                 ; 3 uses
  %i.ok = icmp sgt i64 %i.oj, 16
  br i1 %i.ok, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !1245

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_SG_SG_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb10JobContext17CandidateFileInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_6DBImpl18PurgeObsoleteFilesERS3_bE3$_0EEEvT_T0_SH_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3) unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.rocksdb::JobContext::CandidateFileInfo", align 8 ; 10 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread37"
  %.041 = phi i64 [ %i.ah, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread37" ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.041, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 4 uses
  %i.f = getelementptr inbounds [64 x i8], ptr %0, i64 %i.e ; 4 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [64 x i8], ptr %0, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !698  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !698  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.j) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.m, label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %.lr.ph
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.p = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i.i) #31
  %.fr = freeze i32 %i.p                          ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.fr, 0
  br i1 %.not.i.i.i.i, label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.thread8.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit"

_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i.i: ; preds = %.lr.ph
  %i.q = sub i64 %i.j, %i.l                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread", label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit20.i.i

_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.thread8.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.s = sub i64 %i.j, %i.l                       ; 2 uses
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread", label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit20.i.i

_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit20.i.i: ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.thread8.i.i, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i.i
  %.pre-phi.i.i = phi i64 [ %i.q, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i.i ], [ %i.s, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.thread8.i.i ]
  %.not.i = icmp eq i64 %.pre-phi.i.i, 0
  br i1 %.not.i, label %bb.b, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread37"

bb.b:                                             ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit20.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.v = load i64, ptr %i.u, align 8, !tbaa !698  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !698  ; 2 uses
  %.sroa.speculated.i.i21.i.i = tail call i64 @llvm.umin.i64(i64 %i.x, i64 %i.v) ; 2 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i21.i.i, 0
  br i1 %i.y, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i25.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i22.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i22.i.i: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !39
  %i.ad = tail call i32 @memcmp(ptr noundef %i.ac, ptr noundef %i.ab, i64 noundef %.sroa.speculated.i.i21.i.i) #31 ; 2 uses
  %.not.i.i23.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i23.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i25.i.i, label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit29.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i25.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i22.i.i, %bb.b
  %i.ae = sub i64 %i.v, %i.x
  %spec.select7.i.i.i26.i.i = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.08.i.i.i27.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i26.i.i, i64 2147483647)
  %.0.i6.i.i28.i.i = trunc nsw i64 %.08.i.i.i27.i.i to i32
  br label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit29.i.i

_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit29.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i25.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i22.i.i
  %.0.i.i24.i.i = phi i32 [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i22.i.i ], [ %.0.i6.i.i28.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i25.i.i ]
  %.0.i.i24.i.i.fr = freeze i32 %.0.i.i24.i.i
  %i.af = icmp slt i32 %.0.i.i24.i.i.fr, 0
  br i1 %i.af, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread37"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit": ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ag = icmp slt i32 %.fr, 0
  br i1 %i.ag, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread37"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread": ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.thread8.i.i, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i.i, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit29.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit"
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread37"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread37": ; preds = %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit20.i.i, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit29.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread"
  %i.ah = phi i64 [ %i.g, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread" ], [ %i.e, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit" ], [ %i.e, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit29.i.i ], [ %i.e, %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit20.i.i ] ; 4 uses
  %i.ai = getelementptr inbounds [64 x i8], ptr %0, i64 %i.ah
  %i.aj = getelementptr inbounds [64 x i8], ptr %0, i64 %.041
  %i.ak = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %i.ai) #31 ; 0 uses
  %i.al = icmp slt i64 %i.ah, %i.b
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !1251

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread37", %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.ah, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESF_EEbT_T0_.exit.thread37" ] ; 5 uses
  %i.am = and i64 %2, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.ao = add nsw i64 %2, -2
  %i.ap = ashr exact i64 %i.ao, 1
  %i.aq = icmp eq i64 %.0.lcssa, %i.ap
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ar = shl nsw i64 %.0.lcssa, 1
  %i.as = or disjoint i64 %i.ar, 1                ; 2 uses
  %i.at = getelementptr inbounds [64 x i8], ptr %0, i64 %i.as
  %i.au = getelementptr inbounds [64 x i8], ptr %0, i64 %.0.lcssa
  %i.av = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7rocksdb10JobContext17CandidateFileInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.at) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.as, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.aw, ptr %4, align 8, !tbaa !741
  %i.ax = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !698 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  store ptr %i.ax, ptr %4, align 8, !tbaa !39
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !40
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !698
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.bf = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bb, %bb.f ]
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !698
  store ptr %i.ay, ptr %3, align 8, !tbaa !39
  store i64 0, ptr %i.bg, align 8, !tbaa !698
  store i8 0, ptr %i.ay, align 8, !tbaa !40
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 5 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !741
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !39 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !698 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  %i.br = add nuw nsw i64 %i.bp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.br, i1 false)
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !39
  %i.bs = load i64, ptr %i.bm, align 8, !tbaa !40
  store i64 %i.bs, ptr %i.bk, align 8, !tbaa !40
  %.phi.trans.insert42 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre43 = load i64, ptr %.phi.trans.insert42, align 8, !tbaa !698
  br label %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit

_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.bt = phi i64 [ %i.bp, %bb.g ], [ %.pre43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !698
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !39
  store i64 0, ptr %i.bu, align 8, !tbaa !698
  store i8 0, ptr %i.bm, align 8, !tbaa !40
  %i.bw = icmp sgt i64 %.1, %1
  br i1 %i.bw, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i"
  %.012.i = phi i64 [ %.0913.i, %"_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN7rocksdb6DBImpl18PurgeObsoleteFilesERNS2_10JobContextEbE3$_0EclINS_17__normal_iteratorIPNS4_17CandidateFileInfoESt6vectorISA_SaISA_EEEESA_EEbT_RT0_.exit.thread.i" ], [ %.1, %_ZN7rocksdb10JobContext17CandidateFileInfoC2EOS1_.exit ] ; 5 uses
  %.0913.in.i = add nsw i64 %.012.i, -1
  %.0913.i = sdiv i64 %.0913.in.i, 2              ; 4 uses
  %i.bx = getelementptr inbounds [64 x i8], ptr %0, i64 %.0913.i ; 5 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !698 ; 3 uses
  %i.ca = load i64, ptr %i.bh, align 8, !tbaa !698 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ca, i64 %i.bz) ; 2 uses
  %i.cb = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.cb, label %_ZStssIcSt11char_traitsIcESaIcEEDTclsr8__detailE21__char_traits_cmp_catIT0_ELi0EEERKNSt7__cxx1112basic_stringIT_S3_T1_EESB_.exit.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %.lr.ph.i
end_hunk_1
