Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unarj?download=true
inline.NumInlined: 43
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cli_unarj_extract_file:bb.a
  store <16 x i8> %wide.load, ptr %gep121, align 1, !tbaa !25
  store <16 x i8> %wide.load77, ptr %i.gx, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gp, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gr, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec78 = and i64 %i.gp, 131068                ; 5 uses
  %i.gz = add nuw nsw i64 %n.vec78, %i.gi         ; 2 uses
  %i.ha = add nuw nsw i64 %n.vec78, %i.gh
  %i.hb = trunc i64 %n.vec78 to i16
  %i.hc = sub i16 %i.gf, %i.hb
  %invariant.gep122 = getelementptr i8, ptr %i.gg, i64 %i.gh
  %invariant.gep124 = getelementptr i8, ptr %i.gg, i64 %i.gi
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next81, %vec.epilog.vector.body ] ; 3 uses
  %gep123 = getelementptr i8, ptr %invariant.gep122, i64 %index79
  %wide.load80 = load <4 x i8>, ptr %gep123, align 1, !tbaa !25
  %gep125 = getelementptr i8, ptr %invariant.gep124, i64 %index79
  store <4 x i8> %wide.load80, ptr %gep125, align 1, !tbaa !25
  %index.next81 = add nuw i64 %index79, 4         ; 2 uses
  %i.hd = icmp eq i64 %index.next81, %n.vec78
  br i1 %i.hd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n82 = icmp eq i64 %i.gp, %n.vec78
  br i1 %cmp.n82, label %.loopexit.loopexit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv119.i.ph = phi i64 [ %i.gi, %iter.check ], [ %i.gs, %vec.epilog.iter.check ], [ %i.gz, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ %i.gh, %iter.check ], [ %i.gt, %vec.epilog.iter.check ], [ %i.ha, %vec.epilog.middle.block ]
  %.ph100 = phi i16 [ %i.gf, %iter.check ], [ %i.gv, %vec.epilog.iter.check ], [ %i.hc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %vec.epilog.scalar.ph ], [ %indvars.iv119.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.he = phi i16 [ %i.hi, %vec.epilog.scalar.ph ], [ %.ph100, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv.i
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !25
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv119.i
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !25
  %i.hi = add i16 %i.he, -1                       ; 2 uses
  %i.hj = icmp sgt i16 %i.hi, -1
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
  br i1 %.not, label %bb.at, label %bb.b

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
  %i.w = phi i16 [ 0, %.lr.ph112 ], [ %i.hx, %.loopexit ] ; 4 uses
  %i.x = phi i16 [ 0, %.lr.ph112 ], [ %i.hy, %.loopexit ] ; 8 uses
  %.054111 = phi i32 [ 0, %.lr.ph112 ], [ %.3, %.loopexit ] ; 5 uses
  %.056110 = phi i32 [ 0, %.lr.ph112 ], [ %.157, %.loopexit ] ; 2 uses
  %i.y = icmp slt i16 %i.x, 1
  br i1 %i.y, label %.thread.a, label %2

2:                                                ; preds = %bb.e
  %3 = shl i16 %i.w, 1                            ; 4 uses
  %4 = add nsw i16 %i.x, -1                       ; 4 uses
  store i16 %4, ptr %i.r, align 4, !tbaa !91
  %5 = icmp sgt i16 %i.w, -1
  br i1 %5, label %decode_len.exit.thread, label %8

.thread.a:                                        ; preds = %bb.e
  %i.z = load i16, ptr %i.l, align 2, !tbaa !39
  %i.aa = zext i16 %i.z to i32
  %i.ab = zext nneg i16 %i.x to i32
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc nuw i32 %i.ac to i16
  %i.ae = or i16 %i.w, %i.ad
  store i16 %i.ae, ptr %i.q, align 2, !tbaa !92
  %i.af = sext i16 %i.x to i32
  %i.ag = sub nsw i32 16, %i.af
  %i.ah = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef %i.ag) ; 0 uses
  %.pre = load i16, ptr %i.q, align 2, !tbaa !92  ; 3 uses
  %6 = shl i16 %.pre, 1                           ; 2 uses
  %7 = icmp sgt i16 %.pre, -1
  br i1 %7, label %decode_len.exit.thread.thread, label %.thread159

8:                                                ; preds = %2
  %9 = icmp eq i16 %i.x, 1
  br i1 %9, label %.thread83.i, label %bb.f

bb.f:                                             ; preds = %8
  %i.ai = shl i16 %i.w, 2                         ; 3 uses
  %i.aj = add nsw i16 %i.x, -2                    ; 3 uses
  store i16 %i.aj, ptr %i.r, align 4, !tbaa !91
  %i.ak = icmp sgt i16 %3, -1
  br i1 %i.ak, label %.thread.i, label %bb.g

.thread159:                                       ; preds = %.thread.a
  %i.al = shl i16 %.pre, 2                        ; 2 uses
  %i.am = icmp sgt i16 %6, -1
  br i1 %i.am, label %.lr.ph.i, label %.thread84.i

.thread83.i:                                      ; preds = %8
  %i.an = load i16, ptr %i.l, align 2, !tbaa !39
  %i.ao = or i16 %i.an, %3
  store i16 %i.ao, ptr %i.q, align 2, !tbaa !92
  %i.ap = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre.i = load i16, ptr %i.q, align 2, !tbaa !92 ; 2 uses
  %i.aq = shl i16 %.pre.i, 1                      ; 2 uses
  %i.ar = icmp sgt i16 %.pre.i, -1
  br i1 %i.ar, label %.lr.ph.i, label %.thread84.i

bb.g:                                             ; preds = %bb.f
  %i.as = icmp eq i16 %i.x, 2
  br i1 %i.as, label %bb.h, label %.thread84.i

bb.h:                                             ; preds = %bb.g
  %i.at = load i16, ptr %i.l, align 2, !tbaa !39
  %i.au = or i16 %i.at, %i.ai
  store i16 %i.au, ptr %i.q, align 2, !tbaa !92
  %i.av = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre62.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %.thread84.i

.thread84.i:                                      ; preds = %.thread159, %bb.h, %bb.g, %.thread83.i
  %10 = phi i16 [ 16, %bb.h ], [ %i.aj, %bb.g ], [ 15, %.thread83.i ], [ 14, %.thread159 ] ; 4 uses
  %11 = phi i16 [ %.pre62.i, %bb.h ], [ %i.ai, %bb.g ], [ %i.aq, %.thread83.i ], [ %i.al, %.thread159 ] ; 3 uses
  %i.aw = shl i16 %11, 1                          ; 3 uses
  %i.ax = add nsw i16 %10, -1                     ; 2 uses
  store i16 %i.ax, ptr %i.r, align 4, !tbaa !91
  %i.ay = icmp sgt i16 %11, -1
  br i1 %i.ay, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %.thread84.i
  %i.az = icmp samesign ult i16 %10, 2
  br i1 %i.az, label %.thread85.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = shl i16 %11, 2                          ; 3 uses
  %i.bb = add nsw i16 %10, -2                     ; 3 uses
  store i16 %i.bb, ptr %i.r, align 4, !tbaa !91
  %i.bc = icmp sgt i16 %i.aw, -1
  br i1 %i.bc, label %.thread.i, label %bb.k

.thread85.i:                                      ; preds = %bb.i
  %i.bd = load i16, ptr %i.l, align 2, !tbaa !39
  %i.be = or i16 %i.bd, %i.aw
  store i16 %i.be, ptr %i.q, align 2, !tbaa !92
  %i.bf = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre63.i = load i16, ptr %i.q, align 2, !tbaa !92 ; 2 uses
  %i.bg = shl i16 %.pre63.i, 1                    ; 2 uses
  %i.bh = icmp sgt i16 %.pre63.i, -1
  br i1 %i.bh, label %.lr.ph.i, label %.thread86.i

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp eq i16 %10, 2
  br i1 %i.bi, label %bb.l, label %.thread86.i

bb.l:                                             ; preds = %bb.k
  %i.bj = load i16, ptr %i.l, align 2, !tbaa !39
  %i.bk = or i16 %i.bj, %i.ba
  store i16 %i.bk, ptr %i.q, align 2, !tbaa !92
  %i.bl = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre64.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %.thread86.i

.thread86.i:                                      ; preds = %bb.l, %bb.k, %.thread85.i
  %i.bm = phi i16 [ 16, %bb.l ], [ %i.bb, %bb.k ], [ 15, %.thread85.i ] ; 4 uses
  %i.bn = phi i16 [ %.pre64.i, %bb.l ], [ %i.ba, %bb.k ], [ %i.bg, %.thread85.i ] ; 3 uses
  %i.bo = shl i16 %i.bn, 1                        ; 3 uses
  %i.bp = add nsw i16 %i.bm, -1                   ; 2 uses
  store i16 %i.bp, ptr %i.r, align 4, !tbaa !91
  %i.bq = icmp sgt i16 %i.bn, -1
  br i1 %i.bq, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %.thread86.i
  %i.br = icmp samesign ult i16 %i.bm, 2
  br i1 %i.br, label %.thread87.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = shl i16 %i.bn, 2                        ; 3 uses
  %i.bt = add nsw i16 %i.bm, -2                   ; 3 uses
  store i16 %i.bt, ptr %i.r, align 4, !tbaa !91
  %i.bu = icmp sgt i16 %i.bo, -1
  br i1 %i.bu, label %.thread.i, label %bb.o

.thread87.i:                                      ; preds = %bb.m
  %i.bv = load i16, ptr %i.l, align 2, !tbaa !39
  %i.bw = or i16 %i.bv, %i.bo
  store i16 %i.bw, ptr %i.q, align 2, !tbaa !92
  %i.bx = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre65.i = load i16, ptr %i.q, align 2, !tbaa !92 ; 2 uses
  %i.by = shl i16 %.pre65.i, 1                    ; 2 uses
  %i.bz = icmp sgt i16 %.pre65.i, -1
  br i1 %i.bz, label %.lr.ph.i, label %.thread88.i

bb.o:                                             ; preds = %bb.n
  %i.ca = icmp eq i16 %i.bm, 2
  br i1 %i.ca, label %bb.p, label %.thread88.i

bb.p:                                             ; preds = %bb.o
  %i.cb = load i16, ptr %i.l, align 2, !tbaa !39
  %i.cc = or i16 %i.cb, %i.bs
  store i16 %i.cc, ptr %i.q, align 2, !tbaa !92
  %i.cd = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre66.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %.thread88.i

.thread88.i:                                      ; preds = %bb.p, %bb.o, %.thread87.i
  %i.ce = phi i16 [ 16, %bb.p ], [ %i.bt, %bb.o ], [ 15, %.thread87.i ]
  %i.cf = phi i16 [ %.pre66.i, %bb.p ], [ %i.bs, %bb.o ], [ %i.by, %.thread87.i ] ; 2 uses
  %i.cg = shl i16 %i.cf, 1
  %i.ch = add nsw i16 %i.ce, -1                   ; 2 uses
  store i16 %i.ch, ptr %i.r, align 4, !tbaa !91
  %i.ci = icmp sgt i16 %i.cf, -1                  ; 2 uses
  %spec.select.i = select i1 %i.ci, i16 6, i16 7
  %spec.select97.i = select i1 %i.ci, i16 63, i16 127
  br label %.thread.i

.thread.i:                                        ; preds = %.thread88.i, %bb.n, %.thread86.i, %bb.j, %.thread84.i, %bb.f
  %i.cj = phi i16 [ %i.cg, %.thread88.i ], [ %i.aw, %.thread84.i ], [ %i.ai, %bb.f ], [ %i.ba, %bb.j ], [ %i.bs, %bb.n ], [ %i.bo, %.thread86.i ] ; 2 uses
  %i.ck = phi i16 [ %i.ch, %.thread88.i ], [ %i.ax, %.thread84.i ], [ %i.aj, %bb.f ], [ %i.bb, %bb.j ], [ %i.bt, %bb.n ], [ %i.bp, %.thread86.i ] ; 3 uses
  %.03850.i = phi i16 [ %spec.select.i, %.thread88.i ], [ 2, %.thread84.i ], [ 1, %bb.f ], [ 3, %bb.j ], [ 5, %bb.n ], [ 4, %.thread86.i ] ; 3 uses
  %.03747.i = phi i16 [ %spec.select97.i, %.thread88.i ], [ 3, %.thread84.i ], [ 1, %bb.f ], [ 7, %bb.j ], [ 31, %bb.n ], [ 15, %.thread86.i ] ; 2 uses
  %i.cl = icmp samesign ult i16 %i.ck, %.03850.i
  br i1 %i.cl, label %bb.q, label %.lr.ph.i

bb.q:                                             ; preds = %.thread.i
  %i.cm = load i16, ptr %i.l, align 2, !tbaa !39
  %i.cn = zext i16 %i.cm to i32
  %i.co = zext nneg i16 %i.ck to i32              ; 2 uses
  %i.cp = lshr i32 %i.cn, %i.co
  %i.cq = trunc nuw i32 %i.cp to i16
  %i.cr = or i16 %i.cj, %i.cq
  store i16 %i.cr, ptr %i.q, align 2, !tbaa !92
  %i.cs = sub nuw nsw i32 16, %i.co
  %i.ct = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef %i.cs) ; 0 uses
  %.pre67.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread159, %.thread83.i, %.thread85.i, %.thread87.i, %bb.q, %.thread.i
  %.0374796.i = phi i16 [ %.03747.i, %bb.q ], [ %.03747.i, %.thread.i ], [ 1, %.thread83.i ], [ 7, %.thread85.i ], [ 31, %.thread87.i ], [ 1, %.thread159 ]
  %.0385095.i = phi i16 [ %.03850.i, %bb.q ], [ %.03850.i, %.thread.i ], [ 1, %.thread83.i ], [ 3, %.thread85.i ], [ 5, %.thread87.i ], [ 1, %.thread159 ] ; 3 uses
  %12 = phi i16 [ 16, %bb.q ], [ %i.ck, %.thread.i ], [ 15, %.thread83.i ], [ 15, %.thread85.i ], [ 15, %.thread87.i ], [ 14, %.thread159 ]
  %.promoted.i = phi i16 [ %.pre67.i, %bb.q ], [ %i.cj, %.thread.i ], [ %i.aq, %.thread83.i ], [ %i.bg, %.thread85.i ], [ %i.by, %.thread87.i ], [ %i.al, %.thread159 ] ; 3 uses
  %i.cu = zext nneg i16 %.0385095.i to i32        ; 3 uses
  %xtraiter = and i32 %i.cu, 7                    ; 3 uses
  %i.cv = add i16 %.0385095.i, -1
  %i.cw = icmp ult i16 %i.cv, 7
  br i1 %i.cw, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.cu, 32760
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.new
  %i.cx = phi i16 [ %.promoted.i, %.lr.ph.i.new ], [ %i.cy, %bb.r ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.r ]
  %i.cy = shl i16 %i.cx, 8                        ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %decode_len.exit.unr-lcssa, label %bb.r

