Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unarj?download=true
inline.NumInlined: 43
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cli_unarj_extract_file:bb.a
  %i.hk = trunc nuw i64 %indvars.iv.i to i16
  %i.hl = icmp slt i16 %i.hk, 26623
  %or.cond7.i = and i1 %i.hl, %i.hj
  %i.hm = icmp samesign ult i64 %indvars.iv119.i, 26623
  %i.hn = and i1 %i.hm, %or.cond7.i
  br i1 %i.hn, label %vec.epilog.scalar.ph, label %.loopexit.loopexit.i, !llvm.loop !86

.lr.ph.i:                                         ; preds = %bb.am, %bb.ao
  %i.ho = phi i16 [ %i.ia, %bb.ao ], [ %i.gf, %bb.am ] ; 2 uses
  %.2102.i = phi i16 [ %spec.store.select.i, %bb.ao ], [ %spec.select.i, %bb.am ] ; 2 uses
  %.253101.i = phi i32 [ %.3.i, %bb.ao ], [ %.051.i, %bb.am ] ; 2 uses
  %i.hp = sext i16 %.2102.i to i64
  %i.hq = getelementptr inbounds i8, ptr %i.gg, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !25
  %i.hs = zext i32 %.253101.i to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.hs
  store i8 %i.hr, ptr %i.ht, align 1, !tbaa !25
  %i.hu = add i32 %.253101.i, 1                   ; 2 uses
  %i.hv = icmp ugt i32 %i.hu, 26623
  br i1 %i.hv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i
  %i.hw = load i32, ptr %i.n, align 4, !tbaa !31
  %i.hx = call i64 @cli_writen(i32 noundef %i.hw, ptr noundef nonnull %i.gg, i64 noundef 26624) #11
  %.not.i78.i = icmp eq i64 %i.hx, 26624
  br i1 %.not.i78.i, label %bb.ao, label %.sink.split.i

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i
  %.3.i = phi i32 [ 0, %bb.an ], [ %i.hu, %.lr.ph.i ] ; 2 uses
  %i.hy = add i16 %.2102.i, 1                     ; 2 uses
  %i.hz = icmp sgt i16 %i.hy, 26623
  %spec.store.select.i = select i1 %i.hz, i16 0, i16 %i.hy
  %i.ia = add nsw i16 %i.ho, -1
  %i.ib = icmp sgt i16 %i.ho, 0
  br i1 %i.ib, label %.lr.ph.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next120.i.lcssa = phi i64 [ %i.gz, %vec.epilog.middle.block ], [ %i.gs, %middle.block ], [ %indvars.iv.next120.i, %vec.epilog.scalar.ph ]
  %i.ic = trunc nuw nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ao, %.loopexit.loopexit.i, %bb.af, %bb.ae
  %i.id = phi ptr [ %i.el, %bb.af ], [ %i.el, %bb.ae ], [ %i.gg, %.loopexit.loopexit.i ], [ %i.gg, %bb.ao ]
  %.155.i = phi i32 [ %i.eo, %bb.af ], [ %i.eo, %bb.ae ], [ %i.ev, %.loopexit.loopexit.i ], [ %i.ev, %bb.ao ]
  %.4.i = phi i32 [ 0, %bb.af ], [ %i.ep, %bb.ae ], [ %i.ic, %.loopexit.loopexit.i ], [ %.3.i, %bb.ao ]
  %i.ie = load i32, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %.not67.i = icmp eq i32 %i.ie, 0
  br i1 %.not67.i, label %bb.k, label %.sink.split.i

.loopexit92.i:                                    ; preds = %bb.k, %bb.al
  %.not65.i = icmp eq i32 %.051.i, 0
  %.pre128.i = load ptr, ptr %2, align 8, !tbaa !33 ; 3 uses
  br i1 %.not65.i, label %.sink.split.i, label %bb.ap

bb.ap:                                            ; preds = %.loopexit92.i
  %i.if = load i32, ptr %i.n, align 4, !tbaa !31
  %i.ig = zext i32 %.051.i to i64
  %i.ih = call i64 @cli_writen(i32 noundef %i.if, ptr noundef %.pre128.i, i64 noundef range(i64 1, 4294967296) %i.ig) #11 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.af, %.loopexit.i, %bb.an, %bb.ap, %.loopexit92.i, %bb.i
  %.pre128.sink.i = phi ptr [ %.pre128.i, %.loopexit92.i ], [ %.pre128.i, %bb.ap ], [ %i.gg, %bb.an ], [ %i.ai, %bb.i ], [ %i.id, %.loopexit.i ], [ %i.el, %bb.af ]
  %.056.ph.i = phi i32 [ 0, %.loopexit92.i ], [ 0, %bb.ap ], [ 14, %bb.an ], [ %i.ah, %bb.i ], [ %i.ie, %.loopexit.i ], [ 14, %bb.af ]
  call void @free(ptr noundef %.pre128.sink.i) #11
  %i.ii = load i64, ptr %i.ab, align 8, !tbaa !35
  store i64 %i.ii, ptr %i.z, align 8, !tbaa !16
  br label %decode.exit

