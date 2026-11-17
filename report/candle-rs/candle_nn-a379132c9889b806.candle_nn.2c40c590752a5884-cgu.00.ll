Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_nn-a379132c9889b806.candle_nn.2c40c590752a5884-cgu.00?download=true
inline.NumInlined: 1027
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7minimumRBG_ECs3NyA1pFSltE_9candle_nn:bb.a
  store ptr %i.ah, ptr %i.e, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  %.val141 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.val141, i64 16
  %.val140 = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4
  %i.al = getelementptr inbounds nuw i8, ptr %.val140, i64 16
  invoke void @_RINvMNtCsltEA4u8Pgfu_11candle_core7storageNtB3_7Storage11binary_implNtNtB5_2op7MinimumECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.al)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  %i.am = load i64, ptr %i.g, align 8, !range !10, !noundef !4 ; 2 uses
  %.not126 = icmp eq i64 %i.am, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.654, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  br i1 %.not126, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5120.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5117.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.654, i64 32, i1 false)
  store i64 %i.am, ptr %0, align 8
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit161 unwind label %bb.n

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.654, i64 32, i1 false)
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit163 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.critedge unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit163: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit167 unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit163, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit167
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit167: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs8_NtCsltEA4u8Pgfu_11candle_core2opNtB6_10BackpropOp4new2NCINvMs1_NtB8_6tensorNtB17_6Tensor7minimumRB1j_E0ECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.v unwind label %bb.u

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %_RNvXsA_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit unwind label %bb.y

bb.w:                                             ; preds = %bb.c, %bb.g, %bb.k, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit161, %_RNvXsA_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit

_RNvXsA_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.ar = invoke fastcc noundef nonnull ptr @_RINvNtCsltEA4u8Pgfu_11candle_core6tensor12from_storageNtNtB4_5shape5ShapeECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.a, i1 noundef zeroext false)
          to label %bb.x unwind label %bb.w

bb.x:                                             ; preds = %_RNvXsA_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !994)
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.at = load ptr, ptr %i.j, align 8, !alias.scope !997, !nonnull !4, !noundef !4
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !997
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit156.sink.split, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit156

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit156.sink.split: ; preds = %bb.x, %bb.l
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #20
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit156

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit156: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit156.sink.split, %bb.x, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.y:                                             ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #18
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.t, %bb.o, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit159, %bb.d, %.critedge, %bb.aa, %bb.y
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.aa:                                            ; preds = %bb.y
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core2op10BackpropOpECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #18
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.z

.critedge:                                        ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.u ], [ %i.ao, %bb.t ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #18
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.z

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit161: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit171 unwind label %bb.w

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit171: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.654)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEECs3NyA1pFSltE_9candle_nn.exit, %bb.d
  resume { ptr, i32 } %.pn130
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7permuteTjjjjjjEECs3NyA1pFSltE_9candle_nn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 12 uses
  %i.b = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.611 = alloca [56 x i8], align 8          ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %.sroa.06 = alloca [112 x i8], align 8          ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [80 x i8], align 8                ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.l = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @_RNvYTjjjjjjENtNtCsltEA4u8Pgfu_11candle_core5shape4Dims10to_indexesCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 7)
  %i.n = load i64, ptr %i.j, align 8, !range !10, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.n, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.528.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.525.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.n, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 6 uses
  %i.r = icmp ult i64 %i.q, 1152921504606846976
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noundef !4 ; 3 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.q, %i.t
  br i1 %i.v, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.not71 = icmp eq i64 %i.q, 0
  br i1 %.not71, label %.loopexit73, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1014, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = and i64 %i.q, 1152921504606846968        ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = shl nuw nsw i64 %i.q, 3
  %.idx = and i64 %i.aa, 56                       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx
  %.not.i.i.i.i82.a = icmp eq i64 %i.y, 0
  %.not.not.not.i.not.not.i.not.i.i.i85.a = icmp samesign eq i64 %.idx, 0
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjjjEE0E0Cs3NyA1pFSltE_9candle_nn.exit.i, %.lr.ph.i
  %i.ac = phi i64 [ 0, %.lr.ph.i ], [ %i.ad, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjjjEE0E0Cs3NyA1pFSltE_9candle_nn.exit.i ] ; 10 uses
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  br i1 %.not.i.i.i.i82.a, label %.preheader.i.preheader.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs3NyA1pFSltE_9candle_nn.exit.i.i.i.i