decode_len.exit.unr-lcssa:                        ; preds = %bb.r
  %i.cz = shl i16 %i.cx, 7
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %decode_len.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %decode_len.exit.unr-lcssa, %.lr.ph.i
  %.epil.init = phi i16 [ %.promoted.i, %.lr.ph.i ], [ %i.cy, %decode_len.exit.unr-lcssa ]
  %lcmp.mod215 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod215)
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.epil.preheader
  %i.da = phi i16 [ %.epil.init, %.epil.preheader ], [ %i.db, %bb.s ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.s ]
  %i.db = shl i16 %i.da, 1                        ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %decode_len.exit, label %bb.s, !llvm.loop !89

decode_len.exit:                                  ; preds = %bb.s, %decode_len.exit.unr-lcssa
  %.lcssa200 = phi i16 [ %i.cz, %decode_len.exit.unr-lcssa ], [ %i.da, %bb.s ] ; 2 uses
  %.lcssa = phi i16 [ %i.cy, %decode_len.exit.unr-lcssa ], [ %i.db, %bb.s ] ; 2 uses
  %i.dc = sub nsw i16 %12, %.0385095.i            ; 8 uses
  store i16 %i.dc, ptr %i.r, align 4, !tbaa !91
  %i.dd = load i32, ptr %i.s, align 8, !tbaa !38  ; 2 uses
  %.not66 = icmp eq i32 %i.dd, 0
  br i1 %.not66, label %bb.z, label %bb.t