decode.exit:                                      ; preds = %bb.g, %.sink.split.i
  %.056.i = phi i32 [ 20, %bb.g ], [ %.056.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.ar

bb.aq:                                            ; preds = %bb.e
  %i.ij = call fastcc i32 @decode_f(ptr noundef %1)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.f, %decode.exit, %bb.aq, %bb.e, %bb.d, %bb.a, %bb.c
  %.017 = phi i32 [ 0, %bb.c ], [ 2, %bb.a ], [ 8, %bb.d ], [ %i.ij, %bb.aq ], [ %i.t, %bb.f ], [ %.056.i, %decode.exit ], [ 26, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.017
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 27) i32 @arj_unstore(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not23 = icmp eq i32 %2, 0
  br i1 %.not23, label %fmap_need_off_once_len.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.c = trunc nuw nsw i64 %spec.select.i to i32
  %i.d = sub nuw i32 %.024, %i.c                  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %fmap_need_off_once_len.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.024 = phi i32 [ %2, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp ult i64 %i.f, %i.h
  br i1 %.not.i, label %fmap_need_off_once_len.exit, label %fmap_need_off_once_len.exit.thread

fmap_need_off_once_len.exit:                      ; preds = %bb.c
  %i.i = tail call i32 @llvm.umin.i32(i32 %.024, i32 8192)
  %i.j = zext nneg i32 %i.i to i64
  %i.k = sub nuw i64 %i.h, %i.f
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 range(i64 1, 4294967296) %i.j, i64 %i.k) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = tail call ptr %i.m(ptr noundef nonnull %i.e, i64 noundef %i.f, i64 noundef %spec.select.i, i32 noundef 0) #11, !inline_history !1 ; 2 uses
  %.not20.i.not = icmp eq ptr %i.n, null
  br i1 %.not20.i.not, label %fmap_need_off_once_len.exit.thread, label %bb.d

bb.d:                                             ; preds = %fmap_need_off_once_len.exit
  %i.o = load i64, ptr %i.b, align 8, !tbaa !16
  %i.p = add i64 %i.o, %spec.select.i
  store i64 %i.p, ptr %i.b, align 8, !tbaa !16
  %i.q = tail call i64 @cli_writen(i32 noundef %1, ptr noundef nonnull %i.n, i64 noundef %spec.select.i) #11
  %.not17 = icmp eq i64 %i.q, %spec.select.i
  br i1 %.not17, label %bb.b, label %fmap_need_off_once_len.exit.thread

fmap_need_off_once_len.exit.thread:               ; preds = %fmap_need_off_once_len.exit, %bb.d, %bb.b, %bb.c, %bb.a
  %.013 = phi i32 [ 0, %bb.a ], [ 14, %bb.d ], [ 0, %bb.b ], [ 26, %bb.c ], [ 26, %fmap_need_off_once_len.exit ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decode_f(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.arj_decode_tag, align 8     ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13352) %i.a, i8 0, i64 13352, i1 false)
  %i.b = tail call ptr @cli_max_calloc(i64 noundef 26624, i64 noundef 1) #11 ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !33
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.j, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 42 ; 15 uses
  store i16 0, ptr %i.l, align 2, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12853
  store i8 0, ptr %i.m, align 1, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 0, ptr %i.n, align 4, !tbaa !42
  %i.o = call fastcc range(i32 0, 27) i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 2 uses
  %.not65 = icmp eq i32 %i.o, 0
  br i1 %.not65, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %1, align 8, !tbaa !33
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 31 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 16 uses
  store i16 0, ptr %i.r, align 4, !tbaa !91
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 13368 ; 6 uses
  store i32 0, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28
  %.not114 = icmp eq i32 %i.u, 0
  br i1 %.not114, label %.loopexit89.thread, label %.lr.ph112

.loopexit89.thread:                               ; preds = %bb.d
  %.pre132170 = load ptr, ptr %1, align 8, !tbaa !33
  br label %.sink.split

.lr.ph112:                                        ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph112, %.loopexit
  %i.w = phi i16 [ 0, %.lr.ph112 ], [ %i.ij, %.loopexit ] ; 4 uses
  %i.x = phi i16 [ 0, %.lr.ph112 ], [ %i.ik, %.loopexit ] ; 9 uses
  %.054111 = phi i32 [ 0, %.lr.ph112 ], [ %.3, %.loopexit ] ; 5 uses
  %.056110 = phi i32 [ 0, %.lr.ph112 ], [ %.157, %.loopexit ] ; 2 uses
  %i.y = icmp slt i16 %i.x, 1
  br i1 %i.y, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = shl i16 %i.w, 1                          ; 4 uses
  %i.aa = add nsw i16 %i.x, -1                    ; 3 uses
  store i16 %i.aa, ptr %i.r, align 4, !tbaa !91
  %i.ab = icmp sgt i16 %i.w, -1
  br i1 %i.ab, label %decode_len.exit.thread, label %bb.g

.thread:                                          ; preds = %bb.e
  %i.ac = load i16, ptr %i.l, align 2, !tbaa !39
  %i.ad = zext i16 %i.ac to i32
  %i.ae = zext nneg i16 %i.x to i32
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = trunc nuw i32 %i.af to i16
  %i.ah = or i16 %i.w, %i.ag
  store i16 %i.ah, ptr %i.q, align 2, !tbaa !92
  %i.ai = sext i16 %i.x to i32
  %i.aj = sub nsw i32 16, %i.ai
  %i.ak = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef %i.aj) ; 0 uses
  %.pre = load i16, ptr %i.q, align 2, !tbaa !92  ; 3 uses
  %i.al = shl i16 %.pre, 1                        ; 2 uses
  %i.am = icmp sgt i16 %.pre, -1
  br i1 %i.am, label %decode_len.exit.thread.thread, label %.thread159

bb.g:                                             ; preds = %bb.f
  %i.an = icmp eq i16 %i.x, 1
  br i1 %i.an, label %.thread83.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = shl i16 %i.w, 2                         ; 3 uses
  %i.ap = add nsw i16 %i.x, -2                    ; 3 uses
  store i16 %i.ap, ptr %i.r, align 4, !tbaa !91
  %i.aq = icmp sgt i16 %i.z, -1
  br i1 %i.aq, label %.thread.i, label %bb.i

.thread159:                                       ; preds = %.thread
  %i.ar = shl i16 %.pre, 2                        ; 2 uses
  %i.as = icmp sgt i16 %i.al, -1
  br i1 %i.as, label %.lr.ph.i, label %.thread84.i

.thread83.i:                                      ; preds = %bb.g
  %i.at = load i16, ptr %i.l, align 2, !tbaa !39
  %i.au = or i16 %i.at, %i.z
  store i16 %i.au, ptr %i.q, align 2, !tbaa !92
  %i.av = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre.i = load i16, ptr %i.q, align 2, !tbaa !92 ; 2 uses
  %i.aw = shl i16 %.pre.i, 1                      ; 2 uses
  %i.ax = icmp sgt i16 %.pre.i, -1
  br i1 %i.ax, label %.lr.ph.i, label %.thread84.i

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp eq i16 %i.x, 2
  br i1 %i.ay, label %bb.j, label %.thread84.i

bb.j:                                             ; preds = %bb.i
  %i.az = load i16, ptr %i.l, align 2, !tbaa !39
  %i.ba = or i16 %i.az, %i.ao
  store i16 %i.ba, ptr %i.q, align 2, !tbaa !92
  %i.bb = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre62.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %.thread84.i

.thread84.i:                                      ; preds = %.thread159, %bb.j, %bb.i, %.thread83.i
  %i.bc = phi i16 [ 16, %bb.j ], [ %i.ap, %bb.i ], [ 15, %.thread83.i ], [ 14, %.thread159 ] ; 4 uses
  %i.bd = phi i16 [ %.pre62.i, %bb.j ], [ %i.ao, %bb.i ], [ %i.aw, %.thread83.i ], [ %i.ar, %.thread159 ] ; 3 uses
  %i.be = shl i16 %i.bd, 1                        ; 3 uses
  %i.bf = add nsw i16 %i.bc, -1                   ; 2 uses
  store i16 %i.bf, ptr %i.r, align 4, !tbaa !91
  %i.bg = icmp sgt i16 %i.bd, -1
  br i1 %i.bg, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %.thread84.i
  %i.bh = icmp samesign ult i16 %i.bc, 2
  br i1 %i.bh, label %.thread85.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = shl i16 %i.bd, 2                        ; 3 uses
  %i.bj = add nsw i16 %i.bc, -2                   ; 3 uses
  store i16 %i.bj, ptr %i.r, align 4, !tbaa !91
  %i.bk = icmp sgt i16 %i.be, -1
  br i1 %i.bk, label %.thread.i, label %bb.m

.thread85.i:                                      ; preds = %bb.k
  %i.bl = load i16, ptr %i.l, align 2, !tbaa !39
  %i.bm = or i16 %i.bl, %i.be
  store i16 %i.bm, ptr %i.q, align 2, !tbaa !92
  %i.bn = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre63.i = load i16, ptr %i.q, align 2, !tbaa !92 ; 2 uses
  %i.bo = shl i16 %.pre63.i, 1                    ; 2 uses
  %i.bp = icmp sgt i16 %.pre63.i, -1
  br i1 %i.bp, label %.lr.ph.i, label %.thread86.i

bb.m:                                             ; preds = %bb.l
  %i.bq = icmp eq i16 %i.bc, 2
  br i1 %i.bq, label %bb.n, label %.thread86.i

bb.n:                                             ; preds = %bb.m
  %i.br = load i16, ptr %i.l, align 2, !tbaa !39
  %i.bs = or i16 %i.br, %i.bi
  store i16 %i.bs, ptr %i.q, align 2, !tbaa !92
  %i.bt = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre64.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %.thread86.i

.thread86.i:                                      ; preds = %bb.n, %bb.m, %.thread85.i
  %i.bu = phi i16 [ 16, %bb.n ], [ %i.bj, %bb.m ], [ 15, %.thread85.i ] ; 4 uses
  %i.bv = phi i16 [ %.pre64.i, %bb.n ], [ %i.bi, %bb.m ], [ %i.bo, %.thread85.i ] ; 3 uses
  %i.bw = shl i16 %i.bv, 1                        ; 3 uses
  %i.bx = add nsw i16 %i.bu, -1                   ; 2 uses
  store i16 %i.bx, ptr %i.r, align 4, !tbaa !91
  %i.by = icmp sgt i16 %i.bv, -1
  br i1 %i.by, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %.thread86.i
  %i.bz = icmp samesign ult i16 %i.bu, 2
  br i1 %i.bz, label %.thread87.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = shl i16 %i.bv, 2                        ; 3 uses
  %i.cb = add nsw i16 %i.bu, -2                   ; 3 uses
  store i16 %i.cb, ptr %i.r, align 4, !tbaa !91
  %i.cc = icmp sgt i16 %i.bw, -1
  br i1 %i.cc, label %.thread.i, label %bb.q

.thread87.i:                                      ; preds = %bb.o
  %i.cd = load i16, ptr %i.l, align 2, !tbaa !39
  %i.ce = or i16 %i.cd, %i.bw
  store i16 %i.ce, ptr %i.q, align 2, !tbaa !92
  %i.cf = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre65.i = load i16, ptr %i.q, align 2, !tbaa !92 ; 2 uses
  %i.cg = shl i16 %.pre65.i, 1                    ; 2 uses
  %i.ch = icmp sgt i16 %.pre65.i, -1
  br i1 %i.ch, label %.lr.ph.i, label %.thread88.i

bb.q:                                             ; preds = %bb.p
  %i.ci = icmp eq i16 %i.bu, 2
  br i1 %i.ci, label %bb.r, label %.thread88.i

bb.r:                                             ; preds = %bb.q
  %i.cj = load i16, ptr %i.l, align 2, !tbaa !39
  %i.ck = or i16 %i.cj, %i.ca
  store i16 %i.ck, ptr %i.q, align 2, !tbaa !92
  %i.cl = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre66.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %.thread88.i

.thread88.i:                                      ; preds = %bb.r, %bb.q, %.thread87.i
  %i.cm = phi i16 [ 16, %bb.r ], [ %i.cb, %bb.q ], [ 15, %.thread87.i ]
  %i.cn = phi i16 [ %.pre66.i, %bb.r ], [ %i.ca, %bb.q ], [ %i.cg, %.thread87.i ] ; 2 uses
  %i.co = shl i16 %i.cn, 1
  %i.cp = add nsw i16 %i.cm, -1                   ; 2 uses
  store i16 %i.cp, ptr %i.r, align 4, !tbaa !91
  %i.cq = icmp sgt i16 %i.cn, -1                  ; 2 uses
  %spec.select.i = select i1 %i.cq, i16 6, i16 7
  %spec.select97.i = select i1 %i.cq, i16 63, i16 127
  br label %.thread.i

.thread.i:                                        ; preds = %.thread88.i, %bb.p, %.thread86.i, %bb.l, %.thread84.i, %bb.h
  %i.cr = phi i16 [ %i.co, %.thread88.i ], [ %i.be, %.thread84.i ], [ %i.ao, %bb.h ], [ %i.bi, %bb.l ], [ %i.ca, %bb.p ], [ %i.bw, %.thread86.i ] ; 2 uses
  %i.cs = phi i16 [ %i.cp, %.thread88.i ], [ %i.bf, %.thread84.i ], [ %i.ap, %bb.h ], [ %i.bj, %bb.l ], [ %i.cb, %bb.p ], [ %i.bx, %.thread86.i ] ; 3 uses
  %.03850.i = phi i16 [ %spec.select.i, %.thread88.i ], [ 2, %.thread84.i ], [ 1, %bb.h ], [ 3, %bb.l ], [ 5, %bb.p ], [ 4, %.thread86.i ] ; 3 uses
  %.03747.i = phi i16 [ %spec.select97.i, %.thread88.i ], [ 3, %.thread84.i ], [ 1, %bb.h ], [ 7, %bb.l ], [ 31, %bb.p ], [ 15, %.thread86.i ] ; 2 uses
  %i.ct = icmp samesign ult i16 %i.cs, %.03850.i
  br i1 %i.ct, label %bb.s, label %.lr.ph.i

bb.s:                                             ; preds = %.thread.i
  %i.cu = load i16, ptr %i.l, align 2, !tbaa !39
  %i.cv = zext i16 %i.cu to i32
  %i.cw = zext nneg i16 %i.cs to i32              ; 2 uses
  %i.cx = lshr i32 %i.cv, %i.cw
  %i.cy = trunc nuw i32 %i.cx to i16
  %i.cz = or i16 %i.cr, %i.cy
  store i16 %i.cz, ptr %i.q, align 2, !tbaa !92
  %i.da = sub nuw nsw i32 16, %i.cw
  %i.db = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef %i.da) ; 0 uses
  %.pre67.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread159, %.thread83.i, %.thread85.i, %.thread87.i, %bb.s, %.thread.i
  %.0374796.i = phi i16 [ %.03747.i, %bb.s ], [ %.03747.i, %.thread.i ], [ 1, %.thread83.i ], [ 7, %.thread85.i ], [ 31, %.thread87.i ], [ 1, %.thread159 ]
  %.0385095.i = phi i16 [ %.03850.i, %bb.s ], [ %.03850.i, %.thread.i ], [ 1, %.thread83.i ], [ 3, %.thread85.i ], [ 5, %.thread87.i ], [ 1, %.thread159 ] ; 3 uses
  %i.dc = phi i16 [ 16, %bb.s ], [ %i.cs, %.thread.i ], [ 15, %.thread83.i ], [ 15, %.thread85.i ], [ 15, %.thread87.i ], [ 14, %.thread159 ]
  %.promoted.i = phi i16 [ %.pre67.i, %bb.s ], [ %i.cr, %.thread.i ], [ %i.aw, %.thread83.i ], [ %i.bo, %.thread85.i ], [ %i.cg, %.thread87.i ], [ %i.ar, %.thread159 ] ; 3 uses
  %i.dd = zext nneg i16 %.0385095.i to i32        ; 3 uses
  %xtraiter = and i32 %i.dd, 7                    ; 3 uses
  %i.de = add i16 %.0385095.i, -1
  %i.df = icmp ult i16 %i.de, 7
  br i1 %i.df, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.dd, 32760
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.new
  %i.dg = phi i16 [ %.promoted.i, %.lr.ph.i.new ], [ %i.dh, %bb.t ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.t ]
  %i.dh = shl i16 %i.dg, 8                        ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %decode_len.exit.unr-lcssa, label %bb.t

