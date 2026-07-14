inline.NumInlined: 11767
inline.NumDeleted: 5033
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN6duckdb29SubtractOperatorOverflowCheck9OperationIlllEET1_T_T0_:bb.a
bb.n:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowIndexTreeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1049   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_15WindowIndexTreeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !193

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !156    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_15WindowIndexTreeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb24WindowFirstValueExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 104)) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb19WindowValueExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb24WindowFirstValueExecutorE, i64 16), ptr %0, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !244, !nonnull !42, !align !232 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !246, !nonnull !42, !align !232 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.e = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 368 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_12ValidityMaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1465
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !995, !nonnull !42, !align !232
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !231, !nonnull !42, !align !232
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 212
  %i.o = load i8, ptr %i.n, align 4, !tbaa !161   ; 3 uses
  %i.p = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 6) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !316
  %i.s = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 7) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !316
  %i.v = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !316
  %i.y = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !316
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNKS_24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEE3$_0EEvRKS5_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.ab = icmp eq i8 %i.o, 0
  %i.ac = icmp eq i8 %i.o, 1                      ; 2 uses
  %i.ad = icmp eq i8 %i.o, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i", %.lr.ph.i
  %.080.i = phi i64 [ 0, %.lr.ph.i ], [ %i.et, %"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i" ] ; 10 uses
  %.05977.i = phi i64 [ %5, %.lr.ph.i ], [ %i.eu, %"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i" ] ; 5 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.080.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !252 ; 6 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.080.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !252 ; 5 uses
  br i1 %i.ab, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.080.i
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !252
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = phi i64 [ %i.ap, %bb.d ], [ %.05977.i, %bb.c ]
  %i.ar = tail call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %i.an)
  %i.as = tail call noundef i64 @llvm.umax.i64(i64 %i.ar, i64 %i.al)
  %i.at = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0) ; 2 uses
  store i64 %i.al, ptr %i.at, align 8, !tbaa !252
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 %i.as, ptr %.sroa.465.0..sroa_idx.i, align 8, !tbaa !252
  br i1 %i.ad, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.au = tail call noundef i64 @llvm.umax.i64(i64 %.05977.i, i64 %i.al)
  %i.av = tail call noundef i64 @llvm.umin.i64(i64 %i.au, i64 %i.an)
  %i.aw = add i64 %.05977.i, 1
  %i.ax = tail call noundef i64 @llvm.umin.i64(i64 %i.aw, i64 %i.an)
  %i.ay = tail call noundef i64 @llvm.umax.i64(i64 %i.ax, i64 %i.al)
  %i.az = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1) ; 2 uses
  store i64 %i.av, ptr %i.az, align 8, !tbaa !252
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %i.ay, ptr %.sroa.463.0..sroa_idx.i, align 8, !tbaa !252
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = add i64 %.05977.i, 1
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %.thread.i
  %.06070.i = phi i64 [ 2, %.thread.i ], [ 1, %bb.f ]
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.080.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !252
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.06069.i = phi i64 [ 1, %bb.g ], [ %.06070.i, %bb.h ]
  %i.bd = phi i64 [ %i.ba, %bb.g ], [ %i.bc, %bb.h ]
  %i.be = tail call noundef i64 @llvm.umax.i64(i64 %i.bd, i64 %i.al)
  %i.bf = tail call noundef i64 @llvm.umin.i64(i64 %i.be, i64 %i.an)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  %.06069.sink.i = phi i64 [ %.06069.i, %bb.i ], [ 0, %bb.b ]
  %.sink105.i = phi i64 [ %i.bf, %bb.i ], [ %i.al, %bb.b ]
  %i.bg = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.06069.sink.i) ; 2 uses
  store i64 %.sink105.i, ptr %i.bg, align 8, !tbaa !252
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.an, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !252
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !1049
  %.not47.i.i = icmp eq ptr %i.bh, null
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !1093 ; 7 uses
  %7 = ptrtoint ptr %i.bi to i64
  %i.bj = load ptr, ptr %i.af, align 8, !tbaa !1093 ; 4 uses
  %8 = ptrtoint ptr %i.bj to i64
  %.not4856.i.i = icmp eq ptr %i.bi, %i.bj        ; 2 uses
  br i1 %.not47.i.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %.not4856.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.k
  %9 = add i64 %8, -16
  %i.bk = sub i64 %9, %7                          ; 2 uses
  %i.bl = lshr i64 %i.bk, 4
  %i.bm = add nuw nsw i64 %i.bl, 1                ; 2 uses
  %min.iters.check58 = icmp ult i64 %i.bk, 48
  br i1 %min.iters.check58, label %.lr.ph.i.i.preheader76, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec61 = and i64 %i.bm, 2305843009213693948   ; 3 uses
  %i.bn = shl i64 %n.vec61, 4
  %i.bo = getelementptr i8, ptr %i.bi, i64 %i.bn
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph59
  %index63 = phi i64 [ 0, %vector.ph59 ], [ %index.next70, %vector.body62 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph59 ], [ %i.bt, %vector.body62 ]
  %vec.phi64 = phi <2 x i64> [ zeroinitializer, %vector.ph59 ], [ %i.bu, %vector.body62 ]
  %i.bp = shl i64 %index63, 4                     ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bi, i64 %i.bp
  %i.bq = getelementptr i8, ptr %i.bi, i64 %i.bp
  %next.gep65 = getelementptr i8, ptr %i.bq, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !252 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec66 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec67 = load <4 x i64>, ptr %next.gep65, align 8, !tbaa !252 ; 2 uses
  %strided.vec68 = shufflevector <4 x i64> %wide.vec67, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec69 = shufflevector <4 x i64> %wide.vec67, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.br = add <2 x i64> %strided.vec66, %vec.phi
  %i.bs = add <2 x i64> %strided.vec69, %vec.phi64
  %i.bt = sub <2 x i64> %i.br, %strided.vec       ; 2 uses
  %i.bu = sub <2 x i64> %i.bs, %strided.vec68     ; 2 uses
  %index.next70 = add nuw i64 %index63, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next70, %n.vec61
  br i1 %i.bv, label %middle.block71, label %vector.body62, !llvm.loop !1475

