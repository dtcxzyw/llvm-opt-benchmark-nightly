Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 368
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3CreateForeignKey:bb.a
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1149
  %i.p = getelementptr [16 x i8], ptr %i.o, i64 %i.k
  %i.q = getelementptr i8, ptr %i.p, i64 -16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1153
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.859, ptr noundef %i.r, ptr noundef %2)
  br label %bb.ap

bb.g:                                             ; preds = %bb.c
  %.not = icmp eq ptr %3, null
  %.pre = load i32, ptr %1, align 8, !tbaa !570   ; 3 uses
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr %3, align 8, !tbaa !570
  %.not145 = icmp eq i32 %i.s, %.pre
  br i1 %.not145, label %.preheader196, label %sqlite3DbFree.exit.thread189

sqlite3DbFree.exit.thread189:                     ; preds = %bb.h
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.860)
  br label %sqlite3DbFree.exit.thread

.thread:                                          ; preds = %bb.g, %bb.e
  %.1129 = phi i32 [ 1, %bb.e ], [ %.pre, %bb.g ] ; 2 uses
  %i.t = sext i32 %.1129 to i64                   ; 2 uses
  %i.u = shl nsw i64 %i.t, 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !800
  %i.x = zext i32 %i.w to i64
  %i.y = add nsw i64 %i.u, 65
  %i.z = add nsw i64 %i.y, %i.x
  br label %.loopexit197

.preheader196:                                    ; preds = %bb.h, %bb.f
  %.1129.ph = phi i32 [ %.pre, %bb.h ], [ 1, %bb.f ] ; 3 uses
  %i.aa = sext i32 %.1129.ph to i64               ; 3 uses
  %i.ab = shl nsw i64 %i.aa, 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !800
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nsw i64 %i.ab, 65
  %i.ag = add nsw i64 %i.af, %i.ae                ; 2 uses
  %i.ah = load i32, ptr %3, align 8, !tbaa !570   ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.preheader, label %.loopexit197

.lr.ph.preheader:                                 ; preds = %.preheader196
  %wide.trip.count = zext nneg i32 %i.ah to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sqlite3Strlen30.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %sqlite3Strlen30.exit ] ; 2 uses
  %.0132202 = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %i.aq, %sqlite3Strlen30.exit ]
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1999 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %sqlite3Strlen30.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.an = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.al) #59
  %i.ao = and i64 %i.an, 1073741823
  %i.ap = add nuw nsw i64 %i.ao, 1
  br label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %.lr.ph, %bb.i
  %.0.i = phi i64 [ %i.ap, %bb.i ], [ 1, %.lr.ph ]
  %i.aq = add nsw i64 %.0.i, %.0132202            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit197, label %.lr.ph, !llvm.loop !4597

.loopexit197:                                     ; preds = %sqlite3Strlen30.exit, %.thread, %.preheader196
  %.not148251 = phi i1 [ false, %.thread ], [ true, %.preheader196 ], [ true, %sqlite3Strlen30.exit ]
  %i.ar = phi ptr [ %i.v, %.thread ], [ %i.ac, %.preheader196 ], [ %i.ac, %sqlite3Strlen30.exit ] ; 3 uses
  %i.as = phi i64 [ %i.t, %.thread ], [ %i.aa, %.preheader196 ], [ %i.aa, %sqlite3Strlen30.exit ]
  %.1129249 = phi i32 [ %.1129, %.thread ], [ %.1129.ph, %.preheader196 ], [ %.1129.ph, %sqlite3Strlen30.exit ] ; 5 uses
  %.1133 = phi i64 [ %i.z, %.thread ], [ %i.ag, %.preheader196 ], [ %i.aq, %sqlite3Strlen30.exit ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit197
  %i.at = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.a, i64 noundef %.1133), !inline_history !88
  br label %sqlite3DbMallocRaw.exit.i

bb.k:                                             ; preds = %.loopexit197
  %i.au = tail call fastcc ptr @sqlite3Malloc(i64 noundef %.1133), !inline_history !88
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.k, %bb.j
  %.0.i.i = phi ptr [ %i.at, %bb.j ], [ %i.au, %bb.k ] ; 15 uses
  %.not.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i, label %sqlite3DbFree.exit, label %bb.l

bb.l:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i, i8 0, i64 %.1133, i1 false)
  store ptr %i.c, ptr %.0.i.i, align 8, !tbaa !2032
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !733
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !1982
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64 ; 4 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %i.ay, i64 %i.as ; 10 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !741
  %i.bb = load i8, ptr %i.e, align 4, !tbaa !1248
  switch i8 %i.bb, label %bb.m [
    i8 3, label %sqlite3RenameTokenMap.exit
    i8 1, label %sqlite3RenameTokenMap.exit
    i8 0, label %sqlite3RenameTokenMap.exit
  ]

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %0, align 8, !tbaa !980   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.bc, i64 noundef 32), !inline_history !292
  br label %sqlite3DbMallocRaw.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.be = tail call fastcc ptr @sqlite3Malloc(i64 noundef 32), !inline_history !292
  br label %sqlite3DbMallocRaw.exit.i.i

sqlite3DbMallocRaw.exit.i.i:                      ; preds = %bb.o, %bb.n
  %.0.i.i.i = phi ptr [ %i.bd, %bb.n ], [ %i.be, %bb.o ] ; 5 uses
  %.not.i.i152 = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i152, label %sqlite3RenameTokenMap.exit, label %bb.p

bb.p:                                             ; preds = %sqlite3DbMallocRaw.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  store ptr %i.az, ptr %.0.i.i.i, align 8, !tbaa !2014
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !2004
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2054
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !2055
  store ptr %.0.i.i.i, ptr %i.bg, align 8, !tbaa !2054
  br label %sqlite3RenameTokenMap.exit

sqlite3RenameTokenMap.exit:                       ; preds = %bb.l, %bb.l, %bb.l, %bb.p, %sqlite3DbMallocRaw.exit.i.i
  %i.bj = load ptr, ptr %2, align 8, !tbaa !801
  %i.bk = load i32, ptr %i.ar, align 8, !tbaa !800
  %i.bl = zext i32 %i.bk to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.az, ptr align 1 %i.bj, i64 %i.bl, i1 false)
  %i.bm = load i32, ptr %i.ar, align 8, !tbaa !800
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bn
  store i8 0, ptr %i.bo, align 1, !tbaa !733
  %i.bp = load i8, ptr %i.az, align 1, !tbaa !733 ; 3 uses
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !733
  %.not.i153 = icmp sgt i8 %i.bs, -1
  br i1 %.not.i153, label %sqlite3Dequote.exit, label %bb.q

