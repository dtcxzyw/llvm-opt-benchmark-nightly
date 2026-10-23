Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/random_access_file_reader?download=true
inline.NumInlined: 1036
inline.NumDeleted: 479
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt12__shared_ptrIN7rocksdb8IOTracerELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a
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
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !227
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !227
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !56
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !57

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN7rocksdb3EndERKNS_13FSReadRequestE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !115
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !116
  %i.d = add i64 %i.c, %i.a
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN7rocksdb5AlignERKNS_13FSReadRequestEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.rocksdb::FSReadRequest") align 8 captures(none) initializes((0, 46), (48, 96)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, i64 noundef %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @.str.15, ptr %i.a, align 8, !tbaa !117
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.b, i8 0, i64 14, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  %i.d = load i64, ptr %1, align 8, !tbaa !115    ; 2 uses
  %.not.i = sub i64 0, %2
  %i.e = and i64 %i.d, %.not.i                    ; 2 uses
  store i64 %i.e, ptr %0, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !116
  %i.h = add i64 %2, -1
  %i.i = add i64 %i.h, %i.d
  %i.j = add i64 %i.i, %i.g                       ; 2 uses
  %i.k = urem i64 %i.j, %2
  %i.l = add i64 %i.k, %i.e
  %i.m = sub i64 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !116
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.o, align 8, !tbaa !118
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb13FSReadRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !101  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !101
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt25__throw_bad_function_callv() #25
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !120
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNKSt8functionIFvPvEEclES0_.exit.i unwind label %bb.h, !inline_history !4

_ZNKSt8functionIFvPvEEclES0_.exit.i:              ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt8functionIFvPvEEclES0_.exit.i, %bb.a
  store ptr null, ptr %i.c, align 8, !tbaa !101
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !119  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 3)
          to label %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #26
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #26
  unreachable

_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit:  ; preds = %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !61   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.q) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN7rocksdb8TryMergeEPNS_13FSReadRequestERKS0_(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !115    ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !115    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !116
  %i.e = add i64 %i.d, %i.a                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !116
  %i.h = add i64 %i.g, %i.b                       ; 2 uses
  %.sroa.speculated26 = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.b)
  %.sroa.speculated14 = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.e)
  %i.i = icmp ule i64 %.sroa.speculated26, %.sroa.speculated14 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated23 = tail call i64 @llvm.umin.i64(i64 %i.b, i64 %i.a) ; 2 uses
  store i64 %.sroa.speculated23, ptr %0, align 8, !tbaa !115
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.h)
  %i.j = sub nuw i64 %.sroa.speculated, %.sroa.speculated23
  store i64 %i.j, ptr %i.c, align 8, !tbaa !116
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.i
}

; Function Attrs: uwtable
define void @_ZNK7rocksdb22RandomAccessFileReader4ReadERKNS_9IOOptionsEmmPNS_5SliceEPcPNS_30AlignedBufferAllocationContextEPNS_14IODebugContextE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::IOStatus") align 8 initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(202) %1, ptr noundef nonnull align 8 dereferenceable(84) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"struct.rocksdb::IOErrorInfo", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %10 = alloca %"struct.rocksdb::IOErrorInfo", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.rocksdb::StopWatch", align 8 ; 35 uses
  %12 = alloca %"class.rocksdb::PerfStepTimer", align 8 ; 16 uses
  %13 = alloca %"class.rocksdb::AlignedBuffer", align 8 ; 14 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 13 uses
  %15 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %16 = alloca %"struct.std::pair", align 8       ; 7 uses
  %17 = alloca %"class.rocksdb::PerfStepTimer", align 8 ; 11 uses
  %18 = alloca %"class.rocksdb::IOStatus", align 8 ; 12 uses
  %19 = alloca %"class.std::chrono::time_point.43", align 8 ; 5 uses
  %20 = alloca %"class.rocksdb::Slice", align 8   ; 7 uses
  %21 = alloca %"struct.std::pair", align 8       ; 7 uses
  %22 = alloca %"class.rocksdb::PerfStepTimer", align 8 ; 11 uses
  %23 = alloca %"class.rocksdb::IOStatus", align 8 ; 12 uses
  %24 = alloca %"class.std::chrono::time_point.43", align 8 ; 5 uses
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %7, align 8, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !140  ; 4 uses
  %i.j = icmp ne i64 %4, 0                        ; 2 uses
  %i.k = icmp ne ptr %6, null                     ; 2 uses
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.l = load i8, ptr %6, align 1, !tbaa !55
  %i.m = add i8 %i.l, 1
  store i8 %i.m, ptr %6, align 1, !tbaa !55
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  store i8 0, ptr %0, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  store i8 0, ptr %i.n, align 1, !tbaa !141
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  store ptr null, ptr %i.p, align 8, !tbaa !142
  store i32 0, ptr %i.o, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 0, ptr %i.b, align 8, !tbaa !143
  %i.q = load ptr, ptr %1, align 8, !tbaa !144    ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load i8, ptr %i.r, align 8, !tbaa !152, !range !153, !noundef !154
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !155
  br label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit

_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit:     ; preds = %bb.g, %bb.f
  %.0.i = phi ptr [ %i.u, %bb.f ], [ %i.w, %bb.g ] ; 2 uses
  %i.x = load ptr, ptr %.0.i, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %.0.i)
          to label %bb.h unwind label %bb.er      ; 7 uses

