Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/column_reader?download=true
inline.NumInlined: 4822
inline.NumDeleted: 2510
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN6duckdb9Exception25ConstructMessageRecursiveIhJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
  store ptr %i.v, ptr %i.c, align 8, !tbaa !314
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %5, i64 32
  %.pre10 = load ptr, ptr %.phi.trans.insert9, align 8, !tbaa !205 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.x = icmp eq ptr %.pre10, %i.w
  br i1 %i.x, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre10) #28
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !205 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.aa) #28
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit8

_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN18duckdb_fastpforlib8internal18fastunpack_quarterEPKhPhj(ptr noalias noundef %0, ptr noalias noundef %1, i32 noundef %2) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.k [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack0EPKhPh(ptr noundef %0, ptr noundef %1)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack1EPKhPh(ptr noundef %0, ptr noundef %1)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack2EPKhPh(ptr noundef %0, ptr noundef %1)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack3EPKhPh(ptr noundef %0, ptr noundef %1)
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack4EPKhPh(ptr noundef %0, ptr noundef %1)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack5EPKhPh(ptr noundef %0, ptr noundef %1)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack6EPKhPh(ptr noundef %0, ptr noundef %1)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack7EPKhPh(ptr noundef %0, ptr noundef %1)
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  tail call void @_ZN18duckdb_fastpforlib8internal13__fastunpack8EPKhPh(ptr noundef %0, ptr noundef %1)
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull @.str.49)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #29
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #27
  resume { ptr, i32 } %i.b

