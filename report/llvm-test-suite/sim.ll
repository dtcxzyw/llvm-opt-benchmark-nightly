Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sim?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@no_cross:bb.a
  %i.c = load ptr, ptr @LIST, align 8, !tbaa !32
  %i.d = load i32, ptr @mm, align 4, !tbaa !4
  %i.e = load i32, ptr @nn, align 4
  %i.f = load i32, ptr @m1, align 4
  %i.g = add nsw i32 %i.f, -1
  %i.h = load i32, ptr @n1, align 4
  %i.i = add nsw i32 %i.h, -1
  %i.j = load i32, ptr @rl, align 4
  %i.k = load i32, ptr @cl, align 4
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40   ; 3 uses
  %.not = icmp sgt i32 %i.o, %i.d
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41   ; 3 uses
  %.not19 = icmp sgt i32 %i.q, %i.e
  br i1 %.not19, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.s = load i32, ptr %i.r, align 4, !tbaa !45
  %.not20 = icmp slt i32 %i.s, %i.g
  br i1 %.not20, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.u = load i32, ptr %i.t, align 4, !tbaa !47
  %.not21 = icmp slt i32 %i.u, %i.i
  br i1 %.not21, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = icmp slt i32 %i.o, %i.j                  ; 2 uses
  %i.w = icmp slt i32 %i.q, %i.k                  ; 2 uses
  %or.cond = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.o, ptr @rl, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.q, ptr @cl, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i1 true, ptr @flag, align 2
  br label %.loopexit

bb.l:                                             ; preds = %bb.f, %bb.b, %bb.c, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !70

.loopexit:                                        ; preds = %bb.l, %bb.a, %bb.k
  %.025 = phi i32 [ %i.x, %bb.k ], [ 0, %bb.a ], [ %i.a, %bb.l ]
  %i.y = icmp eq i32 %.025, %i.a
  %. = zext i1 %i.y to i32
  ret i32 %.
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local i32 @diff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.a, label %.lr.ph405, label %tailrecurse._crit_edge

.lr.ph405:                                        ; preds = %bb.a
  %i.b = sub nsw i32 0, %5
  br label %bb.f

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %bb.a
  %.tr313.lcssa = phi i32 [ %2, %bb.a ], [ %.tr313.be, %tailrecurse.backedge ] ; 6 uses
  %ret.tr.lcssa = phi i32 [ poison, %bb.a ], [ %current.ret.tr, %tailrecurse.backedge ]
  %i.c = icmp sgt i32 %.tr313.lcssa, 0            ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.d = load i32, ptr @I, align 4, !tbaa !4
  %i.e = add nsw i32 %i.d, %.tr313.lcssa
  store i32 %i.e, ptr @I, align 4, !tbaa !4
  %i.f = load i32, ptr @al_len, align 4, !tbaa !4
  %i.g = add nsw i32 %i.f, %.tr313.lcssa
  store i32 %i.g, ptr @al_len, align 4, !tbaa !4
  %i.h = load i32, ptr @last, align 4, !tbaa !4
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @sapp, align 8, !tbaa !21
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = sub nsw i32 %i.l, %.tr313.lcssa          ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !4
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.n = sub nsw i32 0, %.tr313.lcssa             ; 2 uses
  %i.o = load ptr, ptr @sapp, align 8, !tbaa !21  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store ptr %i.p, ptr @sapp, align 8, !tbaa !21
  store i32 %i.n, ptr %i.o, align 4, !tbaa !4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink500 = phi i32 [ %i.m, %bb.c ], [ %i.n, %bb.d ]
  store i32 %.sink500, ptr @last, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %tailrecurse._crit_edge
  %i.q = load i32, ptr @q, align 4
  %i.r = load i32, ptr @r, align 4
  %i.s = mul nsw i32 %i.r, %.tr313.lcssa
  %i.t = add nsw i32 %i.s, %i.q
  %i.u = select i1 %i.c, i32 %i.t, i32 0
  %i.v = sub nsw i32 0, %i.u
  br label %.thread303

