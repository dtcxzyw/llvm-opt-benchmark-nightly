Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.04?download=true
inline.NumInlined: 2872
inline.NumDeleted: 402
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7minimumRBG_EB8_:bb.a
  %i.aj = extractvalue { ptr, ptr } %i.ag, 0      ; 2 uses
  %i.ak = extractvalue { ptr, ptr } %i.ag, 1
  store ptr %i.aj, ptr %i.e, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ak, ptr %i.al, align 8
  %.val140 = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %.val140, i64 16
  invoke void @_RINvMNtCsltEA4u8Pgfu_11candle_core7storageNtB3_7Storage11binary_implNtNtB5_2op7MinimumEB5_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.am)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr %i.g, align 8, !range !10, !noundef !5 ; 2 uses
  %.not126 = icmp eq i64 %i.an, -1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.654, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  br i1 %.not126, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.5120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5120.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5117.0..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4119.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.654, i64 32, i1 false)
  store i64 %i.an, ptr %0, align 8
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit162 unwind label %bb.m

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.654, i64 32, i1 false)
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit164 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %.critedge unwind label %bb.y

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit164: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit168 unwind label %bb.t

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit164, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit168
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit168: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs8_NtCsltEA4u8Pgfu_11candle_core2opNtB6_10BackpropOp4new2NCINvMs1_NtB8_6tensorNtB17_6Tensor7minimumRB1j_E0EB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.u unwind label %bb.t

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXsb_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %_RNvXsA_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit unwind label %bb.x

bb.v:                                             ; preds = %bb.c, %bb.j, %bb.g, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit162, %_RNvXsA_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit

_RNvXsA_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.as = invoke noundef nonnull ptr @_RINvNtCsltEA4u8Pgfu_11candle_core6tensor12from_storageNtNtB4_5shape5ShapeEB4_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, i1 noundef zeroext false)
          to label %bb.w unwind label %bb.v

bb.w:                                             ; preds = %_RNvXsA_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5ShapeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  call void @llvm.experimental.noalias.scope.decl(metadata !399)
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  %i.au = load ptr, ptr %i.j, align 8, !alias.scope !401, !nonnull !5, !noundef !5
  %i.av = atomicrmw add ptr %i.au, i64 -1 release, align 8, !noalias !401
  %i.aw = icmp eq i64 %i.av, 1
  br i1 %i.aw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit157.sink.split, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit157

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit157.sink.split: ; preds = %bb.w, %bb.k
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit157

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit157: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit157.sink.split, %bb.w, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.x:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #24
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.s, %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit160, %bb.d, %.critedge, %bb.z, %bb.x
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.z:                                             ; preds = %bb.x
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core2op10BackpropOpEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d) #24
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit unwind label %bb.y

.critedge:                                        ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.t ], [ %i.ap, %bb.s ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #24
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit unwind label %bb.y

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit162: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit172 unwind label %bb.v

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit172: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.654)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock15RwLockReadGuardNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEB1G_.exit, %bb.d
  resume { ptr, i32 } %.pn130
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.l = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @_RNvYINtNtCsgCecv3eZDcN_5alloc3vec3VecjENtNtCsltEA4u8Pgfu_11candle_core5shape4Dims10to_indexesBF_(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 7)
  %i.n = load i64, ptr %i.j, align 8, !range !10, !noundef !5 ; 2 uses
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
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 6 uses
  %i.r = icmp ult i64 %i.q, 1152921504606846976
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = load i64, ptr %i.s, align 8, !noundef !5 ; 3 uses
  %i.u = icmp ult i64 %i.t, 1152921504606846976
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i64 %i.q, %i.t
  br i1 %i.v, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.not71 = icmp eq i64 %i.q, 0
  br i1 %.not71, label %.loopexit73, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !noalias !418, !nonnull !5, !noundef !5 ; 2 uses
  %i.y = and i64 %i.q, 1152921504606846968        ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y ; 7 uses
  %i.aa = shl nuw nsw i64 %i.q, 3
  %.idx = and i64 %i.aa, 56                       ; 7 uses
  %.not.i.i.i.i82 = icmp eq i64 %i.y, 0
  %.not.not.not.i.not.not.i.not.i.i.i85 = icmp samesign eq i64 %.idx, 0
  %.not.not.not.i.not.not.i.not.i.i.i = icmp samesign eq i64 %.idx, 8
  %3 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.not.not.i.not.not.i.not.i.i.i.1 = icmp samesign eq i64 %.idx, 16
  %4 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.not.not.not.i.not.not.i.not.i.i.i.2 = icmp samesign eq i64 %.idx, 24
  %5 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.not.not.not.i.not.not.i.not.i.i.i.3 = icmp samesign eq i64 %.idx, 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.not.i.i.i.i82.a = icmp samesign eq i64 %.idx, 40
  %6 = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.not.not.not.i.not.not.i.not.i.i.i85.a = icmp samesign eq i64 %.idx, 48
  %7 = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE0E0B1n_.exit.i, %.lr.ph.i
  %i.ac = phi i64 [ 0, %.lr.ph.i ], [ %i.ad, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE0E0B1n_.exit.i ] ; 16 uses
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  br i1 %.not.i.i.i.i82, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i.i.i

