Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/storage-25fd2993824800e1.storage.c24d9f59ecb05c11-cgu.003?download=true
inline.NumInlined: 14484
inline.NumDeleted: 4641
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtB4_17SharedShardHolder5write0CsgGgPqgSfnMH_7storage:bb.a
  %i.y = getelementptr i8, ptr %1, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !noalias !24456
  %.sroa.915.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.w, ptr %.sroa.915.0..sroa_idx.i.i, align 8, !noalias !24456
  %.sroa.1016.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.w, ptr %.sroa.1016.0..sroa_idx.i.i, align 8, !noalias !24456
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 0, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !noalias !24456
  br label %bb.l

.body.i.i:                                        ; preds = %bb.u, %bb.q, %bb.p, %bb.m
  %.pn7.i.i = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.af, %bb.m ], [ %i.at, %bb.u ], [ %i.ah, %bb.q ]
  store i8 2, ptr %i.ab, align 8, !noalias !24456
  br label %.body.i

bb.j:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #27
          to label %.noexc.i unwind label %bb.x, !noalias !24454

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #27
          to label %.noexc4.i unwind label %bb.x, !noalias !24454

.noexc4.i:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.z = phi ptr [ %i.j, %bb.h ], [ %i.p, %bb.i ] ; 3 uses
  %i.aa = phi ptr [ %i.i, %bb.h ], [ %i.q, %bb.i ]
  %i.ab = phi ptr [ %.phi.trans.insert.i, %bb.h ], [ %i.s, %bb.i ] ; 3 uses
  %i.ac = phi ptr [ %i.o, %bb.h ], [ %i.t, %bb.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = invoke noundef i8 @_RNvXs1_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8 %i.ad, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.n unwind label %bb.m, !noalias !24458 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ad) #23
          to label %.body.i.i unwind label %bb.w, !noalias !24458

bb.n:                                             ; preds = %bb.l
  %i.ag = icmp eq i8 %i.ae, 2
  br i1 %i.ag, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ad)
          to label %bb.r unwind label %bb.p, !noalias !24458

bb.p:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val2.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !24456, !align !35, !noundef !29 ; 2 uses
  %i.aj = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.aj, label %.body.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr i8, ptr %1, i64 40
  %.val3.i.i.i = load ptr, ptr %i.ak, align 8, !noalias !24456
  %i.al = getelementptr inbounds nuw i8, ptr %.val2.i.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !noalias !24458, !nonnull !29, !noundef !29
  invoke void %i.am(ptr noundef %.val3.i.i.i)
          to label %.body.i.i unwind label %bb.t, !noalias !24458, !inline_history !0

bb.r:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i = load ptr, ptr %i.an, align 8, !noalias !24456, !align !35, !noundef !29 ; 2 uses
  %i.ao = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsgGgPqgSfnMH_7storage.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr i8, ptr %1, i64 40
  %.val1.i.i.i = load ptr, ptr %i.ap, align 8, !noalias !24456
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !24458, !nonnull !29, !noundef !29
  invoke void %i.ar(ptr noundef %.val1.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsgGgPqgSfnMH_7storage.exit.i.i unwind label %bb.u, !noalias !24458, !inline_history !78

bb.t:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !24458
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsgGgPqgSfnMH_7storage.exit.i.i: ; preds = %bb.s, %bb.r
  %i.au = trunc nuw i8 %i.ae to i1
  br i1 %i.au, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsgGgPqgSfnMH_7storage.exit.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #27
          to label %.noexc11.i.i unwind label %bb.u, !noalias !24458

.noexc11.i.i:                                     ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !24458
  unreachable

bb.x:                                             ; preds = %bb.k, %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.thread:                                          ; preds = %bb.n
  store i8 3, ptr %i.ab, align 8, !noalias !24456
  store i8 3, ptr %i.z, align 8, !noalias !24454
  br label %bb.ab

.body.i:                                          ; preds = %bb.x, %.body.i.i
  %i.ax = phi ptr [ %i.z, %.body.i.i ], [ %i.j, %bb.x ]
  %i.ay = phi ptr [ %i.aa, %.body.i.i ], [ %i.i, %bb.x ]
  %i.az = phi ptr [ %i.ac, %.body.i.i ], [ %i.o, %bb.x ]
  %.pn.i = phi { ptr, i32 } [ %.pn7.i.i, %.body.i.i ], [ %i.aw, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBL_6RwLockNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderE5write00ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.az) #23
          to label %.body10.i unwind label %bb.y, !noalias !24455

bb.y:                                             ; preds = %.body.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !24455
  unreachable

bb.z:                                             ; preds = %bb.g, %bb.f
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphore7AcquireECsgGgPqgSfnMH_7storage.exit.i.i
  %i.bc = load ptr, ptr %i.ac, align 8, !noalias !24456, !nonnull !29, !align !35, !noundef !29 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load i32, ptr %i.bd, align 8, !noalias !24458, !noundef !29
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store ptr %i.bc, ptr %0, align 8, !alias.scope !24458, !noalias !24459
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !24458, !noalias !24459
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !24458, !noalias !24459
  store i8 1, ptr %i.ab, align 8, !noalias !24456
  %.pr = load ptr, ptr %0, align 8
  store i8 1, ptr %i.z, align 8, !noalias !24454
  %i.bg = icmp eq ptr %.pr, null
  br i1 %i.bg, label %bb.ab, label %common.ret

common.ret:                                       ; preds = %bb.aa, %bb.ab
  %storemerge = phi i8 [ 3, %bb.ab ], [ 1, %bb.aa ]
  store i8 %storemerge, ptr %i.a, align 8
  ret void

bb.ab:                                            ; preds = %.thread, %bb.aa
  store ptr null, ptr %0, align 8
  br label %common.ret

bb.ac:                                            ; preds = %.body
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc17create_collectionNtB6_14TableOfContent17create_collection0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.391.i = alloca [40 x i8], align 8        ; 6 uses
  %.sroa.3.i = alloca [40 x i8], align 8          ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [64 x i8], align 8                ; 12 uses
  %i.f = alloca [56 x i8], align 8                ; 7 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [96 x i8], align 8                ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [640 x i8], align 8               ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 13 uses
  %i.r = alloca [72 x i8], align 8                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 10 uses
  %i.t = alloca [48 x i8], align 8                ; 11 uses
  %.sroa.4.i.i = alloca i64, align 8              ; 5 uses
  %.sroa.6.i.i = alloca i64, align 8              ; 4 uses
  %i.u = alloca [840 x i8], align 8               ; 7 uses
  %i.v = alloca [112 x i8], align 8               ; 9 uses
  %i.w = alloca [624 x i8], align 8               ; 54 uses
  %i.x = alloca [8 x i8], align 8                 ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 7 uses
  %i.aa = alloca [16 x i8], align 8               ; 7 uses
  %i.ab = alloca [8 x i8], align 8                ; 7 uses
  %i.ac = alloca [16 x i8], align 16              ; 7 uses
  %i.ad = alloca [16 x i8], align 16              ; 8 uses
  %i.ae = alloca [16 x i8], align 16              ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [72 x i8], align 8               ; 5 uses
  %i.ah = alloca [112 x i8], align 8              ; 6 uses
  %i.ai = alloca [80 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [8 x i8], align 8                ; 7 uses
  %i.am = alloca [8 x i8], align 8                ; 7 uses
  %i.an = alloca [136 x i8], align 8              ; 5 uses
  %i.ao = alloca [8 x i8], align 8                ; 7 uses
  %i.ap = alloca [8 x i8], align 8                ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [48 x i8], align 8               ; 7 uses
  %i.as = alloca [456 x i8], align 8              ; 5 uses
  %.sroa.3398.i = alloca [40 x i8], align 8       ; 6 uses
  %i.at = alloca [48 x i8], align 8               ; 7 uses
  %.sroa.0385.i = alloca [1504 x i8], align 8     ; 5 uses
  %.sroa.3376.i = alloca [48 x i8], align 8       ; 7 uses
  %.sroa.5377.i = alloca [1424 x i8], align 8     ; 6 uses
  %i.au = alloca [1480 x i8], align 8             ; 8 uses
  %i.av = alloca [16 x i8], align 8               ; 7 uses
  %i.aw = alloca [80 x i8], align 8               ; 6 uses
  %i.ax = alloca [8 x i8], align 8                ; 7 uses
  %i.ay = alloca [8 x i8], align 8                ; 7 uses
  %i.az = alloca [104 x i8], align 8              ; 5 uses
  %i.ba = alloca [8 x i8], align 8                ; 7 uses
  %i.bb = alloca [16 x i8], align 16              ; 8 uses
  %i.bc = alloca [16 x i8], align 16              ; 8 uses
  %i.bd = alloca [48 x i8], align 8               ; 6 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 12 uses
  %i.bg = alloca [1480 x i8], align 8             ; 14 uses
  %i.bh = alloca [104 x i8], align 8              ; 5 uses
  %i.bi = alloca [136 x i8], align 8              ; 14 uses
  %i.bj = alloca [64 x i8], align 8               ; 5 uses
  %i.bk = alloca [64 x i8], align 8               ; 10 uses
  %i.bl = alloca [776 x i8], align 8              ; 5 uses
  %i.bm = alloca [824 x i8], align 8              ; 5 uses
  %i.bn = alloca [96 x i8], align 8               ; 8 uses
  %.sroa.8293.i = alloca [48 x i8], align 8       ; 7 uses
  %i.bo = alloca [48 x i8], align 8               ; 6 uses
  %i.bp = alloca [48 x i8], align 8               ; 8 uses
  %i.bq = alloca [48 x i8], align 8               ; 7 uses
  %i.br = alloca [456 x i8], align 8              ; 8 uses
  %.sroa.8279.i = alloca [48 x i8], align 8       ; 7 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [16 x i8], align 8               ; 4 uses
  %i.bu = alloca [32 x i8], align 8               ; 7 uses
  %i.bv = alloca [24 x i8], align 8               ; 4 uses
  %i.bw = alloca [8 x i8], align 8                ; 6 uses
  %i.bx = alloca [56 x i8], align 8               ; 5 uses
  %i.by = alloca [24 x i8], align 8               ; 6 uses
  %i.bz = alloca [16 x i8], align 8               ; 4 uses
  %i.ca = alloca [176 x i8], align 8              ; 6 uses
  %i.cb = alloca [56 x i8], align 8               ; 15 uses
  %.sroa.1095.i = alloca [52 x i8], align 4       ; 8 uses
  %i.cc = alloca [32 x i8], align 8               ; 9 uses
  %i.cd = alloca [48 x i8], align 8               ; 6 uses
  %i.ce = alloca [24 x i8], align 8               ; 8 uses
  %i.cf = alloca [24 x i8], align 8               ; 9 uses
  %i.cg = alloca [40 x i8], align 8               ; 9 uses
  %i.ch = alloca [16 x i8], align 8               ; 6 uses
  %i.ci = alloca [16 x i8], align 8               ; 6 uses
  %i.cj = alloca [32 x i8], align 8               ; 8 uses
  %i.ck = alloca [16 x i8], align 8               ; 6 uses
  %i.cl = alloca [24 x i8], align 8               ; 5 uses
  %i.cm = alloca [24 x i8], align 8               ; 5 uses
  %i.cn = alloca [56 x i8], align 8               ; 5 uses
  %i.co = alloca [56 x i8], align 8               ; 25 uses
  %.sroa.3963 = alloca [40 x i8], align 8         ; 2 uses
  %.sroa.9960 = alloca [40 x i8], align 8         ; 7 uses
  %i.cp = alloca [40 x i8], align 8               ; 9 uses
  %i.cq = alloca [16 x i8], align 8               ; 6 uses
  %i.cr = alloca [8 x i8], align 8                ; 7 uses
  %i.cs = alloca [624 x i8], align 8              ; 7 uses
  %.sroa.4 = alloca [608 x i8], align 8           ; 2 uses
  %i.ct = alloca [624 x i8], align 8              ; 8 uses
  %i.cu = alloca [24 x i8], align 8               ; 8 uses
  %i.cv = alloca [56 x i8], align 8               ; 7 uses
  %i.cw = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.9879 = alloca [16 x i8], align 8         ; 7 uses
  %.sroa.3857 = alloca [616 x i8], align 8        ; 4 uses
  %.sroa.10853 = alloca [616 x i8], align 8       ; 7 uses
  %i.cx = alloca [24 x i8], align 8               ; 6 uses
  %i.cy = alloca [32 x i8], align 8               ; 8 uses
  %i.cz = alloca [24 x i8], align 8               ; 6 uses
  %i.da = alloca [32 x i8], align 8               ; 8 uses
  %i.db = alloca [16 x i8], align 16              ; 8 uses
  %i.dc = alloca [24 x i8], align 8               ; 6 uses
  %i.dd = alloca [32 x i8], align 8               ; 8 uses
  %i.de = alloca [16 x i8], align 16              ; 8 uses
  %i.df = alloca [80 x i8], align 8               ; 6 uses
  %i.dg = alloca [48 x i8], align 8               ; 7 uses
  %i.dh = alloca [64 x i8], align 8               ; 6 uses
  %i.di = alloca [8 x i8], align 8                ; 7 uses
  %i.dj = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.9828 = alloca [136 x i8], align 8        ; 8 uses
  %.sroa.10829 = alloca [24 x i8], align 8        ; 8 uses
  %.sroa.11830 = alloca [80 x i8], align 8        ; 8 uses
  %.sroa.18837 = alloca [64 x i8], align 8        ; 8 uses
  %.sroa.27846 = alloca [48 x i8], align 8        ; 8 uses
  %i.dk = alloca [48 x i8], align 8               ; 22 uses
  %i.dl = alloca [288 x i8], align 8              ; 5 uses
  %i.dm = alloca [8 x i8], align 8                ; 22 uses
  %i.dn = alloca [296 x i8], align 8              ; 5 uses
  %i.do = alloca [296 x i8], align 8              ; 7 uses
  %i.dp = alloca [296 x i8], align 8              ; 25 uses
  %i.dq = alloca [296 x i8], align 8              ; 7 uses
  %i.dr = alloca [296 x i8], align 8              ; 22 uses
  %i.ds = alloca [56 x i8], align 8               ; 20 uses
  %i.dt = alloca [104 x i8], align 8              ; 20 uses
  %i.du = alloca [24 x i8], align 8               ; 20 uses
  %i.dv = alloca [56 x i8], align 8               ; 8 uses
  %i.dw = alloca [56 x i8], align 8               ; 8 uses
  %i.dx = alloca [32 x i8], align 8               ; 25 uses
  %i.dy = alloca [120 x i8], align 8              ; 25 uses
  %i.dz = alloca [192 x i8], align 8              ; 30 uses
  %i.ea = alloca [72 x i8], align 8               ; 13 uses
  %.sroa.3 = alloca [52 x i8], align 4            ; 4 uses
  %.sroa.9728 = alloca [52 x i8], align 4         ; 8 uses
  %i.eb = alloca [16 x i8], align 8               ; 6 uses
  %i.ec = alloca [24 x i8], align 8               ; 5 uses
  %i.ed = alloca [24 x i8], align 8               ; 5 uses
  %i.ee = alloca [56 x i8], align 8               ; 5 uses
  %i.ef = alloca [16 x i8], align 8               ; 11 uses
  %i.eg = alloca [32 x i8], align 8               ; 8 uses
  %i.eh = alloca [24 x i8], align 8               ; 5 uses
  %i.ei = alloca [24 x i8], align 8               ; 5 uses
  %i.ej = alloca [56 x i8], align 8               ; 5 uses
  %i.ek = alloca [8 x i8], align 8                ; 6 uses
  %i.el = alloca [56 x i8], align 8               ; 7 uses
  %i.em = alloca [16 x i8], align 8               ; 11 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 4220 ; 3 uses
  %i.eo = load i8, ptr %i.en, align 4, !range !70, !noundef !29
  %.sink1219.sroa.gep = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sink1219.sroa.gep1220 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  switch i8 %i.eo, label %default.unreachable1205 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.b
    i8 5, label %bb.c
    i8 6, label %bb.ce
    i8 7, label %bb.ld
    i8 8, label %bb.d
    i8 9, label %bb.aac
    i8 10, label %bb.e
    i8 11, label %bb.f
    i8 12, label %bb.g
    i8 13, label %bb.afh
  ]

default.unreachable1205:                          ; preds = %bb.afh, %bb.abh, %bb.aav, %bb.aac, %bb.rt, %bb.rq, %bb.qx, %bb.ld, %bb.et, %bb.ck, %bb.ce, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  br label %bb.bf

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  br label %bb.zo

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  br label %bb.acs

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  br label %bb.aea

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  br label %bb.aei

bb.h:                                             ; preds = %bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 4248
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 4241
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 4250
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 848 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.eq, i8 0, i64 17, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !29
  %i.ew = load <2 x ptr>, ptr %i.et, align 8
  %i.ex = load ptr, ptr %i.et, align 8, !nonnull !29, !align !35, !noundef !29
  store <2 x ptr> %i.ew, ptr %i.es, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 952
  store i64 %i.ev, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 960
  store i32 16843009, ptr %i.er, align 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(848) %i.ez, ptr noundef nonnull align 8 dereferenceable(848) %1, i64 848, i1 false)
  store i8 1, ptr %i.ep, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 1808
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 872
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fa, ptr noundef nonnull align 8 dereferenceable(64) %i.fb, i64 64, i1 false)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 776
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 4264
  store ptr %i.fc, ptr %i.fd, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4376
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @577) #27
  unreachable

bb.j:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @577) #27
  unreachable

bb.k:                                             ; preds = %bb.a, %bb.h
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 4264 ; 3 uses
  %i.ff = invoke fastcc noundef align 8 ptr @_RNCNvMs8_NtNtCsjZG7hsAZr3B_5tokio4sync5mutexINtB7_5MutexuE4lock0CsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.fe, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.l       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.fg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMs8_NtNtCsjZG7hsAZr3B_5tokio4sync5mutexINtBJ_5MutexuE4lock0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.fe) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuarduEECsgGgPqgSfnMH_7storage.exit670 unwind label %bb.z

bb.m:                                             ; preds = %bb.k
  %i.fh = icmp eq ptr %i.ff, null
  br i1 %i.fh, label %bb.n, label %bb.o

common.ret:                                       ; preds = %bb.aih, %bb.ahn, %bb.ael, %bb.aed, %bb.acv, %bb.aco, %bb.zr, %bb.ze, %bb.fb, %bb.bi, %bb.ad, %bb.n
  %.sink = phi i8 [ 1, %bb.aih ], [ 13, %bb.ahn ], [ 12, %bb.ael ], [ 11, %bb.aed ], [ 10, %bb.acv ], [ 9, %bb.aco ], [ 8, %bb.zr ], [ 7, %bb.ze ], [ 6, %bb.fb ], [ 5, %bb.bi ], [ 4, %bb.ad ], [ 3, %bb.n ]
  store i8 %.sink, ptr %i.en, align 4
  ret void

bb.n:                                             ; preds = %bb.m
  store i32 -2, ptr %0, align 8
  br label %common.ret