middle.block71:                                   ; preds = %vector.body62
  %bin.rdx = add <2 x i64> %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n72 = icmp eq i64 %i.bm, %n.vec61
  br i1 %cmp.n72, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader76

.lr.ph.i.i.preheader76:                           ; preds = %.lr.ph.i.i.preheader, %middle.block71
  %.055.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bw, %middle.block71 ]
  %.sroa.034.054.i.i.ph = phi ptr [ %i.bi, %.lr.ph.i.i.preheader ], [ %i.bo, %middle.block71 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block71
  %.lcssa = phi i64 [ %i.bw, %middle.block71 ], [ %i.cc, %.lr.ph.i.i ]
  %i.bx = icmp eq i64 %.lcssa, 0
  br i1 %i.bx, label %._crit_edge.thread.i.i, label %bb.l

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader76, %.lr.ph.i.i
  %.055.i.i = phi i64 [ %i.cc, %.lr.ph.i.i ], [ %.055.i.i.ph, %.lr.ph.i.i.preheader76 ]
  %.sroa.034.054.i.i = phi ptr [ %i.cd, %.lr.ph.i.i ], [ %.sroa.034.054.i.i.ph, %.lr.ph.i.i.preheader76 ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.034.054.i.i, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !975
  %i.ca = load i64, ptr %.sroa.034.054.i.i, align 8, !tbaa !974
  %i.cb = add i64 %i.bz, %.055.i.i
  %i.cc = sub i64 %i.cb, %i.ca                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.034.054.i.i, i64 16 ; 2 uses
  %.not49.i.i = icmp eq ptr %i.cd, %i.bj
  br i1 %.not49.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1476

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ce = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowIndexTreeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
  %i.cf = tail call { i64, i64 } @_ZNK6duckdb15WindowIndexTree9SelectNthERKNS_6vectorINS_11FrameBoundsELb1ESaIS2_EEEm(ptr noundef nonnull align 8 dereferenceable(240) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0)
  %i.cg = extractvalue { i64, i64 } %i.cf, 0      ; 5 uses
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !510, !nonnull !42, !align !232 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !578
  %i.ck = icmp ult i64 %i.cg, %i.cj
  br i1 %i.ck, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cl = load i64, ptr %i.ag, align 8, !tbaa !499
  %i.cm = icmp ult i64 %i.cg, %i.cl
  %i.cn = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.co = icmp ule i64 %i.cn, %i.cg
  %i.cp = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %i.cp, label %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ch)
  %i.cr = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.cq, i64 noundef %i.cg, ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.aj) ; 0 uses
  %.pre.i.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !511
  br label %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i.i

