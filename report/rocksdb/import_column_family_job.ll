Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/import_column_family_job?download=true
inline.NumInlined: 2188
inline.NumDeleted: 913
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorIN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bz) #25
  br label %_ZNSt12_Vector_baseIN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit40, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !192
  store ptr %.0.lcssa.i.i.i39, ptr %i.a, align 8, !tbaa !189
  %i.ca = getelementptr inbounds nuw [64 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ca, ptr %i.bw, align 8, !tbaa !190
  ret void

bb.h:                                             ; preds = %bb.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZNKSt6vectorIN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = tail call ptr @__cxa_begin_catch(ptr %i.cd) #26 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #25
  invoke void @__cxa_rethrow() #27
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.cb

bb.k:                                             ; preds = %bb.h
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  tail call void @__clang_call_terminate(ptr %i.cg) #30
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !36
  %i.b = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !37   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #27
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !45

.noexc6.i.i:                                      ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #28 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !31
  store i64 %i.d, ptr %i.a, align 8, !tbaa !32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.j = phi ptr [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN7rocksdb11InternalKeyC2ERKS0_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.k = load i8, ptr %i.b, align 1, !tbaa !32
  store i8 %i.k, ptr %i.j, align 1, !tbaa !32
  br label %_ZN7rocksdb11InternalKeyC2ERKS0_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZN7rocksdb11InternalKeyC2ERKS0_.exit

_ZN7rocksdb11InternalKeyC2ERKS0_.exit:            ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.d
  store i8 0, ptr %i.m, align 1, !tbaa !32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !36
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37   ; 8 uses
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.f, label %._crit_edge.i.i.i4

bb.f:                                             ; preds = %_ZN7rocksdb11InternalKeyC2ERKS0_.exit
  %i.u = icmp slt i64 %i.s, 0
  br i1 %i.u, label %.noexc.i.i7, label %bb.g

.noexc.i.i7:                                      ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.54) #27
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i7
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i64 %i.s, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %.noexc6.i.i6, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i5, !prof !45

.noexc6.i.i6:                                     ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc8 unwind label %bb.k

.noexc8:                                          ; preds = %.noexc6.i.i6
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i5: ; preds = %bb.g
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28
          to label %.noexc9 unwind label %bb.k    ; 2 uses

.noexc9:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i5
  store ptr %i.x, ptr %i.n, align 8, !tbaa !31
  store i64 %i.s, ptr %i.p, align 8, !tbaa !32
  br label %._crit_edge.i.i.i4

._crit_edge.i.i.i4:                               ; preds = %.noexc9, %_ZN7rocksdb11InternalKeyC2ERKS0_.exit
  %i.y = phi ptr [ %i.x, %.noexc9 ], [ %i.p, %_ZN7rocksdb11InternalKeyC2ERKS0_.exit ] ; 3 uses
  switch i64 %i.s, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i4
  %i.z = load i8, ptr %i.q, align 1, !tbaa !32
  store i8 %i.z, ptr %i.y, align 1, !tbaa !32
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.s, ptr %i.aa, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store i8 0, ptr %i.ab, align 1, !tbaa !32
  ret void

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i5, %.noexc6.i.i6, %.noexc.i.i7
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.a
  br i1 %i.ae, label %_ZN7rocksdb11InternalKeyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.af = load i64, ptr %i.a, align 8, !tbaa !32
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #25
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit

_ZN7rocksdb11InternalKeyD2Ev.exit:                ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.rocksdb::ImportColumnFamilyJob::ColumnFamilyIngestFileInfo", align 8 ; 16 uses
  %5 = alloca %"struct.rocksdb::ImportColumnFamilyJob::ColumnFamilyIngestFileInfo", align 8 ; 14 uses
  %6 = alloca %"struct.rocksdb::ImportColumnFamilyJob::ColumnFamilyIngestFileInfo", align 8 ; 12 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %13 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %16 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %17 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %19 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 5 uses
  %21 = alloca %"struct.rocksdb::ImportColumnFamilyJob::ColumnFamilyIngestFileInfo", align 8 ; 12 uses
  %22 = alloca %"struct.rocksdb::ImportColumnFamilyJob::ColumnFamilyIngestFileInfo", align 8 ; 12 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 6                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr i8, ptr %3, i64 16         ; 6 uses
  %i.h = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.s = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 11 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 6 uses
  %i.ac = icmp eq i64 %2, 0
  br i1 %i.ac, label %._crit_edge, label %.lr.ph167

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEET_SG_SG_T0_.exit"
  %i.ad = icmp eq i64 %i.ff, 0
  br i1 %i.ad, label %._crit_edge, label %.lr.ph167, !llvm.loop !803

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa161 = phi i64 [ %i.d, %.lr.ph ], [ %i.lq, %bb.b ] ; 2 uses
  %storemerge59.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.018.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  %i.ae = add nsw i64 %.lcssa161, -2
  %i.af = lshr i64 %i.ae, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 10 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %22, i64 48 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %22, i64 40
  br label %bb.c

bb.c:                                             ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit20.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.af, %._crit_edge ], [ %i.ce, %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit20.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #26
  %i.aq = getelementptr inbounds [64 x i8], ptr %0, i64 %.010.i.i.i ; 11 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !31 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !37 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false)
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.ar, ptr %21, align 8, !tbaa !31
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !32
  store i64 %i.ay, ptr %i.ag, align 8, !tbaa !32
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !37
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i