decode_len.exit.thread:                           ; preds = %2
  %13 = load i32, ptr %i.s, align 8, !tbaa !38    ; 2 uses
  %.not6680 = icmp eq i32 %13, 0
  br i1 %.not6680, label %bb.u, label %bb.t

decode_len.exit.thread.thread:                    ; preds = %.thread.a
  %i.de = load i32, ptr %i.s, align 8, !tbaa !38  ; 2 uses
  %.not6680163 = icmp eq i32 %i.de, 0
  br i1 %.not6680163, label %.thread166, label %bb.t

bb.t:                                             ; preds = %decode_len.exit.thread.thread, %decode_len.exit.thread, %decode_len.exit
  %14 = phi i32 [ %13, %decode_len.exit.thread ], [ %i.dd, %decode_len.exit ], [ %i.de, %decode_len.exit.thread.thread ]
  %i.df = load ptr, ptr %1, align 8, !tbaa !33
  br label %.sink.split

bb.u:                                             ; preds = %decode_len.exit.thread
  %i.dg = icmp samesign ult i16 %i.x, 9
  br i1 %i.dg, label %bb.v, label %.thread166

.thread166:                                       ; preds = %bb.u, %decode_len.exit.thread.thread
  %.ph = phi i16 [ %4, %bb.u ], [ 15, %decode_len.exit.thread.thread ]
  %.ph165 = phi i16 [ %3, %bb.u ], [ %6, %decode_len.exit.thread.thread ] ; 2 uses
  %i.dh = shl i16 %.ph165, 8                      ; 2 uses
  store i16 %i.dh, ptr %i.q, align 2, !tbaa !92
  %i.di = add nsw i16 %.ph, -8                    ; 2 uses
  store i16 %i.di, ptr %i.r, align 4, !tbaa !91
  br label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.dj = load i16, ptr %i.l, align 2, !tbaa !39
  %i.dk = zext i16 %i.dj to i32
  %i.dl = zext nneg i16 %4 to i32
  %i.dm = lshr i32 %i.dk, %i.dl
  %i.dn = trunc nuw i32 %i.dm to i16
  %i.do = or i16 %3, %i.dn
  store i16 %i.do, ptr %i.q, align 2, !tbaa !92
  %i.dp = zext nneg i16 %4 to i32
  %i.dq = sub nuw nsw i32 16, %i.dp
  %i.dr = call fastcc i32 @fill_buf(ptr noundef %1, i32 noundef %i.dq) ; 0 uses
  %.pre130.a = load i16, ptr %i.q, align 2, !tbaa !92 ; 2 uses
  %.pre131 = load i32, ptr %i.s, align 8, !tbaa !38 ; 2 uses
  %i.ds = shl i16 %.pre130.a, 8                   ; 2 uses
  store i16 %i.ds, ptr %i.q, align 2, !tbaa !92
  store i16 8, ptr %i.r, align 4, !tbaa !91
  %.not70 = icmp eq i32 %.pre131, 0
  br i1 %.not70, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dt = load ptr, ptr %1, align 8, !tbaa !33
  br label %.sink.split

