Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.043?download=true
inline.NumInlined: 2545
inline.NumDeleted: 1295
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNCNvNtNtCsPYQCUnoTxQ_10collection8grouping8group_by8group_by0Csl8OoimOLbh_6qdrant:bb.a
  br i1 %i.pw, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ct
  %unroll_iter556 = and i64 %.val97.i.i, -2
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %.new
  %.sroa.04.0.i111.i.i = phi i64 [ 0, %.new ], [ %i.qd, %bb.cu ] ; 3 uses
  %.sroa.02.0.i112.i.i = phi i64 [ 0, %.new ], [ %i.qc, %bb.cu ]
  %niter557 = phi i64 [ 0, %.new ], [ %niter557.next.1, %bb.cu ]
  %i.px = getelementptr inbounds nuw [568 x i8], ptr %.val96.i.i, i64 %.sroa.04.0.i111.i.i
  %i.py = getelementptr i8, ptr %i.px, i64 560
  %.val.i113.i.i = load i64, ptr %i.py, align 8, !noalias !3218, !noundef !8
  %i.pz = call noundef i64 @llvm.uadd.sat.i64(i64 %.sroa.02.0.i112.i.i, i64 %.val.i113.i.i)
  %i.qa = getelementptr inbounds nuw [568 x i8], ptr %.val96.i.i, i64 %.sroa.04.0.i111.i.i
  %i.qb = getelementptr i8, ptr %i.qa, i64 1128
  %.val.i113.i.i.1 = load i64, ptr %i.qb, align 8, !noalias !3218, !noundef !8
  %i.qc = call noundef i64 @llvm.uadd.sat.i64(i64 %i.pz, i64 %.val.i113.i.i.1) ; 3 uses
  %i.qd = add nuw i64 %.sroa.04.0.i111.i.i, 2     ; 2 uses
  %niter557.next.1 = add i64 %niter557, 2         ; 2 uses
  %niter557.ncmp.1 = icmp eq i64 %niter557.next.1, %unroll_iter556
  br i1 %niter557.ncmp.1, label %.loopexit.i.i.unr-lcssa, label %bb.cu

.loopexit.i.i.unr-lcssa:                          ; preds = %bb.cu
  %lcmp.mod553.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod553.not, label %.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.i.unr-lcssa, %bb.ct
  %.sroa.04.0.i111.i.i.epil.init = phi i64 [ 0, %bb.ct ], [ %i.qd, %.loopexit.i.i.unr-lcssa ]
  %.sroa.02.0.i112.i.i.epil.init = phi i64 [ 0, %bb.ct ], [ %i.qc, %.loopexit.i.i.unr-lcssa ]
  %lcmp.mod555 = trunc i64 %.val97.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod555)
  %i.qe = getelementptr inbounds nuw [568 x i8], ptr %.val96.i.i, i64 %.sroa.04.0.i111.i.i.epil.init
  %i.qf = getelementptr i8, ptr %i.qe, i64 560
  %.val.i113.i.i.epil = load i64, ptr %i.qf, align 8, !noalias !3218, !noundef !8
  %i.qg = call noundef i64 @llvm.uadd.sat.i64(i64 %.sroa.02.0.i112.i.i.epil.init, i64 %.val.i113.i.i.epil)
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.qc, %.loopexit.i.i.unr-lcssa ], [ %i.qg, %.epil.preheader ]
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 4448
  store i64 %.lcssa, ptr %i.qh, align 8, !noalias !3214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !3214
  %i.qi = load ptr, ptr %i.no, align 8, !noalias !3214, !nonnull !8, !align !9, !noundef !8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 360
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 4488
  store ptr %i.qj, ptr %i.qk, align 8, !noalias !3214
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4592
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !3214
  br label %bb.da