_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i:     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.d
  %i.az = phi ptr [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ba = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.av, %bb.d ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %i.ba, ptr %i.ah, align 8, !tbaa !37
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !31
  store i64 0, ptr %i.bb, align 8, !tbaa !37
  store i8 0, ptr %i.as, align 8, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 2 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !36
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 5 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i

bb.e:                                             ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !37 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i64 %i.bh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.bj, i1 false)
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i: ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i.i.i
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !31
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !32
  store i64 %i.bk, ptr %i.aj, align 8, !tbaa !32
  %.phi.trans.insert26.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %.pre27.i.i.i = load i64, ptr %.phi.trans.insert26.i.i.i, align 8, !tbaa !37
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit.i.i.i

_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i, %bb.e
  %i.bl = phi ptr [ %i.aj, %bb.e ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i ] ; 2 uses
  %i.bm = phi i64 [ %i.bh, %bb.e ], [ %.pre27.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i.i.i ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 %i.bm, ptr %i.ak, align 8, !tbaa !37
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !31
  store i64 0, ptr %i.bn, align 8, !tbaa !37
  store i8 0, ptr %i.be, align 8, !tbaa !32
  store ptr %i.al, ptr %22, align 8, !tbaa !36
  %i.bo = icmp eq ptr %i.az, %i.ag
  br i1 %i.bo, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i.i

bb.f:                                             ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit.i.i.i
  %i.bp = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.bq, i1 false)
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i.i: ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit.i.i.i
  store ptr %i.az, ptr %22, align 8, !tbaa !31
  %i.br = load i64, ptr %i.ag, align 8, !tbaa !32
  store i64 %i.br, ptr %i.al, align 8, !tbaa !32
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i12.i.i.i

_ZN7rocksdb11InternalKeyC2EOS0_.exit.i12.i.i.i:   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i.i, %bb.f
  store i64 %i.ba, ptr %i.am, align 8, !tbaa !37
  store ptr %i.ag, ptr %21, align 8, !tbaa !31
  store i64 0, ptr %i.ah, align 8, !tbaa !37
  store i8 0, ptr %i.ag, align 8, !tbaa !32
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !36
  %i.bs = icmp eq ptr %i.bl, %i.aj
  br i1 %i.bs, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i13.i.i.i

bb.g:                                             ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i12.i.i.i
  %i.bt = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bt)
  %i.bu = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.bu, i1 false)
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit14.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i13.i.i.i: ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i12.i.i.i
  store ptr %i.bl, ptr %i.an, align 8, !tbaa !31
  %i.bv = load i64, ptr %i.aj, align 8, !tbaa !32
  store i64 %i.bv, ptr %i.ao, align 8, !tbaa !32
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit14.i.i.i

