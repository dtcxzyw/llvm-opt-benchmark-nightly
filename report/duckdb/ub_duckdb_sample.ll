inline.NumInlined: 1843
inline.NumDeleted: 893
begin_hunk_0_@_ZN6duckdb15ReservoirSample6VacuumEv:bb.a
  %.not.i.i.i.i.i8 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i8, label %_ZN6duckdb15SelectionVectoraSEOS0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 4294967297
  %i.bi = trunc i64 %i.bg to i32                  ; 2 uses
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bf, align 8, !tbaa !138
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store i32 0, ptr %i.bj, align 4, !tbaa !140
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !141
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #29, !inline_history !143
  %i.bn = load ptr, ptr %i.be, align 8, !tbaa !141
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #29, !inline_history !143
  br label %_ZN6duckdb15SelectionVectoraSEOS0_.exit

bb.j:                                             ; preds = %bb.h
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nsw i32 %i.bi, -1
  store i32 %i.br, ptr %i.bf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bs = atomicrmw volatile add ptr %i.bf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bi, %bb.k ], [ %i.bs, %bb.l ]
  %i.bt = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bt, label %bb.m, label %_ZN6duckdb15SelectionVectoraSEOS0_.exit, !prof !40

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #29
  br label %_ZN6duckdb15SelectionVectoraSEOS0_.exit

_ZN6duckdb15SelectionVectoraSEOS0_.exit:          ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m
  %i.bu = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %_ZN6duckdb15SelectionVectoraSEOS0_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !117
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !117
  %i.by = load ptr, ptr %2, align 8, !tbaa !184   ; 3 uses
  %.not.i9 = icmp eq ptr %i.by, null
  br i1 %.not.i9, label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i: ; preds = %bb.n
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !141
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(88) %i.by) #29, !inline_history !189
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.cc = load ptr, ptr %1, align 8, !tbaa !182   ; 3 uses
  %.not.i10 = icmp eq ptr %i.cc, null
  br i1 %.not.i10, label %_ZNSt10unique_ptrIN6duckdb14BlockingSampleESt14default_deleteIS1_EED2Ev.exit12, label %_ZNKSt14default_deleteIN6duckdb14BlockingSampleEEclEPS1_.exit.i11

_ZNKSt14default_deleteIN6duckdb14BlockingSampleEEclEPS1_.exit.i11: ; preds = %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !141
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %i.cc) #29, !inline_history !190
  br label %_ZNSt10unique_ptrIN6duckdb14BlockingSampleESt14default_deleteIS1_EED2Ev.exit12

_ZNSt10unique_ptrIN6duckdb14BlockingSampleESt14default_deleteIS1_EED2Ev.exit12: ; preds = %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb14BlockingSampleEEclEPS1_.exit.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %_ZNK6duckdb15ReservoirSample19NumSamplesCollectedEv.exit.thread

_ZNK6duckdb15ReservoirSample19NumSamplesCollectedEv.exit.thread: ; preds = %.critedge, %_ZNK6duckdb15ReservoirSample19NumSamplesCollectedEv.exit, %bb.e, %_ZNSt10unique_ptrIN6duckdb14BlockingSampleESt14default_deleteIS1_EED2Ev.exit12
  ret void

bb.o:                                             ; preds = %_ZN6duckdb15SelectionVectoraSEOS0_.exit, %_ZN6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNSt10unique_ptrIN6duckdb14BlockingSampleESt14default_deleteIS1_EED2Ev.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %2, align 8, !tbaa !184   ; 3 uses
  %.not.i13 = icmp eq ptr %i.ch, null
  br i1 %.not.i13, label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15, label %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i14

_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i14: ; preds = %bb.o
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !141
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(88) %i.ch) #29, !inline_history !189
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15

