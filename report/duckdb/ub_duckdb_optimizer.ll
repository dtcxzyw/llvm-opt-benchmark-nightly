inline.NumInlined: 25580
inline.NumDeleted: 11329
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN6duckdb9Exception25ConstructMessageRecursiveIjJRKjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !388
  store ptr %i.k, ptr %i.h, align 8, !tbaa !124
  store i64 0, ptr %i.s, align 8, !tbaa !388
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !571
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !571
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !124 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.x = icmp eq ptr %.pre10, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveIjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !124 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveIjJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.a = load i32, ptr %3, align 4, !tbaa !3, !noalias !4840
  %i.b = zext i32 %i.a to i64
  call void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !571  ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !585
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !387
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !124  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.n = load i64, ptr %i.m, align 8, !tbaa !388  ; 3 uses
  %i.o = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.o)
  %i.p = add nuw nsw i64 %i.n, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.k, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.j, ptr %i.g, align 8, !tbaa !124
  %i.q = load i64, ptr %i.k, align 8, !tbaa !241
  store i64 %i.q, ptr %i.i, align 8, !tbaa !241
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !388
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.r = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.n, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.r, ptr %i.t, align 8, !tbaa !388
  store ptr %i.k, ptr %i.h, align 8, !tbaa !124
  store i64 0, ptr %i.s, align 8, !tbaa !388
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !571
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.v, ptr %i.c, align 8, !tbaa !571
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !124 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = icmp eq ptr %.pre9, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !124 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #34
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %i.y
}

declare void @_ZN6duckdb20ExceptionFormatValueC1El(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef) unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #21

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK6duckdb13PlanSignature13HashSignatureEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !4747 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !4740 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !4740 ; 2 uses
  %.not8 = icmp eq ptr %i.d, %i.f
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.i, %.lr.ph ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi i64 [ %i.i, %.lr.ph ], [ %i.b, %bb.a ]
  %.sroa.05.09 = phi ptr [ %i.j, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.05.09, align 8, !tbaa !491
  %i.h = tail call noundef i64 @_ZNK6duckdb13PlanSignature13HashSignatureEv(ptr noundef nonnull align 8 dereferenceable(64) %i.g)
  %i.i = xor i64 %i.h, %.010                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.f
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImN6duckdb19arena_stl_allocatorImEEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !496  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !506  ; 6 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775800
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorImN6duckdb19arena_stl_allocatorImEEE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.58) #35
  unreachable

_ZNKSt6vectorImN6duckdb19arena_stl_allocatorImEEE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 1152921504606846975)
  %i.m = select i1 %i.k, i64 1152921504606846975, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = load ptr, ptr %0, align 8, !tbaa !4697
  tail call void @_ZN6duckdb14ArenaAllocator9AlignNextEv(ptr noundef nonnull align 8 dereferenceable(72) %i.p)
  %i.q = load ptr, ptr %0, align 8, !tbaa !4697   ; 2 uses
  %i.r = shl nuw nsw i64 %i.m, 3                  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !4698 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorImN6duckdb19arena_stl_allocatorImEEE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !4700 ; 2 uses
  %i.w = add i64 %i.v, %i.r                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !4712
  %i.z = icmp ugt i64 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorImEEE8allocateERS2_m.exit.i