bb.f:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 64
  %i.af = add nsw i64 %.sroa.5.0.i.i.i.i83, -8    ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i, label %.preheader.i.preheader, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i.i.i

.preheader.i.preheader:                           ; preds = %bb.f, %bb.e
  br i1 %.not.not.not.i.not.not.i.not.i.i.i85, label %.loopexit, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  br i1 %.not.not.not.i.not.not.i.not.i.i.i, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader.i
  %.val2.i.i.i.i.i.1 = load i64, ptr %3, align 8, !alias.scope !419, !noalias !420, !noundef !5
  %8 = icmp eq i64 %.val2.i.i.i.i.i.1, %i.ac
  br i1 %8, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE0E0B1n_.exit.i, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.lr.ph.1
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader.i.1
  %.val2.i.i.i.i.i.2 = load i64, ptr %4, align 8, !alias.scope !419, !noalias !420, !noundef !5
  %9 = icmp eq i64 %.val2.i.i.i.i.i.2, %i.ac
  br i1 %9, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE0E0B1n_.exit.i, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.lr.ph.2
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.2, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.preheader.i.2
  %.val2.i.i.i.i.i.3 = load i64, ptr %5, align 8, !alias.scope !419, !noalias !420, !noundef !5
  %10 = icmp eq i64 %.val2.i.i.i.i.i.3, %i.ac
  br i1 %10, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE0E0B1n_.exit.i, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.lr.ph.3
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.preheader.i.3
  %.val2.i.i.i.i.i.4 = load i64, ptr %i.ab, align 8, !alias.scope !419, !noalias !420, !noundef !5
  %11 = icmp eq i64 %.val2.i.i.i.i.i.4, %i.ac
  br i1 %11, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE0E0B1n_.exit.i, label %.preheader.i.4

.preheader.i.4:                                   ; preds = %.lr.ph.4
  br i1 %.not.i.i.i.i82.a, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.preheader.i.4
  %.val2.i.i.i.i.i.5 = load i64, ptr %6, align 8, !alias.scope !419, !noalias !420, !noundef !5
  %12 = icmp eq i64 %.val2.i.i.i.i.i.5, %i.ac
  br i1 %12, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE0E0B1n_.exit.i, label %.preheader.i.preheader.a

.preheader.i.preheader.a:                         ; preds = %.lr.ph.5
  br i1 %.not.not.not.i.not.not.i.not.i.i.i85.a, label %.loopexit, label %.preheader.i.a

.preheader.i.a:                                   ; preds = %.preheader.i.preheader.a
  %.val2.i.i.i.i.i.6 = load i64, ptr %7, align 8, !alias.scope !419, !noalias !420, !noundef !5
  %.not.not.not.i.not.not.i.not.i.i.i.a = icmp eq i64 %.val2.i.i.i.i.i.6, %i.ac
  br i1 %.not.not.not.i.not.not.i.not.i.i.i.a, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE0E0B1n_.exit.i, label %.loopexit