_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15: ; preds = %bb.o, %_ZNKSt14default_deleteIN6duckdb15ReservoirSampleEEclEPS1_.exit.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  %i.cl = load ptr, ptr %1, align 8, !tbaa !182   ; 3 uses
  %.not.i16 = icmp eq ptr %i.cl, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN6duckdb14BlockingSampleESt14default_deleteIS1_EED2Ev.exit18, label %_ZNKSt14default_deleteIN6duckdb14BlockingSampleEEclEPS1_.exit.i17

_ZNKSt14default_deleteIN6duckdb14BlockingSampleEEclEPS1_.exit.i17: ; preds = %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !141
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %i.cl) #29, !inline_history !190
  br label %_ZNSt10unique_ptrIN6duckdb14BlockingSampleESt14default_deleteIS1_EED2Ev.exit18

_ZNSt10unique_ptrIN6duckdb14BlockingSampleESt14default_deleteIS1_EED2Ev.exit18: ; preds = %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit15, %_ZNKSt14default_deleteIN6duckdb14BlockingSampleEEclEPS1_.exit.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %i.cg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6duckdb15ReservoirSample6VerifyEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %0) local_unnamed_addr #12 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.52", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !184    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb15ReservoirSample4CopyEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.77") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.28", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::unique_ptr.86", align 8 ; 19 uses
  %4 = alloca %"class.duckdb::unique_ptr.2", align 8 ; 8 uses
  %5 = alloca %"class.duckdb::vector.46", align 8 ; 9 uses
  %6 = alloca %"class.duckdb::unique_ptr.28", align 8 ; 8 uses
  %7 = alloca %"struct.duckdb::SelectionVector", align 8 ; 10 uses
  %8 = alloca %"struct.duckdb::SelectionVector", align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #27, !noalias !191, !inline_history !194 ; 3 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !46, !noalias !191
  store ptr null, ptr %2, align 8, !tbaa !157, !noalias !191
  invoke void @_ZN6duckdb15ReservoirSampleC1EmNS_10unique_ptrINS_14ReservoirChunkESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %i.b, i64 noundef %i.c, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.c, !noalias !191, !inline_history !194

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr %3, align 8, !tbaa !184, !alias.scope !191
  %i.d = load ptr, ptr %2, align 8, !tbaa !93, !noalias !191 ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRKmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, label %_ZNKSt14default_deleteIN6duckdb14ReservoirChunkEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb14ReservoirChunkEEclEPS1_.exit.i.i: ; preds = %bb.b
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.d) #29, !noalias !191, !inline_history !194
  call void @_ZdlPv(ptr noundef nonnull %i.d) #28, !noalias !191, !inline_history !194
  br label %_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRKmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit51, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.c ], [ %.pn21.pn.pn.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit51 ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb14ReservoirChunkESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #29, !noalias !191, !inline_history !194
  call void @_ZdlPv(ptr noundef nonnull %i.b) #28, !noalias !191, !inline_history !194
  br label %common.resume

_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRKmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb14ReservoirChunkEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load i8, ptr %i.f, align 8, !tbaa !150, !range !164, !noundef !165
  %i.h = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRKmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i8 %i.g, ptr %i.i, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb21BaseReservoirSampling4CopyEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.2") align 8 %4, ptr noundef nonnull align 8 dereferenceable(120) %i.k)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.l = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !10
  store ptr null, ptr %4, align 8, !tbaa !10
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !10   ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !10
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %i.q) #28
  br label %_ZN6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.h, %bb.i
  call void @_ZN6duckdb12RandomEngineD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.o) #29
  call void @_ZdlPv(ptr noundef nonnull %i.o) #28
  %.pr = load ptr, ptr %4, align 8, !tbaa !10     ; 4 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.pr, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !45   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef nonnull %i.s) #28
  br label %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i: ; preds = %bb.k, %bb.j
  call void @_ZN6duckdb12RandomEngineD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %.pr) #29
  call void @_ZdlPv(ptr noundef nonnull %.pr) #28
  br label %_ZNSt10unique_ptrIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.g, %_ZN6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb21BaseReservoirSamplingEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !79, !range !164, !noundef !165
  %i.v = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EED2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 17
  store i8 %i.u, ptr %i.w, align 1, !tbaa !79
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !93
  %.not58 = icmp eq ptr %i.y, null
  %i.z = load i8, ptr %i.t, align 1, !range !164
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond = select i1 %.not58, i1 true, i1 %i.aa
  br i1 %or.cond, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.l
  %i.ab = load i64, ptr %3, align 8, !tbaa !184
  %i.ac = inttoptr i64 %i.ab to ptr
  store ptr %i.ac, ptr %0, align 8, !tbaa !182, !alias.scope !195
  br label %_ZNSt10unique_ptrIN6duckdb15ReservoirSampleESt14default_deleteIS1_EED2Ev.exit48

