inline.NumInlined: 1554
inline.NumDeleted: 946
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK6duckdb11TableFilter4CastINS_20ConjunctionAndFilterEEERKT_v:bb.a
bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb11TableFilter4CastINS_16ExpressionFilterEEERKT_v(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !399
  %.not = icmp eq i8 %i.b, 9
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !42     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret ptr %0

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZNK6duckdb16ExpressionFilter20EvaluateWithConstantERNS_18ExpressionExecutorERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(65), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

declare void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN6duckdb5ValueC1ENS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17DictionaryDecoder6FilterEPhmRNS_6VectorERNS_15SelectionVectorERm(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !371
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #23
  br label %common.resume

bb.e:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN6duckdb17DictionaryDecoder4ReadEPhmRNS_6VectorEm(ptr noundef nonnull align 8 dereferenceable(113) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef 0) ; 11 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %5, align 8, !tbaa !266
  br label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.g = icmp eq i64 %i.e, %2                     ; 2 uses
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !391, !nonnull !23, !align !24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.029.in = phi ptr [ %i.h, %bb.h ], [ %i.j, %bb.i ]
  %.029 = load ptr, ptr %.029.in, align 8, !tbaa !349 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  invoke void @_ZN6duckdb15SelectionVector10InitializeEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.e)
          to label %_ZN6duckdb15SelectionVectorC2Em.exit unwind label %bb.k

common.resume:                                    ; preds = %bb.d, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.d, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.k) #23
  br label %common.resume

_ZN6duckdb15SelectionVectorC2Em.exit:             ; preds = %bb.j
  store i64 0, ptr %5, align 8, !tbaa !266
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !345  ; 9 uses
  %i.o = load ptr, ptr %6, align 8                ; 9 uses
  br i1 %i.g, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader, label %_ZN6duckdb15SelectionVectorC2Em.exit.split

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %xtraiter73 = and i64 %2, 1
  %7 = icmp eq i64 %2, 1
  br i1 %7, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %unroll_iter79 = and i64 %2, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us: ; preds = %bb.n, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new
  %i.p = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.ak, %bb.n ] ; 3 uses
  %.02834.us = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %i.al, %bb.n ] ; 4 uses
  %niter80 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader.new ], [ %niter80.next.1, %bb.n ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !364, !range !353, !noundef !23
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.l, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.w = add i64 %i.p, 1                          ; 2 uses
  store i64 %i.w, ptr %5, align 8, !tbaa !266
  %i.x = trunc i64 %.02834.us to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  store i32 %i.x, ptr %i.y, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1: ; preds = %bb.l, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us
  %i.z = phi i64 [ %i.w, %bb.l ], [ %i.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us ] ; 3 uses
  %i.aa = or disjoint i64 %.02834.us, 1           ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !364, !range !353, !noundef !23
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.ah = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.ah, ptr %5, align 8, !tbaa !266
  %i.ai = trunc i64 %i.aa to i32
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.z
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1
  %i.ak = phi i64 [ %i.ah, %bb.m ], [ %i.z, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.1 ] ; 3 uses
  %i.al = add nuw i64 %.02834.us, 2               ; 2 uses
  %niter80.next.1 = add i64 %niter80, 2           ; 2 uses
  %niter80.ncmp.1 = icmp eq i64 %niter80.next.1, %unroll_iter79
  br i1 %niter80.ncmp.1, label %.split.us.loopexit.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us, !llvm.loop !415

_ZN6duckdb15SelectionVectorC2Em.exit.split:       ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !363 ; 4 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.split
  %xtraiter = and i64 %i.e, 1
  %i.ao = icmp eq i64 %i.e, 1
  br i1 %i.ao, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %unroll_iter = and i64 %i.e, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader: ; preds = %_ZN6duckdb15SelectionVectorC2Em.exit.split
  %xtraiter65 = and i64 %i.e, 1
  %i.ap = icmp eq i64 %i.e, 1
  br i1 %i.ap, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader
  %unroll_iter71 = and i64 %i.e, -2
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36: ; preds = %bb.q, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new
  %i.aq = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new ], [ %i.bl, %bb.q ] ; 3 uses
  %.02834.us35 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new ], [ %i.bm, %bb.q ] ; 4 uses
  %niter72 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader.new ], [ %niter72.next.1, %bb.q ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.us35
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !364, !range !353, !noundef !23
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.o, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36
  %i.ax = add i64 %i.aq, 1                        ; 2 uses
  store i64 %i.ax, ptr %5, align 8, !tbaa !266
  %i.ay = trunc i64 %.02834.us35 to i32
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aq
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1: ; preds = %bb.o, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36
  %i.ba = phi i64 [ %i.ax, %bb.o ], [ %i.aq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36 ] ; 3 uses
  %i.bb = or disjoint i64 %.02834.us35, 1         ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !364, !range !353, !noundef !23
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1
  %i.bi = add i64 %i.ba, 1                        ; 2 uses
  store i64 %i.bi, ptr %5, align 8, !tbaa !266
  %i.bj = trunc i64 %i.bb to i32
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ba
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !3
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1
  %i.bl = phi i64 [ %i.bi, %bb.p ], [ %i.ba, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.1 ] ; 3 uses
  %i.bm = add nuw i64 %.02834.us35, 2             ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %.split.us.loopexit59.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36, !llvm.loop !415

.split.us.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod76.not = icmp eq i64 %xtraiter73, 0
  br i1 %lcmp.mod76.not, label %.split.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader: ; preds = %.split.us.loopexit.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader
  %.epil.init75 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.ak, %.split.us.loopexit.unr-lcssa ] ; 3 uses
  %.02834.us.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.preheader ], [ %i.al, %.split.us.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod78 = trunc i64 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod78)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.us.epil.init
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !364, !range !353, !noundef !23
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.r, label %.split.us

