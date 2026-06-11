inline.NumInlined: 8285
inline.NumDeleted: 2143
begin_hunk_0_@_ZN5arrow20CopyBufferFromVectorIiEENS_6StatusERKSt6vectorIT_SaIS3_EEPNS_10MemoryPoolEPSt10shared_ptrINS_6BufferEE:bb.a

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i = phi i32 [ %i.au, %bb.k ], [ %i.be, %bb.l ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.m, label %bb.n, !prof !71

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ao) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  store ptr null, ptr %0, align 8, !tbaa !20, !alias.scope !904
  %i.bg = load ptr, ptr %6, align 8, !tbaa !875   ; 3 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %bb.n
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bg) #22, !inline_history !889
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.n, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.p

bb.o:                                             ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %6, align 8, !tbaa !875   ; 3 uses
  %.not.i19 = icmp eq ptr %i.bl, null
  br i1 %.not.i19, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit21, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i20

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i20: ; preds = %bb.o
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bl) #22, !inline_history !889
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit21

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit21: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i20, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.r

bb.p:                                             ; preds = %bb.b, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit
  %i.bp = load ptr, ptr %5, align 8, !tbaa !20
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.q, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !35

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !875 ; 3 uses
  %.not.i.i.i.i22 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i22, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.q
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bs) #22, !inline_history !890
  %.pr.pre.i = load ptr, ptr %5, align 8, !tbaa !20
  %i.bw = icmp eq ptr %.pr.pre.i, null
  br i1 %i.bw, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !257

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.p
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.q, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit21, %bb.c
  %.pn17 = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.bk, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit21 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn17
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow15DenseUnionArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !69
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !227
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !227
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow16SparseUnionArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !69
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !227
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !227
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc4test14MakeDictionaryEPSt10shared_ptrINS_11RecordBatchEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::vector.154", align 8   ; 15 uses
  %4 = alloca %"class.std::shared_ptr.8", align 16 ; 12 uses
  %5 = alloca %"class.std::shared_ptr.5", align 8 ; 10 uses
  %6 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.8", align 16 ; 9 uses
  %8 = alloca %"class.std::shared_ptr.8", align 16 ; 10 uses
  %9 = alloca %"class.std::shared_ptr.8", align 16 ; 9 uses
  %10 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %11 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %12 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %13 = alloca %"class.std::vector.142", align 8  ; 9 uses
  %14 = alloca %"class.std::vector.135", align 8  ; 9 uses
  %15 = alloca %"class.std::vector.142", align 8  ; 9 uses
  %16 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %17 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %18 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %19 = alloca %"class.std::shared_ptr.8", align 16 ; 9 uses
  %20 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %21 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %22 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %23 = alloca %"class.std::shared_ptr.49", align 8 ; 9 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %25 = alloca %"class.std::shared_ptr.5", align 16 ; 7 uses
  %26 = alloca %"class.std::shared_ptr.167", align 8 ; 7 uses
  %27 = alloca %"class.std::shared_ptr.161", align 8 ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %28 = alloca %"class.std::shared_ptr.8", align 8 ; 8 uses
  %29 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %30 = alloca %"class.std::shared_ptr.8", align 16 ; 8 uses
  %31 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %32 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %33 = alloca %"class.std::shared_ptr.161", align 16 ; 7 uses
  %34 = alloca %"class.std::vector", align 8      ; 13 uses
  %35 = alloca [5 x %"class.std::shared_ptr.14"], align 16 ; 27 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %37 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %38 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %40 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %41 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %43 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %44 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %47 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %49 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %50 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %51 = alloca %"class.std::vector.23", align 8   ; 13 uses
  %52 = alloca [5 x %"class.std::shared_ptr.5"], align 16 ; 24 uses
  %53 = alloca %"class.std::shared_ptr.8", align 16 ; 8 uses
  %54 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %55 = alloca %"class.std::shared_ptr.8", align 16 ; 8 uses
  %56 = alloca %"class.std::shared_ptr.5", align 8 ; 7 uses
  %57 = alloca %"class.std::shared_ptr.14", align 16 ; 9 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %60 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %61 = alloca %"class.std::shared_ptr.5", align 8 ; 8 uses
  %62 = alloca %"class.std::shared_ptr.161", align 8 ; 6 uses
  %63 = alloca %"class.std::shared_ptr.55", align 16 ; 7 uses
  %64 = alloca %"class.std::shared_ptr.2", align 8 ; 4 uses
  %65 = alloca %"class.std::vector", align 8      ; 11 uses
  %66 = alloca %"class.std::shared_ptr.17", align 8 ; 4 uses
  %67 = alloca %"class.std::vector.23", align 8   ; 11 uses
  %68 = alloca %"class.std::shared_ptr.58", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 6, ptr %i.c, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #25 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.j, ptr %i.h, align 8, !tbaa !907
  store ptr %i.i, ptr %3, align 8
  store i32 0, ptr %i.e, align 8
  store ptr %i.i, ptr %i.f, align 8
  store i32 6, ptr %i.g, align 8
  store i64 -5, ptr %i.i, align 8, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.k = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4utf8Ev()
          to label %bb.a unwind label %bb.bl      ; 2 uses

