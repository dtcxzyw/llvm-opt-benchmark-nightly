inline.NumInlined: 2343
inline.NumDeleted: 1199
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6duckdb12ColumnReader14PlainTemplatedINS_9hugeint_tENS_29DecimalParquetValueConversionIS2_Lb1EEEEEvRNS_10ByteBufferEPKhmmRNS_6VectorE:bb.a

bb.g:                                             ; preds = %bb.f, %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit.i.i
  %i.ag = add i64 %.014.i.i, 1                    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not.i.i, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_29DecimalParquetValueConversionIS2_Lb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %bb.c, !llvm.loop !614

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !304
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %5)
  %i.aj = add i64 %4, %3                          ; 2 uses
  %i.ak = icmp ult i64 %4, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i12, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_29DecimalParquetValueConversionIS2_Lb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit

.lr.ph.i.i12:                                     ; preds = %bb.h, %.lr.ph.i.i12
  %.017.i.i = phi i64 [ %i.ap, %.lr.ph.i.i12 ], [ %4, %bb.h ] ; 2 uses
  %i.al = tail call { i64, i64 } @_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainReadILb0EEES1_RNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(512) %0) ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = extractvalue { i64, i64 } %i.al, 1
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.017.i.i ; 2 uses
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !300
  %.sroa.4.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.an, ptr %.sroa.4.0..sroa_idx.i.i13, align 8, !tbaa !300
  %i.ap = add i64 %.017.i.i, 1                    ; 2 uses
  %exitcond.not.i.i14 = icmp eq i64 %i.ap, %i.aj
  br i1 %exitcond.not.i.i14, label %_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_29DecimalParquetValueConversionIS2_Lb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit, label %.lr.ph.i.i12, !llvm.loop !615

_ZN6duckdb12ColumnReader21PlainTemplatedDefinesINS_9hugeint_tENS_29DecimalParquetValueConversionIS2_Lb1EEELb1EEEvRNS_10ByteBufferEPKhmmRNS_6VectorE.exit: ; preds = %.lr.ph.i.i12, %bb.g, %bb.h, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZN6duckdb29DecimalParquetValueConversionINS_9hugeint_tELb1EE9PlainReadILb0EEES1_RNS_10ByteBufferERNS_12ColumnReaderE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !88, !nonnull !40, !align !156 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !384
  %i.e = zext i32 %i.d to i64                     ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !332
  %.not.i = icmp ult i64 %i.g, %i.e
  br i1 %.not.i, label %bb.b, label %_ZNK6duckdb10ByteBuffer9availableEm.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.25)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %.sink = phi ptr [ %i.m, %bb.g ], [ %i.h, %bb.d ]
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.i, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #21
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZNK6duckdb10ByteBuffer9availableEm.exit:         ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !331
  %i.k = tail call { i64, i64 } @_ZN6duckdb19ParquetDecimalUtils16ReadDecimalValueINS_9hugeint_tEEET_PKhmRKNS_19ParquetColumnSchemaE(ptr noundef %i.j, i64 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(157) %i.b)
  %i.l = load i64, ptr %i.f, align 8, !tbaa !332  ; 2 uses
  %.not.i.i = icmp ult i64 %i.l, %i.e
  br i1 %.not.i.i, label %bb.e, label %_ZN6duckdb10ByteBuffer3incEm.exit