bb.n:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @_ZN18duckdb_fastpforlib8internal13__fastunpack0EPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN18duckdb_fastpforlib8internal13__fastunpack1EPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN18duckdb_fastpforlib8internal13__fastunpack2EPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN18duckdb_fastpforlib8internal13__fastunpack3EPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN18duckdb_fastpforlib8internal13__fastunpack4EPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN18duckdb_fastpforlib8internal13__fastunpack5EPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN18duckdb_fastpforlib8internal13__fastunpack6EPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN18duckdb_fastpforlib8internal13__fastunpack7EPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN18duckdb_fastpforlib8internal13__fastunpack8EPKhPh(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12RleBpDecoder19NextCountsTemplatedILb0EEEvv(ptr noundef nonnull align 8 dereferenceable(57) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !400
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !389
  %i.e = add i64 %i.d, -1
  store i64 %i.e, ptr %i.c, align 8, !tbaa !389
  %i.f = load ptr, ptr %0, align 8, !tbaa !386
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %0, align 8, !tbaa !386
  store i8 0, ptr %i.a, align 8, !tbaa !400
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call noundef i32 @_ZN6duckdb18ParquetDecodeUtils12VarintDecodeIjLb0EEET_RNS_10ByteBufferE(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 4 uses
  %i.i = and i32 %i.h, 1
  %.not11 = icmp eq i32 %i.i, 0
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = shl i32 %i.h, 2
  %i.k = and i32 %i.j, -8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.k, ptr %i.l, align 4, !tbaa !462
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.m = lshr exact i32 %i.h, 1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.m, ptr %i.n, align 8, !tbaa !460
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i64 0, ptr %i.o, align 8, !tbaa !461
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load i8, ptr %i.p, align 8, !tbaa !401   ; 5 uses
  %.not14 = icmp eq i8 %i.q, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !386   ; 4 uses
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %wide.trip.count = zext i8 %i.q to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.r = icmp eq i8 %i.q, 1
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i8 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.s = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv.epil.init
  %.0.copyload.i.epil = load i8, ptr %i.s, align 1
  %i.t = zext i8 %.0.copyload.i.epil to i32
  %indvars.iv.tr.epil = trunc i64 %indvars.iv.epil.init to i32
  %i.u = shl i32 %indvars.iv.tr.epil, 3
  %i.v = shl i32 %i.t, %i.u
  %i.w = sext i32 %i.v to i64
  %i.x = or i64 %.epil.init, %i.w                 ; 2 uses
  store i64 %i.x, ptr %i.o, align 8, !tbaa !461
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e
  %i.y = phi i64 [ 0, %bb.e ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.x, %.epil.preheader ]
  %i.z = zext i8 %i.q to i64                      ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !389
  %i.ac = sub i64 %i.ab, %i.z
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !389
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.z
  store ptr %i.ad, ptr %0, align 8, !tbaa !386
  %.not12 = icmp eq i32 %i.h, 0
  br i1 %.not12, label %bb.k, label %bb.g

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %i.ae = phi i64 [ 0, %.lr.ph.new ], [ %i.aq, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv
  %.0.copyload.i = load i8, ptr %i.af, align 1
  %i.ag = zext i8 %.0.copyload.i to i32
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ah = shl i32 %indvars.iv.tr, 3
  %i.ai = shl i32 %i.ag, %i.ah
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = or i64 %i.ae, %i.aj                     ; 2 uses
  store i64 %i.ak, ptr %i.o, align 8, !tbaa !461
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv.next
  %.0.copyload.i.1 = load i8, ptr %i.al, align 1
  %i.am = zext i8 %.0.copyload.i.1 to i32
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.an = shl i32 %indvars.iv.tr.1, 3
  %i.ao = shl i32 %i.am, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = or i64 %i.ak, %i.ap                     ; 4 uses
  store i64 %i.aq, ptr %i.o, align 8, !tbaa !461
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !735

bb.g:                                             ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !402
  %i.at = icmp ugt i64 %i.y, %i.as
  br i1 %i.at, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.au = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull @.str.50)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.au) #27
  resume { ptr, i32 } %i.av

bb.k:                                             ; preds = %._crit_edge, %bb.g, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb12RleBpDecoder19NextCountsTemplatedILb1EEEvv(ptr noundef nonnull align 8 dereferenceable(57) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !400
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !389  ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN6duckdb10ByteBuffer3incEm.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.39)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.k, %bb.e
  %.sink = phi ptr [ %i.ay, %bb.o ], [ %i.x, %bb.k ], [ %i.e, %bb.e ]
  %common.resume.op = phi { ptr, i32 } [ %i.az, %bb.o ], [ %i.y, %bb.k ], [ %i.f, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #27
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb10ByteBuffer3incEm.exit:                ; preds = %bb.b
  %i.g = add i64 %i.d, -1
  store i64 %i.g, ptr %i.c, align 8, !tbaa !389
  %i.h = load ptr, ptr %0, align 8, !tbaa !386
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store ptr %i.i, ptr %0, align 8, !tbaa !386
  store i8 0, ptr %i.a, align 8, !tbaa !400
  br label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10ByteBuffer3incEm.exit, %bb.a
  %i.j = tail call noundef i32 @_ZN6duckdb18ParquetDecodeUtils12VarintDecodeIjLb1EEET_RNS_10ByteBufferE(ptr noundef nonnull align 8 dereferenceable(16) %0) ; 4 uses
  %i.k = and i32 %i.j, 1
  %.not11 = icmp eq i32 %i.k, 0
  br i1 %.not11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = shl i32 %i.j, 2
  %i.m = and i32 %i.l, -8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.m, ptr %i.n, align 4, !tbaa !462
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.o = lshr exact i32 %i.j, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.o, ptr %i.p, align 8, !tbaa !460
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i64 0, ptr %i.q, align 8, !tbaa !461
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i8, ptr %i.r, align 8, !tbaa !401   ; 5 uses
  %i.t = zext i8 %i.s to i64                      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !389  ; 2 uses
  %.not.i = icmp ult i64 %i.v, %i.t
  br i1 %.not.i, label %bb.i, label %_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader

_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader: ; preds = %bb.h
  %.not14 = icmp eq i8 %i.s, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !386   ; 4 uses
  br i1 %.not14, label %_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader
  %wide.trip.count = zext i8 %i.s to i64          ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.w = icmp eq i8 %i.s, 1
  br i1 %i.w, label %_ZNK6duckdb10ByteBuffer9availableEm.exit.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %_ZNK6duckdb10ByteBuffer9availableEm.exit

bb.i:                                             ; preds = %bb.h
  %i.x = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull @.str.39)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge, label %_ZNK6duckdb10ByteBuffer9availableEm.exit.epil.preheader

_ZNK6duckdb10ByteBuffer9availableEm.exit.epil.preheader: ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.au, %_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod19 = trunc i8 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod19)
  %i.z = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv.epil.init
  %.0.copyload.i.epil = load i8, ptr %i.z, align 1
  %i.aa = zext i8 %.0.copyload.i.epil to i32
  %indvars.iv.tr.epil = trunc i64 %indvars.iv.epil.init to i32
  %i.ab = shl i32 %indvars.iv.tr.epil, 3
  %i.ac = shl i32 %i.aa, %i.ab
  %i.ad = sext i32 %i.ac to i64
  %i.ae = or i64 %.epil.init, %i.ad               ; 2 uses
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !461
  br label %_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge

_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge: ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit.epil.preheader, %_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge.loopexit.unr-lcssa, %_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader
  %i.af = phi i64 [ 0, %_ZNK6duckdb10ByteBuffer9availableEm.exit.preheader ], [ %i.au, %_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge.loopexit.unr-lcssa ], [ %i.ae, %_ZNK6duckdb10ByteBuffer9availableEm.exit.epil.preheader ]
  %i.ag = sub nuw i64 %i.v, %i.t
  store i64 %i.ag, ptr %i.u, align 8, !tbaa !389
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.t
  store ptr %i.ah, ptr %0, align 8, !tbaa !386
  %.not12 = icmp eq i32 %i.j, 0
  br i1 %.not12, label %bb.p, label %bb.l

_ZNK6duckdb10ByteBuffer9availableEm.exit:         ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %_ZNK6duckdb10ByteBuffer9availableEm.exit ] ; 4 uses
  %i.ai = phi i64 [ 0, %.lr.ph.new ], [ %i.au, %_ZNK6duckdb10ByteBuffer9availableEm.exit ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZNK6duckdb10ByteBuffer9availableEm.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv
  %.0.copyload.i = load i8, ptr %i.aj, align 1
  %i.ak = zext i8 %.0.copyload.i to i32
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.al = shl i32 %indvars.iv.tr, 3
  %i.am = shl i32 %i.ak, %i.al
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = or i64 %i.ai, %i.an                     ; 2 uses
  store i64 %i.ao, ptr %i.q, align 8, !tbaa !461
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 %indvars.iv.next
  %.0.copyload.i.1 = load i8, ptr %i.ap, align 1
  %i.aq = zext i8 %.0.copyload.i.1 to i32
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.ar = shl i32 %indvars.iv.tr.1, 3
  %i.as = shl i32 %i.aq, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = or i64 %i.ao, %i.at                     ; 4 uses
  store i64 %i.au, ptr %i.q, align 8, !tbaa !461
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge.loopexit.unr-lcssa, label %_ZNK6duckdb10ByteBuffer9availableEm.exit, !llvm.loop !736

bb.l:                                             ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !402
  %i.ax = icmp ugt i64 %i.af, %i.aw
  br i1 %i.ax, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull @.str.50)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