bb.o:                                             ; preds = %bb.m
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 4247
  store i8 1, ptr %i.fi, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 1872
  store ptr %i.ff, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 4376
  %i.fl = load i8, ptr %i.fk, align 8, !range !38, !noundef !29
  %cond.i = icmp eq i8 %i.fl, 3
  br i1 %cond.i, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 4368
  %i.fn = load i8, ptr %i.fm, align 8, !range !38, !noundef !29
  %cond.i.i = icmp eq i8 %i.fn, 3
  br i1 %cond.i.i, label %bb.q, label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 4296
  %i.fp = load i8, ptr %i.fo, align 8, !range !60, !noundef !29
  %cond.i.i.i = icmp eq i8 %i.fp, 4
  br i1 %cond.i.i.i, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 4304
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.fq)
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 4312
  %.val2.i.i.i.i = load ptr, ptr %i.fs, align 8, !align !35, !noundef !29 ; 2 uses
  %i.ft = icmp eq ptr %.val2.i.i.i.i, null
  br i1 %i.ft, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuarduEECsgGgPqgSfnMH_7storage.exit670, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fu = getelementptr i8, ptr %1, i64 4320
  %.val3.i.i.i.i = load ptr, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !29, !noundef !29
  invoke void %i.fw(ptr noundef %.val3.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuarduEECsgGgPqgSfnMH_7storage.exit670 unwind label %bb.w, !inline_history !0

bb.u:                                             ; preds = %bb.r
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 4312
  %.val.i.i.i.i = load ptr, ptr %i.fx, align 8, !align !35, !noundef !29 ; 2 uses
  %i.fy = icmp eq ptr %.val.i.i.i.i, null
  br i1 %i.fy, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fz = getelementptr i8, ptr %1, i64 4320
  %.val1.i.i.i.i = load ptr, ptr %i.fz, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8, !nonnull !29, !noundef !29
  invoke void %i.gb(ptr noundef %.val1.i.i.i.i)
          to label %bb.y unwind label %bb.x, !inline_history !97

bb.w:                                             ; preds = %bb.t
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuarduEECsgGgPqgSfnMH_7storage.exit670

bb.y:                                             ; preds = %bb.v, %bb.o, %bb.p, %bb.q, %bb.u
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 1880
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 1560
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ge, ptr noundef nonnull align 8 dereferenceable(120) %i.gg, i64 120, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 2000
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 1752
  %i.gj = load <2 x i32>, ptr %i.gi, align 8
  store <2 x i32> %i.gj, ptr %i.gh, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 4221
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 1805
  %i.gm = load i8, ptr %i.gl, align 1, !range !33, !noundef !29
  store i8 %i.gm, ptr %i.gk, align 1
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 4222
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 1806
  %i.gp = load i8, ptr %i.go, align 2, !range !33, !noundef !29
  store i8 %i.gp, ptr %i.gn, align 2
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 4223
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 1807
  %i.gs = load i8, ptr %i.gr, align 1, !range !134, !noundef !29
  store i8 %i.gs, ptr %i.gq, align 1
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 2008
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 992
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.gt, ptr noundef nonnull align 8 dereferenceable(88) %i.gu, i64 88, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 1080
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gv, ptr noundef nonnull align 8 dereferenceable(48) %i.gw, i64 48, i1 false)
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 2144
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 1128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.gx, ptr noundef nonnull align 8 dereferenceable(136) %i.gy, i64 136, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 2280
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 1760
  %i.hb = load <4 x i32>, ptr %i.ha, align 8
  store <4 x i32> %i.hb, ptr %i.gz, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 4208
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 1776
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hc, ptr noundef nonnull align 8 dereferenceable(12) %i.hd, i64 12, i1 false)
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 2296
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.he, ptr noundef nonnull align 8 dereferenceable(32) %i.gf, i64 32, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 2328
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 1264
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.hf, ptr noundef nonnull align 8 dereferenceable(296) %i.hg, i64 296, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 4224
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 1788
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.hh, ptr noundef nonnull align 4 dereferenceable(17) %i.hi, i64 17, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 4250
  store <4 x i8> zeroinitializer, ptr %i.hj, align 2
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 4243
  store <4 x i8> splat (i8 1), ptr %i.hk, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 2624
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 1680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hl, ptr noundef nonnull align 8 dereferenceable(72) %i.hm, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.em)
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 936
  %i.ho = load ptr, ptr %i.hn, align 8, !nonnull !29, !align !35, !noundef !29
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 480
  %.val278 = load ptr, ptr %i.hp, align 8, !nonnull !29, !noundef !29
  %i.hq = getelementptr inbounds nuw i8, ptr %.val278, i64 16
  store ptr %i.hq, ptr %i.fe, align 8
  %.sroa.8686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4352
  store i8 0, ptr %.sroa.8686.0..sroa_idx, align 8
  br label %bb.aa

bb.z:                                             ; preds = %bb.akk, %bb.aki, %bb.akg, %bb.akf, %bb.ake, %bb.akc, %bb.ajv, %bb.ajt, %bb.ahp, %bb.afg, %bb.afe, %bb.adz, %bb.kz, %bb.ks, %bb.kp, %bb.kl, %bb.ki, %bb.ke, %bb.jw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit446, %bb.jv, %bb.jt, %bb.jr, %bb.jp, %bb.jo, %bb.jm, %bb.gy, %bb.gu, %bb.gq, %bb.bt, %bb.bb, %bb.ako, %bb.akm, %bb.aka, %bb.ajy, %bb.ajx, %bb.ajw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit661, %bb.ajs, %bb.ajr, %.body611, %bb.aej, %bb.aeb, %bb.adw, %bb.act, %.body552, %bb.zp, %.body513, %bb.lb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit450, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit440, %bb.hv, %bb.ht, %.body489, %.body335, %bb.bg, %bb.ab, %bb.l
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex10MutexGuarduEECsgGgPqgSfnMH_7storage.exit670: ; preds = %bb.l, %bb.s, %bb.t, %bb.x, %bb.akf, %bb.ajo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types13VectorsConfigECsgGgPqgSfnMH_7storage.exit668
  %.pn240 = phi { ptr, i32 } [ %i.cmt, %bb.ajo ], [ %.pn238, %bb.akf ], [ %.pn238, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10operations5types13VectorsConfigECsgGgPqgSfnMH_7storage.exit668 ], [ %i.fr, %bb.s ], [ %i.fg, %bb.l ], [ %i.gd, %bb.x ], [ %i.fr, %bb.t ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 4247
  store i8 0, ptr %i.hs, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 4248
  %i.hu = load i8, ptr %i.ht, align 8, !range !52, !noundef !29
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.akg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards29collection_shard_distribution27CollectionShardDistributionECsgGgPqgSfnMH_7storage.exit672

bb.aa:                                            ; preds = %bb.b, %bb.y
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 4264 ; 3 uses
  %i.hx = invoke fastcc { ptr, ptr } @_RNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtB7_6RwLockINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtB13_6string6StringINtNtB13_4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEEE4read0CsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.hw, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.ac unwind label %bb.ab     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMsc_NtNtCsjZG7hsAZr3B_5tokio4sync6rwlockINtBJ_6RwLockINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtB1F_6string6StringINtNtB1F_4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEEE4read0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.hw) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtB1S_6string6StringINtNtB1S_4sync3ArcNtNtCsPYQCUnoTxQ_10collection10collection10CollectionEEEECsgGgPqgSfnMH_7storage.exit311 unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.hz = extractvalue { ptr, ptr } %i.hx, 0      ; 2 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.em)
  br label %common.ret

bb.ae:                                            ; preds = %bb.ac
  %i.ib = extractvalue { ptr, ptr } %i.hx, 1
  store ptr %i.hz, ptr %i.em, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 3 uses
  store ptr %i.ib, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 4352 ; 2 uses
  %i.ie = load i8, ptr %i.id, align 8, !range !38, !noundef !29
  %cond.i301 = icmp eq i8 %i.ie, 3
  br i1 %cond.i301, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 4344
  %i.ig = load i8, ptr %i.if, align 8, !range !38, !noundef !29
  %cond.i.i302 = icmp eq i8 %i.ig, 3
  br i1 %cond.i.i302, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 4280
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.ih)
          to label %bb.aj unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ii = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 4288
  %.val2.i.i.i = load ptr, ptr %i.ij, align 8, !align !35, !noundef !29 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc17create_collectionNtB6_14TableOfContent17create_collection0Ba_:bb.a
          to label %bb.ml unwind label %bb.mk, !noalias !25090

bb.mk:                                            ; preds = %bb.mj
  %i.aix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !25089
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoItermINtNtBG_3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit.i

bb.ml:                                            ; preds = %bb.mj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !25089
  %i.aiy = getelementptr inbounds nuw i8, ptr %1, i64 5776
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aiy, ptr noundef nonnull align 8 dereferenceable(64) %i.bk, i64 64, i1 false), !noalias !25089
  br label %bb.mm

bb.mm:                                            ; preds = %bb.nj, %bb.ml
  %i.aiz = phi ptr [ %i.aky, %bb.nj ], [ %i.aes, %bb.ml ] ; 9 uses
  %i.aja = phi ptr [ %i.akz, %bb.nj ], [ %i.aet, %bb.ml ] ; 9 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %1, i64 5776 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %1, i64 5840 ; 2 uses
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.ajc, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ajb)
          to label %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoItermINtNtB7_3set7HashSetyEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit.i unwind label %bb.nl, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoItermINtNtBG_3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.no, %bb.nk, %bb.mk
  %i.ajd = phi ptr [ %i.alx, %bb.no ], [ %i.aes, %bb.mk ], [ %i.all, %bb.nk ]
  %i.aje = phi ptr [ %i.aly, %bb.no ], [ %i.aet, %bb.mk ], [ %i.alm, %bb.nk ]
  %.pn87.i = phi { ptr, i32 } [ %i.alz, %bb.no ], [ %i.aix, %bb.mk ], [ %.pn83.pn.pn.i, %bb.nk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !25089
  br label %bb.qw

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit267.i: ; preds = %bb.yo, %bb.yn, %bb.xf, %bb.qw, %.body142.i
  %i.ajf = phi ptr [ %i.auf, %bb.xf ], [ %i.aes, %.body142.i ], [ %i.aut, %bb.qw ], [ %i.aut, %bb.yo ], [ %i.aut, %bb.yn ] ; 3 uses
  %i.ajg = phi ptr [ %i.aug, %bb.xf ], [ %i.aet, %.body142.i ], [ %i.auu, %bb.qw ], [ %i.auu, %bb.yo ], [ %i.auu, %bb.yn ] ; 3 uses
  %.pn90.i = phi { ptr, i32 } [ %i.blo, %bb.xf ], [ %.pn21.i, %.body142.i ], [ %.pn87.pn.i, %bb.qw ], [ %.pn87.pn.i, %bb.yo ], [ %.pn87.pn.i, %bb.yn ] ; 3 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %1, i64 6083
  store i8 0, ptr %i.ajh, align 1, !noalias !25089
  %i.aji = getelementptr inbounds nuw i8, ptr %1, i64 6084
  %i.ajj = load i8, ptr %i.aji, align 4, !range !52, !noalias !25089, !noundef !29
  %i.ajk = trunc nuw i8 %i.ajj to i1
  br i1 %i.ajk, label %bb.yp, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit269.i

bb.mn:                                            ; preds = %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !25089
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ajl, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8293.i, i64 48, i1 false), !noalias !25089
  store i64 2, ptr %i.w, align 8, !alias.scope !25115, !noalias !25116
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8293.i)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit242.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit242.i: ; preds = %bb.xg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit183.i, %bb.mn
  %i.ajm = phi ptr [ %i.auf, %bb.xg ], [ %i.auf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit183.i ], [ %i.aes, %bb.mn ]
  %i.ajn = phi ptr [ %i.aug, %bb.xg ], [ %i.aug, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit183.i ], [ %i.aet, %bb.mn ]
  %i.ajo = getelementptr inbounds nuw i8, ptr %1, i64 6084
  store i8 0, ptr %i.ajo, align 4, !noalias !25089
  br label %bb.mp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit269.i: ; preds = %bb.yq, %bb.yp, %bb.xh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit267.i, %.body.i508
  %i.ajp = phi ptr [ %i.aes, %.body.i508 ], [ %i.auf, %bb.xh ], [ %i.ajf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit267.i ], [ %i.ajf, %bb.yq ], [ %i.ajf, %bb.yp ]
  %i.ajq = phi ptr [ %i.aet, %.body.i508 ], [ %i.aug, %bb.xh ], [ %i.ajg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit267.i ], [ %i.ajg, %bb.yq ], [ %i.ajg, %bb.yp ]
  %.pn92.pn.i = phi { ptr, i32 } [ %.pn92.i, %.body.i508 ], [ %i.blu, %bb.xh ], [ %.pn90.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit267.i ], [ %.pn90.i, %bb.yq ], [ %.pn90.i, %bb.yp ]
  %i.ajr = getelementptr inbounds nuw i8, ptr %1, i64 6084
  store i8 0, ptr %i.ajr, align 4, !noalias !25089
  br label %bb.mq

bb.mo:                                            ; preds = %bb.lu
  %.sroa.8287.0..sroa_idx288.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.5290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5290.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8287.0..sroa_idx288.i, i64 40, i1 false), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25117)
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.ahz, ptr %i.ajs, align 8, !alias.scope !25118, !noalias !25089
  store i64 2, ptr %i.w, align 8, !alias.scope !25119, !noalias !25120
  br label %bb.mp

bb.mp:                                            ; preds = %bb.mo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit242.i
  %i.ajt = phi ptr [ %i.aes, %bb.mo ], [ %i.ajm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit242.i ] ; 3 uses
  %i.aju = phi ptr [ %i.aet, %bb.mo ], [ %i.ajn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit242.i ] ; 3 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %1, i64 6078
  %i.ajw = load i8, ptr %i.ajv, align 2, !range !52, !noalias !25089, !noundef !29
  %i.ajx = trunc nuw i8 %i.ajw to i1
  br i1 %i.ajx, label %bb.xi, label %bb.ms

bb.mq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit269.i, %bb.ls
  %i.ajy = phi ptr [ %i.aes, %bb.ls ], [ %i.ajp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit269.i ] ; 2 uses
  %i.ajz = phi ptr [ %i.aet, %bb.ls ], [ %i.ajq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit269.i ] ; 2 uses
  %.pn95.pn.i = phi { ptr, i32 } [ %.pn17.i, %bb.ls ], [ %.pn92.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit269.i ] ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %1, i64 6078
  %i.akb = load i8, ptr %i.aka, align 2, !range !52, !noalias !25089, !noundef !29
  %i.akc = trunc nuw i8 %i.akb to i1
  br i1 %i.akc, label %bb.yr, label %bb.my

bb.mr:                                            ; preds = %bb.ll
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !25089
  %i.akd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.akd, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8279.i, i64 48, i1 false), !noalias !25089
  store i64 2, ptr %i.w, align 8, !alias.scope !25121, !noalias !25122
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8279.i)
  br label %bb.ms

bb.ms:                                            ; preds = %bb.xi, %bb.mr, %bb.mp
  %i.ake = phi ptr [ %i.ajt, %bb.xi ], [ %i.aes, %bb.mr ], [ %i.ajt, %bb.mp ] ; 15 uses
  %i.akf = phi ptr [ %i.aju, %bb.xi ], [ %i.aet, %bb.mr ], [ %i.aju, %bb.mp ] ; 15 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %1, i64 6078
  store i8 0, ptr %i.akg, align 2, !noalias !25089
  %i.akh = getelementptr inbounds nuw i8, ptr %1, i64 5120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25123)
  call void @llvm.experimental.noalias.scope.decl(metadata !25124)
  call void @llvm.experimental.noalias.scope.decl(metadata !25125)
  %i.aki = load ptr, ptr %i.akh, align 8, !alias.scope !25126, !noalias !25089, !nonnull !29, !noundef !29
  %i.akj = atomicrmw sub ptr %i.aki, i64 1 release, align 8, !noalias !25127
  %i.akk = icmp eq i64 %i.akj, 1
  br i1 %i.akk, label %bb.mt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjZG7hsAZr3B_5tokio4sync9semaphore9SemaphoreEECsgGgPqgSfnMH_7storage.exit.i.i

bb.mt:                                            ; preds = %bb.ms
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjZG7hsAZr3B_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.akh) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjZG7hsAZr3B_5tokio4sync9semaphore9SemaphoreEECsgGgPqgSfnMH_7storage.exit.i.i unwind label %bb.mu, !noalias !25090

bb.mu:                                            ; preds = %bb.mt
  %i.akl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %1, i64 5128 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25128)
  call void @llvm.experimental.noalias.scope.decl(metadata !25129)
  %i.akn = load ptr, ptr %i.akm, align 8, !alias.scope !25130, !noalias !25089, !nonnull !29, !noundef !29
  %i.ako = atomicrmw sub ptr %i.akn, i64 1 release, align 8, !noalias !25131
  %i.akp = icmp eq i64 %i.ako, 1
  br i1 %i.akp, label %bb.mv, label %.body146.i

bb.mv:                                            ; preds = %bb.mu
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjZG7hsAZr3B_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.akm) #25
          to label %.body146.i unwind label %bb.mx, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjZG7hsAZr3B_5tokio4sync9semaphore9SemaphoreEECsgGgPqgSfnMH_7storage.exit.i.i: ; preds = %bb.mt, %bb.ms
  %i.akq = getelementptr inbounds nuw i8, ptr %1, i64 5128 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25132)
  call void @llvm.experimental.noalias.scope.decl(metadata !25133)
  %i.akr = load ptr, ptr %i.akq, align 8, !alias.scope !25134, !noalias !25089, !nonnull !29, !noundef !29
  %i.aks = atomicrmw sub ptr %i.akr, i64 1 release, align 8, !noalias !25135
  %i.akt = icmp eq i64 %i.aks, 1
  br i1 %i.akt, label %bb.mw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common6budget14ResourceBudgetECsgGgPqgSfnMH_7storage.exit.i

bb.mw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsjZG7hsAZr3B_5tokio4sync9semaphore9SemaphoreEECsgGgPqgSfnMH_7storage.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjZG7hsAZr3B_5tokio4sync9semaphore9SemaphoreE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.akq) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common6budget14ResourceBudgetECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.xk, !noalias !25090

bb.mx:                                            ; preds = %bb.mv
  %i.aku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !25090
  unreachable

bb.my:                                            ; preds = %bb.yr, %bb.xj, %bb.mq, %bb.lk
  %i.akv = phi ptr [ %i.aes, %bb.lk ], [ %i.ajt, %bb.xj ], [ %i.ajy, %bb.yr ], [ %i.ajy, %bb.mq ]
  %i.akw = phi ptr [ %i.aet, %bb.lk ], [ %i.aju, %bb.xj ], [ %i.ajz, %bb.yr ], [ %i.ajz, %bb.mq ]
  %.pn98.pn.i = phi { ptr, i32 } [ %i.ahn, %bb.lk ], [ %i.blw, %bb.xj ], [ %.pn95.pn.i, %bb.yr ], [ %.pn95.pn.i, %bb.mq ]
  %i.akx = getelementptr inbounds nuw i8, ptr %1, i64 6078
  store i8 0, ptr %i.akx, align 2, !noalias !25089
  br label %bb.lh

bb.mz:                                            ; preds = %bb.ld
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #27
          to label %.noexc511 unwind label %bb.zd

.noexc511:                                        ; preds = %bb.mz
  unreachable

bb.na:                                            ; preds = %bb.ld
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @232) #27
          to label %.noexc512 unwind label %bb.zd

.noexc512:                                        ; preds = %bb.na
  unreachable

bb.nb:                                            ; preds = %bb.po, %bb.lg
  %i.aky = phi ptr [ %i.arp, %bb.po ], [ %i.aer, %bb.lg ] ; 5 uses
  %i.akz = phi ptr [ %i.arq, %bb.po ], [ %i.aeq, %bb.lg ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !25089
  %i.ala = getelementptr inbounds nuw i8, ptr %1, i64 6096 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtB4_11ShardHolder9add_shard0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.at, ptr noundef nonnull align 8 %i.ala, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.nd unwind label %bb.nc, !noalias !25090

bb.nc:                                            ; preds = %bb.nb
  %i.alb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !25089
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtBG_11ShardHolder9add_shard0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ala) #23
          to label %bb.ng unwind label %bb.pr, !noalias !25090

bb.nd:                                            ; preds = %bb.nb
  %i.alc = load i64, ptr %i.at, align 8, !range !53, !noalias !25089, !noundef !29 ; 3 uses
  %i.ald = icmp eq i64 %i.alc, -2
  br i1 %i.ald, label %bb.ne, label %bb.nf

bb.ne:                                            ; preds = %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !25089
  br label %bb.ze

bb.nf:                                            ; preds = %bb.nd
  %.sroa.3398.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3398.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3398.0..sroa_idx.i, i64 40, i1 false), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !25089
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtBG_11ShardHolder9add_shard0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.ala)
          to label %bb.ni unwind label %bb.nh, !noalias !25090

bb.ng:                                            ; preds = %bb.nh, %bb.nc
  %.pn78.i = phi { ptr, i32 } [ %i.alb, %bb.nc ], [ %i.alh, %bb.nh ] ; 2 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %1, i64 6081
  %i.alf = load i8, ptr %i.ale, align 1, !range !52, !noalias !25089, !noundef !29
  %i.alg = trunc nuw i8 %i.alf to i1
  br i1 %i.alg, label %bb.qr, label %bb.qi

bb.nh:                                            ; preds = %bb.nf
  %i.alh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ng

bb.ni:                                            ; preds = %bb.nf
  %.not.i148.i = icmp eq i64 %i.alc, -1
  br i1 %.not.i148.i, label %bb.nj, label %bb.qk

bb.nj:                                            ; preds = %bb.ni
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 6081
  store i8 0, ptr %i.ali, align 1, !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !25089
  %i.alj = getelementptr inbounds nuw i8, ptr %1, i64 6077
  store i8 0, ptr %i.alj, align 1, !noalias !25089
  %i.alk = getelementptr inbounds nuw i8, ptr %1, i64 6082
  store i8 0, ptr %i.alk, align 2, !noalias !25089
  br label %bb.mm

bb.nk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEECsgGgPqgSfnMH_7storage.exit189.i, %bb.nl
  %i.all = phi ptr [ %i.atp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEECsgGgPqgSfnMH_7storage.exit189.i ], [ %i.aiz, %bb.nl ]
  %i.alm = phi ptr [ %i.atq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEECsgGgPqgSfnMH_7storage.exit189.i ], [ %i.aja, %bb.nl ]
  %.pn83.pn.pn.i = phi { ptr, i32 } [ %.pn83.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEECsgGgPqgSfnMH_7storage.exit189.i ], [ %i.alo, %bb.nl ]
  %i.aln = getelementptr inbounds nuw i8, ptr %1, i64 5776
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aln)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoItermINtNtBG_3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.pr, !noalias !25090

bb.nl:                                            ; preds = %bb.mm
  %i.alo = landingpad { ptr, i32 }
          cleanup
  br label %bb.nk

