inline.NumInlined: 22010
inline.NumDeleted: 8913
begin_hunk_0_@_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIdEEvv:bb.a
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.h = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_10interval_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2129
  %i.d = icmp eq i8 %i.c, 21
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.179, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 21, ptr %i.a, align 1, !tbaa !4371
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.h = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !2129
  %i.d = icmp eq i8 %i.c, -56
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.179, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i8 -56, ptr %i.a, align 1, !tbaa !4371
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeERKS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %i.h = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.h) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL17MergeValidityLoopERNS_10UpdateInfoERNS_6VectorES1_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(88) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(73) %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) #1 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 16 uses
  %i.b = alloca [2048 x i32], align 16            ; 23 uses
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load ptr, ptr %3, align 8, !tbaa !1193   ; 2 uses
  %.val = load ptr, ptr %8, align 8               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1164
  %i.g = shl i64 %i.f, 11
  %i.h = add i64 %i.g, %7                         ; 13 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !1158
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1158
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.s ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %..preheader_crit_edge.i, label %.lr.ph157.i

..preheader_crit_edge.i:                          ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !1151
  %.pre194.i = zext i32 %.pre.i to i64
  br label %.preheader.i

.lr.ph157.i:                                      ; preds = %bb.a
  %i.u = load ptr, ptr %6, align 8, !tbaa !152    ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1151
  %i.x = zext i32 %i.w to i64                     ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = zext i32 %i.z to i64                    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre194.i, %..preheader_crit_edge.i ], [ %i.x, %bb.k ] ; 3 uses
  %.0123.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.2125.i, %bb.k ] ; 4 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.ac, label %.lr.ph162.preheader.i, label %._crit_edge.i