bb.q:                                             ; preds = %sqlite3RenameTokenMap.exit
  %i.bt = icmp eq i8 %i.bp, 91
  %spec.store.select.i = select i1 %i.bt, i8 93, i8 %i.bp ; 3 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.t ], [ 0, %bb.q ] ; 3 uses
  %.020.i = phi i32 [ %i.ce, %bb.t ], [ 1, %bb.q ] ; 3 uses
  %i.bu = sext i32 %.020.i to i64
  %i.bv = getelementptr inbounds i8, ptr %i.az, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !733 ; 2 uses
  %i.bx = icmp eq i8 %i.bw, %spec.store.select.i
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = add nsw i32 %.020.i, 1                  ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.az, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !733
  %i.cc = icmp eq i8 %i.cb, %spec.store.select.i
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %spec.store.select.sink.i = phi i8 [ %spec.store.select.i, %bb.s ], [ %i.bw, %bb.r ]
  %.121.i = phi i32 [ %i.by, %bb.s ], [ %.020.i, %bb.r ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i
  store i8 %spec.store.select.sink.i, ptr %i.cd, align 1, !tbaa !733
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ce = add nsw i32 %.121.i, 1
  br label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i
  store i8 0, ptr %i.cf, align 1, !tbaa !733
  br label %sqlite3Dequote.exit

sqlite3Dequote.exit:                              ; preds = %sqlite3RenameTokenMap.exit, %bb.u
  %i.cg = load i32, ptr %i.ar, align 8, !tbaa !800
  %i.ch = add i32 %i.cg, 1
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  store i32 %.1129249, ptr %i.ck, align 8, !tbaa !570
  br i1 %i.h, label %8, label %.preheader194

.preheader194:                                    ; preds = %sqlite3Dequote.exit
  %i.cl = icmp sgt i32 %.1129249, 0
  br i1 %i.cl, label %.preheader193.lr.ph, label %.loopexit

.preheader193.lr.ph:                              ; preds = %.preheader194
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 54
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !1150 ; 2 uses
  %wide.trip.count220 = sext i16 %i.cn to i64
  %i.co = icmp sgt i16 %i.cn, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 416
  br i1 %i.co, label %.preheader193.lr.ph.split.us, label %.preheader193.lr.ph.sqlite3OomFault.exit_crit_edge

.preheader193.lr.ph.sqlite3OomFault.exit_crit_edge: ; preds = %.preheader193.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre232 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1999
  br label %sqlite3OomFault.exit

.preheader193.lr.ph.split.us:                     ; preds = %.preheader193.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1149
  %wide.trip.count225 = zext nneg i32 %.1129249 to i64
  br label %.preheader193.us

.preheader193.us:                                 ; preds = %.loopexit192.us, %.preheader193.lr.ph.split.us
  %indvars.iv222 = phi i64 [ %indvars.iv.next223, %.loopexit192.us ], [ 0, %.preheader193.lr.ph.split.us ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv222
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !1999 ; 3 uses
  br label %bb.v

bb.v:                                             ; preds = %.preheader193.us, %sqlite3StrICmp.exit.us
  %indvars.iv217 = phi i64 [ 0, %.preheader193.us ], [ %indvars.iv.next218, %sqlite3StrICmp.exit.us ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %indvars.iv217
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !1153
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %.013.i.us = phi ptr [ %i.cw, %bb.v ], [ %i.dg, %bb.y ] ; 2 uses
  %.012.i.us = phi ptr [ %i.cu, %bb.v ], [ %i.dh, %bb.y ] ; 2 uses
  %i.cx = load i8, ptr %.013.i.us, align 1, !tbaa !733 ; 3 uses
  %i.cy = load i8, ptr %.012.i.us, align 1, !tbaa !733 ; 2 uses
  %i.cz = icmp eq i8 %i.cx, %i.cy
  br i1 %i.cz, label %5, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = zext i8 %i.cx to i64
  %i.db = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !733
  %i.dd = zext i8 %i.cy to i64
  %i.de = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !733
  %.not.i154.us = icmp eq i8 %i.dc, %i.df
  br i1 %.not.i154.us, label %bb.y, label %sqlite3StrICmp.exit.us

5:                                                ; preds = %bb.w
  %6 = icmp eq i8 %i.cx, 0
  br i1 %6, label %sqlite3StrICmp.exit.thread.us, label %bb.y

bb.y:                                             ; preds = %5, %bb.x
  %i.dg = getelementptr inbounds nuw i8, ptr %.013.i.us, i64 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.us, i64 1
  br label %bb.w

sqlite3StrICmp.exit.us:                           ; preds = %bb.x
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220
  br i1 %exitcond221.not, label %sqlite3OomFault.exit, label %bb.v, !llvm.loop !4598

sqlite3StrICmp.exit.thread.us:                    ; preds = %5
  %i.di = trunc nuw nsw i64 %indvars.iv217 to i32
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %indvars.iv222 ; 2 uses
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !1155
  %i.dk = load i8, ptr %i.e, align 4, !tbaa !1248
  %i.dl = icmp ugt i8 %i.dk, 1
  br i1 %i.dl, label %bb.z, label %.loopexit192.us

bb.z:                                             ; preds = %sqlite3StrICmp.exit.thread.us
  %.08.i.us = load ptr, ptr %i.cp, align 8, !tbaa !2012 ; 2 uses
  %.not9.i.us = icmp eq ptr %.08.i.us, null
  br i1 %.not9.i.us, label %.loopexit192.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.z, %bb.aa
  %.010.i.us = phi ptr [ %.0.i156.us, %bb.aa ], [ %.08.i.us, %bb.z ] ; 3 uses
  %i.dm = load ptr, ptr %.010.i.us, align 8, !tbaa !2014
  %i.dn = icmp eq ptr %i.dm, %i.cu
  br i1 %i.dn, label %7, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.us
  %i.do = getelementptr inbounds nuw i8, ptr %.010.i.us, i64 24
  %.0.i156.us = load ptr, ptr %i.do, align 8, !tbaa !2012 ; 2 uses
  %.not.i157.us = icmp eq ptr %.0.i156.us, null
  br i1 %.not.i157.us, label %.loopexit192.us, label %.lr.ph.i.us, !llvm.loop !286

7:                                                ; preds = %.lr.ph.i.us
  store ptr %i.dj, ptr %.010.i.us, align 8, !tbaa !2014
  br label %.loopexit192.us

.loopexit192.us:                                  ; preds = %bb.aa, %7, %bb.z, %sqlite3StrICmp.exit.thread.us
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next223, %wide.trip.count225
  br i1 %exitcond226.not, label %.loopexit195, label %.preheader193.us, !llvm.loop !4599

8:                                                ; preds = %sqlite3Dequote.exit
  %9 = getelementptr inbounds nuw i8, ptr %i.c, i64 54
  %10 = load i16, ptr %9, align 2, !tbaa !1150
  %11 = sext i16 %10 to i32
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %i.ay, align 8, !tbaa !1155
  br label %.loopexit195

.loopexit195:                                     ; preds = %.loopexit192.us, %8
  %i.dp = icmp sgt i32 %.1129249, 0
  %or.cond = select i1 %.not148251, i1 %i.dp, i1 false
  br i1 %or.cond, label %.lr.ph211, label %.loopexit

.lr.ph211:                                        ; preds = %.loopexit195
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 416
  %wide.trip.count230 = zext nneg i32 %.1129249 to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph211, %sqlite3RenameTokenRemap.exit166
  %indvars.iv227 = phi i64 [ 0, %.lr.ph211 ], [ %indvars.iv.next228, %sqlite3RenameTokenRemap.exit166 ] ; 3 uses
  %.0127210 = phi ptr [ %i.cj, %.lr.ph211 ], [ %i.ef, %sqlite3RenameTokenRemap.exit166 ] ; 4 uses
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %3, i64 %indvars.iv227
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1999 ; 4 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %sqlite3Strlen30.exit159, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dt) #59
  %i.dw = and i64 %i.dv, 1073741823
  br label %sqlite3Strlen30.exit159

sqlite3Strlen30.exit159:                          ; preds = %bb.ab, %bb.ac
  %.0.i158 = phi i64 [ %i.dw, %bb.ac ], [ 0, %bb.ab ] ; 2 uses
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %indvars.iv227
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store ptr %.0127210, ptr %i.dy, align 8, !tbaa !2091
  %i.dz = load i8, ptr %i.e, align 4, !tbaa !1248
  %i.ea = icmp ugt i8 %i.dz, 1
  br i1 %i.ea, label %bb.ad, label %sqlite3RenameTokenRemap.exit166

bb.ad:                                            ; preds = %sqlite3Strlen30.exit159
  %.08.i160 = load ptr, ptr %i.dq, align 8, !tbaa !2012 ; 2 uses
  %.not9.i161 = icmp eq ptr %.08.i160, null
  br i1 %.not9.i161, label %sqlite3RenameTokenRemap.exit166, label %.lr.ph.i162

.lr.ph.i162:                                      ; preds = %bb.ad, %bb.af
  %.010.i163 = phi ptr [ %.0.i164, %bb.af ], [ %.08.i160, %bb.ad ] ; 3 uses
  %i.eb = load ptr, ptr %.010.i163, align 8, !tbaa !2014
  %i.ec = icmp eq ptr %i.eb, %i.dt
  br i1 %i.ec, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i162
  store ptr %.0127210, ptr %.010.i163, align 8, !tbaa !2014
  br label %sqlite3RenameTokenRemap.exit166

bb.af:                                            ; preds = %.lr.ph.i162
  %i.ed = getelementptr inbounds nuw i8, ptr %.010.i163, i64 24
  %.0.i164 = load ptr, ptr %i.ed, align 8, !tbaa !2012 ; 2 uses
  %.not.i165 = icmp eq ptr %.0.i164, null
  br i1 %.not.i165, label %sqlite3RenameTokenRemap.exit166, label %.lr.ph.i162, !llvm.loop !286

sqlite3RenameTokenRemap.exit166:                  ; preds = %bb.af, %bb.ae, %bb.ad, %sqlite3Strlen30.exit159
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0127210, ptr align 1 %i.dt, i64 %.0.i158, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %.0127210, i64 %.0.i158 ; 2 uses
  store i8 0, ptr %i.ee, align 1, !tbaa !733
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond231.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count230
  br i1 %exitcond231.not, label %.loopexit, label %bb.ab, !llvm.loop !4600

.loopexit:                                        ; preds = %sqlite3RenameTokenRemap.exit166, %.preheader194, %.loopexit195
  %i.eg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 44
  store i8 0, ptr %i.eg, align 4, !tbaa !733
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 45
  %i.ei = trunc i32 %4 to i16
  store i16 %i.ei, ptr %i.eh, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !1147
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 80
  %i.em = load ptr, ptr %i.ba, align 8, !tbaa !741
  %i.en = tail call fastcc ptr @sqlite3HashInsert(ptr noundef nonnull %i.el, ptr noundef %i.em, ptr noundef nonnull %.0.i.i) ; 4 uses
  %i.eo = icmp eq ptr %i.en, %.0.i.i
  br i1 %i.eo, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %.loopexit
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 103 ; 2 uses
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !918
  %i.er = icmp eq i8 %i.eq, 0
  br i1 %i.er, label %bb.ah, label %sqlite3OomFault.exit.thread182

bb.ah:                                            ; preds = %bb.ag
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.et = load i8, ptr %i.es, align 8, !tbaa !919
  %i.eu = icmp eq i8 %i.et, 0
  br i1 %i.eu, label %bb.ai, label %sqlite3OomFault.exit.thread182

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.ep, align 1, !tbaa !918
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !920
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store atomic volatile i32 1, ptr %i.ey monotonic, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !921
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr %i.ez, align 8, !tbaa !921
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 412
  store i16 0, ptr %i.fc, align 4, !tbaa !922
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 344 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !768 ; 2 uses
  %.not.i167 = icmp eq ptr %i.fe, null
  br i1 %.not.i167, label %sqlite3OomFault.exit.thread182, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.fe, ptr noundef nonnull @.str.125), !inline_history !48
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !768 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  store i32 7, ptr %i.fg, align 8, !tbaa !779
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.ff, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit.thread182, label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %bb.al, %.lr.ph.i168
  %.020.i169 = phi ptr [ %.0.i170, %.lr.ph.i168 ], [ %.018.i, %bb.al ] ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.020.i169, i64 52 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !780
  %i.fj = add nsw i32 %i.fi, 1
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !780
  %i.fk = getelementptr inbounds nuw i8, ptr %.020.i169, i64 24
  store i32 7, ptr %i.fk, align 8, !tbaa !779
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i169, i64 224
  %.0.i170 = load ptr, ptr %.0.in.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i170, null
  br i1 %.not16.i, label %sqlite3OomFault.exit.thread182, label %.lr.ph.i168, !llvm.loop !36

bb.am:                                            ; preds = %.loopexit
  %.not150 = icmp eq ptr %i.en, null
  br i1 %.not150, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  store ptr %i.en, ptr %i.fl, align 8, !tbaa !1982
  %i.fm = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  store ptr %.0.i.i, ptr %i.fm, align 8, !tbaa !1982
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  store ptr %.0.i.i, ptr %i.av, align 8, !tbaa !733
  br label %sqlite3DbFree.exit

sqlite3OomFault.exit:                             ; preds = %sqlite3StrICmp.exit.us, %.preheader193.lr.ph.sqlite3OomFault.exit_crit_edge
  %i.fn = phi ptr [ %.pre232, %.preheader193.lr.ph.sqlite3OomFault.exit_crit_edge ], [ %i.cu, %sqlite3StrICmp.exit.us ]
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.861, ptr noundef %i.fn)
  br label %sqlite3OomFault.exit.thread182