.body.i.i132:                                     ; preds = %bb.dp, %bb.dn, %bb.dj, %bb.di, %bb.db
  %.pn39.i.i = phi { ptr, i32 } [ %i.sc, %bb.dp ], [ %i.rk, %bb.dj ], [ %i.rk, %bb.di ], [ %i.qy, %bb.db ], [ %i.rw, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !3214
  br label %bb.cn

._crit_edge530:                                   ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !3214
  %i.ql = icmp ult i64 %.val97.i.i, 16238331050800662
  call void @llvm.assume(i1 %i.ql)
  invoke void @_RINvNtNtCsPYQCUnoTxQ_10collection6common8batching19empty_batch_resultsNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ca, i64 noundef %.val97.i.i)
          to label %bb.cw unwind label %bb.cv, !noalias !3218

bb.cv:                                            ; preds = %._crit_edge530
  %i.qm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !3214
  br label %bb.cn

bb.cw:                                            ; preds = %._crit_edge530
  %.sroa.5244.i.sroa.0.0.copyload78.i = load i64, ptr %i.ca, align 8, !noalias !3214
  %.sroa.5244.i.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.5244.i.sroa.7.0.copyload81.i = load ptr, ptr %.sroa.5244.i.sroa.7.0..sroa_idx.i, align 8, !noalias !3214
  %.sroa.5244.i.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.5244.i.sroa.8.0.copyload84.i = load i64, ptr %.sroa.5244.i.sroa.8.0..sroa_idx.i, align 8, !noalias !3214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !3214
  br label %bb.cx

bb.cx:                                            ; preds = %bb.ko, %bb.cw
  %i.qn = phi ptr [ %i.nc, %bb.cw ], [ %i.afz, %bb.ko ] ; 5 uses
  %i.qo = phi ptr [ %i.nd, %bb.cw ], [ %i.aga, %bb.ko ] ; 5 uses
  %i.qp = phi ptr [ %i.nj, %bb.cw ], [ %i.agb, %bb.ko ] ; 5 uses
  %i.qq = phi ptr [ %i.nk, %bb.cw ], [ %i.agc, %bb.ko ] ; 5 uses
  %.sroa.5244.i.sroa.0.2.i = phi i64 [ %.sroa.5244.i.sroa.0.0.copyload78.i, %bb.cw ], [ %.sroa.3.i.sroa.0.0.copyload.i, %bb.ko ]
  %.sroa.5244.i.sroa.7.2.i = phi ptr [ %.sroa.5244.i.sroa.7.0.copyload81.i, %bb.cw ], [ %.sroa.3.i.sroa.5.0.copyload.i, %bb.ko ]
  %.sroa.5244.i.sroa.8.2.i = phi i64 [ %.sroa.5244.i.sroa.8.0.copyload84.i, %bb.cw ], [ %.sroa.3.i.sroa.6.0.copyload.i, %bb.ko ]
  %.sroa.0241.0.i.i = phi i64 [ -1, %bb.cw ], [ %i.agf, %bb.ko ]
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 4392
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCslmvYCXbQjWR_6common7counter20hardware_accumulator16HwMeasurementAccECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(32) %i.qr)
          to label %bb.kr unwind label %bb.kq, !noalias !3218

bb.cy:                                            ; preds = %bb.ci
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #23
          to label %.noexc21.i unwind label %bb.ls, !noalias !3213

.noexc21.i:                                       ; preds = %bb.cy
  unreachable

bb.cz:                                            ; preds = %bb.ci
  invoke void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #23
          to label %.noexc22.i unwind label %bb.ls, !noalias !3213

.noexc22.i:                                       ; preds = %bb.cz
  unreachable

bb.da:                                            ; preds = %.loopexit.i.i, %bb.ck
  %i.qs = phi ptr [ %i.nc, %.loopexit.i.i ], [ %i.ls, %bb.ck ] ; 6 uses
  %i.qt = phi ptr [ %i.nd, %.loopexit.i.i ], [ %i.lr, %bb.ck ] ; 5 uses
  %i.qu = phi ptr [ %i.nj, %.loopexit.i.i ], [ %.phi.trans.insert.i123, %bb.ck ] ; 6 uses
  %i.qv = phi ptr [ %i.nk, %.loopexit.i.i ], [ %i.nb, %bb.ck ] ; 5 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 4488 ; 4 uses
  %i.qx = invoke fastcc { ptr, ptr } @_RNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtB4_17SharedShardHolder4read0Csl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.qw, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.dc unwind label %bb.db, !noalias !3218 ; 2 uses