bb.a:                                             ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66   ; 2 uses
  %i.o = load <2 x ptr>, ptr %i.k, align 8, !tbaa !79
  store <2 x ptr> %i.o, ptr %4, align 16, !tbaa !79
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 21, ptr nonnull @.str.35)
          to label %bb.e unwind label %bb.bm

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 27, ptr nonnull @.str.36)
          to label %bb.f unwind label %bb.bn

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.u = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %bb.g unwind label %bb.bo

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext false)
          to label %bb.h unwind label %bb.bo

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.i unwind label %bb.bp

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.bp

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.w = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %bb.k unwind label %bb.bq

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.bq

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.x = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.m unwind label %bb.br      ; 3 uses

bb.m:                                             ; preds = %bb.l
  store ptr %i.x, ptr %13, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.x, ptr noundef nonnull align 4 dereferenceable(24) @constinit.50, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ab = invoke noalias noundef nonnull dereferenceable(6) ptr @_Znwm(i64 noundef 6) #25
          to label %bb.n unwind label %_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i ; 5 uses

_ZNSt12_Vector_baseIaSaIaEED2Ev.exit.i:           ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.m
  store ptr %i.ab, ptr %14, align 8, !tbaa !842
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 6 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !844
  store <4 x i8> <i8 0, i8 0, i8 2, i8 2>, ptr %i.ab, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !845
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.ag = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #25
          to label %bb.o unwind label %bb.bs      ; 3 uses

bb.o:                                             ; preds = %bb.n
  store ptr %i.ag, ptr %15, align 8, !tbaa !94
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !97
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ag, ptr noundef nonnull align 4 dereferenceable(24) @constinit.51, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !98
  invoke void @_ZN5arrow15ArrayFromVectorINS_9Int32TypeEiEEvRKSt6vectorIbSaIbEERKS2_IT0_SaIS7_EEPSt10shared_ptrINS_5ArrayEE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull %10)
end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc4test14MakeDictionaryEPSt10shared_ptrINS_11RecordBatchEE:_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !66, !alias.scope !911
  store ptr %i.an, ptr %16, align 16, !tbaa !914, !alias.scope !911
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.aq = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc152 unwind label %bb.bv ; 6 uses

.noexc152:                                        ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 1, ptr %i.ar, align 8, !tbaa !67, !noalias !916
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 1, ptr %i.as, align 4, !tbaa !69, !noalias !916
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aq, align 8, !tbaa !32, !noalias !916
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.t unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i151, !noalias !916

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i151: ; preds = %.noexc152
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 88) #23, !noalias !916
  br label %.body153

bb.t:                                             ; preds = %.noexc152
  %i.av = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  store ptr %i.aq, ptr %i.av, align 8, !tbaa !66, !alias.scope !916
  store ptr %i.at, ptr %17, align 16, !tbaa !914, !alias.scope !916
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.aw = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #25
          to label %.noexc157 unwind label %bb.bw ; 6 uses

.noexc157:                                        ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 1, ptr %i.ax, align 8, !tbaa !67, !noalias !919
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  store i32 1, ptr %i.ay, align 4, !tbaa !69, !noalias !919
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aw, align 8, !tbaa !32, !noalias !919
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  invoke void @_ZN5arrow15DictionaryArrayC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_5ArrayEES9_(ptr noundef nonnull align 8 dereferenceable(72) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.u unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i156, !noalias !919

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow15DictionaryArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12.i.i.i.i156: ; preds = %.noexc157
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 88) #23, !noalias !919
  br label %.body158