_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoItermINtNtB7_3set7HashSetyEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.mm
  %i.alp = getelementptr inbounds nuw i8, ptr %1, i64 5848 ; 2 uses
  %i.alq = load ptr, ptr %i.alp, align 8, !noalias !25089, !noundef !29
  %.not23.i = icmp eq ptr %i.alq, null
  br i1 %.not23.i, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoItermINtNtB7_3set7HashSetyEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit.i
  %i.alr = getelementptr inbounds nuw i8, ptr %1, i64 6072 ; 4 uses
  %i.als = load i32, ptr %i.ajc, align 8, !noalias !25089, !noundef !29
  store i32 %i.als, ptr %i.alr, align 8, !noalias !25089
  %i.alt = getelementptr inbounds nuw i8, ptr %1, i64 6082 ; 2 uses
  store i8 1, ptr %i.alt, align 2, !noalias !25089
  %i.alu = getelementptr inbounds nuw i8, ptr %1, i64 5896 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.alu, ptr noundef nonnull align 8 dereferenceable(48) %i.alp, i64 48, i1 false), !noalias !25089
  %i.alv = getelementptr inbounds nuw i8, ptr %1, i64 4800 ; 2 uses
  %i.alw = invoke noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapyuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeyECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.alu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.alv)
          to label %bb.nr unwind label %bb.nq, !noalias !25090

bb.nn:                                            ; preds = %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoItermINtNtB7_3set7HashSetyEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsgGgPqgSfnMH_7storage.exit.i
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ajb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoItermINtNtBG_3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit153.i unwind label %bb.no, !noalias !25090

bb.no:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit181.i, %bb.nn
  %i.alx = phi ptr [ %i.ase, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit181.i ], [ %i.aiz, %bb.nn ]
  %i.aly = phi ptr [ %i.asf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit181.i ], [ %i.aja, %bb.nn ]
  %i.alz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoItermINtNtBG_3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoItermINtNtBG_3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit153.i: ; preds = %bb.nn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !25089
  %i.ama = getelementptr inbounds nuw i8, ptr %1, i64 6078
  store i8 0, ptr %i.ama, align 2, !noalias !25089
  %i.amb = getelementptr inbounds nuw i8, ptr %1, i64 5304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %i.as, ptr noundef nonnull align 8 dereferenceable(456) %i.amb, i64 456, i1 false), !noalias !25089
  %i.amc = invoke noundef nonnull ptr @_RNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtB2_17SharedShardHolder3new(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(456) %i.as)
          to label %.thread.i unwind label %bb.np, !noalias !25090

bb.np:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoItermINtNtBG_3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit153.i
  %i.amd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !25089
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit265.i

.thread.i:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoItermINtNtBG_3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit153.i
  %i.ame = getelementptr inbounds nuw i8, ptr %1, i64 6096 ; 3 uses
  store ptr %i.amc, ptr %i.ame, align 8, !noalias !25089
  %i.amf = getelementptr inbounds nuw i8, ptr %1, i64 6080
  store i8 1, ptr %i.amf, align 8, !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !25089
  %i.amg = getelementptr inbounds nuw i8, ptr %1, i64 6104 ; 2 uses
  store ptr %i.ame, ptr %i.amg, align 8, !noalias !25089
  %.sroa.9419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6128 ; 2 uses
  store i8 0, ptr %.sroa.9419.0..sroa_idx.i, align 8, !noalias !25089
  br label %bb.qy

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit265.i: ; preds = %bb.ym, %bb.yl, %bb.xe, %bb.wz, %bb.np
  %i.amh = phi ptr [ %i.bea, %bb.xe ], [ %i.aiz, %bb.np ], [ %i.blb, %bb.wz ], [ %i.blb, %bb.ym ], [ %i.blb, %bb.yl ]
  %i.ami = phi ptr [ %i.beb, %bb.xe ], [ %i.aja, %bb.np ], [ %i.blc, %bb.wz ], [ %i.blc, %bb.ym ], [ %i.blc, %bb.yl ]
  %.pn52.i = phi { ptr, i32 } [ %i.blm, %bb.xe ], [ %i.amd, %bb.np ], [ %.pn49.pn.i, %bb.wz ], [ %.pn49.pn.i, %bb.ym ], [ %.pn49.pn.i, %bb.yl ]
  %i.amj = getelementptr inbounds nuw i8, ptr %1, i64 6080
  store i8 0, ptr %i.amj, align 8, !noalias !25089
  br label %bb.qw

bb.nq:                                            ; preds = %bb.nm
  %i.amk = landingpad { ptr, i32 }
          cleanup
  br label %bb.qj

bb.nr:                                            ; preds = %bb.nm
  %i.aml = getelementptr inbounds nuw i8, ptr %1, i64 4840
  %i.amm = load ptr, ptr %i.aml, align 8, !noalias !25089, !nonnull !29, !align !35, !noundef !29 ; 8 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.amm, i64 248
  %i.amo = getelementptr inbounds nuw i8, ptr %1, i64 5944 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25136)
  call void @llvm.experimental.noalias.scope.decl(metadata !25137)
  %i.amp = getelementptr inbounds nuw i8, ptr %i.amm, i64 312
  %i.amq = load double, ptr %i.amp, align 8, !alias.scope !25137, !noalias !25138, !noundef !29
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amm, i64 320
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amm, i64 264
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amm, i64 280
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amm, i64 336
  %i.amv = load i64, ptr %i.amu, align 8, !alias.scope !25137, !noalias !25138, !noundef !29
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amm, i64 296
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amm, i64 344
  %i.amy = load i8, ptr %i.amx, align 8, !range !33, !alias.scope !25137, !noalias !25138, !noundef !29
  %i.amz = getelementptr inbounds nuw i8, ptr %1, i64 6008
  store double %i.amq, ptr %i.amz, align 8, !alias.scope !25136, !noalias !25139
  %i.ana = getelementptr inbounds nuw i8, ptr %1, i64 6016
  %i.anb = load <2 x i64>, ptr %i.amr, align 8, !alias.scope !25137, !noalias !25138
  store <2 x i64> %i.anb, ptr %i.ana, align 8, !alias.scope !25136, !noalias !25139
  %i.anc = load <2 x i64>, ptr %i.amn, align 8, !alias.scope !25137, !noalias !25138
  store <2 x i64> %i.anc, ptr %i.amo, align 8, !alias.scope !25136, !noalias !25139
  %i.and = getelementptr inbounds nuw i8, ptr %1, i64 5960
  %i.ane = load <2 x i64>, ptr %i.ams, align 8, !alias.scope !25137, !noalias !25138
  store <2 x i64> %i.ane, ptr %i.and, align 8, !alias.scope !25136, !noalias !25139
  %i.anf = getelementptr inbounds nuw i8, ptr %1, i64 5976
  %i.ang = load <2 x i64>, ptr %i.amt, align 8, !alias.scope !25137, !noalias !25138
  store <2 x i64> %i.ang, ptr %i.anf, align 8, !alias.scope !25136, !noalias !25139
  %i.anh = getelementptr inbounds nuw i8, ptr %1, i64 6032
  store i64 %i.amv, ptr %i.anh, align 8, !alias.scope !25136, !noalias !25139
  %i.ani = getelementptr inbounds nuw i8, ptr %1, i64 5992
  %i.anj = load <2 x i64>, ptr %i.amw, align 8, !alias.scope !25137, !noalias !25138
  store <2 x i64> %i.anj, ptr %i.ani, align 8, !alias.scope !25136, !noalias !25139
  %i.ank = getelementptr inbounds nuw i8, ptr %1, i64 6040
  store i8 %i.amy, ptr %i.ank, align 8, !alias.scope !25136, !noalias !25139
  %i.anl = getelementptr inbounds nuw i8, ptr %1, i64 5152
  %i.anm = load i64, ptr %i.anl, align 8, !range !41, !alias.scope !25140, !noalias !25141, !noundef !29 ; 2 uses
  %.not.i154.i = icmp eq i64 %i.anm, 2
  br i1 %.not.i154.i, label %bb.nv, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.ann = getelementptr inbounds nuw i8, ptr %1, i64 5160
  %i.ano = load double, ptr %i.ann, align 8, !alias.scope !25142, !noalias !25143
  %i.anp = getelementptr inbounds nuw i8, ptr %1, i64 5168
  %i.anq = getelementptr inbounds nuw i8, ptr %1, i64 5184
  %i.anr = getelementptr inbounds nuw i8, ptr %1, i64 5200
  %i.ans = getelementptr inbounds nuw i8, ptr %1, i64 5216
  %i.ant = getelementptr inbounds nuw i8, ptr %1, i64 5232
  %i.anu = getelementptr inbounds nuw i8, ptr %1, i64 5248
  %i.anv = getelementptr inbounds nuw i8, ptr %1, i64 5264
  %i.anw = getelementptr inbounds nuw i8, ptr %1, i64 5280
  %i.anx = load i8, ptr %i.anw, align 8, !range !33, !alias.scope !25142, !noalias !25143, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !25089
  store i64 %i.anm, ptr %i.bi, align 8, !noalias !25089
  %.sroa.7299.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store double %i.ano, ptr %.sroa.7299.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.8300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.any = load <2 x i64>, ptr %i.anp, align 8, !alias.scope !25142, !noalias !25143
  store <2 x i64> %i.any, ptr %.sroa.8300.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.10302.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.anz = load <2 x i64>, ptr %i.anq, align 8, !alias.scope !25142, !noalias !25143
  store <2 x i64> %i.anz, ptr %.sroa.10302.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.12.0..sroa_idx304.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.aoa = load <2 x i64>, ptr %i.anr, align 8, !alias.scope !25142, !noalias !25143
  store <2 x i64> %i.aoa, ptr %.sroa.12.0..sroa_idx304.i, align 8, !noalias !25089
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.aob = load <2 x i64>, ptr %i.ans, align 8, !alias.scope !25142, !noalias !25143
  store <2 x i64> %i.aob, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.16.0..sroa_idx307.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
  %i.aoc = load <2 x i64>, ptr %i.ant, align 8, !alias.scope !25142, !noalias !25143
  store <2 x i64> %i.aoc, ptr %.sroa.16.0..sroa_idx307.i, align 8, !noalias !25089
  %.sroa.18.0..sroa_idx309.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 96
  %i.aod = load <2 x i64>, ptr %i.anu, align 8, !alias.scope !25142, !noalias !25143
  store <2 x i64> %i.aod, ptr %.sroa.18.0..sroa_idx309.i, align 8, !noalias !25089
  %.sroa.20.0..sroa_idx311.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  %i.aoe = load <2 x i64>, ptr %i.anv, align 8, !alias.scope !25142, !noalias !25143
  store <2 x i64> %i.aoe, ptr %.sroa.20.0..sroa_idx311.i, align 8, !noalias !25089
  %.sroa.22.0..sroa_idx313.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 128
  store i8 %i.anx, ptr %.sroa.22.0..sroa_idx313.i, align 8, !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !25089
  invoke void @_RNvXs2_NtNtCsPYQCUnoTxQ_10collection10operations11config_diffNtNtB9_18optimizers_builder16OptimizersConfigINtB5_10DiffConfigNtB5_20OptimizersConfigDiffE6update(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.amo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.bi)
end_hunk_1
begin_hunk_2_@_RNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc17create_collectionNtB6_14TableOfContent17create_collection0Ba_:bb.a
  br label %bb.pt

bb.oq:                                            ; preds = %_RNvXsu_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsgGgPqgSfnMH_7storage.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !25089
  %i.aqd = getelementptr inbounds nuw i8, ptr %1, i64 5104
  %.val133.i = load i64, ptr %i.aqd, align 8, !range !41, !noalias !25089, !noundef !29 ; 2 uses
  %i.aqe = getelementptr i8, ptr %1, i64 5112
  %.val134.i = load ptr, ptr %i.aqe, align 8, !noalias !25089 ; 3 uses
  %.not.i162.i = icmp eq i64 %.val133.i, 2
  br i1 %.not.i162.i, label %bb.ox, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.aqf = trunc nuw i64 %.val133.i to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val134.i) ]
  %i.aqg = atomicrmw add ptr %.val134.i, i64 1 monotonic, align 8, !noalias !25090
  %i.aqh = icmp slt i64 %i.aqg, 0                 ; 2 uses
  br i1 %i.aqf, label %bb.os, label %bb.ot

bb.os:                                            ; preds = %bb.or
  br i1 %i.aqh, label %bb.ov, label %bb.ow

bb.ot:                                            ; preds = %bb.or
  br i1 %i.aqh, label %bb.ou, label %bb.ow

bb.ou:                                            ; preds = %bb.ot
  call void @llvm.trap()
  unreachable

bb.ov:                                            ; preds = %bb.os
  call void @llvm.trap()
  unreachable

bb.ow:                                            ; preds = %bb.ot, %bb.os
  %.sroa.0.0.i.ph.i = phi i64 [ 0, %bb.ot ], [ 1, %bb.os ]
  %i.aqi = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i.ph.i, 0
  %i.aqj = insertvalue { i64, ptr } %i.aqi, ptr %.val134.i, 1
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleE14unwrap_or_elseNvMBK_BI_7currentECsgGgPqgSfnMH_7storage.exit.i

bb.ox:                                            ; preds = %bb.oq
  %i.aqk = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1118)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleE14unwrap_or_elseNvMBK_BI_7currentECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.oy, !noalias !25090

bb.oy:                                            ; preds = %bb.ox
  %i.aql = landingpad { ptr, i32 }
          cleanup
  br label %bb.ps

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleE14unwrap_or_elseNvMBK_BI_7currentECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.ox, %bb.ow
  %.merged.i.i = phi { i64, ptr } [ %i.aqj, %bb.ow ], [ %i.aqk, %bb.ox ] ; 2 uses
  %i.aqm = extractvalue { i64, ptr } %.merged.i.i, 0
  %i.aqn = extractvalue { i64, ptr } %.merged.i.i, 1
  store i64 %i.aqm, ptr %i.av, align 8, !noalias !25089
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  store ptr %i.aqn, ptr %i.aqo, align 8, !noalias !25089
  %i.aqp = getelementptr inbounds nuw i8, ptr %1, i64 5096
  %.val135.i = load ptr, ptr %i.aqp, align 8, !noalias !25089, !noundef !29 ; 3 uses
  %.not.i165.i = icmp eq ptr %.val135.i, null
  br i1 %.not.i165.i, label %bb.pb, label %bb.oz

bb.oz:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleE14unwrap_or_elseNvMBK_BI_7currentECsgGgPqgSfnMH_7storage.exit.i
  %i.aqq = atomicrmw add ptr %.val135.i, i64 1 monotonic, align 8, !noalias !25090
  %i.aqr = icmp slt i64 %i.aqq, 0
  br i1 %i.aqr, label %bb.pa, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleE14unwrap_or_elseNvMs0_BK_BI_7currentECsgGgPqgSfnMH_7storage.exit.i

bb.pa:                                            ; preds = %bb.oz
  call void @llvm.trap()
  unreachable

bb.pb:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleE14unwrap_or_elseNvMBK_BI_7currentECsgGgPqgSfnMH_7storage.exit.i
  %i.aqs = invoke noundef nonnull ptr @_RNvMs0_NtNtCsPYQCUnoTxQ_10collection6common15adaptive_handleNtB5_20AdaptiveSearchHandle7current()
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleE14unwrap_or_elseNvMs0_BK_BI_7currentECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.pc, !noalias !25090

bb.pc:                                            ; preds = %bb.pb
  %i.aqt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(16) %i.av) #23
          to label %bb.ps unwind label %bb.pr, !noalias !25090

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleE14unwrap_or_elseNvMs0_BK_BI_7currentECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.pb, %bb.oz
  %.sroa.02.0.i.i = phi ptr [ %.val135.i, %bb.oz ], [ %i.aqs, %bb.pb ]
  %i.aqu = getelementptr inbounds nuw i8, ptr %1, i64 5120
  call void @llvm.experimental.noalias.scope.decl(metadata !25158)
  %i.aqv = load ptr, ptr %i.aqu, align 8, !alias.scope !25158, !noalias !25159, !nonnull !29, !noundef !29 ; 2 uses
  %i.aqw = atomicrmw add ptr %i.aqv, i64 1 monotonic, align 8, !noalias !25160
  %i.aqx = icmp slt i64 %i.aqw, 0
  br i1 %i.aqx, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleE14unwrap_or_elseNvMs0_BK_BI_7currentECsgGgPqgSfnMH_7storage.exit.i
  %i.aqy = getelementptr inbounds nuw i8, ptr %1, i64 5136
  %i.aqz = load i64, ptr %i.aqy, align 8, !alias.scope !25158, !noalias !25159, !noundef !29
  %i.ara = getelementptr inbounds nuw i8, ptr %1, i64 5128
  %i.arb = load ptr, ptr %i.ara, align 8, !alias.scope !25158, !noalias !25159, !nonnull !29, !noundef !29 ; 2 uses
  %i.arc = atomicrmw add ptr %i.arb, i64 1 monotonic, align 8, !noalias !25160
  %i.ard = icmp slt i64 %i.arc, 0
  br i1 %i.ard, label %bb.pf, label %bb.pg

bb.pe:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleE14unwrap_or_elseNvMs0_BK_BI_7currentECsgGgPqgSfnMH_7storage.exit.i
  call void @llvm.trap()
  unreachable

bb.pf:                                            ; preds = %bb.pd
  call void @llvm.trap()
  unreachable

bb.pg:                                            ; preds = %bb.pd
  %i.are = getelementptr inbounds nuw i8, ptr %1, i64 5144
  %i.arf = load i64, ptr %i.are, align 8, !alias.scope !25158, !noalias !25159, !noundef !29
  %i.arg = load ptr, ptr %i.ba, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %i.arh = load ptr, ptr %i.ay, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %i.ari = load ptr, ptr %i.ax, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %i.arj = load i64, ptr %i.av, align 8, !range !28, !noalias !25089, !noundef !29
  %i.ark = load ptr, ptr %i.aqo, align 8, !noalias !25089, !noundef !29
  %.sroa.10350.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10350.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !noalias !25089
  %.sroa.11351.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11351.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !25089
  %i.arl = zext i1 %i.alw to i8
  %.sroa.13353.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13353.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i64 48, i1 false), !noalias !25089
  %i.arm = getelementptr inbounds nuw i8, ptr %1, i64 6096
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.arm, ptr noundef nonnull align 8 dereferenceable(104) %i.az, i64 104, i1 false), !noalias !25089
  %.sroa.12352.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.12352.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %i.aw, i64 80, i1 false), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !25089
  %.sroa.8348.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6200
  %.sroa.9349.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6208
  %.sroa.14354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6392
  %.sroa.16356.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6408
  %i.arn = load <2 x ptr>, ptr %i.bb, align 16, !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !25089
  %i.aro = load <2 x ptr>, ptr %i.bc, align 16, !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !25089
  store i64 %i.arj, ptr %.sroa.8348.0..sroa_idx.i, align 8, !noalias !25089
  store ptr %i.ark, ptr %.sroa.9349.0..sroa_idx.i, align 8, !noalias !25089
  store <2 x ptr> %i.aro, ptr %.sroa.14354.0..sroa_idx.i, align 8, !noalias !25089
  store <2 x ptr> %i.arn, ptr %.sroa.16356.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.18358.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6424
  store ptr %i.app, ptr %.sroa.18358.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.19359.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6432
  store i64 %i.apr, ptr %.sroa.19359.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.20360.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6440
  store ptr %i.arg, ptr %.sroa.20360.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.21361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6448
  store ptr %i.arh, ptr %.sroa.21361.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.22362.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6456
  store ptr %i.ari, ptr %.sroa.22362.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.23363.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6464
  store ptr %.sroa.02.0.i.i, ptr %.sroa.23363.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.24364.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6472
  store ptr %i.aqv, ptr %.sroa.24364.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.24364.sroa.8.0..sroa.24364.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6480
  store ptr %i.arb, ptr %.sroa.24364.sroa.8.0..sroa.24364.0..sroa_idx.sroa_idx.i, align 8, !noalias !25089
  %.sroa.24364.sroa.9.0..sroa.24364.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6488
  store i64 %i.aqz, ptr %.sroa.24364.sroa.9.0..sroa.24364.0..sroa_idx.sroa_idx.i, align 8, !noalias !25089
  %.sroa.24364.sroa.10.0..sroa.24364.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6496
  store i64 %i.arf, ptr %.sroa.24364.sroa.10.0..sroa.24364.0..sroa_idx.sroa_idx.i, align 8, !noalias !25089
  %.sroa.25365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6504
  store i64 %i.apd, ptr %.sroa.25365.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.27367.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6912
  store i32 %i.apa, ptr %.sroa.27367.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.29.0..sroa_idx369.i = getelementptr inbounds nuw i8, ptr %1, i64 6920
  store i8 %i.arl, ptr %.sroa.29.0..sroa_idx369.i, align 8, !noalias !25089
  %.sroa.30370.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6921
  store i8 0, ptr %.sroa.30370.0..sroa_idx.i, align 1, !noalias !25089
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 6922
  store i8 -1, ptr %.sroa.31.0..sroa_idx.i, align 2, !noalias !25089
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.lf
  %i.arp = phi ptr [ %i.aiz, %bb.pg ], [ %i.aer, %bb.lf ] ; 5 uses
  %i.arq = phi ptr [ %i.aja, %bb.pg ], [ %i.aeq, %bb.lf ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !25089
  %i.arr = getelementptr inbounds nuw i8, ptr %1, i64 6096 ; 4 uses
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4_15ShardReplicaSet5build0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(1480) %i.au, ptr noundef nonnull align 8 %i.arr, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.pj unwind label %bb.pi, !noalias !25090

bb.pi:                                            ; preds = %bb.ph
  %i.ars = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !25089
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet5build0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.arr) #23
          to label %bb.qi unwind label %bb.pr, !noalias !25090

