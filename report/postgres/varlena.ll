Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/varlena?download=true
inline.NumInlined: 556
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@text_position_setup:bb.a
  store i32 %i.cv, ptr %i.ct, align 4
  %indvars.iv.next70.2 = or disjoint i64 %indvars.iv69, 3 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.next70.2
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = zext i8 %i.cx to i32
  %i.cz = and i32 %.052, %i.cy
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.da
  %i.dc = trunc i64 %indvars.iv.next70.2 to i32
  %i.dd = sub i32 %i.bu, %i.dc
  store i32 %i.dd, ptr %i.db, align 4
  %indvars.iv.next70.3 = add nuw nsw i64 %indvars.iv69, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.x, !llvm.loop !34

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv69.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next70.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod75 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod75)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %indvars.iv69.epil = phi i64 [ %indvars.iv69.epil.init, %.epil.preheader ], [ %indvars.iv.next70.epil, %bb.y ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv69.epil
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = zext i8 %i.df to i32
  %i.dh = and i32 %.052, %i.dg
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.di
  %i.dk = trunc i64 %indvars.iv69.epil to i32
  %i.dl = sub i32 %i.bu, %i.dk
  store i32 %i.dl, ptr %i.dj, align 4
  %indvars.iv.next70.epil = add nuw nsw i64 %indvars.iv69.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.y, !llvm.loop !35

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.y, %bb.p, %bb.o
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @text_position_next(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %text_position_next_internal.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.027 = phi ptr [ %i.i, %bb.c ], [ %i.k, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1084 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 2 uses
  br label %bb.f

.loopexit:                                        ; preds = %bb.u
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.f, !llvm.loop !36

bb.f:                                             ; preds = %.loopexit, %bb.e
  %i.v = phi i32 [ %i.b, %bb.e ], [ %.pre, %.loopexit ] ; 5 uses
  %.1 = phi ptr [ %.027, %bb.e ], [ %i.cx, %.loopexit ] ; 7 uses
  %i.w = ptrtoaddr ptr %.1 to i64
  %i.x = load i32, ptr %i.l, align 8
  %i.y = load i32, ptr %i.m, align 8
  %i.z = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.aa = ptrtoaddr ptr %i.z to i64
  %i.ab = load ptr, ptr %i.o, align 8             ; 5 uses
  %i.ac = sext i32 %i.x to i64                    ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac ; 9 uses
  store i32 %i.v, ptr %i.p, align 4
  %i.ae = load ptr, ptr %0, align 8
  %i.af = load i8, ptr %i.ae, align 8, !range !8, !noundef !9
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.n, label %.preheader122.i

.preheader122.i:                                  ; preds = %bb.f
  %i.ah = icmp ult ptr %.1, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %text_position_next_internal.exit.thread

.lr.ph.i:                                         ; preds = %.preheader122.i
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = sext i32 %i.v to i64                    ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.lr.ph.i
  %.086126.i = phi ptr [ %.1, %.lr.ph.i ], [ %i.bf, %bb.m ] ; 9 uses
  %i.ak = load i8, ptr %i.q, align 1, !range !8, !noundef !9
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = ptrtoint ptr %.086126.i to i64          ; 2 uses
  %i.an = sub i64 %i.ai, %i.am
  %.not.i = icmp slt i64 %i.an, %i.aj
  %or.cond.i = select i1 %i.al, i1 true, i1 %.not.i
  br i1 %or.cond.i, label %.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = tail call i32 @pg_strncoll(ptr noundef %.086126.i, i64 noundef %i.aj, ptr noundef %i.ab, i64 noundef %i.aj, ptr noundef %i.ao) #18
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %text_position_next_internal.exit, label %.preheader

.preheader:                                       ; preds = %bb.h, %bb.g
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %bb.k
  %.183.i = phi ptr [ %.284.i, %bb.k ], [ null, %.preheader ]
  %.081.i = phi ptr [ %i.at, %bb.k ], [ %.086126.i, %.preheader ] ; 2 uses
  %i.ar = tail call i32 @pg_mblen_range(ptr noundef %.081.i, ptr noundef nonnull %i.ad) #18
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %.081.i, i64 %i.as ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.am                    ; 2 uses
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = tail call i32 @pg_strncoll(ptr noundef %.086126.i, i64 noundef %i.av, ptr noundef %i.ab, i64 noundef %i.aj, ptr noundef %i.aw) #18
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = trunc i64 %i.av to i32
  store i32 %i.az, ptr %i.p, align 4
  %i.ba = load i8, ptr %i.q, align 1, !range !8, !noundef !9
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.284.i = phi ptr [ %.086126.i, %bb.j ], [ %.183.i, %bb.i ] ; 2 uses
  %i.bc = icmp ult ptr %i.at, %i.ad
  br i1 %i.bc, label %bb.i, label %bb.l, !llvm.loop !37

bb.l:                                             ; preds = %bb.k, %bb.j
  %.385.i = phi ptr [ %.284.i, %bb.k ], [ %.086126.i, %bb.j ] ; 2 uses
  %.not101.i = icmp eq ptr %.385.i, null
  br i1 %.not101.i, label %bb.m, label %text_position_next_internal.exit.thread38

bb.m:                                             ; preds = %bb.l
  %i.bd = tail call i32 @pg_mblen_range(ptr noundef %.086126.i, ptr noundef nonnull %i.ad) #18
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %.086126.i, i64 %i.be ; 2 uses
  %i.bg = icmp ult ptr %i.bf, %i.ad
  br i1 %i.bg, label %bb.g, label %text_position_next_internal.exit.thread

bb.n:                                             ; preds = %bb.f
  %i.bh = icmp eq i32 %i.v, 1
  br i1 %i.bh, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bi = load i8, ptr %i.ab, align 1
  %.not104137.i = icmp ult ptr %.1, %i.ad
  br i1 %.not104137.i, label %.lr.ph140.preheader.i, label %text_position_next_internal.exit.thread

.lr.ph140.preheader.i:                            ; preds = %bb.o
  %i.bj = sub i64 %i.ac, %i.w
  %i.bk = getelementptr i8, ptr %.1, i64 %i.bj
  %scevgep150.i = getelementptr i8, ptr %i.bk, i64 %i.aa
  br label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %bb.p, %.lr.ph140.preheader.i
  %.288138.i = phi ptr [ %i.bn, %bb.p ], [ %.1, %.lr.ph140.preheader.i ] ; 3 uses
  %i.bl = load i8, ptr %.288138.i, align 1
  %i.bm = icmp eq i8 %i.bl, %i.bi
  br i1 %i.bm, label %text_position_next_internal.exit.thread38, label %bb.p

bb.p:                                             ; preds = %.lr.ph140.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.288138.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.bn, %scevgep150.i
  br i1 %exitcond.not.i, label %text_position_next_internal.exit.thread, label %.lr.ph140.i, !llvm.loop !38

bb.q:                                             ; preds = %bb.n
  %i.bo = add i32 %i.v, -1
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.ab, i64 %i.bp ; 2 uses
  %i.br = sext i32 %i.v to i64
  %i.bs = getelementptr inbounds i8, ptr %.1, i64 %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -1 ; 2 uses
  %.not103135.i = icmp ult ptr %i.bt, %i.ad
  br i1 %.not103135.i, label %.preheader.lr.ph.i, label %text_position_next_internal.exit.thread

.preheader.lr.ph.i:                               ; preds = %bb.q
  %i.bu = load i8, ptr %i.bq, align 1
  %i.bv = sub nsw i64 0, %i.bp
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %.389136.i = phi ptr [ %i.bt, %.preheader.lr.ph.i ], [ %i.ci, %._crit_edge.i ] ; 4 uses
  %i.bw = load i8, ptr %.389136.i, align 1        ; 2 uses
  %.not102131.i = icmp eq i8 %i.bu, %i.bw
  br i1 %.not102131.i, label %.lr.ph, label %._crit_edge.i

.lr.ph134.i:                                      ; preds = %.lr.ph
  %i.bx = icmp eq ptr %i.by, %i.ab
  br i1 %i.bx, label %.thread.loopexit160.i, label %.lr.ph, !llvm.loop !39

.lr.ph:                                           ; preds = %.preheader.i, %.lr.ph134.i
  %.079132.i113 = phi ptr [ %i.by, %.lr.ph134.i ], [ %i.bq, %.preheader.i ]
  %.0133.i112 = phi ptr [ %i.bz, %.lr.ph134.i ], [ %.389136.i, %.preheader.i ]
  %i.by = getelementptr inbounds i8, ptr %.079132.i113, i64 -1 ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.0133.i112, i64 -1 ; 2 uses
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = load i8, ptr %i.bz, align 1
  %.not102.i = icmp eq i8 %i.ca, %i.cb
  br i1 %.not102.i, label %.lr.ph134.i, label %._crit_edge.i, !llvm.loop !39

._crit_edge.i:                                    ; preds = %.lr.ph, %.preheader.i
  %i.cc = zext i8 %i.bw to i32
  %i.cd = and i32 %i.y, %i.cc
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %.389136.i, i64 %i.ch ; 2 uses
  %.not103.i = icmp ult ptr %i.ci, %i.ad
  br i1 %.not103.i, label %.preheader.i, label %text_position_next_internal.exit.thread

.thread.loopexit160.i:                            ; preds = %.lr.ph134.i
  %scevgep.le.i = getelementptr i8, ptr %.389136.i, i64 %i.bv
  br label %text_position_next_internal.exit

text_position_next_internal.exit:                 ; preds = %bb.h, %.thread.loopexit160.i
  %.7.i = phi ptr [ %scevgep.le.i, %.thread.loopexit160.i ], [ %.086126.i, %bb.h ] ; 2 uses
  %.not33 = icmp eq ptr %.7.i, null
  br i1 %.not33, label %text_position_next_internal.exit.thread, label %text_position_next_internal.exit.thread38

text_position_next_internal.exit.thread38:        ; preds = %bb.l, %.lr.ph140.i, %text_position_next_internal.exit
  %.7.i41 = phi ptr [ %.7.i, %text_position_next_internal.exit ], [ %.288138.i, %.lr.ph140.i ], [ %.385.i, %bb.l ] ; 3 uses
  %i.cj = load i8, ptr %i.s, align 8, !range !8, !noundef !9
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.r, label %.thread

bb.r:                                             ; preds = %text_position_next_internal.exit.thread38
  %i.cl = load ptr, ptr %0, align 8
  %i.cm = load i8, ptr %i.cl, align 8, !range !8, !noundef !9
  %i.cn = trunc nuw i8 %i.cm to i1
  br i1 %i.cn, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.co = load ptr, ptr %i.n, align 8
  %i.cp = load i32, ptr %i.l, align 8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.co, i64 %i.cq
  %.pre74 = load ptr, ptr %i.t, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.cs = phi ptr [ %i.cx, %bb.u ], [ %.pre74, %bb.s ] ; 2 uses
  %i.ct = icmp ult ptr %i.cs, %.7.i41
  br i1 %i.ct, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.cu = tail call i32 @pg_mblen_range(ptr noundef %i.cs, ptr noundef %i.cr) #18
  %i.cv = load ptr, ptr %i.t, align 8
  %i.cw = sext i32 %i.cu to i64
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %i.cw ; 4 uses
  store ptr %i.cx, ptr %i.t, align 8
  %i.cy = load i32, ptr %i.u, align 8
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr %i.u, align 8
  %i.da = icmp ugt ptr %i.cx, %.7.i41
  br i1 %i.da, label %.loopexit, label %bb.t, !llvm.loop !36

.thread:                                          ; preds = %bb.r, %text_position_next_internal.exit.thread38, %bb.t
  store ptr %.7.i41, ptr %i.d, align 8
  %i.db = load i32, ptr %i.p, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i32 %i.db, ptr %i.dc, align 8
  br label %text_position_next_internal.exit.thread

text_position_next_internal.exit.thread:          ; preds = %bb.o, %.preheader122.i, %bb.q, %text_position_next_internal.exit, %bb.m, %._crit_edge.i, %bb.p, %bb.a, %.thread
  %.028 = phi i1 [ false, %bb.a ], [ true, %.thread ], [ false, %bb.p ], [ false, %bb.m ], [ false, %._crit_edge.i ], [ false, %text_position_next_internal.exit ], [ false, %bb.q ], [ false, %.preheader122.i ], [ false, %bb.o ]
  ret i1 %.028
}

declare void @initStringInfo(ptr noundef) local_unnamed_addr #3

declare void @ProcessInterrupts() local_unnamed_addr #3

declare void @appendBinaryStringInfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @replace_text_regexp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.StringInfoData, align 8     ; 14 uses
  %8 = alloca [10 x %struct.pg_regmatch_t], align 16 ; 9 uses
  %i.a = alloca [100 x i8], align 16              ; 3 uses
  %i.b = load i8, ptr %0, align 1                 ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp eq i8 %i.b, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 1
  %.val.i = load i8, ptr %i.e, align 1            ; 2 uses
  %i.f = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.f, 3
  %i.g = icmp eq i8 %.val.i, 18
  %i.h = select i1 %i.g, i64 16, i64 0
  %i.i = select i1 %or.cond.i.i.i, i64 8, i64 %i.h
  br label %VARSIZE_ANY_EXHDR.exit

bb.c:                                             ; preds = %bb.a
  %i.j = and i32 %i.c, 1
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i32 %i.c, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = add nsw i64 %i.l, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i32, ptr %0, align 4
  %i.o = lshr i32 %i.n, 2
  %i.p = add nsw i32 %i.o, -4
  %i.q = zext i32 %i.p to i64
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.i, %bb.b ], [ %i.m, %bb.d ], [ %i.q, %bb.e ] ; 2 uses
  %i.r = trunc i64 %.0.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @initStringInfo(ptr noundef nonnull %7) #18
  %i.s = shl i64 %.0.i, 32
  %sext = add i64 %i.s, 4294967296
  %i.t = ashr exact i64 %sext, 30
  %i.u = call ptr @palloc(i64 noundef %i.t) #18   ; 3 uses
  %i.v = load i8, ptr %0, align 1
  %i.w = and i8 %i.v, 1
  %.not.i82 = icmp eq i8 %i.w, 0
  %.v.i = select i1 %.not.i82, i64 4, i64 1
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %.v.i
  %i.y = call i32 @pg_mb2wchar_with_len(ptr noundef nonnull %i.x, ptr noundef %i.u, i32 noundef %i.r) #18 ; 4 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = load i8, ptr %2, align 1                ; 3 uses
  %i.ab = and i8 %i.aa, 1
  %.not.i.i = icmp eq i8 %i.ab, 0
  %.v.i.i = select i1 %.not.i.i, i64 4, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %.v.i.i ; 3 uses
  %i.ad = zext i8 %i.aa to i32                    ; 2 uses
  %i.ae = icmp eq i8 %i.aa, 1
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.af = getelementptr i8, ptr %2, i64 1
  %.val.i.i = load i8, ptr %i.af, align 1         ; 2 uses
  %i.ag = add i8 %.val.i.i, -1
  %or.cond.i.i.i.i = icmp ult i8 %i.ag, 3
  %i.ah = icmp eq i8 %.val.i.i, 18
  %i.ai = select i1 %i.ah, i64 16, i64 0
  br i1 %or.cond.i.i.i.i, label %VARSIZE_ANY_EXHDR.exit.thread.i, label %VARSIZE_ANY_EXHDR.exit.i

bb.g:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.aj = and i32 %i.ad, 1
  %.not.i24.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i24.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = lshr i32 %i.ad, 1
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = add nsw i64 %i.al, -1
  br label %VARSIZE_ANY_EXHDR.exit.i

bb.i:                                             ; preds = %bb.g
  %i.an = load i32, ptr %2, align 4
  %i.ao = lshr i32 %i.an, 2
  %i.ap = add nsw i32 %i.ao, -4
  %i.aq = zext i32 %i.ap to i64
  br label %VARSIZE_ANY_EXHDR.exit.i

VARSIZE_ANY_EXHDR.exit.thread.i:                  ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  br label %.lr.ph.preheader.i

VARSIZE_ANY_EXHDR.exit.i:                         ; preds = %bb.i, %bb.h, %bb.f
  %.0.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.am, %bb.h ], [ %i.aq, %bb.i ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.0.i.i
  %.not.i83 = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i83, label %check_replace_text_has_escape.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %VARSIZE_ANY_EXHDR.exit.i, %VARSIZE_ANY_EXHDR.exit.thread.i
  %i.at = phi ptr [ %i.ar, %VARSIZE_ANY_EXHDR.exit.thread.i ], [ %i.as, %VARSIZE_ANY_EXHDR.exit.i ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %.026.i = phi ptr [ %.1.i, %bb.m ], [ %i.ac, %.lr.ph.preheader.i ] ; 2 uses
  %.01625.i = phi i32 [ %.117.i, %bb.m ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.av = ptrtoint ptr %.026.i to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = call ptr @memchr(ptr noundef nonnull %.026.i, i32 noundef 92, i64 noundef %i.aw) #17 ; 3 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %check_replace_text_has_escape.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 3 uses
  %i.ba = icmp ult ptr %i.az, %i.at
  br i1 %i.ba, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bb = load i8, ptr %i.az, align 1
  %i.bc = add i8 %i.bb, -49
  %or.cond.i = icmp ult i8 %i.bc, 9
  br i1 %or.cond.i, label %check_replace_text_has_escape.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.117.i = phi i32 [ 1, %bb.l ], [ %.01625.i, %bb.j ] ; 2 uses
  %.1.i = phi ptr [ %i.bd, %bb.l ], [ %i.az, %bb.j ] ; 2 uses
  %i.be = icmp ult ptr %.1.i, %i.at
  br i1 %i.be, label %.lr.ph.i, label %check_replace_text_has_escape.exit, !llvm.loop !40

end_hunk_0