bb.x:                                             ; preds = %.thread166, %bb.v
  %i.du = phi i16 [ %i.di, %.thread166 ], [ 8, %bb.v ] ; 2 uses
  %i.dv = phi i16 [ %i.dh, %.thread166 ], [ %i.ds, %bb.v ] ; 2 uses
  %15 = phi i16 [ %.ph165, %.thread166 ], [ %.pre130.a, %bb.v ]
  %16 = lshr i16 %15, 8
  %17 = trunc nuw i16 %16 to i8
  %i.dw = load ptr, ptr %1, align 8, !tbaa !33    ; 3 uses
  %i.dx = zext i32 %.054111 to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dx
  store i8 %17, ptr %i.dy, align 1, !tbaa !25
  %i.dz = add nuw i32 %.056110, 1                 ; 2 uses
  %i.ea = add i32 %.054111, 1                     ; 2 uses
  %i.eb = icmp ugt i32 %i.ea, 26623
  br i1 %i.eb, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.ec = load i32, ptr %i.v, align 4, !tbaa !31
  %i.ed = tail call i64 @cli_writen(i32 noundef %i.ec, ptr noundef nonnull %i.dw, i64 noundef 26624) #11
  %.not.i = icmp eq i64 %i.ed, 26624
  br i1 %.not.i, label %.loopexit, label %.sink.split

bb.z:                                             ; preds = %decode_len.exit
  %i.ee = zext i16 %.promoted.i to i32
  %i.ef = sub nuw nsw i32 16, %i.cu
  %i.eg = lshr i32 %i.ee, %i.ef
  %i.eh = trunc nuw nsw i32 %i.eg to i16
  %i.ei = add nuw nsw i16 %.0374796.i, 2
  %i.ej = add nuw nsw i16 %i.ei, %i.eh            ; 2 uses
  %i.ek = zext nneg i16 %i.ej to i32
  %i.el = add i32 %.056110, %i.ek
  %i.em = icmp slt i16 %i.dc, 1
  br i1 %i.em, label %.thread81, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.en = shl i16 %.lcssa200, 2                   ; 3 uses
  %i.eo = add nsw i16 %i.dc, -1                   ; 2 uses
  store i16 %i.eo, ptr %i.r, align 4, !tbaa !91
  %i.ep = icmp sgt i16 %.lcssa, -1
  br i1 %i.ep, label %bb.ai, label %bb.ab

.thread81:                                        ; preds = %bb.z
  %i.eq = load i16, ptr %i.l, align 2, !tbaa !39
  %i.er = zext i16 %i.eq to i32
  %i.es = zext nneg i16 %i.dc to i32
  %i.et = lshr i32 %i.er, %i.es
  %i.eu = trunc nuw i32 %i.et to i16
  %i.ev = or i16 %.lcssa, %i.eu
  store i16 %i.ev, ptr %i.q, align 2, !tbaa !92
  %i.ew = sext i16 %i.dc to i32
  %i.ex = sub nsw i32 16, %i.ew
  %i.ey = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef %i.ex) ; 0 uses
  %i.ez = load i16, ptr %i.q, align 2, !tbaa !92  ; 3 uses
  %i.fa = shl i16 %i.ez, 1                        ; 2 uses
  %i.fb = icmp sgt i16 %i.ez, -1
  br i1 %i.fb, label %.thread61.i, label %.thread83