bb.pj:                                            ; preds = %bb.ph
  %i.art = load i64, ptr %i.au, align 8, !range !39, !noalias !25089, !noundef !29 ; 3 uses
  %i.aru = icmp eq i64 %i.art, -1
  br i1 %i.aru, label %bb.pk, label %bb.pl

bb.pk:                                            ; preds = %bb.pj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !25089
  br label %bb.ze

bb.pl:                                            ; preds = %bb.pj
  %.sroa.3376.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3376.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3376.0..sroa_idx.i, i64 48, i1 false), !noalias !25089
  %.sroa.5377.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.5377.i, ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.5377.0..sroa_idx.i, i64 1424, i1 false), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !25089
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet5build0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.arr)
          to label %bb.pn unwind label %bb.pm, !noalias !25090

bb.pm:                                            ; preds = %bb.pl
  %i.arv = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.pn:                                            ; preds = %bb.pl
  %i.arw = icmp eq i64 %i.art, 2
  br i1 %i.arw, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %.sroa.5380.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.5380.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(1424) %.sroa.5377.i, i64 1424, i1 false), !noalias !25089
  %.sroa.4379.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4379.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3376.i, i64 48, i1 false), !noalias !25089
  %i.arx = getelementptr inbounds nuw i8, ptr %1, i64 6081
  store i64 %i.art, ptr %i.bg, align 8, !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0385.i)
  %i.ary = getelementptr inbounds nuw i8, ptr %1, i64 5304
  %i.arz = getelementptr inbounds nuw i8, ptr %1, i64 6072
  %i.asa = load i32, ptr %i.arz, align 8, !noalias !25089, !noundef !29
  store i8 0, ptr %i.arx, align 1, !noalias !25089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1480) %.sroa.0385.i, ptr noundef nonnull align 8 dereferenceable(1480) %i.bg, i64 1480, i1 false), !noalias !25089
  %i.asb = getelementptr inbounds nuw i8, ptr %1, i64 6077
  store i8 0, ptr %i.asb, align 1, !noalias !25089
  %i.asc = getelementptr inbounds nuw i8, ptr %1, i64 6048
  %.sroa.0385.1480..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0385.i, i64 1480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0385.1480..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.asc, i64 24, i1 false), !noalias !25089
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1504) %i.arr, ptr noundef nonnull align 8 dereferenceable(1504) %.sroa.0385.i, i64 1504, i1 false), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0385.i)
  %.sroa.8392.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 7600
  store ptr %i.ary, ptr %.sroa.8392.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.10394.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 10760
  store i32 %i.asa, ptr %.sroa.10394.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.11395.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 10764
  store i8 0, ptr %.sroa.11395.0..sroa_idx.i, align 4, !noalias !25089
  br label %bb.nb

bb.pp:                                            ; preds = %bb.pn
  %i.asd = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.asd, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3376.i, i64 48, i1 false), !noalias !25089
  br label %bb.pq

bb.pq:                                            ; preds = %bb.qk, %bb.pp
  %i.ase = phi ptr [ %i.aky, %bb.qk ], [ %i.arp, %bb.pp ] ; 3 uses
  %i.asf = phi ptr [ %i.akz, %bb.qk ], [ %i.arq, %bb.pp ] ; 3 uses
  store i64 2, ptr %i.w, align 8, !noalias !25089
  %i.asg = getelementptr inbounds nuw i8, ptr %1, i64 6081
  store i8 0, ptr %i.asg, align 1, !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !25089
  %i.ash = getelementptr inbounds nuw i8, ptr %1, i64 6077 ; 2 uses
  %i.asi = load i8, ptr %i.ash, align 1, !range !52, !noalias !25089, !noundef !29
  %i.asj = trunc nuw i8 %i.asi to i1
  br i1 %i.asj, label %bb.ql, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit181.i

bb.pr:                                            ; preds = %bb.zc, %bb.za, %bb.yz, %bb.yy, %bb.yw, %bb.yt, %bb.ys, %bb.yr, %bb.yq, %bb.yo, %bb.ym, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit277.i, %bb.yb, %bb.xw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit.i, %bb.wx, %bb.ww, %bb.wv, %bb.wu, %bb.wt, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit233.i, %bb.ws, %bb.wr, %bb.wq, %bb.wo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleECsgGgPqgSfnMH_7storage.exit226.i, %bb.wm, %bb.we, %bb.wb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10collection5clean15ShardCleanTasksECsgGgPqgSfnMH_7storage.exit.i, %bb.vc, %bb.va, %.body196.i, %bb.qv, %bb.qu, %bb.qr, %bb.qh, %bb.qe, %bb.qd, %bb.qc, %bb.qa, %bb.py, %bb.pw, %bb.pu, %bb.ps, %bb.pi, %bb.pc, %bb.nk, %bb.nc
  %i.ask = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !25090
  unreachable

bb.ps:                                            ; preds = %bb.pc, %bb.oy
  %.pn57.pn.pn.ph.i = phi { ptr, i32 } [ %i.aqt, %bb.pc ], [ %i.aql, %bb.oy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !25089
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards15channel_service14ChannelServiceECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(80) %i.aw) #23
          to label %bb.pt unwind label %bb.pr, !noalias !25090

bb.pt:                                            ; preds = %bb.ps, %bb.op
  %.pn57.pn.pn.pn.ph.i = phi { ptr, i32 } [ %i.aqc, %bb.op ], [ %.pn57.pn.pn.ph.i, %bb.ps ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25161)
  call void @llvm.experimental.noalias.scope.decl(metadata !25162)
  %i.asl = load ptr, ptr %i.ax, align 8, !alias.scope !25163, !noalias !25089, !nonnull !29, !noundef !29
  %i.asm = atomicrmw sub ptr %i.asl, i64 1 release, align 8, !noalias !25164
  %i.asn = icmp eq i64 %i.asm, 1
  br i1 %i.asn, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %bb.pt
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEE9drop_slowB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ax) #25
          to label %bb.pv unwind label %bb.pr, !noalias !25090

bb.pv:                                            ; preds = %bb.pu, %bb.pt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25165)
  call void @llvm.experimental.noalias.scope.decl(metadata !25166)
  %i.aso = load ptr, ptr %i.ay, align 8, !alias.scope !25167, !noalias !25089, !nonnull !29, !noundef !29
  %i.asp = atomicrmw sub ptr %i.aso, i64 1 release, align 8, !noalias !25168
  %i.asq = icmp eq i64 %i.asp, 1
  br i1 %i.asq, label %bb.pw, label %bb.px

bb.pw:                                            ; preds = %bb.pv
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay) #25
          to label %bb.px unwind label %bb.pr, !noalias !25090

bb.px:                                            ; preds = %bb.pw, %bb.pv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.experimental.noalias.scope.decl(metadata !25169)
  call void @llvm.experimental.noalias.scope.decl(metadata !25170)
  %i.asr = load ptr, ptr %i.ba, align 8, !alias.scope !25171, !noalias !25089, !nonnull !29, !noundef !29
  %i.ass = atomicrmw sub ptr %i.asr, i64 1 release, align 8, !noalias !25172
  %i.ast = icmp eq i64 %i.ass, 1
  br i1 %i.ast, label %bb.py, label %bb.pz

bb.py:                                            ; preds = %bb.px
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEE9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba) #25
          to label %bb.pz unwind label %bb.pr, !noalias !25090

bb.pz:                                            ; preds = %bb.py, %bb.px
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25173)
  call void @llvm.experimental.noalias.scope.decl(metadata !25174)
  %i.asu = load ptr, ptr %i.bb, align 16, !alias.scope !25175, !noalias !25089, !nonnull !29, !noundef !29
  %i.asv = atomicrmw sub ptr %i.asu, i64 1 release, align 8, !noalias !25176
  %i.asw = icmp eq i64 %i.asv, 1
  br i1 %i.asw, label %bb.qa, label %bb.qb

bb.qa:                                            ; preds = %bb.pz
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtBQ_6marker4SendNtB2I_4SyncEL_E9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bb) #25
          to label %bb.qb unwind label %bb.pr, !noalias !25090

bb.qb:                                            ; preds = %bb.qa, %bb.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25177)
  call void @llvm.experimental.noalias.scope.decl(metadata !25178)
  %i.asx = load ptr, ptr %i.bc, align 16, !alias.scope !25179, !noalias !25089, !nonnull !29, !noundef !29
  %i.asy = atomicrmw sub ptr %i.asx, i64 1 release, align 8, !noalias !25180
  %i.asz = icmp eq i64 %i.asy, 1
  br i1 %i.asz, label %bb.qc, label %bb.qd

bb.qc:                                            ; preds = %bb.qb
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTymINtNtBO_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtBO_6marker4SendNtB3o_4SyncEL_E9drop_slowB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bc) #25
          to label %bb.qd unwind label %bb.pr, !noalias !25090

bb.qd:                                            ; preds = %bb.qc, %bb.qb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !25089
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bd)
          to label %bb.qe unwind label %bb.pr, !noalias !25090

bb.qe:                                            ; preds = %bb.qd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !25089
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be) #23
          to label %bb.qf unwind label %bb.pr, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.qh, %bb.qg, %bb.qf, %bb.of
  %.pn57.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.aoz, %bb.of ], [ %.pn57.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph.i, %bb.qg ], [ %.pn57.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph.i, %bb.qh ], [ %.pn57.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph.i, %bb.qf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !25089
  br label %bb.qi

bb.qf:                                            ; preds = %bb.qe, %bb.og
  %.pn57.pn.pn.pn.pn.pn.pn.pn.pn.pn.ph.i = phi { ptr, i32 } [ %i.apc, %bb.og ], [ %.pn57.pn.pn.pn.ph.i, %bb.qe ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !25089
  %i.ata = load i64, ptr %i.bf, align 8, !range !41, !alias.scope !25181, !noalias !25089, !noundef !29 ; 2 uses
  %i.atb = icmp eq i64 %i.ata, 2
  br i1 %i.atb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit.i, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.atc = icmp eq i64 %i.ata, 0
  %i.atd = getelementptr inbounds nuw i8, ptr %i.bf, i64 23
  %i.ate = load i8, ptr %i.atd, align 1, !alias.scope !25182, !noalias !25089
  %.not.i.i.i.i.i.i = icmp sgt i8 %i.ate, -1
  %or.cond.i.i.i = select i1 %i.atc, i1 %.not.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.qh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit.i

bb.qh:                                            ; preds = %bb.qg
  %i.atf = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.atf)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.pr, !noalias !25090

bb.qi:                                            ; preds = %bb.pi, %bb.pm, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit.i, %bb.qr, %bb.ng
  %i.atg = phi ptr [ %i.aky, %bb.ng ], [ %i.aky, %bb.qr ], [ %i.aiz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit.i ], [ %i.arp, %bb.pm ], [ %i.arp, %bb.pi ] ; 4 uses
  %i.ath = phi ptr [ %i.akz, %bb.ng ], [ %i.akz, %bb.qr ], [ %i.aja, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit.i ], [ %i.arq, %bb.pm ], [ %i.arq, %bb.pi ] ; 4 uses
  %.pn80.pn.i = phi { ptr, i32 } [ %.pn78.i, %bb.ng ], [ %.pn78.i, %bb.qr ], [ %.pn57.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit.i ], [ %i.arv, %bb.pm ], [ %i.ars, %bb.pi ] ; 4 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %1, i64 6081
  store i8 0, ptr %i.ati, align 1, !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !25089
  %i.atj = getelementptr inbounds nuw i8, ptr %1, i64 6077
  %i.atk = load i8, ptr %i.atj, align 1, !range !52, !noalias !25089, !noundef !29
  %i.atl = trunc nuw i8 %i.atk to i1
  br i1 %i.atl, label %bb.qs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit187.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs607s0NAIaWN_7segment5types8ShardKeyEECsgGgPqgSfnMH_7storage.exit187.i: ; preds = %bb.qu, %bb.qt, %bb.qs, %bb.qo, %bb.qi, %bb.nx
  %i.atm = phi ptr [ %i.ase, %bb.qo ], [ %i.atg, %bb.qt ], [ %i.atg, %bb.qi ], [ %i.aiz, %bb.nx ], [ %i.atg, %bb.qu ], [ %i.atg, %bb.qs ]
  %i.atn = phi ptr [ %i.asf, %bb.qo ], [ %i.ath, %bb.qt ], [ %i.ath, %bb.qi ], [ %i.aja, %bb.nx ], [ %i.ath, %bb.qu ], [ %i.ath, %bb.qs ]
  %.pn83.i = phi { ptr, i32 } [ %i.aue, %bb.qo ], [ %.pn80.pn.i, %bb.qt ], [ %.pn80.pn.i, %bb.qi ], [ %i.aol, %bb.nx ], [ %.pn80.pn.i, %bb.qu ], [ %.pn80.pn.i, %bb.qs ]
  %i.ato = getelementptr inbounds nuw i8, ptr %1, i64 6077
end_hunk_2
begin_hunk_3_@_RNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc17create_collectionNtB6_14TableOfContent17create_collection0Ba_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !25194
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet27calculate_local_shard_stats0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.bce)
          to label %bb.tk unwind label %bb.tj, !noalias !25195

bb.tj:                                            ; preds = %bb.ti
  %i.bci = landingpad { ptr, i32 }
          cleanup
  br label %bb.sw

bb.tk:                                            ; preds = %bb.ti
  %.not.i67.i.i.i = icmp eq i64 %i.bcg, -1
  br i1 %.not.i67.i.i.i, label %bb.tl, label %bb.uf

bb.tl:                                            ; preds = %bb.tk
  %i.bcj = trunc nuw i64 %.sroa.3.0.copyload.i.i.i to i1
  br i1 %i.bcj, label %bb.tm, label %bb.tc

bb.tm:                                            ; preds = %bb.tl
  %i.bck = getelementptr inbounds nuw i8, ptr %1, i64 6144
  %i.bcl = load ptr, ptr %i.bck, align 8, !noalias !25194, !nonnull !29, !align !35, !noundef !29
  %i.bcm = getelementptr i8, ptr %i.bcl, i64 440
  %.val44.i.i.i = load i64, ptr %i.bcm, align 8, !noalias !25195, !noundef !29 ; 3 uses
  %i.bcn = mul i64 %.val44.i.i.i, %.sroa.5103.sroa.0.0.copyload.i.i.i
  %i.bco = mul i64 %.val44.i.i.i, %.sroa.5103.sroa.3.0.copyload.i.i.i
  %i.bcp = mul i64 %.val44.i.i.i, %.sroa.5103.sroa.5.0.copyload.i.i.i
  br label %bb.uf

bb.tn:                                            ; preds = %bb.tc
  %i.bcq = landingpad { ptr, i32 }
          cleanup
  br label %bb.sw

bb.to:                                            ; preds = %bb.tc
  %i.bcr = extractvalue { ptr, ptr } %i.bbw, 0
  %.not32.i.i.i = icmp eq ptr %i.bcr, null
  br i1 %.not32.i.i.i, label %bb.uf, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  %i.bcs = extractvalue { ptr, ptr } %i.bbw, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bcs) ]
  %.val43.i.i.i = load ptr, ptr %i.bcs, align 8, !noalias !25195, !nonnull !29, !noundef !29
  %i.bct = getelementptr inbounds nuw i8, ptr %.val43.i.i.i, i64 16
  %i.bcu = getelementptr inbounds nuw i8, ptr %1, i64 6232
  store ptr %i.bct, ptr %i.bcu, align 8, !noalias !25194
  %.sroa.9100.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6241
  store i8 0, ptr %.sroa.9100.0..sroa_idx.i.i.i, align 1, !noalias !25194
  br label %bb.te

bb.tq:                                            ; preds = %bb.uc, %bb.rq
  %i.bcv = phi ptr [ %i.bbf, %bb.uc ], [ %i.aer, %bb.rq ] ; 6 uses
  %i.bcw = phi ptr [ %i.bbg, %bb.uc ], [ %i.aeq, %bb.rq ] ; 5 uses
  %i.bcx = phi ptr [ %i.bbh, %bb.uc ], [ %.phi.trans.insert.i, %bb.rq ] ; 6 uses
  %i.bcy = phi ptr [ %i.bbi, %bb.uc ], [ %i.avb, %bb.rq ] ; 5 uses
  %i.bcz = phi ptr [ %i.bbj, %bb.uc ], [ %.phi.trans.insert.i.i, %bb.rq ] ; 6 uses
  %i.bda = phi ptr [ %i.bbk, %bb.uc ], [ %i.axd, %bb.rq ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !25194
  %i.bdb = getelementptr inbounds nuw i8, ptr %1, i64 6256 ; 3 uses
  invoke fastcc void @_RNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtB4_15ShardReplicaSet27calculate_local_shard_stats0CsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.s, ptr noundef nonnull align 8 %i.bdb, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ts unwind label %bb.tr, !noalias !25195

bb.tr:                                            ; preds = %bb.tq
  %i.bdc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !25194
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet27calculate_local_shard_stats0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.bdb) #23
          to label %bb.sw unwind label %bb.td, !noalias !25195

bb.ts:                                            ; preds = %bb.tq
  %i.bdd = load i64, ptr %i.s, align 8, !range !53, !noalias !25194, !noundef !29 ; 3 uses
  %i.bde = icmp eq i64 %i.bdd, -2
  br i1 %i.bde, label %bb.tt, label %bb.tu

bb.tt:                                            ; preds = %bb.ts
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !25194
  br label %bb.ue

bb.tu:                                            ; preds = %bb.ts
  %.sroa.3161.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.3161.0.copyload.i.i.i = load i64, ptr %.sroa.3161.0..sroa_idx.i.i.i, align 8, !noalias !25194 ; 2 uses
  %.sroa.5162.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bdf = load <2 x i64>, ptr %.sroa.5162.0..sroa_idx.i.i.i, align 8, !noalias !25194 ; 3 uses
  %.sroa.5162.sroa.5.0..sroa.5162.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.5162.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5162.sroa.5.0..sroa.5162.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !25194 ; 2 uses
  %.sroa.7163.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.7163.0.copyload.i.i.i = load i64, ptr %.sroa.7163.0..sroa_idx.i.i.i, align 8, !noalias !25194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !25194
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards11replica_setNtBG_15ShardReplicaSet27calculate_local_shard_stats0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.bdb)
          to label %bb.tw unwind label %bb.tv, !noalias !25195

bb.tv:                                            ; preds = %bb.tu
  %i.bdg = landingpad { ptr, i32 }
          cleanup
  br label %bb.sw

bb.tw:                                            ; preds = %bb.tu
  %.not.i68.i.i.i = icmp eq i64 %i.bdd, -1
  %i.bdh = extractelement <2 x i64> %i.bdf, i64 0
  %i.bdi = extractelement <2 x i64> %i.bdf, i64 1
  br i1 %.not.i68.i.i.i, label %bb.tx, label %bb.uf

bb.tx:                                            ; preds = %bb.tw
  %i.bdj = trunc nuw i64 %.sroa.3161.0.copyload.i.i.i to i1
  br i1 %i.bdj, label %bb.ty, label %bb.ta

bb.ty:                                            ; preds = %bb.tx
  %i.bdk = getelementptr inbounds nuw i8, ptr %1, i64 6160 ; 2 uses
  %i.bdl = load <2 x i64>, ptr %i.bdk, align 8, !alias.scope !25208, !noalias !25209
  %i.bdm = add <2 x i64> %i.bdl, %i.bdf
  store <2 x i64> %i.bdm, ptr %i.bdk, align 8, !alias.scope !25208, !noalias !25209
  %i.bdn = getelementptr inbounds nuw i8, ptr %1, i64 6176 ; 2 uses
  %i.bdo = load i64, ptr %i.bdn, align 8, !alias.scope !25208, !noalias !25209, !noundef !29
  %i.bdp = add i64 %i.bdo, %.sroa.5162.sroa.5.0.copyload.i.i.i
  store i64 %i.bdp, ptr %i.bdn, align 8, !alias.scope !25208, !noalias !25209
  br label %bb.ta

bb.tz:                                            ; preds = %bb.ta
  %i.bdq = landingpad { ptr, i32 }
          cleanup
  br label %bb.sw

bb.ua:                                            ; preds = %bb.ta
  %i.bdr = extractvalue { ptr, ptr } %i.bbm, 0
  %.not.i.i190.i = icmp eq ptr %i.bdr, null
  br i1 %.not.i.i190.i, label %bb.ub, label %bb.uc

bb.ub:                                            ; preds = %bb.ua
  %i.bds = getelementptr inbounds nuw i8, ptr %1, i64 6160
  %.sroa.0184.0.copyload.i.i.i = load i64, ptr %i.bds, align 8, !noalias !25194
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6168
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !25194
  %.sroa.5185.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6176
  %.sroa.5185.0.copyload.i.i.i = load i64, ptr %.sroa.5185.0..sroa_idx.i.i.i, align 8, !noalias !25194
  br label %bb.uf

