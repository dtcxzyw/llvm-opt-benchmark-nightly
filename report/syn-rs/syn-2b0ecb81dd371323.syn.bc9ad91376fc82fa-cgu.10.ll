Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.10?download=true
inline.NumInlined: 125
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value13parse_lit_int:bb.a

bb.q:                                             ; preds = %.lr.ph865
  %i.aj = add i8 %i.ah, -65
  %or.cond7.us = icmp ult i8 %i.aj, 6
  br i1 %or.cond7.us, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i8 %i.ah, label %.thread261 [
    i8 95, label %bb.s
    i8 46, label %.split.us
    i8 101, label %.loopexit300
    i8 69, label %.loopexit301
  ]

bb.s:                                             ; preds = %bb.r
  %.not.i176.not.us = icmp eq i64 %.sroa.34.2385.us864, 1
  br i1 %.not.i176.not.us, label %.thread261.thread.loopexit616, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.2386.us863, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !noundef !4 ; 3 uses
  %i.am = icmp sgt i8 %i.al, -65
  br i1 %i.am, label %.split.i177.us, label %.split420.us.invoke

.split.i177.us:                                   ; preds = %bb.t
  %i.an = add i64 %.sroa.34.2385.us864, -1        ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.2386.us863, i64 1 ; 2 uses
  %i.ap = add i8 %i.al, -48                       ; 2 uses
  %or.cond3.us = icmp ult i8 %i.ap, 10
  br i1 %or.cond3.us, label %.loopexit303.us, label %.lr.ph865

bb.u:                                             ; preds = %bb.q
  %i.aq = add nsw i8 %i.ah, -55
  br label %.loopexit303.us

bb.v:                                             ; preds = %.lr.ph865
  %i.ar = add nsw i8 %i.ah, -87
  br label %.loopexit303.us

.loopexit303.us:                                  ; preds = %.split.i177.us, %.lr.ph.us, %bb.v, %bb.u
  %.sroa.0.2386.us822 = phi ptr [ %.sroa.0.2386.us863, %bb.u ], [ %.sroa.0.2386.us863, %bb.v ], [ %.sroa.0.2.ph398.us, %.lr.ph.us ], [ %i.ao, %.split.i177.us ] ; 3 uses
  %.sroa.34.2385.us810 = phi i64 [ %.sroa.34.2385.us864, %bb.u ], [ %.sroa.34.2385.us864, %bb.v ], [ %.sroa.34.2.ph397.us, %.lr.ph.us ], [ %i.an, %.split.i177.us ] ; 3 uses
  %.sroa.091.0.us = phi i8 [ %i.aq, %bb.u ], [ %i.ar, %bb.v ], [ %i.ag, %.lr.ph.us ], [ %i.ap, %.split.i177.us ] ; 2 uses
  %.not156.us = icmp ult i8 %.sroa.091.0.us, %.sroa.065.0
  br i1 %.not156.us, label %bb.w, label %.split435.us

bb.w:                                             ; preds = %.loopexit303.us
  invoke void @_RNvXs0_NtCsgbWeKYPjk8w_3syn6bigintNtB5_6BigIntINtNtNtCsj6eKBz9Db1c_4core3ops5arith9MulAssignhE10mul_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %.sroa.065.0)
          to label %bb.x unwind label %.loopexit302.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn6bigintNtB4_6BigIntINtNtNtCsj6eKBz9Db1c_4core3ops5arith9AddAssignhE10add_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %.sroa.091.0.us)
          to label %bb.y unwind label %.loopexit302.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %.not.i194.not.us = icmp eq i64 %.sroa.34.2385.us810, 1
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.2386.us822, i64 1 ; 2 uses
  br i1 %.not.i194.not.us, label %.thread287, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !61, !noundef !4
  %i.au = icmp sgt i8 %i.at, -65
  br i1 %i.au, label %.split.i195.us, label %.split420.us.invoke