_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i.i: ; preds = %bb.n, %bb.m
  %i.cs = phi i64 [ %.pre.i.i.i.i, %bb.n ], [ %i.cn, %bb.m ]
  %i.ct = sub i64 %i.cg, %i.cs
  %i.cu = and i64 %i.ct, 4294967295               ; 2 uses
  %i.cv = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef 0)
  %i.cw = add nuw nsw i64 %i.cu, 1
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.cv, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.cw, i64 noundef %i.cu, i64 noundef %.080.i)
  br label %"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

bb.o:                                             ; preds = %bb.l
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.080.i, i1 noundef zeroext true)
  br label %"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.k
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.080.i, i1 noundef zeroext true)
  br label %"_ZZNK6duckdb24WindowFirstValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

bb.p:                                             ; preds = %bb.j
  br i1 %.not4856.i.i, label %._crit_edge60.i.i, label %.lr.ph59.i.i

.lr.ph59.i.i:                                     ; preds = %bb.p, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread78.i.i
  %.sroa.030.057.i.i = phi ptr [ %i.en, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread78.i.i ], [ %i.bi, %bb.p ] ; 3 uses
  %i.cx = load i64, ptr %.sroa.030.057.i.i, align 8, !tbaa !974 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.030.057.i.i, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !975 ; 5 uses
  %.not.i.i = icmp ult i64 %i.cx, %i.cz
  br i1 %.not.i.i, label %bb.q, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread78.i.i

bb.q:                                             ; preds = %.lr.ph59.i.i
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !408 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.q, %.loopexit.i.i.i
  %.02445.i.i.i = phi i64 [ %.226.i.i.i, %.loopexit.i.i.i ], [ %i.cx, %bb.q ] ; 9 uses
  %i.db = lshr i64 %.02445.i.i.i, 6
  %i.dc = and i64 %.02445.i.i.i, 63               ; 5 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.db
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !252 ; 3 uses
  %i.df = or i64 %i.de, %i.dc
  %or.cond.not.i.i.i = icmp eq i64 %i.df, 0
  br i1 %or.cond.not.i.i.i, label %bb.r, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.dg = icmp ult i64 %.02445.i.i.i, %i.cz
  br i1 %i.dg, label %.lr.ph.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader.i.i.i
  %i.dh = xor i64 %.02445.i.i.i, -1
  %i.di = add i64 %i.cz, %i.dh
  %i.dj = xor i64 %i.dc, 63
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.di, i64 %i.dj) ; 2 uses
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.dk, 15
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.dl, 112                     ; 4 uses
  %i.dm = add i64 %.02445.i.i.i, %n.vec           ; 2 uses
  %i.dn = add nuw nsw i64 %i.dc, %n.vec
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %i.de, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <16 x i64> poison, i64 %i.dc, i64 0
  %broadcast.splat55 = shufflevector <16 x i64> %broadcast.splatinsert54, <16 x i64> poison, <16 x i32> zeroinitializer
  %induction = add nuw nsw <16 x i64> %broadcast.splat55, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.do = shl nuw <16 x i64> splat (i64 1), %vec.ind
  %i.dp = and <16 x i64> %i.do, %broadcast.splat
  %.fr = freeze <16 x i64> %i.dp
  %i.dq = icmp ne <16 x i64> %.fr, zeroinitializer ; 2 uses
  %i.dr = bitcast <16 x i1> %i.dq to i16
  %.not = icmp eq i16 %i.dr, 0
  br i1 %.not, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16)
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !1477

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader74

.lr.ph.i.i.i.preheader74:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.12544.i.i.i.ph = phi i64 [ %.02445.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.dm, %middle.block ]
  %.03643.i.i.i.ph = phi i64 [ %i.dc, %.lr.ph.i.i.i.preheader ], [ %i.dn, %middle.block ]
  br label %.lr.ph.i.i.i