bb.uc:                                            ; preds = %bb.ua
  %i.bdt = extractvalue { ptr, ptr } %i.bbm, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bdt) ]
  %.val.i.i191.i = load ptr, ptr %i.bdt, align 8, !noalias !25195, !nonnull !29, !noundef !29
  %i.bdu = getelementptr inbounds nuw i8, ptr %.val.i.i191.i, i64 16
  %i.bdv = getelementptr inbounds nuw i8, ptr %1, i64 6256
  store ptr %i.bdu, ptr %i.bdv, align 8, !noalias !25194
  %.sroa.10158.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6265
  store i8 0, ptr %.sroa.10158.0..sroa_idx.i.i.i, align 1, !noalias !25194
  br label %bb.tq

bb.ud:                                            ; preds = %bb.rs, %bb.rr
  %i.bdw = landingpad { ptr, i32 }
          cleanup
  br label %.body18.i.i

bb.ue:                                            ; preds = %bb.tt, %bb.th, %bb.ss
  %i.bdx = phi ptr [ %i.ayw, %bb.ss ], [ %i.bby, %bb.th ], [ %i.bcv, %bb.tt ]
  %i.bdy = phi ptr [ %i.ayy, %bb.ss ], [ %i.bca, %bb.th ], [ %i.bcx, %bb.tt ]
  %i.bdz = phi ptr [ %i.aza, %bb.ss ], [ %i.bcc, %bb.th ], [ %i.bcz, %bb.tt ]
  %.sink.i.ph.i.i = phi i8 [ 3, %bb.ss ], [ 4, %bb.th ], [ 5, %bb.tt ]
  store i8 %.sink.i.ph.i.i, ptr %i.bdz, align 8, !noalias !25194
  br label %bb.uk

bb.uf:                                            ; preds = %bb.ub, %bb.tw, %bb.to, %bb.tm, %bb.tk
  %i.bea = phi ptr [ %i.bby, %bb.tk ], [ %i.bbp, %bb.to ], [ %i.bbf, %bb.ub ], [ %i.bby, %bb.tm ], [ %i.bcv, %bb.tw ] ; 14 uses
  %i.beb = phi ptr [ %i.bbz, %bb.tk ], [ %i.bbq, %bb.to ], [ %i.bbg, %bb.ub ], [ %i.bbz, %bb.tm ], [ %i.bcw, %bb.tw ] ; 14 uses
  %i.bec = phi ptr [ %i.bca, %bb.tk ], [ %i.bbr, %bb.to ], [ %i.bbh, %bb.ub ], [ %i.bca, %bb.tm ], [ %i.bcx, %bb.tw ] ; 3 uses
  %i.bed = phi ptr [ %i.bcb, %bb.tk ], [ %i.bbs, %bb.to ], [ %i.bbi, %bb.ub ], [ %i.bcb, %bb.tm ], [ %i.bcy, %bb.tw ] ; 3 uses
  %i.bee = phi ptr [ %i.bcc, %bb.tk ], [ %i.bbt, %bb.to ], [ %i.bbj, %bb.ub ], [ %i.bcc, %bb.tm ], [ %i.bcz, %bb.tw ]
  %i.bef = phi ptr [ %i.bcd, %bb.tk ], [ %i.bbu, %bb.to ], [ %i.bbk, %bb.ub ], [ %i.bcd, %bb.tm ], [ %i.bda, %bb.tw ]
  %.sroa.0180.1.i.i.i = phi i64 [ %i.bcg, %bb.tk ], [ -1, %bb.to ], [ -1, %bb.ub ], [ -1, %bb.tm ], [ %i.bdd, %bb.tw ] ; 2 uses
  %.sroa.6181.1.i.i.i = phi i64 [ %.sroa.3.0.copyload.i.i.i, %bb.tk ], [ 0, %bb.to ], [ 1, %bb.ub ], [ 1, %bb.tm ], [ %.sroa.3161.0.copyload.i.i.i, %bb.tw ] ; 2 uses
  %.sroa.11182.1.i.i.i = phi i64 [ %.sroa.5103.sroa.0.0.copyload.i.i.i, %bb.tk ], [ undef, %bb.to ], [ %.sroa.0184.0.copyload.i.i.i, %bb.ub ], [ %i.bcn, %bb.tm ], [ %i.bdh, %bb.tw ] ; 2 uses
  %.sroa.15183.1.i.i.i = phi i64 [ %.sroa.5103.sroa.3.0.copyload.i.i.i, %bb.tk ], [ undef, %bb.to ], [ %.sroa.4.0.copyload.i.i.i, %bb.ub ], [ %i.bco, %bb.tm ], [ %i.bdi, %bb.tw ] ; 2 uses
  %.sroa.18.1.i.i.i = phi i64 [ %.sroa.5103.sroa.5.0.copyload.i.i.i, %bb.tk ], [ undef, %bb.to ], [ %.sroa.5185.0.copyload.i.i.i, %bb.ub ], [ %i.bcp, %bb.tm ], [ %.sroa.5162.sroa.5.0.copyload.i.i.i, %bb.tw ] ; 2 uses
  %.sroa.21.1.i.i.i = phi i64 [ %.sroa.7104.0.copyload.i.i.i, %bb.tk ], [ undef, %bb.to ], [ undef, %bb.ub ], [ undef, %bb.tm ], [ %.sroa.7163.0.copyload.i.i.i, %bb.tw ]
  store i8 1, ptr %i.bee, align 8, !noalias !25194
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection6shards12shard_holderNtBG_11ShardHolder30estimate_collection_size_stats0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.bef)
          to label %bb.uh unwind label %bb.ug, !noalias !25193

bb.ug:                                            ; preds = %bb.uf
  %i.beg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ro

bb.uh:                                            ; preds = %bb.uf
  %i.beh = getelementptr inbounds nuw i8, ptr %1, i64 6112
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.beh)
          to label %bb.ul unwind label %bb.ui, !noalias !25193

bb.ui:                                            ; preds = %bb.uh
  %i.bei = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsgGgPqgSfnMH_7storage.exit.i.i

bb.uj:                                            ; preds = %bb.ra, %bb.qz
  %i.bej = landingpad { ptr, i32 }
          cleanup
  br label %.body196.i

bb.uk:                                            ; preds = %bb.ue, %bb.rd
  %i.bek = phi ptr [ %i.avi, %bb.rd ], [ %i.bdx, %bb.ue ]
  %i.bel = phi ptr [ %i.avk, %bb.rd ], [ %i.bdy, %bb.ue ]
  %.sink.i.ph.i = phi i8 [ 3, %bb.rd ], [ 4, %bb.ue ]
  store i8 %.sink.i.ph.i, ptr %i.bel, align 8, !noalias !25192
  br label %bb.ze

bb.ul:                                            ; preds = %bb.uh
  store i8 1, ptr %i.bec, align 8, !noalias !25192
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection30estimate_collection_size_stats0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.bed)
          to label %bb.un unwind label %bb.um, !noalias !25090

bb.um:                                            ; preds = %bb.ul
  %i.bem = landingpad { ptr, i32 }
          cleanup
  br label %bb.wz

bb.un:                                            ; preds = %bb.ul
  %.not.i198.i = icmp eq i64 %.sroa.0180.1.i.i.i, -1
  br i1 %.not.i198.i, label %bb.uo, label %bb.xd

bb.uo:                                            ; preds = %bb.un
  %i.ben = trunc nuw i64 %.sroa.6181.1.i.i.i to i1
  br i1 %i.ben, label %bb.up, label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common21collection_size_statsNtB2_24CollectionSizeStatsCache15new_with_values.exit.i

bb.up:                                            ; preds = %bb.uo
  br label %_RNvMNtNtCsPYQCUnoTxQ_10collection6common21collection_size_statsNtB2_24CollectionSizeStatsCache15new_with_values.exit.i

_RNvMNtNtCsPYQCUnoTxQ_10collection6common21collection_size_statsNtB2_24CollectionSizeStatsCache15new_with_values.exit.i: ; preds = %bb.up, %bb.uo
  %.sroa.3.sroa.0.0.i.i = phi i64 [ %.sroa.11182.1.i.i.i, %bb.up ], [ undef, %bb.uo ]
  %.sroa.3.sroa.2.0.i.i = phi i64 [ %.sroa.15183.1.i.i.i, %bb.up ], [ undef, %bb.uo ]
  %.sroa.3.sroa.3.0.i.i = phi i64 [ %.sroa.18.1.i.i.i, %bb.up ], [ undef, %bb.uo ]
  %.sroa.0.0.i199.i = phi i64 [ 1, %bb.up ], [ 0, %bb.uo ]
  %i.beo = getelementptr inbounds nuw i8, ptr %1, i64 4808 ; 3 uses
  %i.bep = load ptr, ptr %i.beo, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %i.beq = getelementptr inbounds nuw i8, ptr %1, i64 4816 ; 3 uses
  %i.ber = load i64, ptr %i.beq, align 8, !noalias !25089, !noundef !29
  %i.bes = invoke noundef ptr @_RNvYNtNtCsPYQCUnoTxQ_10collection10collection17CollectionVersionNtNtCslmvYCXbQjWR_6common15storage_version14StorageVersion4saveCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bep, i64 noundef %i.ber)
          to label %bb.ur unwind label %bb.uq, !noalias !25090 ; 2 uses

bb.uq:                                            ; preds = %_RNvMNtNtCsPYQCUnoTxQ_10collection6common21collection_size_statsNtB2_24CollectionSizeStatsCache15new_with_values.exit.i
  %i.bet = landingpad { ptr, i32 }
          cleanup
  br label %bb.wz

bb.ur:                                            ; preds = %_RNvMNtNtCsPYQCUnoTxQ_10collection6common21collection_size_statsNtB2_24CollectionSizeStatsCache15new_with_values.exit.i
  %.not27.i = icmp eq ptr %i.bes, null
  br i1 %.not27.i, label %bb.ut, label %bb.us

bb.us:                                            ; preds = %bb.ur
  %i.beu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  invoke void @_RNvXsl_NtNtCsPYQCUnoTxQ_10collection10operations5typesNtB5_15CollectionErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB1h_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.beu, ptr noundef nonnull %i.bes)
          to label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsPYQCUnoTxQ_10collection10collection10CollectionNtNtNtBO_10operations5types15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualCsgGgPqgSfnMH_7storage.exit.i unwind label %bb.xc, !noalias !25090

bb.ut:                                            ; preds = %bb.ur
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !25089
  %i.bev = getelementptr inbounds nuw i8, ptr %1, i64 4840
  %i.bew = load ptr, ptr %i.bev, align 8, !noalias !25089, !nonnull !29, !align !35, !noundef !29
  %i.bex = load ptr, ptr %i.beo, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %i.bey = load i64, ptr %i.beq, align 8, !noalias !25089, !noundef !29
  invoke void @_RNvMs2_NtCsPYQCUnoTxQ_10collection6configNtB5_24CollectionConfigInternal4save(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.bew, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bex, i64 noundef %i.bey)
          to label %bb.uv unwind label %bb.uu, !noalias !25090

bb.uu:                                            ; preds = %bb.ut
  %i.bez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !25089
  br label %bb.wz

bb.uv:                                            ; preds = %bb.ut
  %i.bfa = load i64, ptr %i.ar, align 8, !range !59, !alias.scope !25210, !noalias !25211, !noundef !29 ; 2 uses
  %.not.i201.i = icmp eq i64 %i.bfa, -1
  br i1 %.not.i201.i, label %bb.uw, label %bb.xa

bb.uw:                                            ; preds = %bb.uv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !25089
  %i.bfb = getelementptr inbounds nuw i8, ptr %1, i64 4776 ; 3 uses
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bfb)
          to label %bb.uy unwind label %bb.ux, !noalias !25090

bb.ux:                                            ; preds = %bb.uw
  %i.bfc = landingpad { ptr, i32 }
          cleanup
  br label %bb.wy

bb.uy:                                            ; preds = %bb.uw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !25089
  %i.bfd = getelementptr inbounds nuw i8, ptr %1, i64 6080 ; 2 uses
  store i8 0, ptr %i.bfd, align 8, !noalias !25089
  %i.bfe = getelementptr inbounds nuw i8, ptr %1, i64 6096
  %i.bff = load ptr, ptr %i.bfe, align 8, !noalias !25089, !nonnull !29, !noundef !29
  store ptr %i.bff, ptr %i.ap, align 8, !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !25089
  %i.bfg = getelementptr inbounds nuw i8, ptr %1, i64 6083 ; 2 uses
  store i8 0, ptr %i.bfg, align 1, !noalias !25089
  %i.bfh = getelementptr inbounds nuw i8, ptr %1, i64 5768
  %i.bfi = load ptr, ptr %i.bfh, align 8, !noalias !25089, !nonnull !29, !noundef !29
  store ptr %i.bfi, ptr %i.ao, align 8, !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.bfj = getelementptr inbounds nuw i8, ptr %1, i64 5152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.an, ptr noundef nonnull align 8 dereferenceable(136) %i.bfj, i64 136, i1 false), !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !25089
  %i.bfk = getelementptr inbounds nuw i8, ptr %1, i64 6084
  store i8 0, ptr %i.bfk, align 4, !noalias !25089
  %i.bfl = getelementptr inbounds nuw i8, ptr %1, i64 5760
  %i.bfm = load ptr, ptr %i.bfl, align 8, !noalias !25089, !nonnull !29, !noundef !29
  store ptr %i.bfm, ptr %i.am, align 8, !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !25089
  %i.bfn = getelementptr inbounds nuw i8, ptr %1, i64 6090 ; 2 uses
  store i8 0, ptr %i.bfn, align 2, !noalias !25089
  %i.bfo = getelementptr inbounds nuw i8, ptr %1, i64 4848
  %i.bfp = load ptr, ptr %i.bfo, align 8, !noalias !25089, !nonnull !29, !noundef !29
  store ptr %i.bfp, ptr %i.al, align 8, !noalias !25089
  %i.bfq = getelementptr inbounds nuw i8, ptr %1, i64 4800
  %i.bfr = load i64, ptr %i.bfq, align 8, !noalias !25089, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !25089
  %i.bfs = load ptr, ptr %i.beo, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %i.bft = load i64, ptr %i.beq, align 8, !noalias !25089, !noundef !29
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bfs, i64 noundef %i.bft)
          to label %_RNvXsV_NtCsG258MDvU3F_3std4pathNtB5_4PathNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_owned.exit.i unwind label %bb.vb, !noalias !25090

bb.uz:                                            ; preds = %bb.vc, %bb.vb
  %.pn33.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.vc ], [ %i.bfx, %bb.vb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25212)
  call void @llvm.experimental.noalias.scope.decl(metadata !25213)
  %i.bfu = load ptr, ptr %i.al, align 8, !alias.scope !25214, !noalias !25089, !nonnull !29, !noundef !29
  %i.bfv = atomicrmw sub ptr %i.bfu, i64 1 release, align 8, !noalias !25215
  %i.bfw = icmp eq i64 %i.bfv, 1
  br i1 %i.bfw, label %bb.va, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit205.i

bb.va:                                            ; preds = %bb.uz
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit205.i unwind label %bb.pr, !noalias !25090

bb.vb:                                            ; preds = %bb.uy
  %i.bfx = landingpad { ptr, i32 }
          cleanup
  br label %bb.uz

_RNvXsV_NtCsG258MDvU3F_3std4pathNtB5_4PathNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_owned.exit.i: ; preds = %bb.uy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !25089
  %i.bfy = getelementptr inbounds nuw i8, ptr %1, i64 4824
  %i.bfz = load ptr, ptr %i.bfy, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %i.bga = getelementptr inbounds nuw i8, ptr %1, i64 4832
  %i.bgb = load i64, ptr %i.bga, align 8, !noalias !25089, !noundef !29
  invoke void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bfz, i64 noundef %i.bgb)
          to label %_RNvXsV_NtCsG258MDvU3F_3std4pathNtB5_4PathNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_owned.exit207.i unwind label %bb.vd, !noalias !25090

bb.vc:                                            ; preds = %bb.wu, %bb.vd
  %.pn33.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.pn.pn.pn.i, %bb.wu ], [ %i.bgc, %bb.vd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !25089
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ak) #23
          to label %bb.uz unwind label %bb.pr, !noalias !25090

bb.vd:                                            ; preds = %_RNvXsV_NtCsG258MDvU3F_3std4pathNtB5_4PathNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_owned.exit.i
  %i.bgc = landingpad { ptr, i32 }
          cleanup
  br label %bb.vc

_RNvXsV_NtCsG258MDvU3F_3std4pathNtB5_4PathNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_owned.exit207.i: ; preds = %_RNvXsV_NtCsG258MDvU3F_3std4pathNtB5_4PathNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_owned.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !25089
  %i.bgd = getelementptr inbounds nuw i8, ptr %1, i64 6089 ; 2 uses
  store i8 0, ptr %i.bgd, align 1, !noalias !25089
  %i.bge = getelementptr inbounds nuw i8, ptr %1, i64 4968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(80) %i.bge, i64 80, i1 false), !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !25089
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bfb)
          to label %bb.vf unwind label %bb.ve, !noalias !25090

bb.ve:                                            ; preds = %_RNvXsV_NtCsG258MDvU3F_3std4pathNtB5_4PathNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_owned.exit207.i
  %i.bgf = landingpad { ptr, i32 }
          cleanup
  br label %bb.vg

bb.vf:                                            ; preds = %_RNvXsV_NtCsG258MDvU3F_3std4pathNtB5_4PathNtNtCsexYYUdYSQU6_5alloc6borrow7ToOwned8to_owned.exit207.i
  invoke void @_RNvMs1_NtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19transfer_tasks_poolNtB5_17TransferTasksPool3new(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ag, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.af)
          to label %bb.vi unwind label %bb.vh, !noalias !25090

bb.vg:                                            ; preds = %bb.vh, %bb.ve
  %.pn29.i = phi { ptr, i32 } [ %i.bgg, %bb.vh ], [ %i.bgf, %bb.ve ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !25089
  br label %bb.vj

bb.vh:                                            ; preds = %bb.vf
  %i.bgg = landingpad { ptr, i32 }
          cleanup
  br label %bb.vg

bb.vi:                                            ; preds = %bb.vf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !25089
  invoke void @_RNvMs8_NtNtCsjZG7hsAZr3B_5tokio4sync5mutexINtB5_5MutexNtNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19transfer_tasks_pool17TransferTasksPoolE3newCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.ah, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @233)
          to label %bb.vl unwind label %bb.vk, !noalias !25090

bb.vj:                                            ; preds = %bb.vk, %bb.vg
  %.pn31.i496 = phi { ptr, i32 } [ %i.bgh, %bb.vk ], [ %.pn29.i, %bb.vg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !25089
  br label %bb.wt

bb.vk:                                            ; preds = %bb.vi
  %i.bgh = landingpad { ptr, i32 }
          cleanup
  br label %bb.vj

bb.vl:                                            ; preds = %bb.vi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !25089
  %i.bgi = getelementptr inbounds nuw i8, ptr %1, i64 5064 ; 3 uses
  %.val136.i = load ptr, ptr %i.bgi, align 8, !noalias !25089, !nonnull !29, !noundef !29 ; 2 uses
  %i.bgj = getelementptr i8, ptr %1, i64 5072
  %.val137.i = load ptr, ptr %i.bgj, align 8, !noalias !25089 ; 2 uses
  %i.bgk = atomicrmw add ptr %.val136.i, i64 1 monotonic, align 8, !noalias !25090
  %i.bgl = icmp slt i64 %i.bgk, 0
  br i1 %i.bgl, label %bb.vm, label %bb.vn

bb.vm:                                            ; preds = %bb.vl
  call void @llvm.trap()
  unreachable

bb.vn:                                            ; preds = %bb.vl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val137.i) ]
  store ptr %.val136.i, ptr %i.ae, align 16, !noalias !25089
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %.val137.i, ptr %i.bgm, align 8, !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !25089
  %i.bgn = getelementptr inbounds nuw i8, ptr %1, i64 5048 ; 3 uses
  %.val124.i = load ptr, ptr %i.bgn, align 8, !noalias !25089, !nonnull !29, !noundef !29 ; 2 uses
  %i.bgo = getelementptr i8, ptr %1, i64 5056
  %.val125.i = load ptr, ptr %i.bgo, align 8, !noalias !25089 ; 2 uses
  %i.bgp = atomicrmw add ptr %.val124.i, i64 1 monotonic, align 8, !noalias !25090
  %i.bgq = icmp slt i64 %i.bgp, 0
  br i1 %i.bgq, label %bb.vo, label %bb.vp

bb.vo:                                            ; preds = %bb.vn
  call void @llvm.trap()
  unreachable

