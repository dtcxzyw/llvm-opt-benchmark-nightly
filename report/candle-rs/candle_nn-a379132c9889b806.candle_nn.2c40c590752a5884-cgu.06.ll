Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_nn-a379132c9889b806.candle_nn.2c40c590752a5884-cgu.06?download=true
inline.NumInlined: 723
inline.NumDeleted: 215
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs0_NtCs3NyA1pFSltE_9candle_nn10batch_normNtB5_9BatchNorm11new_no_bias:bb.a
bb.b:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.v

bb.c:                                             ; preds = %bb.k, %bb.o, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit

bb.d:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.c, align 8, !range !6, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 5 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.524.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.521.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.l, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %.sroa.423.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit42

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs0_NtCsltEA4u8Pgfu_11candle_core8variableNtB5_3Var11from_tensor(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f)
          to label %bb.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !1107
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.h, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.v

bb.i:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.b, align 8, !range !6, !noundef !5 ; 2 uses
  %.not35 = icmp eq i64 %i.r, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  br i1 %.not35, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.533.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.530.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.r, ptr %0, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.432.0..sroa_idx, align 8
  %i.u = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !1108
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit42

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit42 unwind label %bb.c

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.e, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr null, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i8 1, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store double %4, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store double 1.000000e-01, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvMs0_NtCs3NyA1pFSltE_9candle_nn10batch_normNtB5_9BatchNorm14check_validity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e, i64 noundef %1)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #18
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.v

bb.n:                                             ; preds = %bb.l
  %i.ac = load i64, ptr %i.a, align 8, !range !6, !noundef !5
  %.not36 = icmp eq i64 %i.ac, -1
  br i1 %.not36, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3NyA1pFSltE_9candle_nn10batch_norm9BatchNormEBF_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e)
          to label %bb.t unwind label %bb.c

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.ae = load ptr, ptr %i.f, align 8, !alias.scope !1112, !nonnull !5, !noundef !5
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !1112
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.q, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit44

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit44 unwind label %bb.s

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit, %bb.b, %bb.s
  %.pn38 = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %.pn, %bb.b ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.ah = load ptr, ptr %i.g, align 8, !alias.scope !1116, !nonnull !5, !noundef !5
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !1116
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.r, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit46

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit46 unwind label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit44: ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  %i.al = load ptr, ptr %i.g, align 8, !alias.scope !1120, !nonnull !5, !noundef !5
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1120
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit47.sink.split, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit47

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit47.sink.split: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit44, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit49
  fence acquire
  call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #19
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit47

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit47: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit47.sink.split, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit49, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit44
  ret void

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit42, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %i.ao = load ptr, ptr %i.f, align 8, !alias.scope !1124, !nonnull !5, !noundef !5
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !1124
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit49

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit49 unwind label %bb.s

