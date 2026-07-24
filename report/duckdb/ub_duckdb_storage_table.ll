inline.NumInlined: 22010
inline.NumDeleted: 8913
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 650
loop-unroll.NumUnrolled: 660
begin_hunk_0_@_ZN6duckdb15ChunkVectorInfo12CommitDeleteEmRKNS_10DeleteInfoE:bb.a
  %i.bd = add nuw i64 %.021, 1                    ; 2 uses
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !264
  %i.bf = icmp ult i64 %i.bd, %i.be
  br i1 %i.bf, label %.lr.ph, label %.loopexit, !llvm.loop !268

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph23, %.preheader18, %.preheader
  %i.bg = load ptr, ptr %3, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %3, align 8, !tbaa !92
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = atomicrmw sub ptr %i.bi, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %.loopexit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10DeleteInfo7GetRowsEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.17", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !258, !range !263, !noundef !70
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.159, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !35     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #37
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 42
  ret ptr %i.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ChunkVectorInfo6AppendEmmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %3, ptr %i.b, align 8, !tbaa !142
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !140
  %i.e = icmp ult i64 %i.d, 72057594037927936
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo16ConstantInsertIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.g = icmp eq i64 %i.f, %3
  br i1 %i.g, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !144, !nonnull !70, !align !145 ; 6 uses
  %i.j = tail call i64 @_ZN6duckdb15ChunkVectorInfo29GetInitializedInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.k = and i64 %i.j, 4294967295                 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !58, !noalias !269
  %.not.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.not.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.n, %bb.f ], [ %.sroa.06.0.i.i.i, %bb.g ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !69, !noalias !269, !nonnull !70, !noundef !70 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !24, !noalias !269
  %i.q = icmp eq i64 %i.k, %i.p
  br i1 %i.q, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.g, !llvm.loop !71

bb.h:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.t = load i64, ptr %i.s, align 8, !tbaa !73, !noalias !269 ; 2 uses
  %i.u = urem i64 %i.k, %i.t                      ; 2 uses
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !74, !noalias !269
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !75, !noalias !269, !nonnull !70, !noundef !70
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !69, !noalias !269 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24, !noalias !269
  %i.ab = icmp eq i64 %i.k, %i.aa
  br i1 %i.ab, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.y, %bb.h ]
  %i.ac = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !69, !noalias !269, !nonnull !70, !noundef !70 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24, !noalias !269 ; 2 uses
  %i.af = urem i64 %i.ae, %i.t
  %.not19.i.i.i.i.i = icmp eq i64 %i.af, %i.u
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ag = icmp eq i64 %i.k, %i.ae
  br i1 %i.ag, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !76

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.g, %bb.h
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.g ], [ %i.y, %bb.h ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ah = lshr i64 %i.j, 32
  %i.ai = and i64 %i.ah, 16777215
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !77, !noalias !269
  %i.al = mul i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !86, !noalias !269
  %i.ao = add i64 %i.al, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.aq = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap), !noalias !269
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(136) %i.aq, i64 noundef %i.ao)
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !87 ; 2 uses
  %i.at = icmp ult i64 %1, %2
  br i1 %i.at, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.au = sub nuw i64 %2, %1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 4
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.au, -4                      ; 3 uses
  %i.av = add i64 %1, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %3, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.as, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ax, align 8, !tbaa !24
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !272

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.012.ph = phi i64 [ %1, %.lr.ph.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.ba = load ptr, ptr %4, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %4, align 8, !tbaa !92
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  call void @__clang_call_terminate(ptr %i.bf) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %._crit_edge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.l

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.012 = phi i64 [ %i.bh, %.lr.ph ], [ %.012.ph, %.lr.ph.preheader18 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.012
  store i64 %3, ptr %i.bg, align 8, !tbaa !24
  %i.bh = add nuw i64 %.012, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !273

bb.l:                                             ; preds = %bb.d, %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ChunkVectorInfo12CommitAppendEmmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !140
  %i.c = icmp ult i64 %i.b, 72057594037927936
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %1, ptr %i.d, align 8, !tbaa !142
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !144, !nonnull !70, !align !145 ; 6 uses
  %i.g = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.h = and i64 %i.g, 4294967295                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.j = load i64, ptr %i.i, align 8, !tbaa !58, !noalias !274
  %.not.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.not.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.k, %bb.d ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !69, !noalias !274, !nonnull !70, !noundef !70 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24, !noalias !274
  %i.n = icmp eq i64 %i.h, %i.m
  br i1 %i.n, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.e, !llvm.loop !71

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.q = load i64, ptr %i.p, align 8, !tbaa !73, !noalias !274 ; 2 uses
  %i.r = urem i64 %i.h, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !74, !noalias !274
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75, !noalias !274, !nonnull !70, !noundef !70
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69, !noalias !274 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24, !noalias !274
  %i.y = icmp eq i64 %i.h, %i.x
  br i1 %i.y, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.f ]
  %i.z = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !69, !noalias !274, !nonnull !70, !noundef !70 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !24, !noalias !274 ; 2 uses
  %i.ac = urem i64 %i.ab, %i.q
  %.not19.i.i.i.i.i = icmp eq i64 %i.ac, %i.r
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.ad = icmp eq i64 %i.h, %i.ab
  br i1 %i.ad, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !76

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %bb.f
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.v, %bb.f ], [ %i.z, %.lr.ph.i.i.i.i.i ]
  %i.ae = lshr i64 %i.g, 32
  %i.af = and i64 %i.ae, 16777215
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !77, !noalias !274
  %i.ai = mul i64 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !86, !noalias !274
  %i.al = add i64 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.an = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am), !noalias !274
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(136) %i.an, i64 noundef %i.al)
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !87 ; 2 uses
  %i.aq = icmp ult i64 %2, %3
  br i1 %i.aq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.ar = sub nuw i64 %3, %2                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ar, -4                      ; 3 uses
  %i.as = add i64 %2, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %1, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.ap, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.au, align 8, !tbaa !24
  store <2 x i64> %broadcast.splat, ptr %i.av, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !277

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi i64 [ %2, %.lr.ph.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %i.ax = load ptr, ptr %4, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %4, align 8, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = atomicrmw sub ptr %i.az, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %._crit_edge, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %.09 = phi i64 [ %i.be, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader15 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.09
  store i64 %1, ptr %i.bd, align 8, !tbaa !24
  %i.be = add nuw i64 %.09, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !278

bb.j:                                             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb15ChunkVectorInfo7CleanupEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !140
  %i.c = icmp ugt i64 %i.b, 72057594037927935
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !140
  %i.f = icmp ult i64 %i.e, 72057594037927936
  br i1 %i.f, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !144, !nonnull !70, !align !145 ; 6 uses
  %i.i = tail call i64 @_ZNK6duckdb15ChunkVectorInfo18GetInsertedPointerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) ; 2 uses
  %i.j = and i64 %i.i, 4294967295                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.l = load i64, ptr %i.k, align 8, !tbaa !58, !noalias !279
  %.not.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.not.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.m, %bb.d ], [ %.sroa.06.0.i.i.i, %bb.e ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !69, !noalias !279, !nonnull !70, !noundef !70 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !24, !noalias !279
  %i.p = icmp eq i64 %i.j, %i.o
  br i1 %i.p, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %bb.e, !llvm.loop !71

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !73, !noalias !279 ; 2 uses
  %i.t = urem i64 %i.j, %i.s                      ; 2 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !74, !noalias !279
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75, !noalias !279, !nonnull !70, !noundef !70
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69, !noalias !279 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !24, !noalias !279
  %i.aa = icmp eq i64 %i.j, %i.z
  br i1 %i.aa, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.020.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.x, %bb.f ]
  %i.ab = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !69, !noalias !279, !nonnull !70, !noundef !70 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24, !noalias !279 ; 2 uses
  %i.ae = urem i64 %i.ad, %i.s
  %.not19.i.i.i.i.i = icmp eq i64 %i.ae, %i.t
  tail call void @llvm.assume(i1 %.not19.i.i.i.i.i)
  %i.af = icmp eq i64 %i.j, %i.ad
  br i1 %i.af, label %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !76

