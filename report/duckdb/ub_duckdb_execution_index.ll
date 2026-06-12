inline.NumInlined: 3044
inline.NumDeleted: 1648
begin_hunk_0_@_ZNK6duckdb18FixedSizeAllocator7GetInfoEv:bb.a
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
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !199
  %.not47 = icmp eq i64 %i.d, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !137
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond = select i1 %.not47, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.c, label %bb.ao

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.at unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.015 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.k = load ptr, ptr %6, align 8, !tbaa !52     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.k) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.015, label %bb.g, label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br i1 %.015, label %bb.g, label %bb.as

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn46 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.h) #25
  br label %bb.as

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !200, !range !137, !noundef !34
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !199
  %.not = icmp eq i64 %i.r, -1
  br i1 %.not, label %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit.thread, label %bb.ao

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef 0)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !101  ; 2 uses
  %.not20.i = icmp eq i64 %2, 0
  br i1 %.not20.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i: ; preds = %.lr.ph.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i
  %.021.i = phi i64 [ %i.u, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ], [ %2, %.lr.ph.i ] ; 2 uses
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

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i:  ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i, %.lr.ph.i, %bb.j
  %.013.i = phi i64 [ %2, %.lr.ph.i ], [ 0, %bb.j ], [ %2, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread.i ], [ %.021.i, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.i ]
  %i.ab = mul i64 %.013.i, %3
  %i.ac = add i64 %i.ab, %4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !202
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !122
  %.not.i17.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i17.i, label %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = load ptr, ptr %5, align 8, !tbaa !122
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = atomicrmw sub ptr %i.af, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #29
  unreachable

_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit: ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !199 ; 2 uses
  %.not48 = icmp eq i64 %.pre, -1
  br i1 %.not48, label %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit.thread, label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit
  %i.aj = load ptr, ptr %0, align 8, !tbaa !138, !nonnull !34, !align !35 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !118
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(144) %i.aj, i64 noundef %.pre)
  br label %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit.thread

_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit.thread: ; preds = %bb.i, %bb.n, %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !202
  %i.aq = call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.ap)
  call void @_ZN6duckdb19PartialBlockManager18GetBlockAllocationEj(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::PartialBlockAllocation") align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !203
  store i64 %i.as, ptr %i.an, align 8, !tbaa !214
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.au = load i32, ptr %i.at, align 4, !tbaa !215
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 %i.au, ptr %i.av, align 8, !tbaa !216
  %i.aw = load ptr, ptr %0, align 8, !tbaa !138, !nonnull !34, !align !35 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !10, !nonnull !34, !align !35 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 8 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !217
  %.not49 = icmp eq ptr %i.ba, null
  br i1 %.not49, label %bb.x, label %bb.o

bb.o:                                             ; preds = %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit.thread
  %i.bb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12PartialBlockESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !118
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::BufferHandle") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bg)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !139
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !140
  %i.bk = load i32, ptr %i.av, align 8, !tbaa !216
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bl)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !139
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !140
  %i.bp = zext i32 %i.bk to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bp
  %i.br = load i64, ptr %i.ao, align 8, !tbaa !202
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bo, i64 %i.br, i1 false)
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit

bb.t:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.r, %bb.q
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn18 = phi { ptr, i32 } [ %i.bu, %bb.v ], [ %i.bt, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.body

bb.x:                                             ; preds = %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit.thread
  %i.bv = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #28
          to label %.noexc unwind label %.body.thread ; 3 uses

.noexc:                                           ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_ZN6duckdb20PartialBlockForIndexC1ENS_17PartialBlockStateERNS_12BlockManagerERKNS_10shared_ptrINS_11BlockHandleELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull byval(%"struct.duckdb::PartialBlockState") align 8 %i.ar, ptr noundef nonnull align 8 dereferenceable(144) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %_ZN6duckdb9make_uniqINS_20PartialBlockForIndexEJRNS_17PartialBlockStateERNS_12BlockManagerERNS_10shared_ptrINS_11BlockHandleELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.y, !noalias !218

bb.y:                                             ; preds = %.noexc
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.bv) #27, !noalias !218
  br label %.body

_ZN6duckdb9make_uniqINS_20PartialBlockForIndexEJRNS_17PartialBlockStateERNS_12BlockManagerERNS_10shared_ptrINS_11BlockHandleELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc
  %i.by = load ptr, ptr %i.az, align 8, !tbaa !217 ; 3 uses
  store ptr %i.bv, ptr %i.az, align 8, !tbaa !217
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb9make_uniqINS_20PartialBlockForIndexEJRNS_17PartialBlockStateERNS_12BlockManagerERNS_10shared_ptrINS_11BlockHandleELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !118
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.by) #25, !inline_history !221
  br label %_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit

