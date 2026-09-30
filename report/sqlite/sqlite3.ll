Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 368
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_result_error_nomem:bb.a
  store atomic volatile i32 1, ptr %i.r monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 408 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !921
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 8, !tbaa !921
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 412
  store i16 0, ptr %i.v, align 4, !tbaa !922
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 344 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !768  ; 2 uses
  %.not.i3 = icmp eq ptr %i.x, null
  br i1 %.not.i3, label %sqlite3OomFault.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.x, ptr noundef nonnull @.str.125), !inline_history !48
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !768  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i32 7, ptr %i.z, align 8, !tbaa !779
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.y, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.018.i, %bb.h ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !780
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !780
  %i.ad = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.ad, align 8, !tbaa !779
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 224
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph.i, !llvm.loop !36

sqlite3OomFault.exit:                             ; preds = %.lr.ph.i, %sqlite3VdbeMemSetNull.exit, %bb.d, %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3OomFault(ptr nofree noundef captures(address) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !918
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i8, ptr %i.d, align 8, !tbaa !919
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !918
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.h = load i32, ptr %i.g, align 4, !tbaa !920
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400
  store atomic volatile i32 1, ptr %i.j monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !921
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8, !tbaa !921
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i16 0, ptr %i.n, align 4, !tbaa !922
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !768  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.125)
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !768  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i32 7, ptr %i.r, align 8, !tbaa !779
  %.0.in17 = getelementptr inbounds nuw i8, ptr %i.q, i64 224
  %.018 = load ptr, ptr %.0.in17, align 8, !tbaa !923 ; 2 uses
  %.not1619 = icmp eq ptr %.018, null
  br i1 %.not1619, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.020 = phi ptr [ %.0, %.lr.ph ], [ %.018, %bb.f ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.020, i64 52 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !780
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !780
  %i.v = getelementptr inbounds nuw i8, ptr %.020, i64 24
  store i32 7, ptr %i.v, align 8, !tbaa !779
  %.0.in = getelementptr inbounds nuw i8, ptr %.020, i64 224
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !923 ; 2 uses
  %.not16 = icmp eq ptr %.0, null
  br i1 %.not16, label %.loopexit, label %.lr.ph, !llvm.loop !36

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @sqlite3Reprepare(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.Vdbe, align 8               ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %sqlite3_sql.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !704
  br label %sqlite3_sql.exit

sqlite3_sql.exit:                                 ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %.val = load ptr, ptr %0, align 8, !tbaa !679   ; 8 uses
  %i.e = getelementptr i8, ptr %0, i64 198        ; 2 uses
  %.val14 = load i8, ptr %i.e, align 2, !tbaa !905
  %i.f = zext i8 %.val14 to i32
  %i.g = call fastcc i32 @sqlite3LockAndPrepare(ptr noundef %.val, ptr noundef %i.d, i32 noundef -1, i32 noundef %i.f, ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef null) ; 2 uses
  switch i32 %i.g, label %sqlite3OomFault.exit [
    i32 0, label %bb.i
    i32 7, label %bb.c
  ]

bb.c:                                             ; preds = %sqlite3_sql.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 103 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !918
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %sqlite3OomFault.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.l = load i8, ptr %i.k, align 8, !tbaa !919
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.e, label %sqlite3OomFault.exit

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.h, align 1, !tbaa !918
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 220
  %i.o = load i32, ptr %i.n, align 4, !tbaa !920
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 400
  store atomic volatile i32 1, ptr %i.q monotonic, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 408 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !921
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 8, !tbaa !921
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 412
  store i16 0, ptr %i.u, align 4, !tbaa !922
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 344 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !768  ; 2 uses
  %.not.i15 = icmp eq ptr %i.w, null
  br i1 %.not.i15, label %sqlite3OomFault.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.125), !inline_history !48
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !768  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i32 7, ptr %i.y, align 8, !tbaa !779
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.x, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3OomFault.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.018.i, %bb.h ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !780
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !780
  %i.ac = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.ac, align 8, !tbaa !779
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 224
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3OomFault.exit, label %.lr.ph.i, !llvm.loop !36

bb.i:                                             ; preds = %sqlite3_sql.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !889 ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %1, ptr noundef nonnull align 8 dereferenceable(304) %i.ad, i64 304, i1 false), !tbaa.struct !3229
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.ad, ptr noundef nonnull align 8 dereferenceable(304) %0, i64 304, i1 false), !tbaa.struct !3229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 304, i1 false), !tbaa.struct !3229
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !851
  %i.ah = load <2 x ptr>, ptr %i.af, align 8, !tbaa !851
  store <2 x ptr> %i.ah, ptr %i.ae, align 8, !tbaa !851
  store <2 x ptr> %i.ag, ptr %i.af, align 8, !tbaa !851
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 248 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !704
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !704
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !704
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !704
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 284
  %i.an = load i32, ptr %i.am, align 4, !tbaa !1092
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !1092
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 198
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !905
  store i8 %i.aq, ptr %i.e, align 2, !tbaa !905
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 212
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ar, ptr noundef nonnull align 4 dereferenceable(36) %i.as, i64 36, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !570
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 8, !tbaa !570
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.aw = load ptr, ptr %0, align 8, !tbaa !679
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !594 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.az(ptr noundef nonnull %i.ay) #58, !inline_history !80
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.j, %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 8, !tbaa !694
  %i.bc = icmp sgt i16 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i16, label %._crit_edge.i

