Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/ts_parse?download=true
inline.NumInlined: 32
inline.NumDeleted: 14
begin_hunk_0_@LexizeExec:bb.a
bb.as:                                            ; preds = %moveToWaste.exit
  %.not1112.i177 = icmp eq ptr %i.fw, null
  br i1 %.not1112.i177, label %.thread, label %.lr.ph.i178

.lr.ph.i178:                                      ; preds = %bb.as, %.lr.ph.i178
  %.013.i179 = phi ptr [ %i.fy, %.lr.ph.i178 ], [ %i.fw, %bb.as ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.013.i179, i64 24
  %i.fy = load ptr, ptr %i.fx, align 8            ; 2 uses
  tail call void @pfree(ptr noundef nonnull %.013.i179) #6
  %.not11.i180 = icmp eq ptr %i.fy, null
  br i1 %.not11.i180, label %.thread, label %.lr.ph.i178, !llvm.loop !13

bb.at:                                            ; preds = %bb.ag
  store i32 0, ptr %i.a, align 8
  br label %tailrecurse.backedge

.thread191:                                       ; preds = %bb.aa, %bb.ad, %setNewTmpRes.exit164
  %i.fz = phi ptr [ %i.dr, %bb.aa ], [ %i.ek, %bb.ad ], [ %.pre, %setNewTmpRes.exit164 ] ; 2 uses
  %.not = icmp eq ptr %i.fz, null
  br i1 %.not, label %.loopexit, label %bb.x

.loopexit:                                        ; preds = %bb.w, %.preheader205, %.thread191, %bb.v
  %.not.i182 = icmp eq ptr %1, null
  %i.ga = load ptr, ptr %i.k, align 8             ; 3 uses
  br i1 %.not.i182, label %bb.au, label %.thread.sink.split

bb.au:                                            ; preds = %.loopexit
  %.not1112.i183 = icmp eq ptr %i.ga, null
  br i1 %.not1112.i183, label %.thread, label %.lr.ph.i184

.lr.ph.i184:                                      ; preds = %bb.au, %.lr.ph.i184
  %.013.i185 = phi ptr [ %i.gc, %.lr.ph.i184 ], [ %i.ga, %bb.au ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.013.i185, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  tail call void @pfree(ptr noundef nonnull %.013.i185) #6
  %.not11.i186 = icmp eq ptr %i.gc, null
  br i1 %.not11.i186, label %.thread, label %.lr.ph.i184, !llvm.loop !13

.thread.sink.split:                               ; preds = %.loopexit, %moveToWaste.exit, %RemoveHead.exit147
  %.sink = phi ptr [ %i.fw, %moveToWaste.exit ], [ %i.cg, %RemoveHead.exit147 ], [ %i.ga, %.loopexit ]
  %.6.ph = phi ptr [ %.0116, %moveToWaste.exit ], [ %i.ba, %RemoveHead.exit147 ], [ null, %.loopexit ]
  store ptr %.sink, ptr %1, align 8
  br label %.thread

.thread:                                          ; preds = %.lr.ph.i178, %.lr.ph.i149, %.lr.ph.i184, %.thread.sink.split, %bb.au, %bb.as, %bb.r
  %.6 = phi ptr [ %i.ba, %bb.r ], [ %.0116, %bb.as ], [ %i.ba, %.lr.ph.i149 ], [ %.6.ph, %.thread.sink.split ], [ null, %.lr.ph.i184 ], [ null, %bb.au ], [ %.0116, %.lr.ph.i178 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  ret ptr %.6
}

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare i64 @FunctionCall1Coll(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @hlparsetext(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.LexizeData, align 8         ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = tail call ptr @lookup_ts_config_cache(i32 noundef %0) #6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call ptr @lookup_ts_parser_cache(i32 noundef %i.f) #6 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = ptrtoint ptr %3 to i64
  %i.j = sext i32 %4 to i64
  %i.k = tail call i64 @FunctionCall2Coll(ptr noundef nonnull %i.h, i32 noundef 0, i64 noundef %i.i, i64 noundef %i.j) #6 ; 2 uses
  store ptr %i.d, ptr %5, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i8 0, i64 56, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = ptrtoint ptr %i.a to i64
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %addHLParsedLex.exit.thread, %bb.a
  %i.w = call i64 @FunctionCall3Coll(ptr noundef nonnull %i.o, i32 noundef 0, i64 noundef %i.k, i64 noundef %i.p, i64 noundef %i.q) #6
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0                     ; 2 uses
  %i.z = load i32, ptr %i.a, align 4              ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 2046
  %or.cond = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #6
  br i1 %i.ab, label %bb.d, label %addHLParsedLex.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ac = call i32 @errcode(i32 noundef 261) #6   ; 0 uses
  %i.ad = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str) #6 ; 0 uses
  %i.ae = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.1, i32 noundef 2047) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 575, ptr noundef nonnull @__func__.hlparsetext) #6
  br label %addHLParsedLex.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.b, align 8
  %i.ag = call ptr @palloc(i64 noundef 32) #6     ; 7 uses
  store i32 %i.x, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 %i.z, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.r, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %i.ag, ptr %i.ak, align 8
  br label %LexizeAddLemm.exit

bb.g:                                             ; preds = %bb.e
  store ptr %i.ag, ptr %i.s, align 8
  br label %LexizeAddLemm.exit

LexizeAddLemm.exit:                               ; preds = %bb.f, %bb.g
  store ptr %i.ag, ptr %i.r, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr null, ptr %i.al, align 8
  %i.am = load ptr, ptr %i.r, align 8
  store ptr %i.am, ptr %i.n, align 8
  br label %bb.h

bb.h:                                             ; preds = %addHLParsedLex.exit, %LexizeAddLemm.exit
  %i.an = call fastcc ptr @LexizeExec(ptr noundef %5, ptr noundef nonnull %i.c) ; 2 uses
  %.not = icmp eq ptr %i.an, null                 ; 2 uses
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = load i32, ptr %i.t, align 8
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.t, align 8
  %i.aq = load ptr, ptr %i.c, align 8
  call fastcc void @addHLParsedLex(ptr noundef %1, ptr noundef %2, ptr noundef %i.aq, ptr noundef nonnull %i.an)
  br label %addHLParsedLex.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not45.i = icmp eq ptr %i.ar, null
  br i1 %.not45.i, label %addHLParsedLex.exit.thread, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.j, %bb.m
  %.03046.i = phi ptr [ %i.ck, %bb.m ], [ %i.ar, %bb.j ] ; 5 uses
  %i.as = load i32, ptr %.03046.i, align 8        ; 2 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.lr.ph47.i
  %i.au = getelementptr inbounds nuw i8, ptr %.03046.i, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.03046.i, i64 16
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.ay = load i32, ptr %i.u, align 4             ; 2 uses
  %i.az = load i32, ptr %i.v, align 8             ; 2 uses
  %.not.i.i20 = icmp slt i32 %i.ay, %i.az
  %.pre.i.i = load ptr, ptr %1, align 8           ; 2 uses
  br i1 %.not.i.i20, label %hladdword.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = shl i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %i.v, align 8
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul nsw i64 %i.bb, 24
  %i.bd = call ptr @repalloc(ptr noundef %.pre.i.i, i64 noundef %i.bc) #6 ; 2 uses
  store ptr %i.bd, ptr %1, align 8
  %.pre21.i.i = load i32, ptr %i.u, align 4
  br label %hladdword.exit.i

hladdword.exit.i:                                 ; preds = %bb.l, %bb.k
  %i.be = phi i32 [ %.pre21.i.i, %bb.l ], [ %i.ay, %bb.k ]
  %i.bf = phi ptr [ %i.bd, %bb.l ], [ %.pre.i.i, %bb.k ]
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds [24 x i8], ptr %i.bf, i64 %i.bg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  %i.bi = load ptr, ptr %1, align 8
  %i.bj = load i32, ptr %i.u, align 4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds [24 x i8], ptr %i.bi, i64 %i.bk ; 2 uses
  %6 = load i32, ptr %i.bl, align 8
  %7 = shl i32 %i.as, 8
  %8 = and i32 %7, 65280
  %9 = and i32 %6, -65281
  %10 = or disjoint i32 %9, %8
  store i32 %10, ptr %i.bl, align 8
  %i.bm = load ptr, ptr %1, align 8
  %i.bn = load i32, ptr %i.u, align 4
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [24 x i8], ptr %i.bm, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = shl i32 %i.ax, 16
  %i.bs = and i32 %i.bq, 65535
  %i.bt = or disjoint i32 %i.bs, %i.br
  store i32 %i.bt, ptr %i.bp, align 8
  %i.bu = sext i32 %i.ax to i64                   ; 2 uses
  %i.bv = call ptr @palloc(i64 noundef %i.bu) #6
  %i.bw = load ptr, ptr %1, align 8
  %i.bx = load i32, ptr %i.u, align 4
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [24 x i8], ptr %i.bw, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.bv, ptr %i.ca, align 8
  %i.cb = load ptr, ptr %1, align 8
  %i.cc = load i32, ptr %i.u, align 4
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [24 x i8], ptr %i.cb, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr readonly align 1 %i.av, i64 %i.bu, i1 false)
  %i.ch = load i32, ptr %i.u, align 4
  %i.ci = add i32 %i.ch, 1
  store i32 %i.ci, ptr %i.u, align 4
  br label %bb.m

