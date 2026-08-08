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
  %i.t = load ptr, ptr %3, align 8, !tbaa !255    ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i: ; preds = %bb.e
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.t) #23, !inline_history !256
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
  %.pr = load ptr, ptr %3, align 8, !tbaa !255    ; 3 uses
  %.not.i14 = icmp eq ptr %.pr, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN6duckdb10FileHandleESt14default_deleteIS1_EED2Ev.exit16, label %_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i15

_ZNKSt14default_deleteIN6duckdb10FileHandleEEclEPS1_.exit.i15: ; preds = %bb.h
  %i.y = load ptr, ptr %.pr, align 8, !tbaa !45
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr) #23, !inline_history !256
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !289
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %.critedge71.thread, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.d, ptr noundef nonnull align 1 dereferenceable(6) @.str.81, i64 6, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 6, ptr %i.e, align 8, !tbaa !185
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 22
  store i8 0, ptr %i.f, align 2, !tbaa !184
  invoke void @_ZN6duckdb26SerializationCompatibility10FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::SerializationCompatibility") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %.critedge unwind label %bb.e

.critedge:                                        ; preds = %._crit_edge.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !2325
  %i.i = icmp ult i64 %i.c, %i.h
  %i.j = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge
  call void @_ZdlPv(ptr noundef %i.j) #44
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit

_ZN6duckdb26SerializationCompatibilityD2Ev.exit:  ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.m = load ptr, ptr %3, align 8, !tbaa !82     ; 2 uses
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
  %i.p = load i64, ptr %i.o, align 8, !tbaa !185
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
  %i.t = load ptr, ptr %3, align 8, !tbaa !82     ; 2 uses
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
  %i.x = load ptr, ptr %4, align 8, !tbaa !82     ; 2 uses
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
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !2326 ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 127
  %spec.store.select = select i1 %i.ac, i8 1, i8 %i.ab
  switch i8 %spec.store.select, label %bb.ad [
    i8 1, label %bb.i
    i8 0, label %bb.x
  ]

bb.i:                                             ; preds = %bb.h
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !289
  %.not142 = icmp eq i64 %i.ad, -1
  br i1 %.not142, label %bb.j, label %._crit_edge.i.i94

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !185
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %._crit_edge.i.i78, label %._crit_edge.i.i94

._crit_edge.i.i78:                                ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.ah, ptr %8, align 8, !tbaa !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ah, ptr noundef nonnull align 1 dereferenceable(6) @.str.83, i64 6, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 6, ptr %i.ai, align 8, !tbaa !185
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 22
  store i8 0, ptr %i.aj, align 2, !tbaa !184
  invoke void @_ZN6duckdb26SerializationCompatibility10FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::SerializationCompatibility") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %._crit_edge.i.i78
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !2325
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %i.al)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = load i64, ptr %6, align 8, !tbaa !70
  store i64 %i.am, ptr %i.a, align 8, !tbaa !70
  %i.an = load ptr, ptr %7, align 8, !tbaa !82    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.an) #44
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit84

_ZN6duckdb26SerializationCompatibilityD2Ev.exit84: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i82
  %i.aq = load ptr, ptr %8, align 8, !tbaa !82    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ah
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit84
  call void @_ZdlPv(ptr noundef %i.aq) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit84, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ai

bb.m:                                             ; preds = %._crit_edge.i.i78
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit90

bb.n:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %7, align 8, !tbaa !82    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.au) #44
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit90

_ZN6duckdb26SerializationCompatibilityD2Ev.exit90: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88, %bb.m
  %.pn57 = phi { ptr, i32 } [ %i.as, %bb.m ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88 ], [ %i.at, %bb.n ]
  %i.ax = load ptr, ptr %8, align 8, !tbaa !82    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ah
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit90
  call void @_ZdlPv(ptr noundef %i.ax) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aj

._crit_edge.i.i94:                                ; preds = %bb.j, %bb.i
  %i.az = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.ba, ptr %10, align 8, !tbaa !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ba, ptr noundef nonnull align 1 dereferenceable(6) @.str.83, i64 6, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 6, ptr %i.bb, align 8, !tbaa !185
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 22
  store i8 0, ptr %i.bc, align 2, !tbaa !184
  invoke void @_ZN6duckdb26SerializationCompatibility10FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::SerializationCompatibility") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %._crit_edge.i.i94
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !2325
  %i.bf = icmp ult i64 %i.az, %i.be
  %i.bg = load ptr, ptr %9, align 8, !tbaa !82    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.bg) #44
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit100

_ZN6duckdb26SerializationCompatibilityD2Ev.exit100: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i98
  %i.bj = load ptr, ptr %10, align 8, !tbaa !82   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ba
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit100
  call void @_ZdlPv(ptr noundef %i.bj) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %i.bf, label %bb.p, label %bb.ai

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !185
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.ai, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = load i8, ptr %i.aa, align 8, !tbaa !2326
  %i.bp = icmp eq i8 %i.bo, 1
  br i1 %i.bp, label %bb.r, label %bb.ai

bb.r:                                             ; preds = %bb.q
  %i.bq = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.84, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.s unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.ak unwind label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i94
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = load ptr, ptr %10, align 8, !tbaa !82   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ba
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.bs) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread: ; preds = %bb.r
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.w

bb.v:                                             ; preds = %bb.t, %bb.s
  %.026 = phi i1 [ false, %bb.t ], [ true, %bb.s ] ; 2 uses
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bw = load ptr, ptr %11, align 8, !tbaa !82   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.bw) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.026, label %bb.w, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.026, label %bb.w, label %bb.aj

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %.pn62137 = phi { ptr, i32 } [ %i.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109.thread ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ]
  call void @__cxa_free_exception(ptr %i.bq) #23
  br label %bb.aj