bb.p:                                             ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit._crit_edge, %bb.l, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6duckdb18ParquetDecodeUtils12VarintDecodeIjLb0EEET_RNS_10ByteBufferE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.promoted = load ptr, ptr %0, align 8, !tbaa !386 ; 6 uses
  %.promoted15 = load i64, ptr %i.a, align 8, !tbaa !389 ; 5 uses
  %.0.copyload.i.i.i = load i8, ptr %.promoted, align 1 ; 2 uses
  %i.b = add i64 %.promoted15, -1
  store i64 %i.b, ptr %i.a, align 8, !tbaa !389
  %i.c = getelementptr inbounds nuw i8, ptr %.promoted, i64 1 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !386
  %i.d = and i8 %.0.copyload.i.i.i, 127
  %i.e = zext nneg i8 %i.d to i32                 ; 2 uses
  %i.f = icmp sgt i8 %.0.copyload.i.i.i, -1
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i.1 = load i8, ptr %i.c, align 1 ; 2 uses
  %i.g = add i64 %.promoted15, -2
  store i64 %i.g, ptr %i.a, align 8, !tbaa !389
  %i.h = getelementptr inbounds nuw i8, ptr %.promoted, i64 2 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !386
  %i.i = and i8 %.0.copyload.i.i.i.1, 127
  %i.j = zext nneg i8 %i.i to i32
  %i.k = shl nuw nsw i32 %i.j, 7
  %i.l = or disjoint i32 %i.k, %i.e               ; 2 uses
  %i.m = icmp sgt i8 %.0.copyload.i.i.i.1, -1
  br i1 %i.m, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.0.copyload.i.i.i.2 = load i8, ptr %i.h, align 1 ; 2 uses
  %i.n = add i64 %.promoted15, -3
  store i64 %i.n, ptr %i.a, align 8, !tbaa !389
  %i.o = getelementptr inbounds nuw i8, ptr %.promoted, i64 3 ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !386
  %i.p = and i8 %.0.copyload.i.i.i.2, 127
  %i.q = zext nneg i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 14
  %i.s = or disjoint i32 %i.r, %i.l               ; 2 uses
  %i.t = icmp sgt i8 %.0.copyload.i.i.i.2, -1
  br i1 %i.t, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0.copyload.i.i.i.3 = load i8, ptr %i.o, align 1 ; 2 uses
  %i.u = add i64 %.promoted15, -4
  store i64 %i.u, ptr %i.a, align 8, !tbaa !389
  %i.v = getelementptr inbounds nuw i8, ptr %.promoted, i64 4 ; 2 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !386
  %i.w = and i8 %.0.copyload.i.i.i.3, 127
  %i.x = zext nneg i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 21
  %i.z = or disjoint i32 %i.y, %i.s               ; 2 uses
  %i.aa = icmp sgt i8 %.0.copyload.i.i.i.3, -1
  br i1 %i.aa, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.0.copyload.i.i.i.4 = load i8, ptr %i.v, align 1 ; 2 uses
  %i.ab = add i64 %.promoted15, -5
  store i64 %i.ab, ptr %i.a, align 8, !tbaa !389
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted, i64 5
  store ptr %i.ac, ptr %0, align 8, !tbaa !386
  %i.ad = zext i8 %.0.copyload.i.i.i.4 to i32
  %i.ae = shl i32 %i.ad, 28
  %i.af = or disjoint i32 %i.ae, %i.z
  %i.ag = icmp sgt i8 %.0.copyload.i.i.i.4, -1
  br i1 %i.ag, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull @.str.51)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ah) #27
  resume { ptr, i32 } %i.ai