bb.r:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.bt = add i64 %.epil.init75, 1                ; 2 uses
  store i64 %i.bt, ptr %5, align 8, !tbaa !266
  %i.bu = trunc i64 %.02834.us.epil.init to i32
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.epil.init75
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !3
  br label %.split.us

.split.us.loopexit59.unr-lcssa:                   ; preds = %bb.q
  %lcmp.mod68.not = icmp eq i64 %xtraiter65, 0
  br i1 %lcmp.mod68.not, label %.split.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader: ; preds = %.split.us.loopexit59.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader
  %.epil.init67 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader ], [ %i.bl, %.split.us.loopexit59.unr-lcssa ] ; 3 uses
  %.02834.us35.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.preheader ], [ %i.bm, %.split.us.loopexit59.unr-lcssa ] ; 2 uses
  %lcmp.mod70 = trunc i64 %i.e to i1
  call void @llvm.assume(i1 %lcmp.mod70)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.us35.epil.init
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !364, !range !353, !noundef !23
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.s, label %.split.us

bb.s:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader
  %i.cc = add i64 %.epil.init67, 1                ; 2 uses
  store i64 %i.cc, ptr %5, align 8, !tbaa !266
  %i.cd = trunc i64 %.02834.us35.epil.init to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.epil.init67
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !3
  br label %.split.us

.split.us.loopexit61.unr-lcssa:                   ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.split.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader: ; preds = %.split.us.loopexit61.unr-lcssa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader
  %.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.do, %.split.us.loopexit61.unr-lcssa ] ; 3 uses
  %.02834.epil.init = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader ], [ %i.dp, %.split.us.loopexit61.unr-lcssa ] ; 2 uses
  %lcmp.mod64 = trunc i64 %i.e to i1
  call void @llvm.assume(i1 %lcmp.mod64)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834.epil.init
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !364, !range !353, !noundef !23
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.t, label %.split.us

bb.t:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.02834.epil.init
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = add i64 %.epil.init, 1                  ; 2 uses
  store i64 %i.cn, ptr %5, align 8, !tbaa !266
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.epil.init
  store i32 %i.cm, ptr %i.co, align 4, !tbaa !3
  br label %.split.us