bb.f:                                             ; preds = %.lr.ph405, %tailrecurse.backedge
  %ret.known.tr403 = phi i1 [ false, %.lr.ph405 ], [ true, %tailrecurse.backedge ] ; 6 uses
  %ret.tr402 = phi i32 [ poison, %.lr.ph405 ], [ %current.ret.tr, %tailrecurse.backedge ] ; 6 uses
  %.tr315401 = phi i32 [ %4, %.lr.ph405 ], [ %.tr315.be, %tailrecurse.backedge ] ; 4 uses
  %.tr314400 = phi i32 [ %3, %.lr.ph405 ], [ %.tr314.be, %tailrecurse.backedge ] ; 24 uses
  %.tr313399 = phi i32 [ %2, %.lr.ph405 ], [ %.tr313.be, %tailrecurse.backedge ] ; 6 uses
  %.tr312398 = phi ptr [ %1, %.lr.ph405 ], [ %.tr312.be, %tailrecurse.backedge ] ; 7 uses
  %.tr397 = phi ptr [ %0, %.lr.ph405 ], [ %.tr.be, %tailrecurse.backedge ] ; 7 uses
  %i.w = icmp slt i32 %.tr313399, 2
  br i1 %i.w, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %.not285 = icmp eq i32 %.tr313399, 1
  br i1 %.not285, label %.lr.ph414, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i32, ptr @J, align 4, !tbaa !4
  %i.y = add nsw i32 %i.x, %.tr314400
  store i32 %i.y, ptr @J, align 4, !tbaa !4
  %i.z = load i32, ptr @al_len, align 4, !tbaa !4
  %i.aa = add nsw i32 %i.z, %.tr314400
  store i32 %i.aa, ptr @al_len, align 4, !tbaa !4
  %i.ab = load i32, ptr @last, align 4, !tbaa !4  ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %i.ad = load ptr, ptr @sapp, align 8, !tbaa !21 ; 4 uses
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -4
  store i32 %.tr314400, ptr %i.ae, align 4, !tbaa !4
  store i32 %i.ab, ptr %i.ad, align 4, !tbaa !4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 %.tr314400, ptr %i.ad, align 4, !tbaa !4
  store i32 %.tr314400, ptr @last, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  store ptr %.sink, ptr @sapp, align 8, !tbaa !21
  %i.af = load i32, ptr @q, align 4, !tbaa !4
  %i.ag = load i32, ptr @r, align 4, !tbaa !4
  %i.ah = mul nsw i32 %i.ag, %.tr314400
  %i.ai = add nsw i32 %i.af, %i.ah
  %i.aj = sub nsw i32 0, %i.ai
  br label %.thread303

