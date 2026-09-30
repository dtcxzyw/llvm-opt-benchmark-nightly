Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.15?download=true
inline.NumInlined: 678
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNCNvYINtNtNtCs5XgW7KoffLW_12opendal_core6layers8complete18CompleteReadStreamINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtBb_3raw3oio4read3api13ReadStreamDynEL_EENtB1O_10ReadStream8read_all0Bb_:bb.a
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.bm = extractvalue { ptr, i64 } %i.bk, 0
  %i.bn = extractvalue { ptr, i64 } %i.bk, 1
  %i.bo = load i64, ptr %i.b, align 8, !noalias !1634, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1634
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1634
  store i8 0, ptr %i.bg, align 8
  br label %bb.al

bb.al:                                            ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1d_.exit, %bb.ak
  %.sroa.3.sroa.5.sroa.0.0 = phi i64 [ 0, %bb.ak ], [ %.sroa.768.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1d_.exit ]
  %.sroa.3.sroa.5.sroa.3.0 = phi i64 [ 0, %bb.ak ], [ %.sroa.8.sroa.0.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1d_.exit ]
  %.sroa.3.sroa.4.0 = phi i64 [ %i.bo, %bb.ak ], [ %.sroa.6.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1d_.exit ]
  %.sroa.3.sroa.3.0 = phi i64 [ %i.bn, %bb.ak ], [ %.sroa.567.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1d_.exit ]
  %.sroa.3.sroa.0.0 = phi ptr [ %i.bm, %bb.ak ], [ %.sroa.466.0.copyload, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1d_.exit ]
  store i64 %i.o, ptr %0, align 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.sroa.0.0, ptr %.sroa.3.0..sroa_idx4, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.sroa.3.0, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx, align 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.3.sroa.4.0, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx4.sroa_idx, align 8
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.3.sroa.5.sroa.0.0, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx4.sroa_idx, align 8
  %.sroa.3.sroa.5.sroa.3.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx4.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.3.sroa.5.sroa.3.0, ptr %.sroa.3.sroa.5.sroa.3.0..sroa.3.sroa.5.0..sroa.3.0..sroa_idx4.sroa_idx.sroa_idx, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx5, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4, i64 40, i1 false)
  br label %common.ret

bb.am:                                            ; preds = %bb.aj, %.body
  %.pn15.pn = phi { ptr, i32 } [ %i.bl, %bb.aj ], [ %.pn10.pn, %.body ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bq = load i8, ptr %i.bp, align 8, !range !17, !noundef !5
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.ao, label %.body20

bb.an:                                            ; preds = %bb.ao, %bb.h
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1d_.exit: ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i8 0, ptr %i.bt, align 8
  br label %bb.al

bb.ao:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #24
          to label %.body20 unwind label %bb.an
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs5XgW7KoffLW_12opendal_core5types7context9operationNtB2_16OperationContext3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { ptr, ptr } @_RNvXs0_NtNtCs5XgW7KoffLW_12opendal_core5types14http_transportNtB5_15HttpTransporterNtNtCsgxBkk5gSRhY_4core7default7Default7default() ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0        ; 3 uses
  %i.d = extractvalue { ptr, ptr } %i.b, 1        ; 2 uses
  store ptr %i.c, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = invoke { ptr, ptr } @_RNvXs_NtNtNtCs5XgW7KoffLW_12opendal_core5types7execute8executorNtB4_8ExecutorNtNtCsgxBkk5gSRhY_4core7default7Default7default()
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !1646
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport16HttpTransportDynEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.f, 0
  %i.k = extractvalue { ptr, ptr } %i.f, 1
  store ptr %i.c, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types14http_transport15HttpTransporterEBH_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core6layers8completeNtB5_14CompleteCopier17complete_metadata(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [256 x i8], align 8               ; 4 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 4 uses
  %i.g = alloca [88 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.k = load i16, ptr %i.j, align 4, !noundef !5
  %i.l = and i16 %i.k, 3
  %cond = icmp eq i16 %i.l, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !11, !noundef !5 ; 3 uses
  br i1 %cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5 ; 2 uses
  %i.r = load i64, ptr %i.i, align 8, !noundef !5
  %.not = icmp eq i64 %i.r, %i.q
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.e, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 54)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error14with_operationReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 21)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 8, i64 noundef %i.q)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.t = load i64, ptr %i.i, align 8, !noundef !5
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error12with_contextyEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 6, i64 noundef %i.t)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.h, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.j:                                             ; preds = %bb.q, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1667)
  call void @llvm.experimental.noalias.scope.decl(metadata !1668)
  call void @llvm.experimental.noalias.scope.decl(metadata !1669)
  %i.u = load ptr, ptr %2, align 8, !alias.scope !1670, !noundef !5 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !1671
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2) #23
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.n, %bb.d
  ret void