.lr.ph.i16:                                       ; preds = %sqlite3_mutex_enter.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  br label %bb.k

bb.k:                                             ; preds = %sqlite3VdbeMemMove.exit.i, %.lr.ph.i16
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i16 ], [ %indvars.iv.next.i, %sqlite3VdbeMemMove.exit.i ] ; 3 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !693
  %i.bg = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %indvars.iv.i ; 4 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !693
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %i.bh, i64 %indvars.iv.i ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.bk = load i16, ptr %i.bj, align 4, !tbaa !686
  %i.bl = and i16 %i.bk, -28672
  %.not.i.i.i = icmp eq i16 %i.bl, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !684
  %.not3.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not3.i.i.i, label %sqlite3VdbeMemMove.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.bg)
  br label %sqlite3VdbeMemMove.exit.i

sqlite3VdbeMemMove.exit.i:                        ; preds = %bb.m, %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 56, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  store i16 1, ptr %i.bo, align 4, !tbaa !686
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store i32 0, ptr %i.bp, align 8, !tbaa !684
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bq = load i16, ptr %i.ba, align 8, !tbaa !694
  %i.br = sext i16 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next.i, %i.br
  br i1 %i.bs, label %bb.k, label %._crit_edge.i, !llvm.loop !81

._crit_edge.i:                                    ; preds = %sqlite3VdbeMemMove.exit.i, %sqlite3_mutex_enter.exit.i
  %i.bt = load ptr, ptr %0, align 8, !tbaa !679
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !594 ; 2 uses
  %.not.i10.i = icmp eq ptr %i.bv, null
  br i1 %.not.i10.i, label %sqlite3TransferBindings.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.bw(ptr noundef nonnull %i.bv) #58, !inline_history !82
  br label %sqlite3TransferBindings.exit

sqlite3TransferBindings.exit:                     ; preds = %._crit_edge.i, %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ad, i64 52 ; 2 uses
  store i32 0, ptr %i.bx, align 4, !tbaa !904
  %i.by = getelementptr inbounds nuw i8, ptr %i.ad, i64 199
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !692 ; 2 uses
  %.not.i17 = icmp eq i8 %i.bz, 0
  br i1 %.not.i17, label %sqlite3VdbeFinalize.exit, label %bb.o

bb.o:                                             ; preds = %sqlite3TransferBindings.exit
  %i.ca = load ptr, ptr %i.ad, align 8, !tbaa !679 ; 3 uses
  %i.cb = icmp eq i8 %i.bz, 2
  br i1 %i.cb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = tail call fastcc i32 @sqlite3VdbeHalt(ptr noundef nonnull %i.ad), !inline_history !49 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !915
  %i.cf = icmp sgt i32 %i.ce, -1
  br i1 %i.cf, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 392
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !946
  %.not.i.i19 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i19, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !948
  %.not16.i.i = icmp eq ptr %i.cj, null
  br i1 %.not16.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ck = tail call fastcc i32 @sqlite3VdbeTransferError(ptr noundef nonnull %i.ad), !inline_history !49 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cl = load i32, ptr %i.bx, align 4, !tbaa !904
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  store i32 %i.cl, ptr %i.cm, align 8, !tbaa !932
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ad, i64 168 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !948 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.co, null
  br i1 %.not17.i.i, label %sqlite3VdbeReset.exit.i, label %sqlite3DbFree.exit.i.i

sqlite3DbFree.exit.i.i:                           ; preds = %bb.v
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.ca, ptr noundef nonnull %i.co), !inline_history !49
  store ptr null, ptr %i.cn, align 8, !tbaa !948
  br label %sqlite3VdbeReset.exit.i

sqlite3VdbeReset.exit.i:                          ; preds = %sqlite3DbFree.exit.i.i, %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  store ptr null, ptr %i.cp, align 8, !tbaa !931
  br label %sqlite3VdbeFinalize.exit

sqlite3VdbeFinalize.exit:                         ; preds = %sqlite3TransferBindings.exit, %sqlite3VdbeReset.exit.i
  tail call fastcc void @sqlite3VdbeDelete(ptr noundef nonnull %i.ad), !inline_history !50
  br label %sqlite3OomFault.exit

sqlite3OomFault.exit:                             ; preds = %.lr.ph.i, %bb.h, %bb.g, %bb.d, %bb.c, %sqlite3_sql.exit, %sqlite3VdbeFinalize.exit
  %.0 = phi i32 [ 0, %sqlite3VdbeFinalize.exit ], [ %i.g, %sqlite3_sql.exit ], [ 7, %bb.c ], [ 7, %bb.d ], [ 7, %bb.g ], [ 7, %bb.h ], [ 7, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3DbStrDup(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #59
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef %i.c), !inline_history !43
  br label %sqlite3DbMallocRaw.exit

bb.d:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.c), !inline_history !43
  br label %sqlite3DbMallocRaw.exit

sqlite3DbMallocRaw.exit:                          ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.d, %bb.c ], [ %i.e, %bb.d ] ; 3 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %sqlite3DbMallocRaw.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %sqlite3DbMallocRaw.exit, %bb.e, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.i, %bb.e ], [ null, %sqlite3DbMallocRaw.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @sqlite3_user_data(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !735
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_0