sqlite3OomFault.exit.thread182:                   ; preds = %.lr.ph.i168, %sqlite3OomFault.exit, %bb.ak, %bb.ah, %bb.ag, %bb.al
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.a, ptr noundef nonnull %.0.i.i)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %sqlite3DbMallocRaw.exit.i, %bb.ao, %bb.b, %bb.a, %sqlite3OomFault.exit.thread182
  %.not.i172 = icmp eq ptr %1, null
  br i1 %.not.i172, label %sqlite3ExprListDelete.exit, label %sqlite3DbFree.exit.thread

sqlite3DbFree.exit.thread:                        ; preds = %sqlite3DbFree.exit.thread189, %sqlite3DbFree.exit
  tail call fastcc void @exprListDeleteNN(ptr noundef %i.a, ptr noundef %1), !inline_history !99
  br label %sqlite3ExprListDelete.exit

sqlite3ExprListDelete.exit:                       ; preds = %bb.d, %sqlite3DbFree.exit, %sqlite3DbFree.exit.thread
  %.not.i173 = icmp eq ptr %3, null
  br i1 %.not.i173, label %sqlite3ExprListDelete.exit174, label %bb.ap

bb.ap:                                            ; preds = %sqlite3ExprListDelete.exit.thread, %sqlite3ExprListDelete.exit
  tail call fastcc void @exprListDeleteNN(ptr noundef %i.a, ptr noundef %3), !inline_history !99
  br label %sqlite3ExprListDelete.exit174