bb.x:                                             ; preds = %bb.h
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !289
  %.not141 = icmp eq i64 %i.bz, -1
  br i1 %.not141, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !185
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %._crit_edge.i.i110, label %bb.ai

._crit_edge.i.i110:                               ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  store ptr %i.cd, ptr %15, align 8, !tbaa !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cd, ptr noundef nonnull align 1 dereferenceable(6) @.str.83, i64 6, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 6, ptr %i.ce, align 8, !tbaa !185
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 22
  store i8 0, ptr %i.cf, align 2, !tbaa !184
  invoke void @_ZN6duckdb26SerializationCompatibility10FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::SerializationCompatibility") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %._crit_edge.i.i110
  %i.cg = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !2325
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %i.ch)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ci = load i64, ptr %13, align 8, !tbaa !70
  store i64 %i.ci, ptr %i.a, align 8, !tbaa !70
  %i.cj = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit116, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.cj) #44
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit116

_ZN6duckdb26SerializationCompatibilityD2Ev.exit116: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i114
  %i.cm = load ptr, ptr %15, align 8, !tbaa !82   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.cd
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit116
  call void @_ZdlPv(ptr noundef %i.cm) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ai

bb.ab:                                            ; preds = %._crit_edge.i.i110
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit122

bb.ac:                                            ; preds = %bb.z
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = load ptr, ptr %14, align 8, !tbaa !82   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120: ; preds = %bb.ac
  call void @_ZdlPv(ptr noundef %i.cq) #44
  br label %_ZN6duckdb26SerializationCompatibilityD2Ev.exit122

_ZN6duckdb26SerializationCompatibilityD2Ev.exit122: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120, %bb.ab
  %.pn54 = phi { ptr, i32 } [ %i.co, %bb.ab ], [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120 ], [ %i.cp, %bb.ac ]
  %i.ct = load ptr, ptr %15, align 8, !tbaa !82   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.cd
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit122
  call void @_ZdlPv(ptr noundef %i.ct) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125: ; preds = %_ZN6duckdb26SerializationCompatibilityD2Ev.exit122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.aj

bb.ad:                                            ; preds = %bb.h
  %i.cv = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.85, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.ae unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN6duckdb29InvalidConfigurationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTIN6duckdb29InvalidConfigurationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.ak unwind label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread: ; preds = %bb.ad
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.0 = phi i1 [ false, %bb.af ], [ true, %bb.ae ] ; 2 uses
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cy = load ptr, ptr %16, align 8, !tbaa !82   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef %i.cy) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br i1 %.0, label %bb.ah, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br i1 %.0, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %.pn64140 = phi { ptr, i32 } [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.thread ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ]
  call void @__cxa_free_exception(ptr %i.cv) #23
  br label %bb.aj

bb.ai:                                            ; preds = %bb.p, %bb.x, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %.028 = phi i8 [ 0, %bb.y ], [ 1, %bb.q ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87 ], [ 0, %bb.x ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ 0, %bb.p ]
  store i8 %.028, ptr %i.aa, align 8, !tbaa !2326
  ret void

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74
  %.pn64.pn.pn = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn52134, %bb.g ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn64140, %bb.ah ], [ %i.cx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128 ], [ %.pn62137, %bb.w ], [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106 ], [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107 ], [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126 ]
  resume { ptr, i32 } %.pn64.pn.pn

bb.ak:                                            ; preds = %bb.af, %bb.t, %bb.d
  unreachable
}

declare void @_ZN6duckdb26SerializationCompatibility10FromStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.duckdb::SerializationCompatibility") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21InvalidInputExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.3401", align 8  ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !2327
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !2327
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !402, !noalias !2327 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !405, !noalias !2327 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !82   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #44
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !406

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !402, !noalias !2327
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #44
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !2327
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !2327
  invoke void @_ZN6duckdb21InvalidInputExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !82     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !82     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume
}

declare void @_ZN6duckdb29InvalidConfigurationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14StorageOptions10InitializeERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_5ValueESt4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S8_EEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %11 = alloca %"class.duckdb::shared_ptr.720", align 16 ; 7 uses
  %12 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %13 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %21 = alloca %"class.duckdb::SerializationCompatibility", align 8 ; 8 uses
  %22 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %23 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !183
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !185
  store i8 0, ptr %i.b, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0179.0255 = load ptr, ptr %i.d, align 8, !tbaa !506 ; 2 uses
  %.not224256 = icmp eq ptr %.sroa.0179.0255, null
  br i1 %.not224256, label %._crit_edge.i.i98, label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %21, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36
  br label %bb.a

._crit_edge.i.i98:                                ; preds = %bb.ck, %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  %i.w = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  store ptr %i.w, ptr %27, align 8, !tbaa !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.w, ptr noundef nonnull align 1 dereferenceable(14) @.str.87, i64 14, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 14, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %27, i64 30
  store i8 0, ptr %i.y, align 2, !tbaa !184
  %i.z = invoke noundef i64 @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb5ValueEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseESt17integral_constantIbLb1EERS7_(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEE5eraseERSD_.exit unwind label %bb.cm ; 0 uses

bb.a:                                             ; preds = %.lr.ph, %bb.ck
  %.sroa.0179.0257 = phi ptr [ %.sroa.0179.0255, %.lr.ph ], [ %.sroa.0179.0, %bb.ck ] ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0179.0257, i64 8 ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0179.0257, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !185 ; 7 uses
  switch i64 %i.ac, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit141.thread216 [
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit103
    i64 17, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit115
    i64 15, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit131
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit139
    i64 24, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit141
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
end_hunk_0