_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit14.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i13.i.i.i, %bb.g
  store i64 %i.bm, ptr %i.ap, align 8, !tbaa !37
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !31
  store i64 0, ptr %i.ak, align 8, !tbaa !37
  store i8 0, ptr %i.aj, align 8, !tbaa !32
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_T0_SH_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa161, ptr noundef align 8 %22, ptr %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit14.i.i.i
  %i.bw = load ptr, ptr %i.an, align 8, !tbaa !31 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.ao
  br i1 %i.bx, label %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.by = load i64, ptr %i.ao, align 8, !tbaa !32
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.bz) #25
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i.i.i

_ZN7rocksdb11InternalKeyD2Ev.exit.i.i.i.i:        ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ca = load ptr, ptr %22, align 8, !tbaa !31   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.al
  br i1 %i.cb, label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i.i.i
  %i.cc = load i64, ptr %i.al, align 8, !tbaa !32
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #25
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit.i.i.i

_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit.i.i.i: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.ce = add nsw i64 %.010.i.i.i, -1
  %i.cf = load ptr, ptr %i.ai, align 8, !tbaa !31 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.aj
  br i1 %i.cg, label %_ZN7rocksdb11InternalKeyD2Ev.exit.i16.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15.i.i.i: ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit.i.i.i
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !32
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #25
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit.i16.i.i.i

_ZN7rocksdb11InternalKeyD2Ev.exit.i16.i.i.i:      ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i15.i.i.i
  %i.cj = load ptr, ptr %21, align 8, !tbaa !31   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ag
  br i1 %i.ck, label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit20.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i17.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i17.i.i.i: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i16.i.i.i
  %i.cl = load i64, ptr %i.ag, align 8, !tbaa !32
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #25
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit20.i.i.i

_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit20.i.i.i: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i16.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i17.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br i1 %.not.i.i.i, label %.lr.ph.i9.i.preheader, label %bb.c, !llvm.loop !804

common.resume:                                    ; preds = %bb.o, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.cn, %bb.i ], [ %i.fc, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit14.i.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %22) #26
  call void @_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %21) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  br label %common.resume

.lr.ph.i9.i.preheader:                            ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit20.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 10 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 10 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 40
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %.lr.ph.i9.i.preheader, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_SG_RT0_.exit"
  %.sroa.0.05.i.i = phi ptr [ %i.cy, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_SG_RT0_.exit" ], [ %storemerge59.lcssa, %.lr.ph.i9.i.preheader ] ; 10 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -64 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %i.co, ptr %5, align 8, !tbaa !36
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !31 ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -48 ; 5 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i9.i
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -56
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !37 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.de)
  %i.df = add nuw nsw i64 %i.dd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull align 8 dereferenceable(1) %i.da, i64 %i.df, i1 false)
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i9.i
  store ptr %i.cz, ptr %5, align 8, !tbaa !31
  %i.dg = load i64, ptr %i.da, align 8, !tbaa !32
  store i64 %i.dg, ptr %i.co, align 8, !tbaa !32
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -56
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !37
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i

_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i:         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.j
  %i.dh = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.dd, %bb.j ]
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -56
  store i64 %i.dh, ptr %i.cp, align 8, !tbaa !37
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !31
  store i64 0, ptr %i.di, align 8, !tbaa !37
  store i8 0, ptr %i.da, align 8, !tbaa !32
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 2 uses
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !36
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !31 ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16 ; 5 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

bb.k:                                             ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !37 ; 3 uses
  %i.dp = icmp ult i64 %i.do, 16
  call void @llvm.assume(i1 %i.dp)
  %i.dq = add nuw nsw i64 %i.do, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.dl, i64 %i.dq, i1 false)
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i.i
  store ptr %i.dk, ptr %i.cq, align 8, !tbaa !31
  %i.dr = load i64, ptr %i.dl, align 8, !tbaa !32
  store i64 %i.dr, ptr %i.cr, align 8, !tbaa !32
  %.phi.trans.insert17.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24
  %.pre18.i = load i64, ptr %.phi.trans.insert17.i, align 8, !tbaa !37
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit.i