bb.vp:                                            ; preds = %bb.vn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val125.i) ]
  store ptr %.val124.i, ptr %i.ad, align 16, !noalias !25089
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.val125.i, ptr %i.bgr, align 8, !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !25089
  %i.bgs = getelementptr inbounds nuw i8, ptr %1, i64 6088
  store i8 0, ptr %i.bgs, align 8, !noalias !25089
  %i.bgt = getelementptr inbounds nuw i8, ptr %1, i64 5080
  %i.bgu = load <2 x ptr>, ptr %i.bgt, align 8, !noalias !25089
  store <2 x ptr> %i.bgu, ptr %i.ac, align 16, !noalias !25089
  %i.bgv = getelementptr inbounds nuw i8, ptr %1, i64 5288
  %i.bgw = invoke { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant7elapsed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bgv)
          to label %bb.vr unwind label %bb.vq, !noalias !25090 ; 2 uses

bb.vq:                                            ; preds = %bb.vp
  %i.bgx = landingpad { ptr, i32 }
          cleanup
  br label %bb.wp

bb.vr:                                            ; preds = %bb.vp
  %i.bgy = extractvalue { i64, i32 } %i.bgw, 0
  %i.bgz = extractvalue { i64, i32 } %i.bgw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !25089
  %i.bha = invoke noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6common8is_ready7IsReadyENtNtCskKLDkoKarTP_4core7default7Default7defaultCsgGgPqgSfnMH_7storage()
          to label %bb.vt unwind label %bb.vs, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6common8is_ready7IsReadyEECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.wo, %bb.wn, %bb.vs
  %.pn33.pn.pn.pn.i = phi { ptr, i32 } [ %i.bhb, %bb.vs ], [ %.pn33.pn.pn.i, %bb.wo ], [ %.pn33.pn.pn.i, %bb.wn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !25089
  br label %bb.wp

bb.vs:                                            ; preds = %bb.vr
  %i.bhb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6common8is_ready7IsReadyEECsgGgPqgSfnMH_7storage.exit.i

bb.vt:                                            ; preds = %bb.vr
  store ptr %i.bha, ptr %i.ab, align 8, !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !25089
  %i.bhc = getelementptr inbounds nuw i8, ptr %1, i64 6086
  store i8 0, ptr %i.bhc, align 2, !noalias !25089
  %i.bhd = getelementptr inbounds nuw i8, ptr %1, i64 5104
  %i.bhe = load i64, ptr %i.bhd, align 8, !range !41, !noalias !25089, !noundef !29 ; 2 uses
  %.not.i209.i = icmp eq i64 %i.bhe, 2
  br i1 %.not.i209.i, label %bb.vv, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.bhf = getelementptr inbounds nuw i8, ptr %1, i64 5112
  %i.bhg = load ptr, ptr %i.bhf, align 8, !noalias !25089
  %i.bhh = insertvalue { i64, ptr } poison, i64 %i.bhe, 0
  %i.bhi = insertvalue { i64, ptr } %i.bhh, ptr %i.bhg, 1
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleE14unwrap_or_elseNvMBK_BI_7currentECsgGgPqgSfnMH_7storage.exit212.i

bb.vv:                                            ; preds = %bb.vt
  %i.bhj = invoke { i64, ptr } @_RNvMNtNtCsjZG7hsAZr3B_5tokio7runtime6handleNtB2_6Handle7current(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1118)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleE14unwrap_or_elseNvMBK_BI_7currentECsgGgPqgSfnMH_7storage.exit212.i unwind label %bb.vw, !noalias !25090

bb.vw:                                            ; preds = %bb.vv
  %i.bhk = landingpad { ptr, i32 }
          cleanup
  br label %bb.wn

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleE14unwrap_or_elseNvMBK_BI_7currentECsgGgPqgSfnMH_7storage.exit212.i: ; preds = %bb.vv, %bb.vu
  %.merged.i210.i = phi { i64, ptr } [ %i.bhi, %bb.vu ], [ %i.bhj, %bb.vv ] ; 2 uses
  %i.bhl = extractvalue { i64, ptr } %.merged.i210.i, 0
  %i.bhm = extractvalue { i64, ptr } %.merged.i210.i, 1
  store i64 %i.bhl, ptr %i.aa, align 8, !noalias !25089
  %i.bhn = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.bhm, ptr %i.bhn, align 8, !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !25089
  %i.bho = getelementptr inbounds nuw i8, ptr %1, i64 6087
  store i8 0, ptr %i.bho, align 1, !noalias !25089
  %i.bhp = getelementptr inbounds nuw i8, ptr %1, i64 5096
  %i.bhq = load ptr, ptr %i.bhp, align 8, !noalias !25089, !noundef !29 ; 2 uses
  %.not.i213.i = icmp eq ptr %i.bhq, null
  br i1 %.not.i213.i, label %bb.vx, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleE14unwrap_or_elseNvMs0_BK_BI_7currentECsgGgPqgSfnMH_7storage.exit216.i

bb.vx:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleE14unwrap_or_elseNvMBK_BI_7currentECsgGgPqgSfnMH_7storage.exit212.i
  %i.bhr = invoke noundef nonnull ptr @_RNvMs0_NtNtCsPYQCUnoTxQ_10collection6common15adaptive_handleNtB5_20AdaptiveSearchHandle7current()
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleE14unwrap_or_elseNvMs0_BK_BI_7currentECsgGgPqgSfnMH_7storage.exit216.i unwind label %bb.vy, !noalias !25090

bb.vy:                                            ; preds = %bb.vx
  %i.bhs = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleECsgGgPqgSfnMH_7storage.exit226.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleE14unwrap_or_elseNvMs0_BK_BI_7currentECsgGgPqgSfnMH_7storage.exit216.i: ; preds = %bb.vx, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleE14unwrap_or_elseNvMBK_BI_7currentECsgGgPqgSfnMH_7storage.exit212.i
  %.sroa.02.0.i214.i = phi ptr [ %i.bhq, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleE14unwrap_or_elseNvMBK_BI_7currentECsgGgPqgSfnMH_7storage.exit212.i ], [ %i.bhr, %bb.vx ]
  store ptr %.sroa.02.0.i214.i, ptr %i.z, align 8, !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !25089
  %i.bht = getelementptr inbounds nuw i8, ptr %1, i64 6085
  store i8 0, ptr %i.bht, align 1, !noalias !25089
  %i.bhu = getelementptr inbounds nuw i8, ptr %1, i64 5120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.bhu, i64 32, i1 false), !noalias !25089
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !25089
  %i.bhv = invoke noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmNtNtNtCsPYQCUnoTxQ_10collection10collection5clean14ShardCleanTaskEEENtNtCskKLDkoKarTP_4core7default7Default7defaultCsgGgPqgSfnMH_7storage()
          to label %_RNvXs2_NtNtCsPYQCUnoTxQ_10collection10collection5cleanNtB5_15ShardCleanTasksNtNtCskKLDkoKarTP_4core7default7Default7default.exit.i unwind label %bb.vz, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10collection5clean15ShardCleanTasksECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.wb, %bb.wa, %bb.vz
  %.pn33.i = phi { ptr, i32 } [ %i.bhw, %bb.vz ], [ %i.bhy, %bb.wb ], [ %i.bhy, %bb.wa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !25089
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common6budget14ResourceBudgetECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(32) %i.y) #23
          to label %bb.wl unwind label %bb.pr, !noalias !25090

bb.vz:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleE14unwrap_or_elseNvMs0_BK_BI_7currentECsgGgPqgSfnMH_7storage.exit216.i
  %i.bhw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10collection5clean15ShardCleanTasksECsgGgPqgSfnMH_7storage.exit.i

_RNvXs2_NtNtCsPYQCUnoTxQ_10collection10collection5cleanNtB5_15ShardCleanTasksNtNtCskKLDkoKarTP_4core7default7Default7default.exit.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleE14unwrap_or_elseNvMs0_BK_BI_7currentECsgGgPqgSfnMH_7storage.exit216.i
  store ptr %i.bhv, ptr %i.x, align 8, !noalias !25089
  %i.bhx = invoke noundef nonnull ptr @_RNvXsY_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCsPYQCUnoTxQ_10collection10collection23RecreateOptimizersStateENtNtCskKLDkoKarTP_4core7default7Default7defaultCsgGgPqgSfnMH_7storage()
          to label %bb.wc unwind label %bb.wa, !noalias !25090

bb.wa:                                            ; preds = %_RNvXs2_NtNtCsPYQCUnoTxQ_10collection10collection5cleanNtB5_15ShardCleanTasksNtNtCskKLDkoKarTP_4core7default7Default7default.exit.i
  %i.bhy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25216)
  call void @llvm.experimental.noalias.scope.decl(metadata !25217)
  call void @llvm.experimental.noalias.scope.decl(metadata !25218)
  %i.bhz = load ptr, ptr %i.x, align 8, !alias.scope !25219, !noalias !25089, !nonnull !29, !noundef !29
  %i.bia = atomicrmw sub ptr %i.bhz, i64 1 release, align 8, !noalias !25220
  %i.bib = icmp eq i64 %i.bia, 1
  br i1 %i.bib, label %bb.wb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10collection5clean15ShardCleanTasksECsgGgPqgSfnMH_7storage.exit.i

bb.wb:                                            ; preds = %bb.wa
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api6rwlock6RwLockNtNtCs27TyLBeV75a_11parking_lot10raw_rwlock9RawRwLockINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmNtNtNtCsPYQCUnoTxQ_10collection10collection5clean14ShardCleanTaskEEE9drop_slowB30_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10collection5clean15ShardCleanTasksECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.pr, !noalias !25090

bb.wc:                                            ; preds = %_RNvXs2_NtNtCsPYQCUnoTxQ_10collection10collection5cleanNtB5_15ShardCleanTasksNtNtCskKLDkoKarTP_4core7default7Default7default.exit.i
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false), !noalias !25089
  %i.bic = load ptr, ptr %i.ap, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %i.bid = load ptr, ptr %i.ao, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %i.bie = load ptr, ptr %i.al, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %i.bif = load ptr, ptr %i.am, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(136) %i.an, i64 136, i1 false), !noalias !25089
  %.sroa.9.0..sroa_idx.i497 = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx.i497, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !noalias !25089
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false), !noalias !25089
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.11.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %i.ai, i64 80, i1 false), !noalias !25089
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.30.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(112) %i.ah, i64 112, i1 false), !noalias !25089
  %i.big = load ptr, ptr %i.ab, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %i.bih = load i64, ptr %i.aa, align 8, !range !28, !noalias !25089, !noundef !29 ; 2 uses
  %i.bii = load ptr, ptr %i.bhn, align 8, !noalias !25089, !noundef !29
  %i.bij = load ptr, ptr %i.z, align 8, !noalias !25089, !nonnull !29, !noundef !29
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.26.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !25089
  %i.bik = load ptr, ptr %i.x, align 8, !noalias !25089, !nonnull !29, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !25089
  %.sroa.5.0..sroa_idx.i498 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.6.0..sroa_idx.i499 = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 344
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 352
  %.sroa.143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 360
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 376
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 384
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 408
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 424
  %i.bil = load <2 x ptr>, ptr %i.ac, align 16, !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !25089
  %i.bim = load <2 x ptr>, ptr %i.ad, align 16, !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !25089
  %i.bin = load <2 x ptr>, ptr %i.ae, align 16, !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !25089
  store i64 %i.bih, ptr %i.w, align 8, !noalias !25089
  store ptr %i.bii, ptr %.sroa.5.0..sroa_idx.i498, align 8, !noalias !25089
  store i64 %.sroa.0.0.i199.i, ptr %.sroa.6.0..sroa_idx.i499, align 8, !noalias !25089
  store i64 %.sroa.3.sroa.0.0.i.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !25089
  store i64 %.sroa.3.sroa.2.0.i.i, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !25089
  store i64 %.sroa.3.sroa.3.0.i.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !25089
  store i64 1, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !25089
  store i64 %i.bgy, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !25089
  store i32 %i.bgz, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !25089
  store ptr %i.bic, ptr %.sroa.143.0..sroa_idx.i, align 8, !noalias !25089
  store ptr %i.bid, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !25089
  store ptr %i.bie, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !25089
  store ptr %i.bif, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !25089
  store <2 x ptr> %i.bin, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !25089
  store <2 x ptr> %i.bim, ptr %.sroa.20.0..sroa_idx.i, align 8, !noalias !25089
  store <2 x ptr> %i.bil, ptr %.sroa.22.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 440
  store ptr %i.big, ptr %.sroa.24.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 448
  store ptr %i.bij, ptr %.sroa.25.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 488
  store ptr %i.bik, ptr %.sroa.27.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 496
  store ptr %i.bhx, ptr %.sroa.28.0..sroa_idx.i, align 8, !noalias !25089
  %.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 504
  store i64 %i.bfr, ptr %.sroa.29.0..sroa_idx.i, align 8, !noalias !25089
  store i8 0, ptr %i.bfd, align 8, !noalias !25089
  %i.bio = getelementptr inbounds nuw i8, ptr %1, i64 6078
  store i8 0, ptr %i.bio, align 2, !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25221)
  call void @llvm.experimental.noalias.scope.decl(metadata !25222)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bfg, i8 0, i64 6, i1 false), !noalias !25089
  %i.bip = load ptr, ptr %i.bgi, align 8, !alias.scope !25223, !noalias !25089, !nonnull !29, !noundef !29
  %i.biq = atomicrmw sub ptr %i.bip, i64 1 release, align 8, !noalias !25224
  %i.bir = icmp eq i64 %i.biq, 1
  br i1 %i.bir, label %bb.wd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit.i

bb.wd:                                            ; preds = %bb.wc
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtBO_6marker4SendNtB2B_4SyncEL_E9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bgi) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.wf, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit249.i: ; preds = %bb.xw, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit273.i, %bb.wf
  %i.bis = phi ptr [ %i.biy, %bb.wf ], [ %i.bnp, %bb.xw ], [ %i.bnp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit273.i ] ; 2 uses
  %i.bit = phi ptr [ %i.biz, %bb.wf ], [ %i.bnq, %bb.xw ], [ %i.bnq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit273.i ] ; 2 uses
  %.pn110.i = phi { ptr, i32 } [ %i.bja, %bb.wf ], [ %.pn108.i, %bb.xw ], [ %.pn108.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit273.i ] ; 2 uses
  %i.biu = getelementptr inbounds nuw i8, ptr %1, i64 5048 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25225)
  call void @llvm.experimental.noalias.scope.decl(metadata !25226)
  %i.biv = load ptr, ptr %i.biu, align 8, !alias.scope !25227, !noalias !25089, !nonnull !29, !noundef !29
  %i.biw = atomicrmw sub ptr %i.biv, i64 1 release, align 8, !noalias !25228
  %i.bix = icmp eq i64 %i.biw, 1
  br i1 %i.bix, label %bb.we, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit221.i

bb.we:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit249.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTymINtNtBO_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtBO_6marker4SendNtB3o_4SyncEL_E9drop_slowB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.biu) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit221.i unwind label %bb.pr, !noalias !25090

bb.wf:                                            ; preds = %bb.xy, %bb.wd
  %i.biy = phi ptr [ %i.ake, %bb.xy ], [ %i.bea, %bb.wd ]
  %i.biz = phi ptr [ %i.akf, %bb.xy ], [ %i.beb, %bb.wd ]
  %i.bja = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit249.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.wd, %bb.wc
  call void @llvm.experimental.noalias.scope.decl(metadata !25229)
  call void @llvm.experimental.noalias.scope.decl(metadata !25230)
  %i.bjb = load ptr, ptr %i.bgn, align 8, !alias.scope !25231, !noalias !25089, !nonnull !29, !noundef !29
  %i.bjc = atomicrmw sub ptr %i.bjb, i64 1 release, align 8, !noalias !25232
  %i.bjd = icmp eq i64 %i.bjc, 1
  br i1 %i.bjd, label %bb.wg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit223.i

bb.wg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTymINtNtBO_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtBO_6marker4SendNtB3o_4SyncEL_E9drop_slowB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bgn) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit223.i unwind label %bb.wh, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit221.i: ; preds = %bb.wh, %bb.we, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit249.i
  %i.bje = phi ptr [ %i.bjj, %bb.wh ], [ %i.bis, %bb.we ], [ %i.bis, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit249.i ] ; 2 uses
  %i.bjf = phi ptr [ %i.bjk, %bb.wh ], [ %i.bit, %bb.we ], [ %i.bit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit249.i ] ; 2 uses
  %.pn112.i = phi { ptr, i32 } [ %i.bjl, %bb.wh ], [ %.pn110.i, %bb.we ], [ %.pn110.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit249.i ] ; 2 uses
  %i.bjg = getelementptr inbounds nuw i8, ptr %1, i64 6089
  %i.bjh = load i8, ptr %i.bjg, align 1, !range !52, !noalias !25089, !noundef !29
  %i.bji = trunc nuw i8 %i.bjh to i1
  br i1 %i.bji, label %bb.yz, label %bb.ya

bb.wh:                                            ; preds = %bb.xz, %bb.wg
  %i.bjj = phi ptr [ %i.ake, %bb.xz ], [ %i.bea, %bb.wg ]
  %i.bjk = phi ptr [ %i.akf, %bb.xz ], [ %i.beb, %bb.wg ]
  %i.bjl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit221.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit223.i: ; preds = %bb.wg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit.i
  store i8 0, ptr %i.bgd, align 1, !noalias !25089
  %i.bjm = getelementptr inbounds nuw i8, ptr %1, i64 4920 ; 2 uses
  %i.bjn = load ptr, ptr %i.bjm, align 8, !alias.scope !25233, !noalias !25089, !noundef !29
  %i.bjo = icmp eq ptr %i.bjn, null
  br i1 %i.bjo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit.i, label %bb.wi

bb.wi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit223.i
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bjm)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.wj, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit255.i: ; preds = %bb.yb, %bb.ya, %bb.wj
  %i.bjp = phi ptr [ %i.bju, %bb.wj ], [ %i.boh, %bb.yb ], [ %i.boh, %bb.ya ] ; 2 uses
  %i.bjq = phi ptr [ %i.bjv, %bb.wj ], [ %i.boi, %bb.yb ], [ %i.boi, %bb.ya ] ; 2 uses
  %.pn116.i = phi { ptr, i32 } [ %i.bjw, %bb.wj ], [ %.pn114.i, %bb.yb ], [ %.pn114.i, %bb.ya ] ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %1, i64 6079
  %i.bjs = load i8, ptr %i.bjr, align 1, !range !52, !noalias !25089, !noundef !29
  %i.bjt = trunc nuw i8 %i.bjs to i1
  br i1 %i.bjt, label %bb.za, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit275.i

bb.wj:                                            ; preds = %bb.ye, %bb.wi
  %i.bju = phi ptr [ %i.ake, %bb.ye ], [ %i.bea, %bb.wi ]
  %i.bjv = phi ptr [ %i.akf, %bb.ye ], [ %i.beb, %bb.wi ]
  %i.bjw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit255.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.wi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit223.i
  %i.bjx = getelementptr inbounds nuw i8, ptr %1, i64 6079
  store i8 0, ptr %i.bjx, align 1, !noalias !25089
  store i8 0, ptr %i.bfn, align 2, !noalias !25089
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bfb)
          to label %bb.zf unwind label %bb.wk, !noalias !25090

.body261.i:                                       ; preds = %bb.yj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit277.i, %bb.wk
  %i.bjy = phi ptr [ %i.bph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit277.i ], [ %i.bka, %bb.wk ], [ %i.ake, %bb.yj ]
  %i.bjz = phi ptr [ %i.bpi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit277.i ], [ %i.bkb, %bb.wk ], [ %i.akf, %bb.yj ]
  %.pn122.i = phi { ptr, i32 } [ %.pn120.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit277.i ], [ %i.bkc, %bb.wk ], [ %i.bpo, %bb.yj ]
  store i8 2, ptr %i.bjy, align 4, !noalias !25089
  br label %.body513

bb.wk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgGgPqgSfnMH_7storage.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit.i
  %i.bka = phi ptr [ %i.ake, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgGgPqgSfnMH_7storage.exit.i.i ], [ %i.bea, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit.i ]
  %i.bkb = phi ptr [ %i.akf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgGgPqgSfnMH_7storage.exit.i.i ], [ %i.beb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit.i ]
  %i.bkc = landingpad { ptr, i32 }
          cleanup
  br label %.body261.i

bb.wl:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection10collection5clean15ShardCleanTasksECsgGgPqgSfnMH_7storage.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25234)
  call void @llvm.experimental.noalias.scope.decl(metadata !25235)
  call void @llvm.experimental.noalias.scope.decl(metadata !25236)
  %i.bkd = load ptr, ptr %i.z, align 8, !alias.scope !25237, !noalias !25089, !nonnull !29, !noundef !29
  %i.bke = atomicrmw sub ptr %i.bkd, i64 1 release, align 8, !noalias !25238
  %i.bkf = icmp eq i64 %i.bke, 1
  br i1 %i.bkf, label %bb.wm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleECsgGgPqgSfnMH_7storage.exit226.i

bb.wm:                                            ; preds = %bb.wl
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleECsgGgPqgSfnMH_7storage.exit226.i unwind label %bb.pr, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleECsgGgPqgSfnMH_7storage.exit226.i: ; preds = %bb.wm, %bb.wl, %bb.vy
  %.pn33.pn.i = phi { ptr, i32 } [ %i.bhs, %bb.vy ], [ %.pn33.i, %bb.wm ], [ %.pn33.i, %bb.wl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !25089
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(16) %i.aa) #23
          to label %bb.wn unwind label %bb.pr, !noalias !25090

