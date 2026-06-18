inline.NumInlined: 3044
inline.NumDeleted: 1648
begin_hunk_0_@_ZNK6duckdb18FixedSizeAllocator7GetInfoEv:bb.a
._crit_edge82:                                    ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit57, %._crit_edge
  ret void

bb.aa:                                            ; preds = %.lr.ph81, %_ZNSt6vectorImSaImEE9push_backERKm.exit57
  %i.ds = phi ptr [ %.pre84, %.lr.ph81 ], [ %i.eo, %_ZNSt6vectorImSaImEE9push_backERKm.exit57 ] ; 3 uses
  %i.dt = phi ptr [ %.pre83, %.lr.ph81 ], [ %i.ep, %_ZNSt6vectorImSaImEE9push_backERKm.exit57 ] ; 3 uses
  %.sroa.058.079 = phi ptr [ %.sroa.058.077, %.lr.ph81 ], [ %.sroa.058.0, %_ZNSt6vectorImSaImEE9push_backERKm.exit57 ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.058.079, i64 8 ; 2 uses
  %.not.i48 = icmp eq ptr %i.dt, %i.ds
  br i1 %.not.i48, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !73
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !73
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  store ptr %i.dw, ptr %i.s, align 8, !tbaa !187
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit57

bb.ac:                                            ; preds = %bb.aa
  %i.dx = load ptr, ptr %i.r, align 8, !tbaa !189 ; 4 uses
  %i.dy = ptrtoint ptr %i.ds to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz                    ; 5 uses
  %i.eb = icmp eq i64 %i.ea, 9223372036854775800
  br i1 %i.eb, label %bb.ad, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i49

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #26
          to label %.noexc55 unwind label %.loopexit.split-lp

.noexc55:                                         ; preds = %bb.ad
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i49: ; preds = %bb.ac
  %i.ec = ashr exact i64 %i.ea, 3                 ; 3 uses
  %.sroa.speculated.i.i.i50 = tail call i64 @llvm.umax.i64(i64 %i.ec, i64 1)
  %i.ed = add nsw i64 %.sroa.speculated.i.i.i50, %i.ec ; 2 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %i.ef = tail call i64 @llvm.umin.i64(i64 %i.ed, i64 1152921504606846975)
  %i.eg = select i1 %i.ee, i64 1152921504606846975, i64 %i.ef ; 3 uses
  %.not.i.i.i51 = icmp ne i64 %i.eg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i51)
  %i.eh = shl nuw nsw i64 %i.eg, 3
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #28
          to label %.noexc56 unwind label %.loopexit ; 4 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i49
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.ea ; 2 uses
  %i.ek = load i64, ptr %i.du, align 8, !tbaa !73
  store i64 %i.ek, ptr %i.ej, align 8, !tbaa !73
  %i.el = icmp sgt i64 %i.ea, 0
  br i1 %i.el, label %bb.ae, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i52

bb.ae:                                            ; preds = %.noexc56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr align 8 %i.dx, i64 %i.ea, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i52

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i52: ; preds = %bb.ae, %.noexc56
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  %.not.i17.i.i53 = icmp eq ptr %i.dx, null
  br i1 %.not.i17.i.i53, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i54, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i52
  tail call void @_ZdlPv(ptr noundef nonnull %i.dx) #27
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i54

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i54: ; preds = %bb.af, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i52
  store ptr %i.ei, ptr %i.r, align 8, !tbaa !189
  store ptr %i.em, ptr %i.s, align 8, !tbaa !187
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eg ; 2 uses
  store ptr %i.en, ptr %i.t, align 8, !tbaa !188
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit57