decode_len.exit.unr-lcssa:                        ; preds = %bb.t
  %i.di = shl i16 %i.dg, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %decode_len.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %decode_len.exit.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i16 [ %.promoted.i, %.lr.ph.i ], [ %i.dh, %decode_len.exit.unr-lcssa ]
  %lcmp.mod215 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod215)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader
  %i.dj = phi i16 [ %.epil.init, %.epil.preheader ], [ %i.dk, %bb.u ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.u ]
  %i.dk = shl i16 %i.dj, 1                        ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %decode_len.exit, label %bb.u, !llvm.loop !89

decode_len.exit:                                  ; preds = %bb.u, %decode_len.exit.unr-lcssa
  %.lcssa200 = phi i16 [ %i.di, %decode_len.exit.unr-lcssa ], [ %i.dj, %bb.u ] ; 2 uses
  %.lcssa = phi i16 [ %i.dh, %decode_len.exit.unr-lcssa ], [ %i.dk, %bb.u ] ; 2 uses
  %i.dl = sub nsw i16 %i.dc, %.0385095.i          ; 8 uses
  store i16 %i.dl, ptr %i.r, align 4, !tbaa !91
  %i.dm = load i32, ptr %i.s, align 8, !tbaa !38  ; 2 uses
  %.not66 = icmp eq i32 %i.dm, 0
  br i1 %.not66, label %bb.ab, label %bb.v