.lr.ph:                                           ; preds = %.preheader.i.preheader
  %.val2.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !419, !noalias !420, !noundef !5
  %i.ag = icmp eq i64 %.val2.i.i.i.i.i, %i.ac
  br i1 %i.ag, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE0E0B1n_.exit.i, label %.preheader.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i.i.i: ; preds = %bb.e, %bb.f
  %.sroa.0.05.i.i.i.i84 = phi ptr [ %i.ae, %bb.f ], [ %i.x, %bb.e ] ; 9 uses
  %.sroa.5.0.i.i.i.i83 = phi i64 [ %i.af, %bb.f ], [ %i.y, %bb.e ]
  %.val11.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i84, align 8, !alias.scope !419, !noalias !418, !noundef !5
  %i.ah = icmp eq i64 %.val11.i.i.i.i.i, %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 8
  %.val11.i.1.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !419, !noalias !418, !noundef !5
  %i.aj = icmp eq i64 %.val11.i.1.i.i.i.i, %i.ac
  %i.ak = or i1 %i.ah, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 16
  %.val11.i.2.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !419, !noalias !418, !noundef !5
  %i.am = icmp eq i64 %.val11.i.2.i.i.i.i, %i.ac
  %i.an = or i1 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 24
  %.val11.i.3.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !419, !noalias !418, !noundef !5
  %i.ap = icmp eq i64 %.val11.i.3.i.i.i.i, %i.ac
  %i.aq = or i1 %i.an, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 32
  %.val11.i.4.i.i.i.i = load i64, ptr %i.ar, align 8, !alias.scope !419, !noalias !418, !noundef !5
  %i.as = icmp eq i64 %.val11.i.4.i.i.i.i, %i.ac
  %i.at = or i1 %i.aq, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 40
  %.val11.i.5.i.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !419, !noalias !418, !noundef !5
  %i.av = icmp eq i64 %.val11.i.5.i.i.i.i, %i.ac
  %i.aw = or i1 %i.at, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 48
  %.val11.i.6.i.i.i.i = load i64, ptr %i.ax, align 8, !alias.scope !419, !noalias !418, !noundef !5
  %i.ay = icmp eq i64 %.val11.i.6.i.i.i.i, %i.ac
  %i.az = or i1 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i84, i64 56
  %.val11.i.7.i.i.i.i = load i64, ptr %i.ba, align 8, !alias.scope !419, !noalias !418, !noundef !5
  %i.bb = icmp eq i64 %.val11.i.7.i.i.i.i, %i.ac
  %i.bc = or i1 %i.az, %i.bb
  br i1 %i.bc, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE0E0B1n_.exit.i, label %bb.f

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE0E0B1n_.exit.i: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i.i.i, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.preheader.i.a
  %exitcond.not.i = icmp eq i64 %i.ad, %i.q
  br i1 %exitcond.not.i, label %.loopexit73, label %bb.e

.loopexit:                                        ; preds = %.preheader.i.preheader, %.preheader.i.a, %.preheader.i, %.preheader.i.1, %.preheader.i.2, %.preheader.i.3, %.preheader.i.4, %.preheader.i.preheader.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !5, !noundef !5
  store ptr %i.be, ptr %i.f, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.t, ptr %i.bf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.f, ptr %i.e, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRSjNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core, ptr %.sroa.432.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.k, ptr %i.bg, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsr_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCsltEA4u8Pgfu_11candle_core, ptr %.sroa.436.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @54, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit: ; preds = %bb.v, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit.thread, %bb.g
  %.pn54 = phi { ptr, i32 } [ %i.bh, %bb.g ], [ %.pn68, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit.thread ], [ %i.cj, %bb.v ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #24
          to label %common.resume unwind label %bb.ac

bb.g:                                             ; preds = %.loopexit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit59, %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit, %.loopexit73
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit

.loopexit73:                                      ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkjNCINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB1l_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEE0E0B1n_.exit.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs8_NtCsltEA4u8Pgfu_11candle_core2opNtB6_10BackpropOp4new1NCINvMs1_NtB8_6tensorNtB17_6Tensor7permuteINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEs_0EB8_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull align 8 %i.k)
          to label %bb.l unwind label %bb.g

_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 -9223372036854775766, ptr %i.h, align 8
  invoke void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.h)
          to label %bb.h unwind label %bb.g

bb.h:                                             ; preds = %_RINvMNtCsf3Ta7LF998c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgCecv3eZDcN_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.i

bb.i:                                             ; preds = %bb.ab, %bb.h
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit, %bb.y, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.cn, %bb.y ], [ %i.bj, %bb.j ], [ %.pn54, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.i
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %bb.aa

bb.l:                                             ; preds = %.loopexit73
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06)
  %i.bl = atomicrmw add ptr @_RNvNvMNtCsltEA4u8Pgfu_11candle_core6tensorNtB4_8TensorId3new7COUNTER, i64 1 monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !5, !noundef !5
  %i.bo = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bm, align 8, !nonnull !5, !noundef !5 ; 4 uses
  store ptr %i.bq, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !5, !noundef !5
  %i.bt = load i64, ptr %i.p, align 8, !noundef !5
  invoke void @_RNvMNtCsltEA4u8Pgfu_11candle_core6layoutNtB2_6Layout7permute(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bs, i64 noundef %i.bt)
          to label %bb.q unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !421
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit.thread

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEE9drop_slowB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit.thread unwind label %bb.ac