_ZNSt6vectorImSaImEE9push_backERKm.exit57:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i54, %bb.ab
  %i.eo = phi ptr [ %i.en, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i54 ], [ %i.ds, %bb.ab ]
  %i.ep = phi ptr [ %i.em, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i54 ], [ %i.dw, %bb.ab ]
  %.sroa.058.0 = load ptr, ptr %.sroa.058.079, align 8, !tbaa !66 ; 2 uses
  %.not68 = icmp eq ptr %.sroa.058.0, null
  br i1 %.not68, label %._crit_edge82, label %bb.aa

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i49
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit69, %.loopexit.split-lp70, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp72, %.loopexit.split-lp70 ], [ %.pn67, %bb.k ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %lpad.loopexit71, %.loopexit69 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb22FixedSizeAllocatorInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #25
  resume { ptr, i32 } %.pn.pn.pn

bb.ah:                                            ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb22FixedSizeAllocatorInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit2

_ZNSt6vectorImSaImEED2Ev.exit2:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189  ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorImSaImEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit4

_ZNSt6vectorImSaImEED2Ev.exit4:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !193  ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit4
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #27
  br label %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit4, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !189  ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorImSaImEED2Ev.exit7, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit7

_ZNSt6vectorImSaImEED2Ev.exit7:                   ; preds = %_ZNSt6vectorIN6duckdb12BlockPointerESaIS1_EED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18FixedSizeAllocator16SerializeBuffersERNS_19PartialBlockManagerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.05.08 = load ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  %.not9 = icmp eq ptr %.sroa.05.08, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.05.010 = phi ptr [ %.sroa.05.08, %.lr.ph ], [ %.sroa.05.0, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.05.010, i64 16
  %i.f = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = load i64, ptr %i.b, align 8, !tbaa !57
  %i.h = load i64, ptr %i.c, align 8, !tbaa !44
  %i.i = load i64, ptr %i.d, align 8, !tbaa !58
  tail call void @_ZN6duckdb15FixedSizeBuffer9SerializeERNS_19PartialBlockManagerEmmm(ptr noundef nonnull align 8 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %i.g, i64 noundef %i.h, i64 noundef %i.i)
  %.sroa.05.0 = load ptr, ptr %.sroa.05.010, align 8, !tbaa !66 ; 2 uses
  %.not = icmp eq ptr %.sroa.05.0, null
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15FixedSizeBuffer9SerializeERNS_19PartialBlockManagerEmmm(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.37", align 1 ; 5 uses
  %8 = alloca %"struct.duckdb::PartialBlockAllocation", align 8 ; 8 uses
  %9 = alloca %"class.duckdb::BufferHandle", align 8 ; 7 uses
  %10 = alloca %"struct.duckdb::PartialBlockAllocation", align 8 ; 3 uses
  %11 = alloca %"class.duckdb::shared_ptr", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_ZNK6duckdb12BufferHandle7IsValidEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
  br i1 %i.b, label %bb.h, label %12

12:                                               ; preds = %bb.a
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %14 = load i64, ptr %13, align 8, !tbaa !199
  %.not = icmp eq i64 %14, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !200, !range !137, !noundef !34
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.ao

bb.c:                                             ; preds = %bb.b, %12
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.at unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.015 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.i) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.015, label %bb.g, label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.015, label %bb.g, label %bb.as

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn46 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #25
  br label %bb.as

bb.h:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !200, !range !137, !noundef !34
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !199
  %.not.a = icmp eq i64 %i.p, -1
  br i1 %.not.a, label %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit.thread, label %bb.ao

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef 0)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !101  ; 2 uses
  %.not20.i = icmp eq i64 %2, 0
  br i1 %.not20.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.021.i = phi i64 [ %i.s, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ], [ %2, %.lr.ph.i ] ; 2 uses
  %i.s = add i64 %.021.i, -1                      ; 4 uses
  %i.t = lshr i64 %i.s, 6
  %i.u = and i64 %i.s, 63
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t
  %i.w = load i64, ptr %i.v, align 8, !tbaa !73
  %i.x = shl nuw i64 1, %i.u
  %i.y = and i64 %i.x, %i.w
  %.not19.i = icmp eq i64 %i.y, 0
  br i1 %.not19.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, !llvm.loop !201

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i:  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph.i, %bb.j
  %.013.i = phi i64 [ %2, %.lr.ph.i ], [ 0, %bb.j ], [ %2, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ], [ %.021.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.z = mul i64 %.013.i, %3
  %i.aa = add i64 %i.z, %4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !202
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !122
  %.not.i17.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i17.i, label %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ac = load ptr, ptr %5, align 8, !tbaa !122
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #29
  unreachable

_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit: ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !199 ; 2 uses
  %.not48 = icmp eq i64 %.pre, -1
  br i1 %.not48, label %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit
  %i.ah = load ptr, ptr %0, align 8, !tbaa !138, !nonnull !34, !align !35 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(144) %i.ah, i64 noundef %.pre)
  br label %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit.thread

_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit.thread: ; preds = %bb.i, %bb.n, %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !202
  %i.ao = call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.an)
  call void @_ZN6duckdb19PartialBlockManager18GetBlockAllocationEj(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::PartialBlockAllocation") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %i.ao)
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !203
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !214
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !215
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 %i.as, ptr %i.at, align 8, !tbaa !216
  %i.au = load ptr, ptr %0, align 8, !tbaa !138, !nonnull !34, !align !35 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !10, !nonnull !34, !align !35 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 8 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !217
  %.not49 = icmp eq ptr %i.ay, null
  br i1 %.not49, label %bb.x, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit.thread
  %i.az = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12PartialBlockESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !118
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !139
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !140
  %i.bi = load i32, ptr %i.at, align 8, !tbaa !216
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !139
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !140
  %i.bn = zext i32 %i.bi to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bn
  %i.bp = load i64, ptr %i.am, align 8, !tbaa !202
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr align 1 %i.bm, i64 %i.bp, i1 false)
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit

bb.t:                                             ; preds = %bb.o
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.p
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %bb.q
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn18 = phi { ptr, i32 } [ %i.bs, %bb.v ], [ %i.br, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body

bb.x:                                             ; preds = %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit.thread
  %i.bt = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc unwind label %.body.thread ; 3 uses

.noexc:                                           ; preds = %bb.x
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZN6duckdb20PartialBlockForIndexC1ENS_17PartialBlockStateERNS_12BlockManagerERKNS_10shared_ptrINS_11BlockHandleELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull byval(%"struct.duckdb::PartialBlockState") align 8 %i.ap, ptr noundef nonnull align 8 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.bu)
          to label %_ZN6duckdb9make_uniqINS_20PartialBlockForIndexEJRNS_17PartialBlockStateERNS_12BlockManagerERNS_10shared_ptrINS_11BlockHandleELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.y, !noalias !218

bb.y:                                             ; preds = %.noexc
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bt) #27, !noalias !218
  br label %.body

_ZN6duckdb9make_uniqINS_20PartialBlockForIndexEJRNS_17PartialBlockStateERNS_12BlockManagerERNS_10shared_ptrINS_11BlockHandleELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc
  %i.bw = load ptr, ptr %i.ax, align 8, !tbaa !217 ; 3 uses
  store ptr %i.bt, ptr %i.ax, align 8, !tbaa !217
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_20PartialBlockForIndexEJRNS_17PartialBlockStateERNS_12BlockManagerERNS_10shared_ptrINS_11BlockHandleELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !118
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bw) #25, !inline_history !221
  br label %_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit

.body.thread:                                     ; preds = %bb.x
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40

_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_20PartialBlockForIndexEJRNS_17PartialBlockStateERNS_12BlockManagerERNS_10shared_ptrINS_11BlockHandleELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %bb.s
  invoke void @_ZN6duckdb12BufferHandle7DestroyEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.z unwind label %bb.ap

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 40, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  %i.cc = load i64, ptr %i.ax, align 8, !tbaa !217
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !217
  store ptr null, ptr %i.ax, align 8, !tbaa !217
  invoke void @_ZN6duckdb19PartialBlockManager20RegisterPartialBlockENS_22PartialBlockAllocationE(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull %10)
          to label %bb.aa unwind label %bb.aq

