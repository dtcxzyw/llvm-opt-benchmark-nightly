inline.NumInlined: 1554
inline.NumDeleted: 946
begin_hunk_0_@_ZN6duckdb22ByteStreamSplitDecoder4ReadEPhmRNS_6VectorEm:bb.a
bb.g:                                             ; preds = %bb.f
  %i.by = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.bv)
  store i64 %i.by, ptr %i.ba, align 8, !tbaa !233
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  tail call void @_ZN6duckdb13AllocatedData5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bz)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ca = load i64, ptr %i.ba, align 8, !tbaa !233 ; 2 uses
  %i.cb = tail call noundef ptr @_ZN6duckdb9Allocator12AllocateDataEm(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 noundef %i.ca), !noalias !239
  call void @_ZN6duckdb13AllocatedDataC1ERNS_9AllocatorEPhm(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef %i.cb, i64 noundef %i.ca)
  %i.cc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb13AllocatedDataaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %5) #23 ; 0 uses
  call void @_ZN6duckdb13AllocatedDataD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.cd = load ptr, ptr %i.ay, align 8, !tbaa !230
  store ptr %i.cd, ptr %i.ax, align 8, !tbaa !33
  br label %_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit15

_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit15: ; preds = %bb.f, %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = call noundef ptr @_ZNK6duckdb10unique_ptrINS_10BssDecoderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
  %i.cg = load ptr, ptr %i.aw, align 8, !tbaa !229, !nonnull !23, !align !24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !33
  %i.ci = trunc i64 %.013.i to i32
  call void @_ZN6duckdb10BssDecoder8GetBatchIdEEvPhj(ptr noundef nonnull align 8 dereferenceable(20) %i.cf, ptr noundef %i.ch, i32 noundef %i.ci)
  br label %bb.k

bb.h:                                             ; preds = %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit
  %i.cj = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull @.str)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ck = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cj) #23
  resume { ptr, i32 } %i.ck

bb.k:                                             ; preds = %_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit15, %_ZN6duckdb16ResizeableBuffer6resizeERNS_9AllocatorEm.exit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !15, !nonnull !23, !align !24 ; 2 uses
  %i.cm = load ptr, ptr %i.aw, align 8, !tbaa !229, !nonnull !23, !align !24
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !242
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 112
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(512) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef %1, i64 noundef %2, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(104) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_10BssDecoderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10BssDecoderESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10BssDecoderESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10BssDecoder8GetBatchIfEEvPhj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::basic_stringstream", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !244  ; 4 uses
  %i.c = and i64 %i.b, 3
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef 24)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.21, i64 noundef 53)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !244
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.f)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.22, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZNSolsEm.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
          to label %_ZNSolsEm.exit27 unwind label %bb.e

_ZNSolsEm.exit27:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.23, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZNSolsEm.exit27
  %i.k = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
          to label %bb.r unwind label %bb.f

bb.e:                                             ; preds = %_ZNSolsEm.exit27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %.021 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.021, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.021, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn31 = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.k) #23
  br label %bb.h

common.resume:                                    ; preds = %8, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %bb.h ], [ %9, %8 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn31, %bb.g ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %bb.e ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  %i.r = lshr exact i64 %i.b, 2                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %i.u = add i32 %i.t, %2                         ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %.not.i = icmp ugt i64 %i.w, %i.b
  br i1 %.not.i, label %5, label %_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader

_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader: ; preds = %bb.i
  %.not34 = icmp eq i32 %2, 0
  br i1 %.not34, label %.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader
  %i.x = load ptr, ptr %0, align 8, !tbaa !245
  %i.y = zext i32 %i.t to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y ; 5 uses
  %wide.trip.count = zext i32 %2 to i64           ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.aa = icmp ult i32 %2, 4
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.q

5:                                                ; preds = %bb.i
  %6 = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.16)
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %6) #23
  br label %common.resume

.split:                                           ; preds = %._crit_edge.3, %_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader
  %.pre-phi = phi i32 [ %.pre40, %._crit_edge.3 ], [ %i.u, %_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader ]
  store i32 %.pre-phi, ptr %i.s, align 8, !tbaa !34
  ret void

._crit_edge.unr-lcssa:                            ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.351, %._crit_edge.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.epil
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !123
  %i.ad = shl nuw nsw i64 %indvars.iv.epil, 2
  %gep.epil = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  store i8 %i.ac, ptr %gep.epil, align 1, !tbaa !123
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.j, !llvm.loop !246