bb.db:                                            ; preds = %bb.da
  %i.qy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder19shared_shard_holderNtBG_17SharedShardHolder4read0ECsl8OoimOLbh_6qdrant(ptr noundef nonnull align 8 %i.qw) #18
          to label %.body.i.i132 unwind label %bb.dy, !noalias !3218

bb.dc:                                            ; preds = %bb.da
  %i.qz = extractvalue { ptr, ptr } %i.qx, 0      ; 2 uses
  %i.ra = icmp eq ptr %i.qz, null
  br i1 %i.ra, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !3214
  br label %bb.mp

bb.de:                                            ; preds = %bb.dc
  %i.rb = extractvalue { ptr, ptr } %i.qx, 1
  store ptr %i.qz, ptr %i.bz, align 8, !noalias !3214
  %i.rc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  store ptr %i.rb, ptr %i.rc, align 8, !noalias !3214
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 4592 ; 3 uses
  %i.re = load i8, ptr %i.rd, align 8, !range !452, !noalias !3214, !noundef !8
  %cond.i.i.i = icmp eq i8 %i.re, 3
  br i1 %cond.i.i.i, label %bb.df, label %bb.do

bb.df:                                            ; preds = %bb.de
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 4584
  %i.rg = load i8, ptr %i.rf, align 8, !range !452, !noalias !3214, !noundef !8
  %cond.i.i.i.i = icmp eq i8 %i.rg, 3
  br i1 %cond.i.i.i.i, label %bb.dg, label %bb.do

bb.dg:                                            ; preds = %bb.df
  %i.rh = getelementptr inbounds nuw i8, ptr %1, i64 4576
  %i.ri = load i8, ptr %i.rh, align 8, !range !452, !noalias !3214, !noundef !8
  %cond.i.i.i.i.i = icmp eq i8 %i.ri, 3
  br i1 %cond.i.i.i.i.i, label %bb.dh, label %bb.do

bb.dh:                                            ; preds = %bb.dg
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 4512
  invoke void @_RNvXs3_NtNtCsjZG7hsAZr3B_5tokio4sync15batch_semaphoreNtB5_7AcquireNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noundef nonnull align 8 %i.rj)
          to label %bb.dk unwind label %bb.di, !noalias !3218

bb.di:                                            ; preds = %bb.dh
  %i.rk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 4520
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.rl, align 8, !noalias !3214, !align !9, !noundef !8 ; 2 uses
  %i.rm = icmp eq ptr %.val2.i.i.i.i.i.i, null
  br i1 %i.rm, label %.body.i.i132, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.rn = getelementptr i8, ptr %1, i64 4528
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.rn, align 8, !noalias !3214
  %i.ro = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i, i64 24
  %i.rp = load ptr, ptr %i.ro, align 8, !noalias !3218, !nonnull !8, !noundef !8
  invoke void %i.rp(ptr noundef %.val3.i.i.i.i.i.i)
          to label %.body.i.i132 unwind label %bb.dm, !noalias !3218, !inline_history !617

bb.dk:                                            ; preds = %bb.dh
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 4520
  %.val.i.i.i.i.i.i = load ptr, ptr %i.rq, align 8, !noalias !3214, !align !9, !noundef !8 ; 2 uses
  %i.rr = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %i.rr, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.rs = getelementptr i8, ptr %1, i64 4528
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.rs, align 8, !noalias !3214
  %i.rt = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 24
  %i.ru = load ptr, ptr %i.rt, align 8, !noalias !3218, !nonnull !8, !noundef !8
  invoke void %i.ru(ptr noundef %.val1.i.i.i.i.i.i)
          to label %bb.do unwind label %bb.dn, !noalias !3218, !inline_history !1315

bb.dm:                                            ; preds = %bb.dj
  %i.rv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !3218
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.rw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i132