bb.aa:                                            ; preds = %bb.z
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !217 ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i29, label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i: ; preds = %bb.aa
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !118
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cd) #25, !inline_history !222
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit

_ZN6duckdb22PartialBlockAllocationD2Ev.exit:      ; preds = %bb.aa, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ch = load ptr, ptr %0, align 8, !tbaa !138, !nonnull !34, !align !35
  %i.ci = load i64, ptr %i.al, align 8, !tbaa !214
  invoke void @_ZN6duckdb12BlockManager13RegisterBlockEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(144) %i.ch, i64 noundef %i.ci)
          to label %bb.ab unwind label %bb.ar

bb.ab:                                            ; preds = %_ZN6duckdb22PartialBlockAllocationD2Ev.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cm = load <2 x ptr>, ptr %11, align 16, !tbaa !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !114 ; 8 uses
  store <2 x ptr> %i.cm, ptr %i.cj, align 8, !tbaa !223
  %.not.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  %i.cp = load atomic i64, ptr %i.co acquire, align 8 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 4294967297
  %i.cr = trunc i64 %i.cp to i32                  ; 2 uses
  br i1 %i.cq, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.co, align 8, !tbaa !115
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store i32 0, ptr %i.cs, align 4, !tbaa !117
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !118
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #25, !inline_history !224
  %i.cw = load ptr, ptr %i.cn, align 8, !tbaa !118
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #25, !inline_history !224
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i30 = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i.i.i30, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = add nsw i32 %i.cr, -1
  store i32 %i.da, ptr %i.co, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.db = atomicrmw volatile add ptr %i.co, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i = phi i32 [ %i.cr, %bb.af ], [ %i.db, %bb.ag ]
  %i.dc = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dc, label %bb.ah, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit, !prof !121

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #25
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit: ; preds = %bb.ab, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ah
  %i.dd = load ptr, ptr %i.ck, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 4294967297
  %i.dh = trunc i64 %i.df to i32                  ; 2 uses
  br i1 %i.dg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.de, align 8, !tbaa !115
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !117
  %i.dj = load ptr, ptr %i.dd, align 8, !tbaa !118
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #25, !inline_history !225
  %i.dm = load ptr, ptr %i.dd, align 8, !tbaa !118
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #25, !inline_history !225
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i31 = icmp eq i8 %i.dp, 0
  br i1 %.not.i.i.i.i31, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dq = add nsw i32 %i.dh, -1
  store i32 %i.dq, ptr %i.de, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dr = atomicrmw volatile add ptr %i.de, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i = phi i32 [ %i.dh, %bb.al ], [ %i.dr, %bb.am ]
  %i.ds = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ds, label %bb.an, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, !prof !121

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dd) #25
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  store i8 0, ptr %i.l, align 8, !tbaa !200
  %i.dt = load ptr, ptr %i.ax, align 8, !tbaa !217 ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i32, label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit34, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i33

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i33: ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !118
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dt) #25, !inline_history !222
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit34

_ZN6duckdb22PartialBlockAllocationD2Ev.exit34:    ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.i, %bb.b, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit34
  ret void

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %bb.z
  %i.dy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dz = load ptr, ptr %i.cb, align 8, !tbaa !217 ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i35, label %.body, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i36

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i36: ; preds = %bb.aq
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !118
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dz) #25, !inline_history !222
  br label %.body

bb.ar:                                            ; preds = %_ZN6duckdb22PartialBlockAllocationD2Ev.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i36, %bb.aq, %bb.y, %bb.t, %bb.w, %bb.ar, %bb.ap
  %.pn21.ph = phi { ptr, i32 } [ %i.dy, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i36 ], [ %i.dy, %bb.aq ], [ %.pn18, %bb.w ], [ %i.bq, %bb.t ], [ %i.dx, %bb.ap ], [ %i.bv, %bb.y ], [ %i.ed, %bb.ar ] ; 2 uses
  %.pr = load ptr, ptr %i.ax, align 8, !tbaa !217 ; 3 uses
  %.not.i.i38 = icmp eq ptr %.pr, null
  br i1 %.not.i.i38, label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i39

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i39: ; preds = %.body
  %i.ee = load ptr, ptr %.pr, align 8, !tbaa !118
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr) #25, !inline_history !222
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40