bb.wn:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleECsgGgPqgSfnMH_7storage.exit226.i, %bb.vw
  %.pn33.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleECsgGgPqgSfnMH_7storage.exit226.i ], [ %i.bhk, %bb.vw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25239)
  call void @llvm.experimental.noalias.scope.decl(metadata !25240)
  %i.bkg = load ptr, ptr %i.ab, align 8, !alias.scope !25241, !noalias !25089, !nonnull !29, !noundef !29
  %i.bkh = atomicrmw sub ptr %i.bkg, i64 1 release, align 8, !noalias !25242
  %i.bki = icmp eq i64 %i.bkh, 1
  br i1 %i.bki, label %bb.wo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6common8is_ready7IsReadyEECsgGgPqgSfnMH_7storage.exit.i

bb.wo:                                            ; preds = %bb.wn
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6common8is_ready7IsReadyE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6common8is_ready7IsReadyEECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.pr, !noalias !25090

bb.wp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6common8is_ready7IsReadyEECsgGgPqgSfnMH_7storage.exit.i, %bb.vq
  %.pn33.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection6common8is_ready7IsReadyEECsgGgPqgSfnMH_7storage.exit.i ], [ %i.bgx, %bb.vq ]
  call void @llvm.experimental.noalias.scope.decl(metadata !25243)
  call void @llvm.experimental.noalias.scope.decl(metadata !25244)
  %i.bkj = load ptr, ptr %i.ac, align 16, !alias.scope !25245, !noalias !25089, !nonnull !29, !noundef !29
  %i.bkk = atomicrmw sub ptr %i.bkj, i64 1 release, align 8, !noalias !25246
  %i.bkl = icmp eq i64 %i.bkk, 1
  br i1 %i.bkl, label %bb.wq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit229.i

bb.wq:                                            ; preds = %bb.wp
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtBQ_6marker4SendNtB2I_4SyncEL_E9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit229.i unwind label %bb.pr, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit229.i: ; preds = %bb.wq, %bb.wp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25247)
  call void @llvm.experimental.noalias.scope.decl(metadata !25248)
  %i.bkm = load ptr, ptr %i.ad, align 16, !alias.scope !25249, !noalias !25089, !nonnull !29, !noundef !29
  %i.bkn = atomicrmw sub ptr %i.bkm, i64 1 release, align 8, !noalias !25250
  %i.bko = icmp eq i64 %i.bkn, 1
  br i1 %i.bko, label %bb.wr, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit231.i

bb.wr:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit229.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTymINtNtBO_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtBO_6marker4SendNtB3o_4SyncEL_E9drop_slowB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ad) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit231.i unwind label %bb.pr, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit231.i: ; preds = %bb.wr, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit229.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25251)
  call void @llvm.experimental.noalias.scope.decl(metadata !25252)
  %i.bkp = load ptr, ptr %i.ae, align 16, !alias.scope !25253, !noalias !25089, !nonnull !29, !noundef !29
  %i.bkq = atomicrmw sub ptr %i.bkp, i64 1 release, align 8, !noalias !25254
  %i.bkr = icmp eq i64 %i.bkq, 1
  br i1 %i.bkr, label %bb.ws, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit233.i

bb.ws:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit231.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtBO_6marker4SendNtB2B_4SyncEL_E9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ae) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit233.i unwind label %bb.pr, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit233.i: ; preds = %bb.ws, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit231.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !25089
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsjZG7hsAZr3B_5tokio4sync5mutex5MutexNtNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer19transfer_tasks_pool17TransferTasksPoolEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ah) #23
          to label %bb.wt unwind label %bb.pr, !noalias !25090

bb.wt:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit233.i, %bb.vj
  %.pn33.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit233.i ], [ %.pn31.i496, %bb.vj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !25089
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards15channel_service14ChannelServiceECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(80) %i.ai) #23
          to label %bb.wu unwind label %bb.pr, !noalias !25090

bb.wu:                                            ; preds = %bb.wt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !25089
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aj) #23
          to label %bb.vc unwind label %bb.pr, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit205.i: ; preds = %bb.va, %bb.uz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25255)
  call void @llvm.experimental.noalias.scope.decl(metadata !25256)
  %i.bks = load ptr, ptr %i.am, align 8, !alias.scope !25257, !noalias !25089, !nonnull !29, !noundef !29
  %i.bkt = atomicrmw sub ptr %i.bks, i64 1 release, align 8, !noalias !25258
  %i.bku = icmp eq i64 %i.bkt, 1
  br i1 %i.bku, label %bb.wv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit235.i

bb.wv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit205.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEE9drop_slowB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit235.i unwind label %bb.pr, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit235.i: ; preds = %bb.wv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit205.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.experimental.noalias.scope.decl(metadata !25259)
  call void @llvm.experimental.noalias.scope.decl(metadata !25260)
  %i.bkv = load ptr, ptr %i.ao, align 8, !alias.scope !25261, !noalias !25089, !nonnull !29, !noundef !29
  %i.bkw = atomicrmw sub ptr %i.bkv, i64 1 release, align 8, !noalias !25262
  %i.bkx = icmp eq i64 %i.bkw, 1
  br i1 %i.bkx, label %bb.ww, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit237.i

bb.ww:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit235.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEE9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ao) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit237.i unwind label %bb.pr, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit237.i: ; preds = %bb.ww, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit235.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !25089
  call void @llvm.experimental.noalias.scope.decl(metadata !25263)
  call void @llvm.experimental.noalias.scope.decl(metadata !25264)
  call void @llvm.experimental.noalias.scope.decl(metadata !25265)
  %i.bky = load ptr, ptr %i.ap, align 8, !alias.scope !25266, !noalias !25089, !nonnull !29, !noundef !29
  %i.bkz = atomicrmw sub ptr %i.bky, i64 1 release, align 8, !noalias !25267
  %i.bla = icmp eq i64 %i.bkz, 1
  br i1 %i.bla, label %bb.wx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit.i

bb.wx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit237.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ap) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.pr, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.wx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit237.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !25089
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq) #23
          to label %bb.wy unwind label %bb.pr, !noalias !25090

bb.wy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit.i, %bb.ux
  %.pn33.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn33.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit.i ], [ %i.bfc, %bb.ux ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !25089
  br label %bb.wz

bb.wz:                                            ; preds = %bb.xc, %bb.wy, %bb.uu, %bb.uq, %bb.um, %.body196.i
  %i.blb = phi ptr [ %i.bea, %bb.uq ], [ %i.bea, %bb.wy ], [ %i.bea, %bb.uu ], [ %i.bea, %bb.xc ], [ %i.auy, %.body196.i ], [ %i.bea, %bb.um ] ; 3 uses
  %i.blc = phi ptr [ %i.beb, %bb.uq ], [ %i.beb, %bb.wy ], [ %i.beb, %bb.uu ], [ %i.beb, %bb.xc ], [ %i.auz, %.body196.i ], [ %i.beb, %bb.um ] ; 3 uses
  %.pn49.pn.i = phi { ptr, i32 } [ %i.bet, %bb.uq ], [ %.pn33.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i, %bb.wy ], [ %i.bez, %bb.uu ], [ %i.blk, %bb.xc ], [ %.pn24.i, %.body196.i ], [ %i.bem, %bb.um ] ; 3 uses
  %i.bld = getelementptr inbounds nuw i8, ptr %1, i64 6080
  %i.ble = load i8, ptr %i.bld, align 8, !range !52, !noalias !25089, !noundef !29
  %i.blf = trunc nuw i8 %i.ble to i1
  br i1 %i.blf, label %bb.yl, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit265.i

bb.xa:                                            ; preds = %bb.uv
  %.sroa.8457.0..sroa_idx458.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.5460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5460.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8457.0..sroa_idx458.i, i64 40, i1 false), !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !25089
  br label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsPYQCUnoTxQ_10collection10collection10CollectionNtNtNtBO_10operations5types15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualCsgGgPqgSfnMH_7storage.exit.i.sink.split

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsPYQCUnoTxQ_10collection10collection10CollectionNtNtNtBO_10operations5types15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualCsgGgPqgSfnMH_7storage.exit.i.sink.split: ; preds = %bb.xa, %bb.xd
  %.sink1219.sroa.phi = phi ptr [ %.sink1219.sroa.gep, %bb.xd ], [ %.sink1219.sroa.gep1220, %bb.xa ]
  %.sroa.21.1.i.i.i.sink = phi i64 [ %.sroa.21.1.i.i.i, %bb.xd ], [ %i.bfa, %bb.xa ]
  store i64 %.sroa.21.1.i.i.i.sink, ptr %.sink1219.sroa.phi, align 8, !noalias !25089
  br label %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsPYQCUnoTxQ_10collection10collection10CollectionNtNtNtBO_10operations5types15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualCsgGgPqgSfnMH_7storage.exit.i

_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsPYQCUnoTxQ_10collection10collection10CollectionNtNtNtBO_10operations5types15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualCsgGgPqgSfnMH_7storage.exit.i: ; preds = %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsPYQCUnoTxQ_10collection10collection10CollectionNtNtNtBO_10operations5types15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualCsgGgPqgSfnMH_7storage.exit.i.sink.split, %bb.us
  store i64 2, ptr %i.w, align 8, !noalias !25089
  %i.blg = getelementptr inbounds nuw i8, ptr %1, i64 6096 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25268)
  call void @llvm.experimental.noalias.scope.decl(metadata !25269)
  call void @llvm.experimental.noalias.scope.decl(metadata !25270)
  %i.blh = load ptr, ptr %i.blg, align 8, !alias.scope !25271, !noalias !25089, !nonnull !29, !noundef !29
  %i.bli = atomicrmw sub ptr %i.blh, i64 1 release, align 8, !noalias !25272
  %i.blj = icmp eq i64 %i.bli, 1
  br i1 %i.blj, label %bb.xb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit240.i

bb.xb:                                            ; preds = %_RNvXsq_NtCskKLDkoKarTP_4core6resultINtB5_6ResultNtNtCsPYQCUnoTxQ_10collection10collection10CollectionNtNtNtBO_10operations5types15CollectionErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtNtNtB7_2io5error5ErrorEE13from_residualCsgGgPqgSfnMH_7storage.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.blg) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit240.i unwind label %bb.xe, !noalias !25090
end_hunk_3
begin_hunk_4_@_RNCNvMNtNtNtCsgGgPqgSfnMH_7storage15content_manager3toc17create_collectionNtB6_14TableOfContent17create_collection0Ba_:bb.a
  %i.bnd = phi ptr [ %i.ake, %bb.xu ], [ %i.bmq, %bb.xq ], [ %i.bmq, %bb.yw ], [ %i.bmq, %bb.yu ], [ %i.bmq, %bb.yv ] ; 3 uses
  %i.bne = phi ptr [ %i.akf, %bb.xu ], [ %i.bmr, %bb.xq ], [ %i.bmr, %bb.yw ], [ %i.bmr, %bb.yu ], [ %i.bmr, %bb.yv ] ; 3 uses
  %.pn106.i = phi { ptr, i32 } [ %i.bnj, %bb.xu ], [ %.pn104.i, %bb.xq ], [ %.pn104.i, %bb.yw ], [ %.pn104.i, %bb.yu ], [ %.pn104.i, %bb.yv ] ; 3 uses
  %i.bnf = getelementptr inbounds nuw i8, ptr %1, i64 6087
  store i8 0, ptr %i.bnf, align 1, !noalias !25089
  %i.bng = getelementptr inbounds nuw i8, ptr %1, i64 6088
  %i.bnh = load i8, ptr %i.bng, align 8, !range !52, !noalias !25089, !noundef !29
  %i.bni = trunc nuw i8 %i.bnh to i1
  br i1 %i.bni, label %bb.yx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit273.i

bb.xu:                                            ; preds = %bb.xt
  %i.bnj = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleEECsgGgPqgSfnMH_7storage.exit271.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleEECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.xt, %bb.xs, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleEECsgGgPqgSfnMH_7storage.exit.i
  %i.bnk = getelementptr inbounds nuw i8, ptr %1, i64 6087
  store i8 0, ptr %i.bnk, align 1, !noalias !25089
  %i.bnl = getelementptr inbounds nuw i8, ptr %1, i64 5080 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25291)
  call void @llvm.experimental.noalias.scope.decl(metadata !25292)
  %i.bnm = load ptr, ptr %i.bnl, align 8, !alias.scope !25293, !noalias !25089, !nonnull !29, !noundef !29
  %i.bnn = atomicrmw sub ptr %i.bnm, i64 1 release, align 8, !noalias !25294
  %i.bno = icmp eq i64 %i.bnn, 1
  br i1 %i.bno, label %bb.xv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit247.i

bb.xv:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleEECsgGgPqgSfnMH_7storage.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtBQ_6marker4SendNtB2I_4SyncEL_E9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bnl) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit247.i unwind label %bb.xx, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit273.i: ; preds = %bb.yy, %bb.yx, %bb.xx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleEECsgGgPqgSfnMH_7storage.exit271.i
  %i.bnp = phi ptr [ %i.ake, %bb.xx ], [ %i.bnd, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleEECsgGgPqgSfnMH_7storage.exit271.i ], [ %i.bnd, %bb.yy ], [ %i.bnd, %bb.yx ] ; 2 uses
  %i.bnq = phi ptr [ %i.akf, %bb.xx ], [ %i.bne, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleEECsgGgPqgSfnMH_7storage.exit271.i ], [ %i.bne, %bb.yy ], [ %i.bne, %bb.yx ] ; 2 uses
  %.pn108.i = phi { ptr, i32 } [ %i.bnw, %bb.xx ], [ %.pn106.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleEECsgGgPqgSfnMH_7storage.exit271.i ], [ %.pn106.i, %bb.yy ], [ %.pn106.i, %bb.yx ] ; 2 uses
  %i.bnr = getelementptr inbounds nuw i8, ptr %1, i64 6088
  store i8 0, ptr %i.bnr, align 8, !noalias !25089
  %i.bns = getelementptr inbounds nuw i8, ptr %1, i64 5064 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25295)
  call void @llvm.experimental.noalias.scope.decl(metadata !25296)
  %i.bnt = load ptr, ptr %i.bns, align 8, !alias.scope !25297, !noalias !25089, !nonnull !29, !noundef !29
  %i.bnu = atomicrmw sub ptr %i.bnt, i64 1 release, align 8, !noalias !25298
  %i.bnv = icmp eq i64 %i.bnu, 1
  br i1 %i.bnv, label %bb.xw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit249.i

bb.xw:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit273.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtBO_6marker4SendNtB2B_4SyncEL_E9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bns) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit249.i unwind label %bb.pr, !noalias !25090

bb.xx:                                            ; preds = %bb.xv
  %i.bnw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit273.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit247.i: ; preds = %bb.xv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleEECsgGgPqgSfnMH_7storage.exit.i
  %i.bnx = getelementptr inbounds nuw i8, ptr %1, i64 6088
  store i8 0, ptr %i.bnx, align 8, !noalias !25089
  %i.bny = getelementptr inbounds nuw i8, ptr %1, i64 5064 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25299)
  call void @llvm.experimental.noalias.scope.decl(metadata !25300)
  %i.bnz = load ptr, ptr %i.bny, align 8, !alias.scope !25301, !noalias !25089, !nonnull !29, !noundef !29
  %i.boa = atomicrmw sub ptr %i.bnz, i64 1 release, align 8, !noalias !25302
  %i.bob = icmp eq i64 %i.boa, 1
  br i1 %i.bob, label %bb.xy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit251.i

bb.xy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit247.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtBO_6marker4SendNtB2B_4SyncEL_E9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bny) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit251.i unwind label %bb.wf, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit251.i: ; preds = %bb.xy, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit247.i
  %i.boc = getelementptr inbounds nuw i8, ptr %1, i64 5048 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25303)
  call void @llvm.experimental.noalias.scope.decl(metadata !25304)
  %i.bod = load ptr, ptr %i.boc, align 8, !alias.scope !25305, !noalias !25089, !nonnull !29, !noundef !29
  %i.boe = atomicrmw sub ptr %i.bod, i64 1 release, align 8, !noalias !25306
  %i.bof = icmp eq i64 %i.boe, 1
  br i1 %i.bof, label %bb.xz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit253.i

bb.xz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit251.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnTymINtNtBO_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtBO_6marker4SendNtB3o_4SyncEL_E9drop_slowB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.boc) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit253.i unwind label %bb.wh, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit253.i: ; preds = %bb.xz, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferEEp6OutputuNtNtB4_6marker4SendNtB2O_4SyncEL_EECsgGgPqgSfnMH_7storage.exit251.i
  %i.bog = getelementptr inbounds nuw i8, ptr %1, i64 4968
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards15channel_service14ChannelServiceECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(80) %i.bog)
          to label %bb.yd unwind label %bb.yc, !noalias !25090

bb.ya:                                            ; preds = %bb.yz, %bb.yc, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit221.i
  %i.boh = phi ptr [ %i.ake, %bb.yc ], [ %i.bje, %bb.yz ], [ %i.bje, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit221.i ] ; 2 uses
  %i.boi = phi ptr [ %i.akf, %bb.yc ], [ %i.bjf, %bb.yz ], [ %i.bjf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit221.i ] ; 2 uses
  %.pn114.i = phi { ptr, i32 } [ %i.bon, %bb.yc ], [ %.pn112.i, %bb.yz ], [ %.pn112.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit221.i ] ; 2 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %1, i64 6089
  store i8 0, ptr %i.boj, align 1, !noalias !25089
  %i.bok = getelementptr inbounds nuw i8, ptr %1, i64 4920 ; 2 uses
  %i.bol = load ptr, ptr %i.bok, align 8, !alias.scope !25307, !noalias !25089, !noundef !29
  %i.bom = icmp eq ptr %i.bol, null
  br i1 %i.bom, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit255.i, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bok)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit255.i unwind label %bb.pr, !noalias !25090

bb.yc:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit253.i
  %i.bon = landingpad { ptr, i32 }
          cleanup
  br label %bb.ya

bb.yd:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit253.i
  %i.boo = getelementptr inbounds nuw i8, ptr %1, i64 6089
  store i8 0, ptr %i.boo, align 1, !noalias !25089
  %i.bop = getelementptr inbounds nuw i8, ptr %1, i64 4920 ; 2 uses
  %i.boq = load ptr, ptr %i.bop, align 8, !alias.scope !25308, !noalias !25089, !noundef !29
  %i.bor = icmp eq ptr %i.boq, null
  br i1 %i.bor, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit257.i, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types8ShardKeyINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetmEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bop)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit257.i unwind label %bb.wj, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit257.i: ; preds = %bb.ye, %bb.yd
  %i.bos = getelementptr inbounds nuw i8, ptr %1, i64 6079 ; 2 uses
  %i.bot = load i8, ptr %i.bos, align 1, !range !52, !noalias !25089, !noundef !29
  %i.bou = trunc nuw i8 %i.bot to i1
  br i1 %i.bou, label %bb.yg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit.i: ; preds = %bb.yg, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit257.i
  store i8 0, ptr %i.bos, align 1, !noalias !25089
  %i.bov = getelementptr inbounds nuw i8, ptr %1, i64 4848 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25309)
  call void @llvm.experimental.noalias.scope.decl(metadata !25310)
  %i.bow = load ptr, ptr %i.bov, align 8, !alias.scope !25311, !noalias !25089, !nonnull !29, !noundef !29
  %i.box = atomicrmw sub ptr %i.bow, i64 1 release, align 8, !noalias !25312
  %i.boy = icmp eq i64 %i.box, 1
  br i1 %i.boy, label %bb.yf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit259.i

bb.yf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bov) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit259.i unwind label %bb.yi, !noalias !25090

bb.yg:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit257.i
  %i.boz = getelementptr inbounds nuw i8, ptr %1, i64 4856
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.boz)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit.i unwind label %bb.yh, !noalias !25090

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit275.i: ; preds = %bb.za, %bb.yh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit255.i
  %i.bpa = phi ptr [ %i.ake, %bb.yh ], [ %i.bjp, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit255.i ], [ %i.bjp, %bb.za ] ; 3 uses
  %i.bpb = phi ptr [ %i.akf, %bb.yh ], [ %i.bjq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit255.i ], [ %i.bjq, %bb.za ] ; 3 uses
  %.pn118.i = phi { ptr, i32 } [ %i.bpg, %bb.yh ], [ %.pn116.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit255.i ], [ %.pn116.i, %bb.za ] ; 3 uses
  %i.bpc = getelementptr inbounds nuw i8, ptr %1, i64 6079
  store i8 0, ptr %i.bpc, align 1, !noalias !25089
  %i.bpd = getelementptr inbounds nuw i8, ptr %1, i64 6090
  %i.bpe = load i8, ptr %i.bpd, align 2, !range !52, !noalias !25089, !noundef !29
  %i.bpf = trunc nuw i8 %i.bpe to i1
  br i1 %i.bpf, label %bb.zb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit277.i