bb.f:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs3NyA1pFSltE_9candle_nn.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 64
  %i.af = add nsw i64 %.sroa.5.0.i.i.i.i83, -8    ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i, label %.preheader.i.preheader.a, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs3NyA1pFSltE_9candle_nn.exit.i.i.i.i

.preheader.i.preheader.a:                         ; preds = %bb.f, %bb.e
  br i1 %.not.not.not.i.not.not.i.not.i.i.i85.a, label %.loopexit, label %.lr.ph

.preheader.i.a:                                   ; preds = %.lr.ph
  %3 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.not.not.not.i.not.not.i.not.i.i.i.a = icmp eq ptr %3, %i.ab
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.i.preheader.a, %.preheader.i.a
  %4 = phi ptr [ %3, %.preheader.i.a ], [ %i.z, %.preheader.i.preheader.a ] ; 2 uses
  %.val2.i.i.i.i.i = load i64, ptr %4, align 8, !alias.scope !1015, !noalias !1016, !noundef !4
  %i.ag = icmp eq i64 %.val2.i.i.i.i.i, %i.ac
  br i1 %i.ag, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjjjEE0E0Cs3NyA1pFSltE_9candle_nn.exit.i, label %.preheader.i.a

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs3NyA1pFSltE_9candle_nn.exit.i.i.i.i: ; preds = %bb.e, %bb.f
  %.sroa.0.05.i.i.i.i84 = phi ptr [ %i.ae, %bb.f ], [ %i.x, %bb.e ] ; 9 uses
  %.sroa.5.0.i.i.i.i83 = phi i64 [ %i.af, %bb.f ], [ %i.y, %bb.e ]
  %.val11.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i84, align 8, !alias.scope !1015, !noalias !1014, !noundef !4
  %i.ah = icmp eq i64 %.val11.i.i.i.i.i, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 8
  %.val11.i.1.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !1015, !noalias !1014, !noundef !4
  %i.aj = icmp eq i64 %.val11.i.1.i.i.i.i, %i.ac
  %i.ak = or i1 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 16
  %.val11.i.2.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !1015, !noalias !1014, !noundef !4
  %i.am = icmp eq i64 %.val11.i.2.i.i.i.i, %i.ac
  %i.an = or i1 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 24
  %.val11.i.3.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !1015, !noalias !1014, !noundef !4
  %i.ap = icmp eq i64 %.val11.i.3.i.i.i.i, %i.ac
  %i.aq = or i1 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 32
  %.val11.i.4.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !1015, !noalias !1014, !noundef !4
  %i.as = icmp eq i64 %.val11.i.4.i.i.i.i, %i.ac
  %i.at = or i1 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 40
  %.val11.i.5.i.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !1015, !noalias !1014, !noundef !4
  %i.av = icmp eq i64 %.val11.i.5.i.i.i.i, %i.ac
  %i.aw = or i1 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 48
  %.val11.i.6.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !1015, !noalias !1014, !noundef !4
  %i.ay = icmp eq i64 %.val11.i.6.i.i.i.i, %i.ac
  %i.az = or i1 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 56
  %.val11.i.7.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !1015, !noalias !1014, !noundef !4
  %i.bb = icmp eq i64 %.val11.i.7.i.i.i.i, %i.ac
  %i.bc = or i1 %i.az, %i.bb
  br i1 %i.bc, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjjjEE0E0Cs3NyA1pFSltE_9candle_nn.exit.i, label %bb.f

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjjjEE0E0Cs3NyA1pFSltE_9candle_nn.exit.i: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECs3NyA1pFSltE_9candle_nn.exit.i.i.i.i, %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.ad, %i.q
  br i1 %exitcond.not.i, label %.loopexit73, label %bb.e