decode_len.exit.thread:                           ; preds = %bb.f
  %i.dn = load i32, ptr %i.s, align 8, !tbaa !38  ; 2 uses
  %.not6680 = icmp eq i32 %i.dn, 0
  br i1 %.not6680, label %bb.w, label %bb.v

decode_len.exit.thread.thread:                    ; preds = %.thread
  %i.do = load i32, ptr %i.s, align 8, !tbaa !38  ; 2 uses
  %.not6680163 = icmp eq i32 %i.do, 0
  br i1 %.not6680163, label %.thread166, label %bb.v

bb.v:                                             ; preds = %decode_len.exit.thread.thread, %decode_len.exit.thread, %decode_len.exit
  %i.dp = phi i32 [ %i.dn, %decode_len.exit.thread ], [ %i.dm, %decode_len.exit ], [ %i.do, %decode_len.exit.thread.thread ]
  %i.dq = load ptr, ptr %1, align 8, !tbaa !33
  br label %.sink.split

bb.w:                                             ; preds = %decode_len.exit.thread
  %i.dr = icmp samesign ult i16 %i.x, 9
  br i1 %i.dr, label %bb.x, label %.thread166

.thread166:                                       ; preds = %bb.w, %decode_len.exit.thread.thread
  %.ph = phi i16 [ %i.aa, %bb.w ], [ 15, %decode_len.exit.thread.thread ]
  %.ph165 = phi i16 [ %i.z, %bb.w ], [ %i.al, %decode_len.exit.thread.thread ] ; 2 uses
  %i.ds = shl i16 %.ph165, 8                      ; 2 uses
  store i16 %i.ds, ptr %i.q, align 2, !tbaa !92
  %i.dt = add nsw i16 %.ph, -8                    ; 2 uses
  store i16 %i.dt, ptr %i.r, align 4, !tbaa !91
  br label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.du = load i16, ptr %i.l, align 2, !tbaa !39
  %i.dv = zext i16 %i.du to i32
  %i.dw = zext nneg i16 %i.aa to i32
  %i.dx = lshr i32 %i.dv, %i.dw
  %i.dy = trunc nuw i32 %i.dx to i16
  %i.dz = or i16 %i.z, %i.dy
  store i16 %i.dz, ptr %i.q, align 2, !tbaa !92
  %narrow158 = sub nuw nsw i16 17, %i.x
  %2 = zext nneg i16 %narrow158 to i32
  %i.ea = call fastcc i32 @fill_buf(ptr noundef %1, i32 noundef %2) ; 0 uses
  %.pre130 = load i16, ptr %i.q, align 2, !tbaa !92 ; 2 uses
  %.pre131 = load i32, ptr %i.s, align 8, !tbaa !38 ; 2 uses
  %i.eb = shl i16 %.pre130, 8                     ; 2 uses
  store i16 %i.eb, ptr %i.q, align 2, !tbaa !92
  store i16 8, ptr %i.r, align 4, !tbaa !91
  %.not70 = icmp eq i32 %.pre131, 0
  br i1 %.not70, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = load ptr, ptr %1, align 8, !tbaa !33
  br label %.sink.split