bb.u:                                             ; preds = %.noexc157
  %i.bb = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !66, !alias.scope !919
  store ptr %i.az, ptr %18, align 16, !tbaa !914, !alias.scope !919
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !66 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %8, align 16, !tbaa !79
  store <2 x ptr> %i.bf, ptr %20, align 16, !tbaa !79
  %.not.i.i.i161 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i161, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i.i162 = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i162, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163

bb.x:                                             ; preds = %bb.v
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163: ; preds = %bb.u, %bb.w, %bb.x
  invoke void @_ZN5arrow4listESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.8") align 8 %19, ptr noundef nonnull %20)
          to label %bb.y unwind label %bb.bx

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !66 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %i.bn = load atomic i64, ptr %i.bm acquire, align 8 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 4294967297
  %i.bp = trunc i64 %i.bn to i32                  ; 2 uses
  br i1 %i.bo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.bm, align 8, !tbaa !67
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store i32 0, ptr %i.bq, align 4, !tbaa !69
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #22, !inline_history !206
  %i.bu = load ptr, ptr %i.bl, align 8, !tbaa !32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #22, !inline_history !206
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31
  %.not.i.i.i164 = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i164, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.by = add nsw i32 %i.bp, -1
  store i32 %i.by, ptr %i.bm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.bz = atomicrmw volatile add ptr %i.bm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i = phi i32 [ %i.bp, %bb.ac ], [ %i.bz, %bb.ad ]
  %i.ca = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ca, label %bb.ae, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !71

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bl) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.y, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.cb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4int8Ev()
          to label %bb.af unwind label %bb.by

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 27, ptr nonnull @.str.39)
          to label %bb.ag unwind label %bb.by

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.cc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %bb.ah unwind label %bb.bz

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN5arrow13ArrayFromJSONERKSt10shared_ptrINS_8DataTypeEESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.5") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i64 21, ptr nonnull @.str.40)
          to label %bb.ai unwind label %bb.bz

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.cd = load ptr, ptr %i.f, align 8, !tbaa !925, !noalias !922
  %i.ce = load i32, ptr %i.g, align 8, !tbaa !926, !noalias !922
  %i.cf = load ptr, ptr %3, align 8, !tbaa !925, !noalias !922
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = shl nsw i64 %i.ci, 3
  %i.ck = zext i32 %i.ce to i64
  %i.cl = add nsw i64 %i.cj, %i.ck                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22, !noalias !922
  invoke void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %2, i64 noundef %i.cl, ptr noundef null)
          to label %.noexc167 unwind label %bb.ca

.noexc167:                                        ; preds = %bb.ai
  %i.cm = load ptr, ptr %2, align 8, !tbaa !20, !noalias !922
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.al, label %bb.aj, !prof !35

bb.aj:                                            ; preds = %.noexc167
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !922
  br label %.body168