_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i, %bb.k
  %i.ds = phi i64 [ %i.do, %bb.k ], [ %.pre18.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i ]
  %i.dt = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24
  store i64 %i.ds, ptr %i.cs, align 8, !tbaa !37
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !31
  store i64 0, ptr %i.dt, align 8, !tbaa !37
  store i8 0, ptr %i.dl, align 8, !tbaa !32
  %i.du = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.cy, ptr noundef nonnull align 8 dereferenceable(64) %0) #26 ; 0 uses
  %i.dv = ptrtoint ptr %i.cy to i64
  %i.dw = sub i64 %i.dv, %i.a                     ; 2 uses
  %i.dx = ashr exact i64 %i.dw, 6
  store ptr %i.ct, ptr %6, align 8, !tbaa !36
  %i.dy = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.co
  br i1 %i.dz, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i

bb.l:                                             ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit.i
  %i.ea = load i64, ptr %i.cp, align 8, !tbaa !37 ; 3 uses
  %i.eb = icmp ult i64 %i.ea, 16
  call void @llvm.assume(i1 %i.eb)
  %i.ec = add nuw nsw i64 %i.ea, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %i.co, i64 %i.ec, i1 false)
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i: ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit.i
  store ptr %i.dy, ptr %6, align 8, !tbaa !31
  %i.ed = load i64, ptr %i.co, align 8, !tbaa !32
  store i64 %i.ed, ptr %i.ct, align 8, !tbaa !32
  %.pre19.i = load i64, ptr %i.cp, align 8, !tbaa !37
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i4.i

_ZN7rocksdb11InternalKeyC2EOS0_.exit.i4.i:        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i, %bb.l
  %i.ee = phi i64 [ %.pre19.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i ], [ %i.ea, %bb.l ]
  store i64 %i.ee, ptr %i.cu, align 8, !tbaa !37
  store ptr %i.co, ptr %5, align 8, !tbaa !31
  store i64 0, ptr %i.cp, align 8, !tbaa !37
  store i8 0, ptr %i.co, align 8, !tbaa !32
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !36
  %i.ef = load ptr, ptr %i.cq, align 8, !tbaa !31 ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.cr
  br i1 %i.eg, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i5.i

bb.m:                                             ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i4.i
  %i.eh = load i64, ptr %i.cs, align 8, !tbaa !37 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  %i.ej = add nuw nsw i64 %i.eh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cw, ptr noundef nonnull align 8 dereferenceable(1) %i.cr, i64 %i.ej, i1 false)
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i5.i: ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i4.i
  store ptr %i.ef, ptr %i.cv, align 8, !tbaa !31
  %i.ek = load i64, ptr %i.cr, align 8, !tbaa !32
  store i64 %i.ek, ptr %i.cw, align 8, !tbaa !32
  %.pre20.i = load i64, ptr %i.cs, align 8, !tbaa !37
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit6.i

_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i5.i, %bb.m
  %i.el = phi i64 [ %i.eh, %bb.m ], [ %.pre20.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i5.i ]
  store i64 %i.el, ptr %i.cx, align 8, !tbaa !37
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !31
  store i64 0, ptr %i.cs, align 8, !tbaa !37
  store i8 0, ptr %i.cr, align 8, !tbaa !32
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_T0_SH_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.dx, ptr noundef align 8 %6, ptr %3)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit6.i
  %i.em = load ptr, ptr %i.cv, align 8, !tbaa !31 ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.cw
  br i1 %i.en, label %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.eo = load i64, ptr %i.cw, align 8, !tbaa !32
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #25
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i

_ZN7rocksdb11InternalKeyD2Ev.exit.i.i:            ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.eq = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.ct
  br i1 %i.er, label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i
  %i.es = load i64, ptr %i.ct, align 8, !tbaa !32
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #25
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit.i

_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit.i: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i
  %i.eu = load ptr, ptr %i.cq, align 8, !tbaa !31 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.cr
  br i1 %i.ev, label %_ZN7rocksdb11InternalKeyD2Ev.exit.i8.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7.i: ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit.i
  %i.ew = load i64, ptr %i.cr, align 8, !tbaa !32
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #25
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit.i8.i

_ZN7rocksdb11InternalKeyD2Ev.exit.i8.i:           ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i7.i
  %i.ey = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.co
  br i1 %i.ez, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_SG_RT0_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i9.i: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i8.i
  %i.fa = load i64, ptr %i.co, align 8, !tbaa !32
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #25
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_SG_RT0_.exit"