.split.i195.us:                                   ; preds = %bb.z
  %i.av = add i64 %.sroa.34.2385.us810, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.2386.us822, i64 1
  br label %.lr.ph.us

.lr.ph:                                           ; preds = %.split.i195, %.lr.ph.preheader
  %.sroa.0.2.ph398 = phi ptr [ %i.dq, %.split.i195 ], [ %.sroa.0.1593597, %.lr.ph.preheader ] ; 4 uses
  %.sroa.34.2.ph397 = phi i64 [ %i.dp, %.split.i195 ], [ %.sroa.34.1592598, %.lr.ph.preheader ] ; 3 uses
  %.sroa.079.0.ph396 = phi i8 [ 1, %.split.i195 ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.pr611 = load i8, ptr %.sroa.0.2.ph398, align 1 ; 2 uses
  %i.ax = add i8 %.pr611, -48                     ; 2 uses
  %or.cond3868 = icmp ult i8 %i.ax, 10
  br i1 %or.cond3868, label %.loopexit303, label %.lr.ph871

bb.aa:                                            ; preds = %bb.m, %.split.i167
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0221, i64 noundef %.sroa.34.0220, i64 noundef 2, i64 noundef %.sroa.34.0220, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #17
  unreachable

bb.ab:                                            ; preds = %bb.o, %.split.i172
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0221, i64 noundef %.sroa.34.0220, i64 noundef 2, i64 noundef %.sroa.34.0220, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #17
  unreachable

.thread225:                                       ; preds = %bb.c, %bb.a, %bb.f
  store ptr null, ptr %0, align 8
  br label %bb.bj

.lr.ph871:                                        ; preds = %.lr.ph, %.split.i177
  %.sroa.34.2385870 = phi i64 [ %i.bd, %.split.i177 ], [ %.sroa.34.2.ph397, %.lr.ph ] ; 7 uses
  %.sroa.0.2386869 = phi ptr [ %i.be, %.split.i177 ], [ %.sroa.0.2.ph398, %.lr.ph ] ; 7 uses
  %i.ay = phi i8 [ %i.ba, %.split.i177 ], [ %.pr611, %.lr.ph ]
  switch i8 %i.ay, label %.thread261 [
    i8 46, label %.split.us
    i8 95, label %bb.ac
    i8 101, label %.loopexit300
    i8 69, label %.loopexit301
  ]

bb.ac:                                            ; preds = %.lr.ph871
  %.not.i176.not = icmp eq i64 %.sroa.34.2385870, 1
  br i1 %.not.i176.not, label %.thread261.thread.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.2386869, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !noundef !4 ; 3 uses
  %i.bb = icmp sgt i8 %i.ba, -65
  br i1 %i.bb, label %.split.i177, label %.split420.us.invoke

.split.us:                                        ; preds = %bb.r, %.lr.ph871
  %i.bc = phi i1 [ %i.af, %.lr.ph871 ], [ false, %bb.r ]
  %.us-phi407 = phi i8 [ %.sroa.079.0.ph396, %.lr.ph871 ], [ %.sroa.079.0.ph396.us, %bb.r ]
  %.us-phi408 = phi i64 [ %.sroa.34.2385870, %.lr.ph871 ], [ %.sroa.34.2385.us864, %bb.r ]
  %.us-phi409 = phi ptr [ %.sroa.0.2386869, %.lr.ph871 ], [ %.sroa.0.2386.us863, %bb.r ]
  br i1 %i.bc, label %.split435.us, label %.thread261

.thread288:                                       ; preds = %.loopexit302.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bb, %bb.bc, %bb.bl
  %.pn158 = phi { ptr, i32 } [ %i.cv, %bb.bb ], [ %i.dl, %bb.bl ], [ %i.cv, %bb.bc ], [ %lpad.loopexit.split-lp939, %.loopexit302.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn6bigint6BigIntEBF_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #19
          to label %common.resume unwind label %bb.bk

.split.i177:                                      ; preds = %bb.ad
  %i.bd = add i64 %.sroa.34.2385870, -1           ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.2386869, i64 1 ; 2 uses
  %i.bf = add i8 %i.ba, -48                       ; 2 uses
  %or.cond3 = icmp ult i8 %i.bf, 10
  br i1 %or.cond3, label %.loopexit303, label %.lr.ph871

.split420.us.invoke:                              ; preds = %bb.z, %bb.t, %bb.bp, %bb.ad, %bb.al, %.split.i188, %bb.ag
  %i.bg = phi ptr [ %.sroa.0.2386.us863, %bb.t ], [ %.sroa.0.2386.lcssa, %bb.bp ], [ %.sroa.0.2330, %bb.ag ], [ %.sroa.0.2386869, %bb.ad ], [ %.sroa.0.2330, %bb.al ], [ %.sroa.0.2330, %.split.i188 ], [ %.sroa.0.2386.us822, %bb.z ]
  %i.bh = phi i64 [ %.sroa.34.2385.us864, %bb.t ], [ %.sroa.34.2385.lcssa, %bb.bp ], [ %.sroa.34.2348, %bb.ag ], [ %.sroa.34.2385870, %bb.ad ], [ %.sroa.34.2348, %bb.al ], [ %.sroa.34.2348, %.split.i188 ], [ %.sroa.34.2385.us810, %bb.z ] ; 2 uses
  %i.bi = phi i64 [ 1, %bb.t ], [ 1, %bb.bp ], [ 1, %bb.ag ], [ 1, %bb.ad ], [ %i.bt, %bb.al ], [ %i.bt, %.split.i188 ], [ 1, %bb.z ]
  %i.bj = phi ptr [ @14, %bb.t ], [ @17, %bb.bp ], [ @15, %bb.ag ], [ @14, %bb.ad ], [ @16, %bb.al ], [ @16, %.split.i188 ], [ @17, %bb.z ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bg, i64 noundef %i.bh, i64 noundef %i.bi, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) #20
          to label %.split420.us.cont unwind label %.loopexit302.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split420.us.cont:                                ; preds = %.split420.us.invoke
  unreachable

bb.ae:                                            ; preds = %bb.be
  unreachable

.loopexit303:                                     ; preds = %.split.i177, %.lr.ph
  %.sroa.0.2386.lcssa = phi ptr [ %.sroa.0.2.ph398, %.lr.ph ], [ %i.be, %.split.i177 ] ; 3 uses
  %.sroa.34.2385.lcssa = phi i64 [ %.sroa.34.2.ph397, %.lr.ph ], [ %i.bd, %.split.i177 ] ; 3 uses
  %.lcssa = phi i8 [ %i.ax, %.lr.ph ], [ %i.bf, %.split.i177 ] ; 2 uses
  %.not156 = icmp ult i8 %.lcssa, %.sroa.065.0591599
  br i1 %.not156, label %bb.bm, label %.split435.us

.thread261:                                       ; preds = %bb.r, %.lr.ph871, %bb.af, %bb.am, %bb.ao, %.split.us, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5BytesENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit, %.loopexit301, %.loopexit300
  %.sroa.079.0.ph380 = phi i8 [ %.sroa.079.0.ph396, %.lr.ph871 ], [ %.sroa.079.0.ph381, %bb.am ], [ %.sroa.079.0.ph381, %bb.ao ], [ %.us-phi407, %.split.us ], [ %.sroa.079.0.ph381, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5BytesENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit ], [ %.sroa.079.0.ph382, %.loopexit301 ], [ %.sroa.079.0.ph383, %.loopexit300 ], [ %.sroa.079.0.ph381, %bb.af ], [ %.sroa.079.0.ph396.us, %bb.r ]
  %.sroa.34.2353 = phi i64 [ %.sroa.34.2385870, %.lr.ph871 ], [ %.sroa.34.2348, %bb.am ], [ %.sroa.34.2348, %bb.ao ], [ %.us-phi408, %.split.us ], [ %.sroa.34.2348, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5BytesENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit ], [ %.sroa.34.2350, %.loopexit301 ], [ %.sroa.34.2349, %.loopexit300 ], [ 1, %bb.af ], [ %.sroa.34.2385.us864, %bb.r ] ; 2 uses
  %.sroa.0.2335 = phi ptr [ %.sroa.0.2386869, %.lr.ph871 ], [ %.sroa.0.2330, %bb.am ], [ %.sroa.0.2330, %bb.ao ], [ %.us-phi409, %.split.us ], [ %.sroa.0.2330, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5BytesENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit ], [ %.sroa.0.2332, %.loopexit301 ], [ %.sroa.0.2331, %.loopexit300 ], [ %.sroa.0.2330, %bb.af ], [ %.sroa.0.2386.us863, %bb.r ] ; 2 uses
  %i.bk = trunc nuw i8 %.sroa.079.0.ph380 to i1
  br i1 %i.bk, label %bb.ar, label %.split435.us

.thread261.thread.loopexit:                       ; preds = %bb.ac
  %scevgep.le = getelementptr i8, ptr %.sroa.0.2.ph398, i64 %.sroa.34.2.ph397
  br label %.thread261.thread

.thread261.thread.loopexit616:                    ; preds = %bb.s
  %scevgep573.le = getelementptr i8, ptr %.sroa.0.2.ph398.us, i64 %.sroa.34.2.ph397.us
  br label %.thread261.thread

.thread261.thread:                                ; preds = %.thread261.thread.loopexit616, %.thread261.thread.loopexit
  %.sroa.079.0.ph.lcssa379 = phi i8 [ %.sroa.079.0.ph396, %.thread261.thread.loopexit ], [ %.sroa.079.0.ph396.us, %.thread261.thread.loopexit616 ]
  %.sroa.0.2.lcssa = phi ptr [ %scevgep.le, %.thread261.thread.loopexit ], [ %scevgep573.le, %.thread261.thread.loopexit616 ]
  %i.bl = trunc nuw i8 %.sroa.079.0.ph.lcssa379 to i1
  br i1 %i.bl, label %.thread287, label %.split435.us

.loopexit300:                                     ; preds = %bb.r, %.lr.ph871
  %i.bm = phi i1 [ %i.af, %.lr.ph871 ], [ false, %bb.r ]
  %.sroa.079.0.ph383 = phi i8 [ %.sroa.079.0.ph396, %.lr.ph871 ], [ %.sroa.079.0.ph396.us, %bb.r ] ; 2 uses
  %.sroa.34.2349 = phi i64 [ %.sroa.34.2385870, %.lr.ph871 ], [ %.sroa.34.2385.us864, %bb.r ] ; 2 uses
  %.sroa.0.2331 = phi ptr [ %.sroa.0.2386869, %.lr.ph871 ], [ %.sroa.0.2386.us863, %bb.r ] ; 2 uses
  br i1 %i.bm, label %bb.af, label %.thread261

.loopexit301:                                     ; preds = %bb.r, %.lr.ph871
  %i.bn = phi i1 [ %i.af, %.lr.ph871 ], [ false, %bb.r ]
  %.sroa.079.0.ph382 = phi i8 [ %.sroa.079.0.ph396, %.lr.ph871 ], [ %.sroa.079.0.ph396.us, %bb.r ] ; 2 uses
  %.sroa.34.2350 = phi i64 [ %.sroa.34.2385870, %.lr.ph871 ], [ %.sroa.34.2385.us864, %bb.r ] ; 2 uses
  %.sroa.0.2332 = phi ptr [ %.sroa.0.2386869, %.lr.ph871 ], [ %.sroa.0.2386.us863, %bb.r ] ; 2 uses
  br i1 %i.bn, label %bb.af, label %.thread261

bb.af:                                            ; preds = %.loopexit301, %.loopexit300
  %.sroa.079.0.ph381 = phi i8 [ %.sroa.079.0.ph382, %.loopexit301 ], [ %.sroa.079.0.ph383, %.loopexit300 ] ; 4 uses
  %.sroa.34.2348 = phi i64 [ %.sroa.34.2350, %.loopexit301 ], [ %.sroa.34.2349, %.loopexit300 ] ; 11 uses
  %.sroa.0.2330 = phi ptr [ %.sroa.0.2332, %.loopexit301 ], [ %.sroa.0.2331, %.loopexit300 ] ; 12 uses
  %.not.i181.not = icmp eq i64 %.sroa.34.2348, 1
  br i1 %.not.i181.not, label %.thread261, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.2330, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !noundef !4 ; 2 uses
  %i.bq = icmp sgt i8 %i.bp, -65
  br i1 %i.bq, label %.lr.ph461.preheader, label %.split420.us.invoke

.lr.ph461.preheader:                              ; preds = %bb.ag
  %i.br = getelementptr i8, ptr %.sroa.0.2330, i64 %.sroa.34.2348 ; 2 uses
  %.sroa.0.0204456 = getelementptr inbounds nuw i8, ptr %.sroa.0.2330, i64 1
  br label %.lr.ph461

.lr.ph461thread-pre-split:                        ; preds = %bb.ai, %3
  %.sroa.0.0204614 = phi ptr [ %.sroa.0.0204.a, %bb.ai ], [ %.sroa.0.0204, %3 ] ; 2 uses
  %.sroa.093.1613 = phi i8 [ 1, %bb.ai ], [ %.sroa.093.0459, %3 ]
  %.pr = load i8, ptr %.sroa.0.0204614, align 1, !noalias !62
  br label %.lr.ph461

.lr.ph461:                                        ; preds = %.lr.ph461thread-pre-split, %.lr.ph461.preheader
  %i.bs = phi i8 [ %.pr, %.lr.ph461thread-pre-split ], [ %i.bp, %.lr.ph461.preheader ] ; 2 uses
  %.sroa.0.0204460 = phi ptr [ %.sroa.0.0204614, %.lr.ph461thread-pre-split ], [ %.sroa.0.0204456, %.lr.ph461.preheader ] ; 2 uses
  %.sroa.093.0459 = phi i8 [ %.sroa.093.1613, %.lr.ph461thread-pre-split ], [ 0, %.lr.ph461.preheader ] ; 3 uses
  %.sroa.9.0458 = phi i64 [ %i.bt, %.lr.ph461thread-pre-split ], [ 0, %.lr.ph461.preheader ]
  %i.bt = add i64 %.sroa.9.0458, 1                ; 9 uses
  switch i8 %i.bs, label %bb.ah [
    i8 95, label %3
    i8 45, label %.split435.us
    i8 43, label %.split435.us
  ]

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5BytesENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit: ; preds = %3
  %i.bu = trunc nuw i8 %.sroa.093.0459 to i1
  br i1 %i.bu, label %.split435.us, label %.thread261

bb.ah:                                            ; preds = %.lr.ph461
  %i.bv = add i8 %i.bs, -48
  %or.cond8 = icmp ult i8 %i.bv, 10
  br i1 %or.cond8, label %bb.ai, label %bb.aj

3:                                                ; preds = %.lr.ph461
  %.sroa.0.0204 = getelementptr inbounds nuw i8, ptr %.sroa.0.0204460, i64 1 ; 2 uses
  %.not.i186 = icmp eq ptr %.sroa.0.0204, %i.br
  br i1 %.not.i186, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5BytesENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit, label %.lr.ph461thread-pre-split

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0.0204.a = getelementptr inbounds nuw i8, ptr %.sroa.0.0204460, i64 1 ; 2 uses
  %.not.i186.a = icmp eq ptr %.sroa.0.0204.a, %i.br
  br i1 %.not.i186.a, label %.split435.us, label %.lr.ph461thread-pre-split

bb.aj:                                            ; preds = %bb.ah
  %i.bw = icmp eq i64 %i.bt, 0
  br i1 %i.bw, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i187 = icmp ult i64 %i.bt, %.sroa.34.2348
  br i1 %.not.i187, label %bb.al, label %.split.i188

.split.i188:                                      ; preds = %bb.ak
  %i.bx = icmp eq i64 %i.bt, %.sroa.34.2348
  br i1 %i.bx, label %bb.am, label %.split420.us.invoke

bb.al:                                            ; preds = %bb.ak
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.2330, i64 %i.bt
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !63, !noundef !4
  %i.ca = icmp sgt i8 %i.bz, -65
  br i1 %i.ca, label %bb.am, label %.split420.us.invoke

bb.am:                                            ; preds = %bb.aj, %.split.i188, %bb.al
  %i.cb = trunc nuw i8 %.sroa.093.0459 to i1
  br i1 %i.cb, label %bb.an, label %.thread261

bb.an:                                            ; preds = %bb.am
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.2330, i64 %i.bt
  %i.cd = sub nuw i64 %.sroa.34.2348, %i.bt
  %i.ce = invoke noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn5ident6xid_ok(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef %i.cd)
          to label %bb.ao unwind label %.loopexit302.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  br i1 %i.ce, label %.split435.us, label %.thread261

.split435.us:                                     ; preds = %.loopexit303.us, %.loopexit303, %.lr.ph461, %.lr.ph461, %bb.ai, %.thread261, %.thread261.thread, %.thread231, %bb.ao, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5BytesENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit, %.split.us
  store ptr null, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn6bigint6BigIntEBF_.exit unwind label %bb.ap

bb.ap:                                            ; preds = %.split435.us
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.thread288, %bb.av, %bb.ap
  %common.resume.op = phi { ptr, i32 } [ %i.ci, %bb.av ], [ %i.cf, %bb.ap ], [ %.pn158, %.thread288 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn6bigint6BigIntEBF_.exit: ; preds = %.split435.us
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bj

.thread287:                                       ; preds = %bb.y, %bb.bo, %.thread261.thread, %bb.as
  %.sroa.34.2352 = phi i64 [ 0, %.thread261.thread ], [ %.sroa.34.2353, %bb.as ], [ 0, %bb.bo ], [ 0, %bb.y ] ; 4 uses
  %.sroa.0.2336 = phi ptr [ %.sroa.0.2.lcssa, %.thread261.thread ], [ %.sroa.0.2335, %bb.as ], [ %i.dm, %bb.bo ], [ %i.as, %bb.y ]
  %.not151316 = phi i1 [ true, %.thread261.thread ], [ false, %bb.as ], [ true, %bb.bo ], [ true, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCsgbWeKYPjk8w_3syn6bigintNtB2_6BigInt9to_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.ax unwind label %.loopexit302.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %.thread261
  %i.ch = invoke noundef zeroext i1 @_RNvNtCsgbWeKYPjk8w_3syn5ident6xid_ok(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.2335, i64 noundef %.sroa.34.2353)
          to label %bb.as unwind label %.loopexit302.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  br i1 %i.ch, label %.thread287, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr null, ptr %0, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.bi, %bb.at
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn6bigint6BigIntEBF_.exit193 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn6bigint6BigIntEBF_.exit193: ; preds = %bb.au
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bj

bb.ax:                                            ; preds = %.thread287
  br i1 %i.g, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String6insert.exit, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ck = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.ba unwind label %.loopexit302.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.az:                                            ; preds = %bb.ax
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !64, !noundef !4 ; 3 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  call void @llvm.assume(i1 %i.cn)
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String6insert.exit unwind label %bb.bl

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String6insert.exit: ; preds = %bb.az
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !64, !nonnull !4, !noundef !4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr nonnull align 1 %i.cp, i64 %i.cm, i1 false)
  %i.cr = load ptr, ptr %i.co, align 8, !alias.scope !64, !nonnull !4, !noundef !4
  store i8 45, ptr %i.cr, align 1
  %i.cs = add nuw i64 %i.cm, 1
  store i64 %i.cs, ptr %i.cl, align 8, !alias.scope !64
  br label %bb.ay

.loopexit302.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bm, %bb.bn, %bb.w, %bb.x, %.split420.us.invoke, %bb.an, %.thread287, %bb.ar, %bb.ay
  %lpad.loopexit.split-lp939 = landingpad { ptr, i32 }
          cleanup
  br label %.thread288

bb.ba:                                            ; preds = %bb.ay
  %i.ct = extractvalue { ptr, i64 } %i.ck, 0      ; 3 uses
  %i.cu = extractvalue { ptr, i64 } %i.ck, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.34.2352, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bd unwind label %bb.bb

bb.bb:                                            ; preds = %bb.bg, %bb.be, %bb.ba
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = icmp eq i64 %i.cu, 0
  br i1 %i.cw, label %.thread288, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ct, i64 noundef range(i64 1, 0) %i.cu, i64 noundef 1) #21
  br label %.thread288

bb.bd:                                            ; preds = %bb.ba
  %i.cx = load i64, ptr %i.b, align 8, !range !6, !noundef !4
  %i.cy = trunc nuw i64 %i.cx to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !range !7, !noundef !4 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cy, label %bb.be, label %bb.bf, !prof !5

bb.be:                                            ; preds = %bb.bd
  %i.dc = load i64, ptr %i.db, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.da, i64 %i.dc) #20
          to label %bb.ae unwind label %bb.bb

bb.bf:                                            ; preds = %bb.bd
  %i.dd = load ptr, ptr %i.db, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.de = icmp ule i64 %.sroa.34.2352, %i.da
  call void @llvm.assume(i1 %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.da, ptr %i.c, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.dd, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.dg, align 8
  br i1 %.not151316, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bh, %bb.bf
  %i.dh = invoke { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.bi unwind label %bb.bb     ; 2 uses

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dd, ptr align 1 %.sroa.0.2336, i64 %.sroa.34.2352, i1 false)
  store i64 %.sroa.34.2352, ptr %i.dg, align 8
  br label %bb.bg

bb.bi:                                            ; preds = %bb.bg
  %i.di = extractvalue { ptr, i64 } %i.dh, 0      ; 2 uses
  %i.dj = extractvalue { ptr, i64 } %i.dh, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.di) ]
  store ptr %i.ct, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cu, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.di, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dj, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.au