bb.yh:                                            ; preds = %bb.yg
  %i.bpg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit275.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit277.i: ; preds = %bb.zc, %bb.zb, %bb.yi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit275.i
  %i.bph = phi ptr [ %i.ake, %bb.yi ], [ %i.bpa, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit275.i ], [ %i.bpa, %bb.zc ], [ %i.bpa, %bb.zb ]
  %i.bpi = phi ptr [ %i.akf, %bb.yi ], [ %i.bpb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit275.i ], [ %i.bpb, %bb.zc ], [ %i.bpb, %bb.zb ]
  %.pn120.i = phi { ptr, i32 } [ %i.bpl, %bb.yi ], [ %.pn118.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit275.i ], [ %.pn118.i, %bb.zc ], [ %.pn118.i, %bb.zb ]
  %i.bpj = getelementptr inbounds nuw i8, ptr %1, i64 6090
  store i8 0, ptr %i.bpj, align 2, !noalias !25089
  %i.bpk = getelementptr inbounds nuw i8, ptr %1, i64 4776
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bpk) #23
          to label %.body261.i unwind label %bb.pr, !noalias !25090

bb.yi:                                            ; preds = %bb.yf
  %i.bpl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit277.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit259.i: ; preds = %bb.yf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit.i
  %i.bpm = getelementptr inbounds nuw i8, ptr %1, i64 6090
  store i8 0, ptr %i.bpm, align 2, !noalias !25089
  %i.bpn = getelementptr inbounds nuw i8, ptr %1, i64 4776 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bpn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgGgPqgSfnMH_7storage.exit.i.i unwind label %bb.yj, !noalias !25090

bb.yj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit259.i
  %i.bpo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bpn)
          to label %.body261.i unwind label %bb.yk, !noalias !25090

bb.yk:                                            ; preds = %bb.yj
  %i.bpp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !25090
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgGgPqgSfnMH_7storage.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit259.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bpn)
          to label %bb.zf unwind label %bb.wk, !noalias !25090

bb.yl:                                            ; preds = %bb.wz
  %i.bpq = getelementptr inbounds nuw i8, ptr %1, i64 6096 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25313)
  call void @llvm.experimental.noalias.scope.decl(metadata !25314)
  call void @llvm.experimental.noalias.scope.decl(metadata !25315)
  %i.bpr = load ptr, ptr %i.bpq, align 8, !alias.scope !25316, !noalias !25089, !nonnull !29, !noundef !29
  %i.bps = atomicrmw sub ptr %i.bpr, i64 1 release, align 8, !noalias !25317
  %i.bpt = icmp eq i64 %i.bps, 1
  br i1 %i.bpt, label %bb.ym, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit265.i

bb.ym:                                            ; preds = %bb.yl
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bpq) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holder17SharedShardHolderECsgGgPqgSfnMH_7storage.exit265.i unwind label %bb.pr, !noalias !25090

bb.yn:                                            ; preds = %bb.qw
  %i.bpu = getelementptr inbounds nuw i8, ptr %1, i64 5768 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25318)
  call void @llvm.experimental.noalias.scope.decl(metadata !25319)
  %i.bpv = load ptr, ptr %i.bpu, align 8, !alias.scope !25320, !noalias !25089, !nonnull !29, !noundef !29
  %i.bpw = atomicrmw sub ptr %i.bpv, i64 1 release, align 8, !noalias !25321
  %i.bpx = icmp eq i64 %i.bpw, 1
  br i1 %i.bpx, label %bb.yo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit267.i

bb.yo:                                            ; preds = %bb.yn
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEE9drop_slowB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bpu) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit267.i unwind label %bb.pr, !noalias !25090

bb.yp:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock6RwLockNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalEEECsgGgPqgSfnMH_7storage.exit267.i
  %i.bpy = getelementptr inbounds nuw i8, ptr %1, i64 5760 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25322)
  call void @llvm.experimental.noalias.scope.decl(metadata !25323)
  %i.bpz = load ptr, ptr %i.bpy, align 8, !alias.scope !25324, !noalias !25089, !nonnull !29, !noundef !29
  %i.bqa = atomicrmw sub ptr %i.bpz, i64 1 release, align 8, !noalias !25325
  %i.bqb = icmp eq i64 %i.bqa, 1
  br i1 %i.bqb, label %bb.yq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit269.i

bb.yq:                                            ; preds = %bb.yp
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEE9drop_slowB1A_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bpy) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCslmvYCXbQjWR_6common12save_on_disk10SaveOnDiskNtNtCs5QaNqjAn6vc_5shard20payload_index_schema18PayloadIndexSchemaEEECsgGgPqgSfnMH_7storage.exit269.i unwind label %bb.pr, !noalias !25090

bb.yr:                                            ; preds = %bb.mq
  %i.bqc = getelementptr inbounds nuw i8, ptr %1, i64 5304
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(456) %i.bqc) #23
          to label %bb.my unwind label %bb.pr, !noalias !25090

bb.ys:                                            ; preds = %bb.lh
  %i.bqd = getelementptr inbounds nuw i8, ptr %1, i64 5120
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCslmvYCXbQjWR_6common6budget14ResourceBudgetECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bqd) #23
          to label %.body146.i unwind label %bb.pr, !noalias !25090

bb.yt:                                            ; preds = %.body146.i
  %i.bqe = getelementptr inbounds nuw i8, ptr %1, i64 5104
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsjZG7hsAZr3B_5tokio7runtime6handle6HandleEECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(16) %i.bqe) #23
          to label %bb.xq unwind label %bb.pr, !noalias !25090

bb.yu:                                            ; preds = %bb.xq
  %i.bqf = getelementptr inbounds nuw i8, ptr %1, i64 5096 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25326)
  %i.bqg = load ptr, ptr %i.bqf, align 8, !alias.scope !25326, !noalias !25089, !noundef !29 ; 2 uses
  %i.bqh = icmp eq ptr %i.bqg, null
  br i1 %i.bqh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleEECsgGgPqgSfnMH_7storage.exit271.i, label %bb.yv

bb.yv:                                            ; preds = %bb.yu
  %i.bqi = atomicrmw sub ptr %i.bqg, i64 1 release, align 8, !noalias !25327
  %i.bqj = icmp eq i64 %i.bqi, 1
  br i1 %i.bqj, label %bb.yw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleEECsgGgPqgSfnMH_7storage.exit271.i

bb.yw:                                            ; preds = %bb.yv
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle5InnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bqf) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleEECsgGgPqgSfnMH_7storage.exit271.i unwind label %bb.pr, !noalias !25090

bb.yx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsPYQCUnoTxQ_10collection6common15adaptive_handle20AdaptiveSearchHandleEECsgGgPqgSfnMH_7storage.exit271.i
  %i.bqk = getelementptr inbounds nuw i8, ptr %1, i64 5080 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25328)
  call void @llvm.experimental.noalias.scope.decl(metadata !25329)
  %i.bql = load ptr, ptr %i.bqk, align 8, !alias.scope !25330, !noalias !25089, !nonnull !29, !noundef !29
  %i.bqm = atomicrmw sub ptr %i.bql, i64 1 release, align 8, !noalias !25331
  %i.bqn = icmp eq i64 %i.bqm, 1
  br i1 %i.bqn, label %bb.yy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit273.i

bb.yy:                                            ; preds = %bb.yx
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtBQ_6marker4SendNtB2I_4SyncEL_E9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bqk) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDG_INtNtNtB4_3ops8function2FnTNtNtNtCsPYQCUnoTxQ_10collection6shards8transfer13ShardTransferRL0_eEEp6OutputuNtNtB4_6marker4SendNtB2V_4SyncEL_EECsgGgPqgSfnMH_7storage.exit273.i unwind label %bb.pr, !noalias !25090

bb.yz:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcDINtNtNtB4_3ops8function2FnTymINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards11replica_set17replica_set_state12ReplicaStateEEEp6OutputuNtNtB4_6marker4SendNtB3B_4SyncEL_EECsgGgPqgSfnMH_7storage.exit221.i
  %i.bqo = getelementptr inbounds nuw i8, ptr %1, i64 4968
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsPYQCUnoTxQ_10collection6shards15channel_service14ChannelServiceECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(80) %i.bqo) #23
          to label %bb.ya unwind label %bb.pr, !noalias !25090

bb.za:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit255.i
  %i.bqp = getelementptr inbounds nuw i8, ptr %1, i64 4856
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsgGgPqgSfnMH_7storage(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.bqp)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit275.i unwind label %bb.pr, !noalias !25090

bb.zb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapmINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetyEEECsgGgPqgSfnMH_7storage.exit275.i
  %i.bqq = getelementptr inbounds nuw i8, ptr %1, i64 4848 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25332)
  call void @llvm.experimental.noalias.scope.decl(metadata !25333)
  %i.bqr = load ptr, ptr %i.bqq, align 8, !alias.scope !25334, !noalias !25089, !nonnull !29, !noundef !29
  %i.bqs = atomicrmw sub ptr %i.bqr, i64 1 release, align 8, !noalias !25335
  %i.bqt = icmp eq i64 %i.bqs, 1
  br i1 %i.bqt, label %bb.zc, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit277.i

bb.zc:                                            ; preds = %bb.zb
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bqq) #25
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsPYQCUnoTxQ_10collection10operations21shared_storage_config19SharedStorageConfigEECsgGgPqgSfnMH_7storage.exit277.i unwind label %bb.pr, !noalias !25090

bb.zd:                                            ; preds = %bb.na, %bb.mz
  %i.bqu = landingpad { ptr, i32 }
          cleanup
  br label %.body513

bb.ze:                                            ; preds = %bb.ne, %bb.pk, %bb.uk
  %3 = phi ptr [ %i.aky, %bb.ne ], [ %i.arp, %bb.pk ], [ %i.bek, %bb.uk ]
  %.sink.i495.ph = phi i8 [ 4, %bb.ne ], [ 3, %bb.pk ], [ 5, %bb.uk ]
  store i8 %.sink.i495.ph, ptr %3, align 4, !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3398.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3376.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5377.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10853)
  store i32 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9828)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10829)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11830)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18837)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27846)
  br label %common.ret

bb.zf:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgGgPqgSfnMH_7storage.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit.i
  %4 = phi ptr [ %i.bea, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit.i ], [ %i.ake, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgGgPqgSfnMH_7storage.exit.i.i ]
  %5 = phi ptr [ %i.beb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit.i ], [ %i.akf, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgGgPqgSfnMH_7storage.exit.i.i ] ; 2 uses
  %.sroa.0851.0.copyload852 = phi i64 [ %i.bih, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit.i ], [ 2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsgGgPqgSfnMH_7storage.exit.i.i ] ; 2 uses
  %.sroa.10853.0..sroa_idx854 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %.sroa.10853, ptr noundef nonnull align 8 dereferenceable(616) %.sroa.10853.0..sroa_idx854, i64 616, i1 false), !noalias !25336
  store i8 1, ptr %4, align 4, !noalias !25089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3398.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3376.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5377.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %.sroa.3857, ptr noundef nonnull align 8 dereferenceable(616) %.sroa.10853, i64 616, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10853)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection3new0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %5)
          to label %bb.zh unwind label %bb.zg

bb.zg:                                            ; preds = %bb.zf
  %i.bqv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.zh:                                            ; preds = %bb.zf
  %i.bqw = icmp eq i64 %.sroa.0851.0.copyload852, 2
  br i1 %i.bqw, label %bb.zi, label %bb.zj

bb.zi:                                            ; preds = %bb.zh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !25337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3857, i64 48, i1 false)
  invoke void @_RNvXs0_NtNtCsgGgPqgSfnMH_7storage15content_manager6errorsNtB5_12StorageErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtCsPYQCUnoTxQ_10collection10operations5types15CollectionErrorE4from(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.co, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.p)
          to label %bb.zl unwind label %bb.zk

bb.zj:                                            ; preds = %bb.zh
  %.sroa.3857.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.3857, i64 48
  %.sroa.5860.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(568) %.sroa.5860.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(568) %.sroa.3857.56..sroa_idx, i64 568, i1 false)
  %.sroa.4859.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3536
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4859.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3857, i64 48, i1 false)
  %i.bqx = getelementptr inbounds nuw i8, ptr %1, i64 4242
  store i8 1, ptr %i.bqx, align 2
  %i.bqy = getelementptr inbounds nuw i8, ptr %1, i64 3528 ; 2 uses
  store i64 %.sroa.0851.0.copyload852, ptr %i.bqy, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9828)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10829)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11830)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18837)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27846)
  store ptr %i.bqy, ptr %5, align 8
  %.sroa.8867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4376
  store i8 0, ptr %.sroa.8867.0..sroa_idx, align 8
  br label %bb.zo

bb.zk:                                            ; preds = %bb.zi
  %i.bqz = landingpad { ptr, i32 }
          cleanup
  br label %bb.jy

bb.zl:                                            ; preds = %bb.zi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !25337
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9828)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10829)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11830)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18837)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27846)
  br label %bb.zm

bb.zm:                                            ; preds = %bb.aiq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecmEECsgGgPqgSfnMH_7storage.exit, %bb.zl
  %i.bra = getelementptr inbounds nuw i8, ptr %1, i64 4242
  store i8 0, ptr %i.bra, align 2
  %i.brb = getelementptr inbounds nuw i8, ptr %1, i64 4254
  store i8 0, ptr %i.brb, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  %i.brc = getelementptr inbounds nuw i8, ptr %1, i64 2752
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsPYQCUnoTxQ_10collection6config24CollectionConfigInternalECsgGgPqgSfnMH_7storage(ptr noalias nofree noundef align 8 dereferenceable(776) %i.brc)
          to label %bb.ais unwind label %bb.aia

bb.zn:                                            ; preds = %bb.ajs, %bb.air, %.body525, %bb.jy
  %.pn173.pn = phi { ptr, i32 } [ %.pn173, %bb.jy ], [ %i.ckf, %bb.air ], [ %.pn170.pn, %bb.ajs ], [ %.pn170.pn, %.body525 ]
  %i.brd = getelementptr inbounds nuw i8, ptr %1, i64 4242
  store i8 0, ptr %i.brd, align 2
  %i.bre = getelementptr inbounds nuw i8, ptr %1, i64 4254 ; 2 uses
  %i.brf = load i8, ptr %i.bre, align 2, !range !52, !noundef !29
  %i.brg = trunc nuw i8 %i.brf to i1
  %i.brh = load ptr, ptr %i.dk, align 8
  %i.bri = icmp ne ptr %i.brh, null
  %or.cond.not = select i1 %i.brg, i1 %i.bri, i1 false
  br i1 %or.cond.not, label %bb.ajt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder13shard_mapping15ShardKeyMappingEECsgGgPqgSfnMH_7storage.exit661

bb.zo:                                            ; preds = %bb.d, %bb.zj
  %i.brj = getelementptr inbounds nuw i8, ptr %1, i64 4264 ; 3 uses
  %i.brk = invoke fastcc noundef zeroext i1 @_RNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtB6_10Collection14print_warnings0CsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.brj, ptr noalias nofree noundef align 8 dereferenceable(32) %2)
          to label %bb.zq unwind label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  %i.brl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCsPYQCUnoTxQ_10collection10collection14collection_opsNtBI_10Collection14print_warnings0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.brj) #23
          to label %.body525 unwind label %bb.z

bb.zq:                                            ; preds = %bb.zo
  br i1 %i.brk, label %bb.zr, label %bb.zs

bb.zr:                                            ; preds = %bb.zq
  store i32 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %common.ret

bb.zs:                                            ; preds = %bb.zq
  %i.brm = getelementptr inbounds nuw i8, ptr %1, i64 4376
  %i.brn = load i8, ptr %i.brm, align 8, !range !38, !noundef !29
  %cond.i516 = icmp eq i8 %i.brn, 3
  br i1 %cond.i516, label %bb.zt, label %.thread1216

bb.zt:                                            ; preds = %bb.zs
  %i.bro = getelementptr inbounds nuw i8, ptr %1, i64 4368
  %i.brp = load i8, ptr %i.bro, align 8, !range !38, !noundef !29
  %cond.i.i517 = icmp eq i8 %i.brp, 3
  br i1 %cond.i.i517, label %bb.zu, label %.thread1216

bb.zu:                                            ; preds = %bb.zt
  %i.brq = getelementptr inbounds nuw i8, ptr %1, i64 4360
  %i.brr = load i8, ptr %i.brq, align 8, !range !38, !noundef !29
  %cond.i.i.i518 = icmp eq i8 %i.brr, 3
  br i1 %cond.i.i.i518, label %bb.zv, label %.thread1216

bb.zv:                                            ; preds = %bb.zu
  %i.brs = getelementptr inbounds nuw i8, ptr %1, i64 4296
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.brs)
          to label %bb.zy unwind label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.brt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %1, i64 4304
  %.val2.i.i.i.i519 = load ptr, ptr %i.bru, align 8, !align !35, !noundef !29 ; 2 uses
  %i.brv = icmp eq ptr %.val2.i.i.i.i519, null
  br i1 %i.brv, label %.body525, label %bb.zx

bb.zx:                                            ; preds = %bb.zw
  %i.brw = getelementptr i8, ptr %1, i64 4312
  %.val3.i.i.i.i520 = load ptr, ptr %i.brw, align 8
  %i.brx = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i519, i64 24
  %i.bry = load ptr, ptr %i.brx, align 8, !nonnull !29, !noundef !29
  invoke void %i.bry(ptr noundef %.val3.i.i.i.i520)
          to label %.body525 unwind label %bb.aaa, !inline_history !0

bb.zy:                                            ; preds = %bb.zv
  %i.brz = getelementptr inbounds nuw i8, ptr %1, i64 4304
  %.val.i.i.i.i522 = load ptr, ptr %i.brz, align 8, !align !35, !noundef !29 ; 2 uses
  %i.bsa = icmp eq ptr %.val.i.i.i.i522, null
  br i1 %i.bsa, label %.thread1216, label %bb.zz

bb.zz:                                            ; preds = %bb.zy
  %i.bsb = getelementptr i8, ptr %1, i64 4312
  %.val1.i.i.i.i523 = load ptr, ptr %i.bsb, align 8
  %i.bsc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i522, i64 24
  %i.bsd = load ptr, ptr %i.bsc, align 8, !nonnull !29, !noundef !29
  invoke void %i.bsd(ptr noundef %.val1.i.i.i.i523)
          to label %.thread1216 unwind label %bb.aab, !inline_history !98

bb.aaa:                                           ; preds = %bb.zx
  %i.bse = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.aab:                                           ; preds = %bb.zz
  %i.bsf = landingpad { ptr, i32 }
          cleanup
  br label %.body525

.thread1216:                                      ; preds = %bb.zz, %bb.zs, %bb.zt, %bb.zu, %bb.zy
  %i.bsg = getelementptr inbounds nuw i8, ptr %1, i64 3528
  store ptr %i.bsg, ptr %i.brj, align 8
  %.sroa.8875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4288
  store i8 0, ptr %.sroa.8875.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9879)
  %i.bsh = getelementptr inbounds nuw i8, ptr %1, i64 4264
  %i.bsi = getelementptr inbounds nuw i8, ptr %1, i64 4288
  br label %bb.aad

.body525:                                         ; preds = %bb.zp, %bb.zw, %bb.zx, %bb.aab, %.body641
  %.pn170.pn = phi { ptr, i32 } [ %.pn170, %.body641 ], [ %i.brt, %bb.zw ], [ %i.brl, %bb.zp ], [ %i.bsf, %bb.aab ], [ %i.brt, %bb.zx ] ; 2 uses
  %i.bsj = getelementptr inbounds nuw i8, ptr %1, i64 4242
  %i.bsk = load i8, ptr %i.bsj, align 2, !range !52, !noundef !29
  %i.bsl = trunc nuw i8 %i.bsk to i1
  br i1 %i.bsl, label %bb.ajs, label %bb.zn

.body552:                                         ; preds = %bb.acn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsgGgPqgSfnMH_7storage.exit.i
  %i.bsm = phi ptr [ %i.bsv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsgGgPqgSfnMH_7storage.exit.i ], [ %i.bsn, %bb.acn ]
  %.pn116 = phi { ptr, i32 } [ %.pn15.i532, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guard15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderEECsgGgPqgSfnMH_7storage.exit.i ], [ %i.byr, %bb.acn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9879)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtCsPYQCUnoTxQ_10collection10collectionNtBG_10Collection16get_local_shards0ECsgGgPqgSfnMH_7storage(ptr noundef nonnull align 8 %i.bsm) #23
          to label %.body641 unwind label %bb.z

bb.aac:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  %.phi.trans.insert1144 = getelementptr inbounds nuw i8, ptr %1, i64 4288
  %.pre1145 = load i8, ptr %.phi.trans.insert1144, align 8, !range !60, !noalias !25338
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9879)
  %i.bsn = getelementptr inbounds nuw i8, ptr %1, i64 4264 ; 8 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %1, i64 4288 ; 7 uses
  switch i8 %.pre1145, label %default.unreachable1205 [
    i8 0, label %bb.aad
    i8 1, label %bb.aae
    i8 2, label %bb.aaf
    i8 3, label %bb.aag
    i8 4, label %bb.aav
  ]

bb.aad:                                           ; preds = %.thread1216, %bb.aac
end_hunk_4