._crit_edge:                                      ; preds = %bb.j, %._crit_edge.unr-lcssa
  %i.ae = load ptr, ptr %0, align 8, !tbaa !245
  %i.af = and i64 %i.r, 4294967295
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !34
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 5 uses
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %xtraiter53 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.ak = icmp ult i32 %2, 4
  br i1 %i.ak, label %.epil.preheader52, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter57 = and i64 %wide.trip.count, 4294967292
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge.new
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next.1.3, %bb.k ] ; 6 uses
  %niter58 = phi i64 [ 0, %._crit_edge.new ], [ %niter58.next.3, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !123
  %i.an = shl nuw nsw i64 %indvars.iv.1, 2
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 %i.an
  store i8 %i.am, ptr %gep.1, align 1, !tbaa !123
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !123
  %i.aq = shl nuw nsw i64 %indvars.iv.next.1, 2
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 %i.aq
  store i8 %i.ap, ptr %gep.1.1, align 1, !tbaa !123
  %indvars.iv.next.1.1 = or disjoint i64 %indvars.iv.1, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.1.1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !123
  %i.at = shl nuw nsw i64 %indvars.iv.next.1.1, 2
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 %i.at
  store i8 %i.as, ptr %gep.1.2, align 1, !tbaa !123
  %indvars.iv.next.1.2 = or disjoint i64 %indvars.iv.1, 3 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.1.2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !123
  %i.aw = shl nuw nsw i64 %indvars.iv.next.1.2, 2
  %gep.1.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 %i.aw
  store i8 %i.av, ptr %gep.1.3, align 1, !tbaa !123
  %indvars.iv.next.1.3 = add nuw nsw i64 %indvars.iv.1, 4 ; 2 uses
  %niter58.next.3 = add nuw i64 %niter58, 4       ; 2 uses
  %niter58.ncmp.3 = icmp eq i64 %niter58.next.3, %unroll_iter57
  br i1 %niter58.ncmp.3, label %._crit_edge.1.unr-lcssa, label %bb.k, !llvm.loop !247

._crit_edge.1.unr-lcssa:                          ; preds = %bb.k
  %lcmp.mod55.not = icmp eq i64 %xtraiter53, 0
  br i1 %lcmp.mod55.not, label %._crit_edge.1, label %.epil.preheader52

.epil.preheader52:                                ; preds = %._crit_edge.1.unr-lcssa, %._crit_edge
  %indvars.iv.1.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.1.3, %._crit_edge.1.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter53, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader52
  %indvars.iv.1.epil = phi i64 [ %indvars.iv.1.epil.init, %.epil.preheader52 ], [ %indvars.iv.next.1.epil, %bb.l ] ; 3 uses
  %epil.iter54 = phi i64 [ 0, %.epil.preheader52 ], [ %epil.iter54.next, %bb.l ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.1.epil
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !123
  %i.az = shl nuw nsw i64 %indvars.iv.1.epil, 2
  %gep.1.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 %i.az
  store i8 %i.ay, ptr %gep.1.epil, align 1, !tbaa !123
  %indvars.iv.next.1.epil = add nuw nsw i64 %indvars.iv.1.epil, 1
  %epil.iter54.next = add i64 %epil.iter54, 1     ; 2 uses
  %epil.iter54.cmp.not = icmp eq i64 %epil.iter54.next, %xtraiter53
  br i1 %epil.iter54.cmp.not, label %._crit_edge.1, label %bb.l, !llvm.loop !248

._crit_edge.1:                                    ; preds = %bb.l, %._crit_edge.1.unr-lcssa
  %i.ba = load ptr, ptr %0, align 8, !tbaa !245
  %i.bb = lshr exact i64 %i.b, 1
  %i.bc = and i64 %i.bb, 4294967294
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  %i.be = load i32, ptr %i.s, align 8, !tbaa !34
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf ; 5 uses
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 5 uses
  %xtraiter60 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.bh = icmp ult i32 %2, 4
  br i1 %i.bh, label %.epil.preheader59, label %._crit_edge.1.new

._crit_edge.1.new:                                ; preds = %._crit_edge.1
  %unroll_iter64 = and i64 %wide.trip.count, 4294967292
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %._crit_edge.1.new
  %indvars.iv.2 = phi i64 [ 0, %._crit_edge.1.new ], [ %indvars.iv.next.2.3, %bb.m ] ; 6 uses
  %niter65 = phi i64 [ 0, %._crit_edge.1.new ], [ %niter65.next.3, %bb.m ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !123
  %i.bk = shl nuw nsw i64 %indvars.iv.2, 2
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 %i.bk
  store i8 %i.bj, ptr %gep.2, align 1, !tbaa !123
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !123
  %i.bn = shl nuw nsw i64 %indvars.iv.next.2, 2
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 %i.bn
  store i8 %i.bm, ptr %gep.2.1, align 1, !tbaa !123
  %indvars.iv.next.2.1 = or disjoint i64 %indvars.iv.2, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.2.1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !123
  %i.bq = shl nuw nsw i64 %indvars.iv.next.2.1, 2
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 %i.bq
  store i8 %i.bp, ptr %gep.2.2, align 1, !tbaa !123
  %indvars.iv.next.2.2 = or disjoint i64 %indvars.iv.2, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.2.2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !123
  %i.bt = shl nuw nsw i64 %indvars.iv.next.2.2, 2
  %gep.2.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 %i.bt
  store i8 %i.bs, ptr %gep.2.3, align 1, !tbaa !123
  %indvars.iv.next.2.3 = add nuw nsw i64 %indvars.iv.2, 4 ; 2 uses
  %niter65.next.3 = add nuw i64 %niter65, 4       ; 2 uses
  %niter65.ncmp.3 = icmp eq i64 %niter65.next.3, %unroll_iter64
  br i1 %niter65.ncmp.3, label %._crit_edge.2.unr-lcssa, label %bb.m, !llvm.loop !247

._crit_edge.2.unr-lcssa:                          ; preds = %bb.m
  %lcmp.mod62.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod62.not, label %._crit_edge.2, label %.epil.preheader59

.epil.preheader59:                                ; preds = %._crit_edge.2.unr-lcssa, %._crit_edge.1
  %indvars.iv.2.epil.init = phi i64 [ 0, %._crit_edge.1 ], [ %indvars.iv.next.2.3, %._crit_edge.2.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter60, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader59
  %indvars.iv.2.epil = phi i64 [ %indvars.iv.2.epil.init, %.epil.preheader59 ], [ %indvars.iv.next.2.epil, %bb.n ] ; 3 uses
  %epil.iter61 = phi i64 [ 0, %.epil.preheader59 ], [ %epil.iter61.next, %bb.n ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.2.epil
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !123
  %i.bw = shl nuw nsw i64 %indvars.iv.2.epil, 2
  %gep.2.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 %i.bw
  store i8 %i.bv, ptr %gep.2.epil, align 1, !tbaa !123
  %indvars.iv.next.2.epil = add nuw nsw i64 %indvars.iv.2.epil, 1
  %epil.iter61.next = add i64 %epil.iter61, 1     ; 2 uses
  %epil.iter61.cmp.not = icmp eq i64 %epil.iter61.next, %xtraiter60
  br i1 %epil.iter61.cmp.not, label %._crit_edge.2, label %bb.n, !llvm.loop !249

._crit_edge.2:                                    ; preds = %bb.n, %._crit_edge.2.unr-lcssa
  %i.bx = load ptr, ptr %0, align 8, !tbaa !245
  %i.by = mul nuw i64 %i.r, 3
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz
  %i.cb = load i32, ptr %i.s, align 8, !tbaa !34
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cc ; 5 uses
  %invariant.gep.3 = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 5 uses
  %xtraiter67 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.ce = icmp ult i32 %2, 4
  br i1 %i.ce, label %.epil.preheader66, label %._crit_edge.2.new

._crit_edge.2.new:                                ; preds = %._crit_edge.2
  %unroll_iter71 = and i64 %wide.trip.count, 4294967292
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %._crit_edge.2.new
  %indvars.iv.3 = phi i64 [ 0, %._crit_edge.2.new ], [ %indvars.iv.next.3.3, %bb.o ] ; 6 uses
  %niter72 = phi i64 [ 0, %._crit_edge.2.new ], [ %niter72.next.3, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !123
  %i.ch = shl nuw nsw i64 %indvars.iv.3, 2
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.3, i64 %i.ch
  store i8 %i.cg, ptr %gep.3, align 1, !tbaa !123
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv.3, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !123
  %i.ck = shl nuw nsw i64 %indvars.iv.next.3, 2
  %gep.3.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.3, i64 %i.ck
  store i8 %i.cj, ptr %gep.3.1, align 1, !tbaa !123
  %indvars.iv.next.3.1 = or disjoint i64 %indvars.iv.3, 2 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.3.1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !123
  %i.cn = shl nuw nsw i64 %indvars.iv.next.3.1, 2
  %gep.3.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.3, i64 %i.cn
  store i8 %i.cm, ptr %gep.3.2, align 1, !tbaa !123
  %indvars.iv.next.3.2 = or disjoint i64 %indvars.iv.3, 3 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.3.2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !123
  %i.cq = shl nuw nsw i64 %indvars.iv.next.3.2, 2
  %gep.3.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.3, i64 %i.cq
  store i8 %i.cp, ptr %gep.3.3, align 1, !tbaa !123
  %indvars.iv.next.3.3 = add nuw nsw i64 %indvars.iv.3, 4 ; 2 uses
  %niter72.next.3 = add nuw i64 %niter72, 4       ; 2 uses
  %niter72.ncmp.3 = icmp eq i64 %niter72.next.3, %unroll_iter71
  br i1 %niter72.ncmp.3, label %._crit_edge.3.unr-lcssa, label %bb.o, !llvm.loop !247

._crit_edge.3.unr-lcssa:                          ; preds = %bb.o
  %lcmp.mod69.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod69.not, label %._crit_edge.3, label %.epil.preheader66

.epil.preheader66:                                ; preds = %._crit_edge.3.unr-lcssa, %._crit_edge.2
  %indvars.iv.3.epil.init = phi i64 [ 0, %._crit_edge.2 ], [ %indvars.iv.next.3.3, %._crit_edge.3.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter67, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader66
  %indvars.iv.3.epil = phi i64 [ %indvars.iv.3.epil.init, %.epil.preheader66 ], [ %indvars.iv.next.3.epil, %bb.p ] ; 3 uses
  %epil.iter68 = phi i64 [ 0, %.epil.preheader66 ], [ %epil.iter68.next, %bb.p ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.3.epil
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !123
  %i.ct = shl nuw nsw i64 %indvars.iv.3.epil, 2
  %gep.3.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.3, i64 %i.ct
  store i8 %i.cs, ptr %gep.3.epil, align 1, !tbaa !123
  %indvars.iv.next.3.epil = add nuw nsw i64 %indvars.iv.3.epil, 1
  %epil.iter68.next = add i64 %epil.iter68, 1     ; 2 uses
  %epil.iter68.cmp.not = icmp eq i64 %epil.iter68.next, %xtraiter67
  br i1 %epil.iter68.cmp.not, label %._crit_edge.3, label %bb.p, !llvm.loop !250

._crit_edge.3:                                    ; preds = %bb.p, %._crit_edge.3.unr-lcssa
  %.pre = load i32, ptr %i.s, align 8, !tbaa !34
  %.pre40 = add i32 %.pre, %2
  br label %.split

bb.q:                                             ; preds = %bb.q, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.351, %bb.q ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %bb.q ]
  %10 = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %11 = load i8, ptr %10, align 1, !tbaa !123
  %12 = shl nuw nsw i64 %indvars.iv, 2
  %gep = getelementptr inbounds nuw i8, ptr %1, i64 %12
  store i8 %11, ptr %gep, align 1, !tbaa !123
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next
  %14 = load i8, ptr %13, align 1, !tbaa !123
  %15 = shl nuw nsw i64 %indvars.iv.next, 2
  %gep.144 = getelementptr inbounds nuw i8, ptr %1, i64 %15
  store i8 %14, ptr %gep.144, align 1, !tbaa !123
  %indvars.iv.next.145 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next.145
  %17 = load i8, ptr %16, align 1, !tbaa !123
  %18 = shl nuw nsw i64 %indvars.iv.next.145, 2
  %gep.247 = getelementptr inbounds nuw i8, ptr %1, i64 %18
  store i8 %17, ptr %gep.247, align 1, !tbaa !123
  %indvars.iv.next.248 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next.248
  %20 = load i8, ptr %19, align 1, !tbaa !123
  %21 = shl nuw nsw i64 %indvars.iv.next.248, 2
  %gep.350 = getelementptr inbounds nuw i8, ptr %1, i64 %21
  store i8 %20, ptr %gep.350, align 1, !tbaa !123
  %indvars.iv.next.351 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.q, !llvm.loop !247

bb.r:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10BssDecoder8GetBatchIdEEvPhj(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::basic_stringstream", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !244  ; 5 uses
  %i.c = and i64 %i.b, 7
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %3, i32 noundef 24)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.21, i64 noundef 53)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !244
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.f)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.22, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26: ; preds = %_ZNSolsEm.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 8)
          to label %_ZNSolsEm.exit27 unwind label %bb.e

_ZNSolsEm.exit27:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.23, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28: ; preds = %_ZNSolsEm.exit27
  %i.k = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
          to label %bb.z unwind label %bb.f

bb.e:                                             ; preds = %_ZNSolsEm.exit27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %.021 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.o = load ptr, ptr %4, align 8, !tbaa !42     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.021, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.021, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn31 = phi { ptr, i32 } [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.k) #23
  br label %bb.h

common.resume:                                    ; preds = %8, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn, %bb.h ], [ %9, %8 ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn31, %bb.g ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.l, %bb.e ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  %i.r = lshr exact i64 %i.b, 3                   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %i.u = add i32 %i.t, %2                         ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 3
  %.not.i = icmp ugt i64 %i.w, %i.b
  br i1 %.not.i, label %5, label %_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader

_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader: ; preds = %bb.i
  %.not34 = icmp eq i32 %2, 0
  br i1 %.not34, label %.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader
  %i.x = load ptr, ptr %0, align 8, !tbaa !245
  %i.y = zext i32 %i.t to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y ; 5 uses
  %wide.trip.count = zext i32 %2 to i64           ; 16 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.aa = icmp ult i32 %2, 4
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.y

5:                                                ; preds = %bb.i
  %6 = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.16)
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %6) #23
  br label %common.resume

.split:                                           ; preds = %._crit_edge.7, %_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader
  %.pre-phi = phi i32 [ %.pre40, %._crit_edge.7 ], [ %i.u, %_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader ]
  store i32 %.pre-phi, ptr %i.s, align 8, !tbaa !34
  ret void

._crit_edge.unr-lcssa:                            ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.351, %._crit_edge.unr-lcssa ]
  %lcmp.mod42 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.epil
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !123
  %i.ad = shl nuw nsw i64 %indvars.iv.epil, 3
  %gep.epil = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  store i8 %i.ac, ptr %gep.epil, align 1, !tbaa !123
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.j, !llvm.loop !251

._crit_edge:                                      ; preds = %bb.j, %._crit_edge.unr-lcssa
  %i.ae = load ptr, ptr %0, align 8, !tbaa !245
  %i.af = and i64 %i.r, 4294967295
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.s, align 8, !tbaa !34
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai ; 5 uses
  %invariant.gep.1 = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  %xtraiter53 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.ak = icmp ult i32 %2, 4
  br i1 %i.ak, label %.epil.preheader52, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter57 = and i64 %wide.trip.count, 4294967292
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %._crit_edge.new
  %indvars.iv.1 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next.1.3, %bb.k ] ; 6 uses
  %niter58 = phi i64 [ 0, %._crit_edge.new ], [ %niter58.next.3, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !123
  %i.an = shl nuw nsw i64 %indvars.iv.1, 3
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 %i.an
  store i8 %i.am, ptr %gep.1, align 1, !tbaa !123
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !123
  %i.aq = shl nuw nsw i64 %indvars.iv.next.1, 3
  %gep.1.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 %i.aq
  store i8 %i.ap, ptr %gep.1.1, align 1, !tbaa !123
  %indvars.iv.next.1.1 = or disjoint i64 %indvars.iv.1, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.1.1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !123
  %i.at = shl nuw nsw i64 %indvars.iv.next.1.1, 3
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 %i.at
  store i8 %i.as, ptr %gep.1.2, align 1, !tbaa !123
  %indvars.iv.next.1.2 = or disjoint i64 %indvars.iv.1, 3 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next.1.2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !123
  %i.aw = shl nuw nsw i64 %indvars.iv.next.1.2, 3
  %gep.1.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 %i.aw
  store i8 %i.av, ptr %gep.1.3, align 1, !tbaa !123
  %indvars.iv.next.1.3 = add nuw nsw i64 %indvars.iv.1, 4 ; 2 uses
  %niter58.next.3 = add i64 %niter58, 4           ; 2 uses
  %niter58.ncmp.3 = icmp eq i64 %niter58.next.3, %unroll_iter57
  br i1 %niter58.ncmp.3, label %._crit_edge.1.unr-lcssa, label %bb.k, !llvm.loop !252

._crit_edge.1.unr-lcssa:                          ; preds = %bb.k
  %lcmp.mod55.not = icmp eq i64 %xtraiter53, 0
  br i1 %lcmp.mod55.not, label %._crit_edge.1, label %.epil.preheader52

.epil.preheader52:                                ; preds = %._crit_edge.1.unr-lcssa, %._crit_edge
  %indvars.iv.1.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.1.3, %._crit_edge.1.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter53, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader52
  %indvars.iv.1.epil = phi i64 [ %indvars.iv.1.epil.init, %.epil.preheader52 ], [ %indvars.iv.next.1.epil, %bb.l ] ; 3 uses
  %epil.iter54 = phi i64 [ 0, %.epil.preheader52 ], [ %epil.iter54.next, %bb.l ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.1.epil
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !123
  %i.az = shl nuw nsw i64 %indvars.iv.1.epil, 3
  %gep.1.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.1, i64 %i.az
  store i8 %i.ay, ptr %gep.1.epil, align 1, !tbaa !123
  %indvars.iv.next.1.epil = add nuw nsw i64 %indvars.iv.1.epil, 1
  %epil.iter54.next = add i64 %epil.iter54, 1     ; 2 uses
  %epil.iter54.cmp.not = icmp eq i64 %epil.iter54.next, %xtraiter53
  br i1 %epil.iter54.cmp.not, label %._crit_edge.1, label %bb.l, !llvm.loop !253

._crit_edge.1:                                    ; preds = %bb.l, %._crit_edge.1.unr-lcssa
  %i.ba = load ptr, ptr %0, align 8, !tbaa !245
  %i.bb = lshr exact i64 %i.b, 2
  %i.bc = and i64 %i.bb, 4294967294
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bc
  %i.be = load i32, ptr %i.s, align 8, !tbaa !34
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bf ; 5 uses
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 5 uses
  %xtraiter60 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.bh = icmp ult i32 %2, 4
  br i1 %i.bh, label %.epil.preheader59, label %._crit_edge.1.new

._crit_edge.1.new:                                ; preds = %._crit_edge.1
  %unroll_iter64 = and i64 %wide.trip.count, 4294967292
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %._crit_edge.1.new
  %indvars.iv.2 = phi i64 [ 0, %._crit_edge.1.new ], [ %indvars.iv.next.2.3, %bb.m ] ; 6 uses
  %niter65 = phi i64 [ 0, %._crit_edge.1.new ], [ %niter65.next.3, %bb.m ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !123
  %i.bk = shl nuw nsw i64 %indvars.iv.2, 3
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 %i.bk
  store i8 %i.bj, ptr %gep.2, align 1, !tbaa !123
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !123
  %i.bn = shl nuw nsw i64 %indvars.iv.next.2, 3
  %gep.2.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 %i.bn
  store i8 %i.bm, ptr %gep.2.1, align 1, !tbaa !123
  %indvars.iv.next.2.1 = or disjoint i64 %indvars.iv.2, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.2.1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !123
  %i.bq = shl nuw nsw i64 %indvars.iv.next.2.1, 3
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 %i.bq
  store i8 %i.bp, ptr %gep.2.2, align 1, !tbaa !123
  %indvars.iv.next.2.2 = or disjoint i64 %indvars.iv.2, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.2.2
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !123
  %i.bt = shl nuw nsw i64 %indvars.iv.next.2.2, 3
  %gep.2.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 %i.bt
  store i8 %i.bs, ptr %gep.2.3, align 1, !tbaa !123
  %indvars.iv.next.2.3 = add nuw nsw i64 %indvars.iv.2, 4 ; 2 uses
  %niter65.next.3 = add i64 %niter65, 4           ; 2 uses
  %niter65.ncmp.3 = icmp eq i64 %niter65.next.3, %unroll_iter64
  br i1 %niter65.ncmp.3, label %._crit_edge.2.unr-lcssa, label %bb.m, !llvm.loop !252

._crit_edge.2.unr-lcssa:                          ; preds = %bb.m
  %lcmp.mod62.not = icmp eq i64 %xtraiter60, 0
  br i1 %lcmp.mod62.not, label %._crit_edge.2, label %.epil.preheader59

.epil.preheader59:                                ; preds = %._crit_edge.2.unr-lcssa, %._crit_edge.1
  %indvars.iv.2.epil.init = phi i64 [ 0, %._crit_edge.1 ], [ %indvars.iv.next.2.3, %._crit_edge.2.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter60, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.epil.preheader59
  %indvars.iv.2.epil = phi i64 [ %indvars.iv.2.epil.init, %.epil.preheader59 ], [ %indvars.iv.next.2.epil, %bb.n ] ; 3 uses
  %epil.iter61 = phi i64 [ 0, %.epil.preheader59 ], [ %epil.iter61.next, %bb.n ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.2.epil
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !123
  %i.bw = shl nuw nsw i64 %indvars.iv.2.epil, 3
  %gep.2.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.2, i64 %i.bw
  store i8 %i.bv, ptr %gep.2.epil, align 1, !tbaa !123
  %indvars.iv.next.2.epil = add nuw nsw i64 %indvars.iv.2.epil, 1
  %epil.iter61.next = add i64 %epil.iter61, 1     ; 2 uses
  %epil.iter61.cmp.not = icmp eq i64 %epil.iter61.next, %xtraiter60
  br i1 %epil.iter61.cmp.not, label %._crit_edge.2, label %bb.n, !llvm.loop !254

._crit_edge.2:                                    ; preds = %bb.n, %._crit_edge.2.unr-lcssa
  %i.bx = load ptr, ptr %0, align 8, !tbaa !245
  %i.by = mul nuw nsw i64 %i.r, 3
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz
  %i.cb = load i32, ptr %i.s, align 8, !tbaa !34
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cc ; 5 uses
  %invariant.gep.3 = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 5 uses
  %xtraiter67 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.ce = icmp ult i32 %2, 4
  br i1 %i.ce, label %.epil.preheader66, label %._crit_edge.2.new

._crit_edge.2.new:                                ; preds = %._crit_edge.2
  %unroll_iter71 = and i64 %wide.trip.count, 4294967292
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %._crit_edge.2.new
  %indvars.iv.3 = phi i64 [ 0, %._crit_edge.2.new ], [ %indvars.iv.next.3.3, %bb.o ] ; 6 uses
  %niter72 = phi i64 [ 0, %._crit_edge.2.new ], [ %niter72.next.3, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !123
  %i.ch = shl nuw nsw i64 %indvars.iv.3, 3
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.3, i64 %i.ch
  store i8 %i.cg, ptr %gep.3, align 1, !tbaa !123
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv.3, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.3
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !123
  %i.ck = shl nuw nsw i64 %indvars.iv.next.3, 3
  %gep.3.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.3, i64 %i.ck
  store i8 %i.cj, ptr %gep.3.1, align 1, !tbaa !123
  %indvars.iv.next.3.1 = or disjoint i64 %indvars.iv.3, 2 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.3.1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !123
  %i.cn = shl nuw nsw i64 %indvars.iv.next.3.1, 3
  %gep.3.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.3, i64 %i.cn
  store i8 %i.cm, ptr %gep.3.2, align 1, !tbaa !123
  %indvars.iv.next.3.2 = or disjoint i64 %indvars.iv.3, 3 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.next.3.2
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !123
  %i.cq = shl nuw nsw i64 %indvars.iv.next.3.2, 3
  %gep.3.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.3, i64 %i.cq
  store i8 %i.cp, ptr %gep.3.3, align 1, !tbaa !123
  %indvars.iv.next.3.3 = add nuw nsw i64 %indvars.iv.3, 4 ; 2 uses
  %niter72.next.3 = add i64 %niter72, 4           ; 2 uses
  %niter72.ncmp.3 = icmp eq i64 %niter72.next.3, %unroll_iter71
  br i1 %niter72.ncmp.3, label %._crit_edge.3.unr-lcssa, label %bb.o, !llvm.loop !252

._crit_edge.3.unr-lcssa:                          ; preds = %bb.o
  %lcmp.mod69.not = icmp eq i64 %xtraiter67, 0
  br i1 %lcmp.mod69.not, label %._crit_edge.3, label %.epil.preheader66

.epil.preheader66:                                ; preds = %._crit_edge.3.unr-lcssa, %._crit_edge.2
  %indvars.iv.3.epil.init = phi i64 [ 0, %._crit_edge.2 ], [ %indvars.iv.next.3.3, %._crit_edge.3.unr-lcssa ]
  %lcmp.mod70 = icmp ne i64 %xtraiter67, 0
  tail call void @llvm.assume(i1 %lcmp.mod70)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader66
  %indvars.iv.3.epil = phi i64 [ %indvars.iv.3.epil.init, %.epil.preheader66 ], [ %indvars.iv.next.3.epil, %bb.p ] ; 3 uses
  %epil.iter68 = phi i64 [ 0, %.epil.preheader66 ], [ %epil.iter68.next, %bb.p ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv.3.epil
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !123
  %i.ct = shl nuw nsw i64 %indvars.iv.3.epil, 3
  %gep.3.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.3, i64 %i.ct
  store i8 %i.cs, ptr %gep.3.epil, align 1, !tbaa !123
  %indvars.iv.next.3.epil = add nuw nsw i64 %indvars.iv.3.epil, 1
  %epil.iter68.next = add i64 %epil.iter68, 1     ; 2 uses
  %epil.iter68.cmp.not = icmp eq i64 %epil.iter68.next, %xtraiter67
  br i1 %epil.iter68.cmp.not, label %._crit_edge.3, label %bb.p, !llvm.loop !255

._crit_edge.3:                                    ; preds = %bb.p, %._crit_edge.3.unr-lcssa
  %i.cu = load ptr, ptr %0, align 8, !tbaa !245
  %i.cv = lshr exact i64 %i.b, 1
  %i.cw = and i64 %i.cv, 4294967292
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw
  %i.cy = load i32, ptr %i.s, align 8, !tbaa !34
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cz ; 5 uses
  %invariant.gep.4 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %xtraiter74 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.db = icmp ult i32 %2, 4
  br i1 %i.db, label %.epil.preheader73, label %._crit_edge.3.new

._crit_edge.3.new:                                ; preds = %._crit_edge.3
  %unroll_iter78 = and i64 %wide.trip.count, 4294967292
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %._crit_edge.3.new
  %indvars.iv.4 = phi i64 [ 0, %._crit_edge.3.new ], [ %indvars.iv.next.4.3, %bb.q ] ; 6 uses
  %niter79 = phi i64 [ 0, %._crit_edge.3.new ], [ %niter79.next.3, %bb.q ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.4
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !123
  %i.de = shl nuw nsw i64 %indvars.iv.4, 3
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep.4, i64 %i.de
  store i8 %i.dd, ptr %gep.4, align 1, !tbaa !123
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv.4, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.next.4
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !123
  %i.dh = shl nuw nsw i64 %indvars.iv.next.4, 3
  %gep.4.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.4, i64 %i.dh
  store i8 %i.dg, ptr %gep.4.1, align 1, !tbaa !123
  %indvars.iv.next.4.1 = or disjoint i64 %indvars.iv.4, 2 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.next.4.1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !123
  %i.dk = shl nuw nsw i64 %indvars.iv.next.4.1, 3
  %gep.4.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.4, i64 %i.dk
  store i8 %i.dj, ptr %gep.4.2, align 1, !tbaa !123
  %indvars.iv.next.4.2 = or disjoint i64 %indvars.iv.4, 3 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.next.4.2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !123
  %i.dn = shl nuw nsw i64 %indvars.iv.next.4.2, 3
  %gep.4.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.4, i64 %i.dn
  store i8 %i.dm, ptr %gep.4.3, align 1, !tbaa !123
  %indvars.iv.next.4.3 = add nuw nsw i64 %indvars.iv.4, 4 ; 2 uses
  %niter79.next.3 = add i64 %niter79, 4           ; 2 uses
  %niter79.ncmp.3 = icmp eq i64 %niter79.next.3, %unroll_iter78
  br i1 %niter79.ncmp.3, label %._crit_edge.4.unr-lcssa, label %bb.q, !llvm.loop !252

._crit_edge.4.unr-lcssa:                          ; preds = %bb.q
  %lcmp.mod76.not = icmp eq i64 %xtraiter74, 0
  br i1 %lcmp.mod76.not, label %._crit_edge.4, label %.epil.preheader73

.epil.preheader73:                                ; preds = %._crit_edge.4.unr-lcssa, %._crit_edge.3
  %indvars.iv.4.epil.init = phi i64 [ 0, %._crit_edge.3 ], [ %indvars.iv.next.4.3, %._crit_edge.4.unr-lcssa ]
  %lcmp.mod77 = icmp ne i64 %xtraiter74, 0
  tail call void @llvm.assume(i1 %lcmp.mod77)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader73
  %indvars.iv.4.epil = phi i64 [ %indvars.iv.4.epil.init, %.epil.preheader73 ], [ %indvars.iv.next.4.epil, %bb.r ] ; 3 uses
  %epil.iter75 = phi i64 [ 0, %.epil.preheader73 ], [ %epil.iter75.next, %bb.r ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.4.epil
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !123
  %i.dq = shl nuw nsw i64 %indvars.iv.4.epil, 3
  %gep.4.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.4, i64 %i.dq
  store i8 %i.dp, ptr %gep.4.epil, align 1, !tbaa !123
  %indvars.iv.next.4.epil = add nuw nsw i64 %indvars.iv.4.epil, 1
  %epil.iter75.next = add i64 %epil.iter75, 1     ; 2 uses
  %epil.iter75.cmp.not = icmp eq i64 %epil.iter75.next, %xtraiter74
  br i1 %epil.iter75.cmp.not, label %._crit_edge.4, label %bb.r, !llvm.loop !256

._crit_edge.4:                                    ; preds = %bb.r, %._crit_edge.4.unr-lcssa
  %i.dr = load ptr, ptr %0, align 8, !tbaa !245
  %i.ds = mul nuw i64 %i.r, 5
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dt
  %i.dv = load i32, ptr %i.s, align 8, !tbaa !34
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dw ; 5 uses
  %invariant.gep.5 = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 5 uses
  %xtraiter81 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.dy = icmp ult i32 %2, 4
  br i1 %i.dy, label %.epil.preheader80, label %._crit_edge.4.new

._crit_edge.4.new:                                ; preds = %._crit_edge.4
  %unroll_iter85 = and i64 %wide.trip.count, 4294967292
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %._crit_edge.4.new
  %indvars.iv.5 = phi i64 [ 0, %._crit_edge.4.new ], [ %indvars.iv.next.5.3, %bb.s ] ; 6 uses
  %niter86 = phi i64 [ 0, %._crit_edge.4.new ], [ %niter86.next.3, %bb.s ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv.5
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !123
  %i.eb = shl nuw nsw i64 %indvars.iv.5, 3
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep.5, i64 %i.eb
  store i8 %i.ea, ptr %gep.5, align 1, !tbaa !123
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv.5, 1 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv.next.5
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !123
  %i.ee = shl nuw nsw i64 %indvars.iv.next.5, 3
  %gep.5.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.5, i64 %i.ee
  store i8 %i.ed, ptr %gep.5.1, align 1, !tbaa !123
  %indvars.iv.next.5.1 = or disjoint i64 %indvars.iv.5, 2 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv.next.5.1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !123
  %i.eh = shl nuw nsw i64 %indvars.iv.next.5.1, 3
  %gep.5.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.5, i64 %i.eh
  store i8 %i.eg, ptr %gep.5.2, align 1, !tbaa !123
  %indvars.iv.next.5.2 = or disjoint i64 %indvars.iv.5, 3 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv.next.5.2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !123
  %i.ek = shl nuw nsw i64 %indvars.iv.next.5.2, 3
  %gep.5.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.5, i64 %i.ek
  store i8 %i.ej, ptr %gep.5.3, align 1, !tbaa !123
  %indvars.iv.next.5.3 = add nuw nsw i64 %indvars.iv.5, 4 ; 2 uses
  %niter86.next.3 = add i64 %niter86, 4           ; 2 uses
  %niter86.ncmp.3 = icmp eq i64 %niter86.next.3, %unroll_iter85
  br i1 %niter86.ncmp.3, label %._crit_edge.5.unr-lcssa, label %bb.s, !llvm.loop !252

._crit_edge.5.unr-lcssa:                          ; preds = %bb.s
  %lcmp.mod83.not = icmp eq i64 %xtraiter81, 0
  br i1 %lcmp.mod83.not, label %._crit_edge.5, label %.epil.preheader80

.epil.preheader80:                                ; preds = %._crit_edge.5.unr-lcssa, %._crit_edge.4
  %indvars.iv.5.epil.init = phi i64 [ 0, %._crit_edge.4 ], [ %indvars.iv.next.5.3, %._crit_edge.5.unr-lcssa ]
  %lcmp.mod84 = icmp ne i64 %xtraiter81, 0
  tail call void @llvm.assume(i1 %lcmp.mod84)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader80
  %indvars.iv.5.epil = phi i64 [ %indvars.iv.5.epil.init, %.epil.preheader80 ], [ %indvars.iv.next.5.epil, %bb.t ] ; 3 uses
  %epil.iter82 = phi i64 [ 0, %.epil.preheader80 ], [ %epil.iter82.next, %bb.t ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.dx, i64 %indvars.iv.5.epil
  %i.em = load i8, ptr %i.el, align 1, !tbaa !123
  %i.en = shl nuw nsw i64 %indvars.iv.5.epil, 3
  %gep.5.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.5, i64 %i.en
  store i8 %i.em, ptr %gep.5.epil, align 1, !tbaa !123
  %indvars.iv.next.5.epil = add nuw nsw i64 %indvars.iv.5.epil, 1
  %epil.iter82.next = add i64 %epil.iter82, 1     ; 2 uses
  %epil.iter82.cmp.not = icmp eq i64 %epil.iter82.next, %xtraiter81
  br i1 %epil.iter82.cmp.not, label %._crit_edge.5, label %bb.t, !llvm.loop !257

._crit_edge.5:                                    ; preds = %bb.t, %._crit_edge.5.unr-lcssa
  %i.eo = load ptr, ptr %0, align 8, !tbaa !245
  %i.ep = mul nuw i64 %i.r, 6
  %i.eq = and i64 %i.ep, 4294967294
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.eq
  %i.es = load i32, ptr %i.s, align 8, !tbaa !34
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.et ; 5 uses
  %invariant.gep.6 = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 5 uses
  %xtraiter88 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.ev = icmp ult i32 %2, 4
  br i1 %i.ev, label %.epil.preheader87, label %._crit_edge.5.new

._crit_edge.5.new:                                ; preds = %._crit_edge.5
  %unroll_iter92 = and i64 %wide.trip.count, 4294967292
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %._crit_edge.5.new
  %indvars.iv.6 = phi i64 [ 0, %._crit_edge.5.new ], [ %indvars.iv.next.6.3, %bb.u ] ; 6 uses
  %niter93 = phi i64 [ 0, %._crit_edge.5.new ], [ %niter93.next.3, %bb.u ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.6
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !123
  %i.ey = shl nuw nsw i64 %indvars.iv.6, 3
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep.6, i64 %i.ey
  store i8 %i.ex, ptr %gep.6, align 1, !tbaa !123
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv.6, 1 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.next.6
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !123
  %i.fb = shl nuw nsw i64 %indvars.iv.next.6, 3
  %gep.6.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.6, i64 %i.fb
  store i8 %i.fa, ptr %gep.6.1, align 1, !tbaa !123
  %indvars.iv.next.6.1 = or disjoint i64 %indvars.iv.6, 2 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.next.6.1
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !123
  %i.fe = shl nuw nsw i64 %indvars.iv.next.6.1, 3
  %gep.6.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.6, i64 %i.fe
  store i8 %i.fd, ptr %gep.6.2, align 1, !tbaa !123
  %indvars.iv.next.6.2 = or disjoint i64 %indvars.iv.6, 3 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.next.6.2
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !123
  %i.fh = shl nuw nsw i64 %indvars.iv.next.6.2, 3
  %gep.6.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.6, i64 %i.fh
  store i8 %i.fg, ptr %gep.6.3, align 1, !tbaa !123
  %indvars.iv.next.6.3 = add nuw nsw i64 %indvars.iv.6, 4 ; 2 uses
  %niter93.next.3 = add i64 %niter93, 4           ; 2 uses
  %niter93.ncmp.3 = icmp eq i64 %niter93.next.3, %unroll_iter92
  br i1 %niter93.ncmp.3, label %._crit_edge.6.unr-lcssa, label %bb.u, !llvm.loop !252

._crit_edge.6.unr-lcssa:                          ; preds = %bb.u
  %lcmp.mod90.not = icmp eq i64 %xtraiter88, 0
  br i1 %lcmp.mod90.not, label %._crit_edge.6, label %.epil.preheader87

.epil.preheader87:                                ; preds = %._crit_edge.6.unr-lcssa, %._crit_edge.5
  %indvars.iv.6.epil.init = phi i64 [ 0, %._crit_edge.5 ], [ %indvars.iv.next.6.3, %._crit_edge.6.unr-lcssa ]
  %lcmp.mod91 = icmp ne i64 %xtraiter88, 0
  tail call void @llvm.assume(i1 %lcmp.mod91)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader87
  %indvars.iv.6.epil = phi i64 [ %indvars.iv.6.epil.init, %.epil.preheader87 ], [ %indvars.iv.next.6.epil, %bb.v ] ; 3 uses
  %epil.iter89 = phi i64 [ 0, %.epil.preheader87 ], [ %epil.iter89.next, %bb.v ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.6.epil
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !123
  %i.fk = shl nuw nsw i64 %indvars.iv.6.epil, 3
  %gep.6.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.6, i64 %i.fk
  store i8 %i.fj, ptr %gep.6.epil, align 1, !tbaa !123
  %indvars.iv.next.6.epil = add nuw nsw i64 %indvars.iv.6.epil, 1
  %epil.iter89.next = add i64 %epil.iter89, 1     ; 2 uses
  %epil.iter89.cmp.not = icmp eq i64 %epil.iter89.next, %xtraiter88
  br i1 %epil.iter89.cmp.not, label %._crit_edge.6, label %bb.v, !llvm.loop !258

._crit_edge.6:                                    ; preds = %bb.v, %._crit_edge.6.unr-lcssa
  %i.fl = load ptr, ptr %0, align 8, !tbaa !245
  %i.fm = mul nuw i64 %i.r, 7
  %i.fn = and i64 %i.fm, 4294967295
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fn
  %i.fp = load i32, ptr %i.s, align 8, !tbaa !34
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fq ; 5 uses
  %invariant.gep.7 = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 5 uses
  %xtraiter95 = and i64 %wide.trip.count, 3       ; 3 uses
  %i.fs = icmp ult i32 %2, 4
  br i1 %i.fs, label %.epil.preheader94, label %._crit_edge.6.new

._crit_edge.6.new:                                ; preds = %._crit_edge.6
  %unroll_iter99 = and i64 %wide.trip.count, 4294967292
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %._crit_edge.6.new
  %indvars.iv.7 = phi i64 [ 0, %._crit_edge.6.new ], [ %indvars.iv.next.7.3, %bb.w ] ; 6 uses
  %niter100 = phi i64 [ 0, %._crit_edge.6.new ], [ %niter100.next.3, %bb.w ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.7
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !123
  %i.fv = shl nuw nsw i64 %indvars.iv.7, 3
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep.7, i64 %i.fv
  store i8 %i.fu, ptr %gep.7, align 1, !tbaa !123
  %indvars.iv.next.7 = or disjoint i64 %indvars.iv.7, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.next.7
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !123
  %i.fy = shl nuw nsw i64 %indvars.iv.next.7, 3
  %gep.7.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.7, i64 %i.fy
  store i8 %i.fx, ptr %gep.7.1, align 1, !tbaa !123
  %indvars.iv.next.7.1 = or disjoint i64 %indvars.iv.7, 2 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.next.7.1
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !123
  %i.gb = shl nuw nsw i64 %indvars.iv.next.7.1, 3
  %gep.7.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.7, i64 %i.gb
  store i8 %i.ga, ptr %gep.7.2, align 1, !tbaa !123
  %indvars.iv.next.7.2 = or disjoint i64 %indvars.iv.7, 3 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.next.7.2
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !123
  %i.ge = shl nuw nsw i64 %indvars.iv.next.7.2, 3
  %gep.7.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.7, i64 %i.ge
  store i8 %i.gd, ptr %gep.7.3, align 1, !tbaa !123
  %indvars.iv.next.7.3 = add nuw nsw i64 %indvars.iv.7, 4 ; 2 uses
  %niter100.next.3 = add i64 %niter100, 4         ; 2 uses
  %niter100.ncmp.3 = icmp eq i64 %niter100.next.3, %unroll_iter99
  br i1 %niter100.ncmp.3, label %._crit_edge.7.unr-lcssa, label %bb.w, !llvm.loop !252

._crit_edge.7.unr-lcssa:                          ; preds = %bb.w
  %lcmp.mod97.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod97.not, label %._crit_edge.7, label %.epil.preheader94

.epil.preheader94:                                ; preds = %._crit_edge.7.unr-lcssa, %._crit_edge.6
  %indvars.iv.7.epil.init = phi i64 [ 0, %._crit_edge.6 ], [ %indvars.iv.next.7.3, %._crit_edge.7.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader94
  %indvars.iv.7.epil = phi i64 [ %indvars.iv.7.epil.init, %.epil.preheader94 ], [ %indvars.iv.next.7.epil, %bb.x ] ; 3 uses
  %epil.iter96 = phi i64 [ 0, %.epil.preheader94 ], [ %epil.iter96.next, %bb.x ]
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv.7.epil
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !123
  %i.gh = shl nuw nsw i64 %indvars.iv.7.epil, 3
  %gep.7.epil = getelementptr inbounds nuw i8, ptr %invariant.gep.7, i64 %i.gh
  store i8 %i.gg, ptr %gep.7.epil, align 1, !tbaa !123
  %indvars.iv.next.7.epil = add nuw nsw i64 %indvars.iv.7.epil, 1
  %epil.iter96.next = add i64 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i64 %epil.iter96.next, %xtraiter95
  br i1 %epil.iter96.cmp.not, label %._crit_edge.7, label %bb.x, !llvm.loop !259

._crit_edge.7:                                    ; preds = %bb.x, %._crit_edge.7.unr-lcssa
  %.pre = load i32, ptr %i.s, align 8, !tbaa !34
  %.pre40 = add i32 %.pre, %2
  br label %.split

bb.y:                                             ; preds = %bb.y, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.351, %bb.y ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %bb.y ]
  %10 = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  %11 = load i8, ptr %10, align 1, !tbaa !123
  %12 = shl nuw nsw i64 %indvars.iv, 3
  %gep = getelementptr inbounds nuw i8, ptr %1, i64 %12
  store i8 %11, ptr %gep, align 1, !tbaa !123
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next
  %14 = load i8, ptr %13, align 1, !tbaa !123
  %15 = shl nuw nsw i64 %indvars.iv.next, 3
  %gep.144 = getelementptr inbounds nuw i8, ptr %1, i64 %15
  store i8 %14, ptr %gep.144, align 1, !tbaa !123
  %indvars.iv.next.145 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next.145
  %17 = load i8, ptr %16, align 1, !tbaa !123
  %18 = shl nuw nsw i64 %indvars.iv.next.145, 3
  %gep.247 = getelementptr inbounds nuw i8, ptr %1, i64 %18
  store i8 %17, ptr %gep.247, align 1, !tbaa !123
  %indvars.iv.next.248 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next.248
  %20 = load i8, ptr %19, align 1, !tbaa !123
  %21 = shl nuw nsw i64 %indvars.iv.next.248, 3
  %gep.350 = getelementptr inbounds nuw i8, ptr %1, i64 %21
  store i8 %20, ptr %gep.350, align 1, !tbaa !123
  %indvars.iv.next.351 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.y, !llvm.loop !252

bb.z:                                             ; preds = %bb.d
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22ByteStreamSplitDecoder4SkipEPhm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15, !nonnull !23, !align !24 ; 2 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45, !nonnull !23, !align !24
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !104  ; 5 uses
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.f = icmp ult i64 %2, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %2, -4
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.016.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ah, %bb.b ] ; 5 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.ag, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.016.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !123
  %i.i = zext i8 %i.h to i64
  %i.j = icmp eq i64 %i.e, %i.i
  %i.k = zext i1 %i.j to i64
  %i.l = add i64 %.01215.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.016.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !123
  %i.p = zext i8 %i.o to i64
  %i.q = icmp eq i64 %i.e, %i.p
  %i.r = zext i1 %i.q to i64
  %i.s = add i64 %i.l, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.016.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !123
  %i.w = zext i8 %i.v to i64
  %i.x = icmp eq i64 %i.e, %i.w
  %i.y = zext i1 %i.x to i64
  %i.z = add i64 %i.s, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.016.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !123
  %i.ad = zext i8 %i.ac to i64
  %i.ae = icmp eq i64 %i.e, %i.ad
  %i.af = zext i1 %i.ae to i64
  %i.ag = add i64 %i.z, %i.af                     ; 3 uses
  %i.ah = add nuw i64 %.016.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !124

_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.016.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ah, %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit.loopexit.unr-lcssa ]
  %.01215.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.ag, %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.016.i.epil = phi i64 [ %.016.i.epil.init, %.epil.preheader ], [ %i.ao, %bb.c ] ; 2 uses
  %.01215.i.epil = phi i64 [ %.01215.i.epil.init, %.epil.preheader ], [ %i.an, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.016.i.epil
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !123
  %i.ak = zext i8 %i.aj to i64
  %i.al = icmp eq i64 %i.e, %i.ak
  %i.am = zext i1 %i.al to i64
  %i.an = add i64 %.01215.i.epil, %i.am           ; 2 uses
  %i.ao = add nuw i64 %.016.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit, label %bb.c, !llvm.loop !260

_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit: ; preds = %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit.loopexit.unr-lcssa, %bb.c, %bb.a, %.preheader.i
  %.013.i = phi i64 [ %2, %bb.a ], [ 0, %.preheader.i ], [ %i.ag, %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit.loopexit.unr-lcssa ], [ %i.an, %bb.c ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45, !nonnull !23, !align !24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !235
  switch i32 %i.as, label %bb.f [
    i32 4, label %bb.d
    i32 5, label %bb.e
  ]

bb.d:                                             ; preds = %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10BssDecoderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %i.av = trunc i64 %.013.i to i32
  tail call void @_ZN6duckdb10BssDecoder4SkipIfEEvj(ptr noundef nonnull align 8 dereferenceable(20) %i.au, i32 noundef %i.av)
  br label %bb.i

bb.e:                                             ; preds = %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10BssDecoderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
  %i.ay = trunc i64 %.013.i to i32
  tail call void @_ZN6duckdb10BssDecoder4SkipIdEEvj(ptr noundef nonnull align 8 dereferenceable(20) %i.ax, i32 noundef %i.ay)
  br label %bb.i

bb.f:                                             ; preds = %_ZNK6duckdb12ColumnReader13GetValidCountEPhmm.exit
  %i.az = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull @.str)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.az, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.az) #23
  resume { ptr, i32 } %i.ba

bb.i:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10BssDecoder4SkipIfEEvj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::basic_stringstream", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !244  ; 2 uses
  %i.c = and i64 %i.b, 3
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @_ZN6duckdb18basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef 24)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull @.str.21, i64 noundef 53)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !244
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.f)
          to label %_ZNSolsEm.exit unwind label %bb.e ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.22, i64 noundef 41)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %_ZNSolsEm.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 4)
          to label %_ZNSolsEm.exit12 unwind label %bb.e

_ZNSolsEm.exit12:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.23, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZNSolsEm.exit12
  %i.k = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(128) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
          to label %bb.m unwind label %bb.f

bb.e:                                             ; preds = %_ZNSolsEm.exit12, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.l = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.umax.v4i32
!46 = !{!"_ZTSN6duckdb12ColumnReaderE", !47, i64 8, !48, i64 16, !28, i64 24, !49, i64 32, !50, i64 40, !51, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !52, i64 80, !54, i64 96, !55, i64 104, !55, i64 112, !63, i64 120, !82, i64 240, !91, i64 264, !92, i64 288, !93, i64 320, !16, i64 344, !94, i64 368, !5, i64 416}
!47 = !{!"p1 _ZTSN6duckdb19ParquetColumnSchemaE", !9, i64 0}
!48 = !{!"p1 _ZTSN6duckdb13ParquetReaderE", !9, i64 0}
!49 = !{!"bool", !5, i64 0}
!50 = !{!"p1 _ZTSN14duckdb_parquet11ColumnChunkE", !9, i64 0}
!51 = !{!"p1 _ZTSN13duckdb_apache6thrift8protocol9TProtocolE", !9, i64 0}
!52 = !{!"_ZTSN6duckdb10shared_ptrINS_16ResizeableBufferELb1EEE", !53, i64 0}
!53 = !{!"_ZTSSt10shared_ptrIN6duckdb16ResizeableBufferEE", !38, i64 0}
!54 = !{!"_ZTSN6duckdb14ColumnEncodingE", !5, i64 0}
!55 = !{!"_ZTSN6duckdb10unique_ptrINS_12RleBpDecoderESt14default_deleteIS1_ELb1EEE", !56, i64 0}
!56 = !{!"_ZTSSt10unique_ptrIN6duckdb12RleBpDecoderESt14default_deleteIS1_EE", !57, i64 0}
!57 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb12RleBpDecoderESt14default_deleteIS1_ELb1ELb1EE", !58, i64 0}
!58 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb12RleBpDecoderESt14default_deleteIS1_EE", !59, i64 0}
!59 = !{!"_ZTSSt5tupleIJPN6duckdb12RleBpDecoderESt14default_deleteIS1_EEE", !60, i64 0}
!60 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb12RleBpDecoderESt14default_deleteIS1_EEE", !61, i64 0}
!61 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb12RleBpDecoderELb0EE", !62, i64 0}
!62 = !{!"p1 _ZTSN6duckdb12RleBpDecoderE", !9, i64 0}
!63 = !{!"_ZTSN6duckdb17DictionaryDecoderE", !8, i64 0, !11, i64 8, !55, i64 16, !64, i64 24, !64, i64 48, !28, i64 72, !70, i64 80, !74, i64 96, !28, i64 104, !49, i64 112}
!64 = !{!"_ZTSN6duckdb15SelectionVectorE", !65, i64 0, !66, i64 8}
!65 = !{!"p1 int", !9, i64 0}
!66 = !{!"_ZTSN6duckdb10shared_ptrINS_13SelectionDataELb1EEE", !67, i64 0}
!67 = !{!"_ZTSSt10shared_ptrIN6duckdb13SelectionDataEE", !68, i64 0}
!68 = !{!"_ZTSSt12__shared_ptrIN6duckdb13SelectionDataELN9__gnu_cxx12_Lock_policyE2EE", !69, i64 0, !39, i64 8}
!69 = !{!"p1 _ZTSN6duckdb13SelectionDataE", !9, i64 0}
!70 = !{!"_ZTSN6duckdb10shared_ptrINS_17VectorChildBufferELb1EEE", !71, i64 0}
!71 = !{!"_ZTSSt10shared_ptrIN6duckdb17VectorChildBufferEE", !72, i64 0}
!72 = !{!"_ZTSSt12__shared_ptrIN6duckdb17VectorChildBufferELN9__gnu_cxx12_Lock_policyE2EE", !73, i64 0, !39, i64 8}
!73 = !{!"p1 _ZTSN6duckdb17VectorChildBufferE", !9, i64 0}
!74 = !{!"_ZTSN6duckdb10unique_ptrIA_bSt14default_deleteIS1_ELb0EEE", !75, i64 0}
!75 = !{!"_ZTSSt10unique_ptrIA_bSt14default_deleteIS0_EE", !76, i64 0}
!76 = !{!"_ZTSSt15__uniq_ptr_dataIbSt14default_deleteIA_bELb1ELb1EE", !77, i64 0}
!77 = !{!"_ZTSSt15__uniq_ptr_implIbSt14default_deleteIA_bEE", !78, i64 0}
!78 = !{!"_ZTSSt5tupleIJPbSt14default_deleteIA_bEEE", !79, i64 0}
!79 = !{!"_ZTSSt11_Tuple_implILm0EJPbSt14default_deleteIA_bEEE", !80, i64 0}
!80 = !{!"_ZTSSt10_Head_baseILm0EPbLb0EE", !81, i64 0}
!81 = !{!"p1 bool", !9, i64 0}
!82 = !{!"_ZTSN6duckdb24DeltaBinaryPackedDecoderE", !8, i64 0, !11, i64 8, !83, i64 16}
!83 = !{!"_ZTSN6duckdb10unique_ptrINS_10DbpDecoderESt14default_deleteIS1_ELb1EEE", !84, i64 0}
!84 = !{!"_ZTSSt10unique_ptrIN6duckdb10DbpDecoderESt14default_deleteIS1_EE", !85, i64 0}
!85 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb10DbpDecoderESt14default_deleteIS1_ELb1ELb1EE", !86, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb10DbpDecoderESt14default_deleteIS1_EE", !87, i64 0}
!87 = !{!"_ZTSSt5tupleIJPN6duckdb10DbpDecoderESt14default_deleteIS1_EEE", !88, i64 0}
!88 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb10DbpDecoderESt14default_deleteIS1_EEE", !89, i64 0}
!89 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb10DbpDecoderELb0EE", !90, i64 0}
!90 = !{!"p1 _ZTSN6duckdb10DbpDecoderE", !9, i64 0}
!91 = !{!"_ZTSN6duckdb10RLEDecoderE", !8, i64 0, !11, i64 8, !55, i64 16}
!92 = !{!"_ZTSN6duckdb27DeltaLengthByteArrayDecoderE", !8, i64 0, !11, i64 8, !28, i64 16, !28, i64 24}
!93 = !{!"_ZTSN6duckdb21DeltaByteArrayDecoderE", !8, i64 0, !52, i64 8}
!94 = !{!"_ZTSN6duckdb14CryptoMetaDataE", !43, i64 0, !5, i64 32, !95, i64 34, !95, i64 36, !95, i64 38, !96, i64 40}
!95 = !{!"short", !5, i64 0}
!96 = !{!"_ZTSN6duckdb10unique_ptrINS_34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_ELb1EEE", !97, i64 0}
!97 = !{!"_ZTSSt10unique_ptrIN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_EE", !98, i64 0}
!98 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_ELb1ELb1EE", !99, i64 0}
!99 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_EE", !100, i64 0}
!100 = !{!"_ZTSSt5tupleIJPN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_EEE", !101, i64 0}
!101 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb34ParquetAdditionalAuthenticatedDataESt14default_deleteIS1_EEE", !102, i64 0}
!102 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb34ParquetAdditionalAuthenticatedDataELb0EE", !103, i64 0}
!103 = !{!"p1 _ZTSN6duckdb34ParquetAdditionalAuthenticatedDataE", !9, i64 0}
!104 = !{!105, !28, i64 32}
!105 = !{!"_ZTSN6duckdb19ParquetColumnSchemaE", !43, i64 0, !28, i64 32, !28, i64 40, !106, i64 48, !28, i64 56, !107, i64 64, !108, i64 72, !106, i64 96, !4, i64 104, !4, i64 108, !115, i64 112, !116, i64 116, !117, i64 120, !106, i64 144, !122, i64 152, !49, i64 156}
!106 = !{!"_ZTSN6duckdb12optional_idxE", !28, i64 0}
!107 = !{!"_ZTSN6duckdb23ParquetColumnSchemaTypeE", !5, i64 0}
!108 = !{!"_ZTSN6duckdb11LogicalTypeE", !109, i64 0, !110, i64 1, !111, i64 8}
!109 = !{!"_ZTSN6duckdb13LogicalTypeIdE", !5, i64 0}
!110 = !{!"_ZTSN6duckdb12PhysicalTypeE", !5, i64 0}
!111 = !{!"_ZTSN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEE", !112, i64 0}
!112 = !{!"_ZTSSt10shared_ptrIN6duckdb13ExtraTypeInfoEE", !113, i64 0}
!113 = !{!"_ZTSSt12__shared_ptrIN6duckdb13ExtraTypeInfoELN9__gnu_cxx12_Lock_policyE2EE", !114, i64 0, !39, i64 8}
!114 = !{!"p1 _ZTSN6duckdb13ExtraTypeInfoE", !9, i64 0}
!115 = !{!"_ZTSN14duckdb_parquet4Type4typeE", !5, i64 0}
!116 = !{!"_ZTSN6duckdb20ParquetExtraTypeInfoE", !5, i64 0}
!117 = !{!"_ZTSN6duckdb6vectorINS_19ParquetColumnSchemaELb1ESaIS1_EEE", !118, i64 0}
!118 = !{!"_ZTSSt6vectorIN6duckdb19ParquetColumnSchemaESaIS1_EE", !119, i64 0}
!119 = !{!"_ZTSSt12_Vector_baseIN6duckdb19ParquetColumnSchemaESaIS1_EE", !120, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19ParquetColumnSchemaESaIS1_EE12_Vector_implE", !121, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseIN6duckdb19ParquetColumnSchemaESaIS1_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!122 = !{!"_ZTSN14duckdb_parquet19FieldRepetitionType4typeE", !5, i64 0}
!123 = !{!5, !5, i64 0}
!124 = distinct !{!124, !125}
!125 = !{!"llvm.loop.mustprogress"}
!126 = distinct !{!126, !127}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = !{!46, !48, i64 16}
!129 = !{!130, !192, i64 304}
!130 = !{!"_ZTSN6duckdb13ParquetReaderE", !131, i64 0, !188, i64 280, !192, i64 304, !193, i64 312, !197, i64 328, !208, i64 392, !215, i64 400, !219, i64 416, !221, i64 424}
!131 = !{!"_ZTSN6duckdb14BaseFileReaderE", !132, i64 8, !138, i64 24, !106, i64 72, !143, i64 80, !149, i64 104, !156, i64 128, !162, i64 152, !170, i64 160, !178, i64 216, !180, i64 272}
!132 = !{!"_ZTSN6duckdb23enable_shared_from_thisINS_14BaseFileReaderEEE", !133, i64 0}
!133 = !{!"_ZTSN6duckdb8weak_ptrINS_14BaseFileReaderELb1EEE", !134, i64 0}
!134 = !{!"_ZTSSt8weak_ptrIN6duckdb14BaseFileReaderEE", !135, i64 0}
!135 = !{!"_ZTSSt10__weak_ptrIN6duckdb14BaseFileReaderELN9__gnu_cxx12_Lock_policyE2EE", !136, i64 0, !137, i64 8}
!136 = !{!"p1 _ZTSN6duckdb14BaseFileReaderE", !9, i64 0}
!137 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !40, i64 0}
!138 = !{!"_ZTSN6duckdb12OpenFileInfoE", !43, i64 0, !139, i64 32}
!139 = !{!"_ZTSN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EEE", !140, i64 0}
!140 = !{!"_ZTSSt10shared_ptrIN6duckdb20ExtendedOpenFileInfoEE", !141, i64 0}
!141 = !{!"_ZTSSt12__shared_ptrIN6duckdb20ExtendedOpenFileInfoELN9__gnu_cxx12_Lock_policyE2EE", !142, i64 0, !39, i64 8}
!142 = !{!"p1 _ZTSN6duckdb20ExtendedOpenFileInfoE", !9, i64 0}
!143 = !{!"_ZTSN6duckdb6vectorINS_25MultiFileColumnDefinitionELb1ESaIS1_EEE", !144, i64 0}
!144 = !{!"_ZTSSt6vectorIN6duckdb25MultiFileColumnDefinitionESaIS1_EE", !145, i64 0}
!145 = !{!"_ZTSSt12_Vector_baseIN6duckdb25MultiFileColumnDefinitionESaIS1_EE", !146, i64 0}
!146 = !{!"_ZTSNSt12_Vector_baseIN6duckdb25MultiFileColumnDefinitionESaIS1_EE12_Vector_implE", !147, i64 0}
!147 = !{!"_ZTSNSt12_Vector_baseIN6duckdb25MultiFileColumnDefinitionESaIS1_EE17_Vector_impl_dataE", !148, i64 0, !148, i64 8, !148, i64 16}
!148 = !{!"p1 _ZTSN6duckdb25MultiFileColumnDefinitionE", !9, i64 0}
!149 = !{!"_ZTSN6duckdb23MultiFileLocalColumnIdsINS_22MultiFileLocalColumnIdEEE", !150, i64 0}
!150 = !{!"_ZTSN6duckdb6vectorINS_22MultiFileLocalColumnIdELb1ESaIS1_EEE", !151, i64 0}
!151 = !{!"_ZTSSt6vectorIN6duckdb22MultiFileLocalColumnIdESaIS1_EE", !152, i64 0}
!152 = !{!"_ZTSSt12_Vector_baseIN6duckdb22MultiFileLocalColumnIdESaIS1_EE", !153, i64 0}
!153 = !{!"_ZTSNSt12_Vector_baseIN6duckdb22MultiFileLocalColumnIdESaIS1_EE12_Vector_implE", !154, i64 0}
!154 = !{!"_ZTSNSt12_Vector_baseIN6duckdb22MultiFileLocalColumnIdESaIS1_EE17_Vector_impl_dataE", !155, i64 0, !155, i64 8, !155, i64 16}
!155 = !{!"p1 _ZTSN6duckdb22MultiFileLocalColumnIdE", !9, i64 0}
!156 = !{!"_ZTSN6duckdb6vectorINS_11ColumnIndexELb1ESaIS1_EEE", !157, i64 0}
!157 = !{!"_ZTSSt6vectorIN6duckdb11ColumnIndexESaIS1_EE", !158, i64 0}
!158 = !{!"_ZTSSt12_Vector_baseIN6duckdb11ColumnIndexESaIS1_EE", !159, i64 0}
!159 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11ColumnIndexESaIS1_EE12_Vector_implE", !160, i64 0}
!160 = !{!"_ZTSNSt12_Vector_baseIN6duckdb11ColumnIndexESaIS1_EE17_Vector_impl_dataE", !161, i64 0, !161, i64 8, !161, i64 16}
!161 = !{!"p1 _ZTSN6duckdb11ColumnIndexE", !9, i64 0}
!162 = !{!"_ZTSN6duckdb10unique_ptrINS_14TableFilterSetESt14default_deleteIS1_ELb1EEE", !163, i64 0}
!163 = !{!"_ZTSSt10unique_ptrIN6duckdb14TableFilterSetESt14default_deleteIS1_EE", !164, i64 0}
!164 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb14TableFilterSetESt14default_deleteIS1_ELb1ELb1EE", !165, i64 0}
!165 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb14TableFilterSetESt14default_deleteIS1_EE", !166, i64 0}
!166 = !{!"_ZTSSt5tupleIJPN6duckdb14TableFilterSetESt14default_deleteIS1_EEE", !167, i64 0}
!167 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb14TableFilterSetESt14default_deleteIS1_EEE", !168, i64 0}
!168 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb14TableFilterSetELb0EE", !169, i64 0}
!169 = !{!"p1 _ZTSN6duckdb14TableFilterSetE", !9, i64 0}
!170 = !{!"_ZTSSt13unordered_mapImN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS5_EEE", !171, i64 0}
!171 = !{!"_ZTSSt10_HashtableImSt4pairIKmN6duckdb10unique_ptrINS2_10ExpressionESt14default_deleteIS4_ELb1EEEESaIS8_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE", !172, i64 0, !28, i64 8, !174, i64 16, !28, i64 24, !176, i64 32, !175, i64 48}
!172 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !173, i64 0}
!173 = !{!"any p2 pointer", !9, i64 0}
!174 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !175, i64 0}
!175 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !9, i64 0}
!176 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !177, i64 0, !28, i64 8}
!177 = !{!"float", !5, i64 0}
!178 = !{!"_ZTSSt13unordered_mapImN6duckdb11LogicalTypeESt4hashImESt8equal_toImESaISt4pairIKmS1_EEE", !179, i64 0}
!179 = !{!"_ZTSSt10_HashtableImSt4pairIKmN6duckdb11LogicalTypeEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE", !172, i64 0, !28, i64 8, !174, i64 16, !28, i64 24, !176, i64 32, !175, i64 48}
!180 = !{!"_ZTSN6duckdb10unique_ptrINS_12DeleteFilterESt14default_deleteIS1_ELb1EEE", !181, i64 0}
!181 = !{!"_ZTSSt10unique_ptrIN6duckdb12DeleteFilterESt14default_deleteIS1_EE", !182, i64 0}
!182 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb12DeleteFilterESt14default_deleteIS1_ELb1ELb1EE", !183, i64 0}
!183 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb12DeleteFilterESt14default_deleteIS1_EE", !184, i64 0}
!184 = !{!"_ZTSSt5tupleIJPN6duckdb12DeleteFilterESt14default_deleteIS1_EEE", !185, i64 0}
!185 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb12DeleteFilterESt14default_deleteIS1_EEE", !186, i64 0}
!186 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb12DeleteFilterELb0EE", !187, i64 0}
!187 = !{!"p1 _ZTSN6duckdb12DeleteFilterE", !9, i64 0}
!188 = !{!"_ZTSN6duckdb17CachingFileSystemE", !189, i64 0, !190, i64 8, !191, i64 16}
!189 = !{!"p1 _ZTSN6duckdb10FileSystemE", !9, i64 0}
!190 = !{!"p1 _ZTSN6duckdb16DatabaseInstanceE", !9, i64 0}
!191 = !{!"p1 _ZTSN6duckdb17ExternalFileCacheE", !9, i64 0}
!192 = !{!"p1 _ZTSN6duckdb9AllocatorE", !9, i64 0}
!193 = !{!"_ZTSN6duckdb10shared_ptrINS_24ParquetFileMetadataCacheELb1EEE", !194, i64 0}
!194 = !{!"_ZTSSt10shared_ptrIN6duckdb24ParquetFileMetadataCacheEE", !195, i64 0}
!195 = !{!"_ZTSSt12__shared_ptrIN6duckdb24ParquetFileMetadataCacheELN9__gnu_cxx12_Lock_policyE2EE", !196, i64 0, !39, i64 8}
!196 = !{!"p1 _ZTSN6duckdb24ParquetFileMetadataCacheE", !9, i64 0}
!197 = !{!"_ZTSN6duckdb14ParquetOptionsE", !49, i64 0, !49, i64 1, !198, i64 8, !202, i64 24, !28, i64 48, !49, i64 56}
!198 = !{!"_ZTSN6duckdb10shared_ptrINS_23ParquetEncryptionConfigELb1EEE", !199, i64 0}
!199 = !{!"_ZTSSt10shared_ptrIN6duckdb23ParquetEncryptionConfigEE", !200, i64 0}
!200 = !{!"_ZTSSt12__shared_ptrIN6duckdb23ParquetEncryptionConfigELN9__gnu_cxx12_Lock_policyE2EE", !201, i64 0, !39, i64 8}
!201 = !{!"p1 _ZTSN6duckdb23ParquetEncryptionConfigE", !9, i64 0}
!202 = !{!"_ZTSN6duckdb6vectorINS_23ParquetColumnDefinitionELb1ESaIS1_EEE", !203, i64 0}
!203 = !{!"_ZTSSt6vectorIN6duckdb23ParquetColumnDefinitionESaIS1_EE", !204, i64 0}
!204 = !{!"_ZTSSt12_Vector_baseIN6duckdb23ParquetColumnDefinitionESaIS1_EE", !205, i64 0}
!205 = !{!"_ZTSNSt12_Vector_baseIN6duckdb23ParquetColumnDefinitionESaIS1_EE12_Vector_implE", !206, i64 0}
!206 = !{!"_ZTSNSt12_Vector_baseIN6duckdb23ParquetColumnDefinitionESaIS1_EE17_Vector_impl_dataE", !207, i64 0, !207, i64 8, !207, i64 16}
!207 = !{!"p1 _ZTSN6duckdb23ParquetColumnDefinitionE", !9, i64 0}
!208 = !{!"_ZTSN6duckdb10unique_ptrINS_19ParquetColumnSchemaESt14default_deleteIS1_ELb1EEE", !209, i64 0}
!209 = !{!"_ZTSSt10unique_ptrIN6duckdb19ParquetColumnSchemaESt14default_deleteIS1_EE", !210, i64 0}
!210 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb19ParquetColumnSchemaESt14default_deleteIS1_ELb1ELb1EE", !211, i64 0}
!211 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb19ParquetColumnSchemaESt14default_deleteIS1_EE", !212, i64 0}
!212 = !{!"_ZTSSt5tupleIJPN6duckdb19ParquetColumnSchemaESt14default_deleteIS1_EEE", !213, i64 0}
!213 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb19ParquetColumnSchemaESt14default_deleteIS1_EEE", !214, i64 0}
!214 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb19ParquetColumnSchemaELb0EE", !47, i64 0}
!215 = !{!"_ZTSN6duckdb10shared_ptrINS_14EncryptionUtilELb1EEE", !216, i64 0}
!216 = !{!"_ZTSSt10shared_ptrIN6duckdb14EncryptionUtilEE", !217, i64 0}
!217 = !{!"_ZTSSt12__shared_ptrIN6duckdb14EncryptionUtilELN9__gnu_cxx12_Lock_policyE2EE", !218, i64 0, !39, i64 8}
!218 = !{!"p1 _ZTSN6duckdb14EncryptionUtilE", !9, i64 0}
!219 = !{!"_ZTSSt6atomicImE", !220, i64 0}
!220 = !{!"_ZTSSt13__atomic_baseImE", !28, i64 0}
!221 = !{!"_ZTSN6duckdb10unique_ptrINS_17CachingFileHandleESt14default_deleteIS1_ELb1EEE", !222, i64 0}
!222 = !{!"_ZTSSt10unique_ptrIN6duckdb17CachingFileHandleESt14default_deleteIS1_EE", !223, i64 0}
!223 = !{!"_ZTSSt15__uniq_ptr_dataIN6duckdb17CachingFileHandleESt14default_deleteIS1_ELb1ELb1EE", !224, i64 0}
!224 = !{!"_ZTSSt15__uniq_ptr_implIN6duckdb17CachingFileHandleESt14default_deleteIS1_EE", !225, i64 0}
!225 = !{!"_ZTSSt5tupleIJPN6duckdb17CachingFileHandleESt14default_deleteIS1_EEE", !226, i64 0}
!226 = !{!"_ZTSSt11_Tuple_implILm0EJPN6duckdb17CachingFileHandleESt14default_deleteIS1_EEE", !227, i64 0}
!227 = !{!"_ZTSSt10_Head_baseILm0EPN6duckdb17CachingFileHandleELb0EE", !228, i64 0}
!228 = !{!"p1 _ZTSN6duckdb17CachingFileHandleE", !9, i64 0}
!229 = !{!16, !11, i64 8}
!230 = !{!231, !27, i64 8}
!231 = !{!"_ZTSN6duckdb13AllocatedDataE", !232, i64 0, !27, i64 8, !28, i64 16}
!232 = !{!"_ZTSN6duckdb12optional_ptrINS_9AllocatorELb1EEE", !192, i64 0}
!233 = !{!234, !28, i64 40}
!234 = !{!"_ZTSN6duckdb16ResizeableBufferE", !26, i64 0, !231, i64 16, !28, i64 40}
!235 = !{!105, !115, i64 112}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_ZN6duckdb9Allocator8AllocateEm: argument 0"}
!238 = distinct !{!238, !"_ZN6duckdb9Allocator8AllocateEm"}
!239 = !{!240}
!240 = distinct !{!240, !241, !"_ZN6duckdb9Allocator8AllocateEm: argument 0"}
!241 = distinct !{!241, !"_ZN6duckdb9Allocator8AllocateEm"}
!242 = !{!243, !243, i64 0}
!243 = !{!"vtable pointer", !6, i64 0}
!244 = !{!35, !28, i64 8}
!245 = !{!35, !27, i64 0}
!246 = distinct !{!246, !127}
!247 = distinct !{!247, !125}
!248 = distinct !{!248, !127}
!249 = distinct !{!249, !127}
!250 = distinct !{!250, !127}
!251 = distinct !{!251, !127}
!252 = distinct !{!252, !125}
!253 = distinct !{!253, !127}
!254 = distinct !{!254, !127}
!255 = distinct !{!255, !127}
!256 = distinct !{!256, !127}
!257 = distinct !{!257, !127}
!258 = distinct !{!258, !127}
!259 = distinct !{!259, !127}
!260 = distinct !{!260, !127}
!261 = !{!89, !90, i64 0}
!262 = !{!82, !8, i64 0}
!263 = !{!264}
!264 = distinct !{!264, !265, !"_ZN6duckdb9make_uniqINS_10DbpDecoderEJRPhRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!265 = distinct !{!265, !"_ZN6duckdb9make_uniqINS_10DbpDecoderEJRPhRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!266 = !{!28, !28, i64 0}
!267 = !{!90, !90, i64 0}
!268 = distinct !{!268, !127}
!269 = !{!82, !11, i64 8}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZN6duckdb9Allocator8AllocateEm: argument 0"}
!272 = distinct !{!272, !"_ZN6duckdb9Allocator8AllocateEm"}
!273 = !{!274, !28, i64 64}
!274 = !{!"_ZTSN6duckdb10DbpDecoderE", !26, i64 0, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !49, i64 56, !28, i64 64, !28, i64 72, !28, i64 80, !27, i64 88, !28, i64 96, !5, i64 104, !28, i64 360}
!275 = !{!274, !28, i64 40}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN6duckdb9Allocator8AllocateEm: argument 0"}
!278 = distinct !{!278, !"_ZN6duckdb9Allocator8AllocateEm"}
!279 = distinct !{!279, !127}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZN6duckdb9make_uniqINS_10DbpDecoderEJRPhRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!282 = distinct !{!282, !"_ZN6duckdb9make_uniqINS_10DbpDecoderEJRPhRmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!283 = !{!274, !28, i64 96}
!284 = !{!274, !28, i64 32}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZN6duckdb22make_unsafe_uniq_arrayIlEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm: argument 0"}
!287 = distinct !{!287, !"_ZN6duckdb22make_unsafe_uniq_arrayIlEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm"}
!288 = !{!93, !8, i64 0}
!289 = !{!290, !292}
!290 = distinct !{!290, !291, !"_ZSt11make_sharedIN6duckdb16ResizeableBufferEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_: argument 0"}
!291 = distinct !{!291, !"_ZSt11make_sharedIN6duckdb16ResizeableBufferEJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES4_E4typeEEDpOT0_"}
!292 = distinct !{!292, !293, !"_ZN6duckdb15make_shared_ptrINS_16ResizeableBufferEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_: argument 0"}
!293 = distinct !{!293, !"_ZN6duckdb15make_shared_ptrINS_16ResizeableBufferEJEEENS_10shared_ptrIT_Lb1EEEDpOT0_"}
!294 = !{!295, !4, i64 8}
!295 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!296 = !{!295, !4, i64 12}
!297 = !{!292}
!298 = distinct !{null, null, null, null}
!299 = !{!39, !40, i64 0}
!300 = distinct !{null, null, null, null, null}
!301 = distinct !{!301, !125, !302, !303}
!302 = !{!"llvm.loop.isvectorized", i32 1}
!303 = !{!"llvm.loop.unroll.runtime.disable"}
!304 = distinct !{!304, !125, !303, !302}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZN6duckdb9Allocator8AllocateEm: argument 0"}
!307 = distinct !{!307, !"_ZN6duckdb9Allocator8AllocateEm"}
!308 = distinct !{!308, !125}
!309 = distinct !{!309, !125}
!310 = !{!92, !8, i64 0}
!311 = !{!108, !110, i64 1}
!312 = !{!92, !11, i64 8}
!313 = !{!92, !28, i64 16}
!314 = distinct !{!314, !125, !302, !303}
!315 = !{!92, !28, i64 24}
!316 = distinct !{!316, !125, !303, !302}
!317 = !{!318, !27, i64 32}
!318 = !{!"_ZTSN6duckdb6VectorE", !319, i64 0, !108, i64 8, !27, i64 32, !320, i64 40, !327, i64 72, !327, i64 88}
!319 = !{!"_ZTSN6duckdb10VectorTypeE", !5, i64 0}
!320 = !{!"_ZTSN6duckdb12ValidityMaskE", !321, i64 0}
!321 = !{!"_ZTSN6duckdb21TemplatedValidityMaskImEE", !322, i64 0, !323, i64 8, !28, i64 24}
!322 = !{!"p1 long", !9, i64 0}
!323 = !{!"_ZTSN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEE", !324, i64 0}
!324 = !{!"_ZTSSt10shared_ptrIN6duckdb21TemplatedValidityDataImEEE", !325, i64 0}
!325 = !{!"_ZTSSt12__shared_ptrIN6duckdb21TemplatedValidityDataImEELN9__gnu_cxx12_Lock_policyE2EE", !326, i64 0, !39, i64 8}
!326 = !{!"p1 _ZTSN6duckdb21TemplatedValidityDataImEE", !9, i64 0}
!327 = !{!"_ZTSN6duckdb10shared_ptrINS_12VectorBufferELb1EEE", !328, i64 0}
!328 = !{!"_ZTSSt10shared_ptrIN6duckdb12VectorBufferEE", !329, i64 0}
!329 = !{!"_ZTSSt12__shared_ptrIN6duckdb12VectorBufferELN9__gnu_cxx12_Lock_policyE2EE", !330, i64 0, !39, i64 8}
!330 = !{!"p1 _ZTSN6duckdb12VectorBufferE", !9, i64 0}
!331 = !{!321, !322, i64 0}
!332 = !{!321, !28, i64 24}
!333 = !{i64 0, i64 12, !123}
!334 = distinct !{!334, !125}
!335 = distinct !{!335, !125}
!336 = distinct !{!336, !125}
!337 = distinct !{!337, !125}
!338 = distinct !{!338, !125}
!339 = distinct !{!339, !125, !302, !303}
!340 = distinct !{!340, !125, !303, !302}
!341 = !{!61, !62, i64 0}
!342 = !{!62, !62, i64 0}
!343 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!344 = !{!63, !28, i64 72}
!345 = !{!81, !81, i64 0}
!346 = !{!63, !28, i64 104}
!347 = !{!63, !49, i64 112}
!348 = !{!63, !8, i64 0}
!349 = !{!9, !9, i64 0}
!350 = distinct !{null, ptr @_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev, null, null, null}
!351 = distinct !{ptr @_ZN6duckdb10shared_ptrINS_17VectorChildBufferELb1EED2Ev, null, null, null}
!352 = distinct !{null, null, null, null, null, null}
!353 = !{i8 0, i8 2}
!354 = !{!355, !356, i64 0}
!355 = !{!"_ZTSN6duckdb12optional_ptrIKNS_11TableFilterELb1EEE", !356, i64 0}
!356 = !{!"p1 _ZTSN6duckdb11TableFilterE", !9, i64 0}
!357 = !{!358, !359, i64 0}
!358 = !{!"_ZTSN6duckdb12optional_ptrINS_16TableFilterStateELb1EEE", !359, i64 0}
!359 = !{!"p1 _ZTSN6duckdb16TableFilterStateE", !9, i64 0}
!360 = !{!361}
!361 = distinct !{!361, !362, !"_ZN6duckdb22make_unsafe_uniq_arrayIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm: argument 0"}
!362 = distinct !{!362, !"_ZN6duckdb22make_unsafe_uniq_arrayIbEENS_10unique_ptrIA_T_St14default_deleteIS3_ELb0EEEm"}
!363 = !{!64, !65, i64 0}
!364 = !{!49, !49, i64 0}
!365 = distinct !{!365, !127}
!366 = distinct !{ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!367 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, ptr @_ZN6duckdb15SelectionVectorD2Ev, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!368 = distinct !{ptr @_ZN6duckdb19UnifiedVectorFormatD2Ev, null, null, null, null, null}
!369 = distinct !{!369, !125}
!370 = distinct !{null, null, null}
!371 = !{!72, !73, i64 0}
!372 = distinct !{null, null, null, null, null}
!373 = !{!374}
!374 = distinct !{!374, !375, !"_ZN6duckdb9make_uniqINS_12RleBpDecoderEJRPhRmRhEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!375 = distinct !{!375, !"_ZN6duckdb9make_uniqINS_12RleBpDecoderEJRPhRmRhEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!376 = !{!377, !4, i64 16}
!377 = !{!"_ZTSN6duckdb12RleBpDecoderE", !26, i64 0, !4, i64 16, !28, i64 24, !4, i64 32, !4, i64 36, !5, i64 40, !28, i64 48, !5, i64 56}
!378 = !{!377, !5, i64 56}
!379 = !{!377, !5, i64 40}
!380 = !{!377, !28, i64 48}
!381 = distinct !{!381, !125}
!382 = distinct !{!382, !125}
!383 = !{!377, !4, i64 32}
!384 = !{!377, !28, i64 24}
!385 = distinct !{!385, !125, !302, !303}
!386 = distinct !{!386, !125, !303, !302}
!387 = !{!377, !4, i64 36}
!388 = distinct !{!388, !125}
!389 = distinct !{!389, !125, !302, !303}
!390 = distinct !{!390, !125, !303, !302}
!391 = !{!63, !11, i64 8}
!392 = !{!393}
!393 = distinct !{!393, !394, !"_ZN6duckdb9Allocator8AllocateEm: argument 0"}
!394 = distinct !{!394, !"_ZN6duckdb9Allocator8AllocateEm"}
!395 = distinct !{!395, !125, !302, !303}
!396 = distinct !{!396, !125, !303, !302}
!397 = distinct !{!397, !127}
!398 = distinct !{!398, !125}
!399 = !{!400, !401, i64 8}
!400 = !{!"_ZTSN6duckdb11TableFilterE", !401, i64 8}
!401 = !{!"_ZTSN6duckdb15TableFilterTypeE", !5, i64 0}
!402 = !{!403, !404, i64 8}
!403 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !404, i64 0, !404, i64 8, !404, i64 16}
!404 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEE", !9, i64 0}
!405 = !{!403, !404, i64 0}
!406 = distinct !{!406, !125}
!407 = distinct !{!407, !125}
!408 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!409 = !{!356, !356, i64 0}
!410 = !{!411, !412, i64 8}
!411 = !{!"_ZTSNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16TableFilterStateESt14default_deleteIS2_ELb1EEESaIS5_EE17_Vector_impl_dataE", !412, i64 0, !412, i64 8, !412, i64 16}
!412 = !{!"p1 _ZTSN6duckdb10unique_ptrINS_16TableFilterStateESt14default_deleteIS1_ELb1EEE", !9, i64 0}
!413 = !{!411, !412, i64 0}
!414 = !{!359, !359, i64 0}
!415 = distinct !{!415, !125}
!416 = distinct !{null, null, ptr @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev, null, null, null}
!417 = !{!91, !8, i64 0}
!418 = !{!108, !109, i64 0}
!419 = !{!420}
!420 = distinct !{!420, !421, !"_ZN6duckdb9make_uniqINS_12RleBpDecoderEJRPhRmiEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_: argument 0"}
!421 = distinct !{!421, !"_ZN6duckdb9make_uniqINS_12RleBpDecoderEJRPhRmiEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_"}
!422 = distinct !{!422, !127}
!423 = !{!91, !11, i64 8}
!424 = !{!425}
!425 = distinct !{!425, !426, !"_ZN6duckdb9Allocator8AllocateEm: argument 0"}
!426 = distinct !{!426, !"_ZN6duckdb9Allocator8AllocateEm"}
!427 = distinct !{!427, !125}
!428 = distinct !{!428, !127}
!429 = !{!274, !49, i64 56}
!430 = !{!274, !28, i64 48}
!431 = !{!274, !28, i64 360}
!432 = !{!274, !28, i64 72}
!433 = distinct !{!433, !125}
!434 = distinct !{!434, !125}
!435 = !{!274, !28, i64 80}
!436 = !{!274, !28, i64 24}
!437 = !{!274, !27, i64 0}
!438 = !{!274, !27, i64 88}
!439 = !{!440}
!440 = distinct !{!440, !441, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!441 = distinct !{!441, !"_ZN6duckdb9Exception16ConstructMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!442 = !{!443, !444, i64 0}
!443 = !{!"_ZTSNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE17_Vector_impl_dataE", !444, i64 0, !444, i64 8, !444, i64 16}
!444 = !{!"p1 _ZTSN6duckdb20ExceptionFormatValueE", !9, i64 0}
!445 = !{!443, !444, i64 8}
!446 = distinct !{!446, !125}
!447 = distinct !{!447, !125}
!448 = distinct !{!448, !125}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZN6duckdb9Exception16ConstructMessageIJhmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_: argument 0"}
!451 = distinct !{!451, !"_ZN6duckdb9Exception16ConstructMessageIJhmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_DpRKT_"}
!452 = !{!453}
end_hunk_1