bb.ab:                                            ; preds = %bb.aa
  %i.fc = icmp eq i16 %i.dc, 1
  br i1 %i.fc, label %.thread.i74, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fd = shl i16 %.lcssa200, 3                   ; 3 uses
  %i.fe = add nsw i16 %i.dc, -2                   ; 3 uses
  store i16 %i.fe, ptr %i.r, align 4, !tbaa !91
  %i.ff = icmp sgt i16 %i.en, -1
  br i1 %i.ff, label %bb.ai, label %bb.ad

.thread83:                                        ; preds = %.thread81
  %i.fg = shl i16 %i.ez, 2                        ; 2 uses
  %i.fh = icmp sgt i16 %i.fa, -1
  br i1 %i.fh, label %.thread61.i, label %.thread60.i

.thread.i74:                                      ; preds = %bb.ab
  %i.fi = load i16, ptr %i.l, align 2, !tbaa !39
  %i.fj = or i16 %i.fi, %i.en
  store i16 %i.fj, ptr %i.q, align 2, !tbaa !92
  %i.fk = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre.i75 = load i16, ptr %i.q, align 2, !tbaa !92 ; 2 uses
  %i.fl = shl i16 %.pre.i75, 1                    ; 2 uses
  %i.fm = icmp sgt i16 %.pre.i75, -1
  br i1 %i.fm, label %.thread61.i, label %.thread60.i

bb.ad:                                            ; preds = %bb.ac
  %i.fn = icmp eq i16 %i.dc, 2
  br i1 %i.fn, label %bb.ae, label %.thread60.i

bb.ae:                                            ; preds = %bb.ad
  %i.fo = load i16, ptr %i.l, align 2, !tbaa !39
  %i.fp = or i16 %i.fo, %i.fd
  store i16 %i.fp, ptr %i.q, align 2, !tbaa !92
  %i.fq = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre48.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %.thread60.i

.thread60.i:                                      ; preds = %.thread83, %bb.ae, %bb.ad, %.thread.i74
  %i.fr = phi i16 [ 16, %bb.ae ], [ %i.fe, %bb.ad ], [ 15, %.thread.i74 ], [ 14, %.thread83 ] ; 2 uses
  %i.fs = phi i16 [ %.pre48.i, %bb.ae ], [ %i.fd, %bb.ad ], [ %i.fl, %.thread.i74 ], [ %i.fg, %.thread83 ] ; 2 uses
  %i.ft = shl i16 %i.fs, 1                        ; 3 uses
  %i.fu = add nsw i16 %i.fr, -1                   ; 3 uses
  store i16 %i.fu, ptr %i.r, align 4, !tbaa !91
  %i.fv = icmp sgt i16 %i.fs, -1
  br i1 %i.fv, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.thread60.i
  %i.fw = icmp samesign ult i16 %i.fr, 2
  br i1 %i.fw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fx = load i16, ptr %i.l, align 2, !tbaa !39
  %i.fy = or i16 %i.fx, %i.ft
  store i16 %i.fy, ptr %i.q, align 2, !tbaa !92
  %i.fz = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 0 uses
  %.pre49.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ga = phi i16 [ 16, %bb.ag ], [ %i.fu, %bb.af ]
  %i.gb = phi i16 [ %.pre49.i, %bb.ag ], [ %i.ft, %bb.af ] ; 2 uses
  %i.gc = shl i16 %i.gb, 1
  %i.gd = add nsw i16 %i.ga, -1                   ; 2 uses
  store i16 %i.gd, ptr %i.r, align 4, !tbaa !91
  %i.ge = icmp sgt i16 %i.gb, -1                  ; 2 uses
  %spec.select.i72 = select i1 %i.ge, i16 12, i16 13
  %spec.select66.i = select i1 %i.ge, i16 3584, i16 7680
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread60.i, %bb.ac, %bb.aa
  %i.gf = phi i16 [ %i.ft, %.thread60.i ], [ %i.en, %bb.aa ], [ %i.fd, %bb.ac ], [ %i.gc, %bb.ah ] ; 2 uses
  %i.gg = phi i16 [ %i.fu, %.thread60.i ], [ %i.eo, %bb.aa ], [ %i.fe, %bb.ac ], [ %i.gd, %bb.ah ] ; 3 uses
  %.038.lcssa43.i = phi i16 [ 11, %.thread60.i ], [ 9, %bb.aa ], [ 10, %bb.ac ], [ %spec.select.i72, %bb.ah ] ; 3 uses
  %.037.lcssa.i = phi i16 [ 1536, %.thread60.i ], [ 0, %bb.aa ], [ 512, %bb.ac ], [ %spec.select66.i, %bb.ah ] ; 2 uses
  %i.gh = icmp samesign ult i16 %i.gg, %.038.lcssa43.i
  br i1 %i.gh, label %bb.aj, label %.thread61.i

bb.aj:                                            ; preds = %bb.ai
  %i.gi = load i16, ptr %i.l, align 2, !tbaa !39
  %i.gj = zext i16 %i.gi to i32
  %i.gk = zext nneg i16 %i.gg to i32              ; 2 uses
  %i.gl = lshr i32 %i.gj, %i.gk
  %i.gm = trunc nuw i32 %i.gl to i16
  %i.gn = or i16 %i.gf, %i.gm
  store i16 %i.gn, ptr %i.q, align 2, !tbaa !92
  %i.go = sub nuw nsw i32 16, %i.gk
  %i.gp = call fastcc i32 @fill_buf(ptr noundef nonnull %1, i32 noundef %i.go) ; 0 uses
  %.pre50.i = load i16, ptr %i.q, align 2, !tbaa !92
  br label %.thread61.i

