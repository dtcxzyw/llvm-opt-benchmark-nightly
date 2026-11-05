Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.019?download=true
inline.NumInlined: 5008
inline.NumDeleted: 2031
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvNtNtNtCsPYQCUnoTxQ_10collection10operations12verification6update27check_collection_size_limit0Csl8OoimOLbh_6qdrant:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.g, ptr %i.x, align 8
  %.sroa.1032.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 392
  store i8 0, ptr %.sroa.1032.0..sroa_idx, align 8
  br label %bb.f

.body:                                            ; preds = %bb.g, %bb.m, %bb.s, %bb.y, %bb.ad
  %.pn14.pn = phi { ptr, i32 } [ %i.bd, %bb.ad ], [ %i.as, %bb.s ], [ %i.az, %bb.y ], [ %i.z, %bb.g ], [ %i.ah, %bb.m ]
  store i8 2, ptr %i.e, align 8
  resume { ptr, i32 } %.pn14.pn

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #23
  unreachable

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #23
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  invoke fastcc void @_RNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtB4_10Collection26estimated_collection_stats0Csl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.d, ptr noundef nonnull align 8 %i.y, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.y) #20
          to label %.body unwind label %bb.aj

bb.h:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.d, align 8, !range !60, !noundef !12 ; 3 uses
  %i.ab = icmp eq i64 %i.aa, -2
  br i1 %i.ab, label %bb.i, label %bb.j

common.ret:                                       ; preds = %bb.ah, %bb.i
  %storemerge = phi i8 [ 3, %bb.i ], [ 1, %bb.ah ]
  store i8 %storemerge, ptr %i.e, align 8
  ret void

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -2, ptr %0, align 8
  br label %common.ret

bb.j:                                             ; preds = %bb.h
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 5 uses
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.535, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.535.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.ad = load i8, ptr %i.ac, align 8, !range !15, !noundef !12
  %cond.i = icmp eq i8 %i.ad, 3
  br i1 %cond.i, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 385
  %i.af = load i8, ptr %i.ae, align 1, !range !15, !noundef !12
  %cond.i.i = icmp eq i8 %i.af, 3
  br i1 %cond.i.i, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection30estimate_collection_size_stats0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.ag)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i8 0, ptr %i.ai, align 8
  br label %.body

bb.n:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 384
  store i8 0, ptr %i.aj, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit: ; preds = %bb.n, %bb.k, %bb.j
  %.not.i = icmp eq i64 %i.aa, -1
  br i1 %.not.i, label %bb.o, label %bb.ai

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit
  %.not4 = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not4, label %bb.ah, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !16, !noundef !12
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvNtNtNtCsPYQCUnoTxQ_10collection10operations12verification6update34check_collection_vector_size_limit(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, i64 noundef %i.ao, ptr noundef nonnull align 8 %.sroa.3.0.copyload)
          to label %bb.t unwind label %bb.s

bb.r:                                             ; preds = %bb.u, %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !range !16, !noundef !12
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.w, label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body

bb.t:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7090)
  %i.at = load i64, ptr %i.c, align 8, !range !30, !alias.scope !7091, !noundef !12 ; 2 uses
  %.not.i17 = icmp eq i64 %i.at, -1
  br i1 %.not.i17, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.v:                                             ; preds = %bb.t
  %.sroa.8.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.sroa.0.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx41, align 8, !alias.scope !7092
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx41.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx41.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ah

bb.w:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load i64, ptr %i.au, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvNtNtNtCsPYQCUnoTxQ_10collection10operations12verification6update35check_collection_payload_size_limit(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, i64 noundef %i.av, ptr noundef nonnull align 8 %.sroa.3.0.copyload)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.aa, %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !range !16, !noundef !12
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.ac, label %bb.ah

bb.y:                                             ; preds = %bb.w
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.body

bb.z:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7093)
  %i.ba = load i64, ptr %i.b, align 8, !range !30, !alias.scope !7094, !noundef !12 ; 2 uses
  %.not.i18 = icmp eq i64 %i.ba, -1
  br i1 %.not.i18, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.x

bb.ab:                                            ; preds = %bb.z
  %.sroa.846.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.846.sroa.0.0.copyload = load ptr, ptr %.sroa.846.0..sroa_idx47, align 8, !alias.scope !7095
  %.sroa.846.sroa.6.0..sroa.846.0..sroa_idx47.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.846.sroa.6.0..sroa.846.0..sroa_idx47.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.ac:                                            ; preds = %bb.x
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtNtNtCsPYQCUnoTxQ_10collection10operations12verification6update35check_collection_points_count_limit(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %i.bc, ptr noundef nonnull align 8 %.sroa.3.0.copyload)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.body