bb.z:                                             ; preds = %.thread166, %bb.x
  %i.ed = phi i16 [ %i.dt, %.thread166 ], [ 8, %bb.x ] ; 2 uses
  %i.ee = phi i16 [ %i.ds, %.thread166 ], [ %i.eb, %bb.x ] ; 2 uses
  %i.ef = phi i16 [ %.ph165, %.thread166 ], [ %.pre130, %bb.x ]
  %i.eg = lshr i16 %i.ef, 8
  %i.eh = trunc nuw i16 %i.eg to i8
  %i.ei = load ptr, ptr %1, align 8, !tbaa !33    ; 3 uses
  %i.ej = zext i32 %.054111 to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej
  store i8 %i.eh, ptr %i.ek, align 1, !tbaa !25
  %i.el = add nuw i32 %.056110, 1                 ; 2 uses
  %i.em = add i32 %.054111, 1                     ; 2 uses
  %i.en = icmp ugt i32 %i.em, 26623
  br i1 %i.en, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.eo = load i32, ptr %i.v, align 4, !tbaa !31
  %i.ep = tail call i64 @cli_writen(i32 noundef %i.eo, ptr noundef nonnull %i.ei, i64 noundef 26624) #11
  %.not.i = icmp eq i64 %i.ep, 26624
  br i1 %.not.i, label %.loopexit, label %.sink.split