bb.o:                                             ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit6.i
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #26
  call void @_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %common.resume

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_SG_RT0_.exit": ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i8.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.fd = icmp sgt i64 %i.dw, 64
  br i1 %i.fd, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !805

.lr.ph167:                                        ; preds = %.lr.ph, %bb.b
  %storemerge59166 = phi ptr [ %.sroa.018.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.060165 = phi i64 [ %i.ff, %bb.b ], [ %2, %.lr.ph ]
  %i.fe = phi i64 [ %i.lq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ff = add nsw i64 %.060165, -1                ; 3 uses
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_T0_T1_":bb.a
  %i.jt = getelementptr inbounds i8, ptr %.sroa.015.0.pn.i.i, i64 -24
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !37
  store i64 %i.ju, ptr %i.iq, align 8, !tbaa !37
  %i.jv = load i64, ptr %i.jg, align 8, !tbaa !32
  store i64 %i.jv, ptr %i.ii, align 8, !tbaa !32
  %.not.i.i5.i34 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i5.i34, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i4.i33
  store ptr %i.jd, ptr %i.jc, align 8, !tbaa !31
  store i64 %i.js, ptr %i.jg, align 8, !tbaa !32
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_.exit45

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i4.i33, %.thread.i.i10.i39
  store ptr %i.jg, ptr %i.jc, align 8, !tbaa !31
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_.exit45

_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_.exit45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i7.i36, %bb.ag, %bb.ah
  %i.jw = phi ptr [ %.pre.i.i8.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i7.i36 ], [ %i.jd, %bb.ag ], [ %i.jg, %bb.ah ]
  %i.jx = getelementptr inbounds i8, ptr %.sroa.015.0.pn.i.i, i64 -24 ; 4 uses
  store i64 0, ptr %i.jx, align 8, !tbaa !37
  store i8 0, ptr %i.jw, align 1, !tbaa !32
  %i.jy = load ptr, ptr %.sroa.015.1.i.i, align 8, !tbaa !31 ; 6 uses
  %i.jz = getelementptr inbounds i8, ptr %.sroa.015.0.pn.i.i, i64 -48 ; 4 uses
  %i.ka = icmp eq ptr %i.jy, %i.jz
  %i.kb = load ptr, ptr %4, align 8, !tbaa !31    ; 6 uses
  %i.kc = icmp eq ptr %i.kb, %i.x                 ; 2 uses
  br i1 %i.ka, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_.exit45
  br i1 %i.kc, label %bb.ai, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_.exit45
  br i1 %i.kc, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.kd = load i64, ptr %i.y, align 8, !tbaa !37  ; 3 uses
  %i.ke = icmp ult i64 %i.kd, 16
  call void @llvm.assume(i1 %i.ke)
  %.not21.i.i.i = icmp eq ptr %4, %.sroa.015.1.i.i
  br i1 %.not21.i.i.i, label %_ZN7rocksdb11InternalKeyaSEOS0_.exit.i, label %bb.aj, !prof !45

bb.aj:                                            ; preds = %bb.ai
  switch i64 %i.kd, label %bb.al [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.kf = load i8, ptr %i.kb, align 1, !tbaa !32
  store i8 %i.kf, ptr %i.jy, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jy, ptr align 1 %i.kb, i64 %i.kd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.kg = load i64, ptr %i.y, align 8, !tbaa !37  ; 2 uses
  store i64 %i.kg, ptr %i.hx, align 8, !tbaa !37
  %i.kh = load ptr, ptr %.sroa.015.1.i.i, align 8, !tbaa !31
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.kg
  store i8 0, ptr %i.ki, align 1, !tbaa !32
  %.pre.i.i.i27 = load ptr, ptr %4, align 8, !tbaa !31
  br label %_ZN7rocksdb11InternalKeyaSEOS0_.exit.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr %i.kb, ptr %.sroa.015.1.i.i, align 8, !tbaa !31
  %i.kj = load i64, ptr %i.y, align 8, !tbaa !37
  store i64 %i.kj, ptr %i.hx, align 8, !tbaa !37
  %i.kk = load i64, ptr %i.x, align 8, !tbaa !32
  store i64 %i.kk, ptr %i.jz, align 8, !tbaa !32
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.kl = load i64, ptr %i.jz, align 8, !tbaa !32
  store ptr %i.kb, ptr %.sroa.015.1.i.i, align 8, !tbaa !31
  %i.km = load i64, ptr %i.y, align 8, !tbaa !37
  store i64 %i.km, ptr %i.hx, align 8, !tbaa !37
  %i.kn = load i64, ptr %i.x, align 8, !tbaa !32
  store i64 %i.kn, ptr %i.jz, align 8, !tbaa !32
  %.not.i.i.i26 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i26, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.jy, ptr %4, align 8, !tbaa !31
  store i64 %i.kl, ptr %i.x, align 8, !tbaa !32
  br label %_ZN7rocksdb11InternalKeyaSEOS0_.exit.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.x, ptr %4, align 8, !tbaa !31
  br label %_ZN7rocksdb11InternalKeyaSEOS0_.exit.i

_ZN7rocksdb11InternalKeyaSEOS0_.exit.i:           ; preds = %bb.an, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.ai
  %i.ko = phi ptr [ %.pre.i.i.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.jy, %bb.am ], [ %i.x, %bb.an ], [ %i.kb, %bb.ai ]
  store i64 0, ptr %i.y, align 8, !tbaa !37
  store i8 0, ptr %i.ko, align 1, !tbaa !32
  %i.kp = load ptr, ptr %i.jc, align 8, !tbaa !31 ; 6 uses
  %i.kq = getelementptr inbounds i8, ptr %.sroa.015.0.pn.i.i, i64 -16 ; 4 uses
  %i.kr = icmp eq ptr %i.kp, %i.kq
  %i.ks = load ptr, ptr %i.z, align 8, !tbaa !31  ; 6 uses
  %i.kt = icmp eq ptr %i.ks, %i.aa                ; 2 uses
  br i1 %i.kr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZN7rocksdb11InternalKeyaSEOS0_.exit.i
  br i1 %i.kt, label %bb.ao, label %.thread.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i: ; preds = %_ZN7rocksdb11InternalKeyaSEOS0_.exit.i
  br i1 %i.kt, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i4.i

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  %i.ku = load i64, ptr %i.ab, align 8, !tbaa !37 ; 3 uses
  %i.kv = icmp ult i64 %i.ku, 16
  call void @llvm.assume(i1 %i.kv)
  %.not21.i.i6.i = icmp eq ptr %4, %.sroa.015.1.i.i
  br i1 %.not21.i.i6.i, label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_.exit, label %bb.ap, !prof !45

bb.ap:                                            ; preds = %bb.ao
  switch i64 %i.ku, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i7.i
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.kw = load i8, ptr %i.ks, align 1, !tbaa !32
  store i8 %i.kw, ptr %i.kp, align 1, !tbaa !32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i7.i

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kp, ptr align 1 %i.ks, i64 %i.ku, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i7.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.kx = load i64, ptr %i.ab, align 8, !tbaa !37 ; 2 uses
  store i64 %i.kx, ptr %i.jx, align 8, !tbaa !37
  %i.ky = load ptr, ptr %i.jc, align 8, !tbaa !31
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kx
  store i8 0, ptr %i.kz, align 1, !tbaa !32
  %.pre.i.i8.i = load ptr, ptr %i.z, align 8, !tbaa !31
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_.exit

.thread.i.i10.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  store ptr %i.ks, ptr %i.jc, align 8, !tbaa !31
  %i.la = load i64, ptr %i.ab, align 8, !tbaa !37
  store i64 %i.la, ptr %i.jx, align 8, !tbaa !37
  %i.lb = load i64, ptr %i.aa, align 8, !tbaa !32
  store i64 %i.lb, ptr %i.kq, align 8, !tbaa !32
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i4.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i3.i
  %i.lc = load i64, ptr %i.kq, align 8, !tbaa !32
  store ptr %i.ks, ptr %i.jc, align 8, !tbaa !31
  %i.ld = load i64, ptr %i.ab, align 8, !tbaa !37
  store i64 %i.ld, ptr %i.jx, align 8, !tbaa !37
  %i.le = load i64, ptr %i.aa, align 8, !tbaa !32
  store i64 %i.le, ptr %i.kq, align 8, !tbaa !32
  %.not.i.i5.i = icmp eq ptr %i.kp, null
  br i1 %.not.i.i5.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i4.i
  store ptr %i.kp, ptr %i.z, align 8, !tbaa !31
  store i64 %i.lc, ptr %i.aa, align 8, !tbaa !32
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_.exit

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i4.i, %.thread.i.i10.i
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !31
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_.exit

_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_.exit: ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i7.i, %bb.as, %bb.at
  %i.lf = phi ptr [ %.pre.i.i8.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i7.i ], [ %i.kp, %bb.as ], [ %i.aa, %bb.at ], [ %i.ks, %bb.ao ]
  store i64 0, ptr %i.ab, align 8, !tbaa !37
  store i8 0, ptr %i.lf, align 1, !tbaa !32
  %i.lg = load ptr, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.aa
  br i1 %i.lh, label %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_.exit
  %i.li = load i64, ptr %i.aa, align 8, !tbaa !32
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lj) #25
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i21

_ZN7rocksdb11InternalKeyD2Ev.exit.i.i21:          ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20
  %i.lk = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.x
  br i1 %i.ll, label %_ZSt4swapIN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i22: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i21
  %i.lm = load i64, ptr %i.x, align 8, !tbaa !32
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #25
  br label %_ZSt4swapIN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit

_ZSt4swapIN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS6_ESt18is_move_assignableIS6_EEE5valueEvE4typeERS6_SF_.exit: ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit.i.i21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.t, !llvm.loop !810

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEET_SG_SG_T0_.exit": ; preds = %bb.v
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_T0_T1_"(ptr nonnull %.sroa.018.1.i.i, ptr %storemerge59166, i64 noundef %i.ff, ptr nonnull %3)
  %i.lo = ptrtoint ptr %.sroa.018.1.i.i to i64
  %i.lp = sub i64 %i.lo, %i.a
  %i.lq = ashr exact i64 %i.lp, 6                 ; 3 uses
  %i.lr = icmp sgt i64 %i.lq, 16
  br i1 %i.lr, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !803

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_SG_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEET_SG_SG_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_SG_SG_RT0_.exit", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_7PrepareEmPNS2_12SuperVersionEE3$_0EEEvT_T0_SH_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 %3, ptr nofree readonly captures(none) %4) unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"struct.rocksdb::ImportColumnFamilyJob::ColumnFamilyIngestFileInfo", align 8 ; 11 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.038 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.g = shl i64 %.038, 1                         ; 2 uses
  %i.h = add i64 %i.g, 2                          ; 2 uses
  %i.i = getelementptr inbounds [64 x i8], ptr %0, i64 %i.h ; 2 uses
  %i.j = or disjoint i64 %i.g, 1                  ; 2 uses
  %i.k = getelementptr inbounds [64 x i8], ptr %0, i64 %i.j ; 2 uses
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !175
  %i.l = getelementptr i8, ptr %.val.val, i64 72
  %.val.val.val = load ptr, ptr %i.l, align 8, !tbaa !182
  %.val1.i = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.m = getelementptr i8, ptr %i.i, i64 8
  %.val2.i = load i64, ptr %i.m, align 8, !tbaa !37
  %.val3.i = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.n = getelementptr i8, ptr %i.k, i64 8
  %.val4.i = load i64, ptr %i.n, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %.val.val.val, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.p = add i64 %.val2.i, -8
  store ptr %.val1.i, ptr %7, align 8
  store i64 %i.p, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.q = add i64 %.val4.i, -8
  store ptr %.val3.i, ptr %8, align 8
  store i64 %i.q, ptr %i.f, align 8
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !184
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8), !inline_history !11
  %i.v = icmp slt i32 %i.u, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %spec.select = select i1 %i.v, i64 %i.j, i64 %i.h ; 4 uses
  %i.w = getelementptr inbounds [64 x i8], ptr %0, i64 %spec.select
  %i.x = getelementptr inbounds [64 x i8], ptr %0, i64 %.038
  %i.y = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %i.w) #26 ; 0 uses
  %i.z = icmp slt i64 %spec.select, %i.b
  br i1 %i.z, label %bb.b, label %._crit_edge, !llvm.loop !811

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.aa = and i64 %2, 1
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.ac = add nsw i64 %2, -2
  %i.ad = ashr exact i64 %i.ac, 1
  %i.ae = icmp eq i64 %.0.lcssa, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = shl nsw i64 %.0.lcssa, 1
  %i.ag = or disjoint i64 %i.af, 1                ; 2 uses
  %i.ah = getelementptr inbounds [64 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [64 x i8], ptr %0, i64 %.0.lcssa
  %i.aj = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %i.ah) #26 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.ag, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.ak, ptr %9, align 8, !tbaa !36
  %i.al = load ptr, ptr %3, align 8, !tbaa !31    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !37 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  store ptr %i.al, ptr %9, align 8, !tbaa !31
  %i.as = load i64, ptr %i.am, align 8, !tbaa !32
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !32
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !37
  br label %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i