bb.d:                                             ; preds = %bb.c, %_ZNKSt6vectorImN6duckdb19arena_stl_allocatorImEEE12_M_check_lenEmPKc.exit
  tail call void @_ZN6duckdb14ArenaAllocator16AllocateNewBlockEm(ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !4698 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 24
  %.pre4.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !4700 ; 2 uses
  %.pre5.i.i.i.i = add i64 %.pre4.i.i.i.i, %i.r
  br label %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorImEEE8allocateERS2_m.exit.i

_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorImEEE8allocateERS2_m.exit.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i.i = phi i64 [ %.pre5.i.i.i.i, %bb.d ], [ %i.w, %bb.c ]
  %i.aa = phi i64 [ %.pre4.i.i.i.i, %bb.d ], [ %i.v, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %.pre.i.i.i.i, %bb.d ], [ %i.t, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !4713 ; 2 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa ; 8 uses
  store i64 %.pre-phi.i.i.i.i, ptr %i.af, align 8, !tbaa !4700
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.o
  %i.ai = load i64, ptr %2, align 8, !tbaa !66
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !66
  %.not13.i.i = icmp eq ptr %i.d, %1
  br i1 %.not13.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N6duckdb19arena_stl_allocatorImEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorImEEE8allocateERS2_m.exit.i
  %3 = ptrtoint ptr %1 to i64
  %i.aj = sub i64 %3, %i.f
  %i.ak = add i64 %i.aj, -8                       ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader70, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.an = add i64 %i.aa, %i.ae
  %i.ao = sub i64 %i.f, %i.an
  %diff.check = icmp ugt i64 %i.ao, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader70, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ag, i64 %i.ap  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.d, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.as ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.d, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep47, align 8, !tbaa !66
  %wide.load48 = load <2 x i64>, ptr %i.at, align 8, !tbaa !66
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !66
  store <2 x i64> %wide.load48, ptr %i.au, align 8, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !4843

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N6duckdb19arena_stl_allocatorImEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.preheader70

.lr.ph.i.i.preheader70:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.015.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.preheader ], [ %i.aq, %middle.block ]
  %.sroa.010.014.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader70, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.ay, %.lr.ph.i.i ], [ %.015.i.i.ph, %.lr.ph.i.i.preheader70 ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %.sroa.010.014.i.i.ph, %.lr.ph.i.i.preheader70 ] ; 2 uses
  %i.aw = load i64, ptr %.sroa.010.014.i.i, align 8, !tbaa !66
  store i64 %i.aw, ptr %.015.i.i, align 8, !tbaa !66
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ax, %1
  br i1 %.not.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N6duckdb19arena_stl_allocatorImEEET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i, !llvm.loop !4844

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N6duckdb19arena_stl_allocatorImEEET0_T_S5_S4_RT1_.exit: ; preds = %.lr.ph.i.i, %middle.block, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorImEEE8allocateERS2_m.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.ag, %_ZNSt16allocator_traitsIN6duckdb19arena_stl_allocatorImEEE8allocateERS2_m.exit.i ], [ %i.aq, %middle.block ], [ %i.ay, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i51 = ptrtoaddr ptr %.0.lcssa.i.i to i64
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 8 ; 5 uses
  %.not13.i.i28 = icmp eq ptr %1, %i.c
  br i1 %.not13.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N6duckdb19arena_stl_allocatorImEEET0_T_S5_S4_RT1_.exit34, label %.lr.ph.i.i29.preheader

.lr.ph.i.i29.preheader:                           ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N6duckdb19arena_stl_allocatorImEEET0_T_S5_S4_RT1_.exit
  %4 = ptrtoint ptr %1 to i64
  %i.ba = sub i64 %i.e, %4
  %i.bb = add i64 %i.ba, -8                       ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check54 = icmp ult i64 %i.bb, 104
  br i1 %min.iters.check54, label %.lr.ph.i.i29.preheader69, label %vector.memcheck50

vector.memcheck50:                                ; preds = %.lr.ph.i.i29.preheader
  %i.be = sub i64 %.0.lcssa.i.i51, %i.n
  %i.bf = add i64 %i.be, 7
  %diff.check52 = icmp ult i64 %i.bf, 31
  br i1 %diff.check52, label %.lr.ph.i.i29.preheader69, label %vector.ph55

vector.ph55:                                      ; preds = %vector.memcheck50
  %n.vec57 = and i64 %i.bd, 4611686018427387900   ; 3 uses
  %i.bg = shl i64 %n.vec57, 3                     ; 2 uses
  %i.bh = getelementptr i8, ptr %i.az, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %1, i64 %i.bg
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph55
  %index59 = phi i64 [ 0, %vector.ph55 ], [ %index.next64, %vector.body58 ] ; 2 uses
  %i.bj = shl i64 %index59, 3                     ; 2 uses
  %next.gep60 = getelementptr i8, ptr %i.az, i64 %i.bj ; 2 uses
  %next.gep61 = getelementptr i8, ptr %1, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep61, i64 16
  %wide.load62 = load <2 x i64>, ptr %next.gep61, align 8, !tbaa !66
  %wide.load63 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !66
  %i.bl = getelementptr i8, ptr %next.gep60, i64 16
  store <2 x i64> %wide.load62, ptr %next.gep60, align 8, !tbaa !66
  store <2 x i64> %wide.load63, ptr %i.bl, align 8, !tbaa !66
  %index.next64 = add nuw i64 %index59, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next64, %n.vec57
  br i1 %i.bm, label %middle.block65, label %vector.body58, !llvm.loop !4845

middle.block65:                                   ; preds = %vector.body58
  %cmp.n66 = icmp eq i64 %i.bd, %n.vec57
  br i1 %cmp.n66, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N6duckdb19arena_stl_allocatorImEEET0_T_S5_S4_RT1_.exit34, label %.lr.ph.i.i29.preheader69

.lr.ph.i.i29.preheader69:                         ; preds = %vector.memcheck50, %.lr.ph.i.i29.preheader, %middle.block65
  %.015.i.i30.ph = phi ptr [ %i.az, %vector.memcheck50 ], [ %i.az, %.lr.ph.i.i29.preheader ], [ %i.bh, %middle.block65 ]
  %.sroa.010.014.i.i31.ph = phi ptr [ %1, %vector.memcheck50 ], [ %1, %.lr.ph.i.i29.preheader ], [ %i.bi, %middle.block65 ]
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29.preheader69, %.lr.ph.i.i29
  %.015.i.i30 = phi ptr [ %i.bp, %.lr.ph.i.i29 ], [ %.015.i.i30.ph, %.lr.ph.i.i29.preheader69 ] ; 2 uses
  %.sroa.010.014.i.i31 = phi ptr [ %i.bo, %.lr.ph.i.i29 ], [ %.sroa.010.014.i.i31.ph, %.lr.ph.i.i29.preheader69 ] ; 2 uses
  %i.bn = load i64, ptr %.sroa.010.014.i.i31, align 8, !tbaa !66
  store i64 %i.bn, ptr %.015.i.i30, align 8, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i31, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.015.i.i30, i64 8 ; 2 uses
  %.not.i.i32 = icmp eq ptr %i.bo, %i.c
  br i1 %.not.i.i32, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N6duckdb19arena_stl_allocatorImEEET0_T_S5_S4_RT1_.exit34, label %.lr.ph.i.i29, !llvm.loop !4846

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N6duckdb19arena_stl_allocatorImEEET0_T_S5_S4_RT1_.exit34: ; preds = %.lr.ph.i.i29, %middle.block65, %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N6duckdb19arena_stl_allocatorImEEET0_T_S5_S4_RT1_.exit
  %.0.lcssa.i.i33 = phi ptr [ %i.az, %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_N6duckdb19arena_stl_allocatorImEEET0_T_S5_S4_RT1_.exit ], [ %i.bh, %middle.block65 ], [ %i.bp, %.lr.ph.i.i29 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !506
  store ptr %.0.lcssa.i.i33, ptr %i.b, align 8, !tbaa !496
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.m
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !498
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !619
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !458
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !495
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #33 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !619
  invoke void @__cxa_rethrow() #35
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #37
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !458
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRS1_.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !456    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !253  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !168
  store ptr %i.w, ptr %3, align 8, !tbaa !168
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !253
  store ptr %3, ptr %i.x, align 8, !tbaa !168
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !715
  store ptr %i.z, ptr %3, align 8, !tbaa !168
  store ptr %3, ptr %i.y, align 8, !tbaa !715
  %i.aa = load ptr, ptr %3, align 8, !tbaa !168   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !458
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !66
  %i.ae = urem i64 %i.ad, %i.ac
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ae
  store ptr %3, ptr %i.af, align 8, !tbaa !253
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !253
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !495
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.f, align 8, !tbaa !495
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !117

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !4847
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !117

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #36 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmmELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !715  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !715
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph
end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE10_M_emplaceIJRS5_EEES2_INS7_14_Node_iteratorIS5_Lb0ELb1EEEbESt17integral_constantIbLb1EEDpOT_:bb.a
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !168 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.bi, null
  br i1 %.not18.i.i, label %.critedge27, label %bb.l

bb.l:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 160
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !254 ; 2 uses
  %i.bl = urem i64 %i.bk, %i.as
  %.not19.i.i = icmp eq i64 %i.bl, %i.at
  br i1 %.not19.i.i, label %bb.k, label %.critedge27, !llvm.loop !2454

.critedge27:                                      ; preds = %bb.l, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i, %bb.i, %.loopexit
  %i.bm = invoke ptr @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.at, i64 noundef %i.aq, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.m

bb.m:                                             ; preds = %.critedge27
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit: ; preds = %bb.h, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i
  %.sroa.036.0.ph = phi ptr [ %i.az, %_ZNKSt8__detail15_Hashtable_baseIN6duckdb13ColumnBindingESt4pairIKS2_NS1_16ReferencedColumnEENS_10_Select1stENS1_21ColumnBindingEqualityENS1_25ColumnBindingHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i ], [ %.sroa.032.0, %bb.h ]
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb13ColumnBindingENS3_16ReferencedColumnEELb1EEEEE18_M_deallocate_nodeEPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %i.a)
          to label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  tail call void @__clang_call_terminate(ptr %i.bp) #37
  unreachable

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %.critedge27, %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit
  %.sroa.4.043 = phi i8 [ 0, %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ], [ 1, %.critedge27 ]
  %.sroa.036.042 = phi ptr [ %.sroa.036.0.ph, %_ZNKSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_M_find_nodeEmRS3_m.exit ], [ %i.bm, %.critedge27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.036.042, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.043, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS7_10_Hash_nodeIS5_Lb1EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !619
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !2224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !2301
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #33 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !619
  invoke void @__cxa_rethrow() #35
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #37
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !2224
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i64 %2, ptr %i.t, align 8, !tbaa !254
  %i.u = load ptr, ptr %0, align 8, !tbaa !2222   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !253  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !168
  store ptr %i.x, ptr %3, align 8, !tbaa !168
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !253
  store ptr %3, ptr %i.y, align 8, !tbaa !168
  br label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2281
  store ptr %i.aa, ptr %3, align 8, !tbaa !168
  store ptr %3, ptr %i.z, align 8, !tbaa !2281
  %i.ab = load ptr, ptr %3, align 8, !tbaa !168   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !2224
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !254
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !253
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !253
  br label %_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit

_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS7_10_Hash_nodeIS5_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !2301
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !2301
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb13ColumnBindingESt4pairIKS1_NS0_16ReferencedColumnEESaIS5_ENSt8__detail10_Select1stENS0_21ColumnBindingEqualityENS0_25ColumnBindingHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5752 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !5748
  invoke void @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN6duckdb13ColumnBindingENS3_16ReferencedColumnEELb1EEEEE18_M_deallocate_nodeEPS8_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb16ReferencedColumnC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode.3650", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3161 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !2295   ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !117

.noexc.i.i.i:                                     ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #35
  unreachable

_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEEE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb24BoundColumnRefExpressionEEE8allocateEmPKv.exit.i.i.i.i.i ] ; 8 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !2295
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !3161
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !3162
  %i.m = load ptr, ptr %1, align 8, !tbaa !2455   ; 6 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !2455 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.o = ptrtoaddr ptr %i.m to i64
  %i.p = ptrtoaddr ptr %i.i to i64
  %3 = ptrtoint ptr %i.n to i64
  %4 = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %3, %4
  %i.r = add i64 %i.q, -8                         ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 72
  %i.u = sub i64 %i.o, %i.p
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v     ; 2 uses
  %i.x = getelementptr i8, ptr %i.m, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.y ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.m, i64 %i.y ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8
  %wide.load28 = load <2 x i64>, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load28, ptr %i.aa, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !5754

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.i.preheader30

.lr.ph.i.i.i.i.i.i.preheader30:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader30, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader30 ] ; 2 uses
  %i.ac = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8
  store i64 %i.ac, ptr %.09.i.i.i.i.i.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.n
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5755