vector.early.exit:                                ; preds = %vector.body
  %i.dt = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.dq, i1 false)
  %i.du = add i64 %index, %i.dt
  %i.dv = add i64 %.02445.i.i.i, %i.du
  br label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i

bb.r:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.dw = add i64 %.02445.i.i.i, 64
  br label %.loopexit.i.i.i, !llvm.loop !409

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader74, %bb.s
  %.12544.i.i.i = phi i64 [ %i.ea, %bb.s ], [ %.12544.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 2 uses
  %.03643.i.i.i = phi i64 [ %i.dz, %bb.s ], [ %.03643.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 3 uses
  %i.dx = shl nuw i64 1, %.03643.i.i.i
  %i.dy = and i64 %i.dx, %i.de
  %.not.i.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i, label %bb.s, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.dz = add nuw nsw i64 %.03643.i.i.i, 1
  %i.ea = add nuw i64 %.12544.i.i.i, 1            ; 3 uses
  %i.eb = icmp samesign ult i64 %.03643.i.i.i, 63
  %i.ec = icmp ult i64 %i.ea, %i.cz
  %i.ed = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %i.ed, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !1478
end_hunk_0
begin_hunk_1_@_ZN6duckdb22WindowNthValueExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE:bb.a
  tail call void @_ZN6duckdb19WindowValueExecutorC2ERNS_21BoundWindowExpressionERNS_23WindowSharedExpressionsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(248) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6duckdb22WindowNthValueExecutorE, i64 16), ptr %0, align 8, !tbaa !135
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb22WindowNthValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %6, align 8, !tbaa !244, !nonnull !42, !align !232 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !246, !nonnull !42, !align !232 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  %i.e = tail call noundef nonnull align 8 dereferenceable(224) ptr @_ZNK6duckdb10unique_ptrINS_12WindowCursorESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 368 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_12ValidityMaskELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1465
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !995, !nonnull !42, !align !232
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !231, !nonnull !42, !align !232
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 212
  %i.o = load i8, ptr %i.n, align 4, !tbaa !161   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1447 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !568
  %i.t = load ptr, ptr %2, align 8, !tbaa !569
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 104
  %i.y = icmp ult i64 %i.q, %i.x
  br i1 %i.y, label %bb.b, label %_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit

bb.b:                                             ; preds = %bb.a
  %i.z = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %2, i64 noundef %i.q) ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !999  ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 2                     ; 3 uses
  switch i8 %i.aa, label %bb.c [
    i8 2, label %_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit
    i8 0, label %_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !465
  tail call void @_ZN6duckdb6Vector7FlattenEm(ptr noundef nonnull align 8 dereferenceable(104) %i.z, i64 noundef %i.ad)
  br label %_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit

_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit: ; preds = %bb.a, %bb.b, %bb.b, %bb.c
  %.sroa.4.0.shrunk = phi i1 [ %i.ab, %bb.c ], [ %i.ab, %bb.b ], [ %i.ab, %bb.b ], [ true, %bb.a ]
  %i.ae = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 6) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !316
  %i.ah = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 7) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !316
  %i.ak = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 2) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !316
  %i.an = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZNK6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 noundef 3) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIKmEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.an)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !316
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %"_ZN6duckdb16WindowAggregator17EvaluateSubFramesIZNKS_22WindowNthValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEE3$_0EEvRKS5_NS_17WindowExcludeModeEmmRNS_6vectorINS_11FrameBoundsELb1ESaISG_EEET_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN6duckdb21WindowInputExpressionC2ERNS_9DataChunkEm.exit
  %i.aq = icmp eq i8 %i.o, 0
  %i.ar = icmp eq i8 %i.o, 1                      ; 2 uses
  %i.as = icmp eq i8 %i.o, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 152 ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %"_ZZNK6duckdb22WindowNthValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i", %.lr.ph.i
  %.078.i = phi i64 [ 0, %.lr.ph.i ], [ %i.fy, %"_ZZNK6duckdb22WindowNthValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i" ] ; 16 uses
  %.05975.i = phi i64 [ %5, %.lr.ph.i ], [ %i.fz, %"_ZZNK6duckdb22WindowNthValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i" ] ; 5 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.078.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !252 ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.078.i
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !252 ; 5 uses
  br i1 %i.aq, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.078.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !252
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bf = phi i64 [ %i.be, %bb.f ], [ %.05975.i, %bb.e ]
  %i.bg = tail call noundef i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bc)
  %i.bh = tail call noundef i64 @llvm.umax.i64(i64 %i.bg, i64 %i.ba)
  %i.bi = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0) ; 2 uses
  store i64 %i.ba, ptr %i.bi, align 8, !tbaa !252
  %.sroa.465.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 %i.bh, ptr %.sroa.465.0..sroa_idx.i, align 8, !tbaa !252
  br i1 %i.as, label %.thread.i, label %bb.h

