Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage?download=true
inline.NumInlined: 20074
inline.NumDeleted: 9324
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6duckdb10MagicBytes15CheckMagicBytesENS_12QueryContextERNS_10FileSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.o = load i128, ptr %i.a, align 16
  %i.p = icmp ne i128 %i.o, 265465397511803988906881385371554131
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.t = load ptr, ptr %3, align 8, !tbaa !411    ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i: ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !223
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.t) #23, !inline_history !3
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.d
  %lhsv = load i32, ptr %i.a, align 16
  %.not = icmp eq i32 %lhsv, 827474256
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %lhsv12 = load i32, ptr %i.x, align 8
  %.not13 = icmp eq i32 %lhsv12, 1262703940
  %. = select i1 %.not13, i8 1, i8 4
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g
  %.0 = phi i8 [ 3, %bb.f ], [ 2, %bb.d ], [ %., %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.pr = load ptr, ptr %3, align 8, !tbaa !411    ; 3 uses
  %.not.i14 = icmp eq ptr %.pr, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit16, label %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i15

_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i15: ; preds = %bb.h
  %i.y = load ptr, ptr %.pr, align 8, !tbaa !223
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr) #23, !inline_history !3
  br label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit16: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.h, %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i15
  %.119 = phi i8 [ %.0, %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i15 ], [ %.0, %bb.h ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit16
  %.2 = phi i8 [ %.119, %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit16 ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ 1, %bb.a ]
  ret i8 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14StorageOptions20SetEncryptionVersionERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::SerializationCompatibility", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %6 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::SerializationCompatibility", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.duckdb::SerializationCompatibility", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %13 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %14 = alloca %"class.duckdb::SerializationCompatibility", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !437
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %.critedge71.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.81, i64 6, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 6, ptr %i.e, align 8, !tbaa !352
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.f, align 2, !tbaa !351
  invoke void @_ZN6duckdb26SerializationCompatibility10FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::SerializationCompatibility") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %._crit_edge.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1446
  %i.i = icmp ult i64 %i.c, %i.h
  %i.j = load ptr, ptr %2, align 8, !tbaa !251    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge
  call void @_ZdlPv(ptr noundef %i.j) #44
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit

_ZN6duckdb26SerializationCompatibilityD2Ev.exit:  ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.m = load ptr, ptr %3, align 8, !tbaa !251    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.d
  br i1 %i.n, label %.critedge71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.m) #44
  br label %.critedge71

.critedge71:                                      ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.i, label %.critedge71.thread, label %bb.h

.critedge71.thread:                               ; preds = %bb.a, %.critedge71
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !352
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.b

bb.b:                                             ; preds = %.critedge71.thread
  %i.r = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.82, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.ak unwind label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %3, align 8, !tbaa !251    ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.t) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread: ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %.029 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.x = load ptr, ptr %4, align 8, !tbaa !251    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.x) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.029, label %bb.g, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.029, label %bb.g, label %bb.aj

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %.pn52134 = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.thread ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ]
  call void @__cxa_free_exception(ptr %i.r) #23
  br label %bb.aj

bb.h:                                             ; preds = %.critedge71.thread, %.critedge71
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !1447 ; 2 uses
  %18 = icmp eq i8 %i.ab, 127
  %spec.store.select = select i1 %18, i8 1, i8 %i.ab
  switch i8 %spec.store.select, label %bb.ad [
    i8 1, label %bb.i
    i8 0, label %bb.x
  ]

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !437
  %.not142 = icmp eq i64 %i.ac, -1
  br i1 %.not142, label %bb.j, label %._crit_edge.i.i94

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !352
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %._crit_edge.i.i78, label %._crit_edge.i.i94

._crit_edge.i.i78:                                ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.ag, ptr %8, align 8, !tbaa !350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ag, ptr noundef nonnull align 1 dereferenceable(6) @.str.83, i64 6, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 6, ptr %i.ah, align 8, !tbaa !352
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i8 0, ptr %i.ai, align 2, !tbaa !351
  invoke void @_ZN6duckdb26SerializationCompatibility10FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::SerializationCompatibility") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %._crit_edge.i.i78
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !1446
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %i.ak)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.al = load i64, ptr %6, align 8, !tbaa !244
  store i64 %i.al, ptr %i.a, align 8, !tbaa !244
  %i.am = load ptr, ptr %7, align 8, !tbaa !251   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.am) #44
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit84

_ZN6duckdb26SerializationCompatibilityD2Ev.exit84: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82
  %i.ap = load ptr, ptr %8, align 8, !tbaa !251   ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ag
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit84
  call void @_ZdlPv(ptr noundef %i.ap) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ai

bb.m:                                             ; preds = %._crit_edge.i.i78
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit90

bb.n:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %7, align 8, !tbaa !251   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.at) #44
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit90

_ZN6duckdb26SerializationCompatibilityD2Ev.exit90: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88, %bb.m
  %.pn57 = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88 ], [ %i.as, %bb.n ]
  %i.aw = load ptr, ptr %8, align 8, !tbaa !251   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ag
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit90
  call void @_ZdlPv(ptr noundef %i.aw) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

._crit_edge.i.i94:                                ; preds = %bb.j, %bb.i
  %i.ay = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.az, ptr %10, align 8, !tbaa !350
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.az, ptr noundef nonnull align 1 dereferenceable(6) @.str.83, i64 6, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 6, ptr %i.ba, align 8, !tbaa !352
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i8 0, ptr %i.bb, align 2, !tbaa !351
  invoke void @_ZN6duckdb26SerializationCompatibility10FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::SerializationCompatibility") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %._crit_edge.i.i94
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !1446
  %i.be = icmp ult i64 %i.ay, %i.bd
  %i.bf = load ptr, ptr %9, align 8, !tbaa !251   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.bf) #44
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit100

_ZN6duckdb26SerializationCompatibilityD2Ev.exit100: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98
  %i.bi = load ptr, ptr %10, align 8, !tbaa !251  ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.az
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit100
  call void @_ZdlPv(ptr noundef %i.bi) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.be, label %bb.p, label %bb.ai

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !352
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.ai, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = load i8, ptr %i.aa, align 8, !tbaa !1447
  %i.bo = icmp eq i8 %i.bn, 1
  br i1 %i.bo, label %bb.r, label %bb.ai

bb.r:                                             ; preds = %bb.q
  %i.bp = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.84, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.ak unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i94
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %10, align 8, !tbaa !251  ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.az
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.br) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread: ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  %.026 = phi i1 [ false, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bv = load ptr, ptr %11, align 8, !tbaa !251  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.bv) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.026, label %bb.w, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.026, label %bb.w, label %bb.aj

end_hunk_0