bb.al:                                            ; preds = %.noexc167
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !241, !noalias !927 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !66, !noalias !927 ; 12 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false), !noalias !922
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !877, !range !467, !noalias !922, !noundef !464
  %i.cv = trunc nuw i8 %i.cu to i1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cx = load i8, ptr %i.cw, align 8, !range !467, !noalias !922
  %i.cy = trunc nuw i8 %i.cx to i1
  %i.cz = select i1 %i.cv, i1 %i.cy, i1 false, !prof !35
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !noalias !922
  %i.dc = select i1 %i.cz, ptr %i.db, ptr null, !prof !35
  %.not23.i = icmp eq i64 %i.cl, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.bd, %bb.al
  store ptr %i.cq, ptr %23, align 8, !tbaa !241, !noalias !922
  %i.dd = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !66, !noalias !922 ; 3 uses
  %.not.i.i.i.i165 = icmp eq ptr %i.cs, %i.de
  br i1 %.not.i.i.i.i165, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge.i
  %.not7.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 3 uses
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31, !noalias !922
  %.not.i.i.i.i.i = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !3, !noalias !922
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.df, align 4, !tbaa !3, !noalias !922
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.dj = atomicrmw volatile add ptr %i.df, i32 1 acq_rel, align 4, !noalias !922 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.dd, align 8, !tbaa !66, !noalias !922
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.ap, %bb.ao, %bb.am
  %i.dk = phi ptr [ %i.de, %bb.am ], [ %i.de, %bb.ao ], [ %.pr.pre.i.i.i.i, %bb.ap ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8, !noalias !922 ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 4294967297
  %i.do = trunc i64 %i.dm to i32                  ; 2 uses
  br i1 %i.dn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.dl, align 8, !tbaa !67, !noalias !922
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !69, !noalias !922
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !32, !noalias !922
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !922
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #22, !noalias !922, !inline_history !932
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !32, !noalias !922
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !922
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #22, !noalias !922, !inline_history !932
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31, !noalias !922
  %.not.i9.i.i.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not.i9.i.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !3, !noalias !922
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4, !noalias !922
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i.i.i = phi i32 [ %i.do, %bb.at ], [ %i.dy, %bb.au ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dz, label %bb.av, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !71

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #22, !noalias !922
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ar, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.cs, ptr %i.dd, align 8, !tbaa !66, !noalias !922
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %._crit_edge.i
  store ptr null, ptr %24, align 8, !tbaa !20, !alias.scope !933
  %.not.i.i.i166 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i166, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 4 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8, !noalias !922 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 4294967297
  %i.ed = trunc i64 %i.eb to i32                  ; 2 uses
  br i1 %i.ec, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.ea, align 8, !tbaa !67, !noalias !922
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cs, i64 12
  store i32 0, ptr %i.ee, align 4, !tbaa !69, !noalias !922
  %i.ef = load ptr, ptr %i.cs, align 8, !tbaa !32, !noalias !922
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !noalias !922
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #22, !noalias !922, !inline_history !936
  %i.ei = load ptr, ptr %i.cs, align 8, !tbaa !32, !noalias !922
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !922
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #22, !noalias !922, !inline_history !936
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31, !noalias !922
  %.not.i.i.i20.i = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i20.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.em = add nsw i32 %i.ed, -1
  store i32 %i.em, ptr %i.ea, align 8, !tbaa !3, !noalias !922
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ba:                                            ; preds = %bb.ay
  %i.en = atomicrmw volatile add ptr %i.ea, i32 -1 acq_rel, align 4, !noalias !922
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i.i = phi i32 [ %i.ed, %bb.az ], [ %i.en, %bb.ba ]
  %i.eo = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.eo, label %bb.bb, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !71

bb.bb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cs) #22, !noalias !922
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

.lr.ph.i:                                         ; preds = %bb.al, %bb.bd
  %.022.i = phi i64 [ %i.fe, %bb.bd ], [ 0, %bb.al ] ; 6 uses
  %69 = load ptr, ptr %3, align 8, !tbaa !925, !noalias !922
  %i.ep = sdiv i64 %.022.i, 64
  %i.eq = getelementptr inbounds [8 x i8], ptr %69, i64 %i.ep
  %i.er = and i64 %.022.i, -9223372036854775745
  %i.es = icmp ugt i64 %i.er, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.es, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.eq, i64 %storemerge.idx.i.i.i.i.i.i
  %i.et = and i64 %.022.i, 63
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !165, !noalias !922
  %i.ew = and i64 %i.ev, %i.eu
  %.not.i = icmp eq i64 %i.ew, 0
  br i1 %.not.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i
  %i.ex = srem i64 %.022.i, 8
  %i.ey = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !31, !noalias !922
  %i.fa = sdiv i64 %.022.i, 8
  %i.fb = getelementptr inbounds i8, ptr %i.dc, i64 %i.fa ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !31, !noalias !922
  %i.fd = or i8 %i.fc, %i.ez
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !31, !noalias !922
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i
  %i.fe = add nuw i64 %.022.i, 1                  ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %i.cl
  br i1 %i.ff, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !937

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ax, %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit.i, %bb.aj
  %i.fg = load ptr, ptr %2, align 8, !tbaa !20, !noalias !922
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.be, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !35

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !66, !noalias !922 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 4 uses
  %i.fl = load atomic i64, ptr %i.fk acquire, align 8 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4294967297
  %i.fn = trunc i64 %i.fl to i32                  ; 2 uses
  br i1 %i.fm, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.fk, align 8, !tbaa !67
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  store i32 0, ptr %i.fo, align 4, !tbaa !69
  %i.fp = load ptr, ptr %i.fj, align 8, !tbaa !32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #22, !inline_history !938
  %i.fs = load ptr, ptr %i.fj, align 8, !tbaa !32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #22, !inline_history !938
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.fv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31, !noalias !922
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.fv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fw = add nsw i32 %i.fn, -1
  store i32 %i.fw, ptr %i.fk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.fx = atomicrmw volatile add ptr %i.fk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fn, %bb.bi ], [ %i.fx, %bb.bj ]
  %i.fy = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.fy, label %bb.bk, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !71

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fj) #22
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.bk, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bg, %bb.be
  %.pr.i.i = load ptr, ptr %2, align 8, !tbaa !20, !noalias !922
  %.not.i.i21.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i21.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !257

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22, !noalias !922
  call void @llvm.experimental.noalias.scope.decl(metadata !939)
  %i.fz = load ptr, ptr %24, align 8, !tbaa !20, !noalias !939 ; 2 uses
  store ptr %i.fz, ptr %0, align 8, !tbaa !20, !alias.scope !939
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %_ZN5arrow6StatusD2Ev.exit172, label %.critedge