_ZN7rocksdb11InternalKeyC2EOS0_.exit.i:           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.f
  %i.at = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ap, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.at, ptr %i.av, align 8, !tbaa !37
  store ptr %i.am, ptr %3, align 8, !tbaa !31
  store i64 0, ptr %i.au, align 8, !tbaa !37
  store i8 0, ptr %i.am, align 8, !tbaa !32
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 5 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !36
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !31 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

bb.g:                                             ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !37 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %_ZN7rocksdb11InternalKeyC2EOS0_.exit.i
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !31
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !32
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !32
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre40 = load i64, ptr %.phi.trans.insert39, align 8, !tbaa !37
  br label %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit

_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  %i.bh = phi i64 [ %i.bd, %bb.g ], [ %.pre40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !37
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !31
  store i64 0, ptr %i.bi, align 8, !tbaa !37
  store i8 0, ptr %i.ba, align 8, !tbaa !32
  %i.bk = icmp sgt i64 %.1, %1
  br i1 %i.bk, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit
  %i.bl = getelementptr i8, ptr %4, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %.010.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0911.i, %bb.i ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.bo = getelementptr inbounds [64 x i8], ptr %0, i64 %.0911.i ; 3 uses
  %.val10.i = load ptr, ptr %9, align 8, !tbaa !31
  %.val11.i = load i64, ptr %i.av, align 8, !tbaa !37
  %.val.val.i = load ptr, ptr %i.bl, align 8, !tbaa !175
  %i.bp = getelementptr i8, ptr %.val.val.i, i64 72
  %.val.val.val.i = load ptr, ptr %i.bp, align 8, !tbaa !182
  %.val2.i.i = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.bq = getelementptr i8, ptr %i.bo, i64 8
  %.val3.i.i = load i64, ptr %i.bq, align 8, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %.val.val.val.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.bs = add i64 %.val3.i.i, -8
  store ptr %.val2.i.i, ptr %5, align 8
  store i64 %i.bs, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.bt = add i64 %.val11.i, -8
  store ptr %.val10.i, ptr %6, align 8
  store i64 %i.bt, ptr %i.bn, align 8
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !184
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef i32 %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %.noexc unwind label %bb.j, !inline_history !812

.noexc:                                           ; preds = %bb.h
  %i.by = icmp slt i32 %i.bx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br i1 %i.by, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.noexc
  %i.bz = getelementptr inbounds [64 x i8], ptr %0, i64 %.010.i
  %i.ca = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoaSEOS1_(ptr noundef nonnull align 8 dereferenceable(64) %i.bz, ptr noundef nonnull align 8 dereferenceable(64) %i.bo) #26 ; 0 uses
  %i.cb = icmp sgt i64 %.0911.i, %1
  br i1 %i.cb, label %bb.h, label %.loopexit, !llvm.loop !813

.loopexit:                                        ; preds = %bb.i, %.noexc, %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit
  %.0.lcssa.i = phi i64 [ %.1, %_ZN7rocksdb21ImportColumnFamilyJob26ColumnFamilyIngestFileInfoC2EOS1_.exit ], [ %.010.i, %.noexc ], [ %.0911.i, %bb.i ]
end_hunk_1