bb.m:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb9make_uniqINS_15ReservoirSampleEJRKmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.n:                                             ; preds = %bb.e, %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb21BaseReservoirSamplingESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.ae, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.bt

bb.q:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.ag = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.r unwind label %bb.az

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNK6duckdb9DataChunk8GetTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.46") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %i.ag)
          to label %bb.s unwind label %bb.az

bb.s:                                             ; preds = %bb.r
  %i.ah = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc unwind label %bb.ba    ; 2 uses

.noexc:                                           ; preds = %bb.s
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47
  %.not.i30 = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i30, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.noexc
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.an = load i64, ptr %i.am, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit

bb.u:                                             ; preds = %.noexc
  %i.ao = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.noexc31 unwind label %bb.ba  ; 2 uses

.noexc31:                                         ; preds = %bb.u
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit: ; preds = %.noexc31, %bb.t
  %.06.i = phi i64 [ %i.an, %bb.t ], [ %i.aw, %.noexc31 ]
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !155 ; 3 uses
  %i.ay = call noundef i64 @llvm.umin.i64(i64 %.06.i, i64 %i.ax) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.az = call noundef i64 @llvm.umin.i64(i64 %i.ax, i64 2048)
  %i.ba = mul nuw nsw i64 %i.az, 10
  %i.bb = add i64 %i.ba, %i.ax
  invoke void @_ZNK6duckdb15ReservoirSample20CreateNewSampleChunkERNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEEm(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.28") align 8 %6, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bb)
          to label %bb.v unwind label %bb.bb

bb.v:                                             ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 56
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !198 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !135 ; 4 uses
  %.not.i.i.i.i.i.i.i32 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i32, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i: ; preds = %bb.x, %bb.v
  store ptr %i.bd, ptr %10, align 8, !tbaa !199
  %i.bk = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.bf, ptr %i.bk, align 8, !tbaa !135
  br label %bb.ae

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i: ; preds = %bb.w
  %i.bl = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !135 ; 8 uses
  store ptr %i.bd, ptr %10, align 8, !tbaa !199
  store ptr %i.bf, ptr %.phi.trans.insert.i, align 8, !tbaa !135
  %.not.i.i.i.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.bm, align 8, !tbaa !138
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre.i, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !140
  %i.br = load ptr, ptr %.pre.i, align 8, !tbaa !141
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #29, !inline_history !200
  %i.bu = load ptr, ptr %.pre.i, align 8, !tbaa !141
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #29, !inline_history !200
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i5.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i5.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bp, %bb.ab ], [ %i.bz, %bb.ac ]
  %i.ca = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ca, label %bb.ad, label %bb.ae, !prof !40

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i) #29
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.z, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.thread.i
  %i.cb = load ptr, ptr %9, align 8, !tbaa !137
  store ptr %i.cb, ptr %7, align 8, !tbaa !137
  %i.cc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.af unwind label %bb.bc