bb.h:                                             ; preds = %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit
  %i.ab = icmp eq ptr %i.f, null                  ; 5 uses
  %or.cond3 = and i1 %i.k, %i.ab
  br i1 %or.cond3, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ac = add i64 %i.aa, -1                       ; 2 uses
  %i.ad = or i64 %4, %3
  %i.ae = and i64 %i.ac, %i.ad
  %or.cond335 = icmp eq i64 %i.ae, 0
  br i1 %or.cond335, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = ptrtoint ptr %6 to i64
  %i.ag = and i64 %i.ac, %i.af
  %i.ah = icmp eq i64 %i.ag, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.0108 = phi i1 [ false, %bb.h ], [ %i.ah, %bb.j ], [ false, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !90 ; 14 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !91 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.an = load i32, ptr %i.am, align 8, !tbaa !92 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 83
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !156 ; 4 uses
  %i.aq = icmp ult i8 %i.ap, 3
  br i1 %i.aq, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i178 = icmp eq ptr %i.al, null
  br i1 %.not.i178, label %.thread320, label %.thread312

.thread320:                                       ; preds = %bb.l
  store ptr %i.aj, ptr %11, align 8, !tbaa !159
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !tbaa !160
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.q

.thread312:                                       ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.au = load atomic i8, ptr %i.at monotonic, align 1
  %i.av = icmp ugt i8 %i.au, 3
  %i.aw = icmp ult i8 %i.ap, 8
  %or.cond336 = and i1 %i.aw, %i.av
  %narrow.i = add nuw nsw i8 %i.ap, 18
  %i.ax = zext nneg i8 %narrow.i to i32
  %.0.i179314 = select i1 %or.cond336, i32 %i.ax, i32 80
  store ptr %i.aj, ptr %11, align 8, !tbaa !159
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.ay, align 8, !tbaa !160
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %narrow9.i = add nuw nsw i8 %i.ap, 18
  %.0.i179 = zext nneg i8 %narrow9.i to i32
  %.not142 = icmp eq ptr %i.al, null
  store ptr %i.aj, ptr %11, align 8, !tbaa !159
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %i.al, ptr %i.ba, align 8, !tbaa !160
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  br i1 %.not142, label %bb.q, label %bb.n

bb.n:                                             ; preds = %.thread312, %bb.m
  %i.bc = phi ptr [ %i.az, %.thread312 ], [ %i.bb, %bb.m ] ; 3 uses
  %i.bd = phi ptr [ %i.ay, %.thread312 ], [ %i.ba, %bb.m ]
  %.0.i179317 = phi i32 [ %.0.i179314, %.thread312 ], [ %.0.i179, %bb.m ] ; 2 uses
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 248
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(33) %i.al, i32 noundef %i.an)
          to label %.noexc unwind label %bb.ad, !inline_history !5

.noexc:                                           ; preds = %bb.n
  %spec.select.i = select i1 %i.bh, i32 %i.an, i32 80
  store i32 %spec.select.i, ptr %i.bc, align 8, !tbaa !161
  %i.bi = load ptr, ptr %i.al, align 8, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 248
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef zeroext i1 %i.bk(ptr noundef nonnull align 8 dereferenceable(33) %i.al, i32 noundef %.0.i179317)
          to label %.noexc181 unwind label %bb.ad, !inline_history !5

.noexc181:                                        ; preds = %.noexc
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 20
  %spec.select2.i = select i1 %i.bl, i32 %.0.i179317, i32 80 ; 2 uses
  store i32 %spec.select2.i, ptr %i.bm, align 4, !tbaa !162
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.b, ptr %i.bn, align 8, !tbaa !163
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 1, ptr %i.bo, align 8, !tbaa !164
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.br = load atomic i8, ptr %i.bq monotonic, align 8
  %i.bs = icmp ugt i8 %i.br, 2
  br i1 %i.bs, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %.noexc181
  %i.bt = load i32, ptr %i.bc, align 8, !tbaa !161
  %.not19.i = icmp eq i32 %i.bt, 80
  br i1 %.not19.i, label %bb.p, label %.sink.split

bb.p:                                             ; preds = %bb.o
  %i.bu = icmp ne i32 %spec.select2.i, 80
  %i.bv = zext i1 %i.bu to i8
  br label %.sink.split

bb.q:                                             ; preds = %bb.m, %.thread320
  %i.bw = phi ptr [ %i.as, %.thread320 ], [ %i.bb, %bb.m ] ; 2 uses
  %i.bx = phi ptr [ %i.ar, %.thread320 ], [ %i.ba, %bb.m ]
  store i32 80, ptr %i.bw, align 8, !tbaa !161
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 20
  store i32 80, ptr %i.by, align 4, !tbaa !162
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr null, ptr %i.bz, align 8, !tbaa !163
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 1, ptr %i.ca, align 8, !tbaa !164
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 0, ptr %i.cb, align 1, !tbaa !165
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 34
  store i8 1, ptr %i.cc, align 2, !tbaa !166
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  br label %bb.r

.sink.split:                                      ; preds = %bb.p, %.noexc181, %bb.o
  %.ph.sink = phi i8 [ 1, %bb.o ], [ %i.bv, %bb.p ], [ 0, %.noexc181 ]
  store i8 %.ph.sink, ptr %i.bp, align 1, !tbaa !165
  %i.ce = getelementptr inbounds nuw i8, ptr %11, i64 34
  store i8 1, ptr %i.ce, align 2, !tbaa !166
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 152
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = invoke noundef i64 %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %bb.r unwind label %bb.ad, !inline_history !5

bb.r:                                             ; preds = %bb.q, %.sink.split
  %.not.i239 = phi i1 [ false, %bb.q ], [ true, %.sink.split ] ; 2 uses
  %i.ck = phi ptr [ %i.bw, %bb.q ], [ %i.bc, %.sink.split ]
  %i.cl = phi ptr [ %i.bx, %bb.q ], [ %i.bd, %.sink.split ] ; 2 uses
  %i.cm = phi i64 [ 0, %bb.q ], [ %i.cj, %.sink.split ]
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 4 uses
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %.not.i183 = icmp eq ptr @_ZTHN7rocksdb15iostats_contextE, null ; 3 uses
  br i1 %.not.i183, label %_ZTWN7rocksdb15iostats_contextE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZTHN7rocksdb15iostats_contextE()
  br label %_ZTWN7rocksdb15iostats_contextE.exit