.lr.ph162.preheader.i:                            ; preds = %.preheader.i
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %.0123.lcssa.i
  %i.ad = getelementptr i8, ptr %2, i64 %.072.lcssa.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.s
  %scevgep184.i = getelementptr i8, ptr %i.ae, i64 88
  %i.af = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep.i, ptr align 1 %scevgep184.i, i64 %i.af, i1 false), !tbaa !1916
  %i.ag = shl i64 %.0123.lcssa.i, 2
  %scevgep185.i = getelementptr i8, ptr %i.b, i64 %i.ag
  %i.ah = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.ai = getelementptr i8, ptr %2, i64 %i.ah
  %scevgep186.i = getelementptr i8, ptr %i.ai, i64 88
  %i.aj = shl nuw nsw i64 %i.af, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep185.i, ptr align 4 %scevgep186.i, i64 %i.aj, i1 false), !tbaa !3
  %i.ak = add i64 %.0123.lcssa.i, %.pre-phi.i
  %i.al = sub i64 %i.ak, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph157.i
  %.0156.i = phi i64 [ 0, %.lr.ph157.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072155.i = phi i64 [ 0, %.lr.ph157.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075154.i = phi i64 [ 0, %.lr.ph157.i ], [ %i.cd, %bb.k ] ; 3 uses
  %.0123153.i = phi i64 [ 0, %.lr.ph157.i ], [ %.2125.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.075154.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.ap = phi i64 [ %i.ao, %bb.c ], [ %.075154.i, %bb.b ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !24
  %i.as = sub i64 %i.ar, %i.h                     ; 7 uses
  %i.at = icmp ult i64 %.072155.i, %i.x
  br i1 %i.at, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173148.i = phi i64 [ %i.bd, %bb.d ], [ %.072155.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1124147.i = phi i64 [ %i.bb, %bb.d ], [ %.0123153.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.173148.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3  ; 3 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = icmp ugt i64 %i.as, %i.aw
  br i1 %i.ax, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.t, i64 %.173148.i
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !1916, !range !263, !noundef !70
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1124147.i
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !1916
  %i.bb = add i64 %.1124147.i, 1                  ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1124147.i
  store i32 %i.av, ptr %i.bc, align 4, !tbaa !3
  %i.bd = add i64 %.173148.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bd, %i.x
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4548

bb.e:                                             ; preds = %.lr.ph.i
  %i.be = icmp eq i64 %i.as, %i.aw
  br i1 %i.be, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr inbounds nuw i8, ptr %i.t, i64 %.173148.i
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !1916, !range !263, !noundef !70
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1124147.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !1916
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1124147.i
  store i32 %i.av, ptr %i.bi, align 4, !tbaa !3
  %i.bj = add nuw nsw i64 %.173148.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1124143.i = phi i64 [ %.1124147.i, %bb.e ], [ %.0123153.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bb, %bb.d ] ; 3 uses
  %.173140.i = phi i64 [ %.173148.i, %bb.e ], [ %.072155.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.x, %bb.d ]
  %i.bk = icmp ult i64 %.0156.i, %i.aa
  br i1 %i.bk, label %.lr.ph151.i, label %.critedge2.i

.lr.ph151.i:                                      ; preds = %.critedge.i, %bb.g
  %.1150.i = phi i64 [ %i.bp, %bb.g ], [ %.0156.i, %.critedge.i ] ; 5 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.1150.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = icmp ugt i64 %i.as, %i.bn
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph151.i
  %i.bp = add i64 %.1150.i, 1                     ; 2 uses
  %exitcond182.not.i = icmp eq i64 %i.bp, %i.aa
  br i1 %exitcond182.not.i, label %.critedge2.i, label %.lr.ph151.i, !llvm.loop !4549

bb.h:                                             ; preds = %.lr.ph151.i
  %i.bq = icmp eq i64 %i.as, %i.bn
  br i1 %i.bq, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 %.1150.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !1916, !range !263, !noundef !70
  br label %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1146.i = phi i64 [ %.1150.i, %bb.h ], [ %.0156.i, %.critedge.i ], [ %i.aa, %bb.g ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i, label %bb.j

bb.j:                                             ; preds = %.critedge2.i
  %i.bt = lshr i64 %i.as, 6
  %i.bu = and i64 %i.as, 63
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.bt
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !24
  %i.bx = lshr i64 %i.bw, %i.bu
  %i.by = trunc i64 %i.bx to i8
  %i.bz = and i8 %i.by, 1
  br label %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i

_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i: ; preds = %bb.j, %.critedge2.i, %bb.i
  %.0.i.i.sink.i = phi i8 [ %i.bs, %bb.i ], [ %i.bz, %bb.j ], [ 1, %.critedge2.i ]
  %.1145.i = phi i64 [ %.1150.i, %bb.i ], [ %.1146.i, %bb.j ], [ %.1146.i, %.critedge2.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1124143.i
  store i8 %.0.i.i.sink.i, ptr %i.ca, align 1, !tbaa !1916
  %i.cb = trunc i64 %i.as to i32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1124143.i
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i, %bb.f
  %.1124142.i = phi i64 [ %.1124147.i, %bb.f ], [ %.1124143.i, %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i ]
  %.274.i = phi i64 [ %i.bj, %bb.f ], [ %.173140.i, %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i ] ; 2 uses
  %.2.i = phi i64 [ %.0156.i, %bb.f ], [ %.1145.i, %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i ]
  %.2125.i = add i64 %.1124142.i, 1               ; 2 uses
  %i.cd = add nuw i64 %.075154.i, 1               ; 2 uses
  %exitcond183.not.i = icmp eq i64 %i.cd, %5
  br i1 %exitcond183.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4550

._crit_edge.i:                                    ; preds = %.lr.ph162.preheader.i, %.preheader.i
  %.3126.lcssa.i = phi i64 [ %.0123.lcssa.i, %.preheader.i ], [ %i.al, %.lr.ph162.preheader.i ] ; 3 uses
  %i.ce = trunc i64 %.3126.lcssa.i to i32
  store i32 %i.ce, ptr %i.ab, align 8, !tbaa !1151
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr nonnull align 16 %i.a, i64 %.3126.lcssa.i, i1 false)
  %i.cf = shl i64 %.3126.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 16 %i.b, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1151 ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 11 uses
  %i.cj = icmp ne i64 %5, 0
  %i.ck = icmp ne i32 %i.ch, 0
  %i.cl = and i1 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i77.i = icmp eq ptr %.val.i, null
  %i.cm = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, null         ; 2 uses
  %i.cn = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not.i.i.i60.i.i = icmp eq ptr %i.cn, null     ; 2 uses
  br label %bb.m

.preheader1.i.i:                                  ; preds = %bb.w, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i.a, %bb.w ] ; 14 uses
  %.051.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.152.i.i, %bb.w ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.w ] ; 19 uses
  %i.co = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.co, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i61.i.i = icmp eq ptr %.val.i, null       ; 2 uses
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  %.not.i.i63.i.i = icmp eq ptr %i.cp, null       ; 3 uses
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !91  ; 4 uses
  %.not.i.i.i65.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i65.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  %scevgep189.i = getelementptr i8, ptr %i.a, i64 %.4.i
  %i.cr = sub i64 %5, %.0.lcssa.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep189.i, i8 1, i64 %i.cr, i1 false), !tbaa !1916
  br i1 %.not.i61.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader, label %.lr.ph9.split.us.split.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.cs = sub i64 %5, %.0.lcssa.i.i               ; 3 uses
  %min.iters.check = icmp ult i64 %i.cs, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader115, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader
  %n.vec = and i64 %i.cs, -4                      ; 4 uses
  %i.ct = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.cu = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cw = getelementptr [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cx = getelementptr [8 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load = load <2 x i64>, ptr %i.cx, align 8, !tbaa !24
  %wide.load113 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !24
  %i.cz = sub <2 x i64> %wide.load, %broadcast.splat
  %i.da = sub <2 x i64> %wide.load113, %broadcast.splat
  %i.db = trunc <2 x i64> %i.cz to <2 x i32>
  %i.dc = trunc <2 x i64> %i.da to <2 x i32>
  %i.dd = getelementptr [4 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store <2 x i32> %i.db, ptr %i.dd, align 4, !tbaa !3
  store <2 x i32> %i.dc, ptr %i.de, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !4551

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cs, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader115

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader115: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader ], [ %i.ct, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader ], [ %i.cu, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i
  %i.dg = phi i64 [ %i.dm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader115 ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.dn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader115 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !24
  %i.dj = sub i64 %i.di, %i.h
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dg
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !3
  %i.dm = add i64 %i.dg, 1                        ; 2 uses
  %i.dn = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond51.not.i.i = icmp eq i64 %i.dn, %5
  br i1 %exitcond51.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i, !llvm.loop !4552

.lr.ph9.split.us.split.i.i:                       ; preds = %.lr.ph9.split.us.i.i
  br i1 %.not.i.i63.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader: ; preds = %.lr.ph9.split.us.split.i.i
  %i.do = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.do, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !24
  %i.du = sub i64 %i.dt, %i.h
  %i.dv = trunc i64 %i.du to i32
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !3
  %i.dx = add i64 %.4.i, 1                        ; 2 uses
  %i.dy = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader
  %.lcssa119.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader ], [ %i.dx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader ], [ %i.dx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader ], [ %i.dy, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol ]
  %i.dz = icmp eq i64 %5, %.neg
  br i1 %i.dz, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader: ; preds = %.lr.ph9.split.us.split.i.i
  %i.ea = sub i64 %5, %.0.lcssa.i.i
  %.neg139 = add i64 %.0.lcssa.i.i, 1
  %xtraiter136 = and i64 %i.ea, 1
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !24
  %i.eg = sub i64 %i.ef, %i.h
  %i.eh = trunc i64 %i.eg to i32
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !3
  %i.ej = add i64 %.4.i, 1                        ; 2 uses
  %i.ek = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader
  %.lcssa117.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader ], [ %i.ej, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol ]
  %.unr138 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader ], [ %i.ej, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol ]
  %.28.us.us25.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader ], [ %i.ek, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol ]
  %i.el = icmp eq i64 %5, %.neg139
  br i1 %i.el, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i
  %i.em = phi i64 [ %i.ff, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i ], [ %.unr138, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit ] ; 3 uses
  %.28.us.us25.i.i = phi i64 [ %i.fg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i ], [ %.28.us.us25.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us.us25.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !24
  %i.es = sub i64 %i.er, %i.h
  %i.et = trunc i64 %i.es to i32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.em
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !3
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us.us25.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !3
end_hunk_0