.thread.i:                                        ; preds = %bb.g
  %i.bj = tail call noundef i64 @llvm.umax.i64(i64 %.05975.i, i64 %i.ba)
  %i.bk = tail call noundef i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bc)
  %i.bl = add i64 %.05975.i, 1
  %i.bm = tail call noundef i64 @llvm.umin.i64(i64 %i.bl, i64 %i.bc)
  %i.bn = tail call noundef i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ba)
  %i.bo = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 1) ; 2 uses
  store i64 %i.bk, ptr %i.bo, align 8, !tbaa !252
  %.sroa.463.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.bn, ptr %.sroa.463.0..sroa_idx.i, align 8, !tbaa !252
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = add i64 %.05975.i, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %.thread.i
  %.06070.i = phi i64 [ 2, %.thread.i ], [ 1, %bb.h ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.078.i
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !252
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.06069.i = phi i64 [ 1, %bb.i ], [ %.06070.i, %bb.j ]
  %i.bs = phi i64 [ %i.bp, %bb.i ], [ %i.br, %bb.j ]
  %i.bt = tail call noundef i64 @llvm.umax.i64(i64 %i.bs, i64 %i.ba)
  %i.bu = tail call noundef i64 @llvm.umin.i64(i64 %i.bt, i64 %i.bc)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.06069.sink.i = phi i64 [ %.06069.i, %bb.k ], [ 0, %bb.d ]
  %.sink104.i = phi i64 [ %i.bu, %bb.k ], [ %i.ba, %bb.d ]
  %i.bv = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_11FrameBoundsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.06069.sink.i) ; 2 uses
  store i64 %.sink104.i, ptr %i.bv, align 8, !tbaa !252
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.bc, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !252
  %i.bw = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.q)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !408 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.by, null       ; 2 uses
  br i1 %.sroa.4.0.shrunk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread.i.i, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.i.i

bb.n:                                             ; preds = %bb.l
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = lshr i64 %.078.i, 6
  %i.ca = and i64 %.078.i, 63
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bz
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !252
  %i.cd = shl nuw i64 1, %i.ca
  %i.ce = and i64 %i.cc, %i.cd
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.p, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread.i.i

_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.i.i: ; preds = %bb.m
  %i.cg = load i64, ptr %i.by, align 8, !tbaa !252
  %i.ch = trunc i64 %i.cg to i1
  br i1 %i.ch, label %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.i.i, %bb.o
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.078.i, i1 noundef zeroext true)
  br label %"_ZZNK6duckdb22WindowNthValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread.i.i: ; preds = %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.i.i, %bb.o, %bb.n, %bb.m
  %i.ci = phi i64 [ 0, %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.i.i ], [ %.078.i, %bb.o ], [ %.078.i, %bb.n ], [ 0, %bb.m ]
  %i.cj = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.q) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIlEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.cj)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !316
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ci
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !252 ; 3 uses
  %i.co = icmp slt i64 %i.cn, 1
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread.i.i
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.078.i, i1 noundef zeroext true)
  br label %"_ZZNK6duckdb22WindowNthValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