.body.thread:                                     ; preds = %bb.x
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40

_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_20PartialBlockForIndexEJRNS_17PartialBlockStateERNS_12BlockManagerERNS_10shared_ptrINS_11BlockHandleELb1EEEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit, %bb.s
  invoke void @_ZN6duckdb12BufferHandle7DestroyEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.z unwind label %bb.ap

bb.z:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 40, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  %i.ce = load i64, ptr %i.az, align 8, !tbaa !217
  store i64 %i.ce, ptr %i.cd, align 8, !tbaa !217
  store ptr null, ptr %i.az, align 8, !tbaa !217
  invoke void @_ZN6duckdb19PartialBlockManager20RegisterPartialBlockENS_22PartialBlockAllocationE(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull %10)
          to label %bb.aa unwind label %bb.aq

bb.aa:                                            ; preds = %bb.z
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !217 ; 3 uses
  %.not.i.i29 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i29, label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i: ; preds = %bb.aa
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !118
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.cf) #25, !inline_history !222
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit

_ZN6duckdb22PartialBlockAllocationD2Ev.exit:      ; preds = %bb.aa, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.cj = load ptr, ptr %0, align 8, !tbaa !138, !nonnull !34, !align !35
  %i.ck = load i64, ptr %i.an, align 8, !tbaa !214
  invoke void @_ZN6duckdb12BlockManager13RegisterBlockEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(144) %i.cj, i64 noundef %i.ck)
          to label %bb.ab unwind label %bb.ar

bb.ab:                                            ; preds = %_ZN6duckdb22PartialBlockAllocationD2Ev.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.co = load <2 x ptr>, ptr %11, align 16, !tbaa !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !114 ; 8 uses
  store <2 x ptr> %i.co, ptr %i.cl, align 8, !tbaa !223
  %.not.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb15FixedSizeBuffer9SerializeERNS_19PartialBlockManagerEmmm:bb.a
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #25, !inline_history !224
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.db = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i30 = icmp eq i8 %i.db, 0
  br i1 %.not.i.i.i.i.i30, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dc = add nsw i32 %i.ct, -1
  store i32 %i.dc, ptr %i.cq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dd = atomicrmw volatile add ptr %i.cq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i = phi i32 [ %i.ct, %bb.af ], [ %i.dd, %bb.ag ]
  %i.de = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.de, label %bb.ah, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit, !prof !121

bb.ah:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #25
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit: ; preds = %bb.ab, %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ah
  %i.df = load ptr, ptr %i.cm, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 4 uses
  %i.dh = load atomic i64, ptr %i.dg acquire, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4294967297
  %i.dj = trunc i64 %i.dh to i32                  ; 2 uses
  br i1 %i.di, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %i.dg, align 8, !tbaa !115
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i32 0, ptr %i.dk, align 4, !tbaa !117
  %i.dl = load ptr, ptr %i.df, align 8, !tbaa !118
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #25, !inline_history !225
  %i.do = load ptr, ptr %i.df, align 8, !tbaa !118
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #25, !inline_history !225
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit

bb.ak:                                            ; preds = %bb.ai
  %i.dr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i31 = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i.i.i31, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = add nsw i32 %i.dj, -1
  store i32 %i.ds, ptr %i.dg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.dt = atomicrmw volatile add ptr %i.dg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.am, %bb.al
  %.0.i.i.i.i.i = phi i32 [ %i.dj, %bb.al ], [ %i.dt, %bb.am ]
  %i.du = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.du, label %bb.an, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, !prof !121

bb.an:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df) #25
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEaSEOS2_.exit, %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  store i8 0, ptr %i.n, align 8, !tbaa !200
  %i.dv = load ptr, ptr %i.az, align 8, !tbaa !217 ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i32, label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit34, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i33

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i33: ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !118
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.dv) #25, !inline_history !222
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit34

_ZN6duckdb22PartialBlockAllocationD2Ev.exit34:    ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.b, %bb.i, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit34
  ret void

bb.ap:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb20PartialBlockForIndexESt14default_deleteIS1_EED2Ev.exit
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %bb.z
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %i.cd, align 8, !tbaa !217 ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i35, label %.body, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i36

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i36: ; preds = %bb.aq
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !118
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.eb) #25, !inline_history !222
  br label %.body