bb.ae:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7096)
  %i.be = load i64, ptr %i.a, align 8, !range !30, !alias.scope !7097, !noundef !12 ; 2 uses
  %.not.i20 = icmp eq i64 %i.be, -1
  br i1 %.not.i20, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %.sroa.852.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.852.sroa.0.0.copyload = load ptr, ptr %.sroa.852.0..sroa_idx53, align 8, !alias.scope !7098
  %.sroa.852.sroa.6.0..sroa.852.0..sroa_idx53.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.852.sroa.6.0..sroa.852.0..sroa_idx53.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.o, %bb.x, %bb.af, %bb.b, %bb.v, %bb.ab, %bb.ag, %bb.ai
  %.sroa.857.0 = phi ptr [ %.sroa.3.0.copyload, %bb.ai ], [ undef, %bb.x ], [ undef, %bb.b ], [ %.sroa.852.sroa.0.0.copyload, %bb.ag ], [ %.sroa.846.sroa.0.0.copyload, %bb.ab ], [ %.sroa.8.sroa.0.0.copyload, %bb.v ], [ undef, %bb.af ], [ undef, %bb.o ]
  %.sroa.056.0 = phi i64 [ %i.aa, %bb.ai ], [ -1, %bb.x ], [ -1, %bb.b ], [ %i.be, %bb.ag ], [ %i.ba, %bb.ab ], [ %i.at, %bb.v ], [ -1, %bb.af ], [ -1, %bb.o ]
  store i64 %.sroa.056.0, ptr %0, align 8
  %.sroa.857.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.857.0, ptr %.sroa.857.0..sroa_idx, align 8
  %.sroa.1260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, i64 32, i1 false)
  br label %common.ret

bb.ai:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection26estimated_collection_stats0ECsl8OoimOLbh_6qdrant.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.1260, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.535, i64 32, i1 false)
  br label %bb.ah

bb.aj:                                            ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference15update_requests20convert_point_struct0B9_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.26 = alloca [36 x i8], align 4           ; 14 uses
  %.sroa.32 = alloca [24 x i8], align 8           ; 2 uses
  %.sroa.5343 = alloca [36 x i8], align 4         ; 5 uses
  %i.b = alloca [152 x i8], align 8               ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  %i.e = alloca [208 x i8], align 8               ; 6 uses
  %i.f = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.8252.sroa.0 = alloca [36 x i8], align 4  ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 15 uses
  %i.h = alloca [144 x i8], align 8               ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 8 uses
  %i.j = alloca [56 x i8], align 8                ; 8 uses
  %i.k = alloca [208 x i8], align 8               ; 6 uses
  %i.l = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.8245.sroa.0 = alloca [36 x i8], align 4  ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 15 uses
  %i.n = alloca [144 x i8], align 8               ; 7 uses
  %i.o = alloca [56 x i8], align 8                ; 8 uses
  %i.p = alloca [56 x i8], align 8                ; 8 uses
  %i.q = alloca [208 x i8], align 8               ; 5 uses
  %i.r = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.8238.sroa.0 = alloca [36 x i8], align 4  ; 7 uses
  %i.s = alloca [48 x i8], align 8                ; 15 uses
  %i.t = alloca [208 x i8], align 8               ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 5 uses
  %i.v = alloca [48 x i8], align 8                ; 6 uses
  %i.w = alloca [56 x i8], align 8                ; 8 uses
  %i.x = alloca [48 x i8], align 8                ; 8 uses
  %i.y = alloca [232 x i8], align 8               ; 6 uses
  %i.z = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.8231.sroa.0 = alloca [36 x i8], align 4  ; 7 uses
  %i.aa = alloca [208 x i8], align 8              ; 15 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [64 x i8], align 8               ; 9 uses
  %i.ad = alloca [64 x i8], align 8               ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 12 uses
  %i.af = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.10 = alloca [48 x i8], align 8           ; 7 uses
  %i.ag = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.7 = alloca [144 x i8], align 8           ; 14 uses
  %.sroa.12 = alloca [56 x i8], align 8           ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 11 uses
  %i.aj = alloca [24 x i8], align 8               ; 15 uses
  %.sroa.3.sroa.3 = alloca [36 x i8], align 4     ; 3 uses
  %.sroa.7211.sroa.3 = alloca [48 x i8], align 8  ; 2 uses
  %i.ak = alloca [120 x i8], align 8              ; 12 uses
  %.sroa.0201 = alloca [1600 x i8], align 8       ; 4 uses
  %.sroa.9.sroa.8 = alloca [36 x i8], align 4     ; 8 uses
  %.sroa.10.sroa.9.sroa.8 = alloca [48 x i8], align 8 ; 8 uses
  %i.al = alloca [64 x i8], align 8               ; 15 uses
  %i.am = alloca [48 x i8], align 8               ; 21 uses
  %i.an = alloca [144 x i8], align 8              ; 5 uses
  %i.ao = alloca [208 x i8], align 8              ; 6 uses
  %i.ap = alloca [144 x i8], align 8              ; 5 uses
  %i.aq = alloca [208 x i8], align 8              ; 6 uses
  %i.ar = alloca [208 x i8], align 8              ; 5 uses
  %i.as = alloca [208 x i8], align 8              ; 5 uses
  %i.at = alloca [144 x i8], align 8              ; 5 uses
  %i.au = alloca [208 x i8], align 8              ; 6 uses
  %i.av = alloca [144 x i8], align 8              ; 5 uses
  %i.aw = alloca [208 x i8], align 8              ; 6 uses
  %i.ax = alloca [208 x i8], align 8              ; 5 uses
  %i.ay = alloca [208 x i8], align 8              ; 5 uses
  %i.az = alloca [40 x i8], align 8               ; 5 uses
  %i.ba = alloca [40 x i8], align 8               ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 1889 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !range !15, !noundef !12
  switch i8 %i.bc, label %default.unreachable498 [
    i8 0, label %bb.b
    i8 1, label %bb.bd
    i8 2, label %bb.be
    i8 3, label %bb.c
  ]

