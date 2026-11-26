Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/varlena?download=true
inline.NumInlined: 556
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@text_format:bb.a
  %i.hp = ptrtoint ptr %i.hk to i64
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.b
  %.0103 = phi i64 [ 0, %bb.b ], [ %i.hp, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i64 %.0103
}

declare zeroext i1 @get_fn_expr_variadic(ptr noundef) local_unnamed_addr #3

declare void @get_typlenbyvalalign(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @deconstruct_array(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i8 noundef signext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @appendStringInfoChar(ptr noundef, i8 noundef signext) local_unnamed_addr #3

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #3

declare void @getTypeOutputInfo(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fmgr_info(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OutputFunctionCall(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @pg_strtoint32(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @text_format_nv(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @text_format(ptr noundef %0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @varstr_levenshtein(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c ; 4 uses
  %i.e = tail call i32 @pg_mbstrlen_with_len(ptr noundef %0, i32 noundef %1) #18
  %.fr = freeze i32 %i.e                          ; 10 uses
  %i.f = tail call i32 @pg_mbstrlen_with_len(ptr noundef %2, i32 noundef %3) #18 ; 15 uses
  %.not = icmp eq i32 %.fr, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = mul i32 %i.f, %4
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %.not159 = icmp eq i32 %i.f, 0
  br i1 %.not159, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = mul i32 %.fr, %5
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  br i1 %7, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp sgt i32 %.fr, 255
  %i.j = icmp sgt i32 %i.f, 255
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.l = tail call i32 @errcode(i32 noundef 50856066) #18 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17, i32 noundef 255) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.18, i32 noundef 135, ptr noundef nonnull @__func__.varstr_levenshtein) #18
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %.not160 = icmp eq i32 %.fr, %1
  %.not161 = icmp eq i32 %i.f, %3                 ; 5 uses
  %or.cond164 = select i1 %.not160, i1 %.not161, i1 false
  %.pre = add i32 %.fr, 1                         ; 7 uses
  %.pre240 = sext i32 %.pre to i64                ; 2 uses
  br i1 %or.cond164, label %._crit_edge239, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = shl nsw i64 %.pre240, 2
  %i.o = tail call ptr @palloc(i64 noundef %i.n) #18
  %i.p = freeze ptr %i.o                          ; 3 uses
  %i.q = icmp sgt i32 %.fr, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %.fr to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0143170 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.u, %.lr.ph ] ; 2 uses
  %i.r = tail call i32 @pg_mblen_range(ptr noundef %.0143170, ptr noundef %i.b) #18 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.r, ptr %i.s, align 4
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds i8, ptr %.0143170, i64 %i.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !66

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.v = zext nneg i32 %.fr to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %._crit_edge.loopexit
  %.0144.lcssa = phi i64 [ %i.v, %._crit_edge.loopexit ], [ 0, %bb.i ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0144.lcssa
  store i32 0, ptr %i.w, align 4
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %bb.h, %._crit_edge
  %.0147 = phi ptr [ %i.p, %._crit_edge ], [ null, %bb.h ] ; 2 uses
  %i.x = add i32 %i.f, 1
  %i.y = shl i32 %.pre, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = tail call ptr @palloc(i64 noundef %i.aa) #18 ; 20 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %.pre240 ; 14 uses
  %i.ad = icmp ult i32 %.fr, 2147483647
  br i1 %i.ad, label %.lr.ph173.preheader, label %.preheader168

.lr.ph173.preheader:                              ; preds = %._crit_edge239
  %wide.trip.count221 = zext i32 %.pre to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %.pre, 8
  br i1 %min.iters.check, label %.lr.ph173.preheader264, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph173.preheader
  %n.vec = and i64 %wide.trip.count221, 4294967288 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ae = mul <4 x i32> %broadcast.splat, %vec.ind
  %i.af = mul <4 x i32> %broadcast.splat, %step.add
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %i.ae, ptr %i.ag, align 4
  store <4 x i32> %i.af, ptr %i.ah, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count221
  br i1 %cmp.n, label %.preheader168, label %.lr.ph173.preheader264

.lr.ph173.preheader264:                           ; preds = %.lr.ph173.preheader, %middle.block
  %indvars.iv218.ph = phi i64 [ 0, %.lr.ph173.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph173

.preheader168:                                    ; preds = %.lr.ph173, %middle.block, %._crit_edge239
  %i.aj = icmp sgt i32 %i.x, 1
  br i1 %i.aj, label %.lr.ph186, label %._crit_edge187

.lr.ph186:                                        ; preds = %.preheader168
  %.not163 = icmp eq ptr %.0147, null
  %i.ak = icmp sgt i32 %.pre, 1                   ; 2 uses
  br i1 %.not163, label %.lr.ph186.split.us, label %.lr.ph186.split

.lr.ph186.split.us:                               ; preds = %.lr.ph186
  br i1 %i.ak, label %.lr.ph186.split.us.split.us.preheader, label %.lr.ph186.split.us.split

.lr.ph186.split.us.split.us.preheader:            ; preds = %.lr.ph186.split.us
  %wide.trip.count236 = zext nneg i32 %.pre to i64
  br label %.lr.ph186.split.us.split.us

.lr.ph186.split.us.split.us:                      ; preds = %.lr.ph186.split.us.split.us.preheader, %..loopexit_crit_edge.us.us
  %.0145184.us.us = phi ptr [ %i.bf, %..loopexit_crit_edge.us.us ], [ %2, %.lr.ph186.split.us.split.us.preheader ] ; 3 uses
  %.0146183.us.us = phi i32 [ %i.bg, %..loopexit_crit_edge.us.us ], [ 1, %.lr.ph186.split.us.split.us.preheader ] ; 3 uses
  %.0148182.us.us = phi ptr [ %.0149181.us.us, %..loopexit_crit_edge.us.us ], [ %i.ac, %.lr.ph186.split.us.split.us.preheader ] ; 4 uses
  %.0149181.us.us = phi ptr [ %.0148182.us.us, %..loopexit_crit_edge.us.us ], [ %i.ab, %.lr.ph186.split.us.split.us.preheader ] ; 3 uses
  br i1 %.not161, label %.preheader.us.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph186.split.us.split.us
  %i.al = tail call i32 @pg_mblen_range(ptr noundef %.0145184.us.us, ptr noundef %i.d) #18
  %i.am = sext i32 %i.al to i64
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %bb.j, %.lr.ph186.split.us.split.us
  %i.an = phi i64 [ %i.am, %bb.j ], [ 1, %.lr.ph186.split.us.split.us ]
  %i.ao = mul i32 %.0146183.us.us, %4             ; 2 uses
  store i32 %i.ao, ptr %.0148182.us.us, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.us.us
  %i.ap = phi i32 [ %..us.us, %bb.k ], [ %i.ao, %.preheader.us.us ]
  %indvars.iv233 = phi i64 [ %indvars.iv.next234, %bb.k ], [ 1, %.preheader.us.us ] ; 4 uses
  %.1141178.us.us = phi ptr [ %i.be, %bb.k ], [ %0, %.preheader.us.us ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.0149181.us.us, i64 %indvars.iv233
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add i32 %i.ar, %4
  %i.at = add i32 %i.ap, %5
  %i.au = getelementptr [4 x i8], ptr %.0149181.us.us, i64 %indvars.iv233
  %i.av = getelementptr i8, ptr %i.au, i64 -4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = load i8, ptr %.1141178.us.us, align 1
  %i.ay = load i8, ptr %.0145184.us.us, align 1
  %i.az = icmp eq i8 %i.ax, %i.ay
  %i.ba = select i1 %i.az, i32 0, i32 %6
  %i.bb = add i32 %i.ba, %i.aw
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.as, i32 %i.at)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.0148182.us.us, i64 %indvars.iv233
  %..us.us = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.bb) ; 2 uses
  store i32 %..us.us, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %.1141178.us.us, i64 1
  %indvars.iv.next234 = add nuw nsw i64 %indvars.iv233, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next234, %wide.trip.count236
  br i1 %exitcond237.not, label %..loopexit_crit_edge.us.us, label %bb.k, !llvm.loop !68

..loopexit_crit_edge.us.us:                       ; preds = %bb.k
  %i.bf = getelementptr inbounds i8, ptr %.0145184.us.us, i64 %i.an
  %i.bg = add nuw nsw i32 %.0146183.us.us, 1
  %exitcond238.not = icmp eq i32 %.0146183.us.us, %i.f
  br i1 %exitcond238.not, label %._crit_edge187, label %.lr.ph186.split.us.split.us, !llvm.loop !69

.lr.ph186.split.us.split:                         ; preds = %.lr.ph186.split.us
  br i1 %.not161, label %.preheader.us.us208.preheader, label %.preheader.us

.preheader.us.us208.preheader:                    ; preds = %.lr.ph186.split.us.split
  %xtraiter267 = and i32 %i.f, 7                  ; 3 uses
  %i.bh = icmp ult i32 %i.f, 8
  br i1 %i.bh, label %.preheader.us.us208.epil.preheader, label %.preheader.us.us208.preheader.new

.preheader.us.us208.preheader.new:                ; preds = %.preheader.us.us208.preheader
  %unroll_iter272 = and i32 %i.f, 2147483640
  br label %.preheader.us.us208

.preheader.us.us208:                              ; preds = %.preheader.us.us208, %.preheader.us.us208.preheader.new
  %.0146183.us.us205 = phi i32 [ 1, %.preheader.us.us208.preheader.new ], [ %i.bx, %.preheader.us.us208 ] ; 9 uses
  %niter273 = phi i32 [ 0, %.preheader.us.us208.preheader.new ], [ %niter273.next.7, %.preheader.us.us208 ]
  %i.bi = mul i32 %.0146183.us.us205, %4
  store i32 %i.bi, ptr %i.ac, align 4
  %i.bj = add nuw nsw i32 %.0146183.us.us205, 1
  %i.bk = mul i32 %i.bj, %4
  store i32 %i.bk, ptr %i.ab, align 4
  %i.bl = add nuw nsw i32 %.0146183.us.us205, 2
  %i.bm = mul i32 %i.bl, %4
  store i32 %i.bm, ptr %i.ac, align 4
  %i.bn = add nuw nsw i32 %.0146183.us.us205, 3
  %i.bo = mul i32 %i.bn, %4
  store i32 %i.bo, ptr %i.ab, align 4
  %i.bp = add nuw nsw i32 %.0146183.us.us205, 4
  %i.bq = mul i32 %i.bp, %4
  store i32 %i.bq, ptr %i.ac, align 4
  %i.br = add nuw nsw i32 %.0146183.us.us205, 5
  %i.bs = mul i32 %i.br, %4
  store i32 %i.bs, ptr %i.ab, align 4
  %i.bt = add nuw nsw i32 %.0146183.us.us205, 6
  %i.bu = mul i32 %i.bt, %4
  store i32 %i.bu, ptr %i.ac, align 4
  %i.bv = add nuw nsw i32 %.0146183.us.us205, 7
  %i.bw = mul i32 %i.bv, %4
  store i32 %i.bw, ptr %i.ab, align 4
  %i.bx = add nuw nsw i32 %.0146183.us.us205, 8   ; 2 uses
  %niter273.next.7 = add nuw nsw i32 %niter273, 8 ; 2 uses
  %niter273.ncmp.7 = icmp eq i32 %niter273.next.7, %unroll_iter272
  br i1 %niter273.ncmp.7, label %._crit_edge187.loopexit259.unr-lcssa, label %.preheader.us.us208, !llvm.loop !69

.preheader.us:                                    ; preds = %.lr.ph186.split.us.split, %.preheader.us
  %.0145184.us = phi ptr [ %i.cb, %.preheader.us ], [ %2, %.lr.ph186.split.us.split ] ; 2 uses
  %.0146183.us = phi i32 [ %i.cc, %.preheader.us ], [ 1, %.lr.ph186.split.us.split ] ; 3 uses
  %.0148182.us = phi ptr [ %.0149181.us, %.preheader.us ], [ %i.ac, %.lr.ph186.split.us.split ] ; 3 uses
  %.0149181.us = phi ptr [ %.0148182.us, %.preheader.us ], [ %i.ab, %.lr.ph186.split.us.split ]
  %i.by = tail call i32 @pg_mblen_range(ptr noundef %.0145184.us, ptr noundef %i.d) #18
  %i.bz = mul i32 %.0146183.us, %4
  store i32 %i.bz, ptr %.0148182.us, align 4
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds i8, ptr %.0145184.us, i64 %i.ca
  %i.cc = add nuw nsw i32 %.0146183.us, 1
  %exitcond231.not = icmp eq i32 %.0146183.us, %i.f
  br i1 %exitcond231.not, label %._crit_edge187, label %.preheader.us, !llvm.loop !69

.lr.ph186.split:                                  ; preds = %.lr.ph186
  br i1 %i.ak, label %.lr.ph186.split.split.us.preheader, label %.lr.ph186.split.split

.lr.ph186.split.split.us.preheader:               ; preds = %.lr.ph186.split
  %wide.trip.count228 = zext nneg i32 %.pre to i64
  br label %.lr.ph186.split.split.us

.lr.ph186.split.split.us:                         ; preds = %.lr.ph186.split.split.us.preheader, %..loopexit167_crit_edge.us
  %.0145184.us189 = phi ptr [ %i.dp, %..loopexit167_crit_edge.us ], [ %2, %.lr.ph186.split.split.us.preheader ] ; 4 uses
  %.0146183.us190 = phi i32 [ %i.dq, %..loopexit167_crit_edge.us ], [ 1, %.lr.ph186.split.split.us.preheader ] ; 3 uses
  %.0148182.us191 = phi ptr [ %.0149181.us192, %..loopexit167_crit_edge.us ], [ %i.ac, %.lr.ph186.split.split.us.preheader ] ; 4 uses
  %.0149181.us192 = phi ptr [ %.0148182.us191, %..loopexit167_crit_edge.us ], [ %i.ab, %.lr.ph186.split.split.us.preheader ] ; 4 uses
  br i1 %.not161, label %.preheader166.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph186.split.split.us
  %i.cd = tail call i32 @pg_mblen_range(ptr noundef %.0145184.us189, ptr noundef %i.d) #18
  br label %.preheader166.us

.preheader166.us:                                 ; preds = %bb.l, %.lr.ph186.split.split.us
  %i.ce = phi i32 [ %i.cd, %bb.l ], [ 1, %.lr.ph186.split.split.us ] ; 5 uses
  %i.cf = mul i32 %.0146183.us190, %4             ; 2 uses
  store i32 %i.cf, ptr %.0148182.us191, align 4
  %i.cg = add i32 %i.ce, -1
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %.0145184.us189, i64 %i.ch
  %i.cj = zext i32 %i.ce to i64
  %or.cond258 = icmp slt i32 %i.ce, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.p, %.preheader166.us
  %8 = phi i32 [ %..0.us, %bb.p ], [ %i.cf, %.preheader166.us ]
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %bb.p ], [ 1, %.preheader166.us ] ; 4 uses
  %.0140174.us = phi ptr [ %i.dn, %bb.p ], [ %0, %.preheader166.us ] ; 3 uses
  %i.ck = add nsw i64 %indvars.iv225, -1          ; 3 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %.0147, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4            ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.0149181.us192, i64 %indvars.iv225
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = add i32 %i.co, %4
  %i.cq = add i32 %8, %5
  %i.cr = add i32 %i.cm, -1
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %.0140174.us, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = load i8, ptr %i.ci, align 1
  %i.cw = icmp eq i8 %i.cu, %i.cv
  %i.cx = icmp eq i32 %i.cm, %i.ce
  %or.cond165.us = and i1 %i.cw, %i.cx
  br i1 %or.cond165.us, label %bb.n, label %rest_of_char_same.exit.us

bb.n:                                             ; preds = %bb.m
  br i1 %or.cond258, label %rest_of_char_same.exit.thread.us, label %.lr.ph257

bb.o:                                             ; preds = %.lr.ph257
  %i.cy = trunc nuw i64 %i.da to i32
  %i.cz = icmp slt i32 %i.cy, 1
  br i1 %i.cz, label %rest_of_char_same.exit.thread.us, label %.lr.ph257, !llvm.loop !2

.lr.ph257:                                        ; preds = %bb.n, %bb.o
  %indvars.iv.i.us256 = phi i64 [ %i.da, %bb.o ], [ %i.cj, %bb.n ]
  %i.da = add nsw i64 %indvars.iv.i.us256, -1     ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0140174.us, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.0145184.us189, i64 %i.da
  %i.de = load i8, ptr %i.dd, align 1
  %.not.i.us = icmp eq i8 %i.dc, %i.de
  br i1 %.not.i.us, label %bb.o, label %rest_of_char_same.exit.us, !llvm.loop !2

rest_of_char_same.exit.us:                        ; preds = %.lr.ph257, %bb.m
  %i.df = getelementptr inbounds [4 x i8], ptr %.0149181.us192, i64 %i.ck
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = add i32 %i.dg, %6
  br label %bb.p

rest_of_char_same.exit.thread.us:                 ; preds = %bb.o, %bb.n
  %i.di = getelementptr inbounds [4 x i8], ptr %.0149181.us192, i64 %i.ck
  %i.dj = load i32, ptr %i.di, align 4
  br label %bb.p

bb.p:                                             ; preds = %rest_of_char_same.exit.thread.us, %rest_of_char_same.exit.us
  %.0.us = phi i32 [ %i.dj, %rest_of_char_same.exit.thread.us ], [ %i.dh, %rest_of_char_same.exit.us ]
  %i.dk = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.cq)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.0148182.us191, i64 %indvars.iv225
  %..0.us = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 %.0.us) ; 2 uses
  store i32 %..0.us, ptr %i.dl, align 4
  %i.dm = sext i32 %i.cm to i64
  %i.dn = getelementptr inbounds i8, ptr %.0140174.us, i64 %i.dm
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %..loopexit167_crit_edge.us, label %bb.m, !llvm.loop !70

..loopexit167_crit_edge.us:                       ; preds = %bb.p
  %i.do = sext i32 %i.ce to i64
  %i.dp = getelementptr inbounds i8, ptr %.0145184.us189, i64 %i.do
  %i.dq = add nuw nsw i32 %.0146183.us190, 1
  %exitcond230.not = icmp eq i32 %.0146183.us190, %i.f
  br i1 %exitcond230.not, label %._crit_edge187, label %.lr.ph186.split.split.us, !llvm.loop !69

.lr.ph186.split.split:                            ; preds = %.lr.ph186.split
  br i1 %.not161, label %.preheader166.us199.preheader, label %.preheader166

.preheader166.us199.preheader:                    ; preds = %.lr.ph186.split.split
  %xtraiter = and i32 %i.f, 7                     ; 3 uses
  %i.dr = icmp ult i32 %i.f, 8
  br i1 %i.dr, label %.preheader166.us199.epil.preheader, label %.preheader166.us199.preheader.new

.preheader166.us199.preheader.new:                ; preds = %.preheader166.us199.preheader
  %unroll_iter = and i32 %i.f, 2147483640
  br label %.preheader166.us199

.preheader166.us199:                              ; preds = %.preheader166.us199, %.preheader166.us199.preheader.new
  %.0146183.us196 = phi i32 [ 1, %.preheader166.us199.preheader.new ], [ %i.eh, %.preheader166.us199 ] ; 9 uses
  %niter = phi i32 [ 0, %.preheader166.us199.preheader.new ], [ %niter.next.7, %.preheader166.us199 ]
  %i.ds = mul i32 %.0146183.us196, %4
  store i32 %i.ds, ptr %i.ac, align 4
  %i.dt = add nuw nsw i32 %.0146183.us196, 1
  %i.du = mul i32 %i.dt, %4
  store i32 %i.du, ptr %i.ab, align 4
  %i.dv = add nuw nsw i32 %.0146183.us196, 2
  %i.dw = mul i32 %i.dv, %4
  store i32 %i.dw, ptr %i.ac, align 4
  %i.dx = add nuw nsw i32 %.0146183.us196, 3
  %i.dy = mul i32 %i.dx, %4
  store i32 %i.dy, ptr %i.ab, align 4
  %i.dz = add nuw nsw i32 %.0146183.us196, 4
  %i.ea = mul i32 %i.dz, %4
  store i32 %i.ea, ptr %i.ac, align 4
  %i.eb = add nuw nsw i32 %.0146183.us196, 5
  %i.ec = mul i32 %i.eb, %4
  store i32 %i.ec, ptr %i.ab, align 4
  %i.ed = add nuw nsw i32 %.0146183.us196, 6
  %i.ee = mul i32 %i.ed, %4
  store i32 %i.ee, ptr %i.ac, align 4
  %i.ef = add nuw nsw i32 %.0146183.us196, 7
  %i.eg = mul i32 %i.ef, %4
  store i32 %i.eg, ptr %i.ab, align 4
  %i.eh = add nuw nsw i32 %.0146183.us196, 8      ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge187.loopexit262.unr-lcssa, label %.preheader166.us199, !llvm.loop !69

.lr.ph173:                                        ; preds = %.lr.ph173.preheader264, %.lr.ph173
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %.lr.ph173 ], [ %indvars.iv218.ph, %.lr.ph173.preheader264 ] ; 3 uses
  %i.ei = trunc nuw nsw i64 %indvars.iv218 to i32
  %i.ej = mul i32 %5, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv218
  store i32 %i.ej, ptr %i.ek, align 4
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %.preheader168, label %.lr.ph173, !llvm.loop !71

.preheader166:                                    ; preds = %.lr.ph186.split.split, %.preheader166
  %.0145184 = phi ptr [ %i.eo, %.preheader166 ], [ %2, %.lr.ph186.split.split ] ; 2 uses
  %.0146183 = phi i32 [ %i.ep, %.preheader166 ], [ 1, %.lr.ph186.split.split ] ; 3 uses
  %.0148182 = phi ptr [ %.0149181, %.preheader166 ], [ %i.ac, %.lr.ph186.split.split ] ; 3 uses
  %.0149181 = phi ptr [ %.0148182, %.preheader166 ], [ %i.ab, %.lr.ph186.split.split ]
  %i.el = tail call i32 @pg_mblen_range(ptr noundef %.0145184, ptr noundef %i.d) #18
  %i.em = mul i32 %.0146183, %4
  store i32 %i.em, ptr %.0148182, align 4
  %i.en = sext i32 %i.el to i64
  %i.eo = getelementptr inbounds i8, ptr %.0145184, i64 %i.en
  %i.ep = add nuw nsw i32 %.0146183, 1
  %exitcond223.not = icmp eq i32 %.0146183, %i.f
  br i1 %exitcond223.not, label %._crit_edge187, label %.preheader166, !llvm.loop !69

._crit_edge187.loopexit259.unr-lcssa:             ; preds = %.preheader.us.us208
  %lcmp.mod269.not = icmp eq i32 %xtraiter267, 0
  br i1 %lcmp.mod269.not, label %._crit_edge187, label %.preheader.us.us208.epil.preheader

.preheader.us.us208.epil.preheader:               ; preds = %._crit_edge187.loopexit259.unr-lcssa, %.preheader.us.us208.preheader
  %.0146183.us.us205.epil.init = phi i32 [ 1, %.preheader.us.us208.preheader ], [ %i.bx, %._crit_edge187.loopexit259.unr-lcssa ]
  %lcmp.mod271 = icmp ne i32 %xtraiter267, 0
  tail call void @llvm.assume(i1 %lcmp.mod271)
  br label %.preheader.us.us208.epil

.preheader.us.us208.epil:                         ; preds = %.preheader.us.us208.epil, %.preheader.us.us208.epil.preheader
  %.0146183.us.us205.epil = phi i32 [ %i.er, %.preheader.us.us208.epil ], [ %.0146183.us.us205.epil.init, %.preheader.us.us208.epil.preheader ] ; 2 uses
  %.0148182.us.us206.epil = phi ptr [ %.0149181.us.us207.epil, %.preheader.us.us208.epil ], [ %i.ac, %.preheader.us.us208.epil.preheader ] ; 3 uses
  %.0149181.us.us207.epil = phi ptr [ %.0148182.us.us206.epil, %.preheader.us.us208.epil ], [ %i.ab, %.preheader.us.us208.epil.preheader ]
  %epil.iter268 = phi i32 [ %epil.iter268.next, %.preheader.us.us208.epil ], [ 0, %.preheader.us.us208.epil.preheader ]
  %i.eq = mul i32 %.0146183.us.us205.epil, %4
  store i32 %i.eq, ptr %.0148182.us.us206.epil, align 4
  %i.er = add nuw nsw i32 %.0146183.us.us205.epil, 1
  %epil.iter268.next = add i32 %epil.iter268, 1   ; 2 uses
  %epil.iter268.cmp.not = icmp eq i32 %epil.iter268.next, %xtraiter267
  br i1 %epil.iter268.cmp.not, label %._crit_edge187, label %.preheader.us.us208.epil, !llvm.loop !72

._crit_edge187.loopexit262.unr-lcssa:             ; preds = %.preheader166.us199
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge187, label %.preheader166.us199.epil.preheader

.preheader166.us199.epil.preheader:               ; preds = %._crit_edge187.loopexit262.unr-lcssa, %.preheader166.us199.preheader
  %.0146183.us196.epil.init = phi i32 [ 1, %.preheader166.us199.preheader ], [ %i.eh, %._crit_edge187.loopexit262.unr-lcssa ]
  %lcmp.mod266 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod266)
  br label %.preheader166.us199.epil

.preheader166.us199.epil:                         ; preds = %.preheader166.us199.epil, %.preheader166.us199.epil.preheader
  %.0146183.us196.epil = phi i32 [ %i.et, %.preheader166.us199.epil ], [ %.0146183.us196.epil.init, %.preheader166.us199.epil.preheader ] ; 2 uses
  %.0148182.us197.epil = phi ptr [ %.0149181.us198.epil, %.preheader166.us199.epil ], [ %i.ac, %.preheader166.us199.epil.preheader ] ; 3 uses
  %.0149181.us198.epil = phi ptr [ %.0148182.us197.epil, %.preheader166.us199.epil ], [ %i.ab, %.preheader166.us199.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader166.us199.epil ], [ 0, %.preheader166.us199.epil.preheader ]
  %i.es = mul i32 %.0146183.us196.epil, %4
  store i32 %i.es, ptr %.0148182.us197.epil, align 4
  %i.et = add nuw nsw i32 %.0146183.us196.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge187, label %.preheader166.us199.epil, !llvm.loop !73

._crit_edge187:                                   ; preds = %.preheader166, %._crit_edge187.loopexit262.unr-lcssa, %.preheader166.us199.epil, %..loopexit167_crit_edge.us, %.preheader.us, %._crit_edge187.loopexit259.unr-lcssa, %.preheader.us.us208.epil, %..loopexit_crit_edge.us.us, %.preheader168
  %.0149.lcssa = phi ptr [ %i.ab, %.preheader168 ], [ %.0148182.us197.epil, %.preheader166.us199.epil ], [ %.0148182.us, %.preheader.us ], [ %.0148182.us191, %..loopexit167_crit_edge.us ], [ %.0148182.us.us, %..loopexit_crit_edge.us.us ], [ %.0148182.us.us206.epil, %.preheader.us.us208.epil ], [ %i.ab, %._crit_edge187.loopexit259.unr-lcssa ], [ %i.ab, %._crit_edge187.loopexit262.unr-lcssa ], [ %.0148182, %.preheader166 ]
  %i.eu = sext i32 %.fr to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %.0149.lcssa, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge187, %bb.d, %bb.b
  %.0150 = phi i32 [ %i.ew, %._crit_edge187 ], [ %i.h, %bb.d ], [ %i.g, %bb.b ]
  ret i32 %.0150
}

; Function Attrs: nounwind uwtable
define dso_local i32 @varstr_levenshtein_less_equal(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds i8, ptr %2, i64 %i.c
  %i.e = tail call i32 @pg_mbstrlen_with_len(ptr noundef %0, i32 noundef %1) #18 ; 13 uses
  %i.f = tail call i32 @pg_mbstrlen_with_len(ptr noundef %2, i32 noundef %3) #18 ; 9 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = mul i32 %i.f, %4
  br label %.loopexit338

bb.c:                                             ; preds = %bb.a
  %.not302 = icmp eq i32 %i.f, 0
  br i1 %.not302, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = mul i32 %i.e, %5
  br label %.loopexit338

bb.e:                                             ; preds = %bb.c
  br i1 %8, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp sgt i32 %i.e, 255
  %i.j = icmp sgt i32 %i.f, 255
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #19 ; 0 uses
  %i.l = tail call i32 @errcode(i32 noundef 50856066) #18 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17, i32 noundef 255) #18 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.18, i32 noundef 135, ptr noundef nonnull @__func__.varstr_levenshtein_less_equal) #18
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.n = add i32 %i.e, 1                          ; 7 uses
  %i.o = icmp sgt i32 %7, -1
  br i1 %i.o, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.p = sub i32 %i.f, %i.e                       ; 4 uses
  %i.q = icmp slt i32 %i.p, 0
  %i.r = mul i32 %5, %i.p
  %i.s = sub i32 0, %i.r
  %i.t = mul i32 %i.p, %4
  %i.u = select i1 %i.q, i32 %i.s, i32 %i.t       ; 3 uses
  %.not304 = icmp sgt i32 %i.u, %7
  br i1 %.not304, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = add i32 %5, %4                           ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %6) ; 4 uses
  %i.w = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.f)
  %i.x = mul i32 %i.w, %spec.select
  %i.y = add i32 %i.u, %i.x
  %.not303 = icmp slt i32 %7, %i.y
  br i1 %.not303, label %bb.k, label %.thread
end_hunk_0