_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %bb.c
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.w, %middle.block ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !3161
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2290 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !2287 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i11 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i.i.i.i11, label %.noexc13, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit
  %i.an = sdiv exact i64 %i.am, 136
  %i.ao = icmp ugt i64 %i.an, 67818912035696880
  br i1 %i.ao, label %.noexc.i.i.i12, label %_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE8allocateEmPKv.exit.i.i.i.i.i, !prof !117

.noexc.i.i.i12:                                   ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i.i.i12
  unreachable

_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #36
          to label %.noexc13 unwind label %bb.m

.noexc13:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE8allocateEmPKv.exit.i.i.i.i.i, %_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit
  %i.aq = phi ptr [ null, %_ZN6duckdb6vectorISt17reference_wrapperINS_24BoundColumnRefExpressionEELb1ESaIS3_EEC2ERKS5_.exit ], [ %i.ap, %_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.aq, ptr %i.af, align 8, !tbaa !2287
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !2290
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.am
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !3336
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !3195
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !3195
  %i.aw = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb23ReferencedStructExtractESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.au, ptr %i.av, ptr noundef %i.aq)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc13
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ay = load ptr, ptr %i.af, align 8, !tbaa !2287 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPv(ptr noundef nonnull %i.ay) #34
  br label %.body

bb.g:                                             ; preds = %.noexc13
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !2290
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1657 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !1656 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i14 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not.i.i.i.i.i14, label %.noexc18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = sdiv exact i64 %i.bg, 104
  %i.bi = icmp ugt i64 %i.bh, 88686269585142075
  br i1 %i.bi, label %.noexc.i.i.i16, label %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i, !prof !117