bb.af:                                            ; preds = %bb.ae
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40 ; 2 uses
  %i.ce = load ptr, ptr %6, align 8, !tbaa !93
  store ptr null, ptr %6, align 8, !tbaa !93
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !93 ; 3 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !93
  %.not.i.i.i.i.i33 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i33, label %_ZN6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb14ReservoirChunkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14ReservoirChunkEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.af
  call void @_ZN6duckdb9DataChunkD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.cf) #29
  call void @_ZdlPv(ptr noundef nonnull %i.cf) #28
  br label %_ZN6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.af, %_ZNKSt14default_deleteIN6duckdb14ReservoirChunkEEclEPS1_.exit.i.i.i.i.i
  %i.cg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ag unwind label %bb.bc

bb.ag:                                            ; preds = %_ZN6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.ch = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.ah unwind label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ci)
          to label %bb.ai unwind label %bb.bc

bb.ai:                                            ; preds = %bb.ah
  %i.ck = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.aj unwind label %bb.bc

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZNK6duckdb15ReservoirSample18UpdateSampleAppendERNS_9DataChunkES2_RNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(88) %i.cg, ptr noundef nonnull align 8 dereferenceable(72) %i.cj, ptr noundef nonnull align 8 dereferenceable(72) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.ay)
          to label %bb.ak unwind label %bb.bc

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.cl = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.ay)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.cl) #29
  br label %.body

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.ak
  %i.cn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.am unwind label %bb.bd     ; 2 uses

bb.am:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 16, !tbaa !135
  %i.cr = load <2 x ptr>, ptr %8, align 16, !tbaa !136
  store ptr null, ptr %8, align 16, !tbaa !137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.cr, ptr %i.co, align 8, !tbaa !136
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 72 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !135 ; 8 uses
  store ptr %i.cq, ptr %i.cs, align 8, !tbaa !135
  %.not.i.i.i.i.i34 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i34, label %_ZN6duckdb15SelectionVectoraSEOS0_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.cu, align 8, !tbaa !138
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !140
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !141
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #29, !inline_history !143
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !141
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #29, !inline_history !143
  br label %_ZN6duckdb15SelectionVectoraSEOS0_.exit