bb.m:                                             ; preds = %bb.a
  %i.y = load i64, ptr %1, align 8, !range !11, !noundef !5
  %spec.select5 = or i64 %i.y, %i.n
  %i.z = trunc nuw i64 %spec.select5 to i1
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %3 = shl nuw nsw i64 %i.n, 4
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %spec.select = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.3.0 = load i64, ptr %spec.select, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder13from_metadata(ptr noalias nofree noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 236 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 4, !noundef !5
  %i.ad = and i16 %i.ac, -4
  %i.ae = or disjoint i16 %i.ad, 1
  store i16 %i.ae, ptr %i.ab, align 4
  store i64 %.sroa.3.0, ptr %i.aa, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvMs3_NtNtCs5XgW7KoffLW_12opendal_core5types8metadataNtB5_15MetadataBuilder5build(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(256) %i.b)
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error3newReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.c, i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 75)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_RINvMs5_NtNtCs5XgW7KoffLW_12opendal_core5types5errorNtB6_5Error14with_operationReEBa_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 21)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.j

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit6: ; preds = %bb.s, %bb.r, %bb.t
  resume { ptr, i32 } %lpad.thr_comm

bb.r:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.p, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  call void @llvm.experimental.noalias.scope.decl(metadata !1673)
  call void @llvm.experimental.noalias.scope.decl(metadata !1674)
  %i.ag = load ptr, ptr %2, align 8, !alias.scope !1675, !noundef !5 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit6, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !1676
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.t, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit6

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %2) #23
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit6 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueE10take_frontCs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #3 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  store i64 0, ptr %1, align 8
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.sroa.5.sroa.6.0.copyload, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.022.025.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ]
  %.sroa.020.024.prol = phi i64 [ %i.e, %.lr.ph.prol ], [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.022.025.prol, i64 632
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.e = add i64 %.sroa.020.024.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1677

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.022.025.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.sroa.020.024.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.f = icmp ult i64 %.sroa.5.sroa.6.0.copyload, 8
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.5.sroa.5.0.copyload, %bb.f ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.v, %.lr.ph ]
  store ptr %.sroa.022.0.lcssa, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.022.025 = phi ptr [ %i.v, %.lr.ph ], [ %.sroa.022.025.unr, %.lr.ph.prol.loopexit ]
  %.sroa.020.024 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.020.024.unr, %.lr.ph.prol.loopexit ]
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.022.025, i64 632
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 632
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 632
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 632
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 632
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 632
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 632
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 632
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = add i64 %.sroa.020.024, -8               ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE10take_frontB2b_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #3 {
bb.a:
  %.sroa.01.0.copyload = load i64, ptr %1, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 6 uses
  store i64 0, ptr %1, align 8
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null
  br i1 %.not, label %bb.f, label %bb.e

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  store ptr %.sroa.5.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.sroa.5.0.copyload, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.6.0.copyload, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  %i.b = icmp eq i64 %.sroa.5.sroa.6.0.copyload, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %xtraiter = and i64 %.sroa.5.sroa.6.0.copyload, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.022.025.prol = phi ptr [ %i.d, %.lr.ph.prol ], [ %.sroa.5.sroa.5.0.copyload, %.lr.ph.preheader ]
end_hunk_0