.noexc.i.i.i16:                                   ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc17 unwind label %bb.n, !inline_history !3253

.noexc17:                                         ; preds = %.noexc.i.i.i16
  unreachable

_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bg) #36
          to label %.noexc18 unwind label %bb.n, !inline_history !3253

.noexc18:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i, %bb.g
  %i.bk = phi ptr [ null, %bb.g ], [ %i.bj, %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.bk, ptr %i.az, align 8, !tbaa !1656
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !1657
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bg
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !2269
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !38
  %i.bq = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb11ColumnIndexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_(ptr %i.bo, ptr %i.bp, ptr noundef %i.bk)
          to label %bb.k unwind label %bb.i, !inline_history !3226

bb.i:                                             ; preds = %.noexc18
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %i.az, align 8, !tbaa !1656 ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i15, label %.body19, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bs) #34, !inline_history !3225
  br label %.body19

bb.k:                                             ; preds = %.noexc18
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !1657
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !3175
  store i8 %i.bv, ptr %i.bt, align 8, !tbaa !3175
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %i.bw, align 8, !tbaa !2285
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !2286
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !2286
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr null, ptr %i.cb, align 8, !tbaa !168
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !3176
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !3176
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !1110
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %i.ch, align 8, !tbaa !3325
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %i.bw, ptr %2, align 8, !tbaa !5756
  invoke void @_ZNSt10_HashtableIN6duckdb11ColumnIndexES1_SaIS1_ENSt8__detail9_IdentityENS0_19ColumnIndexEqualityENS0_23ColumnIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSC_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %i.bw, ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb23ReferencedStructExtractEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i12
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb11ColumnIndexEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i16
  %i.cj = landingpad { ptr, i32 }
          cleanup
end_hunk_1