.thread61.i:                                      ; preds = %.thread83, %.thread81, %bb.aj, %bb.ai, %.thread.i74
  %.037.lcssa65.i = phi i16 [ %.037.lcssa.i, %bb.aj ], [ %.037.lcssa.i, %bb.ai ], [ 512, %.thread.i74 ], [ 512, %.thread83 ], [ 0, %.thread81 ]
  %.038.lcssa4364.i = phi i16 [ %.038.lcssa43.i, %bb.aj ], [ %.038.lcssa43.i, %bb.ai ], [ 10, %.thread.i74 ], [ 10, %.thread83 ], [ 9, %.thread81 ] ; 4 uses
  %i.gq = phi i16 [ 16, %bb.aj ], [ %i.gg, %bb.ai ], [ 15, %.thread.i74 ], [ 14, %.thread83 ], [ 15, %.thread81 ]
  %i.gr = phi i16 [ %.pre50.i, %bb.aj ], [ %i.gf, %bb.ai ], [ %i.fl, %.thread.i74 ], [ %i.fg, %.thread83 ], [ %i.fa, %.thread81 ] ; 3 uses
  %i.gs = zext nneg i16 %.038.lcssa4364.i to i32  ; 2 uses
  %xtraiter217 = and i32 %i.gs, 7                 ; 3 uses
  %i.gt = add i16 %.038.lcssa4364.i, -1
  %i.gu = icmp ult i16 %i.gt, 7
  br i1 %i.gu, label %.epil.preheader216, label %.thread61.i.new

.thread61.i.new:                                  ; preds = %.thread61.i
  %unroll_iter224 = and i32 %i.gs, 32760
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.thread61.i.new
  %i.gv = phi i16 [ %i.gr, %.thread61.i.new ], [ %i.gw, %bb.ak ]
  %niter225 = phi i32 [ 0, %.thread61.i.new ], [ %niter225.next.7, %bb.ak ]
  %i.gw = shl i16 %i.gv, 8                        ; 3 uses
  %niter225.next.7 = add i32 %niter225, 8         ; 2 uses
  %niter225.ncmp.7 = icmp eq i32 %niter225.next.7, %unroll_iter224
  br i1 %niter225.ncmp.7, label %decode_ptr.exit.unr-lcssa, label %bb.ak

decode_ptr.exit.unr-lcssa:                        ; preds = %bb.ak
  %lcmp.mod221.not = icmp eq i32 %xtraiter217, 0
  br i1 %lcmp.mod221.not, label %decode_ptr.exit, label %.epil.preheader216

.epil.preheader216:                               ; preds = %decode_ptr.exit.unr-lcssa, %.thread61.i
  %.epil.init220 = phi i16 [ %i.gr, %.thread61.i ], [ %i.gw, %decode_ptr.exit.unr-lcssa ]
  %lcmp.mod223 = icmp ne i32 %xtraiter217, 0
  tail call void @llvm.assume(i1 %lcmp.mod223)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader216
  %i.gx = phi i16 [ %.epil.init220, %.epil.preheader216 ], [ %i.gy, %bb.al ]
  %epil.iter218 = phi i32 [ 0, %.epil.preheader216 ], [ %epil.iter218.next, %bb.al ]
  %i.gy = shl i16 %i.gx, 1                        ; 2 uses
  %epil.iter218.next = add i32 %epil.iter218, 1   ; 2 uses
  %epil.iter218.cmp.not = icmp eq i32 %epil.iter218.next, %xtraiter217
  br i1 %epil.iter218.cmp.not, label %decode_ptr.exit, label %bb.al, !llvm.loop !90

decode_ptr.exit:                                  ; preds = %bb.al, %decode_ptr.exit.unr-lcssa
  %.lcssa201 = phi i16 [ %i.gw, %decode_ptr.exit.unr-lcssa ], [ %i.gy, %bb.al ] ; 2 uses
  store i16 %.lcssa201, ptr %i.q, align 2, !tbaa !92
  %i.gz = sub nsw i16 %i.gq, %.038.lcssa4364.i    ; 2 uses
  store i16 %i.gz, ptr %i.r, align 4, !tbaa !91
  %i.ha = load i32, ptr %i.s, align 8, !tbaa !38  ; 2 uses
  %.not67 = icmp eq i32 %i.ha, 0
  br i1 %.not67, label %bb.an, label %bb.am

bb.am:                                            ; preds = %decode_ptr.exit
  %i.hb = load ptr, ptr %1, align 8, !tbaa !33
  br label %.sink.split

bb.an:                                            ; preds = %decode_ptr.exit
  %i.hc = sub nuw nsw i16 16, %.038.lcssa4364.i
  %i.hd = lshr i16 %i.gr, %i.hc
  %i.he = add nuw nsw i16 %i.hd, %.037.lcssa65.i
  %i.hf = xor i16 %i.he, -1
  %i.hg = trunc i32 %.054111 to i16
  %i.hh = add i16 %i.hf, %i.hg                    ; 3 uses
  %i.hi = icmp slt i16 %i.hh, 0
  %narrow = add nsw i16 %i.hh, 26624
  %spec.select = select i1 %i.hi, i16 %narrow, i16 %i.hh ; 2 uses
  %or.cond = icmp ugt i16 %spec.select, 26623
  br i1 %or.cond, label %bb.ao, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an
  %i.hj = load ptr, ptr %1, align 8, !tbaa !33    ; 4 uses
  br label %bb.ap

bb.ao:                                            ; preds = %bb.an
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.48) #11
  br label %.loopexit89