bb.ap:                                            ; preds = %bb.an
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i35 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i.i35, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.cx, %bb.aq ], [ %i.dh, %bb.ar ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.di, label %bb.as, label %_ZN6duckdb15SelectionVectoraSEOS0_.exit, !prof !40

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #29
  br label %_ZN6duckdb15SelectionVectoraSEOS0_.exit

_ZN6duckdb15SelectionVectoraSEOS0_.exit:          ; preds = %bb.am, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.as
  %i.dj = load ptr, ptr %i.cp, align 16, !tbaa !135 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZN6duckdb15SelectionVectoraSEOS0_.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.dk, align 8, !tbaa !138
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !140
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !141
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #29, !inline_history !145
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !141
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #29, !inline_history !145
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.av:                                            ; preds = %bb.at
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i36 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i36, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ax:                                            ; preds = %bb.av
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i.i = phi i32 [ %i.dn, %bb.aw ], [ %i.dx, %bb.ax ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dy, label %bb.ay, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !40

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %_ZN6duckdb15SelectionVectoraSEOS0_.exit, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.not = icmp eq i64 %i.ay, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.be, %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !117
  %i.eb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15ReservoirSampleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.bg unwind label %bb.bc

bb.az:                                            ; preds = %bb.r, %bb.q
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ba:                                            ; preds = %bb.u, %bb.s
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bb:                                            ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bc:                                            ; preds = %bb.bg, %._crit_edge, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %_ZN6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %bb.ae
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bd:                                            ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb15SelectionVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #29
  br label %.body

end_hunk_0
begin_hunk_1_@_ZNK6duckdb15ReservoirSample19GetRandomizedVectorEjj:bb.a
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZdlPv(ptr noundef nonnull %i.at) #28
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.t, %bb.u
  resume { ptr, i32 } %.pn23
}

declare noundef i32 @_ZN6duckdb12RandomEngine19NextRandomInteger32Ejj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(4) ptr @_ZN6duckdb6vectorIjLb1ESaIjEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.52", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !208
  %i.e = load ptr, ptr %0, align 8, !tbaa !206    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !46
  store i64 %i.i, ptr %i.b, align 8, !tbaa !46
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorIjLb1ESaIjEE3getILb1EEERjm.exit, label %bb.b, !prof !78

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorIjLb1ESaIjEE3getILb1EEERjm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ReservoirSample11SimpleMergeERS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load i64, ptr %i.g, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit: ; preds = %bb.b, %bb.c
  %.06.i = phi i64 [ %i.h, %bb.b ], [ %i.q, %bb.c ]
  %i.r = icmp eq i64 %.06.i, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit
  %i.s = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.bh, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 17 uses
  %i.x = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 96
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %.not.i56 = icmp eq ptr %i.z, %i.ab
  br i1 %.not.i56, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit58

bb.g:                                             ; preds = %bb.e
  %i.ae = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.ai = load ptr, ptr %i.af, align 8, !tbaa !45
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit58

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit58: ; preds = %bb.f, %bb.g
  %.06.i57 = phi i64 [ %i.ad, %bb.f ], [ %i.am, %bb.g ]
  %i.an = icmp eq i64 %.06.i57, 0
  br i1 %i.an, label %bb.h, label %bb.r

bb.h:                                             ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit58
  %i.ao = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !39
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !135 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !136
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ay, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ax, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i: ; preds = %bb.j
  %i.bb = atomicrmw volatile add ptr %i.ax, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb15SelectionVectorC2ERKS0_.exit

_ZN6duckdb15SelectionVectorC2ERKS0_.exit:         ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, %bb.i, %bb.k
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !137
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !137
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !135 ; 8 uses
  store <2 x ptr> %i.aw, ptr %i.be, align 8, !tbaa !136
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb15SelectionVectorC2ERKS0_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bh, align 8, !tbaa !138
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !140
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !141
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #29, !inline_history !143
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !141
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #29, !inline_history !143
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i59 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i59, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bk, %bb.o ], [ %i.bu, %bb.p ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bv, label %bb.q, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !40

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.m, %_ZN6duckdb15SelectionVectorC2ERKS0_.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.pre96 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !117
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.pre96, ptr %i.bw, align 8, !tbaa !117
  %i.bx = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 80
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !39
  %i.ca = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !39
  br label %bb.bh

bb.r:                                             ; preds = %bb.h, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit58
  %i.cc = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !39
  %i.cf = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !39
  %i.ci = add i64 %i.ch, %i.ce
  %i.cj = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !39
  %i.cm = uitofp i64 %i.cl to double
  %i.cn = uitofp i64 %i.ci to double              ; 2 uses
  %i.co = fdiv double %i.cm, %i.cn                ; 3 uses
  %i.cp = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !39
  %i.cs = uitofp i64 %i.cr to double
  %i.ct = fdiv double %i.cs, %i.cn                ; 3 uses
  %i.cu = fadd double %i.co, %i.ct                ; 2 uses
  %i.cv = fcmp olt double %i.cu, 1.000000e+00
  %i.cw = fsub double 1.000000e+00, %i.cu
  %i.cx = fadd double %i.ct, %i.cw
  %.050 = select i1 %i.cv, double %i.cx, double %i.ct ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !155
  %i.da = uitofp i64 %i.cz to double              ; 2 uses
  %i.db = fcmp ogt double %i.co, %.050
  br i1 %i.db, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.dc = fmul double %i.co, %i.da
  %i.dd = tail call double @llvm.round.f64(double %i.dc)
  %i.de = fptoui double %i.dd to i64
  %i.df = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 88
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !47
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !47
  %.not.i61 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not.i61, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63

bb.u:                                             ; preds = %bb.s
  %i.dm = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 88
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !54
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !45
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63: ; preds = %bb.t, %bb.u
  %.06.i62 = phi i64 [ %i.dl, %bb.t ], [ %i.du, %bb.u ]
  %i.dv = tail call noundef i64 @llvm.umin.i64(i64 %i.de, i64 %.06.i62) ; 2 uses
  %i.dw = load i64, ptr %i.cy, align 8, !tbaa !155
  %i.dx = sub i64 %i.dw, %i.dv
  %i.dy = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 88
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !47
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !47
  %.not.i64 = icmp eq ptr %i.ea, %i.ec
  br i1 %.not.i64, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66

bb.w:                                             ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit63
  %i.ef = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 88
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 96
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !54
  %i.ej = load ptr, ptr %i.eg, align 8, !tbaa !45
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66: ; preds = %bb.v, %bb.w
  %.06.i65 = phi i64 [ %i.ee, %bb.v ], [ %i.en, %bb.w ]
  %i.eo = tail call noundef i64 @llvm.umin.i64(i64 %i.dx, i64 %.06.i65)
  br label %bb.ac

bb.x:                                             ; preds = %bb.r
  %i.ep = fmul double %.050, %i.da
  %i.eq = tail call double @llvm.round.f64(double %i.ep)
  %i.er = fptoui double %i.eq to i64
  %i.es = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 88
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !47
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 96
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !47
  %.not.i67 = icmp eq ptr %i.eu, %i.ew
  br i1 %.not.i67, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69

bb.z:                                             ; preds = %bb.x
  %i.ez = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 88
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !54
  %i.fd = load ptr, ptr %i.fa, align 8, !tbaa !45
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = ashr exact i64 %i.fg, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69: ; preds = %bb.y, %bb.z
  %.06.i68 = phi i64 [ %i.ey, %bb.y ], [ %i.fh, %bb.z ]
  %i.fi = tail call noundef i64 @llvm.umin.i64(i64 %i.er, i64 %.06.i68) ; 2 uses
  %i.fj = load i64, ptr %i.cy, align 8, !tbaa !155
  %i.fk = sub i64 %i.fj, %i.fi
  %i.fl = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 88
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !47
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 96
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !47
  %.not.i70 = icmp eq ptr %i.fn, %i.fp
  br i1 %.not.i70, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !117
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72

bb.ab:                                            ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit69
  %i.fs = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_21BaseReservoirSamplingESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.w) ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 88
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 96
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !54
  %i.fw = load ptr, ptr %i.ft, align 8, !tbaa !45
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = ashr exact i64 %i.fz, 4
  br label %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72