bb.e:                                             ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull @.str.25)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN6duckdb10ByteBuffer3incEm.exit:                ; preds = %_ZNK6duckdb10ByteBuffer9availableEm.exit
  %i.o = sub nuw i64 %i.l, %i.e
  store i64 %i.o, ptr %i.f, align 8, !tbaa !332
  %i.p = load ptr, ptr %0, align 8, !tbaa !331
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.e
  store ptr %i.q, ptr %0, align 8, !tbaa !331
  ret { i64, i64 } %i.k
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_9hugeint_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !39
  %i.e = icmp eq i8 %i.d, -52
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 -52, ptr %i.a, align 1, !tbaa !573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.g = load i8, ptr %i.c, align 1, !tbaa !39
  store i8 %i.g, ptr %i.b, align 1, !tbaa !573
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.j = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZN6duckdb19ParquetDecimalUtils16ReadDecimalValueINS_9hugeint_tEEET_PKhmRKNS_19ParquetColumnSchemaE(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(157) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::hugeint_t", align 16 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %6 = alloca %"struct.duckdb::hugeint_t", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 noundef 0)
  %i.a = load i8, ptr %0, align 1, !tbaa !7       ; 3 uses
  %i.b = icmp slt i8 %i.a, 0
  %i.c = call noundef i64 @llvm.umin.i64(i64 %1, i64 16) ; 6 uses
  %.not39 = icmp eq i64 %1, 0
  br i1 %.not39, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 %1         ; 3 uses
  %.lobit = ashr i8 %i.a, 7                       ; 3 uses
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check44 = icmp ult i64 %1, 16
  br i1 %min.iters.check44, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.c, 16                       ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.lobit, i64 0
  %i.e = getelementptr i8, ptr %i.d, i64 -16
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !tbaa !7
  %reverse.a = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %7 = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.f = xor <16 x i8> %reverse.a, %7
  store <16 x i8> %i.f, ptr %3, align 16, !tbaa !7
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %n.mod.vf = and i64 %i.c, 12
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !616

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.c, 28                     ; 3 uses
  %broadcast.splatinsert47 = insertelement <4 x i8> poison, i8 %.lobit, i64 0
  %broadcast.splat48 = shufflevector <4 x i8> %broadcast.splatinsert47, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 3 uses
  %i.g = xor i64 %index, -1
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -3
  %wide.load49 = load <4 x i8>, ptr %i.i, align 1, !tbaa !7
  %reverse50.a = shufflevector <4 x i8> %wide.load49, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.j = xor <4 x i8> %reverse50.a, %broadcast.splat48
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 %index
  store <4 x i8> %i.j, ptr %i.k, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec46
  br i1 %i.l, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !617

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n51 = icmp eq i64 %i.c, %n.vec46
  br i1 %cmp.n51, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02937.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec46, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %i.m = icmp ugt i64 %1, 16
  br i1 %i.m, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.n = getelementptr i8, ptr %0, i64 %1
  %.lobit36 = ashr i8 %i.a, 7
  br label %bb.c

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.02937 = phi i64 [ %i.t, %vec.epilog.scalar.ph ], [ %.02937.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.o = xor i64 %.02937, -1
  %i.p = getelementptr i8, ptr %i.d, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !7
  %i.r = xor i8 %i.q, %.lobit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 %.02937
  store i8 %i.r, ptr %i.s, align 1, !tbaa !7
  %i.t = add nuw nsw i64 %.02937, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !620

bb.b:                                             ; preds = %bb.c
  %i.u = add nuw i64 %.02838, 1                   ; 2 uses
  %exitcond40.not = icmp eq i64 %i.u, %1
  br i1 %exitcond40.not, label %.loopexit, label %bb.c, !llvm.loop !621

bb.c:                                             ; preds = %.preheader, %bb.b
  %.02838 = phi i64 [ 16, %.preheader ], [ %i.u, %bb.b ] ; 2 uses
  %i.v = xor i64 %.02838, -1
  %i.w = getelementptr i8, ptr %i.n, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %.not = icmp eq i8 %i.x, %.lobit36
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.27, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.m unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !61    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.ab) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn35 = phi { ptr, i32 } [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.y) #21
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn34 = phi { ptr, i32 } [ %.pn35, %bb.h ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %.pn34

.loopexit:                                        ; preds = %bb.b, %bb.a, %._crit_edge
  br i1 %i.b, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 1)
  %i.ae = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.af = call { i64, i64 } @_ZNK6duckdb9hugeint_tngEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %bb.l

bb.k:                                             ; preds = %.loopexit
  %.sroa.0.0.copyload = load i64, ptr %3, align 16, !tbaa !300
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !300
  %i.ag = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.copyload, 0
  %i.ah = insertvalue { i64, i64 } %i.ag, i64 %.sroa.3.0.copyload, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.fca.1.insert.merged = phi { i64, i64 } [ %i.ah, %bb.k ], [ %i.af, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret { i64, i64 } %.fca.1.insert.merged

bb.m:                                             ; preds = %bb.f
  unreachable
}

declare void @_ZN6duckdb9hugeint_tC1El(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb9hugeint_tpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

declare { i64, i64 } @_ZNK6duckdb9hugeint_tngEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN6duckdb21TemplatedColumnReaderIdNS_29DecimalParquetValueConversionIdLb1EEEEE, i64 16), ptr %0, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !346  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !347
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !349
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !558
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !558
  br label %_ZN6duckdb10shared_ptrINS_16ResizeableBufferELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
end_hunk_0