.loopexit:                                        ; preds = %.preheader.i.preheader.a, %.preheader.i.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !4, !noundef !4
  store ptr %i.be, ptr %i.f, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.t, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRSjNtB6_5Debug3fmtCs3NyA1pFSltE_9candle_nn, ptr %.sroa.432.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.bg, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCs3NyA1pFSltE_9candle_nn, ptr %.sroa.436.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @43, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.v, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit.thread, %bb.g
  %.pn54 = phi { ptr, i32 } [ %i.bh, %bb.g ], [ %.pn68, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit.thread ], [ %i.cj, %bb.v ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #18
          to label %common.resume unwind label %bb.ac

bb.g:                                             ; preds = %.loopexit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit59, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3NyA1pFSltE_9candle_nn.exit, %.loopexit73
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit

.loopexit73:                                      ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteTjjjjjjEE0E0Cs3NyA1pFSltE_9candle_nn.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs8_NtCsltEA4u8Pgfu_11candle_core2opNtB6_10BackpropOp4new1NCINvMs1_NtB8_6tensorNtB17_6Tensor7permuteTjjjjjjEEs_0ECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull align 8 %i.k)
          to label %bb.l unwind label %bb.g

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3NyA1pFSltE_9candle_nn.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 -9223372036854775766, ptr %i.h, align 8
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.h)
          to label %bb.h unwind label %bb.g

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs3NyA1pFSltE_9candle_nn.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.i

bb.i:                                             ; preds = %bb.ab, %bb.h
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit, %bb.y, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.cn, %bb.y ], [ %i.bj, %bb.j ], [ %.pn54, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.aa

bb.l:                                             ; preds = %.loopexit73
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06)
  %i.bl = atomicrmw add ptr @_RNvNvMNtCsltEA4u8Pgfu_11candle_core6tensorNtB4_8TensorId3new7COUNTER, i64 1 monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4
  %i.bo = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bm, align 8, !nonnull !4, !noundef !4 ; 4 uses
  store ptr %i.bq, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4
  %i.bt = load i64, ptr %i.p, align 8, !noundef !4
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout7permute(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bs, i64 noundef %i.bt)
          to label %bb.q unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !1017
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit.thread

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEE9drop_slowB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit.thread unwind label %bb.ac

bb.q:                                             ; preds = %bb.m
  %i.bx = load i64, ptr %i.b, align 8, !range !10, !noundef !4 ; 2 uses
  %.not52.not = icmp eq i64 %i.bx, -1
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.611, ptr noundef nonnull align 8 dereferenceable(56) %i.by, i64 56, i1 false)
  br i1 %.not52.not, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.547.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.446.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.611, i64 56, i1 false)
  store i64 %i.bx, ptr %0, align 8
  %i.bz = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !1018
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit59

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEE9drop_slowB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #20
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit59 unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit.thread69

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.611, i64 56, i1 false)
  %.sroa.06.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 146
  %i.cc = load i8, ptr %i.cb, align 2, !range !5, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 145
  %i.ce = load i8, ptr %i.cd, align 1, !range !15, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cg, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.06, i64 112, i1 false)
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.bq, ptr %.sroa.67.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.bl, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i8 0, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 145
  store i8 %i.ce, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  store i8 %i.cc, ptr %.sroa.10.0..sroa_idx, align 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1019
  %i.ch = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 153) 152, i64 noundef range(i64 1, 9) 8) #21, !noalias !1019 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.u, label %bb.x, !prof !12

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #16
          to label %.noexc60 unwind label %bb.v

.noexc60:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.a) #18
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit.thread69: ; preds = %bb.s
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEECs3NyA1pFSltE_9candle_nn.exit.thread

bb.x:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ch, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.cm, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECs3NyA1pFSltE_9candle_nn.exit62 unwind label %bb.y
end_hunk_0