.lr.ph414:                                        ; preds = %bb.g
  %i.ak = load i32, ptr @r, align 4, !tbaa !4     ; 4 uses
  %i.al = load i32, ptr @q, align 4, !tbaa !4     ; 3 uses
  %i.am = load ptr, ptr @v, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.tr397, i64 1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = sext i8 %i.ao to i64
  %i.aq = getelementptr inbounds [1024 x i8], ptr %i.am, i64 %i.ap
  %spec.select = tail call i32 @llvm.smin.i32(i32 %.tr315401, i32 %5)
  %i.ar = add nsw i32 %spec.select, %i.ak
  %i.as = mul nsw i32 %i.ak, %.tr314400
  %i.at = add nsw i32 %i.al, %i.as
  %i.au = add nsw i32 %i.ar, %i.at
  %i.av = sub nsw i32 0, %i.au
  %i.aw = load ptr, ptr @row, align 8, !tbaa !23
  %i.ax = load i32, ptr @I, align 4, !tbaa !4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr [8 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load i32, ptr @J, align 4
  %6 = zext nneg i32 %.tr314400 to i64
  %i.bb = add nuw i32 %.tr314400, 1
  %wide.trip.count471 = zext i32 %i.bb to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph414, %.thread
  %indvars.iv464 = phi i64 [ 1, %.lr.ph414 ], [ %indvars.iv.next465, %.thread ] ; 7 uses
  %.0228411 = phi i32 [ %i.av, %.lr.ph414 ], [ %.1229, %.thread ] ; 3 uses
  %.0238410 = phi i32 [ 0, %.lr.ph414 ], [ %.1239, %.thread ] ; 2 uses
  %i.bc = trunc i64 %indvars.iv464 to i32
  %i.bd = add i32 %i.ba, %i.bc
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.pn = phi ptr [ %i.az, %bb.l ], [ %storemerge287, %bb.n ]
  %storemerge287.in = getelementptr i8, ptr %.pn, i64 8
  %storemerge287 = load ptr, ptr %storemerge287.in, align 8, !tbaa !26 ; 4 uses
  store ptr %storemerge287, ptr @z, align 8, !tbaa !26
  %.not288 = icmp eq ptr %storemerge287, null
  br i1 %.not288, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = load i32, ptr %storemerge287, align 8, !tbaa !28
  %i.bf = icmp eq i32 %i.be, %i.bd
  br i1 %i.bf, label %.thread, label %bb.m, !llvm.loop !76

bb.o:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr312398, i64 %indvars.iv464
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %i.bi = sext i8 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = icmp samesign ult i64 %indvars.iv464, 2
  %i.bm = trunc i64 %indvars.iv464 to i32
  %i.bn = sub i32 1, %i.bm
  %.neg421 = mul i32 %i.bn, %i.ak
  %.neg422 = sub i32 %.neg421, %i.al
  %.neg423 = select i1 %i.bl, i32 0, i32 %.neg422
  %7 = sub nsw i64 %6, %indvars.iv464             ; 2 uses
  %.inv = icmp sgt i64 %7, 0
  %8 = trunc i64 %7 to i32
  %9 = mul i32 %i.ak, %8
  %10 = add i32 %9, %i.al
  %i.bo = select i1 %.inv, i32 %10, i32 0
  %.neg320 = sub i32 %.neg423, %i.bo
  %i.bp = add i32 %.neg320, %i.bk                 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, %.0228411
  %i.br = trunc nuw nsw i64 %indvars.iv464 to i32
  %spec.select294 = select i1 %i.bq, i32 %i.br, i32 %.0238410
  %spec.select295 = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 %.0228411)
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %.1239 = phi i32 [ %spec.select294, %bb.o ], [ %.0238410, %bb.n ] ; 7 uses
  %.1229 = phi i32 [ %spec.select295, %bb.o ], [ %.0228411, %bb.n ] ; 5 uses
  %indvars.iv.next465 = add nuw nsw i64 %indvars.iv464, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next465, %wide.trip.count471
  br i1 %exitcond472.not, label %bb.p, label %bb.l, !llvm.loop !77

bb.p:                                             ; preds = %.thread
  %i.bs = icmp eq i32 %.1239, 0
  br i1 %i.bs, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bt = load i32, ptr @J, align 4, !tbaa !4
  %i.bu = add nsw i32 %i.bt, %.tr314400
  store i32 %i.bu, ptr @J, align 4, !tbaa !4
  %i.bv = load i32, ptr @al_len, align 4, !tbaa !4
  %i.bw = add nsw i32 %i.bv, %.tr314400           ; 3 uses
  store i32 %i.bw, ptr @al_len, align 4, !tbaa !4
  %i.bx = load i32, ptr @last, align 4, !tbaa !4  ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  %i.bz = load ptr, ptr @sapp, align 8, !tbaa !21 ; 6 uses
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4
  store i32 %.tr314400, ptr %i.ca, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store ptr %i.cb, ptr @sapp, align 8, !tbaa !21
  %i.cc = load i32, ptr @I, align 4, !tbaa !4
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr @I, align 4, !tbaa !4
  %i.ce = add nsw i32 %i.bw, 1
  store i32 %i.ce, ptr @al_len, align 4, !tbaa !4
  %i.cf = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.cf, ptr %i.bz, align 4, !tbaa !4
  store i32 %i.cf, ptr @last, align 4, !tbaa !4
  br label %.thread303

bb.s:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store i32 %.tr314400, ptr %i.bz, align 4, !tbaa !4
  %i.ch = load i32, ptr @I, align 4, !tbaa !4
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr @I, align 4, !tbaa !4
  %i.cj = add nsw i32 %i.bw, 1
  store i32 %i.cj, ptr @al_len, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.ck, ptr @sapp, align 8, !tbaa !21
  store i32 -1, ptr %i.cg, align 4, !tbaa !4
  store i32 -1, ptr @last, align 4, !tbaa !4
  br label %.thread303