bb.ab:                                            ; preds = %decode_len.exit
  %i.eq = zext i16 %.promoted.i to i32
  %i.er = sub nuw nsw i32 16, %i.dd
  %i.es = lshr i32 %i.eq, %i.er
  %i.et = trunc nuw nsw i32 %i.es to i16
  %i.eu = add nuw nsw i16 %.0374796.i, 2
  %i.ev = add nuw nsw i16 %i.eu, %i.et            ; 2 uses
  %i.ew = zext nneg i16 %i.ev to i32
  %i.ex = add i32 %.056110, %i.ew
  %i.ey = icmp slt i16 %i.dl, 1
  br i1 %i.ey, label %.thread81, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = shl i16 %.lcssa200, 2                   ; 3 uses
  %i.fa = add nsw i16 %i.dl, -1                   ; 2 uses
  store i16 %i.fa, ptr %i.r, align 4, !tbaa !91
  %i.fb = icmp sgt i16 %.lcssa, -1
  br i1 %i.fb, label %bb.ak, label %bb.ad

.thread81:                                        ; preds = %bb.ab
  %i.fc = load i16, ptr %i.l, align 2, !tbaa !39
  %i.fd = zext i16 %i.fc to i32
  %i.fe = zext nneg i16 %i.dl to i32
  %i.ff = lshr i32 %i.fd, %i.fe
  %i.fg = trunc nuw i32 %i.ff to i16
  %i.fh = or i16 %.lcssa, %i.fg
  store i16 %i.fh, ptr %i.q, align 2, !tbaa !92
  %i.fi = sext i16 %i.dl to i32
  %i.fj = sub nsw i32 16, %i.fi
  %i.fk = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef %i.fj) ; 0 uses
  %i.fl = load i16, ptr %i.q, align 2, !tbaa !92  ; 3 uses
  %i.fm = shl i16 %i.fl, 1                        ; 2 uses
  %i.fn = icmp sgt i16 %i.fl, -1
  br i1 %i.fn, label %.thread61.i, label %.thread83