bb.ap:                                            ; preds = %.lr.ph, %bb.ar
  %.in = phi i16 [ %i.ej, %.lr.ph ], [ %i.hk, %bb.ar ] ; 2 uses
  %.1107 = phi i16 [ %spec.select, %.lr.ph ], [ %spec.store.select, %bb.ar ] ; 2 uses
  %.155106 = phi i32 [ %.054111, %.lr.ph ], [ %.2, %bb.ar ] ; 2 uses
  %i.hk = add nsw i16 %.in, -1
  %i.hl = sext i16 %.1107 to i64
  %i.hm = getelementptr inbounds i8, ptr %i.hj, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !25
  %i.ho = zext i32 %.155106 to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.ho
  store i8 %i.hn, ptr %i.hp, align 1, !tbaa !25
  %i.hq = add i32 %.155106, 1                     ; 2 uses
  %i.hr = icmp ugt i32 %i.hq, 26623
  br i1 %i.hr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hs = load i32, ptr %i.v, align 4, !tbaa !31
  %i.ht = tail call i64 @cli_writen(i32 noundef %i.hs, ptr noundef nonnull %i.hj, i64 noundef 26624) #11
  %.not.i76 = icmp eq i64 %i.ht, 26624
  br i1 %.not.i76, label %bb.ar, label %.sink.split

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.2 = phi i32 [ 0, %bb.aq ], [ %i.hq, %bb.ap ]  ; 2 uses
  %i.hu = add i16 %.1107, 1                       ; 2 uses
  %i.hv = icmp sgt i16 %i.hu, 26623
  %spec.store.select = select i1 %i.hv, i16 0, i16 %i.hu
  %i.hw = icmp samesign ugt i16 %.in, 1
  br i1 %i.hw, label %bb.ap, label %.loopexit

.loopexit:                                        ; preds = %bb.ar, %bb.x, %bb.y
  %i.hx = phi i16 [ %i.dv, %bb.y ], [ %i.dv, %bb.x ], [ %.lcssa201, %bb.ar ]
  %i.hy = phi i16 [ %i.du, %bb.y ], [ %i.du, %bb.x ], [ %i.gz, %bb.ar ]
  %.157 = phi i32 [ %i.dz, %bb.y ], [ %i.dz, %bb.x ], [ %i.el, %bb.ar ] ; 2 uses
  %.3 = phi i32 [ 0, %bb.y ], [ %i.ea, %bb.x ], [ %.2, %bb.ar ] ; 2 uses
  %i.hz = load i32, ptr %i.t, align 4, !tbaa !28
  %i.ia = icmp ult i32 %.157, %i.hz
  br i1 %i.ia, label %bb.e, label %.loopexit89

.loopexit89:                                      ; preds = %.loopexit, %bb.ao
  %.054102 = phi i32 [ %.054111, %bb.ao ], [ %.3, %.loopexit ] ; 2 uses
  %.not69 = icmp eq i32 %.054102, 0
  %.pre132 = load ptr, ptr %1, align 8, !tbaa !33 ; 3 uses
  br i1 %.not69, label %.sink.split, label %bb.as

bb.as:                                            ; preds = %.loopexit89
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !31
  %i.id = zext i32 %.054102 to i64
  %i.ie = tail call i64 @cli_writen(i32 noundef %i.ic, ptr noundef %.pre132, i64 noundef range(i64 1, 4294967296) %i.id) #11 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.aq, %.loopexit89, %bb.as, %.loopexit89.thread, %bb.c, %bb.t, %bb.w, %bb.am
  %.pre132171.sink = phi ptr [ %.pre132, %.loopexit89 ], [ %i.hj, %bb.aq ], [ %i.hb, %bb.am ], [ %i.p, %bb.c ], [ %i.dt, %bb.w ], [ %i.df, %bb.t ], [ %.pre132170, %.loopexit89.thread ], [ %.pre132, %bb.as ], [ %i.dw, %bb.y ]
  %.058.ph = phi i32 [ 0, %.loopexit89 ], [ 14, %bb.aq ], [ %i.ha, %bb.am ], [ %i.o, %bb.c ], [ %.pre131, %bb.w ], [ %14, %bb.t ], [ 0, %.loopexit89.thread ], [ 0, %bb.as ], [ 14, %bb.y ]
  tail call void @free(ptr noundef %.pre132171.sink) #11
  %i.if = load i64, ptr %i.h, align 8, !tbaa !35
  store i64 %i.if, ptr %i.f, align 8, !tbaa !16
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %bb.a
  %.058 = phi i32 [ 20, %bb.a ], [ %.058.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i32 %.058
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @cli_max_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

declare i32 @text_normalize_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @text_normalize_buffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strndup(ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 27) i32 @fill_buf(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -32771, 65536) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13368 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38
  %i.c = icmp eq i32 %i.b, 26
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 6 uses
  %i.e = load i16, ptr %i.d, align 2, !tbaa !39
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %i.g = icmp sgt i32 %1, 0
  %i.h = add nsw i32 %1, -1
  %i.i = shl i32 2, %i.h
  %i.j = select i1 %i.g, i32 %i.i, i32 0
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.f, %i.k
  %i.m = icmp ugt i64 %i.l, 4294967295
  br i1 %i.m, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %1 to i64
  %i.o = shl i64 %i.f, %i.n
  %i.p = trunc i64 %i.o to i16                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !42   ; 3 uses
  %i.s = icmp sgt i32 %1, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12853 ; 6 uses
  br i1 %i.s, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.c
  %.pre74 = load i8, ptr %i.t, align 1, !tbaa !37
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.z = load i32, ptr %i.u, align 8, !tbaa !36   ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  %.promoted = load i8, ptr %i.t, align 1, !tbaa !37
  %i.ab = zext i8 %.promoted to i32
  %i.ac = sub nsw i32 %1, %i.r                    ; 7 uses
  %i.ad = shl i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i16
  %i.af = or i16 %i.p, %i.ae                      ; 2 uses
  br i1 %i.aa, label %.lr.ph.split.us, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store i16 %i.af, ptr %i.d, align 2, !tbaa !39
  %i.ag = add i32 %i.z, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !36
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !95  ; 2 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !96
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !34  ; 3 uses
  %i.al = load i64, ptr %i.y, align 8, !tbaa !35  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.an = load i64, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %.not.i.peel = icmp ult i64 %i.al, %i.an
  br i1 %.not.i.peel, label %fmap_need_off_once_len.exit.peel, label %fmap_need_off_once_len.exit.thread

fmap_need_off_once_len.exit.peel:                 ; preds = %bb.e
  %i.ao = sub nuw i64 %i.an, %i.al
  %spec.select.i.peel = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 8192) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.ar = tail call ptr %i.aq(ptr noundef nonnull %i.ak, i64 noundef %i.al, i64 noundef %spec.select.i.peel, i32 noundef 0) #11, !inline_history !1 ; 4 uses
  %.not20.i.peel = icmp eq ptr %i.ar, null
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !95
  br i1 %.not20.i.peel, label %.loopexit, label %.thread.peel