bb.r:                                             ; preds = %_ZNK6duckdb21WindowInputExpression10CellIsNullEm.exit.thread.i.i
  %i.cp = load ptr, ptr %i.at, align 8, !tbaa !1049
  %.not58.i.i = icmp eq ptr %i.cp, null
  %i.cq = load ptr, ptr %i.g, align 8, !tbaa !1093 ; 7 uses
  %7 = ptrtoint ptr %i.cq to i64
  %i.cr = load ptr, ptr %i.au, align 8, !tbaa !1093 ; 4 uses
  %8 = ptrtoint ptr %i.cr to i64
  %.not5967.i.i = icmp eq ptr %i.cq, %i.cr        ; 2 uses
  br i1 %.not58.i.i, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  br i1 %.not5967.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.s
  %9 = add i64 %8, -16
  %i.cs = sub i64 %9, %7                          ; 2 uses
  %i.ct = lshr i64 %i.cs, 4
  %i.cu = add nuw nsw i64 %i.ct, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cs, 48
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader66, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.cu, 2305843009213693948     ; 3 uses
  %i.cv = shl i64 %n.vec, 4
  %i.cw = getelementptr i8, ptr %i.cq, i64 %i.cv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.db, %vector.body ]
  %vec.phi59 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.dc, %vector.body ]
  %i.cx = shl i64 %index, 4                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cq, i64 %i.cx
  %i.cy = getelementptr i8, ptr %i.cq, i64 %i.cx
  %next.gep60 = getelementptr i8, ptr %i.cy, i64 32
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !tbaa !252 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec61 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec62 = load <4 x i64>, ptr %next.gep60, align 8, !tbaa !252 ; 2 uses
  %strided.vec63 = shufflevector <4 x i64> %wide.vec62, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec64 = shufflevector <4 x i64> %wide.vec62, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.cz = add <2 x i64> %strided.vec61, %vec.phi
  %i.da = add <2 x i64> %strided.vec64, %vec.phi59
  %i.db = sub <2 x i64> %i.cz, %strided.vec       ; 2 uses
  %i.dc = sub <2 x i64> %i.da, %strided.vec63     ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !1484

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.dc, %i.db
  %i.de = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.cu, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader66

.lr.ph.i.i.preheader66:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.02966.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.de, %middle.block ]
  %.sroa.041.065.i.i.ph = phi ptr [ %i.cq, %.lr.ph.i.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i64 [ %i.de, %middle.block ], [ %i.dl, %.lr.ph.i.i ]
  %i.df = add nsw i64 %i.cn, -1                   ; 2 uses
  %i.dg = icmp ult i64 %i.df, %.lcssa
  br i1 %i.dg, label %bb.t, label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader66, %.lr.ph.i.i
  %.02966.i.i = phi i64 [ %i.dl, %.lr.ph.i.i ], [ %.02966.i.i.ph, %.lr.ph.i.i.preheader66 ]
  %.sroa.041.065.i.i = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %.sroa.041.065.i.i.ph, %.lr.ph.i.i.preheader66 ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.041.065.i.i, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !975
  %i.dj = load i64, ptr %.sroa.041.065.i.i, align 8, !tbaa !974
  %i.dk = add i64 %i.di, %.02966.i.i
  %i.dl = sub i64 %i.dk, %i.dj                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.041.065.i.i, i64 16 ; 2 uses
  %.not60.i.i = icmp eq ptr %i.dm, %i.cr
  br i1 %.not60.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !1485

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.dn = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15WindowIndexTreeESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %i.do = tail call { i64, i64 } @_ZNK6duckdb15WindowIndexTree9SelectNthERKNS_6vectorINS_11FrameBoundsELb1ESaIS2_EEEm(ptr noundef nonnull align 8 dereferenceable(240) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.df) ; 2 uses
  %i.dp = extractvalue { i64, i64 } %i.do, 0      ; 5 uses
  %i.dq = extractvalue { i64, i64 } %i.do, 1
  %.not35.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not35.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !510, !nonnull !42, !align !232 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !578
  %.not36.i.i = icmp ult i64 %i.dp, %i.dt
  br i1 %.not36.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.078.i, i1 noundef zeroext true)
  br label %"_ZZNK6duckdb22WindowNthValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

