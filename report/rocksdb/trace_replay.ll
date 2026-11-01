Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/trace_replay?download=true
inline.NumInlined: 1024
inline.NumDeleted: 411
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7rocksdb22PutLengthPrefixedSliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_5SliceE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.q = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq ptr %i.e, %i.a
  br i1 %.not8.i.i.i, label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.h, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i8, ptr %i.a, align 1, !tbaa !19
  store i8 %i.u, ptr %i.t, align 1, !tbaa !19
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.a, i64 %i.h, i1 false)
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.h)
  br label %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit

_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.m, ptr %i.i, align 8, !tbaa !20
  %i.v = load ptr, ptr %0, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.m
  store i8 0, ptr %i.w, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.x = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.y = load i64, ptr %i.b, align 8, !tbaa !24   ; 6 uses
  %i.z = load i64, ptr %i.i, align 8, !tbaa !20   ; 5 uses
  %i.aa = sub i64 9223372036854775807, %i.z
  %i.ab = icmp ult i64 %i.aa, %i.y
  br i1 %i.ab, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.h:                                             ; preds = %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.62) #26
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %_ZN7rocksdb11PutVarint32IJjEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpT_.exit
  %i.ac = add i64 %i.z, %i.y                      ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.o
  br i1 %i.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.af = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.af)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ah = phi i64 [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i = icmp ugt i64 %i.ac, %i.ah
  br i1 %.not.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.y, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.z ; 2 uses
  %cond.i.i = icmp eq i64 %i.y, 1
  br i1 %cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = load i8, ptr %i.x, align 1, !tbaa !19
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.x, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z, i64 noundef 0, ptr noundef %i.x, i64 noundef %i.y)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.i, %bb.k, %bb.l, %bb.m
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !20
  %i.ak = load ptr, ptr %0, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store i8 0, ptr %i.al, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6Tracer10WriteTraceERKNS_5TraceE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !179
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr @.str.55, ptr %4, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 26, ptr %i.d, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZNK7rocksdb6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.e = load ptr, ptr %6, align 8, !tbaa !18
  store ptr %i.e, ptr %5, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  store i64 %i.h, ptr %i.f, align 8, !tbaa !24
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit unwind label %bb.c

_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit
  %i.l = load i64, ptr %i.j, align 8, !tbaa !19
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb6Status10IncompleteERKNS_5SliceES3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %6, align 8, !tbaa !18     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !19
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.t, ptr %7, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !20
  store i8 0, ptr %i.t, align 8, !tbaa !19
  invoke void @_ZN7rocksdb12TracerHelper11EncodeTraceERKNS_5TraceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %7)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.x = load ptr, ptr %7, align 8, !tbaa !18
  store ptr %i.x, ptr %8, align 8, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.z = load i64, ptr %i.u, align 8, !tbaa !20
  store i64 %i.z, ptr %i.y, align 8, !tbaa !24
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.ad = load i8, ptr %0, align 8, !tbaa !179
  %i.ae = icmp eq i8 %i.ad, 0
  %.not.i = icmp eq ptr %i.a, %0
  %or.cond = select i1 %i.ae, i1 true, i1 %.not.i
  br i1 %or.cond, label %_ZN7rocksdb6StatusaSERKS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %9 = load <4 x i8>, ptr %0, align 8, !tbaa !19
  store <4 x i8> %9, ptr %i.a, align 8, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %10 = load i8, ptr %i.af, align 4, !tbaa !49, !range !39, !noundef !40
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i8 %10, ptr %11, align 4, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 61
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !35 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull %i.ak)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %i.al = phi ptr [ %.pre.i, %.noexc ], [ null, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr null, ptr %3, align 8, !tbaa !35
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.an) #24
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !35   ; 2 uses
  %.not.i12.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i12.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i
  call void @_ZdaPv(ptr noundef nonnull %.pr.i) #24
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN7rocksdb6StatusaSERKS0_.exit

bb.j:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.k:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.l:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !35 ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i11, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.ar) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusaSERKS0_.exit:                  ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EED2Ev.exit.i, %bb.f
  %i.as = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.t
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit
  %i.au = load i64, ptr %i.t, align 8, !tbaa !19
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZN7rocksdb6StatusaSERKS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.m

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12, %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.ap, %bb.k ], [ %i.aq, %bb.l ], [ %i.aq, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i12 ]
  %i.aw = load ptr, ptr %7, align 8, !tbaa !18    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.t
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.ay = load i64, ptr %i.t, align 8, !tbaa !19
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.n

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19 ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb6Tracer3GetEPNS_18ColumnFamilyHandleERKNS_5SliceE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"struct.rocksdb::Trace", align 8   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d), !inline_history !76
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !77
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %_ZN7rocksdb6Tracer15ShouldSkipTraceERKNS_9TraceTypeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !78
  %i.n = and i64 %i.m, 1
  %.not5.i = icmp eq i64 %i.n, 0
  br i1 %.not5.i, label %_ZN7rocksdb6Tracer15ShouldSkipTraceERKNS_9TraceTypeE.exit, label %_ZN7rocksdb6Tracer15ShouldSkipTraceERKNS_9TraceTypeE.exit.thread

_ZN7rocksdb6Tracer15ShouldSkipTraceERKNS_9TraceTypeE.exit: ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !79
  %i.q = add i64 %i.p, 1                          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !80
  %i.t = icmp ult i64 %i.q, %i.s                  ; 2 uses
  %spec.store.select.i = select i1 %i.t, i64 %i.q, i64 0
  store i64 %spec.store.select.i, ptr %i.o, align 8, !tbaa !79
  br i1 %i.t, label %_ZN7rocksdb6Tracer15ShouldSkipTraceERKNS_9TraceTypeE.exit.thread, label %bb.c

_ZN7rocksdb6Tracer15ShouldSkipTraceERKNS_9TraceTypeE.exit.thread: ; preds = %bb.b, %bb.a, %_ZN7rocksdb6Tracer15ShouldSkipTraceERKNS_9TraceTypeE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.u, align 8, !tbaa !27, !alias.scope !182
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !182
  br label %bb.o

bb.c:                                             ; preds = %_ZN7rocksdb6Tracer15ShouldSkipTraceERKNS_9TraceTypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 0, ptr %i.v, align 8, !tbaa !58
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 10 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  store i64 0, ptr %i.y, align 8, !tbaa !20
  store i8 0, ptr %i.x, align 8, !tbaa !19
  %i.z = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 152
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %bb.c
  store i64 %i.ad, ptr %4, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 4, ptr %i.ae, align 8, !tbaa !55
  %i.af = load i64, ptr %i.v, align 8, !tbaa !54
  %i.ag = or i64 %i.af, 12                        ; 3 uses
  store i64 %i.ag, ptr %i.v, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.ag, ptr %i.b, align 8, !tbaa !54
  %i.ah = load i64, ptr %i.y, align 8, !tbaa !20  ; 5 uses
  %i.ai = and i64 %i.ah, -8
  %i.aj = icmp eq i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.d
  %i.ak = add nsw i64 %i.ah, 8                    ; 3 uses
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !18  ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.x
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.an = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ao = load i64, ptr %i.x, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.ap = phi i64 [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.ak, %i.ap
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ah
  store i64 %i.ag, ptr %i.aq, align 1
  br label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
end_hunk_0