.thread.peel:                                     ; preds = %fmap_need_off_once_len.exit.peel
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %spec.select.i.peel
  store ptr %i.as, ptr %i.w, align 8, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.thread.peel
  %i.at = phi ptr [ %i.ar, %.thread.peel ], [ %i.ah, %bb.d ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.v, align 8, !tbaa !95
  %i.av = load i8, ptr %i.at, align 1, !tbaa !25  ; 3 uses
  store i8 %i.av, ptr %i.t, align 1, !tbaa !37
  %i.aw = load i64, ptr %i.y, align 8, !tbaa !35
  %i.ax = add i64 %i.aw, 1
  store i64 %i.ax, ptr %i.y, align 8, !tbaa !35
  store i32 8, ptr %i.q, align 4, !tbaa !42
  %i.ay = icmp sgt i32 %i.ac, 8
  br i1 %i.ay, label %.lr.ph.split, label %._crit_edge.loopexit

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.az = icmp sgt i32 %i.ac, 8
  br i1 %i.az, label %.peel.next, label %._crit_edge.split.us

.peel.next:                                       ; preds = %.lr.ph.split.us, %.peel.next
  %.03559.us = phi i32 [ %i.ba, %.peel.next ], [ %i.ac, %.lr.ph.split.us ] ; 2 uses
  %i.ba = add nsw i32 %.03559.us, -8              ; 2 uses
  %i.bb = icmp samesign ugt i32 %.03559.us, 16
  br i1 %i.bb, label %.peel.next, label %._crit_edge.split.us, !llvm.loop !93

._crit_edge.split.us:                             ; preds = %.peel.next, %.lr.ph.split.us
  %.lcssa67 = phi i32 [ %i.ac, %.lr.ph.split.us ], [ %i.ba, %.peel.next ]
  store i8 0, ptr %i.t, align 1, !tbaa !37
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %bb.f, %bb.k
  %i.bc = phi i8 [ %i.cb, %bb.k ], [ %i.av, %bb.f ]
  %.03559 = phi i32 [ %i.be, %bb.k ], [ %i.ac, %bb.f ] ; 2 uses
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %.03559, -8                 ; 3 uses
  %i.bf = shl i32 %i.bd, %i.be
  %i.bg = load i16, ptr %i.d, align 2, !tbaa !39
  %i.bh = trunc i32 %i.bf to i16
  %i.bi = or i16 %i.bg, %i.bh
  store i16 %i.bi, ptr %i.d, align 2, !tbaa !39
  %i.bj = load i32, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.bk = add i32 %i.bj, -1
  store i32 %i.bk, ptr %i.u, align 8, !tbaa !36
  %i.bl = load ptr, ptr %i.v, align 8, !tbaa !95  ; 2 uses
  %i.bm = load ptr, ptr %i.w, align 8, !tbaa !96
  %i.bn = icmp eq ptr %i.bl, %i.bm
  %.pre73 = load i64, ptr %i.y, align 8, !tbaa !35 ; 4 uses
  br i1 %i.bn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bo = load ptr, ptr %i.x, align 8, !tbaa !34  ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp ult i64 %.pre73, %i.bq
  br i1 %.not.i, label %fmap_need_off_once_len.exit, label %fmap_need_off_once_len.exit.thread

fmap_need_off_once_len.exit.thread:               ; preds = %bb.h, %bb.e
  store ptr null, ptr %i.v, align 8, !tbaa !95
  br label %.loopexit

fmap_need_off_once_len.exit:                      ; preds = %bb.h
  %i.br = sub nuw i64 %i.bq, %.pre73
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.br, i64 8192) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !20
  %i.bu = tail call ptr %i.bt(ptr noundef nonnull %i.bo, i64 noundef %.pre73, i64 noundef %spec.select.i, i32 noundef 0) #11, !inline_history !1 ; 4 uses
  %.not20.i = icmp eq ptr %i.bu, null
  store ptr %i.bu, ptr %i.v, align 8, !tbaa !95
  br i1 %.not20.i, label %.loopexit, label %.thread

.thread:                                          ; preds = %fmap_need_off_once_len.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %spec.select.i
  store ptr %i.bv, ptr %i.w, align 8, !tbaa !96
  %.pre = load i64, ptr %i.y, align 8, !tbaa !35
  br label %bb.i

.loopexit:                                        ; preds = %fmap_need_off_once_len.exit, %fmap_need_off_once_len.exit.peel, %fmap_need_off_once_len.exit.thread
  store i32 26, ptr %i.a, align 8, !tbaa !38
  br label %bb.l

bb.i:                                             ; preds = %.thread, %bb.g
  %i.bw = phi i64 [ %.pre, %.thread ], [ %.pre73, %bb.g ]
  %i.bx = phi ptr [ %i.bu, %.thread ], [ %i.bl, %bb.g ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  store ptr %i.by, ptr %i.v, align 8, !tbaa !95
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !25  ; 2 uses
  store i8 %i.bz, ptr %i.t, align 1, !tbaa !37
end_hunk_0