sqlite3ExprListDelete.exit174:                    ; preds = %sqlite3ExprListDelete.exit, %bb.ap
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3AddCollateType(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1250 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %sqlite3NameFromToken.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.e = load i8, ptr %i.d, align 4, !tbaa !1248
  %i.f = icmp ugt i8 %i.e, 1
  br i1 %i.f, label %sqlite3NameFromToken.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  %i.h = load i16, ptr %i.g, align 2, !tbaa !1150
  %i.i = sext i16 %i.h to i32
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !980    ; 3 uses
  %.not.i = icmp eq ptr %1, null
end_hunk_0
begin_hunk_1_@nodeAcquire:bb.a
  %i.bw = sdiv i32 %i.bs, %i.bv
  %i.bx = icmp sgt i32 %i.bq, %i.bw
  br i1 %i.bx, label %.thread129, label %.thread125

.thread144:                                       ; preds = %bb.j, %.thread, %sqlite3_malloc64.exit, %.thread109
  %.4.ph = phi i32 [ 7, %bb.j ], [ 267, %.thread ], [ 7, %sqlite3_malloc64.exit ], [ %spec.store.select, %.thread109 ]
  tail call fastcc void @nodeBlobReset(ptr noundef nonnull %0)
  br label %.sink.split

.thread125:                                       ; preds = %.thread158
  %.not.i100 = icmp eq ptr %2, null
  br i1 %.not.i100, label %nodeReference.exit, label %bb.n

bb.n:                                             ; preds = %.thread125
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !2955
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 8, !tbaa !2955
  br label %nodeReference.exit

nodeReference.exit:                               ; preds = %.thread125, %bb.n
  %i.cb = load i64, ptr %i.as, align 8, !tbaa !2956
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = urem i32 %i.cc, 97
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ce ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !2912
  store ptr %i.cg, ptr %i.au, align 8, !tbaa !2947
  store ptr %i.al, ptr %i.cf, align 8, !tbaa !2912
  br label %.sink.split

.thread129:                                       ; preds = %bb.m, %bb.l, %.thread158
  %.4133135 = phi i32 [ 267, %.thread158 ], [ %i.ax, %bb.m ], [ 267, %bb.l ] ; 3 uses
  tail call fastcc void @nodeBlobReset(ptr noundef nonnull %0)
  %i.ch = load i32, ptr %i.ap, align 4, !tbaa !2937
  %i.ci = add i32 %i.ch, -1
  store i32 %i.ci, ptr %i.ap, align 4, !tbaa !2937
  %i.cj = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i101 = icmp eq i32 %i.cj, 0
  br i1 %.not.i101, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.thread129
  %i.ck = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.cl(ptr noundef nonnull %i.ck) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.p, %bb.o
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.cn = tail call i32 %i.cm(ptr noundef nonnull %i.al) #58, !inline_history !13
  %i.co = sext i32 %i.cn to i64
  %i.cp = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.cq = sub nsw i64 %i.cp, %i.co
  store i64 %i.cq, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.cr = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.cs = add nsw i64 %i.cr, -1
  store i64 %i.cs, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ct(ptr noundef nonnull %i.al) #58, !inline_history !749
  %i.cu = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.cu, null
  br i1 %.not.i4.i, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.cv(ptr noundef nonnull %i.cu) #58, !inline_history !750
  br label %.sink.split

bb.r:                                             ; preds = %.thread129
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.cw(ptr noundef nonnull %i.al) #58, !inline_history !749
  br label %.sink.split

.sink.split:                                      ; preds = %nodeReference.exit, %sqlite3_mutex_enter.exit.i, %bb.q, %bb.r, %.thread144, %sqlite3_blob_bytes.exit, %bb.d
  %storemerge.sink = phi ptr [ %.09.i, %bb.d ], [ %i.al, %nodeReference.exit ], [ null, %.thread144 ], [ null, %bb.q ], [ null, %sqlite3_blob_bytes.exit ], [ null, %bb.r ], [ null, %sqlite3_mutex_enter.exit.i ]
  %.178.ph = phi i32 [ 0, %bb.d ], [ 0, %nodeReference.exit ], [ %.4.ph, %.thread144 ], [ %.4133135, %bb.q ], [ 267, %sqlite3_blob_bytes.exit ], [ %.4133135, %bb.r ], [ %.4133135, %sqlite3_mutex_enter.exit.i ]
  store ptr %storemerge.sink, ptr %3, align 8, !tbaa !2912
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %bb.f, %bb.c
  %.178 = phi i32 [ 267, %bb.c ], [ 7, %bb.f ], [ %.178.ph, %.sink.split ]
  ret i32 %.178
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @rtreeStepToLeaf(ptr nofree noundef captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [10 x double], align 16           ; 14 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2908   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2922 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 38
  %i.g = load i8, ptr %i.f, align 2, !tbaa !2935
  %.not183 = icmp eq i8 %i.g, 1                   ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 39 ; 2 uses
  %i.o = icmp sgt i32 %i.e, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.z = load i8, ptr %i.h, align 1, !tbaa !2932  ; 3 uses
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %bb.c, label %rtreeSearchPointFirst.exit.thread123

bb.c:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !2933
  %.not4.i = icmp eq i32 %i.aa, 0
  br i1 %.not4.i, label %.critedge, label %rtreeSearchPointFirst.exit

rtreeSearchPointFirst.exit:                       ; preds = %bb.c
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !2934 ; 2 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %.critedge, label %rtreeSearchPointFirst.exit.thread123

rtreeSearchPointFirst.exit.thread123:             ; preds = %bb.b, %rtreeSearchPointFirst.exit
  %i.ac = phi ptr [ %i.ab, %rtreeSearchPointFirst.exit ], [ %i.i, %bb.b ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 5 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !2960
  %.not81 = icmp eq i8 %i.ae, 0
  br i1 %.not81, label %.critedge, label %bb.d

bb.d:                                             ; preds = %rtreeSearchPointFirst.exit.thread123
  %i.af = zext i8 %i.z to i64
  %i.ag = sub nsw i64 1, %i.af
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ag ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2912 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.e, label %rtreeNodeOfFirstSearchPoint.exit.thread

bb.e:                                             ; preds = %bb.d
  %.not.i88 = icmp eq i8 %i.z, 1
  br i1 %.not.i88, label %rtreeNodeOfFirstSearchPoint.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !2934
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  br label %rtreeNodeOfFirstSearchPoint.exit

rtreeNodeOfFirstSearchPoint.exit:                 ; preds = %bb.f, %bb.e
  %.in.i = phi ptr [ %i.al, %bb.f ], [ %i.m, %bb.e ]
  %i.am = load i64, ptr %.in.i, align 8, !tbaa !2914
  %i.an = load ptr, ptr %0, align 8, !tbaa !2908
  %i.ao = call fastcc i32 @nodeAcquire(ptr noundef %i.an, i64 noundef %i.am, ptr noundef null, ptr noundef nonnull %i.ah), !inline_history !528 ; 2 uses
  %.pre.i = load ptr, ptr %i.ah, align 8, !tbaa !2912
  %.not82 = icmp eq i32 %i.ao, 0
  br i1 %.not82, label %rtreeNodeOfFirstSearchPoint.exit.thread, label %.thread169

rtreeNodeOfFirstSearchPoint.exit.thread:          ; preds = %bb.d, %rtreeNodeOfFirstSearchPoint.exit
  %i.ap = phi ptr [ %.pre.i, %rtreeNodeOfFirstSearchPoint.exit ], [ %i.ai, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !2917 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %.val = load i8, ptr %i.as, align 1, !tbaa !733
  %i.at = getelementptr i8, ptr %i.ar, i64 3
  %.val87 = load i8, ptr %i.at, align 1, !tbaa !733
  %i.au = zext i8 %.val to i32
  %i.av = shl nuw nsw i32 %i.au, 8
  %i.aw = zext i8 %.val87 to i32
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 5 uses
  %i.ay = icmp samesign ugt i32 %i.ax, 51
  br i1 %i.ay, label %.thread169, label %bb.g

bb.g:                                             ; preds = %rtreeNodeOfFirstSearchPoint.exit.thread
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 18 ; 5 uses
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !2919 ; 3 uses
  %i.bb = zext i8 %i.ba to i32
  %i.bc = icmp samesign ugt i32 %i.ax, %i.bb
  br i1 %i.bc, label %.preheader.lr.ph, label %.loopexit185.thread

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.bd = zext i8 %i.ba to i64
  %i.be = load i8, ptr %i.n, align 1, !tbaa !2918
  %i.bf = zext i8 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ac, i64 17
  br i1 %i.o, label %.preheader.us, label %._crit_edge.split.us

.preheader.us:                                    ; preds = %.preheader.lr.ph, %rtreeLeafConstraint.exit.thread.us
  %.062205.us = phi ptr [ %i.po, %rtreeLeafConstraint.exit.thread.us ], [ %i.bi, %.preheader.lr.ph ] ; 46 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.062205.us, i64 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.062205.us, i64 2
  %i.bm = getelementptr inbounds nuw i8, ptr %.062205.us, i64 3
  %i.bn = getelementptr inbounds nuw i8, ptr %.062205.us, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %.062205.us, i64 5
  %i.bp = getelementptr inbounds nuw i8, ptr %.062205.us, i64 6
  %i.bq = getelementptr inbounds nuw i8, ptr %.062205.us, i64 7
  %i.br = getelementptr inbounds nuw i8, ptr %.062205.us, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.062205.us, i64 44 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.062205.us, i64 45 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.062205.us, i64 46 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.062205.us, i64 47 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.062205.us, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.062205.us, i64 41 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.062205.us, i64 42 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.062205.us, i64 43 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.062205.us, i64 36 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.062205.us, i64 37 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.062205.us, i64 38 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.062205.us, i64 39 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.062205.us, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.062205.us, i64 33 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.062205.us, i64 34 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.062205.us, i64 35 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.062205.us, i64 28 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.062205.us, i64 29 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.062205.us, i64 30 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.062205.us, i64 31 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.062205.us, i64 24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.062205.us, i64 25 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.062205.us, i64 26 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.062205.us, i64 27 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.062205.us, i64 20 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.062205.us, i64 21 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.062205.us, i64 22 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.062205.us, i64 23 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.062205.us, i64 16 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.062205.us, i64 17 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.062205.us, i64 18 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.062205.us, i64 19 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.062205.us, i64 12 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader.us, %rtreeLeafConstraint.exit.thread175.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %rtreeLeafConstraint.exit.thread175.us ] ; 2 uses
  %.097196.us = phi double [ -1.000000e+00, %.preheader.us ], [ %.198181.us, %rtreeLeafConstraint.exit.thread175.us ] ; 13 uses
  %.0112195.us = phi i32 [ 2, %.preheader.us ], [ %.1113179.us, %rtreeLeafConstraint.exit.thread175.us ] ; 12 uses
  %i.cz = load ptr, ptr %i.p, align 8, !tbaa !2921
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %i.cz, i64 %indvars.iv ; 13 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !2926 ; 3 uses
  %i.dd = icmp sgt i32 %i.dc, 69
  br i1 %i.dd, label %bb.i, label %1

1:                                                ; preds = %bb.h
  %2 = load i8, ptr %i.ad, align 8, !tbaa !2960
  %3 = icmp eq i8 %2, 1
  %4 = load i32, ptr %i.da, align 8, !tbaa !2927
  %5 = shl i32 %4, 2                              ; 2 uses
  br i1 %3, label %47, label %6

6:                                                ; preds = %1
  %7 = and i32 %5, 1016
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds nuw i8, ptr %.062205.us, i64 %8 ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  switch i32 %i.dc, label %37 [
    i32 63, label %rtreeLeafConstraint.exit.thread175.us
    i32 64, label %rtreeLeafConstraint.exit.thread.us
    i32 65, label %20
    i32 66, label %11
    i32 67, label %11
  ]

11:                                               ; preds = %6, %6
  %.sroa.05.0.copyload40.i.us = load i32, ptr %10, align 1
  %12 = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload40.i.us) ; 2 uses
  %13 = bitcast i32 %12 to float
  %14 = sitofp i32 %12 to double
  %15 = fpext float %13 to double
  %16 = select i1 %.not183, double %14, double %15
  %17 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %18 = load double, ptr %17, align 8, !tbaa !733
  %19 = fcmp ult double %18, %16
  br i1 %19, label %rtreeLeafConstraint.exit.thread.us, label %rtreeLeafConstraint.exit.thread175.us

20:                                               ; preds = %6
  %.sroa.015.0.copyload41.i.us = load i32, ptr %10, align 1
  %21 = call i32 @llvm.bswap.i32(i32 %.sroa.015.0.copyload41.i.us) ; 2 uses
  %22 = bitcast i32 %21 to float
  %23 = sitofp i32 %21 to double
  %24 = fpext float %22 to double
  %25 = select i1 %.not183, double %23, double %24
  %26 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %27 = load double, ptr %26, align 8, !tbaa !733 ; 2 uses
  %28 = fcmp ult double %27, %25
  br i1 %28, label %rtreeLeafConstraint.exit.thread.us, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %.sroa.010.0.copyload43.i.us = load i32, ptr %30, align 1
  %31 = call i32 @llvm.bswap.i32(i32 %.sroa.010.0.copyload43.i.us) ; 2 uses
  %32 = bitcast i32 %31 to float
  %33 = sitofp i32 %31 to double
  %34 = fpext float %32 to double
  %35 = select i1 %.not183, double %33, double %34
  %36 = fcmp ugt double %27, %35
  br i1 %36, label %rtreeLeafConstraint.exit.thread.us, label %rtreeLeafConstraint.exit.thread175.us

37:                                               ; preds = %6
  %38 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %.sroa.0.0.copyload44.i.us = load i32, ptr %38, align 1
  %39 = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload44.i.us) ; 2 uses
  %40 = bitcast i32 %39 to float
  %41 = sitofp i32 %39 to double
  %42 = fpext float %40 to double
  %43 = select i1 %.not183, double %41, double %42
  %44 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %45 = load double, ptr %44, align 8, !tbaa !733
  %46 = fcmp ugt double %45, %43
  br i1 %46, label %rtreeLeafConstraint.exit.thread.us, label %rtreeLeafConstraint.exit.thread175.us

47:                                               ; preds = %1
  %48 = sext i32 %5 to i64
  %49 = getelementptr i8, ptr %.062205.us, i64 %48
  %50 = getelementptr i8, ptr %49, i64 8
  %.sroa.0.0.copyload19.i.us = load i32, ptr %50, align 1
  %51 = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload19.i.us) ; 2 uses
  %52 = bitcast i32 %51 to float
  %53 = sitofp i32 %51 to double
  %54 = fpext float %52 to double
  %55 = select i1 %.not183, double %53, double %54 ; 5 uses
  switch i32 %i.dc, label %72 [
    i32 63, label %rtreeLeafConstraint.exit.thread175.us
    i32 64, label %rtreeLeafConstraint.exit.thread.us
    i32 66, label %68
    i32 67, label %64
    i32 68, label %60
    i32 69, label %56
  ]

56:                                               ; preds = %47
  %57 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %58 = load double, ptr %57, align 8, !tbaa !733
  %59 = fcmp ogt double %55, %58
  br i1 %59, label %rtreeLeafConstraint.exit.thread175.us, label %rtreeLeafConstraint.exit.thread.us

60:                                               ; preds = %47
  %61 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %62 = load double, ptr %61, align 8, !tbaa !733
  %63 = fcmp ult double %55, %62
  br i1 %63, label %rtreeLeafConstraint.exit.thread.us, label %rtreeLeafConstraint.exit.thread175.us

64:                                               ; preds = %47
  %65 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %66 = load double, ptr %65, align 8, !tbaa !733
  %67 = fcmp olt double %55, %66
  br i1 %67, label %rtreeLeafConstraint.exit.thread175.us, label %rtreeLeafConstraint.exit.thread.us

68:                                               ; preds = %47
  %69 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %70 = load double, ptr %69, align 8, !tbaa !733
  %71 = fcmp ugt double %55, %70
  br i1 %71, label %rtreeLeafConstraint.exit.thread.us, label %rtreeLeafConstraint.exit.thread175.us

72:                                               ; preds = %47
  %73 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %74 = load double, ptr %73, align 8, !tbaa !733
  %75 = fcmp oeq double %55, %74
  br i1 %75, label %rtreeLeafConstraint.exit.thread175.us, label %rtreeLeafConstraint.exit.thread.us

