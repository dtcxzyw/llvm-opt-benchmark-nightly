Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sim?download=true
inline.NumInlined: 13
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@no_cross:bb.a
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
  %.sink501 = phi i32 [ %i.m, %bb.c ], [ %i.n, %bb.d ]
  store i32 %.sink501, ptr @last, align 4, !tbaa !4
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
  %ret.known.tr403 = phi i1 [ false, %.lr.ph405 ], [ true, %tailrecurse.backedge ] ; 7 uses
  %ret.tr402 = phi i32 [ poison, %.lr.ph405 ], [ %current.ret.tr, %tailrecurse.backedge ] ; 7 uses
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
  %i.bb = zext nneg i32 %.tr314400 to i64
  %i.bc = add nuw i32 %.tr314400, 1
  %wide.trip.count471 = zext i32 %i.bc to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph414, %.thread
  %indvars.iv464 = phi i64 [ 1, %.lr.ph414 ], [ %indvars.iv.next465, %.thread ] ; 7 uses
  %.0228411 = phi i32 [ %i.av, %.lr.ph414 ], [ %.1229, %.thread ] ; 3 uses
  %.0238410 = phi i32 [ 0, %.lr.ph414 ], [ %.1239, %.thread ] ; 2 uses
  %i.bd = trunc i64 %indvars.iv464 to i32
  %i.be = add i32 %i.ba, %i.bd
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %.pn = phi ptr [ %i.az, %bb.l ], [ %storemerge287, %bb.n ]
  %storemerge287.in = getelementptr i8, ptr %.pn, i64 8
  %storemerge287 = load ptr, ptr %storemerge287.in, align 8, !tbaa !26 ; 4 uses
  store ptr %storemerge287, ptr @z, align 8, !tbaa !26
  %.not288 = icmp eq ptr %storemerge287, null
  br i1 %.not288, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load i32, ptr %storemerge287, align 8, !tbaa !28
  %i.bg = icmp eq i32 %i.bf, %i.be
  br i1 %i.bg, label %.thread, label %bb.m, !llvm.loop !76

bb.o:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr312398, i64 %indvars.iv464
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !14
  %i.bj = sext i8 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = icmp samesign ult i64 %indvars.iv464, 2
  %i.bn = trunc i64 %indvars.iv464 to i32
  %i.bo = sub i32 1, %i.bn
  %.neg421 = mul nuw nsw i32 %i.bo, %i.ak
  %.neg422 = sub i32 %.neg421, %i.al
  %.neg423 = select i1 %i.bm, i32 0, i32 %.neg422
  %i.bp = sub nsw i64 %i.bb, %indvars.iv464       ; 2 uses
  %.inv = icmp sgt i64 %i.bp, 0
  %i.bq = trunc i64 %i.bp to i32
  %i.br = mul i32 %i.ak, %i.bq
  %i.bs = add i32 %i.br, %i.al
  %i.bt = select i1 %.inv, i32 %i.bs, i32 0
  %.neg320 = sub i32 %.neg423, %i.bt
  %i.bu = add i32 %.neg320, %i.bl                 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, %.0228411
  %i.bw = trunc nuw nsw i64 %indvars.iv464 to i32
  %spec.select294 = select i1 %i.bv, i32 %i.bw, i32 %.0238410
  %spec.select295 = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 %.0228411)
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.o
  %.1239 = phi i32 [ %spec.select294, %bb.o ], [ %.0238410, %bb.n ] ; 7 uses
  %.1229 = phi i32 [ %spec.select295, %bb.o ], [ %.0228411, %bb.n ] ; 6 uses
  %indvars.iv.next465 = add nuw nsw i64 %indvars.iv464, 1 ; 2 uses
  %exitcond472.not = icmp eq i64 %indvars.iv.next465, %wide.trip.count471
  br i1 %exitcond472.not, label %bb.p, label %bb.l, !llvm.loop !77