bb.do:                                            ; preds = %bb.dl, %bb.dk, %bb.dg, %bb.df, %bb.de
  %.val100.i.i = load ptr, ptr %i.rc, align 8, !noalias !3214, !noundef !8
  %i.rx = getelementptr i8, ptr %.val100.i.i, i64 440
  %.val101.i.i = load i64, ptr %i.rx, align 8, !noalias !3218, !noundef !8 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %1, i64 4440 ; 2 uses
  %i.rz = load i64, ptr %i.ry, align 8, !noalias !3214, !noundef !8
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 4448
  %i.sb = load i64, ptr %i.sa, align 8, !noalias !3214, !noundef !8
  invoke void @_RNvXs2_NtNtNtCsjZG7hsAZr3B_5tokio4sync6rwlock10read_guardINtB5_15RwLockReadGuardNtNtNtCsPYQCUnoTxQ_10collection6shards12shard_holder11ShardHolderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bz)
          to label %bb.dq unwind label %bb.dp, !noalias !3218

bb.dp:                                            ; preds = %bb.do
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i132

bb.dq:                                            ; preds = %bb.do
  %i.sd = call noundef i64 @llvm.uadd.sat.i64(i64 %i.rz, i64 %i.sb) ; 2 uses
  %i.se = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.val101.i.i, i64 %i.sd)
  %i.sf = extractvalue { i64, i1 } %i.se, 1
  %3 = mul nuw i64 %i.sd, %.val101.i.i
  %.sroa.0.0.i116.i.i = select i1 %i.sf, i64 -1, i64 %3, !prof !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !3214
  %i.sg = load i64, ptr %i.ry, align 8, !noalias !3214, !noundef !8 ; 2 uses
  %4 = icmp ult i64 %i.sg, 1844674407370955162
  %5 = mul nuw i64 %i.sg, 10
  %i.sh = icmp ult i64 %5, %.sroa.0.0.i116.i.i
  %6 = select i1 %4, i1 %i.sh, i1 false, !prof !296
  %i.si = getelementptr inbounds nuw i8, ptr %1, i64 4481
  %i.sj = load i8, ptr %i.si, align 1, !range !660, !noalias !3214, !noundef !8
  %i.sk = trunc nuw i8 %i.sj to i1
  %brmerge.not.i.i = and i1 %6, %i.sk
  br i1 %brmerge.not.i.i, label %bb.dz, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 4264
  %i.sm = load ptr, ptr %i.sl, align 8, !noalias !3214, !nonnull !8, !align !9, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %i.sn = getelementptr inbounds nuw i8, ptr %1, i64 4482
  store i8 0, ptr %i.sn, align 2, !noalias !3214
  %i.so = getelementptr inbounds nuw i8, ptr %1, i64 4272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.so, i64 24, i1 false), !noalias !3214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  %i.sp = getelementptr inbounds nuw i8, ptr %1, i64 4296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.sp, i64 16, i1 false), !noalias !3214
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 4312
  %i.sr = load <2 x i64>, ptr %i.sq, align 8, !noalias !3214
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 4376
  %i.st = load i64, ptr %i.ss, align 8, !noalias !3214
  %i.su = getelementptr inbounds nuw i8, ptr %1, i64 4384
  %i.sv = load i32, ptr %i.su, align 8, !range !2538, !noalias !3214, !noundef !8
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 4392
  call void @llvm.experimental.noalias.scope.decl(metadata !3228)
  %i.sx = load ptr, ptr %i.sw, align 8, !alias.scope !3228, !noalias !3231, !nonnull !8, !noundef !8 ; 2 uses
  %i.sy = atomicrmw add ptr %i.sx, i64 1 monotonic, align 8, !noalias !3233
  %i.sz = icmp slt i64 %i.sy, 0
  br i1 %i.sz, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 4400
  %i.tb = load ptr, ptr %i.ta, align 8, !alias.scope !3228, !noalias !3231, !nonnull !8, !noundef !8 ; 2 uses
  %i.tc = atomicrmw add ptr %i.tb, i64 1 monotonic, align 8, !noalias !3233
  %i.td = icmp slt i64 %i.tc, 0
  br i1 %i.td, label %bb.dv, label %bb.du

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.trap()
  unreachable