bb.ar:                                            ; preds = %_ZN6duckdb22PartialBlockAllocationD2Ev.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i36, %bb.aq, %bb.y, %bb.t, %bb.w, %bb.ar, %bb.ap
  %.pn21.ph = phi { ptr, i32 } [ %i.ea, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i36 ], [ %i.ea, %bb.aq ], [ %.pn18, %bb.w ], [ %i.bs, %bb.t ], [ %i.dz, %bb.ap ], [ %i.bx, %bb.y ], [ %i.ef, %bb.ar ] ; 2 uses
  %.pr = load ptr, ptr %i.az, align 8, !tbaa !217 ; 3 uses
  %.not.i.i38 = icmp eq ptr %.pr, null
  br i1 %.not.i.i38, label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40, label %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i39

_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i39: ; preds = %.body
  %i.eg = load ptr, ptr %.pr, align 8, !tbaa !118
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.pr) #25, !inline_history !222
  br label %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40

_ZN6duckdb22PartialBlockAllocationD2Ev.exit40:    ; preds = %.body.thread, %.body, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i39
  %.pn2164 = phi { ptr, i32 } [ %i.cc, %.body.thread ], [ %.pn21.ph, %.body ], [ %.pn21.ph, %_ZNKSt14default_deleteIN6duckdb12PartialBlockEEclEPS1_.exit.i.i39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40
  %.pn21.pn = phi { ptr, i32 } [ %.pn2164, %_ZN6duckdb22PartialBlockAllocationD2Ev.exit40 ], [ %.pn46, %bb.g ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
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
  unreachable

_ZNKSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.au = ashr exact i64 %i.as, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = call i64 @llvm.umin.i64(i64 %i.av, i64 576460752303423487)
  %i.ay = select i1 %i.aw, i64 576460752303423487, i64 %i.ax ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ay, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 4
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #28
          to label %.noexc14 unwind label %.loopexit ; 5 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.as ; 2 uses
  %i.bc = load i64, ptr %i.am, align 8, !tbaa !73
  store ptr %i.ak, ptr %i.bb, align 8, !tbaa !226
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !228
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc14, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i ], [ %i.ba, %.noexc14 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.i ], [ %i.k, %.noexc14 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !232, !alias.scope !234
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.be, %i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !238

_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc14
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ba, %.noexc14 ], [ %i.bf, %.lr.ph.i.i.i.i.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE17_M_realloc_insertIJPhRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.k) #27
  br label %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE17_M_realloc_insertIJPhRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE17_M_realloc_insertIJPhRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.bg, ptr %i.g, align 8, !tbaa !229
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %i.ay ; 2 uses
  store ptr %i.bh, ptr %i.h, align 8, !tbaa !239
  br label %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE12emplace_backIJPhRmEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE12emplace_backIJPhRmEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE17_M_realloc_insertIJPhRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.k
  %i.bi = phi ptr [ %i.bh, %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE17_M_realloc_insertIJPhRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.i, %bb.k ]
  %i.bj = phi ptr [ %i.bg, %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE17_M_realloc_insertIJPhRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ap, %bb.k ]
  %i.bk = phi ptr [ %i.ba, %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE17_M_realloc_insertIJPhRmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.k, %bb.k ] ; 3 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !122
  %.not.i15 = icmp eq ptr %i.bl, null
  br i1 %.not.i15, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE12emplace_backIJPhRmEEEvDpOT_.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %3, align 8, !tbaa !122
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  store ptr %i.bk, ptr %0, align 8
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #29
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE12emplace_backIJPhRmEEEvDpOT_.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.sroa.018.0 = load ptr, ptr %.sroa.018.030, align 8, !tbaa !66 ; 2 uses
  %.not = icmp eq ptr %.sroa.018.0, null
  br i1 %.not, label %._crit_edge, label %bb.b

bb.r:                                             ; preds = %bb.d, %bb.b
  %i.br = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %0, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.h, %_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %0, align 8
  br label %bb.u

.loopexit:                                        ; preds = %bb.i, %_ZNKSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %0, align 8
  br label %bb.t

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6duckdb13SegmentHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.t ], [ %i.bs, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.br, %bb.r ]
  %.not.i.i.i16 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPv(ptr noundef nonnull %i.k) #27
  br label %_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb15IndexBufferInfoESaIS1_EED2Ev.exit: ; preds = %bb.v, %bb.w
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15FixedSizeBuffer17SetAllocationSizeEmmm(ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !200, !range !137, !noundef !34
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(136) %0, i64 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !101  ; 2 uses
  %.not20 = icmp eq i64 %1, 0
  br i1 %.not20, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit: ; preds = %.lr.ph, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread
  %.021 = phi i64 [ %i.f, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ], [ %1, %.lr.ph ] ; 2 uses
  %i.f = add i64 %.021, -1                        ; 4 uses
  %i.g = lshr i64 %i.f, 6
  %i.h = and i64 %i.f, 63
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.j = load i64, ptr %i.i, align 8, !tbaa !73
  %i.k = shl nuw i64 1, %i.h
  %i.l = and i64 %i.j, %i.k
  %.not19 = icmp eq i64 %i.l, 0
  br i1 %.not19, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread

_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, !llvm.loop !201

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit:    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit, %.lr.ph, %bb.b
  %.013 = phi i64 [ %1, %.lr.ph ], [ 0, %bb.b ], [ %.021, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit ], [ %1, %_ZNK6duckdb21TemplatedValidityMaskImE10RowIsValidEm.exit.thread ]
  %i.m = mul i64 %.013, %2
  %i.n = add i64 %i.m, %3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.n, ptr %i.o, align 8, !tbaa !202
  %.pre = load ptr, ptr %4, align 8, !tbaa !122
  %.not.i17 = icmp eq ptr %.pre, null
  br i1 %.not.i17, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %4, align 8, !tbaa !122
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = atomicrmw sub ptr %i.q, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #29
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN6duckdb13SegmentHandleD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb18FixedSizeAllocator4InitERKNS_22FixedSizeAllocatorInfoE(ptr noundef nonnull align 8 dereferenceable(240) initializes((24, 32), (56, 64)) %0, ptr noundef nonnull align 8 dereferenceable(128) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 4 uses
  %4 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, duckdb::unique_ptr<duckdb::FixedSizeBuffer>>, std::allocator<std::pair<const unsigned long, duckdb::unique_ptr<duckdb::FixedSizeBuffer>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.37", align 1 ; 5 uses
  %7 = alloca %"struct.duckdb::BlockPointer", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator.37", align 1 ; 5 uses
  %i.a = load i64, ptr %1, align 8, !tbaa !174
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.a, ptr %i.b, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !189
  %.not65 = icmp eq ptr %i.f, %i.g
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = load i64, ptr @_ZN6duckdb10MAX_ROW_IDE, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !240  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !240  ; 2 uses
  %.not60 = icmp eq ptr %i.p, %i.r
  br i1 %.not60, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %._crit_edge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  br label %bb.w

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit
  %.059 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %_ZNSt10unique_ptrIN6duckdb15FixedSizeBufferESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.059)
  %i.u = load i64, ptr %i.t, align 8, !tbaa !73   ; 6 uses
  %i.v = icmp ugt i64 %i.u, %i.h
  br i1 %i.v, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.w = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.x unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.025 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.z = load ptr, ptr %5, align 8, !tbaa !52     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.z) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.025, label %bb.g, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.025, label %bb.g, label %common.resume

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3151 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.w) #25
  br label %common.resume

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ac = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6duckdb6vectorINS_12BlockPointerELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %.059)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !192
  %i.ad = load i64, ptr %7, align 8, !tbaa !199
  %i.ae = icmp sgt i64 %i.ad, 4611686018427387999
  br i1 %i.ae, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.af = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb22SerializationExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN6duckdb22SerializationExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.x unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread: ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.027 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ai = load ptr, ptr %8, align 8, !tbaa !52    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.ai) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.027, label %bb.m, label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.027, label %bb.m, label %bb.u

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn54 = phi { ptr, i32 } [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ]
  call void @__cxa_free_exception(ptr %i.af) #25
  br label %bb.u

bb.n:                                             ; preds = %bb.h
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.059)
  %i.am = load i64, ptr %i.al, align 8, !tbaa !73 ; 2 uses
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.059)
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !73
  %i.ap = load ptr, ptr %0, align 8, !tbaa !78, !nonnull !34, !align !35
  %i.aq = call noalias noundef nonnull dereferenceable(136) ptr @_Znwm(i64 noundef 136) #28, !noalias !241 ; 5 uses
  invoke void @_ZN6duckdb15FixedSizeBufferC1ERNS_12BlockManagerEmmRKNS_12BlockPointerE(ptr noundef nonnull align 8 dereferenceable(136) %i.aq, ptr noundef nonnull align 8 dereferenceable(144) %i.ap, i64 noundef %i.am, i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZN6duckdb9make_uniqINS_15FixedSizeBufferEJRNS_12BlockManagerERmS4_RNS_12BlockPointerEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.o, !noalias !241

common.resume:                                    ; preds = %bb.u, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.o ], [ %.pn3151, %bb.g ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn, %bb.u ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op
end_hunk_1