bb.ad:                                            ; preds = %bb.ac
  %i.fo = icmp eq i16 %i.dl, 1
  br i1 %i.fo, label %.thread.i74, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fp = shl i16 %.lcssa200, 3                   ; 3 uses
  %i.fq = add nsw i16 %i.dl, -2                   ; 3 uses
  store i16 %i.fq, ptr %i.r, align 4, !tbaa !91
  %i.fr = icmp sgt i16 %i.ez, -1
  br i1 %i.fr, label %bb.ak, label %bb.af

.thread83:                                        ; preds = %.thread81
  %i.fs = shl i16 %i.fl, 2                        ; 2 uses
  %i.ft = icmp sgt i16 %i.fm, -1
  br i1 %i.ft, label %.thread61.i, label %.thread60.i

.thread.i74:                                      ; preds = %bb.ad
  %i.fu = load i16, ptr %i.l, align 2, !tbaa !39
  %i.fv = or i16 %i.fu, %i.ez
  store i16 %i.fv, ptr %i.q, align 2, !tbaa !92
  %i.fw = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre.i75 = load i16, ptr %i.q, align 2, !tbaa !92 ; 2 uses
  %i.fx = shl i16 %.pre.i75, 1                    ; 2 uses
  %i.fy = icmp sgt i16 %.pre.i75, -1
  br i1 %i.fy, label %.thread61.i, label %.thread60.i

bb.af:                                            ; preds = %bb.ae
  %i.fz = icmp eq i16 %i.dl, 2
  br i1 %i.fz, label %bb.ag, label %.thread60.i

bb.ag:                                            ; preds = %bb.af
  %i.ga = load i16, ptr %i.l, align 2, !tbaa !39
  %i.gb = or i16 %i.ga, %i.fp
  store i16 %i.gb, ptr %i.q, align 2, !tbaa !92
  %i.gc = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre48.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %.thread60.i

.thread60.i:                                      ; preds = %.thread83, %bb.ag, %bb.af, %.thread.i74
  %i.gd = phi i16 [ 16, %bb.ag ], [ %i.fq, %bb.af ], [ 15, %.thread.i74 ], [ 14, %.thread83 ] ; 2 uses
  %i.ge = phi i16 [ %.pre48.i, %bb.ag ], [ %i.fp, %bb.af ], [ %i.fx, %.thread.i74 ], [ %i.fs, %.thread83 ] ; 2 uses
  %i.gf = shl i16 %i.ge, 1                        ; 3 uses
  %i.gg = add nsw i16 %i.gd, -1                   ; 3 uses
  store i16 %i.gg, ptr %i.r, align 4, !tbaa !91
  %i.gh = icmp sgt i16 %i.ge, -1
  br i1 %i.gh, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %.thread60.i
  %i.gi = icmp samesign ult i16 %i.gd, 2
  br i1 %i.gi, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gj = load i16, ptr %i.l, align 2, !tbaa !39
  %i.gk = or i16 %i.gj, %i.gf
  store i16 %i.gk, ptr %i.q, align 2, !tbaa !92
  %i.gl = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre49.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gm = phi i16 [ 16, %bb.ai ], [ %i.gg, %bb.ah ]
  %i.gn = phi i16 [ %.pre49.i, %bb.ai ], [ %i.gf, %bb.ah ] ; 2 uses
  %i.go = shl i16 %i.gn, 1
  %i.gp = add nsw i16 %i.gm, -1                   ; 2 uses
  store i16 %i.gp, ptr %i.r, align 4, !tbaa !91
  %i.gq = icmp sgt i16 %i.gn, -1                  ; 2 uses
  %spec.select.i72 = select i1 %i.gq, i16 12, i16 13
  %spec.select66.i = select i1 %i.gq, i16 3584, i16 7680
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread60.i, %bb.ae, %bb.ac
  %i.gr = phi i16 [ %i.gf, %.thread60.i ], [ %i.ez, %bb.ac ], [ %i.fp, %bb.ae ], [ %i.go, %bb.aj ] ; 2 uses
  %i.gs = phi i16 [ %i.gg, %.thread60.i ], [ %i.fa, %bb.ac ], [ %i.fq, %bb.ae ], [ %i.gp, %bb.aj ] ; 3 uses
  %.038.lcssa43.i = phi i16 [ 11, %.thread60.i ], [ 9, %bb.ac ], [ 10, %bb.ae ], [ %spec.select.i72, %bb.aj ] ; 3 uses
  %.037.lcssa.i = phi i16 [ 1536, %.thread60.i ], [ 0, %bb.ac ], [ 512, %bb.ae ], [ %spec.select66.i, %bb.aj ] ; 2 uses
  %i.gt = icmp samesign ult i16 %i.gs, %.038.lcssa43.i
  br i1 %i.gt, label %bb.al, label %.thread61.i