bb.du:                                            ; preds = %bb.ds
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 4416
  %i.tf = load i8, ptr %i.te, align 8, !range !660, !alias.scope !3228, !noalias !3231, !noundef !8
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 4408
  %i.th = load ptr, ptr %i.tg, align 8, !alias.scope !3228, !noalias !3231, !nonnull !8, !noundef !8 ; 2 uses
  %i.ti = atomicrmw add ptr %i.th, i64 1 monotonic, align 8, !noalias !3233
  %i.tj = icmp slt i64 %i.ti, 0
  br i1 %i.tj, label %bb.dw, label %bb.dx

bb.dv:                                            ; preds = %bb.ds
  call void @llvm.trap()
  unreachable

bb.dw:                                            ; preds = %bb.du
  call void @llvm.trap()
  unreachable

bb.dx:                                            ; preds = %bb.du
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 4328
  %.sroa.8226.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4504
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8226.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false), !noalias !3214
  %.sroa.12230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12230.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i64 16, i1 false), !noalias !3214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  store <2 x i64> %i.sr, ptr %i.qw, align 8, !noalias !3214
  %.sroa.9227.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4528
  store i64 %i.st, ptr %.sroa.9227.0..sroa_idx.i.i, align 8, !noalias !3214
  %.sroa.10228.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4536
  store i32 %i.sv, ptr %.sroa.10228.0..sroa_idx.i.i, align 8, !noalias !3214
  %.sroa.11229.sroa.7.0..sroa.11229.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4544
  store ptr %i.sx, ptr %.sroa.11229.sroa.7.0..sroa.11229.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3214
  %.sroa.11229.sroa.8.0..sroa.11229.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4552
  store ptr %i.tb, ptr %.sroa.11229.sroa.8.0..sroa.11229.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3214
  %.sroa.11229.sroa.9.0..sroa.11229.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4560
  store ptr %i.th, ptr %.sroa.11229.sroa.9.0..sroa.11229.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3214
  %.sroa.11229.sroa.10.0..sroa.11229.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4568
  store i8 %i.tf, ptr %.sroa.11229.sroa.10.0..sroa.11229.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !3214
  store ptr %i.sm, ptr %i.rd, align 8, !noalias !3214
  %.sroa.14232.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4600
  store ptr %i.tk, ptr %.sroa.14232.0..sroa_idx.i.i, align 8, !noalias !3214
  %.sroa.16234.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4688
  store i8 0, ptr %.sroa.16234.0..sroa_idx.i.i, align 8, !noalias !3214
  br label %bb.lk

bb.dy:                                            ; preds = %bb.lr, %bb.ll, %bb.lj, %bb.li, %bb.lb, %bb.kp, %bb.jt, %.critedge87.i.i, %.critedge86.i.i, %bb.jp, %bb.jn, %bb.jm, %bb.jl, %bb.db, %bb.cn
  %i.tl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !3218
  unreachable

bb.dz:                                            ; preds = %bb.dq
  %i.tm = getelementptr i8, ptr %1, i64 4288      ; 2 uses
  %.val98.i.i = load i64, ptr %i.tm, align 8, !noalias !3214, !noundef !8 ; 3 uses
  %i.tn = icmp ult i64 %.val98.i.i, 16238331050800662
  call void @llvm.assume(i1 %i.tn)
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 4456 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3234)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !3237
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bm, i64 noundef range(i64 0, 16238331050800662) %.val98.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 568)
          to label %.noexc120.i.i unwind label %bb.eb, !noalias !3218

.noexc120.i.i:                                    ; preds = %bb.dz
  %i.tp = load i64, ptr %i.bm, align 8, !range !34, !noalias !3237, !noundef !8
  %i.tq = trunc nuw i64 %i.tp to i1
  %i.tr = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.ts = load i64, ptr %i.tr, align 8, !range !3238, !noalias !3237, !noundef !8 ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  br i1 %i.tq, label %bb.ea, label %bb.ec, !prof !297