bb.p:                                             ; preds = %.thread
  %i.bx = icmp eq i32 %.1239, 0
  br i1 %i.bx, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.by = load i32, ptr @J, align 4, !tbaa !4
  %i.bz = add nsw i32 %i.by, %.tr314400
  store i32 %i.bz, ptr @J, align 4, !tbaa !4
  %i.ca = load i32, ptr @al_len, align 4, !tbaa !4
  %i.cb = add nsw i32 %i.ca, %.tr314400           ; 3 uses
  store i32 %i.cb, ptr @al_len, align 4, !tbaa !4
  %i.cc = load i32, ptr @last, align 4, !tbaa !4  ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  %i.ce = load ptr, ptr @sapp, align 8, !tbaa !21 ; 6 uses
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4
  store i32 %.tr314400, ptr %i.cf, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.cg, ptr @sapp, align 8, !tbaa !21
  %i.ch = load i32, ptr @I, align 4, !tbaa !4
  %i.ci = add nsw i32 %i.ch, 1
  store i32 %i.ci, ptr @I, align 4, !tbaa !4
  %i.cj = add nsw i32 %i.cb, 1
  store i32 %i.cj, ptr @al_len, align 4, !tbaa !4
  %i.ck = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.ck, ptr %i.ce, align 4, !tbaa !4
  store i32 %i.ck, ptr @last, align 4, !tbaa !4
  br label %.thread303

bb.s:                                             ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 %.tr314400, ptr %i.ce, align 4, !tbaa !4
  %i.cm = load i32, ptr @I, align 4, !tbaa !4
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr @I, align 4, !tbaa !4
  %i.co = add nsw i32 %i.cb, 1
  store i32 %i.co, ptr @al_len, align 4, !tbaa !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cp, ptr @sapp, align 8, !tbaa !21
  store i32 -1, ptr %i.cl, align 4, !tbaa !4
  store i32 -1, ptr @last, align 4, !tbaa !4
  br label %.thread303

bb.t:                                             ; preds = %bb.p
  %i.cq = icmp sgt i32 %.1239, 1
  br i1 %i.cq, label %bb.u, label %._crit_edge477