_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72: ; preds = %bb.aa, %bb.ab
  %.06.i71 = phi i64 [ %i.fr, %bb.aa ], [ %i.ga, %bb.ab ]
  %i.gb = tail call noundef i64 @llvm.umin.i64(i64 %i.fk, i64 %.06.i71)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66
  %.052 = phi i64 [ %i.eo, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66 ], [ %i.fi, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72 ] ; 4 uses
  %.051 = phi i64 [ %i.dv, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit66 ], [ %i.gb, %_ZNK6duckdb15ReservoirSample20GetActiveSampleCountEv.exit72 ] ; 4 uses
  %i.gc = add i64 %.051, %.052
  %i.gd = tail call noundef i64 @llvm.umin.i64(i64 %i.gc, i64 2048) ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.gf = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_14ReservoirChunkESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ge)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !103
  %i.gi = add i64 %i.gh, %.052
  %i.gj = load i64, ptr %i.cy, align 8, !tbaa !155 ; 2 uses
  %i.gk = tail call noundef i64 @llvm.umin.i64(i64 %i.gj, i64 2048)
  %i.gl = mul nuw nsw i64 %i.gk, 10
  %i.gm = add i64 %i.gl, %i.gj
  %i.gn = icmp ugt i64 %i.gi, %i.gm
  br i1 %i.gn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN6duckdb15ReservoirSample6VacuumEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.go, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.052)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.af

common.resume:                                    ; preds = %bb.bi, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.gp, %bb.af ], [ %.pn, %bb.bi ]
end_hunk_1