bb.ea:                                            ; preds = %.noexc120.i.i
  %i.tu = load i64, ptr %i.tt, align 8, !noalias !3237
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ts, i64 %i.tu) #22
          to label %.noexc121.i.i unwind label %bb.eb, !noalias !3218

.noexc121.i.i:                                    ; preds = %bb.ea
  unreachable

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %i.tv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

bb.ec:                                            ; preds = %.noexc120.i.i
  %i.tw = load ptr, ptr %i.tt, align 8, !noalias !3237, !nonnull !8, !noundef !8
  %i.tx = icmp ule i64 %.val98.i.i, %i.ts
  call void @llvm.assume(i1 %i.tx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !3237
  store i64 %i.ts, ptr %i.to, align 8, !alias.scope !3234, !noalias !3214
  %i.ty = getelementptr inbounds nuw i8, ptr %1, i64 4464 ; 2 uses
  store ptr %i.tw, ptr %i.ty, align 8, !alias.scope !3234, !noalias !3214
  %i.tz = getelementptr inbounds nuw i8, ptr %1, i64 4472 ; 3 uses
  store i64 0, ptr %i.tz, align 8, !alias.scope !3234, !noalias !3214
  %i.ua = getelementptr inbounds nuw i8, ptr %1, i64 4484 ; 2 uses
  store i8 1, ptr %i.ua, align 4, !noalias !3214
  %i.ub = getelementptr i8, ptr %1, i64 4280
  %.val102.i.i = load ptr, ptr %i.ub, align 8, !noalias !3214, !nonnull !8, !noundef !8 ; 2 uses
  %.val103.i.i = load i64, ptr %i.tm, align 8, !noalias !3214, !noundef !8 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val103.i.i, 568
  %i.uc = getelementptr inbounds nuw i8, ptr %.val102.i.i, i64 %.idx.i.i
  %i.ud = icmp eq i64 %.val103.i.i, 0
  br i1 %i.ud, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ec
  %i.ue = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.041.i.sroa.9.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.041.i.sroa.10.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.041.i.sroa.13.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.041.i.sroa.14.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 41
  %.sroa.041.i.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.1996.88..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.2097.88..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2299.88..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.23.88..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.484.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.585.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.23.136..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.23.i.i.i, i64 16
  %.sroa.887.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.1089.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.1190.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %.sroa.1392.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.14.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.1593.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 49
  %.sroa.1694.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %.sroa.4101.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.9105.24..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i34.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  %.sroa.5.i33.i.sroa.4.0..sroa.5.0..sroa_idx2.i40.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.9.0..sroa_idx18.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.17.0..sroa_idx33.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %.sroa.5.i27.i.i.sroa.9.0..sroa.17.0..sroa_idx33.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %.sroa.18.0..sroa_idx36.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.20.0..sroa_idx38.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %.sroa.5.i9.i.i.sroa.8.0..sroa.20.0..sroa_idx38.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 65
  %.sroa.22.0..sroa_idx39.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %.sroa.5.0..sroa_idx2.i30.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.5.i27.i.i.sroa.9.0..sroa.5.0..sroa_idx2.i30.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.5.i.i.i.sroa.9.0..sroa.14.8..sroa_idx26.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ul = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.um = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.un = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.5.0..sroa_idx2.i24.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.5.i.i.i.sroa.9.0..sroa.14.8..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.17.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.5.i27.i.i.sroa.9.0..sroa.17.8..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.18.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %.sroa.20.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %.sroa.5.i9.i.i.sroa.8.0..sroa.20.8..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 57
  %.sroa.5.i9.i.i.sroa.9.0..sroa.20.8..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.uo = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.5.0..sroa_idx2.i15.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.5.i9.i.i.sroa.8.0..sroa.5.0..sroa_idx2.i15.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  %.sroa.5.i9.i.i.sroa.9.0..sroa.5.0..sroa_idx2.i15.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %.sroa.5.i.i.i.sroa.9.0..sroa.14.8..sroa_idx24.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.17.8..sroa_idx34.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
end_hunk_0