._crit_edge477:                                   ; preds = %bb.t
  %.pre478 = load ptr, ptr @sapp, align 8, !tbaa !21
  %.pre479 = load i32, ptr @al_len, align 4, !tbaa !4
  br label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cr = add nsw i32 %.1239, -1                  ; 4 uses
  %i.cs = load i32, ptr @J, align 4, !tbaa !4
  %i.ct = add nsw i32 %i.cs, %i.cr
  store i32 %i.ct, ptr @J, align 4, !tbaa !4
  %i.cu = load i32, ptr @al_len, align 4, !tbaa !4
  %i.cv = add nsw i32 %i.cu, %i.cr                ; 2 uses
  %i.cw = load i32, ptr @last, align 4, !tbaa !4  ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 0
  %i.cy = load ptr, ptr @sapp, align 8, !tbaa !21 ; 5 uses
  br i1 %i.cx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -4
  store i32 %i.cr, ptr %i.cz, align 4, !tbaa !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cw, ptr %i.cy, align 4, !tbaa !4
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cr, ptr %i.cy, align 4, !tbaa !4
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge477, %bb.v, %bb.w
  %i.dc = phi i32 [ %.pre479, %._crit_edge477 ], [ %i.cv, %bb.v ], [ %i.cv, %bb.w ]
  %i.dd = phi ptr [ %.pre478, %._crit_edge477 ], [ %i.da, %bb.v ], [ %i.db, %bb.w ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4 ; 3 uses
  store ptr %i.de, ptr @sapp, align 8, !tbaa !21
  store i32 0, ptr %i.dd, align 4, !tbaa !4
  store i32 0, ptr @last, align 4, !tbaa !4
  %i.df = add nsw i32 %i.dc, 1
  store i32 %i.df, ptr @al_len, align 4, !tbaa !4
  %i.dg = load i8, ptr %i.an, align 1, !tbaa !14
  %i.dh = sext i32 %.1239 to i64
  %i.di = getelementptr inbounds i8, ptr %.tr312398, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !14
  %i.dk = icmp eq i8 %i.dg, %i.dj
  %no_mat.no_mis = select i1 %i.dk, ptr @no_mat, ptr @no_mis ; 2 uses
  %i.dl = load i32, ptr %no_mat.no_mis, align 4, !tbaa !4
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %no_mat.no_mis, align 4, !tbaa !4
  %i.dn = load i32, ptr @I, align 4, !tbaa !4
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr @I, align 4, !tbaa !4
  %i.dp = load i32, ptr @J, align 4, !tbaa !4
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr @J, align 4, !tbaa !4
  %i.dr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 4 uses
  store ptr %i.dr, ptr @z, align 8, !tbaa !26
  %i.ds = load i32, ptr @J, align 4, !tbaa !4     ; 2 uses
  store i32 %i.ds, ptr %i.dr, align 8, !tbaa !28
  %i.dt = load ptr, ptr @row, align 8, !tbaa !23
  %i.du = load i32, ptr @I, align 4, !tbaa !4
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dv ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !26
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !30
  store ptr %i.dr, ptr %i.dw, align 8, !tbaa !26
  %i.dz = icmp slt i32 %.1239, %.tr314400
  br i1 %i.dz, label %bb.y, label %.thread303

bb.y:                                             ; preds = %bb.x
  %i.ea = sub nsw i32 %.tr314400, %.1239          ; 5 uses
  %i.eb = add nsw i32 %i.ds, %i.ea
  store i32 %i.eb, ptr @J, align 4, !tbaa !4
  %i.ec = load i32, ptr @al_len, align 4, !tbaa !4
  %i.ed = add nsw i32 %i.ec, %i.ea
  store i32 %i.ed, ptr @al_len, align 4, !tbaa !4
  %i.ee = load i32, ptr @last, align 4, !tbaa !4  ; 2 uses
  %i.ef = icmp slt i32 %i.ee, 0
  br i1 %i.ef, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.ea, ptr %i.dd, align 4, !tbaa !4
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.eg, ptr @sapp, align 8, !tbaa !21
  store i32 %i.ee, ptr %i.de, align 4, !tbaa !4
  br label %.thread303

bb.aa:                                            ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.eh, ptr @sapp, align 8, !tbaa !21
  store i32 %i.ea, ptr %i.de, align 4, !tbaa !4
  store i32 %i.ea, ptr @last, align 4, !tbaa !4
  br label %.thread303

.lr.ph:                                           ; preds = %bb.f
  %i.ei = lshr i32 %.tr313399, 1                  ; 8 uses
  %i.ej = load ptr, ptr @CC, align 8, !tbaa !21   ; 6 uses
  store i32 0, ptr %i.ej, align 4, !tbaa !4
  %i.ek = load i32, ptr @q, align 4, !tbaa !4     ; 11 uses
  %i.el = sub nsw i32 0, %i.ek                    ; 4 uses
  %i.em = load i32, ptr @r, align 4, !tbaa !4     ; 3 uses
  %i.en = load ptr, ptr @DD, align 8, !tbaa !21   ; 6 uses
  %i.eo = add nuw i32 %.tr314400, 1
  %wide.trip.count = zext i32 %i.eo to i64
  %i.ep = zext nneg i32 %.tr314400 to i64         ; 2 uses
  %min.iters.check523 = icmp ult i32 %.tr314400, 8
  br i1 %min.iters.check523, label %scalar.ph522.preheader, label %vector.ph524

vector.ph524:                                     ; preds = %.lr.ph
  %i.eq = sub i32 0, %i.em                        ; 2 uses
  %n.vec525 = and i64 %i.ep, 2147483640           ; 4 uses
  %broadcast.splatinsert526 = insertelement <4 x i32> poison, i32 %i.eq, i64 0
  %broadcast.splat527 = shufflevector <4 x i32> %broadcast.splatinsert526, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.er = or disjoint i64 %n.vec525, 1
  %i.es = trunc nuw nsw i64 %n.vec525 to i32
  %i.et = mul i32 %i.es, %i.eq
  %i.eu = sub i32 %i.et, %i.ek
  %i.ev = shl <4 x i32> %broadcast.splat527, splat (i32 2) ; 3 uses
  %broadcast.splatinsert528 = insertelement <4 x i32> poison, i32 %i.ek, i64 0
  %broadcast.splat529 = shufflevector <4 x i32> %broadcast.splatinsert528, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert530 = insertelement <4 x i32> poison, i32 %i.em, i64 0
  %broadcast.splat531 = shufflevector <4 x i32> %broadcast.splatinsert530, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert532 = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %broadcast.splat533 = shufflevector <4 x i32> %broadcast.splatinsert532, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ew = mul nsw <4 x i32> %broadcast.splat527, <i32 0, i32 1, i32 2, i32 3>
  %induction534 = add nsw <4 x i32> %broadcast.splat533, %i.ew
  %invariant.op559 = add <4 x i32> %i.ev, %i.ev
  br label %vector.body535

end_hunk_0