bb.v:                                             ; preds = %bb.r, %bb.h, %bb.b, %bb.m
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core8variable3VarECs3NyA1pFSltE_9candle_nn.exit42: ; preds = %bb.k, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.t

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit49: ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %i.as = load ptr, ptr %i.g, align 8, !alias.scope !1128, !nonnull !5, !noundef !5
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !1128
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit47.sink.split, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit47

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit46: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit, %bb.r
  resume { ptr, i32 } %.pn38
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs3NyA1pFSltE_9candle_nn10batch_normNtB5_9BatchNorm13forward_train(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 11 uses
  %i.e = alloca [80 x i8], align 8                ; 8 uses
  %i.f = alloca [80 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 17 uses
  %i.h = alloca [80 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 23 uses
  %i.j = alloca [8 x i8], align 8                 ; 15 uses
  %i.k = alloca [80 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 13 uses
  %i.m = alloca [80 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 13 uses
  %i.o = alloca [80 x i8], align 8                ; 9 uses
  %i.p = alloca [8 x i8], align 8                 ; 11 uses
  %i.q = alloca [80 x i8], align 8                ; 10 uses
  %i.r = alloca [8 x i8], align 8                 ; 19 uses
  %i.s = alloca [80 x i8], align 8                ; 6 uses
  %i.t = alloca [80 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 11 uses
  %i.v = alloca [80 x i8], align 8                ; 8 uses
  %i.w = alloca [80 x i8], align 8                ; 7 uses
  %i.x = alloca [8 x i8], align 8                 ; 15 uses
  %i.y = alloca [80 x i8], align 8                ; 10 uses
  %i.z = alloca [80 x i8], align 8                ; 7 uses
  %i.aa = alloca [8 x i8], align 8                ; 21 uses
  %i.ab = alloca [80 x i8], align 8               ; 7 uses
  %i.ac = alloca [8 x i8], align 8                ; 11 uses
  %i.ad = alloca [80 x i8], align 8               ; 8 uses
  %i.ae = alloca [8 x i8], align 8                ; 11 uses
  %i.af = alloca [80 x i8], align 8               ; 7 uses
  %i.ag = alloca [80 x i8], align 8               ; 6 uses
  %i.ah = alloca [80 x i8], align 8               ; 7 uses
  %i.ai = alloca [80 x i8], align 8               ; 8 uses
  %i.aj = alloca [80 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 15 uses
  %i.al = alloca [80 x i8], align 8               ; 10 uses
  %i.am = alloca [8 x i8], align 8                ; 14 uses
  %i.an = alloca [80 x i8], align 8               ; 7 uses
  %i.ao = alloca [8 x i8], align 8                ; 15 uses
  %i.ap = alloca [8 x i8], align 8                ; 22 uses
  %i.aq = alloca [80 x i8], align 8               ; 7 uses
  %i.ar = alloca [8 x i8], align 8                ; 11 uses
  %i.as = alloca [80 x i8], align 8               ; 8 uses
  %i.at = alloca [8 x i8], align 8                ; 20 uses
  %i.au = alloca [80 x i8], align 8               ; 7 uses
  %i.av = alloca [8 x i8], align 8                ; 18 uses
  %i.aw = alloca [80 x i8], align 8               ; 7 uses
  %i.ax = alloca [8 x i8], align 8                ; 18 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [80 x i8], align 8               ; 5 uses
  %i.bb = alloca [80 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [80 x i8], align 8               ; 5 uses
  %i.bf = alloca [80 x i8], align 8               ; 7 uses
  %i.bg = alloca [8 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3dimjECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, i64 noundef 0)
  %i.bh = load i64, ptr %i.bf, align 8, !range !6, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.bh, -1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i64, ptr %i.bi, align 8            ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.5292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5295.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5292.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  store i64 %i.bh, ptr %0, align 8
  %.sroa.4294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bj, ptr %.sroa.4294.0..sroa_idx, align 8
  br label %bb.io

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  store i64 %i.bj, ptr %i.bg, align 8
  %i.bk = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 146
  %i.bm = load i8, ptr %i.bl, align 2, !range !4, !noundef !5 ; 3 uses
  %.off = add nsw i8 %i.bm, -5
  %switch = icmp ult i8 %.off, 2
  %. = select i1 %switch, i8 7, i8 %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !5 ; 2 uses
  %i.bp = icmp ult i64 %i.bo, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = icmp samesign ult i64 %i.bo, 2
  br i1 %i.bq, label %.split559, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor3dimjECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i64 noundef 1)
  %i.br = load i64, ptr %i.bb, align 8, !range !6, !noundef !5 ; 2 uses
  %.not562 = icmp eq i64 %i.br, -1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  br i1 %.not562, label %bb.f, label %bb.e

.split559:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bu, ptr %i.bd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store ptr %i.bd, ptr %i.bc, align 8
  %.sroa.4299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeNtB6_5Debug3fmtCs3NyA1pFSltE_9candle_nn, ptr %.sroa.4299.0..sroa_idx, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bv, ptr noundef nonnull @13, ptr noundef nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  store i64 -9223372036854775766, ptr %i.be, align 8
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  br label %bb.io

bb.e:                                             ; preds = %bb.d
  %.sroa.5307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.5310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5310.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5307.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store i64 %i.br, ptr %0, align 8
  %.sroa.4309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bt, ptr %.sroa.4309.0..sroa_idx, align 8
  br label %bb.io

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %.not563 = icmp eq i64 %i.bt, %i.bj
  br i1 %.not563, label %bb.g, label %.split

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor8to_dtype(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i8 noundef %.)
  %i.bw = load i64, ptr %i.aw, align 8, !range !6, !noundef !5 ; 2 uses
  %.not564 = icmp eq i64 %i.bw, -1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  br i1 %.not564, label %bb.i, label %bb.h

.split:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bz, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %i.az, ptr %i.ay, align 8
  %.sroa.4314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsltEA4u8Pgfu_11candle_core5shape5ShapeNtB6_5Debug3fmtCs3NyA1pFSltE_9candle_nn, ptr %.sroa.4314.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.bg, ptr %i.ca, align 8
  %.sroa.4318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4318.0..sroa_idx, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cb, ptr noundef nonnull @12, ptr noundef nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  store i64 -9223372036854775766, ptr %i.ba, align 8
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.io

bb.h:                                             ; preds = %bb.g
  %.sroa.5326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.5329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5329.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5326.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  store i64 %i.bw, ptr %0, align 8
  %.sroa.4328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.by, ptr %.sroa.4328.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit838

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  store ptr %i.by, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor9transposejjECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.au, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ax, i64 noundef 0, i64 noundef 1)
          to label %bb.l unwind label %bb.k

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit649: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit651, %bb.o, %bb.k
  %.pn642 = phi { ptr, i32 } [ %i.cf, %bb.k ], [ %.pn640, %bb.o ], [ %.pn640, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit651 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1717)
  call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  %i.cc = load ptr, ptr %i.ax, align 8, !alias.scope !1720, !nonnull !5, !noundef !5
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !1720
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.j, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit

bb.j:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit649
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit unwind label %bb.gr

bb.k:                                             ; preds = %bb.ij, %bb.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit649

bb.l:                                             ; preds = %bb.i
  %i.cg = load i64, ptr %i.au, align 8, !range !6, !noundef !5 ; 2 uses
  %.not565 = icmp eq i64 %i.cg, -1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8            ; 4 uses
  br i1 %.not565, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.5335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.5338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5338.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5335.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  store i64 %i.cg, ptr %0, align 8
  %.sroa.4337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ci, ptr %.sroa.4337.0..sroa_idx, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit829

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  store ptr %i.ci, ptr %i.av, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !5, !noundef !5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke void @_RINvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB6_6Tensor8flatten_jjECs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av, i64 noundef 1, i64 1, i64 noundef 0, i64 undef)
          to label %bb.q unwind label %bb.p

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit651: ; preds = %.thread, %bb.im, %bb.t, %bb.u, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit679, %bb.p
  %.pn640 = phi { ptr, i32 } [ %i.cq, %bb.p ], [ %i.cu, %bb.t ], [ %.pn638, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit679 ], [ %i.cu, %bb.u ], [ %.pn638842, %bb.im ], [ %.pn638842, %.thread ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  call void @llvm.experimental.noalias.scope.decl(metadata !1723)
  %i.cn = load ptr, ptr %i.av, align 8, !alias.scope !1724, !nonnull !5, !noundef !5
  %i.co = atomicrmw sub ptr %i.cn, i64 1 release, align 8, !noalias !1724
  %i.cp = icmp eq i64 %i.co, 1
  br i1 %i.cp, label %bb.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit649

bb.o:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit651
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit649 unwind label %bb.gr

bb.p:                                             ; preds = %bb.il, %bb.x, %bb.n
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit651

bb.q:                                             ; preds = %bb.n
  %i.cr = load i64, ptr %i.aq, align 8, !range !6, !noundef !5 ; 2 uses
  %.not566 = icmp eq i64 %i.cr, -1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  br i1 %.not566, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.5347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5347.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5344.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  store i64 %i.cr, ptr %0, align 8
  %.sroa.4346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %.sroa.4346.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit653

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  store ptr %i.ct, ptr %i.ar, align 8
  invoke void @_RNvMs1_NtCsltEA4u8Pgfu_11candle_core6tensorNtB5_6Tensor10contiguous(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.as, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1725)
  call void @llvm.experimental.noalias.scope.decl(metadata !1726)
  call void @llvm.experimental.noalias.scope.decl(metadata !1727)
  %i.cv = load ptr, ptr %i.ar, align 8, !alias.scope !1728, !nonnull !5, !noundef !5
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !1728
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.u, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit651

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit651 unwind label %bb.gr

bb.v:                                             ; preds = %bb.s
  %i.cy = load i64, ptr %i.as, align 8, !range !6, !noundef !5 ; 2 uses
  %.not567 = icmp eq i64 %i.cy, -1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  br i1 %.not567, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.5353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.5356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5356.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5353.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 %i.cy, ptr %0, align 8
  %.sroa.4355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.da, ptr %.sroa.4355.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1729)
  call void @llvm.experimental.noalias.scope.decl(metadata !1730)
  call void @llvm.experimental.noalias.scope.decl(metadata !1731)
  %i.db = load ptr, ptr %i.ar, align 8, !alias.scope !1732, !nonnull !5, !noundef !5
  %i.dc = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !1732
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.x, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit653

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit653 unwind label %bb.p

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store ptr %i.da, ptr %i.at, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  call void @llvm.experimental.noalias.scope.decl(metadata !1734)
  call void @llvm.experimental.noalias.scope.decl(metadata !1735)
  %i.de = load ptr, ptr %i.ar, align 8, !alias.scope !1736, !nonnull !5, !noundef !5
  %i.df = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !1736
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit655

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsltEA4u8Pgfu_11candle_core6tensor7Tensor_E9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit655 unwind label %bb.aa

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit679: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit681, %bb.bp, %bb.aa
  %.sroa.0280.0 = phi i8 [ %.sroa.0280.1, %bb.aa ], [ %.sroa.0280.2, %bb.bp ], [ %.sroa.0280.2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit681 ]
  %.pn638 = phi { ptr, i32 } [ %i.di, %bb.aa ], [ %.pn634, %bb.bp ], [ %.pn634, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit681 ] ; 2 uses
  %i.dh = trunc nuw i8 %.sroa.0280.0 to i1
  br i1 %i.dh, label %.thread, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit651

bb.aa:                                            ; preds = %.invoke, %bb.ie, %bb.bo, %bb.z, %bb.ac
  %.sroa.0280.1 = phi i8 [ 1, %.invoke ], [ 1, %bb.z ], [ %.sroa.0280.2, %bb.ie ], [ 1, %bb.bo ], [ 1, %bb.ac ]
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit679

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit655: ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dk = load i8, ptr %i.dj, align 8, !range !11, !noundef !5
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsltEA4u8Pgfu_11candle_core6tensor6TensorECs3NyA1pFSltE_9candle_nn.exit655
  %i.dm = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  store ptr %i.dm, ptr %i.ap, align 8
  br label %bb.ad
end_hunk_0