bb.w:                                             ; preds = %bb.u
  %i.du = load i64, ptr %i.av, align 8, !tbaa !499
  %i.dv = icmp ult i64 %i.dp, %i.du
  %i.dw = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.dx = icmp ule i64 %i.dw, %i.dp
  %i.dy = select i1 %i.dv, i1 %i.dx, i1 false
  br i1 %i.dy, label %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dz = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
  %i.ea = tail call noundef zeroext i1 @_ZNK6duckdb20ColumnDataCollection4SeekEmRNS_19ColumnDataScanStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.dz, i64 noundef %i.dp, ptr noundef nonnull align 8 dereferenceable(144) %i.ax, ptr noundef nonnull align 8 dereferenceable(72) %i.ay) ; 0 uses
  %.pre.i.i.i = load i64, ptr %i.aw, align 8, !tbaa !511
  br label %_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i

_ZN6duckdb12WindowCursor8CopyCellEmmRNS_6VectorEm.exit.i: ; preds = %bb.x, %bb.w
  %i.eb = phi i64 [ %.pre.i.i.i, %bb.x ], [ %i.dw, %bb.w ]
  %i.ec = sub i64 %i.dp, %i.eb
  %i.ed = and i64 %i.ec, 4294967295               ; 2 uses
  %i.ee = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i64 noundef 0)
  %i.ef = add nuw nsw i64 %i.ed, 1
  tail call void @_ZN6duckdb16VectorOperations4CopyERKNS_6VectorERS1_mmm(ptr noundef nonnull align 8 dereferenceable(104) %i.ee, ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %i.ef, i64 noundef %i.ed, i64 noundef %.078.i)
  br label %"_ZZNK6duckdb22WindowNthValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.s
  tail call void @_ZN6duckdb10FlatVector7SetNullERNS_6VectorEmb(ptr noundef nonnull align 8 dereferenceable(104) %3, i64 noundef %.078.i, i1 noundef zeroext true)
  br label %"_ZZNK6duckdb22WindowNthValueExecutor16EvaluateInternalERNS_16ExecutionContextERNS_9DataChunkERNS_6VectorEmmRNS_17OperatorSinkInputEENK3$_0clEm.exit.i"

bb.y:                                             ; preds = %bb.r
  br i1 %.not5967.i.i, label %.critedge.i.i, label %.lr.ph71.i.i

.lr.ph71.i.i:                                     ; preds = %bb.y, %bb.af
  %.069.i.i = phi i64 [ %.148.ph.i.i, %bb.af ], [ %i.cn, %bb.y ] ; 5 uses
  %.sroa.037.068.i.i = phi ptr [ %i.fs, %bb.af ], [ %i.cq, %bb.y ] ; 3 uses
  %i.eg = load i64, ptr %.sroa.037.068.i.i, align 8, !tbaa !974 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.037.068.i.i, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !975 ; 7 uses
  %.not.i.i = icmp ult i64 %i.eg, %i.ei
  br i1 %.not.i.i, label %bb.z, label %bb.af

bb.z:                                             ; preds = %.lr.ph71.i.i
  %i.ej = load ptr, ptr %i.i, align 8, !tbaa !408 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i, label %bb.aa, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ek = add nsw i64 %.069.i.i, -1
  %i.el = add i64 %i.ek, %i.eg
  %i.em = tail call noundef i64 @llvm.umin.i64(i64 %i.el, i64 %i.ei)
  %i.en = sub i64 %i.ei, %i.eg
  %i.eo = tail call i64 @llvm.usub.sat.i64(i64 %.069.i.i, i64 %i.en)
  br label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i: ; preds = %bb.z, %.loopexit.i.i.i
  %.2.i.i = phi i64 [ %.3.i.i, %.loopexit.i.i.i ], [ %.069.i.i, %bb.z ] ; 3 uses
  %.02445.i.i.i = phi i64 [ %.226.i.i.i, %.loopexit.i.i.i ], [ %i.eg, %bb.z ] ; 6 uses
  %i.ep = phi i64 [ %i.fi, %.loopexit.i.i.i ], [ %.069.i.i, %bb.z ] ; 3 uses
  %i.eq = lshr i64 %.02445.i.i.i, 6
  %i.er = and i64 %.02445.i.i.i, 63               ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eq
  %i.et = load i64, ptr %i.es, align 8, !tbaa !252 ; 2 uses
  %i.eu = or i64 %i.et, %i.er
  %or.cond.not.i.i.i = icmp eq i64 %i.eu, 0
  br i1 %or.cond.not.i.i.i, label %bb.ab, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.ev = icmp ult i64 %.02445.i.i.i, %i.ei
  br i1 %i.ev, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