bb.t:                                             ; preds = %bb.p
  %i.cl = icmp sgt i32 %.1239, 1
  br i1 %i.cl, label %bb.u, label %._crit_edge477

._crit_edge477:                                   ; preds = %bb.t
  %.pre478 = load ptr, ptr @sapp, align 8, !tbaa !21
  %.pre479 = load i32, ptr @al_len, align 4, !tbaa !4
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cm = add nsw i32 %.1239, -1                  ; 4 uses
  %i.cn = load i32, ptr @J, align 4, !tbaa !4
  %i.co = add nsw i32 %i.cn, %i.cm
  store i32 %i.co, ptr @J, align 4, !tbaa !4
  %i.cp = load i32, ptr @al_len, align 4, !tbaa !4
  %i.cq = add nsw i32 %i.cp, %i.cm                ; 2 uses
  %i.cr = load i32, ptr @last, align 4, !tbaa !4  ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  %i.ct = load ptr, ptr @sapp, align 8, !tbaa !21 ; 5 uses
  br i1 %i.cs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -4
  store i32 %i.cm, ptr %i.cu, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cr, ptr %i.ct, align 4, !tbaa !4
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cm, ptr %i.ct, align 4, !tbaa !4
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge477, %bb.v, %bb.w
  %i.cx = phi i32 [ %.pre479, %._crit_edge477 ], [ %i.cq, %bb.v ], [ %i.cq, %bb.w ]
  %i.cy = phi ptr [ %.pre478, %._crit_edge477 ], [ %i.cv, %bb.v ], [ %i.cw, %bb.w ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 2 uses
  store ptr %i.cz, ptr @sapp, align 8, !tbaa !21
  store i32 0, ptr %i.cy, align 4, !tbaa !4
  store i32 0, ptr @last, align 4, !tbaa !4
  %i.da = add nsw i32 %i.cx, 1                    ; 2 uses
  store i32 %i.da, ptr @al_len, align 4, !tbaa !4
  %i.db = load i8, ptr %i.an, align 1, !tbaa !14
  %i.dc = sext i32 %.1239 to i64
  %i.dd = getelementptr inbounds i8, ptr %.tr312398, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !14
  %i.df = icmp eq i8 %i.db, %i.de
  %no_mat.no_mis = select i1 %i.df, ptr @no_mat, ptr @no_mis ; 2 uses
  %i.dg = load i32, ptr %no_mat.no_mis, align 4, !tbaa !4
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %no_mat.no_mis, align 4, !tbaa !4
  %i.di = load i32, ptr @I, align 4, !tbaa !4
  %i.dj = add nsw i32 %i.di, 1                    ; 2 uses
  store i32 %i.dj, ptr @I, align 4, !tbaa !4
  %i.dk = load i32, ptr @J, align 4, !tbaa !4
  %i.dl = add nsw i32 %i.dk, 1                    ; 3 uses
  store i32 %i.dl, ptr @J, align 4, !tbaa !4
  %i.dm = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 4 uses
  store ptr %i.dm, ptr @z, align 8, !tbaa !26
  store i32 %i.dl, ptr %i.dm, align 8, !tbaa !28
  %i.dn = load ptr, ptr @row, align 8, !tbaa !23
  %i.do = sext i32 %i.dj to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !26
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !30
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !26
  %i.ds = icmp slt i32 %.1239, %.tr314400
  br i1 %i.ds, label %bb.y, label %.thread303

bb.y:                                             ; preds = %bb.x
  %i.dt = sub nsw i32 %.tr314400, %.1239          ; 4 uses
  %i.du = add nsw i32 %i.dl, %i.dt
  store i32 %i.du, ptr @J, align 4, !tbaa !4
  %i.dv = add nsw i32 %i.da, %i.dt
  store i32 %i.dv, ptr @al_len, align 4, !tbaa !4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.dw, ptr @sapp, align 8, !tbaa !21
  store i32 %i.dt, ptr %i.cz, align 4, !tbaa !4
  store i32 %i.dt, ptr @last, align 4, !tbaa !4
  br label %.thread303

.lr.ph:                                           ; preds = %bb.f
  %i.dx = lshr i32 %.tr313399, 1                  ; 8 uses
  %i.dy = load ptr, ptr @CC, align 8, !tbaa !21   ; 6 uses
  store i32 0, ptr %i.dy, align 4, !tbaa !4
  %i.dz = load i32, ptr @q, align 4, !tbaa !4     ; 11 uses
  %i.ea = sub nsw i32 0, %i.dz                    ; 4 uses
  %i.eb = load i32, ptr @r, align 4, !tbaa !4     ; 3 uses
  %i.ec = load ptr, ptr @DD, align 8, !tbaa !21   ; 6 uses
  %i.ed = add nuw i32 %.tr314400, 1
  %wide.trip.count = zext i32 %i.ed to i64
  %i.ee = zext nneg i32 %.tr314400 to i64         ; 2 uses
  %min.iters.check522 = icmp ult i32 %.tr314400, 8
  br i1 %min.iters.check522, label %scalar.ph521.preheader, label %vector.ph523

vector.ph523:                                     ; preds = %.lr.ph
  %i.ef = sub i32 0, %i.eb                        ; 2 uses
  %n.vec524 = and i64 %i.ee, 2147483640           ; 4 uses
  %broadcast.splatinsert525 = insertelement <4 x i32> poison, i32 %i.ef, i64 0
  %broadcast.splat526 = shufflevector <4 x i32> %broadcast.splatinsert525, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.eg = or disjoint i64 %n.vec524, 1
  %i.eh = trunc nuw nsw i64 %n.vec524 to i32
  %i.ei = mul i32 %i.eh, %i.ef
  %i.ej = sub i32 %i.ei, %i.dz
  %i.ek = shl <4 x i32> %broadcast.splat526, splat (i32 2) ; 3 uses
  %broadcast.splatinsert527 = insertelement <4 x i32> poison, i32 %i.dz, i64 0
  %broadcast.splat528 = shufflevector <4 x i32> %broadcast.splatinsert527, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert529 = insertelement <4 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat530 = shufflevector <4 x i32> %broadcast.splatinsert529, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert531 = insertelement <4 x i32> poison, i32 %i.ea, i64 0
  %broadcast.splat532 = shufflevector <4 x i32> %broadcast.splatinsert531, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.el = mul nsw <4 x i32> %broadcast.splat526, <i32 0, i32 1, i32 2, i32 3>
  %induction533 = add nsw <4 x i32> %broadcast.splat532, %i.el
  %invariant.op558 = add <4 x i32> %i.ek, %i.ek
  br label %vector.body534

vector.body534:                                   ; preds = %vector.body534, %vector.ph523
  %index535 = phi i64 [ 0, %vector.ph523 ], [ %index.next538, %vector.body534 ] ; 2 uses
  %vec.ind536 = phi <4 x i32> [ %induction533, %vector.ph523 ], [ %vec.ind.next539.reass, %vector.body534 ] ; 3 uses
  %step.add537 = add nsw <4 x i32> %vec.ind536, %i.ek
  %i.em = or disjoint i64 %index535, 1            ; 2 uses
  %i.en = sub nsw <4 x i32> %vec.ind536, %broadcast.splat530 ; 2 uses
  %i.eo = sub nsw <4 x i32> %step.add537, %broadcast.splat530 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.em ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x i32> %i.en, ptr %i.ep, align 4, !tbaa !4
  store <4 x i32> %i.eo, ptr %i.eq, align 4, !tbaa !4
  %i.er = sub nsw <4 x i32> %i.en, %broadcast.splat528
  %i.es = sub nsw <4 x i32> %i.eo, %broadcast.splat528
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.em ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <4 x i32> %i.er, ptr %i.et, align 4, !tbaa !4
  store <4 x i32> %i.es, ptr %i.eu, align 4, !tbaa !4
  %index.next538 = add nuw i64 %index535, 8       ; 2 uses
  %vec.ind.next539.reass = add <4 x i32> %vec.ind536, %invariant.op558
  %i.ev = icmp eq i64 %index.next538, %n.vec524
  br i1 %i.ev, label %middle.block540, label %vector.body534, !llvm.loop !78

middle.block540:                                  ; preds = %vector.body534
end_hunk_0