_ZTWN7rocksdb15iostats_contextE.exit:             ; preds = %bb.r, %bb.s
  %i.co = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb15iostats_contextE) ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 3 uses
  br i1 %.not.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZTWN7rocksdb15iostats_contextE.exit
  invoke void @_ZTHN7rocksdb10perf_levelE()
          to label %_ZTWN7rocksdb10perf_levelE.exit.i unwind label %bb.ae

_ZTWN7rocksdb10perf_levelE.exit.i:                ; preds = %bb.t, %_ZTWN7rocksdb15iostats_contextE.exit
  %i.cq = call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 3 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !169
  %i.cs = icmp ugt i8 %i.cr, 3                    ; 2 uses
  %i.ct = zext i1 %i.cs to i8
  store i8 %i.ct, ptr %12, align 8, !tbaa !171
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 1 ; 2 uses
  store i8 0, ptr %i.cu, align 1, !tbaa !172
  %i.cv = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  store i32 0, ptr %i.cv, align 4, !tbaa !173
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i
  %i.cw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv()
          to label %bb.w unwind label %bb.ae

bb.v:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false)
  store ptr %i.cp, ptr %i.cz, align 8, !tbaa !174
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr null, ptr %i.da, align 8, !tbaa !175
  br label %_ZN7rocksdb13PerfStepTimer5StartEv.exit

bb.w:                                             ; preds = %bb.u
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !177 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !178
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i64 0, ptr %i.dd, align 8, !tbaa !179
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr %i.cp, ptr %i.de, align 8, !tbaa !174
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr null, ptr %i.df, align 8, !tbaa !175
  %i.dg = load ptr, ptr %i.db, align 8, !tbaa !31
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 160
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = invoke noundef i64 %i.di(ptr noundef nonnull align 8 dereferenceable(32) %i.db)
          to label %.noexc188 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !6

.noexc188:                                        ; preds = %bb.w
  store i64 %i.dj, ptr %i.dd, align 8, !tbaa !179
  br label %_ZN7rocksdb13PerfStepTimer5StartEv.exit

_ZN7rocksdb13PerfStepTimer5StartEv.exit:          ; preds = %bb.v, %.noexc188
  %i.dk = phi ptr [ %i.df, %.noexc188 ], [ %i.da, %bb.v ]
  %i.dl = phi ptr [ %i.de, %.noexc188 ], [ %i.cz, %bb.v ]
  %i.dm = phi ptr [ %i.dd, %.noexc188 ], [ %i.cy, %bb.v ]
  %i.dn = phi ptr [ %i.dc, %.noexc188 ], [ %i.cx, %bb.v ]
  %i.do = load ptr, ptr %1, align 8, !tbaa !144   ; 2 uses
  %.not.i.i189 = icmp eq ptr %i.do, null
  br i1 %.not.i.i189, label %bb.z, label %bb.x

bb.x:                                             ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 104
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !152, !range !153, !noundef !154
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i

bb.z:                                             ; preds = %bb.x, %_ZN7rocksdb13PerfStepTimer5StartEv.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !155
  br label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i

_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i:   ; preds = %bb.z, %bb.y
  %.0.i.i = phi ptr [ %i.ds, %bb.y ], [ %i.du, %bb.z ] ; 2 uses
  %i.dv = load ptr, ptr %.0.i.i, align 8, !tbaa !31
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 56
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = invoke noundef zeroext i1 %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i)
          to label %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !7

_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit: ; preds = %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i
  %.not175 = xor i1 %i.dy, true
  %brmerge = or i1 %.0108, %.not175
  br i1 %brmerge, label %.preheader, label %bb.aa

.preheader:                                       ; preds = %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit
  br i1 %i.j, label %.lr.ph376, label %.preheader..loopexit_crit_edge

.preheader..loopexit_crit_edge:                   ; preds = %.preheader
  %.pre396 = load i8, ptr %0, align 8, !tbaa !44
  br label %.loopexit

.lr.ph376:                                        ; preds = %.preheader
  %.not143 = icmp eq i32 %i.i, 4
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.co, i64 96 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %22, i64 1
  %i.ek = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %22, i64 32 ; 2 uses
  %.not.i261 = icmp eq ptr %0, %23
  %i.ep = getelementptr inbounds nuw i8, ptr %23, i64 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %23, i64 3
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.es = getelementptr inbounds nuw i8, ptr %23, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %23, i64 5 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ew = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.cd