bb.ab:                                            ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i
  %i.ew = add i64 %.02445.i.i.i, 64
  br label %.loopexit.i.i.i, !llvm.loop !409

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.ad
  %.4.i.i = phi i64 [ %.5.i.i, %bb.ad ], [ %.2.i.i, %.preheader.i.i.i ]
  %i.ex = phi i64 [ %i.fc, %bb.ad ], [ %i.ep, %.preheader.i.i.i ] ; 2 uses
  %.12544.i.i.i = phi i64 [ %i.fe, %bb.ad ], [ %.02445.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.03643.i.i.i = phi i64 [ %i.fd, %bb.ad ], [ %i.er, %.preheader.i.i.i ] ; 3 uses
  %i.ey = shl nuw i64 1, %.03643.i.i.i
  %i.ez = and i64 %i.ey, %i.et
  %.not.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i
  %i.fa = add nsw i64 %i.ex, -1                   ; 3 uses
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i.i.i
  %.5.i.i = phi i64 [ %.4.i.i, %.lr.ph.i.i.i ], [ %i.fa, %bb.ac ] ; 2 uses
  %i.fc = phi i64 [ %i.ex, %.lr.ph.i.i.i ], [ %i.fa, %bb.ac ] ; 2 uses
  %i.fd = add nuw nsw i64 %.03643.i.i.i, 1
  %i.fe = add nuw i64 %.12544.i.i.i, 1            ; 3 uses
  %i.ff = icmp samesign ult i64 %.03643.i.i.i, 63
  %i.fg = icmp ult i64 %i.fe, %i.ei
  %i.fh = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %i.fh, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !410

.loopexit.i.i.i:                                  ; preds = %bb.ad, %bb.ab, %.preheader.i.i.i
  %.3.i.i = phi i64 [ %.2.i.i, %bb.ab ], [ %.2.i.i, %.preheader.i.i.i ], [ %.5.i.i, %bb.ad ] ; 2 uses
  %i.fi = phi i64 [ %i.ep, %bb.ab ], [ %i.ep, %.preheader.i.i.i ], [ %i.fc, %bb.ad ]
  %.226.i.i.i = phi i64 [ %i.ew, %bb.ab ], [ %.02445.i.i.i, %.preheader.i.i.i ], [ %i.fe, %bb.ad ] ; 2 uses
  %i.fj = icmp ult i64 %.226.i.i.i, %i.ei
  br i1 %i.fj, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.i, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.i.i

_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.i.i: ; preds = %.loopexit.i.i.i, %bb.aa
  %.6.i.i = phi i64 [ %i.eo, %bb.aa ], [ %.3.i.i, %.loopexit.i.i.i ] ; 2 uses
  %.2.i.i.i = phi i64 [ %i.em, %bb.aa ], [ %i.ei, %.loopexit.i.i.i ]
  %.not34.i.i = icmp eq i64 %.6.i.i, 0
  br i1 %.not34.i.i, label %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i, label %bb.af

_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i: ; preds = %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.i.i, %bb.ac
  %.2.i54.i.i = phi i64 [ %.12544.i.i.i, %bb.ac ], [ %.2.i.i.i, %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.i.i ] ; 4 uses
  %i.fk = load i64, ptr %i.av, align 8, !tbaa !499
  %i.fl = icmp ult i64 %.2.i54.i.i, %i.fk
  %i.fm = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.fn = icmp ule i64 %i.fm, %.2.i54.i.i
  %i.fo = select i1 %i.fl, i1 %i.fn, i1 false
  br i1 %i.fo, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_ZN6duckdb21WindowBoundariesState13FindNextStartERKNS_12ValidityMaskEmmRm.exit.thread.i.i
  %i.fp = load ptr, ptr %i.e, align 8, !tbaa !510, !nonnull !42, !align !232
  %i.fq = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fp)
end_hunk_1