bb.i:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i32 [ %i.e, %bb.a ], [ %i.l, %bb.b ], [ %i.s, %bb.c ], [ %i.z, %bb.d ], [ %i.af, %bb.e ]
  ret i32 %.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6duckdb18ParquetDecodeUtils12VarintDecodeIjLb1EEET_RNS_10ByteBufferE(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !389 ; 6 uses
  %.not.i.i = icmp eq i64 %.promoted, 0
  br i1 %.not.i.i, label %bb.b, label %_ZN6duckdb10ByteBuffer4readIhEET_v.exit

bb.b:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.39)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.d
  %.sink = phi ptr [ %i.aj, %bb.k ], [ %i.b, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #27
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb10ByteBuffer4readIhEET_v.exit:          ; preds = %bb.a
  %.promoted15 = load ptr, ptr %0, align 8        ; 6 uses
  %.0.copyload.i.i.i.i = load i8, ptr %.promoted15, align 1 ; 2 uses
  %i.d = add i64 %.promoted, -1                   ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !389
  %i.e = getelementptr inbounds nuw i8, ptr %.promoted15, i64 1 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !386
  %i.f = and i8 %.0.copyload.i.i.i.i, 127
  %i.g = zext nneg i8 %i.f to i32                 ; 2 uses
  %i.h = icmp sgt i8 %.0.copyload.i.i.i.i, -1
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb10ByteBuffer4readIhEET_v.exit
  %.not.i.i.1 = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.1, label %bb.b, label %_ZN6duckdb10ByteBuffer4readIhEET_v.exit.1

_ZN6duckdb10ByteBuffer4readIhEET_v.exit.1:        ; preds = %bb.e
  %.0.copyload.i.i.i.i.1 = load i8, ptr %i.e, align 1 ; 2 uses
  %i.i = add i64 %.promoted, -2                   ; 2 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !389
  %i.j = getelementptr inbounds nuw i8, ptr %.promoted15, i64 2 ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !386
  %i.k = and i8 %.0.copyload.i.i.i.i.1, 127
  %i.l = zext nneg i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 7
  %i.n = or disjoint i32 %i.m, %i.g               ; 2 uses
  %i.o = icmp sgt i8 %.0.copyload.i.i.i.i.1, -1
  br i1 %i.o, label %bb.l, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb10ByteBuffer4readIhEET_v.exit.1
  %.not.i.i.2 = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.2, label %bb.b, label %_ZN6duckdb10ByteBuffer4readIhEET_v.exit.2

_ZN6duckdb10ByteBuffer4readIhEET_v.exit.2:        ; preds = %bb.f
  %.0.copyload.i.i.i.i.2 = load i8, ptr %i.j, align 1 ; 2 uses
  %i.p = add i64 %.promoted, -3                   ; 2 uses
  store i64 %i.p, ptr %i.a, align 8, !tbaa !389
  %i.q = getelementptr inbounds nuw i8, ptr %.promoted15, i64 3 ; 2 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !386
  %i.r = and i8 %.0.copyload.i.i.i.i.2, 127
  %i.s = zext nneg i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 14
  %i.u = or disjoint i32 %i.t, %i.n               ; 2 uses
  %i.v = icmp sgt i8 %.0.copyload.i.i.i.i.2, -1
  br i1 %i.v, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10ByteBuffer4readIhEET_v.exit.2
  %.not.i.i.3 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.3, label %bb.b, label %_ZN6duckdb10ByteBuffer4readIhEET_v.exit.3

_ZN6duckdb10ByteBuffer4readIhEET_v.exit.3:        ; preds = %bb.g
  %.0.copyload.i.i.i.i.3 = load i8, ptr %i.q, align 1 ; 2 uses
end_hunk_0