bb.q:                                             ; preds = %bb.m
  %i.bx = load i64, ptr %i.b, align 8, !range !10, !noundef !5 ; 2 uses
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
  %i.bz = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !noalias !422
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.s, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit59

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEE9drop_slowB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit59 unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit.thread69

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.611, i64 56, i1 false)
  %.sroa.06.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.06, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.06.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 146
  %i.cc = load i8, ptr %i.cb, align 2, !range !8, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 145
  %i.ce = load i8, ptr %i.cd, align 1, !range !14, !noundef !5
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
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !423
  %i.ch = call noundef align 8 dereferenceable_or_null(152) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 8, 153) 152, i64 noundef 8) #27, !noalias !423 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.u, label %bb.x, !prof !7

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 152) #22
          to label %.noexc60 unwind label %bb.v

.noexc60:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync8ArcInnerNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_EEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.a) #24
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit.thread69: ; preds = %bb.s
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcINtNtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlock6RwLockNtNtCsltEA4u8Pgfu_11candle_core7storage7StorageEEEB24_.exit.thread

bb.x:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ch, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.cm, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsltEA4u8Pgfu_11candle_core.exit62 unwind label %bb.y
end_hunk_0
begin_hunk_1_@_RNvXs0_NtCsltEA4u8Pgfu_11candle_core11safetensorsNtNtB7_6tensor6TensorNtNtCsOwuIBbUsgI_11safetensors6tensor4View4data:bb.a
  %i.c = load i64, ptr %i.b, align 8, !range !10, !alias.scope !10407, !noundef !5
  %.not.i = icmp eq i64 %i.c, -1
  br i1 %.not.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCsltEA4u8Pgfu_11candle_core5error5ErrorE6unwrapB1k_.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !10409
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #22
          to label %bb.d unwind label %bb.c, !noalias !10410

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a) #24
          to label %bb.f unwind label %bb.e, !noalias !10410

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !10410
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCsltEA4u8Pgfu_11candle_core5error5ErrorE6unwrapB1k_.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvXs0_NtCsltEA4u8Pgfu_11candle_core11safetensorsNtNtB7_6tensor6TensorNtNtCsOwuIBbUsgI_11safetensors6tensor4View8data_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = tail call noundef i64 @_RNvMs5_NtCsltEA4u8Pgfu_11candle_core5shapeNtB5_5Shape10elem_count(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  %i.e = load i8, ptr %i.d, align 2, !range !8, !noundef !5
  %i.f = zext nneg i8 %i.e to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCsltEA4u8Pgfu_11candle_core11safetensorsRNtNtB7_6tensor6TensorNtNtCsOwuIBbUsgI_11safetensors6tensor4View8data_len, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.g = mul i64 %i.c, %switch.ext
  ret i64 %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsltEA4u8Pgfu_11candle_core11safetensorsRNtNtB7_6tensor6TensorNtNtCsOwuIBbUsgI_11safetensors6tensor4View4data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5
  call void @_RNvNtCsltEA4u8Pgfu_11candle_core11safetensors12convert_back(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10415)
  %i.d = load i64, ptr %i.b, align 8, !range !10, !alias.scope !10415, !noundef !5
  %.not.i = icmp eq i64 %i.d, -1
  br i1 %.not.i, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCsltEA4u8Pgfu_11candle_core5error5ErrorE6unwrapB1k_.exit, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !10417
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @82, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #22
          to label %bb.d unwind label %bb.c, !noalias !10418

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.a) #24
          to label %bb.f unwind label %bb.e, !noalias !10418

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !10418
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtCsgCecv3eZDcN_5alloc3vec3VechENtNtCsltEA4u8Pgfu_11candle_core5error5ErrorE6unwrapB1k_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_RNvXs1_NtCsltEA4u8Pgfu_11candle_core11safetensorsRNtNtB7_6tensor6TensorNtNtCsOwuIBbUsgI_11safetensors6tensor4View8data_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECsltEA4u8Pgfu_11candle_core.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.f, 7                     ; 3 uses
  %i.h = icmp ult i64 %i.f, 8
  br i1 %i.h, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %i.f, -8
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.af, %.preheader ] ; 9 uses
  %.sroa.02.0.i = phi i64 [ 1, %.preheader.preheader.new ], [ %i.ae, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.7, %.preheader ]
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %.val.i = load i64, ptr %i.i, align 8, !noundef !5
  %i.j = mul i64 %.val.i, %.sroa.02.0.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val.i.1 = load i64, ptr %i.l, align 8, !noundef !5
  %i.m = mul i64 %.val.i.1, %i.j
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val.i.2 = load i64, ptr %i.o, align 8, !noundef !5
  %i.p = mul i64 %.val.i.2, %i.m
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.val.i.3 = load i64, ptr %i.r, align 8, !noundef !5
  %i.s = mul i64 %.val.i.3, %i.p
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.val.i.4 = load i64, ptr %i.u, align 8, !noundef !5
  %i.v = mul i64 %.val.i.4, %i.s
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.val.i.5 = load i64, ptr %i.x, align 8, !noundef !5
  %i.y = mul i64 %.val.i.5, %i.v
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %.val.i.6 = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ab = mul i64 %.val.i.6, %i.y
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.04.0.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.val.i.7 = load i64, ptr %i.ad, align 8, !noundef !5
  %i.ae = mul i64 %.val.i.7, %i.ab                ; 3 uses
  %i.af = add nuw i64 %.sroa.04.0.i, 8            ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECsltEA4u8Pgfu_11candle_core.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECsltEA4u8Pgfu_11candle_core.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECsltEA4u8Pgfu_11candle_core.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECsltEA4u8Pgfu_11candle_core.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.af, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECsltEA4u8Pgfu_11candle_core.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 1, %.preheader.preheader ], [ %i.ae, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECsltEA4u8Pgfu_11candle_core.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.ai, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.ah, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load i64, ptr %i.ag, align 8, !noundef !5
  %i.ah = mul i64 %.val.i.epil, %.sroa.02.0.i.epil ; 2 uses
  %i.ai = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECsltEA4u8Pgfu_11candle_core.exit, label %.preheader.epil, !llvm.loop !10419

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECsltEA4u8Pgfu_11candle_core.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 1, %bb.a ], [ %i.ae, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvXsN_NtBW_5accumjINtB1M_7ProductRjE7productBF_E0ECsltEA4u8Pgfu_11candle_core.exit.loopexit.unr-lcssa ], [ %i.ah, %.preheader.epil ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 146
  %i.ak = load i8, ptr %i.aj, align 2, !range !8, !noundef !5
  %i.al = zext nneg i8 %i.ak to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtCsltEA4u8Pgfu_11candle_core11safetensorsRNtNtB7_6tensor6TensorNtNtCsOwuIBbUsgI_11safetensors6tensor4View8data_len, i64 %i.al
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.am = mul i64 %.sroa.0.0.i, %switch.ext
  ret i64 %i.am
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtBW_6Tensor12squeeze_dims0INtB7_5FnMutTTjRjEEE8call_mutBY_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %.val2 = load i64, ptr %2, align 8, !noundef !5
  %i.c = and i64 %.val1, 1152921504606846968      ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.c ; 7 uses
  %.not.i.i7 = icmp eq i64 %i.c, 0
  br i1 %.not.i.i7, label %._crit_edge, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i

bb.b:                                             ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i9, i64 64
  %i.f = add nsw i64 %.sroa.5.0.i.i8, -8          ; 2 uses
  %.not.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i, label %._crit_edge, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = shl i64 %.val1, 3
  %.idx = and i64 %i.g, 56                        ; 7 uses
  %.not.not.not.i.not.not.i.i10 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i10, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %.lr.ph

3:                                                ; preds = %.lr.ph
  %.not.not.not.i.not.not.i.i = icmp samesign eq i64 %.idx, 8
  br i1 %.not.not.not.i.not.not.i.i, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %3
  %4 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val2.i.i.i.1 = load i64, ptr %4, align 8, !alias.scope !10424, !noalias !10425, !noundef !5
  %5 = icmp eq i64 %.val2.i.i.i.1, %1
  br i1 %5, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %6

6:                                                ; preds = %.lr.ph.1
  %.not.not.not.i.not.not.i.i.1 = icmp samesign eq i64 %.idx, 16
  br i1 %.not.not.not.i.not.not.i.i.1, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %6
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val2.i.i.i.2 = load i64, ptr %7, align 8, !alias.scope !10424, !noalias !10425, !noundef !5
  %8 = icmp eq i64 %.val2.i.i.i.2, %1
  br i1 %8, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %9

9:                                                ; preds = %.lr.ph.2
  %.not.not.not.i.not.not.i.i.2 = icmp samesign eq i64 %.idx, 24
  br i1 %.not.not.not.i.not.not.i.i.2, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %9
  %10 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val2.i.i.i.3 = load i64, ptr %10, align 8, !alias.scope !10424, !noalias !10425, !noundef !5
  %11 = icmp eq i64 %.val2.i.i.i.3, %1
  br i1 %11, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %12

12:                                               ; preds = %.lr.ph.3
  %.not.not.not.i.not.not.i.i.3 = icmp samesign eq i64 %.idx, 32
  br i1 %.not.not.not.i.not.not.i.i.3, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %bb.c

bb.c:                                             ; preds = %12
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val2.i.i.i.4 = load i64, ptr %i.h, align 8, !alias.scope !10424, !noalias !10425, !noundef !5
  %.not.not.not.i.not.not.i.i.a = icmp eq i64 %.val2.i.i.i.4, %1
  br i1 %.not.not.not.i.not.not.i.i.a, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %13

13:                                               ; preds = %bb.c
  %.not.not.not.i.not.not.i.i.4 = icmp samesign eq i64 %.idx, 40
  br i1 %.not.not.not.i.not.not.i.i.4, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %13
  %14 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.val2.i.i.i.a = load i64, ptr %14, align 8, !alias.scope !10424, !noalias !10425, !noundef !5
  %i.i = icmp eq i64 %.val2.i.i.i.a, %1
  br i1 %i.i, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %15

15:                                               ; preds = %.lr.ph.a
  %.not.not.not.i.not.not.i.i.5 = icmp samesign eq i64 %.idx, 48
  br i1 %.not.not.not.i.not.not.i.i.5, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %15
  %16 = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val2.i.i.i.6 = load i64, ptr %16, align 8, !alias.scope !10424, !noalias !10425, !noundef !5
  %17 = icmp eq i64 %.val2.i.i.i.6, %1
  %spec.select = select i1 %17, i64 0, i64 1
  br label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit

.lr.ph:                                           ; preds = %._crit_edge
  %.val2.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !10424, !noalias !10425, !noundef !5
  %18 = icmp eq i64 %.val2.i.i.i, %1
  br i1 %18, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %3

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i: ; preds = %bb.a, %bb.b
  %.sroa.0.05.i.i9 = phi ptr [ %i.e, %bb.b ], [ %.val, %bb.a ] ; 9 uses
  %.sroa.5.0.i.i8 = phi i64 [ %i.f, %bb.b ], [ %i.c, %bb.a ]
  %.val11.i.i.i = load i64, ptr %.sroa.0.05.i.i9, align 8, !alias.scope !10424, !noundef !5
  %i.j = icmp eq i64 %.val11.i.i.i, %1
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i9, i64 8
  %.val11.i.1.i.i = load i64, ptr %i.k, align 8, !alias.scope !10424, !noundef !5
  %i.l = icmp eq i64 %.val11.i.1.i.i, %1
  %i.m = or i1 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i9, i64 16
  %.val11.i.2.i.i = load i64, ptr %i.n, align 8, !alias.scope !10424, !noundef !5
  %i.o = icmp eq i64 %.val11.i.2.i.i, %1
  %i.p = or i1 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i9, i64 24
  %.val11.i.3.i.i = load i64, ptr %i.q, align 8, !alias.scope !10424, !noundef !5
  %i.r = icmp eq i64 %.val11.i.3.i.i, %1
  %i.s = or i1 %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i9, i64 32
  %.val11.i.4.i.i = load i64, ptr %i.t, align 8, !alias.scope !10424, !noundef !5
  %i.u = icmp eq i64 %.val11.i.4.i.i, %1
  %i.v = or i1 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i9, i64 40
  %.val11.i.5.i.i = load i64, ptr %i.w, align 8, !alias.scope !10424, !noundef !5
  %i.x = icmp eq i64 %.val11.i.5.i.i, %1
  %i.y = or i1 %i.v, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i9, i64 48
  %.val11.i.6.i.i = load i64, ptr %i.z, align 8, !alias.scope !10424, !noundef !5
  %i.aa = icmp eq i64 %.val11.i.6.i.i, %1
  %i.ab = or i1 %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i9, i64 56
  %.val11.i.7.i.i = load i64, ptr %i.ac, align 8, !alias.scope !10424, !noundef !5
  %i.ad = icmp eq i64 %.val11.i.7.i.i, %1
  %i.ae = or i1 %i.ab, %i.ad
  br i1 %i.ae, label %_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit, label %bb.b

_RNCNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB7_6Tensor12squeeze_dims0B9_.exit: ; preds = %.lr.ph.6, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i, %.lr.ph, %3, %.lr.ph.1, %6, %.lr.ph.2, %9, %.lr.ph.3, %12, %bb.c, %13, %.lr.ph.a, %15, %._crit_edge
  %19 = phi i64 [ 0, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsI_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsltEA4u8Pgfu_11candle_core.exit.i.i ], [ 1, %._crit_edge ], [ 0, %.lr.ph ], [ 1, %3 ], [ 0, %.lr.ph.1 ], [ 1, %6 ], [ 0, %.lr.ph.2 ], [ 1, %9 ], [ 0, %.lr.ph.3 ], [ 1, %12 ], [ 0, %bb.c ], [ 1, %13 ], [ 0, %.lr.ph.a ], [ 1, %15 ], [ %spec.select, %.lr.ph.6 ]
  %i.af = insertvalue { i64, i64 } poison, i64 %19, 0
  %i.ag = insertvalue { i64, i64 } %i.af, i64 %.val2, 1
  ret { i64, i64 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtCsltEA4u8Pgfu_11candle_core7displayNtNtB6_6tensor6TensorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCsltEA4u8Pgfu_11candle_core6tensordINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtB5_6TensorE3add(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, double noundef %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !10440
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor6affine(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, double noundef 1.000000e+00, double noundef %1)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !10441
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit.i unwind label %bb.f, !noalias !10440

bb.d:                                             ; preds = %bb.a
  %i.e = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !10442
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RNvXsq_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3AdddE3add.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26, !noalias !10440
  br label %_RNvXsq_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3AdddE3add.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !10440
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_RNvXsq_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3AdddE3add.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsltEA4u8Pgfu_11candle_core6tensordINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddRNtB5_6TensorE3add(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, double noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor6affine(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, double noundef 1.000000e+00, double noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCsltEA4u8Pgfu_11candle_core6tensordINtNtNtCsf3Ta7LF998c_4core3ops5arith3MulNtB5_6TensorE3mul(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, double noundef %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8, !noalias !10457
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor6affine(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, double noundef %1, double noundef 0.000000e+00)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !10458
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit.i unwind label %bb.f, !noalias !10457

bb.d:                                             ; preds = %bb.a
  %i.e = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !10459
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RNvXsG_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MuldE3mul.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26, !noalias !10457
  br label %_RNvXsG_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MuldE3mul.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23, !noalias !10457
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.b

_RNvXsG_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6TensorINtNtNtCsf3Ta7LF998c_4core3ops5arith3MuldE3mul.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCsltEA4u8Pgfu_11candle_core6tensordINtNtNtCsf3Ta7LF998c_4core3ops5arith3MulRNtB5_6TensorE3mul(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, double noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor6affine(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, double noundef %1, double noundef 0.000000e+00)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs5_NtCsltEA4u8Pgfu_11candle_core9quantizedNtB5_7QTensorNtNtB7_9custom_op9CustomOp14name(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @173, i64 7 }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtCsltEA4u8Pgfu_11candle_core6tensordINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubNtB5_6TensorE3sub(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, double noundef %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %2, ptr %i.a, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor6affine(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, double noundef -1.000000e+00, double noundef %1)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !10472
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.e = atomicrmw add ptr %2, i64 -1 release, align 8, !noalias !10473
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit1

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorEBF_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtCsltEA4u8Pgfu_11candle_core6tensordINtNtNtCsf3Ta7LF998c_4core3ops5arith3SubRNtB5_6TensorE3sub(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, double noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor6affine(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, double noundef -1.000000e+00, double noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCsltEA4u8Pgfu_11candle_core7displayNtNtB7_6tensor6TensorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [80 x i8], align 8                ; 12 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [80 x i8], align 8                ; 12 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [80 x i8], align 8                ; 12 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [80 x i8], align 8                ; 12 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [80 x i8], align 8                ; 12 uses
end_hunk_1