bb.aa:                                            ; preds = %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit
  %.not.i191 = sub i64 0, %i.aa
  %i.fb = and i64 %3, %.not.i191                  ; 4 uses
  %i.fc = sub i64 %3, %i.fb                       ; 6 uses
  %i.fd = add i64 %3, -1
  %i.fe = add i64 %i.fd, %4
  %i.ff = add i64 %i.fe, %i.aa                    ; 2 uses
  %i.fg = urem i64 %i.ff, %i.aa
  %i.fh = add i64 %i.fb, %i.fg
  %i.fi = sub i64 %i.ff, %i.fh                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %13, i8 0, i64 72, i1 false)
  %i.fj = select i1 %i.ab, ptr %13, ptr %i.f      ; 2 uses
  store i64 %i.aa, ptr %i.fj, align 8, !tbaa !181
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7rocksdb13AlignedBuffer17AllocateNewBufferEmPKSt8functionIFNS_6StatusEmmPNS0_18ExternalAllocationEEE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %14, ptr noundef nonnull align 8 dereferenceable(72) %i.fj, i64 noundef %i.fi, ptr noundef %i.g)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.fk = load i8, ptr %14, align 8, !tbaa !44    ; 2 uses
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %_ZN7rocksdb6StatusD2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fm = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !182, !noalias !232
  %i.fo = getelementptr inbounds nuw i8, ptr %14, i64 3
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !183, !range !153, !noalias !232, !noundef !154
  store <4 x i8> zeroinitializer, ptr %14, align 8, !tbaa !55, !noalias !232
  %i.fq = getelementptr inbounds nuw i8, ptr %14, i64 4 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 4, !tbaa !183, !range !153, !noalias !232, !noundef !154
  store i8 0, ptr %i.fq, align 4, !tbaa !184, !noalias !232
  %i.fs = getelementptr inbounds nuw i8, ptr %14, i64 5 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !55, !noalias !232
  store i8 0, ptr %i.fs, align 1, !tbaa !185, !noalias !232
  %i.fu = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !61, !noalias !232
  store ptr null, ptr %i.fu, align 8, !tbaa !61, !noalias !232
  store i8 %i.fk, ptr %0, align 8, !tbaa !44
  store i8 %i.fn, ptr %i.n, align 1, !tbaa !141
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.fp, ptr %i.fw, align 1, !tbaa !186
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.fr, ptr %i.fx, align 4, !tbaa !184
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ft, ptr %i.fy, align 1, !tbaa !185
  %i.fz = load ptr, ptr %i.p, align 8, !tbaa !61  ; 2 uses
  store ptr %i.fv, ptr %i.p, align 8, !tbaa !61
  %.not.i.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.ac
  call void @_ZdaPv(ptr noundef nonnull %i.fz) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.ad:                                            ; preds = %.sink.split, %.noexc, %bb.n
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ae:                                            ; preds = %bb.u, %bb.t
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.af:                                            ; preds = %bb.aa
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit230

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.ac, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i, %bb.ab
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %.sroa.gep303 = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.sel = select i1 %i.ab, ptr %.sroa.gep, ptr %.sroa.gep303
  %i.gd = load ptr, ptr %.sroa.sel, align 8, !tbaa !187 ; 2 uses
  %i.ge = load i8, ptr %0, align 8, !tbaa !44
  %i.gf = icmp eq i8 %i.ge, 0
  %i.gg = icmp ne i64 %i.fi, 0
  %i.gh = and i1 %i.gf, %i.gg
  br i1 %i.gh, label %.lr.ph, label %_ZNK7rocksdb13AlignedBuffer4ReadEPcmm.exit

.lr.ph:                                           ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %.not153 = icmp eq i32 %i.i, 4
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.gj = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.co, i64 96 ; 4 uses
  %i.go = getelementptr inbounds nuw i8, ptr %17, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.gq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.not.i212 = icmp eq ptr %0, %18
  %i.gw = getelementptr inbounds nuw i8, ptr %18, i64 1 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %18, i64 3
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.gz = getelementptr inbounds nuw i8, ptr %18, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %18, i64 5 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.hd = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 56
  br label %bb.ag