bb.bj:                                            ; preds = %.thread225, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn6bigint6BigIntEBF_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn6bigint6BigIntEBF_.exit193
  ret void

bb.bk:                                            ; preds = %bb.bl, %.thread288
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.bl:                                            ; preds = %bb.az
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %.thread288 unwind label %bb.bk

bb.bm:                                            ; preds = %.loopexit303
  invoke void @_RNvXs0_NtCsgbWeKYPjk8w_3syn6bigintNtB5_6BigIntINtNtNtCsj6eKBz9Db1c_4core3ops5arith9MulAssignhE10mul_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %.sroa.065.0591599)
          to label %bb.bn unwind label %.loopexit302.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn6bigintNtB4_6BigIntINtNtNtCsj6eKBz9Db1c_4core3ops5arith9AddAssignhE10add_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %.lcssa)
          to label %bb.bo unwind label %.loopexit302.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  %.not.i194.not = icmp eq i64 %.sroa.34.2385.lcssa, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.2386.lcssa, i64 1 ; 2 uses
  br i1 %.not.i194.not, label %.thread287, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dn = load i8, ptr %i.dm, align 1, !alias.scope !61, !noundef !4
  %i.do = icmp sgt i8 %i.dn, -65
  br i1 %i.do, label %.split.i195, label %.split420.us.invoke

.split.i195:                                      ; preds = %bb.bp
  %i.dp = add i64 %.sroa.34.2385.lcssa, -1
end_hunk_0