_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.e, %bb.f
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.e ], [ %i.x, %bb.f ], [ %i.ab, %.lr.ph.i.i.i.i.i ]
  %i.ag = lshr i64 %i.i, 32
  %i.ah = and i64 %i.ag, 16777215
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !77, !noalias !279
  %i.ak = mul i64 %i.aj, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.am = load i64, ptr %i.al, align 8, !tbaa !86, !noalias !279
  %i.an = add i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.ap = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZNK6duckdb10unique_ptrINS_15FixedSizeBufferESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao), !noalias !279
  call void @_ZN6duckdb13SegmentHandleC2ERNS_15FixedSizeBufferEm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(136) %i.ap, i64 noundef %i.an)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !87
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit
  %.0913 = phi i64 [ 1, %_ZN6duckdb18FixedSizeAllocator9GetHandleENS_12IndexPointerE.exit ], [ %i.au, %bb.g ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.0913
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24
  %.not = icmp ugt i64 %i.at, %1                  ; 2 uses
  %i.au = add nuw nsw i64 %.0913, 1               ; 2 uses
  %exitcond = icmp eq i64 %i.au, 2048
  %or.cond = select i1 %.not, i1 true, i1 %exitcond
  br i1 %or.cond, label %bb.h, label %bb.g, !llvm.loop !282

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %2, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZN6duckdb13SegmentHandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK6duckdb12optional_ptrINS_15FixedSizeBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %2, align 8, !tbaa !92
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN6duckdb13SegmentHandleD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #41
  unreachable

_ZN6duckdb13SegmentHandleD2Ev.exit:               ; preds = %bb.h, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br i1 %.not, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bb = tail call noundef i64 @_ZNK6duckdb15ChunkVectorInfo16ConstantInsertIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.bc = icmp ugt i64 %i.bb, %1
  br i1 %i.bc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.l
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %_ZN6duckdb13SegmentHandleD2Ev.exit, %bb.a, %bb.m
  %.1 = phi i1 [ false, %_ZN6duckdb13SegmentHandleD2Ev.exit ], [ false, %bb.a ], [ true, %bb.m ], [ false, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb15ChunkVectorInfo10HasDeletesEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::SegmentHandle", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !tbaa !140  ; 3 uses
  %i.c = icmp ugt i64 %i.b, 72057594037927935
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @_ZN6duckdb18MAX_TRANSACTION_IDE, align 8, !tbaa !24
  %i.e = icmp eq i64 %1, %i.d
  br i1 %i.e, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !144, !nonnull !70, !align !145 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdbL17MergeValidityLoopERNS_10UpdateInfoERNS_6VectorES1_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br label %bb.b

.preheader.i:                                     ; preds = %bb.k, %..preheader_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre117.i, %..preheader_crit_edge.i ], [ %i.y, %bb.k ] ; 3 uses
  %.046.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.248.i, %bb.k ] ; 4 uses
  %.072.lcssa.i = phi i64 [ 0, %..preheader_crit_edge.i ], [ %.274.i, %bb.k ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = icmp ult i64 %.072.lcssa.i, %.pre-phi.i
  br i1 %i.ad, label %.lr.ph85.preheader.i, label %._crit_edge.i

.lr.ph85.preheader.i:                             ; preds = %.preheader.i
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %.046.lcssa.i
  %i.ae = getelementptr i8, ptr %2, i64 %.072.lcssa.i
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.t
  %scevgep107.i = getelementptr i8, ptr %i.af, i64 88
  %i.ag = sub nuw nsw i64 %.pre-phi.i, %.072.lcssa.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep.i, ptr align 1 %scevgep107.i, i64 %i.ag, i1 false), !tbaa !1916
  %i.ah = shl i64 %.046.lcssa.i, 2
  %scevgep108.i = getelementptr i8, ptr %i.b, i64 %i.ah
  %i.ai = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.aj = getelementptr i8, ptr %2, i64 %i.ai
  %scevgep109.i = getelementptr i8, ptr %i.aj, i64 88
  %i.ak = shl nuw nsw i64 %i.ag, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep108.i, ptr align 4 %scevgep109.i, i64 %i.ak, i1 false), !tbaa !3
  %i.al = add i64 %.046.lcssa.i, %.pre-phi.i
  %i.am = sub i64 %i.al, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph80.i
  %.079.i = phi i64 [ 0, %.lr.ph80.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.07278.i = phi i64 [ 0, %.lr.ph80.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.07577.i = phi i64 [ 0, %.lr.ph80.i ], [ %i.ce, %bb.k ] ; 3 uses
  %.04676.i = phi i64 [ 0, %.lr.ph80.i ], [ %.248.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.07577.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = zext i32 %i.ao to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.aq = phi i64 [ %i.ap, %bb.c ], [ %.07577.i, %bb.b ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.at = sub i64 %i.as, %i.i                     ; 7 uses
  %i.au = icmp ult i64 %.07278.i, %i.y
  br i1 %i.au, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.17371.i = phi i64 [ %i.be, %bb.d ], [ %.07278.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.14770.i = phi i64 [ %i.bc, %bb.d ], [ %.04676.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.17371.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3  ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = icmp ugt i64 %i.at, %i.ax
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 %.17371.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !1916, !range !263, !noundef !70
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.14770.i
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !1916
  %i.bc = add i64 %.14770.i, 1                    ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.14770.i
  store i32 %i.aw, ptr %i.bd, align 4, !tbaa !3
  %i.be = add i64 %.17371.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %i.y
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4550

bb.e:                                             ; preds = %.lr.ph.i
  %i.bf = icmp eq i64 %i.at, %i.ax
  br i1 %i.bf, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 %.17371.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1916, !range !263, !noundef !70
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.14770.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !1916
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.14770.i
  store i32 %i.aw, ptr %i.bj, align 4, !tbaa !3
  %i.bk = add nuw nsw i64 %.17371.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.14766.i = phi i64 [ %.14770.i, %bb.e ], [ %.04676.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bc, %bb.d ] ; 3 uses
  %.17363.i = phi i64 [ %.17371.i, %bb.e ], [ %.07278.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.y, %bb.d ]
  %i.bl = icmp ult i64 %.079.i, %i.ab
  br i1 %i.bl, label %.lr.ph74.i, label %.critedge2.i

.lr.ph74.i:                                       ; preds = %.critedge.i, %bb.g
  %.173.i = phi i64 [ %i.bq, %bb.g ], [ %.079.i, %.critedge.i ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.173.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = icmp ugt i64 %i.at, %i.bo
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph74.i
  %i.bq = add i64 %.173.i, 1                      ; 2 uses
  %exitcond105.not.i = icmp eq i64 %i.bq, %i.ab
  br i1 %exitcond105.not.i, label %.critedge2.i, label %.lr.ph74.i, !llvm.loop !4551

bb.h:                                             ; preds = %.lr.ph74.i
  %i.br = icmp eq i64 %i.at, %i.bo
  br i1 %i.br, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.o, i64 %.173.i
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !1916, !range !263, !noundef !70
  br label %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.169.i = phi i64 [ %.173.i, %bb.h ], [ %.079.i, %.critedge.i ], [ %i.ab, %bb.g ] ; 2 uses
  br i1 %.not.i.i.i, label %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i, label %bb.j

bb.j:                                             ; preds = %.critedge2.i
  %i.bu = lshr i64 %i.at, 6
  %i.bv = and i64 %i.at, 63
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.bu
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !24
  %i.by = lshr i64 %i.bx, %i.bv
  %i.bz = trunc i64 %i.by to i8
  %i.ca = and i8 %i.bz, 1
  br label %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i

_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i: ; preds = %bb.j, %.critedge2.i, %bb.i
  %.0.i.i.sink.i = phi i8 [ %i.bt, %bb.i ], [ %i.ca, %bb.j ], [ 1, %.critedge2.i ]
  %.168.i = phi i64 [ %.173.i, %bb.i ], [ %.169.i, %bb.j ], [ %.169.i, %.critedge2.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.14766.i
  store i8 %.0.i.i.sink.i, ptr %i.cb, align 1, !tbaa !1916
  %i.cc = trunc i64 %i.at to i32
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.14766.i
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i, %bb.f
  %.14765.i = phi i64 [ %.14770.i, %bb.f ], [ %.14766.i, %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i ]
  %.274.i = phi i64 [ %i.bk, %bb.f ], [ %.17363.i, %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i ] ; 2 uses
  %.2.i = phi i64 [ %.079.i, %bb.f ], [ %.168.i, %_ZN6duckdb20ExtractValidityEntry7ExtractIbNS_12ValidityMaskEEET_PKT0_m.exit.i ]
  %.248.i = add i64 %.14765.i, 1                  ; 2 uses
  %i.ce = add nuw i64 %.07577.i, 1                ; 2 uses
  %exitcond106.not.i = icmp eq i64 %i.ce, %5
  br i1 %exitcond106.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4552

._crit_edge.i:                                    ; preds = %.lr.ph85.preheader.i, %.preheader.i
  %.349.lcssa.i = phi i64 [ %.046.lcssa.i, %.preheader.i ], [ %i.am, %.lr.ph85.preheader.i ] ; 3 uses
  %i.cf = trunc i64 %.349.lcssa.i to i32
  store i32 %i.cf, ptr %i.ac, align 8, !tbaa !1151
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.u, ptr nonnull align 16 %i.a, i64 %.349.lcssa.i, i1 false)
  %i.cg = shl i64 %.349.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 16 %i.b, i64 %i.cg, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !1151 ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 11 uses
  %i.ck = icmp ne i64 %5, 0
  %i.cl = icmp ne i32 %i.ci, 0
  %i.cm = and i1 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i77.i = icmp eq ptr %.val.i, null
  br label %bb.m

.preheader1.i.i:                                  ; preds = %bb.w, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.6.i, %bb.w ] ; 14 uses
  %.051.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.152.i.i, %bb.w ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.w ] ; 19 uses
  %i.cn = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cn, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i61.i.i = icmp eq ptr %.val.i, null       ; 2 uses
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !152 ; 3 uses
  %.not.i.i63.i.i = icmp eq ptr %i.co, null       ; 3 uses
  %i.cp = load ptr, ptr %i.d, align 8, !tbaa !91  ; 4 uses
  %.not.i.i.i65.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i65.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  %scevgep112.i = getelementptr i8, ptr %i.a, i64 %.4.i
  %i.cq = sub i64 %5, %.0.lcssa.i.i
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep112.i, i8 1, i64 %i.cq, i1 false), !tbaa !1916
  br i1 %.not.i61.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader, label %.lr.ph9.split.us.split.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.cr = sub i64 %5, %.0.lcssa.i.i               ; 3 uses
  %min.iters.check = icmp ult i64 %i.cr, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader114, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader
  %n.vec = and i64 %i.cr, -4                      ; 4 uses
  %i.cs = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.ct = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cu = getelementptr [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cv = getelementptr [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cw = getelementptr [8 x i8], ptr %i.cu, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load = load <2 x i64>, ptr %i.cw, align 8, !tbaa !24
  %wide.load112 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !24
  %i.cy = sub <2 x i64> %wide.load, %broadcast.splat
  %i.cz = sub <2 x i64> %wide.load112, %broadcast.splat
  %i.da = trunc <2 x i64> %i.cy to <2 x i32>
  %i.db = trunc <2 x i64> %i.cz to <2 x i32>
  %i.dc = getelementptr [4 x i8], ptr %i.cv, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store <2 x i32> %i.da, ptr %i.dc, align 4, !tbaa !3
  store <2 x i32> %i.db, ptr %i.dd, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !4553

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader114

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader114: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader ], [ %i.cs, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader ], [ %i.ct, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader114, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i
  %i.df = phi i64 [ %i.dl, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader114 ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.dm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i.preheader114 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !24
  %i.di = sub i64 %i.dh, %i.i
  %i.dj = trunc i64 %i.di to i32
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.df
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !3
  %i.dl = add i64 %i.df, 1                        ; 2 uses
  %i.dm = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond51.not.i.i = icmp eq i64 %i.dm, %5
  br i1 %exitcond51.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us.i.i, !llvm.loop !4554

.lr.ph9.split.us.split.i.i:                       ; preds = %.lr.ph9.split.us.i.i
  br i1 %.not.i.i63.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader: ; preds = %.lr.ph9.split.us.split.i.i
  %i.dn = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.dn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !3
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !24
  %i.dt = sub i64 %i.ds, %i.i
  %i.du = trunc i64 %i.dt to i32
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !3
  %i.dw = add i64 %.4.i, 1                        ; 2 uses
  %i.dx = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader
  %.lcssa118.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader ], [ %i.dw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader ], [ %i.dw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.preheader ], [ %i.dx, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol ]
  %i.dy = icmp eq i64 %5, %.neg
  br i1 %i.dy, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader: ; preds = %.lr.ph9.split.us.split.i.i
  %i.dz = sub i64 %5, %.0.lcssa.i.i
  %.neg138 = add i64 %.0.lcssa.i.i, 1
  %xtraiter135 = and i64 %i.dz, 1
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !3
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !24
  %i.ef = sub i64 %i.ee, %i.i
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !3
  %i.ei = add i64 %.4.i, 1                        ; 2 uses
  %i.ej = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader
  %.lcssa116.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader ], [ %i.ei, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol ]
  %.unr137 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader ], [ %i.ei, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol ]
  %.28.us.us25.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.preheader ], [ %i.ej, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol ]
  %i.ek = icmp eq i64 %5, %.neg138
  br i1 %i.ek, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i
  %i.el = phi i64 [ %i.fe, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i ], [ %.unr137, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit ] ; 3 uses
  %.28.us.us25.i.i = phi i64 [ %i.ff, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i ], [ %.28.us.us25.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i.prol.loopexit ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us.us25.i.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.eo
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !24
  %i.er = sub i64 %i.eq, %i.i
  %i.es = trunc i64 %i.er to i32
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el
  store i32 %i.es, ptr %i.et, align 4, !tbaa !3
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us.us25.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ex
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !24
  %i.fa = sub i64 %i.ez, %i.i
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = getelementptr [4 x i8], ptr %i.b, i64 %i.el
  %i.fd = getelementptr i8, ptr %i.fc, i64 4
  store i32 %i.fb, ptr %i.fd, align 4, !tbaa !3
  %i.fe = add i64 %i.el, 2                        ; 2 uses
  %i.ff = add nuw i64 %.28.us.us25.i.i, 2         ; 2 uses
  %exitcond50.not.i.i.1 = icmp eq i64 %i.ff, %5
  br i1 %exitcond50.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.us24.i.i, !llvm.loop !4555

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i
  %i.fg = phi i64 [ %i.fz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i ], [ %.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol.loopexit ] ; 3 uses
  %.28.us.i.i = phi i64 [ %i.ga, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i.prol.loopexit ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us.i.i
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !24
  %i.fm = sub i64 %i.fl, %i.i
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.fg
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !3
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fs
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !24
  %i.fv = sub i64 %i.fu, %i.i
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = getelementptr [4 x i8], ptr %i.b, i64 %i.fg
  %i.fy = getelementptr i8, ptr %i.fx, i64 4
  store i32 %i.fw, ptr %i.fy, align 4, !tbaa !3
  %i.fz = add i64 %i.fg, 2                        ; 2 uses
  %i.ga = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond49.not.i.i.1 = icmp eq i64 %i.ga, %5
  br i1 %exitcond49.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us.i.i, !llvm.loop !4555

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i61.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us13.i.i, label %.lr.ph9.split.split.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us13.i.i: ; preds = %.lr.ph9.split.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i
  %i.gb = phi i64 [ %i.gt, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i ], [ %.4.i, %.lr.ph9.split.i.i ] ; 3 uses
  %.28.us11.i.i = phi i64 [ %i.gu, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i ], [ %.0.lcssa.i.i, %.lr.ph9.split.i.i ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us11.i.i
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !24
  %i.ge = sub i64 %i.gd, %i.i
  br i1 %.not.i.i63.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us13.i.i
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.28.us11.i.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !3
  %i.gh = zext i32 %i.gg to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i64.us14.i.i: ; preds = %bb.l, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us13.i.i
  %i.gi = phi i64 [ %i.gh, %bb.l ], [ %.28.us11.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us13.i.i ] ; 2 uses
  %i.gj = lshr i64 %i.gi, 6
  %i.gk = and i64 %i.gi, 63
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.gj
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !24
  %i.gn = lshr i64 %i.gm, %i.gk
  %i.go = trunc i64 %i.gn to i8
  %i.gp = and i8 %i.go, 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gb
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !1916
  %i.gr = trunc i64 %i.ge to i32
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gb
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !3
  %i.gt = add i64 %i.gb, 1                        ; 2 uses
  %i.gu = add nuw i64 %.28.us11.i.i, 1            ; 2 uses
  %exitcond48.not.i.i = icmp eq i64 %i.gu, %5
  br i1 %exitcond48.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us13.i.i, !llvm.loop !4555

.lr.ph9.split.split.i.i:                          ; preds = %.lr.ph9.split.i.i
  br i1 %.not.i.i63.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i: ; preds = %.lr.ph9.split.split.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i
  %i.gv = phi i64 [ %i.hm, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i ], [ %.4.i, %.lr.ph9.split.split.i.i ] ; 3 uses
  %.28.us18.i.i = phi i64 [ %i.hn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit62.us17.i.i ], [ %.0.lcssa.i.i, %.lr.ph9.split.split.i.i ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us18.i.i
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !3
  %i.gy = zext i32 %i.gx to i64                   ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !24
end_hunk_1
begin_hunk_2_@_ZN6duckdbL15MergeUpdateLoopIaEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.ak = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.al = getelementptr i8, ptr %2, i64 %i.ak
  %scevgep186.i = getelementptr i8, ptr %i.al, i64 88
  %i.am = shl nuw nsw i64 %i.ai, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep185.i, ptr align 4 %scevgep186.i, i64 %i.am, i1 false), !tbaa !3
  %i.an = add i64 %.0128.lcssa.i, %.pre-phi.i
  %i.ao = sub i64 %i.an, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.bz, %bb.k ] ; 3 uses
  %.0128148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2130.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = zext i32 %i.aq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.as = phi i64 [ %i.ar, %bb.c ], [ %.075149.i, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !24
  %i.av = sub i64 %i.au, %i.k                     ; 6 uses
  %i.aw = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.aw, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bg, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1129142.i = phi i64 [ %i.be, %bb.d ], [ %.0128148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = icmp ugt i64 %i.av, %i.az
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 %.173143.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1129142.i
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !98
  %i.be = add i64 %.1129142.i, 1                  ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1129142.i
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bg, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4557

bb.e:                                             ; preds = %.lr.ph.i
  %i.bh = icmp eq i64 %i.av, %i.az
  br i1 %i.bh, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 %.173143.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !98
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1129142.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !98
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1129142.i
  store i32 %i.ay, ptr %i.bl, align 4, !tbaa !3
  %i.bm = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1129138.i = phi i64 [ %.1129142.i, %bb.e ], [ %.0128148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.be, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bn = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bn, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.bs, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = icmp ugt i64 %i.av, %i.bq
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.bs = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond182.not.i = icmp eq i64 %i.bs, %i.ad
  br i1 %exitcond182.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4558

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bt = icmp eq i64 %i.av, %i.bq
  br i1 %i.bt, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.av
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.bv, %.critedge2.i ], [ %i.bu, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load i8, ptr %.sink.in.i, align 1, !tbaa !98
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1129138.i
  store i8 %.sink.i, ptr %i.bw, align 1, !tbaa !98
  %i.bx = trunc i64 %i.av to i32
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1129138.i
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1129137.i = phi i64 [ %.1129142.i, %bb.f ], [ %.1129138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bm, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2130.i = add i64 %.1129137.i, 1               ; 2 uses
  %i.bz = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond183.not.i = icmp eq i64 %i.bz, %5
  br i1 %exitcond183.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4559

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3131.lcssa.i = phi i64 [ %.0128.lcssa.i, %.preheader.i ], [ %i.ao, %.lr.ph157.preheader.i ] ; 3 uses
  %i.ca = trunc i64 %.3131.lcssa.i to i32
  store i32 %i.ca, ptr %i.ae, align 8, !tbaa !1151
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %.3131.lcssa.i, i1 false)
  %i.cb = shl i64 %.3131.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cb, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !1151 ; 2 uses
  %i.ce = zext i32 %i.cd to i64                   ; 3 uses
  %i.cf = icmp ne i64 %5, 0
  %i.cg = icmp ne i32 %i.cd, 0
  %i.ch = and i1 %i.cf, %i.cg
  br i1 %i.ch, label %.lr.ph.i.preheader.i, label %.preheader64.i.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge.i
  %i.ci = load ptr, ptr %6, align 8, !tbaa !152   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br label %.lr.ph.i.i

.preheader64.i.i:                                 ; preds = %bb.s, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.9.i, %bb.s ] ; 17 uses
  %.051.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.152.i.i, %bb.s ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.s ] ; 22 uses
  %i.cj = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cj, label %.lr.ph72.i.preheader.i, label %.preheader.i.i

.lr.ph72.i.preheader.i:                           ; preds = %.preheader64.i.i
  %i.ck = load ptr, ptr %6, align 8, !tbaa !152   ; 7 uses
  %.not.i60.i.i = icmp eq ptr %i.ck, null
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !152 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cl, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph72.i.preheader.split.us.i, label %.lr.ph72.i.preheader.split.i

.lr.ph72.i.preheader.split.us.i:                  ; preds = %.lr.ph72.i.preheader.i
  br i1 %.not.i.i62.i.i, label %.lr.ph72.i.us.us.preheader.i, label %.lr.ph72.i.us.i.preheader

.lr.ph72.i.us.i.preheader:                        ; preds = %.lr.ph72.i.preheader.split.us.i
  %i.cm = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter114 = and i64 %i.cm, 1
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph72.i.us.i.prol.loopexit, label %.lr.ph72.i.us.i.prol

.lr.ph72.i.us.i.prol:                             ; preds = %.lr.ph72.i.us.i.preheader
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !24
  %i.cp = sub i64 %i.co, %i.k
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.0.lcssa.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !98
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.i
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !98
  %i.cw = trunc i64 %i.cp to i32
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !3
  %i.cy = add i64 %.4.i, 1                        ; 2 uses
  %i.cz = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph72.i.us.i.prol.loopexit

.lr.ph72.i.us.i.prol.loopexit:                    ; preds = %.lr.ph72.i.us.i.prol, %.lr.ph72.i.us.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %.lr.ph72.i.us.i.preheader ], [ %i.cy, %.lr.ph72.i.us.i.prol ]
  %.7.us.i.unr = phi i64 [ %.4.i, %.lr.ph72.i.us.i.preheader ], [ %i.cy, %.lr.ph72.i.us.i.prol ]
  %.271.i.us.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.us.i.preheader ], [ %i.cz, %.lr.ph72.i.us.i.prol ]
  %i.da = icmp eq i64 %5, %.neg117
  br i1 %i.da, label %.preheader.i.i, label %.lr.ph72.i.us.i

.lr.ph72.i.us.us.preheader.i:                     ; preds = %.lr.ph72.i.preheader.split.us.i
  %scevgep187.i = getelementptr i8, ptr %i.a, i64 %.4.i
  %scevgep188.i = getelementptr i8, ptr %i.f, i64 %.0.lcssa.i.i
  %i.db = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep187.i, ptr readonly align 1 %scevgep188.i, i64 %i.db, i1 false), !tbaa !98
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %.lr.ph72.i.us.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph72.i.us.us.preheader.i
  %n.vec = and i64 %i.db, -4                      ; 4 uses
  %i.dc = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dd = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.df = getelementptr [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = getelementptr [8 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <2 x i64>, ptr %i.dg, align 8, !tbaa !24
  %wide.load94 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !24
  %i.di = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dj = sub <2 x i64> %wide.load94, %broadcast.splat
  %i.dk = trunc <2 x i64> %i.di to <2 x i32>
  %i.dl = trunc <2 x i64> %i.dj to <2 x i32>
  %i.dm = getelementptr [4 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store <2 x i32> %i.dk, ptr %i.dm, align 4, !tbaa !3
  store <2 x i32> %i.dl, ptr %i.dn, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !4560

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %.lr.ph72.i.us.us.i.preheader

.lr.ph72.i.us.us.i.preheader:                     ; preds = %.lr.ph72.i.us.us.preheader.i, %middle.block
  %.7.us.us.i.ph = phi i64 [ %.4.i, %.lr.ph72.i.us.us.preheader.i ], [ %i.dc, %middle.block ]
  %.271.i.us.us.i.ph = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.us.us.preheader.i ], [ %i.dd, %middle.block ]
  br label %.lr.ph72.i.us.us.i

.lr.ph72.i.us.us.i:                               ; preds = %.lr.ph72.i.us.us.i.preheader, %.lr.ph72.i.us.us.i
  %.7.us.us.i = phi i64 [ %i.du, %.lr.ph72.i.us.us.i ], [ %.7.us.us.i.ph, %.lr.ph72.i.us.us.i.preheader ] ; 2 uses
  %.271.i.us.us.i = phi i64 [ %i.dv, %.lr.ph72.i.us.us.i ], [ %.271.i.us.us.i.ph, %.lr.ph72.i.us.us.i.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.271.i.us.us.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !24
  %i.dr = sub i64 %i.dq, %i.k
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7.us.us.i
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !3
  %i.du = add i64 %.7.us.us.i, 1                  ; 2 uses
  %i.dv = add nuw i64 %.271.i.us.us.i, 1          ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %i.dv, %5
  br i1 %exitcond.not.i.us.us.i, label %.preheader.i.i, label %.lr.ph72.i.us.us.i, !llvm.loop !4561

.lr.ph72.i.us.i:                                  ; preds = %.lr.ph72.i.us.i.prol.loopexit, %.lr.ph72.i.us.i
  %.7.us.i = phi i64 [ %i.eu, %.lr.ph72.i.us.i ], [ %.7.us.i.unr, %.lr.ph72.i.us.i.prol.loopexit ] ; 4 uses
  %.271.i.us.i = phi i64 [ %i.ev, %.lr.ph72.i.us.i ], [ %.271.i.us.i.unr, %.lr.ph72.i.us.i.prol.loopexit ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.271.i.us.i
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !24
  %i.dy = sub i64 %i.dx, %i.k
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.271.i.us.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !98
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.us.i
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !98
  %i.ef = trunc i64 %i.dy to i32
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7.us.i
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !3
  %i.eh = add i64 %.7.us.i, 1                     ; 2 uses
  %i.ei = add nuw i64 %.271.i.us.i, 1             ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !24
  %i.el = sub i64 %i.ek, %i.k
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ei
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !98
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eh
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !98
  %i.es = trunc i64 %i.el to i32
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eh
  store i32 %i.es, ptr %i.et, align 4, !tbaa !3
  %i.eu = add i64 %.7.us.i, 2                     ; 2 uses
  %i.ev = add nuw i64 %.271.i.us.i, 2             ; 2 uses
  %exitcond.not.i.us.i.1 = icmp eq i64 %i.ev, %5
  br i1 %exitcond.not.i.us.i.1, label %.preheader.i.i, label %.lr.ph72.i.us.i, !llvm.loop !4562

.lr.ph72.i.preheader.split.i:                     ; preds = %.lr.ph72.i.preheader.i
  br i1 %.not.i.i62.i.i, label %.lr.ph72.i.us159.i.preheader, label %.lr.ph72.i.i.preheader

.lr.ph72.i.i.preheader:                           ; preds = %.lr.ph72.i.preheader.split.i
  %i.ew = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.ew, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.i.i.prol.loopexit, label %.lr.ph72.i.i.prol

.lr.ph72.i.i.prol:                                ; preds = %.lr.ph72.i.i.preheader
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.0.lcssa.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !24
  %i.fc = sub i64 %i.fb, %i.k
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ez
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !98
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.i
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !98
  %i.fj = trunc i64 %i.fc to i32
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !3
  %i.fl = add i64 %.4.i, 1                        ; 2 uses
  %i.fm = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph72.i.i.prol.loopexit

.lr.ph72.i.i.prol.loopexit:                       ; preds = %.lr.ph72.i.i.prol, %.lr.ph72.i.i.preheader
  %.lcssa101.unr = phi i64 [ poison, %.lr.ph72.i.i.preheader ], [ %i.fl, %.lr.ph72.i.i.prol ]
  %.7.i.unr = phi i64 [ %.4.i, %.lr.ph72.i.i.preheader ], [ %i.fl, %.lr.ph72.i.i.prol ]
  %.271.i.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.i.preheader ], [ %i.fm, %.lr.ph72.i.i.prol ]
  %i.fn = icmp eq i64 %5, %.neg
  br i1 %i.fn, label %.preheader.i.i, label %.lr.ph72.i.i

.lr.ph72.i.us159.i.preheader:                     ; preds = %.lr.ph72.i.preheader.split.i
  %i.fo = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter112 = and i64 %i.fo, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph72.i.us159.i.prol.loopexit, label %.lr.ph72.i.us159.i.prol

.lr.ph72.i.us159.i.prol:                          ; preds = %.lr.ph72.i.us159.i.preheader
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.0.lcssa.i.i
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !24
  %i.fu = sub i64 %i.ft, %i.k
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fr
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !98
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.i
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !98
  %i.fy = trunc i64 %i.fu to i32
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !3
  %i.ga = add i64 %.4.i, 1                        ; 2 uses
  %i.gb = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph72.i.us159.i.prol.loopexit

.lr.ph72.i.us159.i.prol.loopexit:                 ; preds = %.lr.ph72.i.us159.i.prol, %.lr.ph72.i.us159.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %.lr.ph72.i.us159.i.preheader ], [ %i.ga, %.lr.ph72.i.us159.i.prol ]
  %.7.us160.i.unr = phi i64 [ %.4.i, %.lr.ph72.i.us159.i.preheader ], [ %i.ga, %.lr.ph72.i.us159.i.prol ]
  %.271.i.us161.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.us159.i.preheader ], [ %i.gb, %.lr.ph72.i.us159.i.prol ]
  %i.gc = icmp eq i64 %5, %.neg116
  br i1 %i.gc, label %.preheader.i.i, label %.lr.ph72.i.us159.i

.lr.ph72.i.us159.i:                               ; preds = %.lr.ph72.i.us159.i.prol.loopexit, %.lr.ph72.i.us159.i
  %.7.us160.i = phi i64 [ %i.hb, %.lr.ph72.i.us159.i ], [ %.7.us160.i.unr, %.lr.ph72.i.us159.i.prol.loopexit ] ; 4 uses
  %.271.i.us161.i = phi i64 [ %i.hc, %.lr.ph72.i.us159.i ], [ %.271.i.us161.i.unr, %.lr.ph72.i.us159.i.prol.loopexit ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.271.i.us161.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.gf = zext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !24
  %i.gi = sub i64 %i.gh, %i.k
  %i.gj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gf
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !98
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.us160.i
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !98
  %i.gm = trunc i64 %i.gi to i32
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7.us160.i
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !3
  %i.go = add i64 %.7.us160.i, 1                  ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.271.i.us161.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !3
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !24
  %i.gv = sub i64 %i.gu, %i.k
  %i.gw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gs
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !98
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.go
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !98
  %i.gz = trunc i64 %i.gv to i32
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.go
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !3
  %i.hb = add i64 %.7.us160.i, 2                  ; 2 uses
  %i.hc = add nuw i64 %.271.i.us161.i, 2          ; 2 uses
  %exitcond.not.i.us163.i.1 = icmp eq i64 %i.hc, %5
  br i1 %exitcond.not.i.us163.i.1, label %.preheader.i.i, label %.lr.ph72.i.us159.i, !llvm.loop !4562

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.preheader.i
  %.8.i = phi i64 [ %.9.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 7 uses
  %.067.i.i = phi i64 [ %.1.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %.05166.i.i = phi i64 [ %.152.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.067.i.i
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hf = zext i32 %i.he to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.l, %.lr.ph.i.i
  %i.hg = phi i64 [ %i.hf, %bb.l ], [ %.067.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !24
  %i.hj = sub i64 %i.hi, %i.k                     ; 4 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.05166.i.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3  ; 2 uses
  %i.hm = zext i32 %i.hl to i64                   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6duckdbL15MergeUpdateLoopIsEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.ap = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep176.i, ptr align 4 %scevgep177.i, i64 %i.ap, i1 false), !tbaa !3
  %i.aq = add i64 %.0122.lcssa.i, %.pre-phi.i
  %i.ar = sub i64 %i.aq, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.cc, %bb.k ] ; 3 uses
  %.0122148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2124.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.av = phi i64 [ %i.au, %bb.c ], [ %.075149.i, %bb.b ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.ay = sub i64 %i.ax, %i.k                     ; 6 uses
  %i.az = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bj, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1123142.i = phi i64 [ %i.bh, %bb.d ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3  ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp ugt i64 %i.ay, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.173143.i
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !266
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.1123142.i
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !266
  %i.bh = add i64 %.1123142.i, 1                  ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !3
  %i.bj = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4564

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = icmp eq i64 %i.ay, %i.bc
  br i1 %i.bk, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.173143.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !266
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.1123142.i
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !266
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !3
  %i.bp = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1123138.i = phi i64 [ %.1123142.i, %bb.e ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bh, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bq = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bq, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.bv, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.ay, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.bv = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond173.not.i = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond173.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4565

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bw = icmp eq i64 %i.ay, %i.bt
  br i1 %i.bw, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.by, %.critedge2.i ], [ %i.bx, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load i16, ptr %.sink.in.i, align 2, !tbaa !266
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.1123138.i
  store i16 %.sink.i, ptr %i.bz, align 2, !tbaa !266
  %i.ca = trunc i64 %i.ay to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123138.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1123137.i = phi i64 [ %.1123142.i, %bb.f ], [ %.1123138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bp, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2124.i = add i64 %.1123137.i, 1               ; 2 uses
  %i.cc = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.cc, %5
  br i1 %exitcond174.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4566

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3125.lcssa.i = phi i64 [ %.0122.lcssa.i, %.preheader.i ], [ %i.ar, %.lr.ph157.preheader.i ] ; 3 uses
  %i.cd = trunc i64 %.3125.lcssa.i to i32
  store i32 %i.cd, ptr %i.ae, align 8, !tbaa !1151
  %i.ce = shl i64 %.3125.lcssa.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = shl i64 %.3125.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1151 ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.cj = icmp ne i64 %5, 0
  %i.ck = icmp ne i32 %i.ch, 0
  %i.cl = and i1 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i, %bb.t ] ; 17 uses
  %.051.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.152.i.i, %bb.t ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cm = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cm, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !152 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cn, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.co = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter113 = and i64 %i.co, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !24
  %i.cr = sub i64 %i.cq, %i.k
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0.lcssa.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !266
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.4.i
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !266
  %i.cy = trunc i64 %i.cr to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !3
  %i.da = add i64 %.4.i, 1                        ; 2 uses
  %i.db = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.unr115 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.dc = icmp eq i64 %5, %.neg117
  br i1 %i.dc, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.dd = shl i64 %.4.i, 1
  %scevgep178.i = getelementptr i8, ptr %i.a, i64 %i.dd
  %i.de = shl i64 %.0.lcssa.i.i, 1
  %scevgep179.i = getelementptr i8, ptr %i.f, i64 %i.de
  %i.df = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.dg = shl i64 %i.df, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep178.i, ptr readonly align 2 %scevgep179.i, i64 %i.dg, i1 false), !tbaa !266
  %min.iters.check = icmp ult i64 %i.df, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.df, -4                      ; 4 uses
  %i.dh = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.di = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.dk = getelementptr [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load = load <2 x i64>, ptr %i.dl, align 8, !tbaa !24
  %wide.load92 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !24
  %i.dn = sub <2 x i64> %wide.load, %broadcast.splat
  %i.do = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.dp = trunc <2 x i64> %i.dn to <2 x i32>
  %i.dq = trunc <2 x i64> %i.do to <2 x i32>
  %i.dr = getelementptr [4 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store <2 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !3
  store <2 x i32> %i.dq, ptr %i.ds, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !4567

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dh, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.di, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %i.du = phi i64 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.eb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !24
  %i.dx = sub i64 %i.dw, %i.k
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.du
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !3
  %i.ea = add i64 %i.du, 1                        ; 2 uses
  %i.eb = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.eb, %5
  br i1 %exitcond33.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4568

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %i.ec = phi i64 [ %i.fb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.unr115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.fc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !24
  %i.ef = sub i64 %i.ee, %i.k
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.28.us.i.i
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !266
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ec
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !266
  %i.em = trunc i64 %i.ef to i32
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ec
  store i32 %i.em, ptr %i.en, align 4, !tbaa !3
  %i.eo = add i64 %i.ec, 1                        ; 2 uses
  %i.ep = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !24
  %i.es = sub i64 %i.er, %i.k
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ep
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !266
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.eo
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !266
  %i.ez = trunc i64 %i.es to i32
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eo
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !3
  %i.fb = add i64 %i.ec, 2                        ; 2 uses
  %i.fc = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond32.not.i.i.1 = icmp eq i64 %i.fc, %5
  br i1 %exitcond32.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4569

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fd = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !24
  %i.fj = sub i64 %i.fi, %i.k
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.fg
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !266
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.4.i
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !266
  %i.fq = trunc i64 %i.fj to i32
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !3
  %i.fs = add i64 %.4.i, 1                        ; 2 uses
  %i.ft = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.ft, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fu = icmp eq i64 %5, %.neg
  br i1 %i.fu, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fv = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fv, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !24
  %i.gb = sub i64 %i.ga, %i.k
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.fy
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !266
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.4.i
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !266
  %i.gf = trunc i64 %i.gb to i32
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !3
  %i.gh = add i64 %.4.i, 1                        ; 2 uses
  %i.gi = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.unr112 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gj = icmp eq i64 %5, %.neg116
  br i1 %i.gj, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %i.gk = phi i64 [ %i.hj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.unr112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !24
  %i.gq = sub i64 %i.gp, %i.k
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.gn
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !266
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.gk
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !266
  %i.gu = trunc i64 %i.gq to i32
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gk
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !3
  %i.gw = add i64 %i.gk, 1                        ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3
  %i.ha = zext i32 %i.gz to i64                   ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !24
  %i.hd = sub i64 %i.hc, %i.k
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ha
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !266
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.gw
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !266
  %i.hh = trunc i64 %i.hd to i32
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gw
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !3
  %i.hj = add i64 %i.gk, 2                        ; 2 uses
  %i.hk = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond31.not.i.i.1 = icmp eq i64 %i.hk, %5
  br i1 %exitcond31.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4569

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.6.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.7.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0513.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.152.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hn = zext i32 %i.hm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ho = phi i64 [ %i.hn, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ho
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !24
  %i.hr = sub i64 %i.hq, %i.k                     ; 4 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0513.i.i
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3  ; 2 uses
  %i.hu = zext i32 %i.ht to i64                   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6duckdbL15MergeUpdateLoopIiEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %scevgep176.i = getelementptr i8, ptr %i.b, i64 %i.ag
  %scevgep177.i = getelementptr i8, ptr %i.ai, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep176.i, ptr align 4 %scevgep177.i, i64 %i.al, i1 false), !tbaa !3
  %i.am = add i64 %.0122.lcssa.i, %.pre-phi.i
  %i.an = sub i64 %i.am, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.by, %bb.k ] ; 3 uses
  %.0122148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2124.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = zext i32 %i.ap to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.ar = phi i64 [ %i.aq, %bb.c ], [ %.075149.i, %bb.b ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24
  %i.au = sub i64 %i.at, %i.k                     ; 6 uses
  %i.av = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.av, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bf, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1123142.i = phi i64 [ %i.bd, %bb.d ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = icmp ugt i64 %i.au, %i.ay
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.173143.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !3
  %i.bd = add i64 %.1123142.i, 1                  ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4571

bb.e:                                             ; preds = %.lr.ph.i
  %i.bg = icmp eq i64 %i.au, %i.ay
  br i1 %i.bg, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.173143.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123142.i
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.ax, ptr %i.bk, align 4, !tbaa !3
  %i.bl = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1123138.i = phi i64 [ %.1123142.i, %bb.e ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bd, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bm = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bm, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.br, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = icmp ugt i64 %i.au, %i.bp
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.br = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond173.not.i = icmp eq i64 %i.br, %i.ad
  br i1 %exitcond173.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4572

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bs = icmp eq i64 %i.au, %i.bp
  br i1 %i.bs, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.au
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.bu, %.critedge2.i ], [ %i.bt, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123138.i
  store i32 %.sink.i, ptr %i.bv, align 4, !tbaa !3
  %i.bw = trunc i64 %i.au to i32
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123138.i
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1123137.i = phi i64 [ %.1123142.i, %bb.f ], [ %.1123138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bl, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2124.i = add i64 %.1123137.i, 1               ; 2 uses
  %i.by = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.by, %5
  br i1 %exitcond174.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4573

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3125.lcssa.i = phi i64 [ %.0122.lcssa.i, %.preheader.i ], [ %i.an, %.lr.ph157.preheader.i ] ; 2 uses
  %i.bz = trunc i64 %.3125.lcssa.i to i32
  store i32 %i.bz, ptr %i.ae, align 8, !tbaa !1151
  %i.ca = shl i64 %.3125.lcssa.i, 2               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %i.ca, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.ca, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1151 ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.ce = icmp ne i64 %5, 0
  %i.cf = icmp ne i32 %i.cc, 0
  %i.cg = and i1 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i, %bb.t ] ; 17 uses
  %.051.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.152.i.i, %bb.t ] ; 3 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.ch = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.ch, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !152 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.ci, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.cj = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter113 = and i64 %i.cj, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !24
  %i.cm = sub i64 %i.cl, %i.k
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.0.lcssa.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !3
  %i.ct = trunc i64 %i.cm to i32
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !3
  %i.cv = add i64 %.4.i, 1                        ; 2 uses
  %i.cw = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.unr115 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.cx = icmp eq i64 %5, %.neg117
  br i1 %i.cx, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.cy = shl i64 %.4.i, 2
  %scevgep178.i = getelementptr i8, ptr %i.a, i64 %i.cy
  %i.cz = shl i64 %.0.lcssa.i.i, 2
  %scevgep179.i = getelementptr i8, ptr %i.f, i64 %i.cz
  %i.da = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.db = shl i64 %i.da, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep178.i, ptr readonly align 4 %scevgep179.i, i64 %i.db, i1 false), !tbaa !3
  %min.iters.check = icmp ult i64 %i.da, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.da, -4                      ; 4 uses
  %i.dc = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dd = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.df = getelementptr [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = getelementptr [8 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <2 x i64>, ptr %i.dg, align 8, !tbaa !24
  %wide.load92 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !24
  %i.di = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dj = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.dk = trunc <2 x i64> %i.di to <2 x i32>
  %i.dl = trunc <2 x i64> %i.dj to <2 x i32>
  %i.dm = getelementptr [4 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store <2 x i32> %i.dk, ptr %i.dm, align 4, !tbaa !3
  store <2 x i32> %i.dl, ptr %i.dn, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !4574

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dc, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dd, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %i.dp = phi i64 [ %i.dv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.dw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !24
  %i.ds = sub i64 %i.dr, %i.k
  %i.dt = trunc i64 %i.ds to i32
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dp
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !3
  %i.dv = add i64 %i.dp, 1                        ; 2 uses
  %i.dw = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.dw, %5
  br i1 %exitcond33.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4575

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %i.dx = phi i64 [ %i.ew, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.unr115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.ex, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !24
  %i.ea = sub i64 %i.dz, %i.k
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.28.us.i.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dx
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !3
  %i.eh = trunc i64 %i.ea to i32
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dx
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !3
  %i.ej = add i64 %i.dx, 1                        ; 2 uses
  %i.ek = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !24
  %i.en = sub i64 %i.em, %i.k
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ek
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ej
  store i32 %i.es, ptr %i.et, align 4, !tbaa !3
  %i.eu = trunc i64 %i.en to i32
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ej
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !3
  %i.ew = add i64 %i.dx, 2                        ; 2 uses
  %i.ex = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond32.not.i.i.1 = icmp eq i64 %i.ex, %5
  br i1 %exitcond32.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4576

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.ey = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.ey, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !24
  %i.fe = sub i64 %i.fd, %i.k
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.fb
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !3
  %i.fl = trunc i64 %i.fe to i32
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !3
  %i.fn = add i64 %.4.i, 1                        ; 2 uses
  %i.fo = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fp = icmp eq i64 %5, %.neg
  br i1 %i.fp, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fq = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fq, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = zext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !24
  %i.fw = sub i64 %i.fv, %i.k
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ft
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !3
  %i.ga = trunc i64 %i.fw to i32
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !3
  %i.gc = add i64 %.4.i, 1                        ; 2 uses
  %i.gd = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.unr112 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.ge = icmp eq i64 %5, %.neg116
  br i1 %i.ge, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %i.gf = phi i64 [ %i.he, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.unr112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !24
  %i.gl = sub i64 %i.gk, %i.k
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gi
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gf
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !3
  %i.gp = trunc i64 %i.gl to i32
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gf
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !3
  %i.gr = add i64 %i.gf, 1                        ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3
  %i.gv = zext i32 %i.gu to i64                   ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !24
  %i.gy = sub i64 %i.gx, %i.k
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gv
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !3
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gr
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !3
  %i.hc = trunc i64 %i.gy to i32
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gr
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !3
  %i.he = add i64 %i.gf, 2                        ; 2 uses
  %i.hf = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond31.not.i.i.1 = icmp eq i64 %i.hf, %5
  br i1 %exitcond31.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4576

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.6.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.7.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0513.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.152.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !3
  %i.hi = zext i32 %i.hh to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hj = phi i64 [ %i.hi, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hj
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !24
  %i.hm = sub i64 %i.hl, %i.k                     ; 4 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0513.i.i
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3  ; 2 uses
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6duckdbL15MergeUpdateLoopIlEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.ap = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep184.i, ptr align 4 %scevgep185.i, i64 %i.ap, i1 false), !tbaa !3
  %i.aq = add i64 %.0130.lcssa.i, %.pre-phi.i
  %i.ar = sub i64 %i.aq, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph160.i
  %.0159.i = phi i64 [ 0, %.lr.ph160.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072158.i = phi i64 [ 0, %.lr.ph160.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075157.i = phi i64 [ 0, %.lr.ph160.i ], [ %i.cc, %bb.k ] ; 3 uses
  %.0130156.i = phi i64 [ 0, %.lr.ph160.i ], [ %.2132.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075157.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.av = phi i64 [ %i.au, %bb.c ], [ %.075157.i, %bb.b ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.ay = sub i64 %i.ax, %i.k                     ; 6 uses
  %i.az = icmp ult i64 %.072158.i, %i.aa
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173151.i = phi i64 [ %i.bj, %bb.d ], [ %.072158.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1131150.i = phi i64 [ %i.bh, %bb.d ], [ %.0130156.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173151.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3  ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp ugt i64 %i.ay, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.173151.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1131150.i
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !24
  %i.bh = add i64 %.1131150.i, 1                  ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1131150.i
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !3
  %i.bj = add i64 %.173151.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4578

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = icmp eq i64 %i.ay, %i.bc
  br i1 %i.bk, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.173151.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1131150.i
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1131150.i
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !3
  %i.bp = add nuw nsw i64 %.173151.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1131146.i = phi i64 [ %.1131150.i, %bb.e ], [ %.0130156.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bh, %bb.d ] ; 3 uses
  %.173143.i = phi i64 [ %.173151.i, %bb.e ], [ %.072158.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bq = icmp ult i64 %.0159.i, %i.ad
  br i1 %i.bq, label %.lr.ph154.i, label %.critedge2.i

.lr.ph154.i:                                      ; preds = %.critedge.i, %bb.g
  %.1153.i = phi i64 [ %i.bv, %bb.g ], [ %.0159.i, %.critedge.i ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1153.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.ay, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph154.i
  %i.bv = add i64 %.1153.i, 1                     ; 2 uses
  %exitcond181.not.i = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond181.not.i, label %.critedge2.i, label %.lr.ph154.i, !llvm.loop !4579

bb.h:                                             ; preds = %.lr.ph154.i
  %i.bw = icmp eq i64 %i.ay, %i.bt
  br i1 %i.bw, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1153.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1149.i = phi i64 [ %.1153.i, %bb.h ], [ %.0159.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.by, %.critedge2.i ], [ %i.bx, %bb.i ]
  %.1148.i = phi i64 [ %.1149.i, %.critedge2.i ], [ %.1153.i, %bb.i ]
  %.sink.i = load i64, ptr %.sink.in.i, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1131146.i
  store i64 %.sink.i, ptr %i.bz, align 8, !tbaa !24
  %i.ca = trunc i64 %i.ay to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1131146.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1131145.i = phi i64 [ %.1131150.i, %bb.f ], [ %.1131146.i, %bb.j ]
  %.274.i = phi i64 [ %i.bp, %bb.f ], [ %.173143.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0159.i, %bb.f ], [ %.1148.i, %bb.j ]
  %.2132.i = add i64 %.1131145.i, 1               ; 2 uses
  %i.cc = add nuw i64 %.075157.i, 1               ; 2 uses
  %exitcond182.not.i = icmp eq i64 %i.cc, %5
  br i1 %exitcond182.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4580

._crit_edge.i:                                    ; preds = %.lr.ph165.preheader.i, %.preheader.i
  %.3133.lcssa.i = phi i64 [ %.0130.lcssa.i, %.preheader.i ], [ %i.ar, %.lr.ph165.preheader.i ] ; 3 uses
  %i.cd = trunc i64 %.3133.lcssa.i to i32
  store i32 %i.cd, ptr %i.ae, align 8, !tbaa !1151
  %i.ce = shl i64 %.3133.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = shl i64 %.3133.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1151 ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.cj = icmp ne i64 %5, 0
  %i.ck = icmp ne i32 %i.ch, 0
  %i.cl = and i1 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.12.i, %bb.t ] ; 17 uses
  %.051.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.152.i.i, %bb.t ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cm = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cm, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !152 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cn, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.co = sub i64 %5, %.0.lcssa.i.i
  %.neg115 = add i64 %.0.lcssa.i.i, 1
  %xtraiter112 = and i64 %i.co, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !24
  %i.cr = sub i64 %i.cq, %i.k
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0.lcssa.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !24
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !24
  %i.cy = trunc i64 %i.cr to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !3
  %i.da = add i64 %.4.i, 1                        ; 2 uses
  %i.db = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.9.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.dc = icmp eq i64 %5, %.neg115
  br i1 %i.dc, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.dd = shl i64 %.4.i, 3
  %scevgep186.i = getelementptr i8, ptr %i.a, i64 %i.dd
  %i.de = shl i64 %.0.lcssa.i.i, 3
  %scevgep187.i = getelementptr i8, ptr %i.f, i64 %i.de
  %i.df = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.dg = shl i64 %i.df, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep186.i, ptr readonly align 8 %scevgep187.i, i64 %i.dg, i1 false), !tbaa !24
  %min.iters.check = icmp ult i64 %i.df, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.df, -4                      ; 4 uses
  %i.dh = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.di = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.dk = getelementptr [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load = load <2 x i64>, ptr %i.dl, align 8, !tbaa !24
  %wide.load92 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !24
  %i.dn = sub <2 x i64> %wide.load, %broadcast.splat
  %i.do = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.dp = trunc <2 x i64> %i.dn to <2 x i32>
  %i.dq = trunc <2 x i64> %i.do to <2 x i32>
  %i.dr = getelementptr [4 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store <2 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !3
  store <2 x i32> %i.dq, ptr %i.ds, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !4581

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.10.i.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dh, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.di, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %.10.i = phi i64 [ %i.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.10.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !24
  %i.dw = sub i64 %i.dv, %i.k
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.10.i
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !3
  %i.dz = add i64 %.10.i, 1                       ; 2 uses
  %i.ea = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond31.not.i.i = icmp eq i64 %i.ea, %5
  br i1 %exitcond31.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4582

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %.9.i = phi i64 [ %i.ez, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.9.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.fa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !24
  %i.ed = sub i64 %i.ec, %i.k
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.28.us.i.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !24
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.9.i
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !24
  %i.ek = trunc i64 %i.ed to i32
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.9.i
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !3
  %i.em = add i64 %.9.i, 1                        ; 2 uses
  %i.en = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !24
  %i.eq = sub i64 %i.ep, %i.k
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.en
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !24
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.em
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !24
  %i.ex = trunc i64 %i.eq to i32
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.em
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !3
  %i.ez = add i64 %.9.i, 2                        ; 2 uses
  %i.fa = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond30.not.i.i.1 = icmp eq i64 %i.fa, %5
  br i1 %exitcond30.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4583

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fb = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = zext i32 %i.fd to i64                   ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !24
  %i.fh = sub i64 %i.fg, %i.k
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.fe
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !24
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !24
  %i.fo = trunc i64 %i.fh to i32
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !3
  %i.fq = add i64 %.4.i, 1                        ; 2 uses
  %i.fr = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.7.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fs = icmp eq i64 %5, %.neg
  br i1 %i.fs, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.ft = sub i64 %5, %.0.lcssa.i.i
  %.neg114 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.ft, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fw
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !24
  %i.fz = sub i64 %i.fy, %i.k
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fw
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !24
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !24
  %i.gd = trunc i64 %i.fz to i32
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !3
  %i.gf = add i64 %.4.i, 1                        ; 2 uses
  %i.gg = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.8.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gh = icmp eq i64 %5, %.neg114
  br i1 %i.gh, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %.8.i = phi i64 [ %i.hg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.8.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = zext i32 %i.gj to i64                   ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !24
  %i.gn = sub i64 %i.gm, %i.k
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gk
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !24
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.8.i
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !24
  %i.gr = trunc i64 %i.gn to i32
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.8.i
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !3
  %i.gt = add i64 %.8.i, 1                        ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  %i.gx = zext i32 %i.gw to i64                   ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gx
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !24
  %i.ha = sub i64 %i.gz, %i.k
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gx
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !24
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gt
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !24
  %i.he = trunc i64 %i.ha to i32
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gt
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !3
  %i.hg = add i64 %.8.i, 2                        ; 2 uses
  %i.hh = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond29.not.i.i.1 = icmp eq i64 %i.hh, %5
  br i1 %exitcond29.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4583

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.11.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.12.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0513.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.152.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hk = zext i32 %i.hj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hl = phi i64 [ %i.hk, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hl
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !24
  %i.ho = sub i64 %i.hn, %i.k                     ; 4 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0513.i.i
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !3  ; 2 uses
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6duckdbL15MergeUpdateLoopIhEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.ak = shl nuw nsw i64 %.072.lcssa.i, 2
  %i.al = getelementptr i8, ptr %2, i64 %i.ak
  %scevgep186.i = getelementptr i8, ptr %i.al, i64 88
  %i.am = shl nuw nsw i64 %i.ai, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep185.i, ptr align 4 %scevgep186.i, i64 %i.am, i1 false), !tbaa !3
  %i.an = add i64 %.0128.lcssa.i, %.pre-phi.i
  %i.ao = sub i64 %i.an, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.bz, %bb.k ] ; 3 uses
  %.0128148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2130.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = zext i32 %i.aq to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.as = phi i64 [ %i.ar, %bb.c ], [ %.075149.i, %bb.b ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !24
  %i.av = sub i64 %i.au, %i.k                     ; 6 uses
  %i.aw = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.aw, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bg, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1129142.i = phi i64 [ %i.be, %bb.d ], [ %.0128148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = icmp ugt i64 %i.av, %i.az
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 %.173143.i
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1129142.i
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !98
  %i.be = add i64 %.1129142.i, 1                  ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1129142.i
  store i32 %i.ay, ptr %i.bf, align 4, !tbaa !3
  %i.bg = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bg, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4585

bb.e:                                             ; preds = %.lr.ph.i
  %i.bh = icmp eq i64 %i.av, %i.az
  br i1 %i.bh, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 %.173143.i
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !98
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1129142.i
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !98
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1129142.i
  store i32 %i.ay, ptr %i.bl, align 4, !tbaa !3
  %i.bm = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1129138.i = phi i64 [ %.1129142.i, %bb.e ], [ %.0128148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.be, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bn = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bn, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.bs, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = icmp ugt i64 %i.av, %i.bq
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.bs = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond182.not.i = icmp eq i64 %i.bs, %i.ad
  br i1 %exitcond182.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4586

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bt = icmp eq i64 %i.av, %i.bq
  br i1 %i.bt, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.av
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.bv, %.critedge2.i ], [ %i.bu, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load i8, ptr %.sink.in.i, align 1, !tbaa !98
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1129138.i
  store i8 %.sink.i, ptr %i.bw, align 1, !tbaa !98
  %i.bx = trunc i64 %i.av to i32
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1129138.i
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1129137.i = phi i64 [ %.1129142.i, %bb.f ], [ %.1129138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bm, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2130.i = add i64 %.1129137.i, 1               ; 2 uses
  %i.bz = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond183.not.i = icmp eq i64 %i.bz, %5
  br i1 %exitcond183.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4587

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3131.lcssa.i = phi i64 [ %.0128.lcssa.i, %.preheader.i ], [ %i.ao, %.lr.ph157.preheader.i ] ; 3 uses
  %i.ca = trunc i64 %.3131.lcssa.i to i32
  store i32 %i.ca, ptr %i.ae, align 8, !tbaa !1151
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %.3131.lcssa.i, i1 false)
  %i.cb = shl i64 %.3131.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cb, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !1151 ; 2 uses
  %i.ce = zext i32 %i.cd to i64                   ; 3 uses
  %i.cf = icmp ne i64 %5, 0
  %i.cg = icmp ne i32 %i.cd, 0
  %i.ch = and i1 %i.cf, %i.cg
  br i1 %i.ch, label %.lr.ph.i.preheader.i, label %.preheader64.i.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge.i
  %i.ci = load ptr, ptr %6, align 8, !tbaa !152   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ci, null
  br label %.lr.ph.i.i

.preheader64.i.i:                                 ; preds = %bb.s, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.9.i, %bb.s ] ; 17 uses
  %.051.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.152.i.i, %bb.s ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.s ] ; 22 uses
  %i.cj = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cj, label %.lr.ph72.i.preheader.i, label %.preheader.i.i

.lr.ph72.i.preheader.i:                           ; preds = %.preheader64.i.i
  %i.ck = load ptr, ptr %6, align 8, !tbaa !152   ; 7 uses
  %.not.i60.i.i = icmp eq ptr %i.ck, null
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !152 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cl, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph72.i.preheader.split.us.i, label %.lr.ph72.i.preheader.split.i

.lr.ph72.i.preheader.split.us.i:                  ; preds = %.lr.ph72.i.preheader.i
  br i1 %.not.i.i62.i.i, label %.lr.ph72.i.us.us.preheader.i, label %.lr.ph72.i.us.i.preheader

.lr.ph72.i.us.i.preheader:                        ; preds = %.lr.ph72.i.preheader.split.us.i
  %i.cm = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter114 = and i64 %i.cm, 1
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %.lr.ph72.i.us.i.prol.loopexit, label %.lr.ph72.i.us.i.prol

.lr.ph72.i.us.i.prol:                             ; preds = %.lr.ph72.i.us.i.preheader
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !24
  %i.cp = sub i64 %i.co, %i.k
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.0.lcssa.i.i
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !98
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.i
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !98
  %i.cw = trunc i64 %i.cp to i32
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !3
  %i.cy = add i64 %.4.i, 1                        ; 2 uses
  %i.cz = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph72.i.us.i.prol.loopexit

.lr.ph72.i.us.i.prol.loopexit:                    ; preds = %.lr.ph72.i.us.i.prol, %.lr.ph72.i.us.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %.lr.ph72.i.us.i.preheader ], [ %i.cy, %.lr.ph72.i.us.i.prol ]
  %.7.us.i.unr = phi i64 [ %.4.i, %.lr.ph72.i.us.i.preheader ], [ %i.cy, %.lr.ph72.i.us.i.prol ]
  %.271.i.us.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.us.i.preheader ], [ %i.cz, %.lr.ph72.i.us.i.prol ]
  %i.da = icmp eq i64 %5, %.neg117
  br i1 %i.da, label %.preheader.i.i, label %.lr.ph72.i.us.i

.lr.ph72.i.us.us.preheader.i:                     ; preds = %.lr.ph72.i.preheader.split.us.i
  %scevgep187.i = getelementptr i8, ptr %i.a, i64 %.4.i
  %scevgep188.i = getelementptr i8, ptr %i.f, i64 %.0.lcssa.i.i
  %i.db = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep187.i, ptr readonly align 1 %scevgep188.i, i64 %i.db, i1 false), !tbaa !98
  %min.iters.check = icmp ult i64 %i.db, 4
  br i1 %min.iters.check, label %.lr.ph72.i.us.us.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph72.i.us.us.preheader.i
  %n.vec = and i64 %i.db, -4                      ; 4 uses
  %i.dc = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dd = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.df = getelementptr [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = getelementptr [8 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <2 x i64>, ptr %i.dg, align 8, !tbaa !24
  %wide.load94 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !24
  %i.di = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dj = sub <2 x i64> %wide.load94, %broadcast.splat
  %i.dk = trunc <2 x i64> %i.di to <2 x i32>
  %i.dl = trunc <2 x i64> %i.dj to <2 x i32>
  %i.dm = getelementptr [4 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store <2 x i32> %i.dk, ptr %i.dm, align 4, !tbaa !3
  store <2 x i32> %i.dl, ptr %i.dn, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !4588

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %.lr.ph72.i.us.us.i.preheader

.lr.ph72.i.us.us.i.preheader:                     ; preds = %.lr.ph72.i.us.us.preheader.i, %middle.block
  %.7.us.us.i.ph = phi i64 [ %.4.i, %.lr.ph72.i.us.us.preheader.i ], [ %i.dc, %middle.block ]
  %.271.i.us.us.i.ph = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.us.us.preheader.i ], [ %i.dd, %middle.block ]
  br label %.lr.ph72.i.us.us.i

.lr.ph72.i.us.us.i:                               ; preds = %.lr.ph72.i.us.us.i.preheader, %.lr.ph72.i.us.us.i
  %.7.us.us.i = phi i64 [ %i.du, %.lr.ph72.i.us.us.i ], [ %.7.us.us.i.ph, %.lr.ph72.i.us.us.i.preheader ] ; 2 uses
  %.271.i.us.us.i = phi i64 [ %i.dv, %.lr.ph72.i.us.us.i ], [ %.271.i.us.us.i.ph, %.lr.ph72.i.us.us.i.preheader ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.271.i.us.us.i
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !24
  %i.dr = sub i64 %i.dq, %i.k
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7.us.us.i
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !3
  %i.du = add i64 %.7.us.us.i, 1                  ; 2 uses
  %i.dv = add nuw i64 %.271.i.us.us.i, 1          ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %i.dv, %5
  br i1 %exitcond.not.i.us.us.i, label %.preheader.i.i, label %.lr.ph72.i.us.us.i, !llvm.loop !4589

.lr.ph72.i.us.i:                                  ; preds = %.lr.ph72.i.us.i.prol.loopexit, %.lr.ph72.i.us.i
  %.7.us.i = phi i64 [ %i.eu, %.lr.ph72.i.us.i ], [ %.7.us.i.unr, %.lr.ph72.i.us.i.prol.loopexit ] ; 4 uses
  %.271.i.us.i = phi i64 [ %i.ev, %.lr.ph72.i.us.i ], [ %.271.i.us.i.unr, %.lr.ph72.i.us.i.prol.loopexit ] ; 4 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.271.i.us.i
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !24
  %i.dy = sub i64 %i.dx, %i.k
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %.271.i.us.i
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !3
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !98
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.us.i
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !98
  %i.ef = trunc i64 %i.dy to i32
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7.us.i
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !3
  %i.eh = add i64 %.7.us.i, 1                     ; 2 uses
  %i.ei = add nuw i64 %.271.i.us.i, 1             ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ei
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !24
  %i.el = sub i64 %i.ek, %i.k
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ei
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !98
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eh
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !98
  %i.es = trunc i64 %i.el to i32
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eh
  store i32 %i.es, ptr %i.et, align 4, !tbaa !3
  %i.eu = add i64 %.7.us.i, 2                     ; 2 uses
  %i.ev = add nuw i64 %.271.i.us.i, 2             ; 2 uses
  %exitcond.not.i.us.i.1 = icmp eq i64 %i.ev, %5
  br i1 %exitcond.not.i.us.i.1, label %.preheader.i.i, label %.lr.ph72.i.us.i, !llvm.loop !4590

.lr.ph72.i.preheader.split.i:                     ; preds = %.lr.ph72.i.preheader.i
  br i1 %.not.i.i62.i.i, label %.lr.ph72.i.us159.i.preheader, label %.lr.ph72.i.i.preheader

.lr.ph72.i.i.preheader:                           ; preds = %.lr.ph72.i.preheader.split.i
  %i.ew = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.ew, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph72.i.i.prol.loopexit, label %.lr.ph72.i.i.prol

.lr.ph72.i.i.prol:                                ; preds = %.lr.ph72.i.i.preheader
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.0.lcssa.i.i
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !3
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !24
  %i.fc = sub i64 %i.fb, %i.k
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ez
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !3
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !98
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.i
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !98
  %i.fj = trunc i64 %i.fc to i32
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !3
  %i.fl = add i64 %.4.i, 1                        ; 2 uses
  %i.fm = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph72.i.i.prol.loopexit

.lr.ph72.i.i.prol.loopexit:                       ; preds = %.lr.ph72.i.i.prol, %.lr.ph72.i.i.preheader
  %.lcssa101.unr = phi i64 [ poison, %.lr.ph72.i.i.preheader ], [ %i.fl, %.lr.ph72.i.i.prol ]
  %.7.i.unr = phi i64 [ %.4.i, %.lr.ph72.i.i.preheader ], [ %i.fl, %.lr.ph72.i.i.prol ]
  %.271.i.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.i.preheader ], [ %i.fm, %.lr.ph72.i.i.prol ]
  %i.fn = icmp eq i64 %5, %.neg
  br i1 %i.fn, label %.preheader.i.i, label %.lr.ph72.i.i

.lr.ph72.i.us159.i.preheader:                     ; preds = %.lr.ph72.i.preheader.split.i
  %i.fo = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter112 = and i64 %i.fo, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %.lr.ph72.i.us159.i.prol.loopexit, label %.lr.ph72.i.us159.i.prol

.lr.ph72.i.us159.i.prol:                          ; preds = %.lr.ph72.i.us159.i.preheader
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.0.lcssa.i.i
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !3
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !24
  %i.fu = sub i64 %i.ft, %i.k
  %i.fv = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.fr
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !98
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.i
  store i8 %i.fw, ptr %i.fx, align 1, !tbaa !98
  %i.fy = trunc i64 %i.fu to i32
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !3
  %i.ga = add i64 %.4.i, 1                        ; 2 uses
  %i.gb = add nuw i64 %.0.lcssa.i.i, 1
  br label %.lr.ph72.i.us159.i.prol.loopexit

.lr.ph72.i.us159.i.prol.loopexit:                 ; preds = %.lr.ph72.i.us159.i.prol, %.lr.ph72.i.us159.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %.lr.ph72.i.us159.i.preheader ], [ %i.ga, %.lr.ph72.i.us159.i.prol ]
  %.7.us160.i.unr = phi i64 [ %.4.i, %.lr.ph72.i.us159.i.preheader ], [ %i.ga, %.lr.ph72.i.us159.i.prol ]
  %.271.i.us161.i.unr = phi i64 [ %.0.lcssa.i.i, %.lr.ph72.i.us159.i.preheader ], [ %i.gb, %.lr.ph72.i.us159.i.prol ]
  %i.gc = icmp eq i64 %5, %.neg116
  br i1 %i.gc, label %.preheader.i.i, label %.lr.ph72.i.us159.i

.lr.ph72.i.us159.i:                               ; preds = %.lr.ph72.i.us159.i.prol.loopexit, %.lr.ph72.i.us159.i
  %.7.us160.i = phi i64 [ %i.hb, %.lr.ph72.i.us159.i ], [ %.7.us160.i.unr, %.lr.ph72.i.us159.i.prol.loopexit ] ; 4 uses
  %.271.i.us161.i = phi i64 [ %i.hc, %.lr.ph72.i.us159.i ], [ %.271.i.us161.i.unr, %.lr.ph72.i.us159.i.prol.loopexit ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.271.i.us161.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  %i.gf = zext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !24
  %i.gi = sub i64 %i.gh, %i.k
  %i.gj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gf
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !98
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 %.7.us160.i
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !98
  %i.gm = trunc i64 %i.gi to i32
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.7.us160.i
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !3
  %i.go = add i64 %.7.us160.i, 1                  ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %.271.i.us161.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !3
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gs
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !24
  %i.gv = sub i64 %i.gu, %i.k
  %i.gw = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.gs
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !98
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.go
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !98
  %i.gz = trunc i64 %i.gv to i32
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.go
  store i32 %i.gz, ptr %i.ha, align 4, !tbaa !3
  %i.hb = add i64 %.7.us160.i, 2                  ; 2 uses
  %i.hc = add nuw i64 %.271.i.us161.i, 2          ; 2 uses
  %exitcond.not.i.us163.i.1 = icmp eq i64 %i.hc, %5
  br i1 %exitcond.not.i.us163.i.1, label %.preheader.i.i, label %.lr.ph72.i.us159.i, !llvm.loop !4590

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.preheader.i
  %.8.i = phi i64 [ %.9.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 7 uses
  %.067.i.i = phi i64 [ %.1.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  %.05166.i.i = phi i64 [ %.152.i.i, %bb.s ], [ 0, %.lr.ph.i.preheader.i ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.067.i.i
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !3
  %i.hf = zext i32 %i.he to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.l, %.lr.ph.i.i
  %i.hg = phi i64 [ %i.hf, %bb.l ], [ %.067.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !24
  %i.hj = sub i64 %i.hi, %i.k                     ; 4 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.05166.i.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3  ; 2 uses
  %i.hm = zext i32 %i.hl to i64                   ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6duckdbL15MergeUpdateLoopItEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.ap = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep176.i, ptr align 4 %scevgep177.i, i64 %i.ap, i1 false), !tbaa !3
  %i.aq = add i64 %.0122.lcssa.i, %.pre-phi.i
  %i.ar = sub i64 %i.aq, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.cc, %bb.k ] ; 3 uses
  %.0122148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2124.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.av = phi i64 [ %i.au, %bb.c ], [ %.075149.i, %bb.b ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.ay = sub i64 %i.ax, %i.k                     ; 6 uses
  %i.az = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bj, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1123142.i = phi i64 [ %i.bh, %bb.d ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3  ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp ugt i64 %i.ay, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.173143.i
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !266
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.1123142.i
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !266
  %i.bh = add i64 %.1123142.i, 1                  ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !3
  %i.bj = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4592

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = icmp eq i64 %i.ay, %i.bc
  br i1 %i.bk, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %.173143.i
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !266
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.1123142.i
  store i16 %i.bm, ptr %i.bn, align 2, !tbaa !266
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !3
  %i.bp = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1123138.i = phi i64 [ %.1123142.i, %bb.e ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bh, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bq = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bq, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.bv, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.ay, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.bv = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond173.not.i = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond173.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4593

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bw = icmp eq i64 %i.ay, %i.bt
  br i1 %i.bw, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.by, %.critedge2.i ], [ %i.bx, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load i16, ptr %.sink.in.i, align 2, !tbaa !266
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.1123138.i
  store i16 %.sink.i, ptr %i.bz, align 2, !tbaa !266
  %i.ca = trunc i64 %i.ay to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123138.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1123137.i = phi i64 [ %.1123142.i, %bb.f ], [ %.1123138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bp, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2124.i = add i64 %.1123137.i, 1               ; 2 uses
  %i.cc = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.cc, %5
  br i1 %exitcond174.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4594

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3125.lcssa.i = phi i64 [ %.0122.lcssa.i, %.preheader.i ], [ %i.ar, %.lr.ph157.preheader.i ] ; 3 uses
  %i.cd = trunc i64 %.3125.lcssa.i to i32
  store i32 %i.cd, ptr %i.ae, align 8, !tbaa !1151
  %i.ce = shl i64 %.3125.lcssa.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = shl i64 %.3125.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1151 ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.cj = icmp ne i64 %5, 0
  %i.ck = icmp ne i32 %i.ch, 0
  %i.cl = and i1 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i, %bb.t ] ; 17 uses
  %.051.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.152.i.i, %bb.t ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cm = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cm, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !152 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cn, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.co = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter113 = and i64 %i.co, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !24
  %i.cr = sub i64 %i.cq, %i.k
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0.lcssa.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !266
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.4.i
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !266
  %i.cy = trunc i64 %i.cr to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !3
  %i.da = add i64 %.4.i, 1                        ; 2 uses
  %i.db = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.unr115 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.dc = icmp eq i64 %5, %.neg117
  br i1 %i.dc, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.dd = shl i64 %.4.i, 1
  %scevgep178.i = getelementptr i8, ptr %i.a, i64 %i.dd
  %i.de = shl i64 %.0.lcssa.i.i, 1
  %scevgep179.i = getelementptr i8, ptr %i.f, i64 %i.de
  %i.df = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.dg = shl i64 %i.df, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep178.i, ptr readonly align 2 %scevgep179.i, i64 %i.dg, i1 false), !tbaa !266
  %min.iters.check = icmp ult i64 %i.df, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.df, -4                      ; 4 uses
  %i.dh = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.di = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.dk = getelementptr [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load = load <2 x i64>, ptr %i.dl, align 8, !tbaa !24
  %wide.load92 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !24
  %i.dn = sub <2 x i64> %wide.load, %broadcast.splat
  %i.do = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.dp = trunc <2 x i64> %i.dn to <2 x i32>
  %i.dq = trunc <2 x i64> %i.do to <2 x i32>
  %i.dr = getelementptr [4 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store <2 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !3
  store <2 x i32> %i.dq, ptr %i.ds, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !4595

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dh, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.di, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %i.du = phi i64 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.eb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !24
  %i.dx = sub i64 %i.dw, %i.k
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.du
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !3
  %i.ea = add i64 %i.du, 1                        ; 2 uses
  %i.eb = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.eb, %5
  br i1 %exitcond33.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4596

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %i.ec = phi i64 [ %i.fb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.unr115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.fc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !24
  %i.ef = sub i64 %i.ee, %i.k
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.28.us.i.i
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !266
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ec
  store i16 %i.ek, ptr %i.el, align 2, !tbaa !266
  %i.em = trunc i64 %i.ef to i32
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ec
  store i32 %i.em, ptr %i.en, align 4, !tbaa !3
  %i.eo = add i64 %i.ec, 1                        ; 2 uses
  %i.ep = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !24
  %i.es = sub i64 %i.er, %i.k
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ep
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !266
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.eo
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !266
  %i.ez = trunc i64 %i.es to i32
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eo
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !3
  %i.fb = add i64 %i.ec, 2                        ; 2 uses
  %i.fc = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond32.not.i.i.1 = icmp eq i64 %i.fc, %5
  br i1 %exitcond32.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4597

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fd = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !24
  %i.fj = sub i64 %i.fi, %i.k
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.fg
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !266
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.4.i
  store i16 %i.fo, ptr %i.fp, align 2, !tbaa !266
  %i.fq = trunc i64 %i.fj to i32
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !3
  %i.fs = add i64 %.4.i, 1                        ; 2 uses
  %i.ft = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.ft, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fu = icmp eq i64 %5, %.neg
  br i1 %i.fu, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fv = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fv, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !24
  %i.gb = sub i64 %i.ga, %i.k
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.fy
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !266
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %.4.i
  store i16 %i.gd, ptr %i.ge, align 2, !tbaa !266
  %i.gf = trunc i64 %i.gb to i32
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !3
  %i.gh = add i64 %.4.i, 1                        ; 2 uses
  %i.gi = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.unr112 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gj = icmp eq i64 %5, %.neg116
  br i1 %i.gj, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %i.gk = phi i64 [ %i.hj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.unr112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !24
  %i.gq = sub i64 %i.gp, %i.k
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.gn
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !266
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.gk
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !266
  %i.gu = trunc i64 %i.gq to i32
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gk
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !3
  %i.gw = add i64 %i.gk, 1                        ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3
  %i.ha = zext i32 %i.gz to i64                   ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !24
  %i.hd = sub i64 %i.hc, %i.k
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.ha
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !266
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.gw
  store i16 %i.hf, ptr %i.hg, align 2, !tbaa !266
  %i.hh = trunc i64 %i.hd to i32
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gw
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !3
  %i.hj = add i64 %i.gk, 2                        ; 2 uses
  %i.hk = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond31.not.i.i.1 = icmp eq i64 %i.hk, %5
  br i1 %exitcond31.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4597

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.6.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.7.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0513.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.152.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hn = zext i32 %i.hm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ho = phi i64 [ %i.hn, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ho
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !24
  %i.hr = sub i64 %i.hq, %i.k                     ; 4 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0513.i.i
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3  ; 2 uses
  %i.hu = zext i32 %i.ht to i64                   ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN6duckdbL15MergeUpdateLoopIjEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %scevgep176.i = getelementptr i8, ptr %i.b, i64 %i.ag
  %scevgep177.i = getelementptr i8, ptr %i.ai, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep176.i, ptr align 4 %scevgep177.i, i64 %i.al, i1 false), !tbaa !3
  %i.am = add i64 %.0122.lcssa.i, %.pre-phi.i
  %i.an = sub i64 %i.am, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.by, %bb.k ] ; 3 uses
  %.0122148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2124.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = zext i32 %i.ap to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.ar = phi i64 [ %i.aq, %bb.c ], [ %.075149.i, %bb.b ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24
  %i.au = sub i64 %i.at, %i.k                     ; 6 uses
  %i.av = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.av, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bf, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1123142.i = phi i64 [ %i.bd, %bb.d ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = icmp ugt i64 %i.au, %i.ay
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.173143.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !3
  %i.bd = add i64 %.1123142.i, 1                  ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4599

bb.e:                                             ; preds = %.lr.ph.i
  %i.bg = icmp eq i64 %i.au, %i.ay
  br i1 %i.bg, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.173143.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123142.i
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.ax, ptr %i.bk, align 4, !tbaa !3
  %i.bl = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1123138.i = phi i64 [ %.1123142.i, %bb.e ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bd, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bm = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bm, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.br, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = icmp ugt i64 %i.au, %i.bp
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.br = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond173.not.i = icmp eq i64 %i.br, %i.ad
  br i1 %exitcond173.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4600

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bs = icmp eq i64 %i.au, %i.bp
  br i1 %i.bs, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.au
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.bu, %.critedge2.i ], [ %i.bt, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load i32, ptr %.sink.in.i, align 4, !tbaa !3
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123138.i
  store i32 %.sink.i, ptr %i.bv, align 4, !tbaa !3
  %i.bw = trunc i64 %i.au to i32
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123138.i
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1123137.i = phi i64 [ %.1123142.i, %bb.f ], [ %.1123138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bl, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2124.i = add i64 %.1123137.i, 1               ; 2 uses
  %i.by = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.by, %5
  br i1 %exitcond174.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4601

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3125.lcssa.i = phi i64 [ %.0122.lcssa.i, %.preheader.i ], [ %i.an, %.lr.ph157.preheader.i ] ; 2 uses
  %i.bz = trunc i64 %.3125.lcssa.i to i32
  store i32 %i.bz, ptr %i.ae, align 8, !tbaa !1151
  %i.ca = shl i64 %.3125.lcssa.i, 2               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %i.ca, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.ca, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1151 ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.ce = icmp ne i64 %5, 0
  %i.cf = icmp ne i32 %i.cc, 0
  %i.cg = and i1 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i, %bb.t ] ; 17 uses
  %.051.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.152.i.i, %bb.t ] ; 3 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.ch = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.ch, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !152 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.ci, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.cj = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter113 = and i64 %i.cj, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !24
  %i.cm = sub i64 %i.cl, %i.k
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.0.lcssa.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !3
  %i.ct = trunc i64 %i.cm to i32
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !3
  %i.cv = add i64 %.4.i, 1                        ; 2 uses
  %i.cw = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.unr115 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.cx = icmp eq i64 %5, %.neg117
  br i1 %i.cx, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.cy = shl i64 %.4.i, 2
  %scevgep178.i = getelementptr i8, ptr %i.a, i64 %i.cy
  %i.cz = shl i64 %.0.lcssa.i.i, 2
  %scevgep179.i = getelementptr i8, ptr %i.f, i64 %i.cz
  %i.da = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.db = shl i64 %i.da, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep178.i, ptr readonly align 4 %scevgep179.i, i64 %i.db, i1 false), !tbaa !3
  %min.iters.check = icmp ult i64 %i.da, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.da, -4                      ; 4 uses
  %i.dc = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dd = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.df = getelementptr [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = getelementptr [8 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <2 x i64>, ptr %i.dg, align 8, !tbaa !24
  %wide.load92 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !24
  %i.di = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dj = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.dk = trunc <2 x i64> %i.di to <2 x i32>
  %i.dl = trunc <2 x i64> %i.dj to <2 x i32>
  %i.dm = getelementptr [4 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store <2 x i32> %i.dk, ptr %i.dm, align 4, !tbaa !3
  store <2 x i32> %i.dl, ptr %i.dn, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !4602

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dc, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dd, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %i.dp = phi i64 [ %i.dv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.dw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !24
  %i.ds = sub i64 %i.dr, %i.k
  %i.dt = trunc i64 %i.ds to i32
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dp
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !3
  %i.dv = add i64 %i.dp, 1                        ; 2 uses
  %i.dw = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.dw, %5
  br i1 %exitcond33.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4603

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %i.dx = phi i64 [ %i.ew, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.unr115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.ex, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !24
  %i.ea = sub i64 %i.dz, %i.k
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.28.us.i.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dx
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !3
  %i.eh = trunc i64 %i.ea to i32
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dx
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !3
  %i.ej = add i64 %i.dx, 1                        ; 2 uses
  %i.ek = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !24
  %i.en = sub i64 %i.em, %i.k
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ek
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ej
  store i32 %i.es, ptr %i.et, align 4, !tbaa !3
  %i.eu = trunc i64 %i.en to i32
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ej
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !3
  %i.ew = add i64 %i.dx, 2                        ; 2 uses
  %i.ex = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond32.not.i.i.1 = icmp eq i64 %i.ex, %5
  br i1 %exitcond32.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4604

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.ey = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.ey, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !24
  %i.fe = sub i64 %i.fd, %i.k
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.fb
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !3
  %i.fl = trunc i64 %i.fe to i32
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !3
  %i.fn = add i64 %.4.i, 1                        ; 2 uses
  %i.fo = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fp = icmp eq i64 %5, %.neg
  br i1 %i.fp, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fq = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fq, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = zext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !24
  %i.fw = sub i64 %i.fv, %i.k
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ft
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !3
  %i.ga = trunc i64 %i.fw to i32
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !3
  %i.gc = add i64 %.4.i, 1                        ; 2 uses
  %i.gd = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.unr112 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.ge = icmp eq i64 %5, %.neg116
  br i1 %i.ge, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %i.gf = phi i64 [ %i.he, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.unr112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !24
  %i.gl = sub i64 %i.gk, %i.k
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gi
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gf
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !3
  %i.gp = trunc i64 %i.gl to i32
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gf
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !3
  %i.gr = add i64 %i.gf, 1                        ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3
  %i.gv = zext i32 %i.gu to i64                   ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !24
  %i.gy = sub i64 %i.gx, %i.k
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gv
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !3
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gr
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !3
  %i.hc = trunc i64 %i.gy to i32
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gr
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !3
  %i.he = add i64 %i.gf, 2                        ; 2 uses
  %i.hf = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond31.not.i.i.1 = icmp eq i64 %i.hf, %5
  br i1 %exitcond31.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4604

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.6.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.7.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0513.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.152.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !3
  %i.hi = zext i32 %i.hh to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hj = phi i64 [ %i.hi, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hj
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !24
  %i.hm = sub i64 %i.hl, %i.k                     ; 4 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0513.i.i
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3  ; 2 uses
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6duckdbL15MergeUpdateLoopImEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.ap = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep184.i, ptr align 4 %scevgep185.i, i64 %i.ap, i1 false), !tbaa !3
  %i.aq = add i64 %.0130.lcssa.i, %.pre-phi.i
  %i.ar = sub i64 %i.aq, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph160.i
  %.0159.i = phi i64 [ 0, %.lr.ph160.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072158.i = phi i64 [ 0, %.lr.ph160.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075157.i = phi i64 [ 0, %.lr.ph160.i ], [ %i.cc, %bb.k ] ; 3 uses
  %.0130156.i = phi i64 [ 0, %.lr.ph160.i ], [ %.2132.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075157.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.av = phi i64 [ %i.au, %bb.c ], [ %.075157.i, %bb.b ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.ay = sub i64 %i.ax, %i.k                     ; 6 uses
  %i.az = icmp ult i64 %.072158.i, %i.aa
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173151.i = phi i64 [ %i.bj, %bb.d ], [ %.072158.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1131150.i = phi i64 [ %i.bh, %bb.d ], [ %.0130156.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173151.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3  ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp ugt i64 %i.ay, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.173151.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !24
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1131150.i
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !24
  %i.bh = add i64 %.1131150.i, 1                  ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1131150.i
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !3
  %i.bj = add i64 %.173151.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4606

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = icmp eq i64 %i.ay, %i.bc
  br i1 %i.bk, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.173151.i
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !24
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1131150.i
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1131150.i
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !3
  %i.bp = add nuw nsw i64 %.173151.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1131146.i = phi i64 [ %.1131150.i, %bb.e ], [ %.0130156.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bh, %bb.d ] ; 3 uses
  %.173143.i = phi i64 [ %.173151.i, %bb.e ], [ %.072158.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bq = icmp ult i64 %.0159.i, %i.ad
  br i1 %i.bq, label %.lr.ph154.i, label %.critedge2.i

.lr.ph154.i:                                      ; preds = %.critedge.i, %bb.g
  %.1153.i = phi i64 [ %i.bv, %bb.g ], [ %.0159.i, %.critedge.i ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1153.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.ay, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph154.i
  %i.bv = add i64 %.1153.i, 1                     ; 2 uses
  %exitcond181.not.i = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond181.not.i, label %.critedge2.i, label %.lr.ph154.i, !llvm.loop !4607

bb.h:                                             ; preds = %.lr.ph154.i
  %i.bw = icmp eq i64 %i.ay, %i.bt
  br i1 %i.bw, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1153.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1149.i = phi i64 [ %.1153.i, %bb.h ], [ %.0159.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.by, %.critedge2.i ], [ %i.bx, %bb.i ]
  %.1148.i = phi i64 [ %.1149.i, %.critedge2.i ], [ %.1153.i, %bb.i ]
  %.sink.i = load i64, ptr %.sink.in.i, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1131146.i
  store i64 %.sink.i, ptr %i.bz, align 8, !tbaa !24
  %i.ca = trunc i64 %i.ay to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1131146.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1131145.i = phi i64 [ %.1131150.i, %bb.f ], [ %.1131146.i, %bb.j ]
  %.274.i = phi i64 [ %i.bp, %bb.f ], [ %.173143.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0159.i, %bb.f ], [ %.1148.i, %bb.j ]
  %.2132.i = add i64 %.1131145.i, 1               ; 2 uses
  %i.cc = add nuw i64 %.075157.i, 1               ; 2 uses
  %exitcond182.not.i = icmp eq i64 %i.cc, %5
  br i1 %exitcond182.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4608

._crit_edge.i:                                    ; preds = %.lr.ph165.preheader.i, %.preheader.i
  %.3133.lcssa.i = phi i64 [ %.0130.lcssa.i, %.preheader.i ], [ %i.ar, %.lr.ph165.preheader.i ] ; 3 uses
  %i.cd = trunc i64 %.3133.lcssa.i to i32
  store i32 %i.cd, ptr %i.ae, align 8, !tbaa !1151
  %i.ce = shl i64 %.3133.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = shl i64 %.3133.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1151 ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.cj = icmp ne i64 %5, 0
  %i.ck = icmp ne i32 %i.ch, 0
  %i.cl = and i1 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.12.i, %bb.t ] ; 17 uses
  %.051.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.152.i.i, %bb.t ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cm = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cm, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !152 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cn, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.co = sub i64 %5, %.0.lcssa.i.i
  %.neg115 = add i64 %.0.lcssa.i.i, 1
  %xtraiter112 = and i64 %i.co, 1
  %lcmp.mod113.not = icmp eq i64 %xtraiter112, 0
  br i1 %lcmp.mod113.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !24
  %i.cr = sub i64 %i.cq, %i.k
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0.lcssa.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !24
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !24
  %i.cy = trunc i64 %i.cr to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !3
  %i.da = add i64 %.4.i, 1                        ; 2 uses
  %i.db = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.9.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.dc = icmp eq i64 %5, %.neg115
  br i1 %i.dc, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.dd = shl i64 %.4.i, 3
  %scevgep186.i = getelementptr i8, ptr %i.a, i64 %i.dd
  %i.de = shl i64 %.0.lcssa.i.i, 3
  %scevgep187.i = getelementptr i8, ptr %i.f, i64 %i.de
  %i.df = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.dg = shl i64 %i.df, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep186.i, ptr readonly align 8 %scevgep187.i, i64 %i.dg, i1 false), !tbaa !24
  %min.iters.check = icmp ult i64 %i.df, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.df, -4                      ; 4 uses
  %i.dh = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.di = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.dk = getelementptr [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load = load <2 x i64>, ptr %i.dl, align 8, !tbaa !24
  %wide.load92 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !24
  %i.dn = sub <2 x i64> %wide.load, %broadcast.splat
  %i.do = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.dp = trunc <2 x i64> %i.dn to <2 x i32>
  %i.dq = trunc <2 x i64> %i.do to <2 x i32>
  %i.dr = getelementptr [4 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store <2 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !3
  store <2 x i32> %i.dq, ptr %i.ds, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !4609

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.10.i.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dh, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.di, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %.10.i = phi i64 [ %i.dz, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.10.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !24
  %i.dw = sub i64 %i.dv, %i.k
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.10.i
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !3
  %i.dz = add i64 %.10.i, 1                       ; 2 uses
  %i.ea = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond31.not.i.i = icmp eq i64 %i.ea, %5
  br i1 %exitcond31.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4610

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %.9.i = phi i64 [ %i.ez, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.9.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.fa, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !24
  %i.ed = sub i64 %i.ec, %i.k
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.28.us.i.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !24
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.9.i
  store i64 %i.ei, ptr %i.ej, align 8, !tbaa !24
  %i.ek = trunc i64 %i.ed to i32
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.9.i
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !3
  %i.em = add i64 %.9.i, 1                        ; 2 uses
  %i.en = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !24
  %i.eq = sub i64 %i.ep, %i.k
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.en
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !24
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.em
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !24
  %i.ex = trunc i64 %i.eq to i32
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.em
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !3
  %i.ez = add i64 %.9.i, 2                        ; 2 uses
  %i.fa = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond30.not.i.i.1 = icmp eq i64 %i.fa, %5
  br i1 %exitcond30.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4611

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fb = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = zext i32 %i.fd to i64                   ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !24
  %i.fh = sub i64 %i.fg, %i.k
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.fe
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !24
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !24
  %i.fo = trunc i64 %i.fh to i32
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !3
  %i.fq = add i64 %.4.i, 1                        ; 2 uses
  %i.fr = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.7.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fq, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fs = icmp eq i64 %5, %.neg
  br i1 %i.fs, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.ft = sub i64 %5, %.0.lcssa.i.i
  %.neg114 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.ft, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !3
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fw
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !24
  %i.fz = sub i64 %i.fy, %i.k
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fw
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !24
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !24
  %i.gd = trunc i64 %i.fz to i32
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !3
  %i.gf = add i64 %.4.i, 1                        ; 2 uses
  %i.gg = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.8.i.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gh = icmp eq i64 %5, %.neg114
  br i1 %i.gh, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %.8.i = phi i64 [ %i.hg, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.8.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3
  %i.gk = zext i32 %i.gj to i64                   ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !24
  %i.gn = sub i64 %i.gm, %i.k
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gk
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !24
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.8.i
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !24
  %i.gr = trunc i64 %i.gn to i32
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.8.i
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !3
  %i.gt = add i64 %.8.i, 1                        ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !3
  %i.gx = zext i32 %i.gw to i64                   ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gx
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !24
  %i.ha = sub i64 %i.gz, %i.k
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gx
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !24
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gt
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !24
  %i.he = trunc i64 %i.ha to i32
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gt
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !3
  %i.hg = add i64 %.8.i, 2                        ; 2 uses
  %i.hh = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond29.not.i.i.1 = icmp eq i64 %i.hh, %5
  br i1 %exitcond29.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4611

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.11.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.12.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0513.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.152.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !3
  %i.hk = zext i32 %i.hj to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hl = phi i64 [ %i.hk, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hl
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !24
  %i.ho = sub i64 %i.hn, %i.k                     ; 4 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0513.i.i
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !3  ; 2 uses
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
end_hunk_9
begin_hunk_10_@_ZN6duckdbL15MergeUpdateLoopIfEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %scevgep176.i = getelementptr i8, ptr %i.b, i64 %i.ag
  %scevgep177.i = getelementptr i8, ptr %i.ai, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep176.i, ptr align 4 %scevgep177.i, i64 %i.al, i1 false), !tbaa !3
  %i.am = add i64 %.0122.lcssa.i, %.pre-phi.i
  %i.an = sub i64 %i.am, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.by, %bb.k ] ; 3 uses
  %.0122148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2124.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = zext i32 %i.ap to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.ar = phi i64 [ %i.aq, %bb.c ], [ %.075149.i, %bb.b ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !24
  %i.au = sub i64 %i.at, %i.k                     ; 6 uses
  %i.av = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.av, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bf, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1123142.i = phi i64 [ %i.bd, %bb.d ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3  ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = icmp ugt i64 %i.au, %i.ay
  br i1 %i.az, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.173143.i
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !1877
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123142.i
  store float %i.bb, ptr %i.bc, align 4, !tbaa !1877
  %i.bd = add i64 %.1123142.i, 1                  ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.ax, ptr %i.be, align 4, !tbaa !3
  %i.bf = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4623

bb.e:                                             ; preds = %.lr.ph.i
  %i.bg = icmp eq i64 %i.au, %i.ay
  br i1 %i.bg, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.173143.i
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !1877
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123142.i
  store float %i.bi, ptr %i.bj, align 4, !tbaa !1877
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.ax, ptr %i.bk, align 4, !tbaa !3
  %i.bl = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1123138.i = phi i64 [ %.1123142.i, %bb.e ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bd, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bm = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bm, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.br, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = icmp ugt i64 %i.au, %i.bp
  br i1 %i.bq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.br = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond173.not.i = icmp eq i64 %i.br, %i.ad
  br i1 %exitcond173.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4624

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bs = icmp eq i64 %i.au, %i.bp
  br i1 %i.bs, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.au
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.bu, %.critedge2.i ], [ %i.bt, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load float, ptr %.sink.in.i, align 4, !tbaa !1877
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.1123138.i
  store float %.sink.i, ptr %i.bv, align 4, !tbaa !1877
  %i.bw = trunc i64 %i.au to i32
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123138.i
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1123137.i = phi i64 [ %.1123142.i, %bb.f ], [ %.1123138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bl, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2124.i = add i64 %.1123137.i, 1               ; 2 uses
  %i.by = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.by, %5
  br i1 %exitcond174.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4625

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3125.lcssa.i = phi i64 [ %.0122.lcssa.i, %.preheader.i ], [ %i.an, %.lr.ph157.preheader.i ] ; 2 uses
  %i.bz = trunc i64 %.3125.lcssa.i to i32
  store i32 %i.bz, ptr %i.ae, align 8, !tbaa !1151
  %i.ca = shl i64 %.3125.lcssa.i, 2               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr nonnull align 16 %i.a, i64 %i.ca, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.ca, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1151 ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.ce = icmp ne i64 %5, 0
  %i.cf = icmp ne i32 %i.cc, 0
  %i.cg = and i1 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i, %bb.t ] ; 17 uses
  %.051.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.152.i.i, %bb.t ] ; 3 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.ch = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.ch, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.ci = load ptr, ptr %i.g, align 8, !tbaa !152 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.ci, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.cj = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter113 = and i64 %i.cj, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !24
  %i.cm = sub i64 %i.cl, %i.k
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.0.lcssa.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !1877
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store float %i.cr, ptr %i.cs, align 4, !tbaa !1877
  %i.ct = trunc i64 %i.cm to i32
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !3
  %i.cv = add i64 %.4.i, 1                        ; 2 uses
  %i.cw = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.unr115 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.cw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.cx = icmp eq i64 %5, %.neg117
  br i1 %i.cx, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.cy = shl i64 %.4.i, 2
  %scevgep178.i = getelementptr i8, ptr %i.a, i64 %i.cy
  %i.cz = shl i64 %.0.lcssa.i.i, 2
  %scevgep179.i = getelementptr i8, ptr %i.f, i64 %i.cz
  %i.da = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.db = shl i64 %i.da, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep178.i, ptr readonly align 4 %scevgep179.i, i64 %i.db, i1 false), !tbaa !1877
  %min.iters.check = icmp ult i64 %i.da, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.da, -4                      ; 4 uses
  %i.dc = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.dd = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.df = getelementptr [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = getelementptr [8 x i8], ptr %i.de, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <2 x i64>, ptr %i.dg, align 8, !tbaa !24
  %wide.load92 = load <2 x i64>, ptr %i.dh, align 8, !tbaa !24
  %i.di = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dj = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.dk = trunc <2 x i64> %i.di to <2 x i32>
  %i.dl = trunc <2 x i64> %i.dj to <2 x i32>
  %i.dm = getelementptr [4 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store <2 x i32> %i.dk, ptr %i.dm, align 4, !tbaa !3
  store <2 x i32> %i.dl, ptr %i.dn, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !4626

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dc, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dd, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %i.dp = phi i64 [ %i.dv, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.dw, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !24
  %i.ds = sub i64 %i.dr, %i.k
  %i.dt = trunc i64 %i.ds to i32
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dp
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !3
  %i.dv = add i64 %i.dp, 1                        ; 2 uses
  %i.dw = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.dw, %5
  br i1 %exitcond33.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4627

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %i.dx = phi i64 [ %i.ew, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.unr115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.ex, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !24
  %i.ea = sub i64 %i.dz, %i.k
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.28.us.i.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ed
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !1877
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.dx
  store float %i.ef, ptr %i.eg, align 4, !tbaa !1877
  %i.eh = trunc i64 %i.ea to i32
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dx
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !3
  %i.ej = add i64 %i.dx, 1                        ; 2 uses
  %i.ek = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !24
  %i.en = sub i64 %i.em, %i.k
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ek
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eq
  %i.es = load float, ptr %i.er, align 4, !tbaa !1877
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ej
  store float %i.es, ptr %i.et, align 4, !tbaa !1877
  %i.eu = trunc i64 %i.en to i32
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ej
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !3
  %i.ew = add i64 %i.dx, 2                        ; 2 uses
  %i.ex = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond32.not.i.i.1 = icmp eq i64 %i.ex, %5
  br i1 %exitcond32.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4628

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.ey = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.ey, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fb = zext i32 %i.fa to i64                   ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !24
  %i.fe = sub i64 %i.fd, %i.k
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.fb
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fh
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !1877
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store float %i.fj, ptr %i.fk, align 4, !tbaa !1877
  %i.fl = trunc i64 %i.fe to i32
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !3
  %i.fn = add i64 %.4.i, 1                        ; 2 uses
  %i.fo = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fn, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fo, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fp = icmp eq i64 %5, %.neg
  br i1 %i.fp, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fq = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fq, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = zext i32 %i.fs to i64                   ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ft
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !24
  %i.fw = sub i64 %i.fv, %i.k
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ft
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !1877
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.4.i
  store float %i.fy, ptr %i.fz, align 4, !tbaa !1877
  %i.ga = trunc i64 %i.fw to i32
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !3
  %i.gc = add i64 %.4.i, 1                        ; 2 uses
  %i.gd = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.unr112 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gd, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.ge = icmp eq i64 %5, %.neg116
  br i1 %i.ge, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %i.gf = phi i64 [ %i.he, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.unr112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hf, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gi
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !24
  %i.gl = sub i64 %i.gk, %i.k
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gi
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !1877
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gf
  store float %i.gn, ptr %i.go, align 4, !tbaa !1877
  %i.gp = trunc i64 %i.gl to i32
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gf
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !3
  %i.gr = add i64 %i.gf, 1                        ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !3
  %i.gv = zext i32 %i.gu to i64                   ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gv
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !24
  %i.gy = sub i64 %i.gx, %i.k
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gv
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !1877
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gr
  store float %i.ha, ptr %i.hb, align 4, !tbaa !1877
  %i.hc = trunc i64 %i.gy to i32
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gr
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !3
  %i.he = add i64 %i.gf, 2                        ; 2 uses
  %i.hf = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond31.not.i.i.1 = icmp eq i64 %i.hf, %5
  br i1 %exitcond31.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4628

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.6.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.7.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0513.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.152.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !3
  %i.hi = zext i32 %i.hh to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.hj = phi i64 [ %i.hi, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.hj
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !24
  %i.hm = sub i64 %i.hl, %i.k                     ; 4 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0513.i.i
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !3  ; 2 uses
  %i.hp = zext i32 %i.ho to i64                   ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdbL15MergeUpdateLoopIdEEvRNS_10UpdateInfoERNS_6VectorES2_RNS_19UnifiedVectorFormatEPlmRKNS_15SelectionVectorEm:bb.a
  %i.ap = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep176.i, ptr align 4 %scevgep177.i, i64 %i.ap, i1 false), !tbaa !3
  %i.aq = add i64 %.0122.lcssa.i, %.pre-phi.i
  %i.ar = sub i64 %i.aq, %.072.lcssa.i
  br label %._crit_edge.i

bb.b:                                             ; preds = %bb.k, %.lr.ph152.i
  %.0151.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2.i, %bb.k ] ; 4 uses
  %.072150.i = phi i64 [ 0, %.lr.ph152.i ], [ %.274.i, %bb.k ] ; 3 uses
  %.075149.i = phi i64 [ 0, %.lr.ph152.i ], [ %i.cc, %bb.k ] ; 3 uses
  %.0122148.i = phi i64 [ 0, %.lr.ph152.i ], [ %.2124.i, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.075149.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = zext i32 %i.at to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i:  ; preds = %bb.c, %bb.b
  %i.av = phi i64 [ %i.au, %bb.c ], [ %.075149.i, %bb.b ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !24
  %i.ay = sub i64 %i.ax, %i.k                     ; 6 uses
  %i.az = icmp ult i64 %.072150.i, %i.aa
  br i1 %i.az, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i, %bb.d
  %.173143.i = phi i64 [ %i.bj, %bb.d ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 6 uses
  %.1123142.i = phi i64 [ %i.bh, %bb.d ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ] ; 7 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.173143.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3  ; 3 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp ugt i64 %i.ay, %i.bc
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.173143.i
  %i.bf = load double, ptr %i.be, align 8, !tbaa !1890
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1123142.i
  store double %i.bf, ptr %i.bg, align 8, !tbaa !1890
  %i.bh = add i64 %.1123142.i, 1                  ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bi, align 4, !tbaa !3
  %i.bj = add i64 %.173143.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bj, %i.aa
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !4630

bb.e:                                             ; preds = %.lr.ph.i
  %i.bk = icmp eq i64 %i.ay, %i.bc
  br i1 %i.bk, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.173143.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !1890
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1123142.i
  store double %i.bm, ptr %i.bn, align 8, !tbaa !1890
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123142.i
  store i32 %i.bb, ptr %i.bo, align 4, !tbaa !3
  %i.bp = add nuw nsw i64 %.173143.i, 1
  br label %bb.k

.critedge.i:                                      ; preds = %bb.d, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i
  %.1123138.i = phi i64 [ %.1123142.i, %bb.e ], [ %.0122148.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.bh, %bb.d ] ; 3 uses
  %.173135.i = phi i64 [ %.173143.i, %bb.e ], [ %.072150.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i ], [ %i.aa, %bb.d ]
  %i.bq = icmp ult i64 %.0151.i, %i.ad
  br i1 %i.bq, label %.lr.ph146.i, label %.critedge2.i

.lr.ph146.i:                                      ; preds = %.critedge.i, %bb.g
  %.1145.i = phi i64 [ %i.bv, %bb.g ], [ %.0151.i, %.critedge.i ] ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.1145.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = icmp ugt i64 %i.ay, %i.bt
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph146.i
  %i.bv = add i64 %.1145.i, 1                     ; 2 uses
  %exitcond173.not.i = icmp eq i64 %i.bv, %i.ad
  br i1 %exitcond173.not.i, label %.critedge2.i, label %.lr.ph146.i, !llvm.loop !4631

bb.h:                                             ; preds = %.lr.ph146.i
  %i.bw = icmp eq i64 %i.ay, %i.bt
  br i1 %i.bw, label %bb.i, label %.critedge2.i

bb.i:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.1145.i
  br label %bb.j

.critedge2.i:                                     ; preds = %bb.g, %bb.h, %.critedge.i
  %.1141.i = phi i64 [ %.1145.i, %bb.h ], [ %.0151.i, %.critedge.i ], [ %i.ad, %bb.g ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ay
  br label %bb.j

bb.j:                                             ; preds = %.critedge2.i, %bb.i
  %.sink.in.i = phi ptr [ %i.by, %.critedge2.i ], [ %i.bx, %bb.i ]
  %.1140.i = phi i64 [ %.1141.i, %.critedge2.i ], [ %.1145.i, %bb.i ]
  %.sink.i = load double, ptr %.sink.in.i, align 8, !tbaa !1890
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1123138.i
  store double %.sink.i, ptr %i.bz, align 8, !tbaa !1890
  %i.ca = trunc i64 %i.ay to i32
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1123138.i
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1123137.i = phi i64 [ %.1123142.i, %bb.f ], [ %.1123138.i, %bb.j ]
  %.274.i = phi i64 [ %i.bp, %bb.f ], [ %.173135.i, %bb.j ] ; 2 uses
  %.2.i = phi i64 [ %.0151.i, %bb.f ], [ %.1140.i, %bb.j ]
  %.2124.i = add i64 %.1123137.i, 1               ; 2 uses
  %i.cc = add nuw i64 %.075149.i, 1               ; 2 uses
  %exitcond174.not.i = icmp eq i64 %i.cc, %5
  br i1 %exitcond174.not.i, label %.preheader.i, label %bb.b, !llvm.loop !4632

._crit_edge.i:                                    ; preds = %.lr.ph157.preheader.i, %.preheader.i
  %.3125.lcssa.i = phi i64 [ %.0122.lcssa.i, %.preheader.i ], [ %i.ar, %.lr.ph157.preheader.i ] ; 3 uses
  %i.cd = trunc i64 %.3125.lcssa.i to i32
  store i32 %i.cd, ptr %i.ae, align 8, !tbaa !1151
  %i.ce = shl i64 %.3125.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 16 %i.a, i64 %i.ce, i1 false)
  %i.cf = shl i64 %.3125.lcssa.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 16 %i.b, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !1151 ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 3 uses
  %.val.i = load ptr, ptr %6, align 8             ; 9 uses
  %i.cj = icmp ne i64 %5, 0
  %i.ck = icmp ne i32 %i.ch, 0
  %i.cl = and i1 %i.cj, %i.ck
  br i1 %i.cl, label %.lr.ph.i.i, label %.preheader1.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br label %bb.l

.preheader1.i.i:                                  ; preds = %bb.t, %._crit_edge.i
  %.4.i = phi i64 [ 0, %._crit_edge.i ], [ %.7.i, %bb.t ] ; 17 uses
  %.051.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.152.i.i, %bb.t ] ; 4 uses
  %.0.lcssa.i.i = phi i64 [ 0, %._crit_edge.i ], [ %.1.i.i, %bb.t ] ; 22 uses
  %i.cm = icmp ult i64 %.0.lcssa.i.i, %5
  br i1 %i.cm, label %.lr.ph9.i.i, label %.preheader.i.i

.lr.ph9.i.i:                                      ; preds = %.preheader1.i.i
  %.not.i60.i.i = icmp eq ptr %.val.i, null
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !152 ; 7 uses
  %.not.i.i62.i.i = icmp eq ptr %i.cn, null       ; 2 uses
  br i1 %.not.i60.i.i, label %.lr.ph9.split.us.i.i, label %.lr.ph9.split.i.i

.lr.ph9.split.us.i.i:                             ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader: ; preds = %.lr.ph9.split.us.i.i
  %i.co = sub i64 %5, %.0.lcssa.i.i
  %.neg117 = add i64 %.0.lcssa.i.i, 1
  %xtraiter113 = and i64 %i.co, 1
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !24
  %i.cr = sub i64 %i.cq, %i.k
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0.lcssa.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !1890
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store double %i.cw, ptr %i.cx, align 8, !tbaa !1890
  %i.cy = trunc i64 %i.cr to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !3
  %i.da = add i64 %.4.i, 1                        ; 2 uses
  %i.db = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader
  %.lcssa95.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.unr115 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.da, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %.28.us.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.preheader ], [ %i.db, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol ]
  %i.dc = icmp eq i64 %5, %.neg117
  br i1 %i.dc, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i: ; preds = %.lr.ph9.split.us.i.i
  %i.dd = shl i64 %.4.i, 3
  %scevgep178.i = getelementptr i8, ptr %i.a, i64 %i.dd
  %i.de = shl i64 %.0.lcssa.i.i, 3
  %scevgep179.i = getelementptr i8, ptr %i.f, i64 %i.de
  %i.df = sub i64 %5, %.0.lcssa.i.i               ; 4 uses
  %i.dg = shl i64 %i.df, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep178.i, ptr readonly align 8 %scevgep179.i, i64 %i.dg, i1 false), !tbaa !1890
  %min.iters.check = icmp ult i64 %i.df, 4
  br i1 %min.iters.check, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i
  %n.vec = and i64 %i.df, -4                      ; 4 uses
  %i.dh = add i64 %.4.i, %n.vec                   ; 2 uses
  %i.di = add i64 %.0.lcssa.i.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %4, i64 %.0.lcssa.i.i
  %i.dk = getelementptr [4 x i8], ptr %i.b, i64 %.4.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load = load <2 x i64>, ptr %i.dl, align 8, !tbaa !24
  %wide.load92 = load <2 x i64>, ptr %i.dm, align 8, !tbaa !24
  %i.dn = sub <2 x i64> %wide.load, %broadcast.splat
  %i.do = sub <2 x i64> %wide.load92, %broadcast.splat
  %i.dp = trunc <2 x i64> %i.dn to <2 x i32>
  %i.dq = trunc <2 x i64> %i.do to <2 x i32>
  %i.dr = getelementptr [4 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store <2 x i32> %i.dp, ptr %i.dr, align 4, !tbaa !3
  store <2 x i32> %i.dq, ptr %i.ds, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !4633

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i, %middle.block
  %.ph = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.dh, %middle.block ]
  %.28.us.us.i.i.ph = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.preheader.i ], [ %i.di, %middle.block ]
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i
  %i.du = phi i64 [ %i.ea, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %.28.us.us.i.i = phi i64 [ %i.eb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i ], [ %.28.us.us.i.i.ph, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.us.i.i
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !24
  %i.dx = sub i64 %i.dw, %i.k
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.du
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !3
  %i.ea = add i64 %i.du, 1                        ; 2 uses
  %i.eb = add nuw i64 %.28.us.us.i.i, 1           ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %i.eb, %5
  br i1 %exitcond33.not.i.i, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.us.i.i, !llvm.loop !4634

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i
  %i.ec = phi i64 [ %i.fb, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.unr115, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %.28.us.i.i = phi i64 [ %i.fc, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i ], [ %.28.us.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i.prol.loopexit ] ; 4 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.28.us.i.i
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !24
  %i.ef = sub i64 %i.ee, %i.k
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.28.us.i.i
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ei
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !1890
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ec
  store double %i.ek, ptr %i.el, align 8, !tbaa !1890
  %i.em = trunc i64 %i.ef to i32
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ec
  store i32 %i.em, ptr %i.en, align 4, !tbaa !3
  %i.eo = add i64 %i.ec, 1                        ; 2 uses
  %i.ep = add nuw i64 %.28.us.i.i, 1              ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !24
  %i.es = sub i64 %i.er, %i.k
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.ep
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !3
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ev
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !1890
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.eo
  store double %i.ex, ptr %i.ey, align 8, !tbaa !1890
  %i.ez = trunc i64 %i.es to i32
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eo
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !3
  %i.fb = add i64 %i.ec, 2                        ; 2 uses
  %i.fc = add nuw i64 %.28.us.i.i, 2              ; 2 uses
  %exitcond32.not.i.i.1 = icmp eq i64 %i.fc, %5
  br i1 %exitcond32.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us.i.i, !llvm.loop !4635

.lr.ph9.split.i.i:                                ; preds = %.lr.ph9.i.i
  br i1 %.not.i.i62.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fd = sub i64 %5, %.0.lcssa.i.i
  %.neg = add i64 %.0.lcssa.i.i, 1
  %xtraiter = and i64 %i.fd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !3
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !24
  %i.fj = sub i64 %i.fi, %i.k
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.fg
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !3
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fm
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !1890
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store double %i.fo, ptr %i.fp, align 8, !tbaa !1890
  %i.fq = trunc i64 %i.fj to i32
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.fq, ptr %i.fr, align 4, !tbaa !3
  %i.fs = add i64 %.4.i, 1                        ; 2 uses
  %i.ft = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.unr = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.fs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %.28.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.preheader ], [ %i.ft, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i.prol ]
  %i.fu = icmp eq i64 %5, %.neg
  br i1 %i.fu, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader: ; preds = %.lr.ph9.split.i.i
  %i.fv = sub i64 %5, %.0.lcssa.i.i
  %.neg116 = add i64 %.0.lcssa.i.i, 1
  %xtraiter110 = and i64 %i.fv, 1
  %lcmp.mod111.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.0.lcssa.i.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !24
  %i.gb = sub i64 %i.ga, %i.k
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fy
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !1890
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4.i
  store double %i.gd, ptr %i.ge, align 8, !tbaa !1890
  %i.gf = trunc i64 %i.gb to i32
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.4.i
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !3
  %i.gh = add i64 %.4.i, 1                        ; 2 uses
  %i.gi = add nuw i64 %.0.lcssa.i.i, 1
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader
  %.lcssa97.unr = phi i64 [ poison, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.unr112 = phi i64 [ %.4.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gh, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %.28.us12.i.i.unr = phi i64 [ %.0.lcssa.i.i, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.preheader ], [ %i.gi, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol ]
  %i.gj = icmp eq i64 %5, %.neg116
  br i1 %i.gj, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i: ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i
  %i.gk = phi i64 [ %i.hj, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.unr112, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 4 uses
  %.28.us12.i.i = phi i64 [ %i.hk, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i ], [ %.28.us12.i.i.unr, %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i.prol.loopexit ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !3
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !24
  %i.gq = sub i64 %i.gp, %i.k
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.gn
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !1890
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gk
  store double %i.gs, ptr %i.gt, align 8, !tbaa !1890
  %i.gu = trunc i64 %i.gq to i32
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gk
  store i32 %i.gu, ptr %i.gv, align 4, !tbaa !3
  %i.gw = add i64 %i.gk, 1                        ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.28.us12.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !3
  %i.ha = zext i32 %i.gz to i64                   ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ha
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !24
  %i.hd = sub i64 %i.hc, %i.k
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ha
  %i.hf = load double, ptr %i.he, align 8, !tbaa !1890
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gw
  store double %i.hf, ptr %i.hg, align 8, !tbaa !1890
  %i.hh = trunc i64 %i.hd to i32
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gw
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !3
  %i.hj = add i64 %i.gk, 2                        ; 2 uses
  %i.hk = add nuw i64 %.28.us12.i.i, 2            ; 2 uses
  %exitcond31.not.i.i.1 = icmp eq i64 %i.hk, %5
  br i1 %exitcond31.not.i.i.1, label %.preheader.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit61.us11.i.i, !llvm.loop !4635

bb.l:                                             ; preds = %bb.t, %.lr.ph.i.i
  %.6.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.7.i, %bb.t ] ; 7 uses
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.t ] ; 5 uses
  %.0513.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %.152.i.i, %bb.t ] ; 5 uses
  br i1 %.not.i.i.i, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %.04.i.i
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !3
  %i.hn = zext i32 %i.hm to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i

_ZNK6duckdb15SelectionVector9get_indexEm.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ho = phi i64 [ %i.hn, %bb.m ], [ %.04.i.i, %bb.l ] ; 5 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ho
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !24
  %i.hr = sub i64 %i.hq, %i.k                     ; 4 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.0513.i.i
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3  ; 2 uses
  %i.hu = zext i32 %i.ht to i64                   ; 2 uses
end_hunk_11