bb.ag:                                            ; preds = %bb.bo, %.lr.ph
  %.0106373 = phi i64 [ 0, %.lr.ph ], [ %i.km, %bb.bo ] ; 5 uses
  br i1 %.not153, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hj = load ptr, ptr %i.gi, align 8, !tbaa !94 ; 3 uses
  %.not154 = icmp eq ptr %i.hj, null
  br i1 %.not154, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hk = sub nuw i64 %i.fi, %.0106373
  %i.hl = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.hm = load ptr, ptr %i.hj, align 8, !tbaa !31
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 56
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = invoke noundef i64 %i.ho(ptr noundef nonnull align 8 dereferenceable(12) %i.hj, i64 noundef %i.hk, i64 noundef %i.aa, i32 noundef %i.i, ptr noundef %i.hl, i32 noundef 0)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.0105 = phi i64 [ %i.hp, %bb.ai ], [ %i.fi, %bb.ah ], [ %i.fi, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr @.str.15, ptr %15, align 8, !tbaa !117
  store i64 0, ptr %i.gj, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.hr = load ptr, ptr %i.gk, align 8, !tbaa !97
  %i.hs = load ptr, ptr %i.gl, align 8, !tbaa !97
  %.not339 = icmp eq ptr %i.hr, %i.hs
  br i1 %.not339, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ht = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #22
  %i.hu = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  store i64 %i.ht, ptr %16, align 8, !tbaa !143
  store i64 %i.hu, ptr %i.gm, align 8, !tbaa !143
  %i.hv = add i64 %.0106373, %i.fb
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0104 = phi i64 [ %i.hv, %bb.al ], [ 0, %bb.ak ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  br i1 %.not.i183, label %_ZTWN7rocksdb15iostats_contextE.exit196, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZTHN7rocksdb15iostats_contextE()
  br label %_ZTWN7rocksdb15iostats_contextE.exit196

_ZTWN7rocksdb15iostats_contextE.exit196:          ; preds = %bb.am, %bb.an
  %i.hw = load ptr, ptr %i.ai, align 8, !tbaa !90 ; 2 uses
  br i1 %.not.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i198, label %bb.ao

bb.ao:                                            ; preds = %_ZTWN7rocksdb15iostats_contextE.exit196
  invoke void @_ZTHN7rocksdb10perf_levelE()
          to label %_ZTWN7rocksdb10perf_levelE.exit.i198 unwind label %bb.bg

_ZTWN7rocksdb10perf_levelE.exit.i198:             ; preds = %bb.ao, %_ZTWN7rocksdb15iostats_contextE.exit196
  %i.hx = load i8, ptr %i.cq, align 1, !tbaa !169
  %i.hy = icmp ugt i8 %i.hx, 4                    ; 3 uses
  %i.hz = zext i1 %i.hy to i8
  store i8 %i.hz, ptr %17, align 8, !tbaa !171
  store i8 1, ptr %i.go, align 1, !tbaa !172
  store i32 0, ptr %i.gp, align 4, !tbaa !173
  br i1 %i.hy, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i198
  %.not.i200 = icmp eq ptr %i.hw, null
  br i1 %.not.i200, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.ia = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv()
          to label %.noexc202 unwind label %bb.bg

.noexc202:                                        ; preds = %bb.aq
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !177
  br label %bb.as

bb.ar:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i198
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i8 0, i64 16, i1 false)
  store ptr %i.gn, ptr %i.gs, align 8, !tbaa !174
  store ptr null, ptr %i.gt, align 8, !tbaa !175
end_hunk_0
begin_hunk_1_@_ZNK7rocksdb22RandomAccessFileReader4ReadERKNS_9IOOptionsEmmPNS_5SliceEPcPNS_30AlignedBufferAllocationContextEPNS_14IODebugContextE:bb.a
bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn155 = phi { ptr, i32 } [ %i.kj, %bb.bi ], [ %i.ki, %bb.bh ]
  call void @_ZN7rocksdb13PerfStepTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bg
  %.pn155.pn = phi { ptr, i32 } [ %.pn155, %bb.bj ], [ %i.kh, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.bp

bb.bl:                                            ; preds = %bb.bd, %bb.ba
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bf, %bb.bl
  %eh.lpad-body = phi { ptr, i32 } [ %i.kk, %bb.bl ], [ %i.kg, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bp

_ZNK7rocksdb22RandomAccessFileReader15NotifyOnIOErrorERKNS_8IOStatusENS_17FileOperationTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit: ; preds = %_ZN7rocksdb11IOErrorInfoD2Ev.exit.i, %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNK7rocksdb22RandomAccessFileReader15NotifyOnIOErrorERKNS_8IOStatusENS_17FileOperationTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm.exit, %_ZN7rocksdb13PerfStepTimerD2Ev.exit
  %i.kl = load i64, ptr %i.gj, align 8, !tbaa !188 ; 2 uses
  %i.km = add i64 %i.kl, %.0106373                ; 5 uses
  br i1 %i.ab, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i64 %i.km, ptr %i.hi, align 8, !tbaa !190
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %i.kn = load i8, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.ko = icmp eq i8 %i.kn, 0
  %i.kp = icmp uge i64 %i.kl, %.0105
  %or.cond337.not496 = select i1 %i.ko, i1 %i.kp, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kq = icmp ult i64 %i.km, %i.fi
  %or.cond493 = select i1 %or.cond337.not496, i1 %i.kq, i1 false
  br i1 %or.cond493, label %bb.ag, label %.loopexit347

bb.bp:                                            ; preds = %bb.bk, %.body
  %.pn158.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn155.pn, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.cc

.loopexit347:                                     ; preds = %bb.bo
  %i.kr = icmp eq i8 %i.kn, 0
  %i.ks = icmp ult i64 %i.fc, %i.km
  %or.cond176 = select i1 %i.kr, i1 %i.ks, i1 false
  br i1 %or.cond176, label %bb.bq, label %_ZNK7rocksdb13AlignedBuffer4ReadEPcmm.exit

bb.bq:                                            ; preds = %.loopexit347
  %i.kt = sub nuw i64 %i.km, %i.fc
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %4, i64 %i.kt) ; 5 uses
  br i1 %i.ab, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ku = getelementptr inbounds nuw i8, ptr %i.gd, i64 %i.fc
  br label %_ZNK7rocksdb13AlignedBuffer4ReadEPcmm.exit

bb.bs:                                            ; preds = %bb.bq
  %i.kv = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !190 ; 2 uses
  %i.kx = icmp ult i64 %i.fc, %i.kw
  br i1 %i.kx, label %bb.bt, label %_ZNK7rocksdb13AlignedBuffer4ReadEPcmm.exit

bb.bt:                                            ; preds = %bb.bs
  %i.ky = sub nuw i64 %i.kw, %i.fc
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %.sroa.speculated, i64 %i.ky) ; 2 uses
  %.not.i221 = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %.not.i221, label %_ZNK7rocksdb13AlignedBuffer4ReadEPcmm.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kz = load ptr, ptr %.sroa.gep, align 8, !tbaa !187
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.fc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr align 1 %i.la, i64 %.sroa.speculated.i, i1 false)
  br label %_ZNK7rocksdb13AlignedBuffer4ReadEPcmm.exit

_ZNK7rocksdb13AlignedBuffer4ReadEPcmm.exit:       ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.bu, %bb.bt, %bb.bs, %bb.br, %.loopexit347
  %.0130 = phi ptr [ %i.ku, %bb.br ], [ %6, %.loopexit347 ], [ %6, %bb.bs ], [ %6, %bb.bt ], [ %6, %bb.bu ], [ %6, %_ZN7rocksdb6StatusD2Ev.exit ]
  %.0101 = phi i64 [ %.sroa.speculated, %bb.br ], [ 0, %.loopexit347 ], [ %.sroa.speculated, %bb.bs ], [ %.sroa.speculated, %bb.bt ], [ %.sroa.speculated, %bb.bu ], [ 0, %_ZN7rocksdb6StatusD2Ev.exit ]
  store ptr %.0130, ptr %5, align 8, !tbaa !61
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %.0101, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !143
  %i.lb = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !61 ; 2 uses
  %.not.i.i222 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i222, label %_ZN7rocksdb6StatusD2Ev.exit224, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i223

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i223: ; preds = %_ZNK7rocksdb13AlignedBuffer4ReadEPcmm.exit
  call void @_ZdaPv(ptr noundef nonnull %i.lc) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit224

_ZN7rocksdb6StatusD2Ev.exit224:                   ; preds = %_ZNK7rocksdb13AlignedBuffer4ReadEPcmm.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.ld = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !101 ; 2 uses
  %.not.i.i225 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i225, label %bb.by, label %bb.bv

bb.bv:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.lf, ptr %i.a, align 8, !tbaa !101
  %i.lg = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !119
  %.not.i.i.i.i226 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i.i226, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZSt25__throw_bad_function_callv() #25
          to label %.noexc.i.i unwind label %bb.cb