_ZN6duckdb22PartialBlockAllocationD2Ev.exit40:    ; preds = %.body.thread, %.body, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i39
  %.pn2164 = phi { ptr, i32 } [ %i.ca, %.body.thread ], [ %.pn21.ph, %.body ], [ %.pn21.ph, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40
  %.pn21.pn = phi { ptr, i32 } [ %.pn2164, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40 ], [ %.pn46, %bb.g ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn21.pn

bb.at:                                            ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18FixedSizeAllocator22InitSerializationToWALEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::vector.85") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %3 = alloca %"class.duckdb::SegmentHandle", align 8 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.018.028 = load ptr, ptr %i.a, align 8, !tbaa !66 ; 2 uses
  %.not29 = icmp eq ptr %.sroa.018.028, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.a
  %.lcssa21 = phi ptr [ null, %bb.a ], [ %i.bk, %_ZN6duckdb13SegmentHandleD2Ev.exit ]
  store ptr %.lcssa21, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb13SegmentHandleD2Ev.exit
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.bi, %_ZN6duckdb13SegmentHandleD2Ev.exit ] ; 5 uses
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.bj, %_ZN6duckdb13SegmentHandleD2Ev.exit ] ; 4 uses
  %.sroa.018.030 = phi ptr [ %.sroa.018.028, %.lr.ph ], [ %.sroa.018.0, %_ZN6duckdb13SegmentHandleD2Ev.exit ] ; 2 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.bk, %_ZN6duckdb13SegmentHandleD2Ev.exit ] ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.018.030, i64 16 ; 3 uses
  %i.m = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.c unwind label %bb.r       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.b, align 8, !tbaa !57   ; 4 uses
  %i.o = load i64, ptr %i.c, align 8, !tbaa !44
  %i.p = load i64, ptr %i.d, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.r = load i8, ptr %i.q, align 8, !tbaa !200, !range !137, !noundef !34
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(136) %i.m, i64 noundef 0)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.d
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !101  ; 2 uses
  %.not20.i = icmp eq i64 %i.n, 0
  br i1 %.not20.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.021.i = phi i64 [ %i.u, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.u = add i64 %.021.i, -1                      ; 4 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = and i64 %i.u, 63
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !73
  %i.z = shl nuw i64 1, %i.w
  %i.aa = and i64 %i.z, %i.y
  %.not19.i = icmp eq i64 %i.aa, 0
  br i1 %.not19.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, !llvm.loop !201

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i:  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph.i, %.noexc
  %.013.i = phi i64 [ %i.n, %.lr.ph.i ], [ 0, %.noexc ], [ %i.n, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ], [ %.021.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.ab = mul i64 %.013.i, %i.o
  %i.ac = add i64 %i.ab, %i.p
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !202
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !122
  %.not.i17.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i17.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %2, align 8, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = atomicrmw sub ptr %i.af, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.k, ptr %0, align 8
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #29
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit.i:             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit

_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit: ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.aj = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit
  invoke void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(136) %i.aj, i64 noundef 0)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !101 ; 2 uses
  %i.al = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %.not.i12 = icmp eq ptr %i.j, %i.i
  br i1 %.not.i12, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load i64, ptr %i.am, align 8, !tbaa !73
  store ptr %i.ak, ptr %i.j, align 8, !tbaa !226
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !228
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !229
  br label %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE12emplace_backIJPhRmEEEvDpOT_.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = ptrtoint ptr %i.i to i64
  %i.ar = ptrtoint ptr %i.k to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775792
  br i1 %i.at, label %bb.m, label %_ZNKSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.k, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #26
          to label %.noexc13 unwind label %.loopexit.split-lp

.noexc13:                                         ; preds = %bb.m
end_hunk_0