bb.bl:                                            ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.i.5
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ww

bb.bm:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.wv

bb.bn:                                            ; preds = %bb.e
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.wu

bb.bo:                                            ; preds = %bb.g, %bb.f
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.wt

bb.bp:                                            ; preds = %bb.i, %bb.h
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ws

bb.bq:                                            ; preds = %bb.k, %bb.j
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %bb.wr

bb.br:                                            ; preds = %bb.l
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit613

bb.bs:                                            ; preds = %bb.n
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit608

bb.bt:                                            ; preds = %bb.q, %bb.p, %bb.o
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %bb.wn

bb.bu:                                            ; preds = %bb.r
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %.body149

bb.bv:                                            ; preds = %bb.s
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body153

bb.bw:                                            ; preds = %bb.t
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %.body158

bb.bx:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit163
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.wm

bb.by:                                            ; preds = %bb.af, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.wl

bb.bz:                                            ; preds = %bb.ah, %bb.ag
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.wk

bb.ca:                                            ; preds = %bb.ai
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body168

.body168:                                         ; preds = %bb.ak, %bb.ca
  %eh.lpad-body169 = phi { ptr, i32 } [ %i.gq, %bb.ca ], [ %i.co, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  br label %bb.wj

_ZN5arrow6StatusD2Ev.exit172:                     ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %i.gr = load ptr, ptr %22, align 8, !tbaa !61, !noalias !942 ; 3 uses
  store ptr %i.gr, ptr %26, align 8, !tbaa !945, !alias.scope !942
  %i.gs = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !66, !noalias !942 ; 3 uses
  store ptr %i.gu, ptr %i.gs, align 8, !tbaa !66, !alias.scope !942
  %.not.i.i.i.i173 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i173, label %_ZSt19static_pointer_castIN5arrow14PrimitiveArrayENS0_5ArrayEESt10shared_ptrIT_ERKS3_IT0_E.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit172
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8 ; 3 uses
  %i.gw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !31, !noalias !942
  %.not.i.i.i.i.i174 = icmp eq i8 %i.gw, 0
  br i1 %.not.i.i.i.i.i174, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gx = load i32, ptr %i.gv, align 4, !tbaa !3, !noalias !942
  %i.gy = add nsw i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gv, align 4, !tbaa !3, !noalias !942
  br label %_ZSt19static_pointer_castIN5arrow14PrimitiveArrayENS0_5ArrayEESt10shared_ptrIT_ERKS3_IT0_E.exit

bb.cd:                                            ; preds = %bb.cb
  %i.gz = atomicrmw volatile add ptr %i.gv, i32 1 acq_rel, align 4, !noalias !942 ; 0 uses
  %.pre.a = load ptr, ptr %26, align 8, !tbaa !945
  br label %_ZSt19static_pointer_castIN5arrow14PrimitiveArrayENS0_5ArrayEESt10shared_ptrIT_ERKS3_IT0_E.exit

_ZSt19static_pointer_castIN5arrow14PrimitiveArrayENS0_5ArrayEESt10shared_ptrIT_ERKS3_IT0_E.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit172, %bb.cc, %bb.cd
  %i.ha = phi ptr [ %i.gr, %_ZN5arrow6StatusD2Ev.exit172 ], [ %i.gr, %bb.cc ], [ %.pre.a, %bb.cd ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !99
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !948
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
end_hunk_1