default.unreachable498:                           ; preds = %bb.a
  unreachable

.loopexit:                                        ; preds = %bb.f, %bb.t, %bb.fs, %bb.ez, %bb.eg, %bb.br, %bb.cx
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1891
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 1890 ; 3 uses
  store i8 0, ptr %i.be, align 2
  store i8 1, ptr %i.bd, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 1888
  %i.bh = load i8, ptr %i.bg, align 8, !range !38, !noundef !12
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bi, ptr noundef nonnull align 8 dereferenceable(88) %i.bj, i64 88, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 8 uses
  invoke void @_RNvMNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processingNtB2_10BatchAccum3new(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.bk)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.9.sroa.8)
  br label %bb.bf

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing10BatchAccumEBJ_.exit193: ; preds = %bb.hg, %bb.bc, %bb.d
  %.pn120.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bn, %bb.d ], [ %.pn120.pn.pn.pn.pn, %bb.bc ], [ %.pn120.pn.pn.pn.pn, %bb.hg ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 1890
  store i8 0, ptr %i.bl, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference6params15InferenceParamsEBJ_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.bm) #20
          to label %.body unwind label %bb.dx

bb.d:                                             ; preds = %bb.ha, %bb.ca, %bb.b
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing10BatchAccumEBJ_.exit193

bb.e:                                             ; preds = %bb.b
  store i8 1, ptr %i.be, align 2
  %i.bo = getelementptr i8, ptr %1, i64 120
  %.val = load ptr, ptr %i.bo, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.bp = getelementptr i8, ptr %1, i64 128
  %.val131 = load i64, ptr %i.bp, align 8, !noundef !12 ; 2 uses
  %.idx = mul nuw nsw i64 %.val131, 304
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  %i.br = icmp eq i64 %.val131, 0
  br i1 %i.br, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.0.0474 = phi ptr [ %.val, %.lr.ph ], [ %i.bw, %bb.i ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0474, i64 304 ; 2 uses
  %i.bx = load i64, ptr %.sroa.0.0474, align 8, !range !55, !noundef !12 ; 3 uses
  %i.by = icmp ne i64 %i.bx, 6
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nsw i64 %i.bx, -3
  %.inv107 = icmp slt i64 %i.bx, 3
  %i.ca = select i1 %.inv107, i64 3, i64 %i.bz
  switch i64 %i.ca, label %.loopexit [
    i64 0, label %bb.i
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.l
    i64 5, label %bb.m
  ]

._crit_edge:                                      ; preds = %bb.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.9.sroa.8)
  %i.cb = getelementptr i8, ptr %1, i64 248
  %.val132 = load i64, ptr %i.cb, align 8, !noundef !12
  %i.cc = icmp eq i64 %.val132, 0
  br i1 %i.cc, label %bb.bq, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0201)
  store i8 0, ptr %i.be, align 2
  %.sroa.0201.1552..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0201, i64 1552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0201.1552..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.bk, i64 48, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1600) %i.cd, ptr noundef nonnull align 8 dereferenceable(1600) %.sroa.0201, i64 1600, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0201)
  %.sroa.8206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1872
  store ptr %i.bi, ptr %.sroa.8206.0..sroa_idx, align 8
  %.sroa.9207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1880
  store i8 0, ptr %.sroa.9207.0..sroa_idx, align 8
  %.sroa.10208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1881
  store i8 %i.bh, ptr %.sroa.10208.0..sroa_idx, align 1
  br label %bb.bf

end_hunk_0