.split.us:                                        ; preds = %.split.us.loopexit61.unr-lcssa, %bb.t, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader, %.split.us.loopexit59.unr-lcssa, %bb.s, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader, %.split.us.loopexit.unr-lcssa, %bb.r, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader
  %i.cp = phi i64 [ %.epil.init67, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us36.epil.preheader ], [ %.epil.init75, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.us.epil.preheader ], [ %i.ak, %.split.us.loopexit.unr-lcssa ], [ %i.bt, %bb.r ], [ %i.bl, %.split.us.loopexit59.unr-lcssa ], [ %i.cc, %bb.s ], [ %i.do, %.split.us.loopexit61.unr-lcssa ], [ %i.cn, %bb.t ], [ %.epil.init, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.epil.preheader ]
  %i.cq = icmp ult i64 %i.cp, %2
  br i1 %i.cq, label %bb.x, label %bb.ah

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.w, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new
  %i.cr = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.do, %bb.w ] ; 3 uses
  %.02834 = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %i.dp, %bb.w ] ; 4 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.preheader.new ], [ %niter.next.1, %bb.w ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %.02834
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !364, !range !353, !noundef !23
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.u, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

bb.u:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.02834
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = add i64 %i.cr, 1                        ; 2 uses
  store i64 %i.da, ptr %5, align 8, !tbaa !266
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.cr
  store i32 %i.cz, ptr %i.db, align 4, !tbaa !3
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1

_ZNK6duckdb15SelectionVector9get_indexEm.exit.1:  ; preds = %bb.u, %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.dc = phi i64 [ %i.da, %bb.u ], [ %i.cr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit ] ; 3 uses
  %i.dd = or disjoint i64 %.02834, 1              ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.029, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !364, !range !353, !noundef !23
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.dd
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !3
  %i.dm = add i64 %i.dc, 1                        ; 2 uses
  store i64 %i.dm, ptr %5, align 8, !tbaa !266
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.dc
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !3
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1
  %i.do = phi i64 [ %i.dm, %bb.v ], [ %i.dc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.1 ] ; 3 uses
  %i.dp = add nuw i64 %.02834, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.split.us.loopexit61.unr-lcssa, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !415

bb.x:                                             ; preds = %.split.us
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !299 ; 2 uses
  %i.dt = load <2 x ptr>, ptr %i.k, align 8, !tbaa !349
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.dy = atomicrmw volatile add ptr %i.du, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.aa, %bb.z, %bb.x
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !299 ; 8 uses
  store <2 x ptr> %i.dt, ptr %i.dq, align 8, !tbaa !349
  %.not.i.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 4 uses
  %i.ec = load atomic i64, ptr %i.eb acquire, align 8 ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 4294967297
  %i.ee = trunc i64 %i.ec to i32                  ; 2 uses
  br i1 %i.ed, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.eb, align 8, !tbaa !294
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store i32 0, ptr %i.ef, align 4, !tbaa !296
  %i.eg = load ptr, ptr %i.ea, align 8, !tbaa !242
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #23, !inline_history !416
  %i.ej = load ptr, ptr %i.ea, align 8, !tbaa !242
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #23, !inline_history !416
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.em = load i8, ptr @__libc_single_threaded, align 1, !tbaa !123
  %.not.i.i.i.i5.i.i = icmp eq i8 %i.em, 0
  br i1 %.not.i.i.i.i5.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = add nsw i32 %i.ee, -1
  store i32 %i.en, ptr %i.eb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %i.eo = atomicrmw volatile add ptr %i.eb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ee, %bb.ae ], [ %i.eo, %bb.af ]
  %i.ep = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ep, label %bb.ag, label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit, !prof !41

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ea) #23
  br label %_ZN6duckdb15SelectionVector10InitializeERKS0_.exit

_ZN6duckdb15SelectionVector10InitializeERKS0_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i, %bb.ac, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ag
  %i.eq = load ptr, ptr %6, align 8, !tbaa !363
  store ptr %i.eq, ptr %4, align 8, !tbaa !363
  br label %bb.ah
end_hunk_0