.noexc.i.i:                                       ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.li = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !120
  invoke void %i.lj(ptr noundef nonnull align 8 dereferenceable(40) %i.ld, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNKSt8functionIFvPvEEclES0_.exit.i.i unwind label %bb.cb, !inline_history !4

_ZNKSt8functionIFvPvEEclES0_.exit.i.i:            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.by

bb.by:                                            ; preds = %_ZNKSt8functionIFvPvEEclES0_.exit.i.i, %_ZN7rocksdb6StatusD2Ev.exit224
  store ptr null, ptr %i.le, align 8, !tbaa !101
  %i.lk = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i.i.i227 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i.i227, label %_ZN7rocksdb13AlignedBufferD2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lm = invoke noundef zeroext i1 %i.ll(ptr noundef nonnull align 8 dereferenceable(40) %i.ld, ptr noundef nonnull align 8 dereferenceable(40) %i.ld, i32 noundef 3)
          to label %_ZN7rocksdb13AlignedBufferD2Ev.exit unwind label %bb.ca ; 0 uses

bb.ca:                                            ; preds = %bb.bz
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #26
  unreachable

bb.cb:                                            ; preds = %bb.bx, %bb.bw
  %i.lp = landingpad { ptr, i32 }
          catch ptr null
  %i.lq = extractvalue { ptr, i32 } %i.lp, 0
  call void @__clang_call_terminate(ptr %i.lq) #26
  unreachable

_ZN7rocksdb13AlignedBufferD2Ev.exit:              ; preds = %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %.pre397 = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !188
  br label %bb.dt

bb.cc:                                            ; preds = %bb.bp, %bb.aj
  %.pn162.pn = phi { ptr, i32 } [ %.pn158.pn, %bb.bp ], [ %i.hq, %bb.aj ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !61 ; 2 uses
  %.not.i.i228 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i228, label %_ZN7rocksdb6StatusD2Ev.exit230, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i229

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i229: ; preds = %bb.cc
  call void @_ZdaPv(ptr noundef nonnull %i.ls) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit230

_ZN7rocksdb6StatusD2Ev.exit230:                   ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i229, %bb.cc, %bb.af
  %.pn162.pn.pn = phi { ptr, i32 } [ %i.gc, %bb.af ], [ %.pn162.pn, %bb.cc ], [ %.pn162.pn, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i229 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7rocksdb13AlignedBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.loopexit.split-lp

bb.cd:                                            ; preds = %.lr.ph376, %bb.dr
  %i.lt = phi i64 [ 0, %.lr.ph376 ], [ %i.nl, %bb.dr ] ; 3 uses
  %i.lu = phi i64 [ 0, %.lr.ph376 ], [ %i.nm, %bb.dr ] ; 4 uses
  %.098375 = phi ptr [ null, %.lr.ph376 ], [ %spec.select, %bb.dr ] ; 2 uses
  %.099374 = phi i64 [ 0, %.lr.ph376 ], [ %i.qj, %bb.dr ] ; 4 uses
  br i1 %.not143, label %bb.co, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lv = load ptr, ptr %i.dz, align 8, !tbaa !94 ; 3 uses
  %.not144 = icmp eq ptr %i.lv, null
  br i1 %.not144, label %bb.co, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !31
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 104
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = invoke noundef zeroext i1 %i.ly(ptr noundef nonnull align 8 dereferenceable(12) %i.lv, i32 noundef 0)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %bb.cf
  %i.ma = icmp eq i64 %i.lu, 0
  %25 = and i1 %i.lz, %.not.i239
  %or.cond492 = select i1 %25, i1 %i.ma, i1 false
  br i1 %or.cond492, label %bb.ch, label %_ZN7rocksdb9StopWatch10DelayStartEv.exit

bb.ch:                                            ; preds = %bb.cg
  %i.mb = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 152
  %i.md = load ptr, ptr %i.mc, align 8
  %i.me = invoke noundef i64 %i.md(ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %.noexc233 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !230 ; 3 uses

.noexc233:                                        ; preds = %bb.ch
  store i64 %i.me, ptr %i.ea, align 8, !tbaa !233
  br label %_ZN7rocksdb9StopWatch10DelayStartEv.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cn, %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i235, %bb.ch, %bb.ck, %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit238, %bb.cf, %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i, %bb.w, %bb.dt
  %lpad.loopexit.split-lp497 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZN7rocksdb9StopWatch10DelayStartEv.exit:         ; preds = %.noexc233, %bb.cg
  %i.mf = phi i64 [ %i.me, %.noexc233 ], [ %i.lt, %bb.cg ] ; 2 uses
  %i.mg = phi i64 [ %i.me, %.noexc233 ], [ %i.lu, %bb.cg ]
  %i.mh = load ptr, ptr %i.dz, align 8, !tbaa !94 ; 2 uses
  %i.mi = load ptr, ptr %1, align 8, !tbaa !144   ; 2 uses
  %.not.i.i234 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i234, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZN7rocksdb9StopWatch10DelayStartEv.exit
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 104
  %i.mk = load i8, ptr %i.mj, align 8, !tbaa !152, !range !153, !noundef !154
  %i.ml = trunc nuw i8 %i.mk to i1
  br i1 %i.ml, label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i235, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZN7rocksdb9StopWatch10DelayStartEv.exit
  %i.mm = load ptr, ptr %i.ec, align 8, !tbaa !155
  br label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i235

_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i235: ; preds = %bb.ci, %bb.cj
  %.0.i.i236 = phi ptr [ %i.mm, %bb.cj ], [ %i.eb, %bb.ci ] ; 2 uses
  %i.mn = load ptr, ptr %.0.i.i236, align 8, !tbaa !31
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 56
  %i.mp = load ptr, ptr %i.mo, align 8
  %i.mq = invoke noundef zeroext i1 %i.mp(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i236)
          to label %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !7

_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit238: ; preds = %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i235
  %i.mr = sub nuw i64 %4, %.099374
  %i.ms = select i1 %i.mq, i64 %i.aa, i64 0
  %i.mt = load ptr, ptr %i.ak, align 8, !tbaa !91
  %i.mu = load ptr, ptr %i.mh, align 8, !tbaa !31
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 56
  %i.mw = load ptr, ptr %i.mv, align 8
  %i.mx = invoke noundef i64 %i.mw(ptr noundef nonnull align 8 dereferenceable(12) %i.mh, i64 noundef %i.mr, i64 noundef %i.ms, i32 noundef %i.i, ptr noundef %i.mt, i32 noundef 0)
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ck:                                            ; preds = %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit238
  %i.my = load ptr, ptr %i.dz, align 8, !tbaa !94 ; 2 uses
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !31
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 104
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = invoke noundef zeroext i1 %i.nb(ptr noundef nonnull align 8 dereferenceable(12) %i.my, i32 noundef 0)
          to label %bb.cl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.nc, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %.not1.i = icmp ne i64 %i.mf, 0
  %or.cond381.not = select i1 %.not.i239, i1 %.not1.i, i1 false
  br i1 %or.cond381.not, label %bb.cn, label %_ZN7rocksdb9StopWatch9DelayStopEv.exit

bb.cn:                                            ; preds = %bb.cm
  %i.nd = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 152
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = invoke noundef i64 %i.nf(ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %.noexc241 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !231

.noexc241:                                        ; preds = %bb.cn
  %i.nh = load i64, ptr %i.ea, align 8, !tbaa !233
  %i.ni = sub i64 %i.ng, %i.nh
  %i.nj = load i64, ptr %i.ed, align 8, !tbaa !191
  %i.nk = add i64 %i.ni, %i.nj
  store i64 %i.nk, ptr %i.ed, align 8, !tbaa !191
  br label %_ZN7rocksdb9StopWatch9DelayStopEv.exit

_ZN7rocksdb9StopWatch9DelayStopEv.exit:           ; preds = %bb.cm, %.noexc241
  store i64 0, ptr %i.ea, align 8, !tbaa !233
  br label %bb.co

bb.co:                                            ; preds = %bb.cl, %_ZN7rocksdb9StopWatch9DelayStopEv.exit, %bb.ce, %bb.cd
  %i.nl = phi i64 [ 0, %_ZN7rocksdb9StopWatch9DelayStopEv.exit ], [ %i.mf, %bb.cl ], [ %i.lt, %bb.ce ], [ %i.lt, %bb.cd ]
  %i.nm = phi i64 [ 0, %_ZN7rocksdb9StopWatch9DelayStopEv.exit ], [ %i.mg, %bb.cl ], [ %i.lu, %bb.ce ], [ %i.lu, %bb.cd ]
  %.0 = phi i64 [ %i.mx, %_ZN7rocksdb9StopWatch9DelayStopEv.exit ], [ %i.mx, %bb.cl ], [ %4, %bb.ce ], [ %4, %bb.cd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr @.str.15, ptr %20, align 8, !tbaa !117
  store i64 0, ptr %i.ee, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %i.nn = load ptr, ptr %i.ef, align 8, !tbaa !97
  %i.no = load ptr, ptr %i.eg, align 8, !tbaa !97
  %.not341 = icmp eq ptr %i.nn, %i.no
  br i1 %.not341, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.np = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #22
  %i.nq = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #22
  store i64 %i.np, ptr %21, align 8, !tbaa !143
  store i64 %i.nq, ptr %i.eh, align 8, !tbaa !143
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  br i1 %.not.i183, label %_ZTWN7rocksdb15iostats_contextE.exit245, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  call void @_ZTHN7rocksdb15iostats_contextE()
  br label %_ZTWN7rocksdb15iostats_contextE.exit245

_ZTWN7rocksdb15iostats_contextE.exit245:          ; preds = %bb.cq, %bb.cr
  %i.nr = load ptr, ptr %i.ai, align 8, !tbaa !90 ; 2 uses
  br i1 %.not.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i247, label %bb.cs

bb.cs:                                            ; preds = %_ZTWN7rocksdb15iostats_contextE.exit245
  invoke void @_ZTHN7rocksdb10perf_levelE()
          to label %_ZTWN7rocksdb10perf_levelE.exit.i247 unwind label %bb.dk

_ZTWN7rocksdb10perf_levelE.exit.i247:             ; preds = %bb.cs, %_ZTWN7rocksdb15iostats_contextE.exit245
  %i.ns = load i8, ptr %i.cq, align 1, !tbaa !169
  %i.nt = icmp ugt i8 %i.ns, 4                    ; 3 uses
  %i.nu = zext i1 %i.nt to i8
  store i8 %i.nu, ptr %22, align 8, !tbaa !171
  store i8 1, ptr %i.ej, align 1, !tbaa !172
  store i32 0, ptr %i.ek, align 4, !tbaa !173
  br i1 %i.nt, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i247
  %.not.i249 = icmp eq ptr %i.nr, null
  br i1 %.not.i249, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.nv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv()
          to label %.noexc251 unwind label %bb.dk

.noexc251:                                        ; preds = %bb.cu
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !177
  br label %bb.cw

bb.cv:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i247
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false)
  store ptr %i.ei, ptr %i.en, align 8, !tbaa !174
  store ptr null, ptr %i.eo, align 8, !tbaa !175
  br label %_ZN7rocksdb13PerfStepTimer5StartEv.exit257

bb.cw:                                            ; preds = %.noexc251, %bb.ct
  %.ph466 = phi ptr [ %i.nr, %bb.ct ], [ %i.nw, %.noexc251 ] ; 4 uses
  store ptr %.ph466, ptr %i.el, align 8, !tbaa !178
  store i64 0, ptr %i.em, align 8, !tbaa !179
  store ptr %i.ei, ptr %i.en, align 8, !tbaa !174
  store ptr null, ptr %i.eo, align 8, !tbaa !175
  %i.nx = load ptr, ptr %.ph466, align 8, !tbaa !31
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 176
  %i.nz = load ptr, ptr %i.ny, align 8
  %i.oa = invoke noundef i64 %i.nz(ptr noundef nonnull align 8 dereferenceable(32) %.ph466)
          to label %.noexc256 unwind label %bb.dl, !inline_history !6 ; 2 uses

.noexc256:                                        ; preds = %bb.cw
  store i64 %i.oa, ptr %i.em, align 8, !tbaa !179
  br label %_ZN7rocksdb13PerfStepTimer5StartEv.exit257

_ZN7rocksdb13PerfStepTimer5StartEv.exit257:       ; preds = %bb.cv, %.noexc256
  %i.ob = phi ptr [ %.ph466, %.noexc256 ], [ null, %bb.cv ] ; 2 uses
  %i.oc = phi i64 [ %i.oa, %.noexc256 ], [ 0, %bb.cv ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.od = load ptr, ptr %1, align 8, !tbaa !144   ; 2 uses
  %.not.i258 = icmp eq ptr %i.od, null
  br i1 %.not.i258, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit257
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 104
  %i.of = load i8, ptr %i.oe, align 8, !tbaa !152, !range !153, !noundef !154
  %i.og = trunc nuw i8 %i.of to i1
  br i1 %i.og, label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit260, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %_ZN7rocksdb13PerfStepTimer5StartEv.exit257
  %i.oh = load ptr, ptr %i.ec, align 8, !tbaa !155
  br label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit260

_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit260:  ; preds = %bb.cx, %bb.cy
  %.0.i259 = phi ptr [ %i.oh, %bb.cy ], [ %i.eb, %bb.cx ] ; 2 uses
  %i.oi = add i64 %.099374, %3                    ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %6, i64 %.099374
  %i.ok = load ptr, ptr %.0.i259, align 8, !tbaa !31
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load ptr, ptr %i.ol, align 8
  invoke void %i.om(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %.0.i259, i64 noundef %i.oi, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(84) %2, ptr noundef nonnull %20, ptr noundef %i.oj, ptr noundef %8)
          to label %bb.cz unwind label %bb.dm

bb.cz:                                            ; preds = %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit260
  %.pre395 = load ptr, ptr %i.ew, align 8, !tbaa !61 ; 2 uses
  br i1 %.not.i261, label %_ZN7rocksdb8IOStatusaSEOS0_.exit264, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.on = load i8, ptr %23, align 8, !tbaa !189
  store i8 %i.on, ptr %0, align 8, !tbaa !44
  store i8 0, ptr %23, align 8, !tbaa !44
  %i.oo = load i8, ptr %i.ep, align 1, !tbaa !182
  store i8 %i.oo, ptr %i.n, align 1, !tbaa !141
  store i8 0, ptr %i.ep, align 1, !tbaa !141
  %i.op = load i8, ptr %i.eq, align 1, !tbaa !186, !range !153, !noundef !154
  store i8 %i.op, ptr %i.er, align 1, !tbaa !186
  %i.oq = load i8, ptr %i.es, align 4, !tbaa !184, !range !153, !noundef !154
  store i8 %i.oq, ptr %i.et, align 4, !tbaa !184
  %i.or = load i8, ptr %i.eu, align 1, !tbaa !185
  store i8 %i.or, ptr %i.ev, align 1, !tbaa !185
  store i8 0, ptr %i.eu, align 1, !tbaa !185
  store ptr null, ptr %i.ew, align 8, !tbaa !61
  %i.os = load ptr, ptr %i.p, align 8, !tbaa !61  ; 2 uses
  store ptr %.pre395, ptr %i.p, align 8, !tbaa !61
  %.not.i.i.i.i.i262 = icmp eq ptr %i.os, null
  br i1 %.not.i.i.i.i.i262, label %_ZN7rocksdb6StatusD2Ev.exit267, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i263

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i263: ; preds = %bb.da
  call void @_ZdaPv(ptr noundef nonnull %i.os) #24
  %.pre394 = load ptr, ptr %i.ew, align 8, !tbaa !61
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit264

_ZN7rocksdb8IOStatusaSEOS0_.exit264:              ; preds = %bb.cz, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i263
  %i.ot = phi ptr [ %.pre395, %bb.cz ], [ %.pre394, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i263 ] ; 2 uses
  %.not.i.i265 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i265, label %_ZN7rocksdb6StatusD2Ev.exit267, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i266

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i266: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit264
  call void @_ZdaPv(ptr noundef nonnull %i.ot) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit267

_ZN7rocksdb6StatusD2Ev.exit267:                   ; preds = %bb.da, %_ZN7rocksdb8IOStatusaSEOS0_.exit264, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %.not.i.i268 = icmp eq i64 %i.oc, 0
  br i1 %.not.i.i268, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit273, label %bb.db

bb.db:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit267
  %i.ou = load ptr, ptr %i.ob, align 8, !tbaa !31
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 176
  %i.ow = load ptr, ptr %i.ov, align 8
  %i.ox = invoke noundef i64 %i.ow(ptr noundef nonnull align 8 dereferenceable(32) %i.ob)
          to label %.noexc.i270 unwind label %bb.dd, !inline_history !8

.noexc.i270:                                      ; preds = %bb.db
  br i1 %i.nt, label %bb.dc, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit273

bb.dc:                                            ; preds = %.noexc.i270
  %i.oy = sub i64 %i.ox, %i.oc
  %i.oz = load i64, ptr %i.ei, align 8, !tbaa !143
  %i.pa = add i64 %i.oz, %i.oy
  store i64 %i.pa, ptr %i.ei, align 8, !tbaa !143
  br label %_ZN7rocksdb13PerfStepTimerD2Ev.exit273

bb.dd:                                            ; preds = %bb.db
  %i.pb = landingpad { ptr, i32 }
          catch ptr null
  %i.pc = extractvalue { ptr, i32 } %i.pb, 0
  call void @__clang_call_terminate(ptr %i.pc) #26
  unreachable

_ZN7rocksdb13PerfStepTimerD2Ev.exit273:           ; preds = %.noexc.i270, %bb.dc, %_ZN7rocksdb6StatusD2Ev.exit267
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.pd = load ptr, ptr %i.ef, align 8, !tbaa !97
  %i.pe = load ptr, ptr %i.eg, align 8, !tbaa !97
  %.not342 = icmp eq ptr %i.pd, %i.pe
end_hunk_1