bb.i:                                             ; preds = %bb.h
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !2929 ; 10 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !2930 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.di = load i32, ptr %i.db, align 4, !tbaa !2926 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 71
  br i1 %i.dj, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dk = load i8, ptr %i.ad, align 8, !tbaa !2960
  %i.dl = icmp eq i8 %i.dk, 1
  br i1 %i.dl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dm = load i8, ptr %.062205.us, align 1, !tbaa !733
  %i.dn = zext i8 %i.dm to i64
  %i.do = shl nuw i64 %i.dn, 56
  %i.dp = load i8, ptr %i.bk, align 1, !tbaa !733
  %i.dq = zext i8 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 48
  %i.ds = or disjoint i64 %i.dr, %i.do
  %i.dt = load i8, ptr %i.bl, align 1, !tbaa !733
  %i.du = zext i8 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 40
  %i.dw = or disjoint i64 %i.ds, %i.dv
  %i.dx = load i8, ptr %i.bm, align 1, !tbaa !733
  %i.dy = zext i8 %i.dx to i64
  %i.dz = shl nuw nsw i64 %i.dy, 32
  %i.ea = or disjoint i64 %i.dw, %i.dz
  %i.eb = load i8, ptr %i.bn, align 1, !tbaa !733
  %i.ec = zext i8 %i.eb to i64
  %i.ed = shl nuw nsw i64 %i.ec, 24
  %i.ee = or disjoint i64 %i.ea, %i.ed
  %i.ef = load i8, ptr %i.bo, align 1, !tbaa !733
  %i.eg = zext i8 %i.ef to i64
  %i.eh = shl nuw nsw i64 %i.eg, 16
  %i.ei = or disjoint i64 %i.ee, %i.eh
  %i.ej = load i8, ptr %i.bp, align 1, !tbaa !733
  %i.ek = zext i8 %i.ej to i64
  %i.el = shl nuw nsw i64 %i.ek, 8
  %i.em = or disjoint i64 %i.ei, %i.el
  %i.en = load i8, ptr %i.bq, align 1, !tbaa !733
  %i.eo = zext i8 %i.en to i64
  %i.ep = add nuw i64 %i.em, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !6632
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not183, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i32 %i.dh, label %bb.r [
    i32 10, label %bb.n
    i32 8, label %bb.o
    i32 6, label %bb.p
    i32 4, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.er = load i8, ptr %i.bs, align 1, !tbaa !733
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw i32 %i.es, 24
  %i.eu = load i8, ptr %i.bt, align 1, !tbaa !733
  %i.ev = zext i8 %i.eu to i32
  %i.ew = shl nuw nsw i32 %i.ev, 16
  %i.ex = or disjoint i32 %i.ew, %i.et
  %i.ey = load i8, ptr %i.bu, align 1, !tbaa !733
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 8
  %i.fb = or disjoint i32 %i.ex, %i.fa
  %i.fc = load i8, ptr %i.bv, align 1, !tbaa !733
  %i.fd = zext i8 %i.fc to i32
  %i.fe = or disjoint i32 %i.fb, %i.fd
  %i.ff = bitcast i32 %i.fe to float
  %i.fg = fpext float %i.ff to double
  store double %i.fg, ptr %i.q, align 8, !tbaa !782
  %i.fh = load i8, ptr %i.bw, align 1, !tbaa !733
  %i.fi = zext i8 %i.fh to i32
  %i.fj = shl nuw i32 %i.fi, 24
  %i.fk = load i8, ptr %i.bx, align 1, !tbaa !733
  %i.fl = zext i8 %i.fk to i32
  %i.fm = shl nuw nsw i32 %i.fl, 16
  %i.fn = or disjoint i32 %i.fm, %i.fj
  %i.fo = load i8, ptr %i.by, align 1, !tbaa !733
  %i.fp = zext i8 %i.fo to i32
  %i.fq = shl nuw nsw i32 %i.fp, 8
  %i.fr = or disjoint i32 %i.fn, %i.fq
  %i.fs = load i8, ptr %i.bz, align 1, !tbaa !733
  %i.ft = zext i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fr, %i.ft
  %i.fv = bitcast i32 %i.fu to float
  %i.fw = fpext float %i.fv to double
  store double %i.fw, ptr %i.r, align 16, !tbaa !782
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fx = load i8, ptr %i.ca, align 1, !tbaa !733
  %i.fy = zext i8 %i.fx to i32
  %i.fz = shl nuw i32 %i.fy, 24
  %i.ga = load i8, ptr %i.cb, align 1, !tbaa !733
  %i.gb = zext i8 %i.ga to i32
  %i.gc = shl nuw nsw i32 %i.gb, 16
  %i.gd = or disjoint i32 %i.gc, %i.fz
  %i.ge = load i8, ptr %i.cc, align 1, !tbaa !733
  %i.gf = zext i8 %i.ge to i32
  %i.gg = shl nuw nsw i32 %i.gf, 8
  %i.gh = or disjoint i32 %i.gd, %i.gg
  %i.gi = load i8, ptr %i.cd, align 1, !tbaa !733
  %i.gj = zext i8 %i.gi to i32
  %i.gk = or disjoint i32 %i.gh, %i.gj
  %i.gl = bitcast i32 %i.gk to float
  %i.gm = fpext float %i.gl to double
  store double %i.gm, ptr %i.s, align 8, !tbaa !782
  %i.gn = load i8, ptr %i.ce, align 1, !tbaa !733
  %i.go = zext i8 %i.gn to i32
  %i.gp = shl nuw i32 %i.go, 24
  %i.gq = load i8, ptr %i.cf, align 1, !tbaa !733
  %i.gr = zext i8 %i.gq to i32
  %i.gs = shl nuw nsw i32 %i.gr, 16
  %i.gt = or disjoint i32 %i.gs, %i.gp
  %i.gu = load i8, ptr %i.cg, align 1, !tbaa !733
  %i.gv = zext i8 %i.gu to i32
  %i.gw = shl nuw nsw i32 %i.gv, 8
  %i.gx = or disjoint i32 %i.gt, %i.gw
  %i.gy = load i8, ptr %i.ch, align 1, !tbaa !733
  %i.gz = zext i8 %i.gy to i32
  %i.ha = or disjoint i32 %i.gx, %i.gz
  %i.hb = bitcast i32 %i.ha to float
  %i.hc = fpext float %i.hb to double
  store double %i.hc, ptr %i.t, align 16, !tbaa !782
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.hd = load i8, ptr %i.ci, align 1, !tbaa !733
  %i.he = zext i8 %i.hd to i32
  %i.hf = shl nuw i32 %i.he, 24
  %i.hg = load i8, ptr %i.cj, align 1, !tbaa !733
  %i.hh = zext i8 %i.hg to i32
  %i.hi = shl nuw nsw i32 %i.hh, 16
  %i.hj = or disjoint i32 %i.hi, %i.hf
  %i.hk = load i8, ptr %i.ck, align 1, !tbaa !733
  %i.hl = zext i8 %i.hk to i32
  %i.hm = shl nuw nsw i32 %i.hl, 8
  %i.hn = or disjoint i32 %i.hj, %i.hm
  %i.ho = load i8, ptr %i.cl, align 1, !tbaa !733
  %i.hp = zext i8 %i.ho to i32
  %i.hq = or disjoint i32 %i.hn, %i.hp
  %i.hr = bitcast i32 %i.hq to float
  %i.hs = fpext float %i.hr to double
  store double %i.hs, ptr %i.u, align 8, !tbaa !782
  %i.ht = load i8, ptr %i.cm, align 1, !tbaa !733
  %i.hu = zext i8 %i.ht to i32
  %i.hv = shl nuw i32 %i.hu, 24
  %i.hw = load i8, ptr %i.cn, align 1, !tbaa !733
  %i.hx = zext i8 %i.hw to i32
  %i.hy = shl nuw nsw i32 %i.hx, 16
  %i.hz = or disjoint i32 %i.hy, %i.hv
  %i.ia = load i8, ptr %i.co, align 1, !tbaa !733
  %i.ib = zext i8 %i.ia to i32
  %i.ic = shl nuw nsw i32 %i.ib, 8
  %i.id = or disjoint i32 %i.hz, %i.ic
  %i.ie = load i8, ptr %i.cp, align 1, !tbaa !733
  %i.if = zext i8 %i.ie to i32
  %i.ig = or disjoint i32 %i.id, %i.if
  %i.ih = bitcast i32 %i.ig to float
  %i.ii = fpext float %i.ih to double
  store double %i.ii, ptr %i.v, align 16, !tbaa !782
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %i.ij = load i8, ptr %i.cq, align 1, !tbaa !733
  %i.ik = zext i8 %i.ij to i32
  %i.il = shl nuw i32 %i.ik, 24
  %i.im = load i8, ptr %i.cr, align 1, !tbaa !733
  %i.in = zext i8 %i.im to i32
  %i.io = shl nuw nsw i32 %i.in, 16
  %i.ip = or disjoint i32 %i.io, %i.il
  %i.iq = load i8, ptr %i.cs, align 1, !tbaa !733
  %i.ir = zext i8 %i.iq to i32
  %i.is = shl nuw nsw i32 %i.ir, 8
  %i.it = or disjoint i32 %i.ip, %i.is
  %i.iu = load i8, ptr %i.ct, align 1, !tbaa !733
  %i.iv = zext i8 %i.iu to i32
  %i.iw = or disjoint i32 %i.it, %i.iv
  %i.ix = bitcast i32 %i.iw to float
  %i.iy = fpext float %i.ix to double
  store double %i.iy, ptr %i.w, align 8, !tbaa !782
  %i.iz = load i8, ptr %i.cu, align 1, !tbaa !733
  %i.ja = zext i8 %i.iz to i32
  %i.jb = shl nuw i32 %i.ja, 24
  %i.jc = load i8, ptr %i.cv, align 1, !tbaa !733
  %i.jd = zext i8 %i.jc to i32
  %i.je = shl nuw nsw i32 %i.jd, 16
  %i.jf = or disjoint i32 %i.je, %i.jb
  %i.jg = load i8, ptr %i.cw, align 1, !tbaa !733
  %i.jh = zext i8 %i.jg to i32
  %i.ji = shl nuw nsw i32 %i.jh, 8
  %i.jj = or disjoint i32 %i.jf, %i.ji
  %i.jk = load i8, ptr %i.cx, align 1, !tbaa !733
  %i.jl = zext i8 %i.jk to i32
  %i.jm = or disjoint i32 %i.jj, %i.jl
  %i.jn = bitcast i32 %i.jm to float
  %i.jo = fpext float %i.jn to double
  store double %i.jo, ptr %i.x, align 16, !tbaa !782
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %i.jp = load i32, ptr %i.cy, align 1
  %i.jq = call i32 @llvm.bswap.i32(i32 %i.jp)
  %i.jr = bitcast i32 %i.jq to float
  %i.js = fpext float %i.jr to double
  store double %i.js, ptr %i.y, align 8, !tbaa !782
  %i.jt = load i32, ptr %i.br, align 1
  %i.ju = call i32 @llvm.bswap.i32(i32 %i.jt)
  %i.jv = bitcast i32 %i.ju to float
  %i.jw = fpext float %i.jv to double
  br label %bb.y

bb.s:                                             ; preds = %bb.l
  switch i32 %i.dh, label %bb.x [
    i32 10, label %bb.t
    i32 8, label %bb.u
    i32 6, label %bb.v
    i32 4, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  %i.jx = load i8, ptr %i.bs, align 1, !tbaa !733
  %i.jy = zext i8 %i.jx to i32
  %i.jz = shl nuw i32 %i.jy, 24
  %i.ka = load i8, ptr %i.bt, align 1, !tbaa !733
  %i.kb = zext i8 %i.ka to i32
  %i.kc = shl nuw nsw i32 %i.kb, 16
  %i.kd = or disjoint i32 %i.kc, %i.jz
  %i.ke = load i8, ptr %i.bu, align 1, !tbaa !733
  %i.kf = zext i8 %i.ke to i32
  %i.kg = shl nuw nsw i32 %i.kf, 8
  %i.kh = or disjoint i32 %i.kd, %i.kg
  %i.ki = load i8, ptr %i.bv, align 1, !tbaa !733
  %i.kj = zext i8 %i.ki to i32
  %i.kk = or disjoint i32 %i.kh, %i.kj
  %i.kl = sitofp i32 %i.kk to double
  store double %i.kl, ptr %i.q, align 8, !tbaa !782
  %i.km = load i8, ptr %i.bw, align 1, !tbaa !733
  %i.kn = zext i8 %i.km to i32
  %i.ko = shl nuw i32 %i.kn, 24
  %i.kp = load i8, ptr %i.bx, align 1, !tbaa !733
  %i.kq = zext i8 %i.kp to i32
  %i.kr = shl nuw nsw i32 %i.kq, 16
  %i.ks = or disjoint i32 %i.kr, %i.ko
  %i.kt = load i8, ptr %i.by, align 1, !tbaa !733
  %i.ku = zext i8 %i.kt to i32
  %i.kv = shl nuw nsw i32 %i.ku, 8
  %i.kw = or disjoint i32 %i.ks, %i.kv
  %i.kx = load i8, ptr %i.bz, align 1, !tbaa !733
  %i.ky = zext i8 %i.kx to i32
  %i.kz = or disjoint i32 %i.kw, %i.ky
  %i.la = sitofp i32 %i.kz to double
  store double %i.la, ptr %i.r, align 16, !tbaa !782
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.lb = load i8, ptr %i.ca, align 1, !tbaa !733
  %i.lc = zext i8 %i.lb to i32
  %i.ld = shl nuw i32 %i.lc, 24
  %i.le = load i8, ptr %i.cb, align 1, !tbaa !733
  %i.lf = zext i8 %i.le to i32
  %i.lg = shl nuw nsw i32 %i.lf, 16
  %i.lh = or disjoint i32 %i.lg, %i.ld
  %i.li = load i8, ptr %i.cc, align 1, !tbaa !733
  %i.lj = zext i8 %i.li to i32
  %i.lk = shl nuw nsw i32 %i.lj, 8
  %i.ll = or disjoint i32 %i.lh, %i.lk
  %i.lm = load i8, ptr %i.cd, align 1, !tbaa !733
  %i.ln = zext i8 %i.lm to i32
  %i.lo = or disjoint i32 %i.ll, %i.ln
  %i.lp = sitofp i32 %i.lo to double
  store double %i.lp, ptr %i.s, align 8, !tbaa !782
  %i.lq = load i8, ptr %i.ce, align 1, !tbaa !733
  %i.lr = zext i8 %i.lq to i32
  %i.ls = shl nuw i32 %i.lr, 24
  %i.lt = load i8, ptr %i.cf, align 1, !tbaa !733
  %i.lu = zext i8 %i.lt to i32
  %i.lv = shl nuw nsw i32 %i.lu, 16
  %i.lw = or disjoint i32 %i.lv, %i.ls
  %i.lx = load i8, ptr %i.cg, align 1, !tbaa !733
  %i.ly = zext i8 %i.lx to i32
  %i.lz = shl nuw nsw i32 %i.ly, 8
  %i.ma = or disjoint i32 %i.lw, %i.lz
  %i.mb = load i8, ptr %i.ch, align 1, !tbaa !733
  %i.mc = zext i8 %i.mb to i32
  %i.md = or disjoint i32 %i.ma, %i.mc
  %i.me = sitofp i32 %i.md to double
  store double %i.me, ptr %i.t, align 16, !tbaa !782
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.mf = load i8, ptr %i.ci, align 1, !tbaa !733
  %i.mg = zext i8 %i.mf to i32
  %i.mh = shl nuw i32 %i.mg, 24
  %i.mi = load i8, ptr %i.cj, align 1, !tbaa !733
  %i.mj = zext i8 %i.mi to i32
  %i.mk = shl nuw nsw i32 %i.mj, 16
  %i.ml = or disjoint i32 %i.mk, %i.mh
  %i.mm = load i8, ptr %i.ck, align 1, !tbaa !733
  %i.mn = zext i8 %i.mm to i32
  %i.mo = shl nuw nsw i32 %i.mn, 8
  %i.mp = or disjoint i32 %i.ml, %i.mo
  %i.mq = load i8, ptr %i.cl, align 1, !tbaa !733
  %i.mr = zext i8 %i.mq to i32
  %i.ms = or disjoint i32 %i.mp, %i.mr
  %i.mt = sitofp i32 %i.ms to double
  store double %i.mt, ptr %i.u, align 8, !tbaa !782
  %i.mu = load i8, ptr %i.cm, align 1, !tbaa !733
  %i.mv = zext i8 %i.mu to i32
  %i.mw = shl nuw i32 %i.mv, 24
  %i.mx = load i8, ptr %i.cn, align 1, !tbaa !733
  %i.my = zext i8 %i.mx to i32
  %i.mz = shl nuw nsw i32 %i.my, 16
  %i.na = or disjoint i32 %i.mz, %i.mw
  %i.nb = load i8, ptr %i.co, align 1, !tbaa !733
  %i.nc = zext i8 %i.nb to i32
  %i.nd = shl nuw nsw i32 %i.nc, 8
  %i.ne = or disjoint i32 %i.na, %i.nd
  %i.nf = load i8, ptr %i.cp, align 1, !tbaa !733
  %i.ng = zext i8 %i.nf to i32
  %i.nh = or disjoint i32 %i.ne, %i.ng
  %i.ni = sitofp i32 %i.nh to double
  store double %i.ni, ptr %i.v, align 16, !tbaa !782
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.nj = load i8, ptr %i.cq, align 1, !tbaa !733
  %i.nk = zext i8 %i.nj to i32
  %i.nl = shl nuw i32 %i.nk, 24
  %i.nm = load i8, ptr %i.cr, align 1, !tbaa !733
  %i.nn = zext i8 %i.nm to i32
  %i.no = shl nuw nsw i32 %i.nn, 16
  %i.np = or disjoint i32 %i.no, %i.nl
  %i.nq = load i8, ptr %i.cs, align 1, !tbaa !733
  %i.nr = zext i8 %i.nq to i32
  %i.ns = shl nuw nsw i32 %i.nr, 8
  %i.nt = or disjoint i32 %i.np, %i.ns
  %i.nu = load i8, ptr %i.ct, align 1, !tbaa !733
  %i.nv = zext i8 %i.nu to i32
  %i.nw = or disjoint i32 %i.nt, %i.nv
  %i.nx = sitofp i32 %i.nw to double
  store double %i.nx, ptr %i.w, align 8, !tbaa !782
  %i.ny = load i8, ptr %i.cu, align 1, !tbaa !733
  %i.nz = zext i8 %i.ny to i32
  %i.oa = shl nuw i32 %i.nz, 24
  %i.ob = load i8, ptr %i.cv, align 1, !tbaa !733
  %i.oc = zext i8 %i.ob to i32
  %i.od = shl nuw nsw i32 %i.oc, 16
  %i.oe = or disjoint i32 %i.od, %i.oa
  %i.of = load i8, ptr %i.cw, align 1, !tbaa !733
  %i.og = zext i8 %i.of to i32
  %i.oh = shl nuw nsw i32 %i.og, 8
  %i.oi = or disjoint i32 %i.oe, %i.oh
  %i.oj = load i8, ptr %i.cx, align 1, !tbaa !733
  %i.ok = zext i8 %i.oj to i32
  %i.ol = or disjoint i32 %i.oi, %i.ok
  %i.om = sitofp i32 %i.ol to double
  store double %i.om, ptr %i.x, align 16, !tbaa !782
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %i.on = load i32, ptr %i.cy, align 1
  %i.oo = call i32 @llvm.bswap.i32(i32 %i.on)
  %i.op = sitofp i32 %i.oo to double
  store double %i.op, ptr %i.y, align 8, !tbaa !782
  %i.oq = load i32, ptr %i.br, align 1
  %i.or = call i32 @llvm.bswap.i32(i32 %i.oq)
  %i.os = sitofp i32 %i.or to double
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.r
  %storemerge.i.us = phi double [ %i.os, %bb.x ], [ %i.jw, %bb.r ]
  store double %storemerge.i.us, ptr %i.a, align 16, !tbaa !782
  %i.ot = icmp eq i32 %i.di, 70
  br i1 %i.ot, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ou = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  store ptr %i.a, ptr %i.ou, align 8, !tbaa !6633
  %i.ov = load i8, ptr %i.ad, align 8, !tbaa !2960
  %i.ow = zext i8 %i.ov to i32
  %i.ox = add nsw i32 %i.ow, -1
  %i.oy = getelementptr inbounds nuw i8, ptr %i.df, i64 60
  store i32 %i.ox, ptr %i.oy, align 4, !tbaa !6634
  %i.oz = load double, ptr %i.ac, align 8, !tbaa !2959 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.df, i64 80
  store double %i.oz, ptr %i.pa, align 8, !tbaa !6635
  %i.pb = getelementptr inbounds nuw i8, ptr %i.df, i64 96 ; 2 uses
  store double %i.oz, ptr %i.pb, align 8, !tbaa !6636
  %i.pc = load i8, ptr %i.bj, align 1, !tbaa !2915
  %i.pd = zext i8 %i.pc to i32                    ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.df, i64 88
  store i32 %i.pd, ptr %i.pe, align 8, !tbaa !6637
  %i.pf = getelementptr inbounds nuw i8, ptr %i.df, i64 92 ; 2 uses
  store i32 %i.pd, ptr %i.pf, align 4, !tbaa !6638
  %i.pg = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !733
  %i.pi = call i32 %i.ph(ptr noundef nonnull %i.df) #58, !inline_history !6628 ; 2 uses
  %i.pj = load i32, ptr %i.pf, align 4, !tbaa !6638
  %spec.select182.us = call i32 @llvm.smin.i32(i32 %i.pj, i32 %.0112195.us) ; 2 uses
  %i.pk = load double, ptr %i.pb, align 8, !tbaa !6636 ; 2 uses
  %i.pl = fcmp olt double %i.pk, %.097196.us
  %i.pm = fcmp olt double %.097196.us, 0.000000e+00
  %or.cond.i.us = or i1 %i.pm, %i.pl
  br i1 %or.cond.i.us, label %bb.aa, label %rtreeCallbackConstraint.exit.us

bb.aa:                                            ; preds = %bb.z
  br label %rtreeCallbackConstraint.exit.us

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  store i32 0, ptr %i.b, align 4, !tbaa !570
  %i.pn = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %76 = load ptr, ptr %i.pn, align 8, !tbaa !733
  %77 = call i32 %76(ptr noundef nonnull %i.df, i32 noundef %i.dh, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #58, !inline_history !6628
  %78 = load i32, ptr %i.b, align 4, !tbaa !570
  %79 = icmp eq i32 %78, 0
  %spec.select.us = select i1 %79, i32 0, i32 %.0112195.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  br label %rtreeCallbackConstraint.exit.us

rtreeCallbackConstraint.exit.us:                  ; preds = %bb.ab, %bb.aa, %bb.z
  %.6118.us = phi i32 [ %spec.select.us, %bb.ab ], [ %spec.select182.us, %bb.aa ], [ %spec.select182.us, %bb.z ] ; 2 uses
  %.5102.us = phi double [ 0.000000e+00, %bb.ab ], [ %i.pk, %bb.aa ], [ %.097196.us, %bb.z ]
  %.0.i.us = phi i32 [ %77, %bb.ab ], [ %i.pi, %bb.aa ], [ %i.pi, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %.not83.us = icmp eq i32 %.0.i.us, 0
  br i1 %.not83.us, label %rtreeLeafConstraint.exit.us, label %.thread169

rtreeLeafConstraint.exit.us:                      ; preds = %rtreeCallbackConstraint.exit.us
  %80 = icmp eq i32 %.6118.us, 0
  br i1 %80, label %rtreeLeafConstraint.exit.thread.us, label %rtreeLeafConstraint.exit.thread175.us

rtreeLeafConstraint.exit.thread175.us:            ; preds = %rtreeLeafConstraint.exit.us, %72, %68, %64, %60, %56, %47, %37, %29, %11, %6
  %.198181.us = phi double [ %.5102.us, %rtreeLeafConstraint.exit.us ], [ %.097196.us, %56 ], [ %.097196.us, %72 ], [ %.097196.us, %29 ], [ %.097196.us, %47 ], [ %.097196.us, %68 ], [ %.097196.us, %64 ], [ %.097196.us, %60 ], [ %.097196.us, %11 ], [ %.097196.us, %37 ], [ %.097196.us, %6 ] ; 2 uses
  %.1113179.us = phi i32 [ %.6118.us, %rtreeLeafConstraint.exit.us ], [ %.0112195.us, %56 ], [ %.0112195.us, %72 ], [ %.0112195.us, %29 ], [ %.0112195.us, %47 ], [ %.0112195.us, %68 ], [ %.0112195.us, %64 ], [ %.0112195.us, %60 ], [ %.0112195.us, %11 ], [ %.0112195.us, %37 ], [ %.0112195.us, %6 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split.us.loopexit, label %bb.h, !llvm.loop !6629

rtreeLeafConstraint.exit.thread.us:               ; preds = %rtreeLeafConstraint.exit.us, %72, %68, %64, %60, %56, %47, %37, %29, %20, %11, %6
  %81 = load i8, ptr %i.az, align 2, !tbaa !2919
  %82 = add i8 %81, 1                             ; 2 uses
  store i8 %82, ptr %i.az, align 2, !tbaa !2919
  %83 = load i8, ptr %i.n, align 1, !tbaa !2918
  %84 = zext i8 %83 to i64
  %i.po = getelementptr inbounds nuw i8, ptr %.062205.us, i64 %84
  %85 = zext i8 %82 to i32
  %86 = icmp samesign ugt i32 %i.ax, %85
  br i1 %86, label %.preheader.us, label %.loopexit185.thread

._crit_edge.split.us.loopexit:                    ; preds = %rtreeLeafConstraint.exit.thread175.us
  %.pre = load i8, ptr %i.az, align 2, !tbaa !2919
  %i.pp = trunc i32 %.1113179.us to i8
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %._crit_edge.split.us.loopexit, %.preheader.lr.ph
  %i.pq = phi i8 [ %i.ba, %.preheader.lr.ph ], [ %.pre, %._crit_edge.split.us.loopexit ] ; 2 uses
  %.062.lcssa193 = phi ptr [ %i.bi, %.preheader.lr.ph ], [ %.062205.us, %._crit_edge.split.us.loopexit ] ; 8 uses
  %.0112.lcssa = phi i8 [ 2, %.preheader.lr.ph ], [ %i.pp, %._crit_edge.split.us.loopexit ]
  %.097.lcssa = phi double [ -1.000000e+00, %.preheader.lr.ph ], [ %.198181.us, %._crit_edge.split.us.loopexit ] ; 2 uses
  %i.pr = add i8 %i.pq, 1                         ; 2 uses
  store i8 %i.pr, ptr %i.az, align 2, !tbaa !2919
  %i.ps = load i8, ptr %i.ad, align 8, !tbaa !2960
  %i.pt = add i8 %i.ps, -1                        ; 2 uses
  %.not84 = icmp eq i8 %i.pt, 0
  br i1 %.not84, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.split.us
  %i.pu = load i8, ptr %.062.lcssa193, align 1, !tbaa !733
  %i.pv = zext i8 %i.pu to i64
  %i.pw = shl nuw i64 %i.pv, 56
  %i.px = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 1
  %i.py = load i8, ptr %i.px, align 1, !tbaa !733
  %i.pz = zext i8 %i.py to i64
  %i.qa = shl nuw nsw i64 %i.pz, 48
  %i.qb = or disjoint i64 %i.qa, %i.pw
  %i.qc = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 2
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !733
  %i.qe = zext i8 %i.qd to i64
  %i.qf = shl nuw nsw i64 %i.qe, 40
  %i.qg = or disjoint i64 %i.qb, %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 3
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !733
  %i.qj = zext i8 %i.qi to i64
  %i.qk = shl nuw nsw i64 %i.qj, 32
  %i.ql = or disjoint i64 %i.qg, %i.qk
  %i.qm = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 4
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !733
  %i.qo = zext i8 %i.qn to i64
  %i.qp = shl nuw nsw i64 %i.qo, 24
  %i.qq = or disjoint i64 %i.ql, %i.qp
  %i.qr = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 5
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !733
  %i.qt = zext i8 %i.qs to i64
  %i.qu = shl nuw nsw i64 %i.qt, 16
  %i.qv = or disjoint i64 %i.qq, %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 6
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !733
  %i.qy = zext i8 %i.qx to i64
  %i.qz = shl nuw nsw i64 %i.qy, 8
  %i.ra = or disjoint i64 %i.qv, %i.qz
  %i.rb = getelementptr inbounds nuw i8, ptr %.062.lcssa193, i64 7
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !733
  %i.rd = zext i8 %i.rc to i64
  %i.re = add nuw i64 %i.ra, %i.rd                ; 3 uses
  %i.rf = load i32, ptr %i.j, align 4, !tbaa !2933 ; 2 uses
  %i.rg = icmp sgt i32 %i.rf, 0
  br i1 %i.rg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.ac
  %i.rh = load ptr, ptr %i.k, align 8, !tbaa !2934
  %wide.trip.count220 = zext nneg i32 %i.rf to i64
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ae
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count220
  br i1 %exitcond221.not, label %.loopexit, label %bb.ae, !llvm.loop !6630

bb.ae:                                            ; preds = %.lr.ph, %bb.ad
  %indvars.iv217 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next218, %bb.ad ] ; 2 uses
  %i.ri = getelementptr inbounds nuw [24 x i8], ptr %i.rh, i64 %indvars.iv217
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !2914
  %i.rl = icmp eq i64 %i.rk, %i.re
  br i1 %i.rl, label %.thread169, label %bb.ad

bb.af:                                            ; preds = %._crit_edge.split.us
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !2914
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ad, %bb.ac, %bb.af
  %.sroa.913.0 = phi i8 [ %i.pq, %bb.af ], [ 0, %bb.ac ], [ 0, %bb.ad ] ; 2 uses
  %.sroa.2.0 = phi i64 [ %i.rn, %bb.af ], [ %i.re, %bb.ac ], [ %i.re, %bb.ad ]
  %i.ro = zext i8 %i.pr to i32
  %.not85 = icmp samesign ugt i32 %i.ax, %i.ro
  br i1 %.not85, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  call fastcc void @rtreeSearchPointPop(ptr noundef nonnull %0)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit
  %i.rp = fcmp olt double %.097.lcssa, 0.000000e+00
  %.4101 = select i1 %i.rp, double 0.000000e+00, double %.097.lcssa
  %i.rq = call fastcc ptr @rtreeSearchPointNew(ptr noundef nonnull %0, double noundef %.4101, i8 noundef zeroext %i.pt) ; 4 uses
  %i.rr = icmp eq ptr %i.rq, null
  br i1 %i.rr, label %.thread169, label %.loopexit185

.loopexit185:                                     ; preds = %bb.ah
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 17
  store i8 %.0112.lcssa, ptr %i.rs, align 1, !tbaa !2915
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  store i64 %.sroa.2.0, ptr %i.rt, align 8, !tbaa !2914
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rq, i64 18
  store i8 %.sroa.913.0, ptr %i.ru, align 2, !tbaa !2919
  %.pre222 = zext i8 %.sroa.913.0 to i32
  %i.rv = icmp samesign ugt i32 %i.ax, %.pre222
  br i1 %i.rv, label %.backedge, label %.loopexit185.thread

.backedge:                                        ; preds = %.loopexit185, %.loopexit185.thread
  br label %bb.b, !llvm.loop !6631

.loopexit185.thread:                              ; preds = %rtreeLeafConstraint.exit.thread.us, %bb.g, %.loopexit185
  call fastcc void @rtreeSearchPointPop(ptr noundef nonnull %0)
  br label %.backedge

.critedge:                                        ; preds = %bb.c, %rtreeSearchPointFirst.exit, %rtreeSearchPointFirst.exit.thread123
  %.not122 = phi i8 [ 0, %rtreeSearchPointFirst.exit.thread123 ], [ 1, %rtreeSearchPointFirst.exit ], [ 1, %bb.c ]
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.not122, ptr %i.rw, align 8, !tbaa !2920
  br label %.thread169

.thread169:                                       ; preds = %bb.ah, %rtreeNodeOfFirstSearchPoint.exit, %rtreeNodeOfFirstSearchPoint.exit.thread, %bb.ae, %rtreeCallbackConstraint.exit.us, %.critedge
  %.8 = phi i32 [ 0, %.critedge ], [ %.0.i.us, %rtreeCallbackConstraint.exit.us ], [ 267, %bb.ae ], [ 7, %bb.ah ], [ %i.ao, %rtreeNodeOfFirstSearchPoint.exit ], [ 267, %rtreeNodeOfFirstSearchPoint.exit.thread ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rtreeEnqueue(ptr nofree noundef captures(none) %0, double noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.RtreeSearchPoint, align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !2933 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !6639 ; 2 uses
  %.not = icmp slt i32 %i.b, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre54 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !2934
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = shl nsw i32 %i.d, 1
  %i.f = add nsw i32 %i.e, 8                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2934
  %i.i = tail call i32 @sqlite3_initialize(), !inline_history !1233
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.critedge

sqlite3_realloc64.exit:                           ; preds = %bb.b
  %i.j = sext i32 %i.f to i64
  %i.k = mul nsw i64 %i.j, 24
  %i.l = tail call fastcc ptr @sqlite3Realloc(ptr noundef %i.h, i64 noundef %i.k), !inline_history !1233 ; 3 uses
  %.not39 = icmp eq ptr %i.l, null
  br i1 %.not39, label %.critedge, label %bb.c

bb.c:                                             ; preds = %sqlite3_realloc64.exit
  store ptr %i.l, ptr %i.g, align 8, !tbaa !2934
  store i32 %i.f, ptr %i.c, align 8, !tbaa !6639
  %.pre = load i32, ptr %i.a, align 4, !tbaa !2933
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ %.pre54, %._crit_edge ]
  %i.n = phi i32 [ %.pre, %bb.c ], [ %i.b, %._crit_edge ] ; 4 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.a, align 4, !tbaa !2933
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.q ; 4 uses
  store double %1, ptr %i.r, align 8, !tbaa !2959
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 %2, ptr %i.s, align 8, !tbaa !2960
  %i.t = icmp sgt i32 %i.n, 0
  br i1 %i.t, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %.03148 = phi ptr [ %i.r, %.lr.ph ], [ %i.z, %bb.k ] ; 4 uses
  %.03347 = phi i32 [ %i.n, %.lr.ph ], [ %i.w, %bb.k ] ; 4 uses
  %i.v = add nsw i32 %.03347, -1
  %i.w = lshr i32 %i.v, 1                         ; 4 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !2934 ; 2 uses
  %i.y = zext nneg i32 %i.w to i64
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.y ; 6 uses
  %i.aa = load double, ptr %.03148, align 8, !tbaa !2959 ; 2 uses
  %i.ab = load double, ptr %i.z, align 8, !tbaa !2959 ; 2 uses
  %i.ac = fcmp olt double %i.aa, %i.ab
  br i1 %i.ac, label %rtreeSearchPointCompare.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = fcmp ogt double %i.aa, %i.ab
  br i1 %i.ad, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %.03148, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !2960
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !2960
  %i.ai = icmp ult i8 %i.af, %i.ah
  br i1 %i.ai, label %rtreeSearchPointCompare.exit, label %.critedge

rtreeSearchPointCompare.exit:                     ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !2961
  %i.aj = zext nneg i32 %.03347 to i64            ; 3 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i64 24, i1 false), !tbaa.struct !2961
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !2934
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !2961
  %i.an = add nuw nsw i32 %i.w, 1                 ; 2 uses
  %i.ao = icmp samesign ult i32 %.03347, 9
  br i1 %i.ao, label %bb.h, label %bb.k

bb.h:                                             ; preds = %rtreeSearchPointCompare.exit
  %i.ap = icmp samesign ugt i32 %.03347, 3
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %0, align 8, !tbaa !2908
  %i.ar = zext nneg i32 %i.an to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !2912
  %i.au = tail call fastcc i32 @nodeRelease(ptr noundef %i.aq, ptr noundef %i.at), !inline_history !531 ; 0 uses
  store ptr null, ptr %i.as, align 8, !tbaa !2912
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.av = zext nneg i32 %i.an to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2912
  %i.ay = getelementptr [8 x i8], ptr %i.u, i64 %i.aj
  %i.az = getelementptr i8, ptr %i.ay, i64 8      ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !2912
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !2912
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !2912
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %rtreeSearchPointCompare.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not53 = icmp eq i32 %i.w, 0
  br i1 %.not53, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.k, %bb.g, %bb.f, %bb.d, %bb.b, %sqlite3_realloc64.exit
  %.136 = phi ptr [ null, %bb.b ], [ null, %sqlite3_realloc64.exit ], [ %i.r, %bb.d ], [ %i.z, %bb.k ], [ %.03148, %bb.g ], [ %.03148, %bb.f ]
  ret ptr %.136
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rtreeSearchPointPop(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.RtreeSearchPoint, align 8   ; 4 uses
  %2 = alloca %struct.RtreeSearchPoint, align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !2932  ; 2 uses
  %i.c = zext i8 %i.b to i64
  %i.d = sub nsw i64 1, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.d ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2912 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !2908
  %i.i = tail call fastcc i32 @nodeRelease(ptr noundef %i.h, ptr noundef nonnull %i.g) ; 0 uses
  store ptr null, ptr %i.f, align 8, !tbaa !2912
  %.pre = load i8, ptr %i.a, align 1, !tbaa !2932
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i8 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %.not53 = icmp eq i8 %i.j, 0
  br i1 %.not53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i8, ptr %i.l, align 8, !tbaa !2962
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !570
  %i.q = add i32 %i.p, -1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !570
  store i8 0, ptr %i.a, align 1, !tbaa !2932
  br label %rtreeSearchPointCompare.exit57

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !2933 ; 5 uses
  %.not54 = icmp eq i32 %i.s, 0
  br i1 %.not54, label %rtreeSearchPointCompare.exit57, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2934 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i8, ptr %i.w, align 8, !tbaa !2960
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !570
  %i.ab = add i32 %i.aa, -1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !570
  %i.ac = add nsw i32 %i.s, -1                    ; 4 uses
  store i32 %i.ac, ptr %i.r, align 4, !tbaa !2933
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.v, i64 %i.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !tbaa.struct !2961
  %i.af = icmp slt i32 %i.s, 5
  br i1 %i.af, label %bb.g, label %.lr.ph.preheader

bb.g:                                             ; preds = %bb.f
  %i.ag = sext i32 %i.s to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2912
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_1