bb.al:                                            ; preds = %bb.ak
  %i.gu = load i16, ptr %i.l, align 2, !tbaa !39
  %i.gv = zext i16 %i.gu to i32
  %i.gw = zext nneg i16 %i.gs to i32              ; 2 uses
  %i.gx = lshr i32 %i.gv, %i.gw
  %i.gy = trunc nuw i32 %i.gx to i16
  %i.gz = or i16 %i.gr, %i.gy
  store i16 %i.gz, ptr %i.q, align 2, !tbaa !92
  %i.ha = sub nuw nsw i32 16, %i.gw
  %i.hb = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef %i.ha) ; 0 uses
  %.pre50.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %.thread61.i

.thread61.i:                                      ; preds = %.thread83, %.thread81, %bb.al, %bb.ak, %.thread.i74
  %.037.lcssa65.i = phi i16 [ %.037.lcssa.i, %bb.al ], [ %.037.lcssa.i, %bb.ak ], [ 512, %.thread.i74 ], [ 512, %.thread83 ], [ 0, %.thread81 ]
  %.038.lcssa4364.i = phi i16 [ %.038.lcssa43.i, %bb.al ], [ %.038.lcssa43.i, %bb.ak ], [ 10, %.thread.i74 ], [ 10, %.thread83 ], [ 9, %.thread81 ] ; 4 uses
  %i.hc = phi i16 [ 16, %bb.al ], [ %i.gs, %bb.ak ], [ 15, %.thread.i74 ], [ 14, %.thread83 ], [ 15, %.thread81 ]
  %i.hd = phi i16 [ %.pre50.i, %bb.al ], [ %i.gr, %bb.ak ], [ %i.fx, %.thread.i74 ], [ %i.fs, %.thread83 ], [ %i.fm, %.thread81 ] ; 3 uses
  %i.he = zext nneg i16 %.038.lcssa4364.i to i32  ; 2 uses
  %xtraiter217 = and i32 %i.he, 7                 ; 3 uses
  %i.hf = add i16 %.038.lcssa4364.i, -1
  %i.hg = icmp ult i16 %i.hf, 7
  br i1 %i.hg, label %.epil.preheader216, label %.thread61.i.new

.thread61.i.new:                                  ; preds = %.thread61.i
  %unroll_iter224 = and i32 %i.he, 32760
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.thread61.i.new
  %i.hh = phi i16 [ %i.hd, %.thread61.i.new ], [ %i.hi, %bb.am ]
  %niter225 = phi i32 [ 0, %.thread61.i.new ], [ %niter225.next.7, %bb.am ]
  %i.hi = shl i16 %i.hh, 8                        ; 3 uses
  %niter225.next.7 = add i32 %niter225, 8         ; 2 uses
  %niter225.ncmp.7 = icmp eq i32 %niter225.next.7, %unroll_iter224
  br i1 %niter225.ncmp.7, label %decode_ptr.exit.unr-lcssa, label %bb.am

decode_ptr.exit.unr-lcssa:                        ; preds = %bb.am
  %lcmp.mod221.not = icmp eq i32 %xtraiter217, 0
  br i1 %lcmp.mod221.not, label %decode_ptr.exit, label %.epil.preheader216

.epil.preheader216:                               ; preds = %decode_ptr.exit.unr-lcssa, %.thread61.i
  %.epil.init220 = phi i16 [ %i.hd, %.thread61.i ], [ %i.hi, %decode_ptr.exit.unr-lcssa ]
  %lcmp.mod223 = icmp ne i32 %xtraiter217, 0
  tail call void @llvm.assume(i1 %lcmp.mod223)
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.epil.preheader216
  %i.hj = phi i16 [ %.epil.init220, %.epil.preheader216 ], [ %i.hk, %bb.an ]
  %epil.iter218 = phi i32 [ 0, %.epil.preheader216 ], [ %epil.iter218.next, %bb.an ]
  %i.hk = shl i16 %i.hj, 1                        ; 2 uses
  %epil.iter218.next = add i32 %epil.iter218, 1   ; 2 uses
  %epil.iter218.cmp.not = icmp eq i32 %epil.iter218.next, %xtraiter217
  br i1 %epil.iter218.cmp.not, label %decode_ptr.exit, label %bb.an, !llvm.loop !90

end_hunk_0