bb.m:                                             ; preds = %hladdword.exit.i, %.lr.ph47.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.03046.i, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  call void @pfree(ptr noundef nonnull %.03046.i) #6
  %.not.i = icmp eq ptr %i.ck, null
  br i1 %.not.i, label %addHLParsedLex.exit, label %.lr.ph47.i, !llvm.loop !0

addHLParsedLex.exit:                              ; preds = %bb.m, %bb.i
  br i1 %.not, label %addHLParsedLex.exit.thread, label %bb.h, !llvm.loop !18

addHLParsedLex.exit.thread:                       ; preds = %bb.j, %addHLParsedLex.exit, %bb.c, %bb.d
  br i1 %i.y, label %bb.b, label %bb.n, !llvm.loop !19

bb.n:                                             ; preds = %addHLParsedLex.exit.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.cm = call i64 @FunctionCall1Coll(ptr noundef nonnull %i.cl, i32 noundef 0, i64 noundef %i.k) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @addHLParsedLex(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %.not45 = icmp eq ptr %2, null
  br i1 %.not45, label %._crit_edge, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not3641 = icmp eq ptr %3, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph47, %.critedge
  %.03046 = phi ptr [ %2, %.lr.ph47 ], [ %i.dv, %.critedge ] ; 5 uses
  %i.g = load i32, ptr %.03046, align 8           ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.03046, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.03046, i64 16
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = load i32, ptr %i.a, align 4              ; 2 uses
  %i.n = load i32, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp slt i32 %i.m, %i.n
  %.pre.i = load ptr, ptr %0, align 8             ; 2 uses
  br i1 %.not.i, label %hladdword.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = shl i32 %i.n, 1                          ; 2 uses
  store i32 %i.o, ptr %i.b, align 8
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, 24
  %i.r = tail call ptr @repalloc(ptr noundef %.pre.i, i64 noundef %i.q) #6 ; 2 uses
  store ptr %i.r, ptr %0, align 8
  %.pre21.i = load i32, ptr %i.a, align 4
  br label %hladdword.exit

hladdword.exit:                                   ; preds = %bb.c, %bb.d
  %i.s = phi i32 [ %.pre21.i, %bb.d ], [ %i.m, %bb.c ]
  %i.t = phi ptr [ %i.r, %bb.d ], [ %.pre.i, %bb.c ]
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [24 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = load ptr, ptr %0, align 8
  %i.x = load i32, ptr %i.a, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [24 x i8], ptr %i.w, i64 %i.y ; 2 uses
  %4 = load i32, ptr %i.z, align 8
  %5 = shl i32 %i.g, 8
  %6 = and i32 %5, 65280
  %7 = and i32 %4, -65281
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %i.z, align 8
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = shl i32 %i.l, 16
  %i.ag = and i32 %i.ae, 65535
  %i.ah = or disjoint i32 %i.ag, %i.af
  store i32 %i.ah, ptr %i.ad, align 8
  %i.ai = sext i32 %i.l to i64                    ; 2 uses
  %i.aj = tail call ptr @palloc(i64 noundef %i.ai) #6
  %i.ak = load ptr, ptr %0, align 8
  %i.al = load i32, ptr %i.a, align 4
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [24 x i8], ptr %i.ak, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.aj, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = load i32, ptr %i.a, align 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [24 x i8], ptr %i.ap, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr readonly align 1 %i.j, i64 %i.ai, i1 false)
  %i.av = load i32, ptr %i.a, align 4
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %hladdword.exit, %bb.b
  br i1 %.not3641, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.ax = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not3767 = icmp eq ptr %i.ax, null
  br i1 %.not3767, label %.critedge, label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph.preheader
  %i.ay = load i32, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph70, %hlfinditem.exit
  %i.az = phi ptr [ %i.ax, %.lr.ph70 ], [ %i.dt, %hlfinditem.exit ] ; 2 uses
  %.0284269 = phi ptr [ %3, %.lr.ph70 ], [ %i.dr, %hlfinditem.exit ] ; 3 uses
  %.04368 = phi i32 [ %i.ay, %.lr.ph70 ], [ %spec.select, %hlfinditem.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0284269, i64 2
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = and i16 %i.bb, 1
  %i.bd = zext nneg i16 %i.bc to i32
  %spec.select = add i32 %.04368, %i.bd           ; 2 uses
  %i.be = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #7
  %i.bf = trunc i64 %i.be to i32
  %i.bg = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bh = load i32, ptr %i.e, align 4
  %i.bi = add i32 %i.bh, %i.bg
  %i.bj = load i32, ptr %i.b, align 8             ; 2 uses
  %.not42.i = icmp slt i32 %i.bi, %i.bj
  %.pre48.i = load ptr, ptr %0, align 8           ; 2 uses
  br i1 %.not42.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.bk = phi ptr [ %i.bp, %.lr.ph.i ], [ %.pre48.i, %bb.f ]
  %i.bl = phi i32 [ %i.bt, %.lr.ph.i ], [ %i.bj, %bb.f ]
  %i.bm = shl i32 %i.bl, 1                        ; 2 uses
  store i32 %i.bm, ptr %i.b, align 8
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul nsw i64 %i.bn, 24
  %i.bp = tail call ptr @repalloc(ptr noundef %i.bk, i64 noundef %i.bo) #6 ; 3 uses
  store ptr %i.bp, ptr %0, align 8
  %i.bq = load i32, ptr %i.a, align 4             ; 2 uses
  %i.br = load i32, ptr %i.e, align 4
  %i.bs = add i32 %i.br, %i.bq
  %i.bt = load i32, ptr %i.b, align 8             ; 2 uses
  %.not.i39 = icmp slt i32 %i.bs, %i.bt
  br i1 %.not.i39, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.f
  %i.bu = phi ptr [ %.pre48.i, %bb.f ], [ %i.bp, %.lr.ph.i ]
  %.lcssa40.i = phi i32 [ %i.bg, %bb.f ], [ %i.bq, %.lr.ph.i ]
  %i.bv = add i32 %.lcssa40.i, -1
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [24 x i8], ptr %i.bu, i64 %i.bw ; 3 uses
  %i.by = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 16383)
  %i.bz = trunc i32 %i.by to i16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i16 %i.bz, ptr %i.ca, align 4
  %i.cb = load i32, ptr %i.e, align 4             ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph46.i, label %hlfinditem.exit

.lr.ph46.i:                                       ; preds = %._crit_edge.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %.lr.ph46.i
  %i.ce = phi i32 [ %i.cb, %.lr.ph46.i ], [ %i.dp, %bb.l ]
  %.044.i = phi ptr [ %i.d, %.lr.ph46.i ], [ %i.dn, %bb.l ] ; 6 uses
  %.03643.i = phi i32 [ 0, %.lr.ph46.i ], [ %i.do, %bb.l ]
  %i.cf = load i8, ptr %.044.i, align 4
  %i.cg = icmp eq i8 %i.cf, 1
  br i1 %i.cg, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ch = sext i32 %i.ce to i64
  %i.ci = mul nuw nsw i64 %i.ch, 12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.044.i, i64 8
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = lshr i32 %i.cl, 12
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cn
  %i.cp = and i32 %i.cl, 4095
  %i.cq = getelementptr inbounds nuw i8, ptr %.044.i, i64 2
  %i.cr = load i8, ptr %i.cq, align 2, !range !6, !noundef !7
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = tail call i32 @tsCompareString(ptr noundef nonnull %i.co, i32 noundef %i.cp, ptr noundef nonnull %i.az, i32 noundef %i.bf, i1 noundef zeroext %i.cs) #6
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.cv = load ptr, ptr %i.cd, align 8
  %.not39.i = icmp eq ptr %i.cv, null
  br i1 %.not39.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = load i32, ptr %i.a, align 4
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [24 x i8], ptr %i.cw, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  %i.da = load ptr, ptr %0, align 8
  %i.db = load i32, ptr %i.a, align 4
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [24 x i8], ptr %i.da, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %.044.i, ptr %i.de, align 8
  %i.df = load ptr, ptr %0, align 8
  %i.dg = load i32, ptr %i.a, align 4
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [24 x i8], ptr %i.df, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = or i32 %i.dj, 8
  store i32 %i.dk, ptr %i.di, align 8
  %i.dl = load i32, ptr %i.a, align 4
  %i.dm = add i32 %i.dl, 1
  store i32 %i.dm, ptr %i.a, align 4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store ptr %.044.i, ptr %i.cd, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %.044.i, i64 12
  %i.do = add nuw nsw i32 %.03643.i, 1            ; 2 uses
  %i.dp = load i32, ptr %i.e, align 4             ; 2 uses
  %i.dq = icmp slt i32 %i.do, %i.dp
  br i1 %i.dq, label %bb.g, label %hlfinditem.exit, !llvm.loop !21

hlfinditem.exit:                                  ; preds = %bb.l, %._crit_edge.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.0284269, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %.0284269, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.dt, null
  br i1 %.not37, label %.critedge, label %bb.f, !llvm.loop !22

.critedge:                                        ; preds = %hlfinditem.exit, %.lr.ph.preheader, %bb.e
  %i.du = getelementptr inbounds nuw i8, ptr %.03046, i64 24
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  tail call void @pfree(ptr noundef nonnull %.03046) #6
  %.not = icmp eq ptr %i.dv, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.not33 = icmp eq ptr %3, null
  br i1 %.not33, label %bb.p, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8            ; 2 uses
  %.not3448 = icmp eq ptr %i.dx, null
  br i1 %.not3448, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %.preheader
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph50, %bb.o
  %i.dz = phi ptr [ %i.dx, %.lr.ph50 ], [ %i.ej, %bb.o ]
  %i.ea = phi ptr [ %i.dw, %.lr.ph50 ], [ %i.ei, %bb.o ]
  %.12949 = phi ptr [ %3, %.lr.ph50 ], [ %i.eh, %bb.o ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.12949, i64 2
  %i.ec = load i16, ptr %i.eb, align 2
  %i.ed = and i16 %i.ec, 1
  %.not35 = icmp eq i16 %i.ed, 0
  br i1 %.not35, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = load i32, ptr %i.dy, align 8
  %i.ef = add i32 %i.ee, 1
end_hunk_0
