Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioWriteBench?download=true
inline.NumInlined: 80
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Io_WriteBenchLut:bb.a
  %.not21.i = icmp eq ptr %i.m, null
  br i1 %.not21.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.01522.i = phi ptr [ %i.o, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.n = load i8, ptr %.01522.i, align 1, !tbaa !34
  switch i8 %i.n, label %bb.d [
    i8 0, label %.critedge2.i
    i8 40, label %Io_WriteBenchCheckNames.exit
    i8 41, label %Io_WriteBenchCheckNames.exit
  ]

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.01522.i, i64 1
  br label %.lr.ph.i, !llvm.loop !0

.critedge2.i:                                     ; preds = %.lr.ph.i, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val.i = load i32, ptr %i.q, align 4, !tbaa !30
  %i.r = sext i32 %.val.i to i64
  %i.s = icmp slt i64 %indvars.iv.next.i, %i.r
  br i1 %i.s, label %bb.b, label %.loopexit, !llvm.loop !1

Io_WriteBenchCheckNames.exit:                     ; preds = %.lr.ph.i, %.lr.ph.i
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !37
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.5, i64 147, i64 1, ptr %i.t) ; 0 uses
  br label %bb.u

.loopexit:                                        ; preds = %.critedge2.i, %bb.a
  %i.u = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.1) ; 14 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !37
  %fwrite12 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 46, i64 1, ptr %i.w) ; 0 uses
  br label %bb.u

bb.f:                                             ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38
  %i.z = tail call ptr (...) @Extra_TimeStamp() #6
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.3, ptr noundef %i.y, ptr noundef %i.z) #6 ; 0 uses
  %i.ab = getelementptr i8, ptr %0, i64 40        ; 2 uses
  %.val4770.i = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %i.ac = getelementptr i8, ptr %.val4770.i, i64 4
  %.val47.val71.i = load i32, ptr %i.ac, align 4, !tbaa !30
  %i.ad = icmp sgt i32 %.val47.val71.i, 0
  br i1 %i.ad, label %.lr.ph.i15, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %.lr.ph.i15, %bb.f
  %i.ae = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val5574.i = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %i.af = getelementptr i8, ptr %.val5574.i, i64 4
  %.val55.val75.i = load i32, ptr %i.af, align 4, !tbaa !30
  %i.ag = icmp sgt i32 %.val55.val75.i, 0
  br i1 %i.ag, label %.critedge.i, label %.critedge2.preheader.i

.lr.ph.i15:                                       ; preds = %bb.f, %.lr.ph.i15
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i17, %.lr.ph.i15 ], [ 0, %bb.f ] ; 2 uses
  %.val4773.i = phi ptr [ %.val47.i, %.lr.ph.i15 ], [ %.val4770.i, %bb.f ]
  %i.ah = getelementptr i8, ptr %.val4773.i, i64 8
  %.val48.val.i = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val48.val.i, i64 %indvars.iv.i16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %.val53.i = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.ak = getelementptr i8, ptr %i.aj, i64 48
  %.val54.i = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.al = getelementptr i8, ptr %.val53.i, i64 32
  %.val53.val.i = load ptr, ptr %i.al, align 8, !tbaa !27
  %.val54.val.i = load i32, ptr %.val54.i, align 4, !tbaa !45
  %i.am = getelementptr i8, ptr %.val53.val.i, i64 8
  %.val53.val.val.i = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.an = sext i32 %.val54.val.i to i64
  %i.ao = getelementptr inbounds [8 x i8], ptr %.val53.val.val.i, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !32
  %i.aq = tail call ptr @Abc_ObjName(ptr noundef %i.ap) #6
  %i.ar = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.6, ptr noundef %i.aq) #6 ; 0 uses
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i16, 1 ; 2 uses
  %.val47.i = load ptr, ptr %i.ab, align 8, !tbaa !39 ; 2 uses
  %i.as = getelementptr i8, ptr %.val47.i, i64 4
  %.val47.val.i = load i32, ptr %i.as, align 4, !tbaa !30
  %i.at = sext i32 %.val47.val.i to i64
  %i.au = icmp slt i64 %indvars.iv.next.i17, %i.at
  br i1 %i.au, label %.lr.ph.i15, label %.critedge.preheader.i, !llvm.loop !54

.critedge2.preheader.i:                           ; preds = %.critedge.i, %.critedge.preheader.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !46 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 4
  %.val4579.i = load i32, ptr %i.ax, align 4, !tbaa !30
  %i.ay = icmp sgt i32 %.val4579.i, 0
  br i1 %i.ay, label %.lr.ph81.i, label %.critedge4.i

.critedge.i:                                      ; preds = %.critedge.preheader.i, %.critedge.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %.critedge.i ], [ 0, %.critedge.preheader.i ] ; 2 uses
  %.val5577.i = phi ptr [ %.val55.i, %.critedge.i ], [ %.val5574.i, %.critedge.preheader.i ]
  %i.az = getelementptr i8, ptr %.val5577.i, i64 8
  %.val56.val.i = load ptr, ptr %i.az, align 8, !tbaa !31
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val56.val.i, i64 %indvars.iv88.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !32 ; 2 uses
  %.val61.i = load ptr, ptr %i.bb, align 8, !tbaa !43
  %i.bc = getelementptr i8, ptr %i.bb, i64 32
  %.val62.i = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.bd = getelementptr i8, ptr %.val61.i, i64 32
  %.val61.val.i = load ptr, ptr %i.bd, align 8, !tbaa !27
  %.val62.val.i = load i32, ptr %.val62.i, align 4, !tbaa !45
  %i.be = getelementptr i8, ptr %.val61.val.i, i64 8
  %.val61.val.val.i = load ptr, ptr %i.be, align 8, !tbaa !31
  %i.bf = sext i32 %.val62.val.i to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %.val61.val.val.i, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !32
  %i.bi = tail call ptr @Abc_ObjName(ptr noundef %i.bh) #6
  %i.bj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.7, ptr noundef %i.bi) #6 ; 0 uses
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %.val55.i = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %i.bk = getelementptr i8, ptr %.val55.i, i64 4
  %.val55.val.i = load i32, ptr %i.bk, align 4, !tbaa !30
  %i.bl = sext i32 %.val55.val.i to i64
  %i.bm = icmp slt i64 %indvars.iv.next89.i, %i.bl
  br i1 %i.bm, label %.critedge.i, label %.critedge2.preheader.i, !llvm.loop !55

.lr.ph81.i:                                       ; preds = %.critedge2.preheader.i, %.critedge2.i14
  %i.bn = phi ptr [ %i.cu, %.critedge2.i14 ], [ %i.aw, %.critedge2.preheader.i ] ; 2 uses
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i, %.critedge2.i14 ], [ 0, %.critedge2.preheader.i ] ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 8
  %.val63.val.i = load ptr, ptr %i.bo, align 8, !tbaa !31
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.val63.val.i, i64 %indvars.iv91.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !32 ; 5 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 20
  %.val64.i = load i32, ptr %i.br, align 4
  %i.bs = and i32 %.val64.i, 15
  %.not69.i = icmp eq i32 %i.bs, 8
  br i1 %.not69.i, label %bb.g, label %.critedge2.i14

bb.g:                                             ; preds = %.lr.ph81.i
  %.val51.i = load ptr, ptr %i.bq, align 8, !tbaa !43
  %i.bt = getelementptr i8, ptr %i.bq, i64 48
  %.val52.i = load ptr, ptr %i.bt, align 8, !tbaa !44
  %i.bu = getelementptr i8, ptr %.val51.i, i64 32
  %.val51.val.i = load ptr, ptr %i.bu, align 8, !tbaa !27
  %.val52.val.i = load i32, ptr %.val52.i, align 4, !tbaa !45
  %i.bv = getelementptr i8, ptr %.val51.val.i, i64 8
  %.val51.val.val.i = load ptr, ptr %i.bv, align 8, !tbaa !31
  %i.bw = sext i32 %.val52.val.i to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %.val51.val.val.i, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !32 ; 2 uses
  %.val49.i = load ptr, ptr %i.by, align 8, !tbaa !43
  %i.bz = getelementptr i8, ptr %i.by, i64 48
  %.val50.i = load ptr, ptr %i.bz, align 8, !tbaa !44
  %i.ca = getelementptr i8, ptr %.val49.i, i64 32
  %.val49.val.i = load ptr, ptr %i.ca, align 8, !tbaa !27
  %.val50.val.i = load i32, ptr %.val50.i, align 4, !tbaa !45
  %i.cb = getelementptr i8, ptr %.val49.val.i, i64 8
  %.val49.val.val.i = load ptr, ptr %i.cb, align 8, !tbaa !31
  %i.cc = sext i32 %.val50.val.i to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %.val49.val.val.i, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !32
  %i.cf = tail call ptr @Abc_ObjName(ptr noundef %i.ce) #6
  %.val59.i = load ptr, ptr %i.bq, align 8, !tbaa !43
  %i.cg = getelementptr i8, ptr %i.bq, i64 32
  %.val60.i = load ptr, ptr %i.cg, align 8, !tbaa !47
  %i.ch = getelementptr i8, ptr %.val59.i, i64 32
  %.val59.val.i = load ptr, ptr %i.ch, align 8, !tbaa !27
  %.val60.val.i = load i32, ptr %.val60.i, align 4, !tbaa !45
  %i.ci = getelementptr i8, ptr %.val59.val.i, i64 8
  %.val59.val.val.i = load ptr, ptr %i.ci, align 8, !tbaa !31
  %i.cj = sext i32 %.val60.val.i to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %.val59.val.val.i, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !32 ; 2 uses
  %.val57.i = load ptr, ptr %i.cl, align 8, !tbaa !43
  %i.cm = getelementptr i8, ptr %i.cl, i64 32
  %.val58.i = load ptr, ptr %i.cm, align 8, !tbaa !47
  %i.cn = getelementptr i8, ptr %.val57.i, i64 32
  %.val57.val.i = load ptr, ptr %i.cn, align 8, !tbaa !27
  %.val58.val.i = load i32, ptr %.val58.i, align 4, !tbaa !45
  %i.co = getelementptr i8, ptr %.val57.val.i, i64 8
  %.val57.val.val.i = load ptr, ptr %i.co, align 8, !tbaa !31
  %i.cp = sext i32 %.val58.val.i to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %.val57.val.val.i, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !32
  %i.cs = tail call ptr @Abc_ObjName(ptr noundef %i.cr) #6
  %i.ct = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.15, ptr noundef %i.cf, ptr noundef %i.cs) #6 ; 0 uses
  %.pre.i = load ptr, ptr %i.av, align 8, !tbaa !46
  br label %.critedge2.i14

.critedge2.i14:                                   ; preds = %bb.g, %.lr.ph81.i
  %i.cu = phi ptr [ %.pre.i, %bb.g ], [ %i.bn, %.lr.ph81.i ] ; 2 uses
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 4
  %.val45.i = load i32, ptr %i.cv, align 4, !tbaa !30
  %i.cw = sext i32 %.val45.i to i64
  %i.cx = icmp slt i64 %indvars.iv.next92.i, %i.cw
  br i1 %i.cx, label %.lr.ph81.i, label %.critedge4.i, !llvm.loop !56

.critedge4.i:                                     ; preds = %.critedge2.i14, %.critedge2.preheader.i
  %i.cy = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #7 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 0, ptr %i.cz, align 4, !tbaa !62
  store i32 10000, ptr %i.cy, align 8, !tbaa !63
  %i.da = tail call noalias dereferenceable_or_null(40000) ptr @malloc(i64 noundef 40000) #7
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  store ptr %i.da, ptr %i.db, align 8, !tbaa !64
  %i.dc = load ptr, ptr @stdout, align 8, !tbaa !37
  %.val65.i = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.dd = getelementptr i8, ptr %.val65.i, i64 4
  %.val65.val.i = load i32, ptr %i.dd, align 4, !tbaa !30
  %i.de = tail call ptr @Extra_ProgressBarStart(ptr noundef %i.dc, i32 noundef %.val65.val.i) #6 ; 4 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 4
  %.val82.i = load i32, ptr %i.dg, align 4, !tbaa !30
  %i.dh = icmp sgt i32 %.val82.i, 0
  br i1 %i.dh, label %.lr.ph85.i, label %.critedge6.i

.lr.ph85.i:                                       ; preds = %.critedge4.i
  %.not.i.i = icmp eq ptr %i.de, null
  br label %bb.h

bb.h:                                             ; preds = %Io_WriteBenchLutOneNode.exit.i, %.lr.ph85.i
  %indvars.iv94.i = phi i64 [ 0, %.lr.ph85.i ], [ %indvars.iv.next95.i, %Io_WriteBenchLutOneNode.exit.i ] ; 4 uses
  %i.di = phi ptr [ %i.df, %.lr.ph85.i ], [ %i.hi, %Io_WriteBenchLutOneNode.exit.i ]
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %.val46.val.i = load ptr, ptr %i.dj, align 8, !tbaa !31
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.val46.val.i, i64 %indvars.iv94.i
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !32 ; 16 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %Io_WriteBenchLutOneNode.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = getelementptr i8, ptr %i.dl, i64 20
  %.val66.i = load i32, ptr %i.dn, align 4
  %i.do = and i32 %.val66.i, 15
  %.not.i = icmp eq i32 %i.do, 7
  br i1 %.not.i, label %bb.j, label %Io_WriteBenchLutOneNode.exit.i

bb.j:                                             ; preds = %bb.i
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dp = load i32, ptr %i.de, align 4, !tbaa !45
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv94.i, %i.dq
  br i1 %i.dr, label %Extra_ProgressBarUpdate.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ds = trunc nuw nsw i64 %indvars.iv94.i to i32
  tail call void @Extra_ProgressBarUpdate_int(ptr noundef %i.de, i32 noundef %i.ds, ptr noundef null) #6
  br label %Extra_ProgressBarUpdate.exit.i

Extra_ProgressBarUpdate.exit.i:                   ; preds = %bb.l, %bb.k
  %i.dt = getelementptr i8, ptr %i.dl, i64 28     ; 3 uses
  %.val54.i.i = load i32, ptr %i.dt, align 4, !tbaa !48 ; 8 uses
  %i.du = load ptr, ptr %i.dl, align 8, !tbaa !43
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 256
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !65
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dl, i64 64 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !34
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = and i64 %i.dz, -2
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = tail call ptr @Hop_ManConvertAigToTruth(ptr noundef %i.dw, ptr noundef %i.eb, i32 noundef %.val54.i.i, ptr noundef nonnull %i.cy, i32 noundef 0) #6 ; 10 uses
  %i.ed = load ptr, ptr %i.dx, align 8, !tbaa !34
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = and i64 %i.ee, 1
  %.not.i67.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i67.i, label %.Extra_TruthNot.exit_crit_edge.i.i, label %bb.m

.Extra_TruthNot.exit_crit_edge.i.i:               ; preds = %Extra_ProgressBarUpdate.exit.i
  %.pre.i.i = add nsw i32 %.val54.i.i, -5
  %.pre72.i.i = shl nuw i32 1, %.pre.i.i
  br label %Extra_TruthNot.exit.i.i

bb.m:                                             ; preds = %Extra_ProgressBarUpdate.exit.i
  %i.eg = icmp slt i32 %.val54.i.i, 6
  %i.eh = add nsw i32 %.val54.i.i, -5
  %i.ei = shl nuw i32 1, %i.eh                    ; 7 uses
  %spec.select.i.i.i = select i1 %i.eg, i32 1, i32 %i.ei ; 6 uses
  %i.ej = icmp sgt i32 %spec.select.i.i.i, 0
  br i1 %i.ej, label %select.unfold.preheader.i.i.i, label %Extra_TruthNot.exit.i.i

select.unfold.preheader.i.i.i:                    ; preds = %bb.m
  %i.ek = zext nneg i32 %spec.select.i.i.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %spec.select.i.i.i, 8
  br i1 %min.iters.check, label %select.unfold.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %select.unfold.preheader.i.i.i
  %n.vec = and i64 %i.ek, 2147483640
  %invariant.gep = getelementptr [4 x i8], ptr %i.ec, i64 %i.ek
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.el = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.el ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %gep, i64 -12 ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %gep, i64 -28 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.em, align 4, !tbaa !45
  %wide.load28 = load <4 x i32>, ptr %i.en, align 4, !tbaa !45
  %i.eo = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.ep = xor <4 x i32> %wide.load28, splat (i32 -1)
  store <4 x i32> %i.eo, ptr %i.em, align 4, !tbaa !45
  store <4 x i32> %i.ep, ptr %i.en, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %Extra_TruthNot.exit.i.i, label %vector.body, !llvm.loop !57

select.unfold.i.i.i:                              ; preds = %select.unfold.preheader.i.i.i
  %2 = getelementptr [4 x i8], ptr %i.ec, i64 %i.ek
  %3 = getelementptr i8, ptr %2, i64 -4           ; 2 uses
  %4 = load i32, ptr %3, align 4, !tbaa !45
  %5 = xor i32 %4, -1
  store i32 %5, ptr %3, align 4, !tbaa !45
  %.not = icmp eq i32 %spec.select.i.i.i, 1
  br i1 %.not, label %Extra_TruthNot.exit.i.i, label %select.unfold.i.i.i.1

select.unfold.i.i.i.1:                            ; preds = %select.unfold.i.i.i
  %6 = getelementptr [4 x i8], ptr %i.ec, i64 %i.ek
  %7 = getelementptr i8, ptr %6, i64 -8           ; 2 uses
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = xor i32 %8, -1
  store i32 %9, ptr %7, align 4, !tbaa !45
  %10 = icmp ugt i32 %spec.select.i.i.i, 2
  br i1 %10, label %select.unfold.i.i.i.a, label %Extra_TruthNot.exit.i.i

select.unfold.i.i.i.a:                            ; preds = %select.unfold.i.i.i.1
  %11 = getelementptr [4 x i8], ptr %i.ec, i64 %i.ek
  %12 = getelementptr i8, ptr %11, i64 -12        ; 2 uses
  %13 = load i32, ptr %12, align 4, !tbaa !45
  %14 = xor i32 %13, -1
  store i32 %14, ptr %12, align 4, !tbaa !45
  %i.er = getelementptr [4 x i8], ptr %i.ec, i64 %i.ek
  %15 = getelementptr i8, ptr %i.er, i64 -16      ; 2 uses
  %i.es = load i32, ptr %15, align 4, !tbaa !45
  %i.et = xor i32 %i.es, -1
  store i32 %i.et, ptr %15, align 4, !tbaa !45
  %i.eu = icmp ugt i32 %spec.select.i.i.i, 4
  br i1 %i.eu, label %select.unfold.i.i.i.4, label %Extra_TruthNot.exit.i.i

select.unfold.i.i.i.4:                            ; preds = %select.unfold.i.i.i.a
  %16 = getelementptr [4 x i8], ptr %i.ec, i64 %i.ek
  %17 = getelementptr i8, ptr %16, i64 -20        ; 2 uses
  %18 = load i32, ptr %17, align 4, !tbaa !45
  %19 = xor i32 %18, -1
  store i32 %19, ptr %17, align 4, !tbaa !45
  %20 = getelementptr [4 x i8], ptr %i.ec, i64 %i.ek
  %21 = getelementptr i8, ptr %20, i64 -24        ; 2 uses
  %22 = load i32, ptr %21, align 4, !tbaa !45
  %23 = xor i32 %22, -1
  store i32 %23, ptr %21, align 4, !tbaa !45
  br label %Extra_TruthNot.exit.i.i

Extra_TruthNot.exit.i.i:                          ; preds = %vector.body, %select.unfold.i.i.i, %select.unfold.i.i.i.1, %select.unfold.i.i.i.a, %select.unfold.i.i.i.4, %bb.m, %.Extra_TruthNot.exit_crit_edge.i.i
  %.pre-phi73.i.i = phi i32 [ %.pre72.i.i, %.Extra_TruthNot.exit_crit_edge.i.i ], [ %i.ei, %bb.m ], [ %i.ei, %select.unfold.i.i.i ], [ %i.ei, %select.unfold.i.i.i.4 ], [ %i.ei, %select.unfold.i.i.i.a ], [ %i.ei, %select.unfold.i.i.i.1 ], [ %i.ei, %vector.body ]
  %i.ev = icmp slt i32 %.val54.i.i, 6
  %spec.select.i57.i.i = select i1 %i.ev, i32 1, i32 %.pre-phi73.i.i ; 2 uses
  %i.ew = zext i32 %spec.select.i57.i.i to i64    ; 2 uses
  %i.ex = icmp sgt i32 %spec.select.i57.i.i, 0
  br i1 %i.ex, label %.lr.ph, label %Extra_TruthIsConst0.exit.i.i

select.unfold.i58.i.i:                            ; preds = %.lr.ph
  %i.ey = trunc nuw i64 %i.fa to i32
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph, label %Extra_TruthIsConst0.exit.i.i, !llvm.loop !58

.lr.ph:                                           ; preds = %Extra_TruthNot.exit.i.i, %select.unfold.i58.i.i
  %indvars.iv.i59.i.i25 = phi i64 [ %i.fa, %select.unfold.i58.i.i ], [ %i.ew, %Extra_TruthNot.exit.i.i ]
  %i.fa = add nsw i64 %indvars.iv.i59.i.i25, -1   ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !45
  %.not.i.i.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i.i, label %select.unfold.i58.i.i, label %.lr.ph27, !llvm.loop !58

Extra_TruthIsConst0.exit.i.i:                     ; preds = %select.unfold.i58.i.i, %Extra_TruthNot.exit.i.i
  %.val49.i.i = load ptr, ptr %i.dl, align 8, !tbaa !43
  %i.fd = getelementptr i8, ptr %i.dl, i64 48
  %.val50.i.i = load ptr, ptr %i.fd, align 8, !tbaa !44
  %i.fe = getelementptr i8, ptr %.val49.i.i, i64 32
  %.val49.val.i.i = load ptr, ptr %i.fe, align 8, !tbaa !27
  %.val50.val.i.i = load i32, ptr %.val50.i.i, align 4, !tbaa !45
  %i.ff = getelementptr i8, ptr %.val49.val.i.i, i64 8
  %.val49.val.val.i.i = load ptr, ptr %i.ff, align 8, !tbaa !31
  %i.fg = sext i32 %.val50.val.i.i to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %.val49.val.val.i.i, i64 %i.fg
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !32
  %i.fj = tail call ptr @Abc_ObjName(ptr noundef %i.fi) #6
  %i.fk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.16, ptr noundef %i.fj) #6 ; 0 uses
  br label %Io_WriteBenchLutOneNode.exit.i

select.unfold.i61.i.i:                            ; preds = %.lr.ph27
  %i.fl = trunc nuw i64 %i.fn to i32
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %.lr.ph27, label %Extra_TruthIsConst1.exit.i.i, !llvm.loop !59

.lr.ph27:                                         ; preds = %.lr.ph, %select.unfold.i61.i.i
  %indvars.iv.i62.i.i26 = phi i64 [ %i.fn, %select.unfold.i61.i.i ], [ %i.ew, %.lr.ph ]
  %i.fn = add nsw i64 %indvars.iv.i62.i.i26, -1   ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !45
  %.not.i64.i.i = icmp eq i32 %i.fp, -1
  br i1 %.not.i64.i.i, label %select.unfold.i61.i.i, label %bb.n, !llvm.loop !59

Extra_TruthIsConst1.exit.i.i:                     ; preds = %select.unfold.i61.i.i
  %.val47.i.i = load ptr, ptr %i.dl, align 8, !tbaa !43
  %i.fq = getelementptr i8, ptr %i.dl, i64 48
  %.val48.i.i = load ptr, ptr %i.fq, align 8, !tbaa !44
  %i.fr = getelementptr i8, ptr %.val47.i.i, i64 32
  %.val47.val.i.i = load ptr, ptr %i.fr, align 8, !tbaa !27
  %.val48.val.i.i = load i32, ptr %.val48.i.i, align 4, !tbaa !45
  %i.fs = getelementptr i8, ptr %.val47.val.i.i, i64 8
  %.val47.val.val.i.i = load ptr, ptr %i.fs, align 8, !tbaa !31
  %i.ft = sext i32 %.val48.val.i.i to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %.val47.val.val.i.i, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !32
  %i.fw = tail call ptr @Abc_ObjName(ptr noundef %i.fv) #6
  %i.fx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.17, ptr noundef %i.fw) #6 ; 0 uses
  br label %Io_WriteBenchLutOneNode.exit.i

bb.n:                                             ; preds = %.lr.ph27
  %i.fy = icmp eq i32 %.val54.i.i, 1
  %.val45.i.i = load ptr, ptr %i.dl, align 8, !tbaa !43
  %i.fz = getelementptr i8, ptr %i.dl, i64 48
  %.val46.i.i = load ptr, ptr %i.fz, align 8, !tbaa !44
  %i.ga = getelementptr i8, ptr %.val45.i.i, i64 32
  %.val45.val.i.i = load ptr, ptr %i.ga, align 8, !tbaa !27
  %.val46.val.i.i = load i32, ptr %.val46.i.i, align 4, !tbaa !45
  %i.gb = getelementptr i8, ptr %.val45.val.i.i, i64 8
  %.val45.val.val.i.i = load ptr, ptr %i.gb, align 8, !tbaa !31
  %i.gc = sext i32 %.val46.val.i.i to i64
  %i.gd = getelementptr inbounds [8 x i8], ptr %.val45.val.val.i.i, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !32
  %i.gf = tail call ptr @Abc_ObjName(ptr noundef %i.ge) #6 ; 2 uses
  br i1 %i.fy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gg = tail call i32 @Abc_NodeIsBuf(ptr noundef nonnull %i.dl) #6
  %.not43.i.i = icmp eq i32 %i.gg, 0
  %i.gh = select i1 %.not43.i.i, i32 1, i32 2
  %.val51.i.i = load ptr, ptr %i.dl, align 8, !tbaa !43
  %i.gi = getelementptr i8, ptr %i.dl, i64 32
  %.val52.i.i = load ptr, ptr %i.gi, align 8, !tbaa !47
  %i.gj = getelementptr i8, ptr %.val51.i.i, i64 32
  %.val51.val.i.i = load ptr, ptr %i.gj, align 8, !tbaa !27
  %.val52.val.i.i = load i32, ptr %.val52.i.i, align 4, !tbaa !45
  %i.gk = getelementptr i8, ptr %.val51.val.i.i, i64 8
  %.val51.val.val.i.i = load ptr, ptr %i.gk, align 8, !tbaa !31
  %i.gl = sext i32 %.val52.val.i.i to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %.val51.val.val.i.i, i64 %i.gl
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !32
  %i.go = tail call ptr @Abc_ObjName(ptr noundef %i.gn) #6
  %i.gp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.18, ptr noundef %i.gf, i32 noundef %i.gh, ptr noundef %i.go) #6 ; 0 uses
  br label %Io_WriteBenchLutOneNode.exit.i

bb.p:                                             ; preds = %bb.n
  %i.gq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.19, ptr noundef %i.gf) #6 ; 0 uses
  tail call void @Extra_PrintHexadecimal(ptr noundef nonnull %i.u, ptr noundef nonnull %i.ec, i32 noundef %.val54.i.i) #6
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.20, i64 2, i64 1, ptr nonnull %i.u) ; 0 uses
  %.val5369.i.i = load i32, ptr %i.dt, align 4, !tbaa !48
  %i.gr = icmp sgt i32 %.val5369.i.i, 0
  br i1 %i.gr, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.gs = getelementptr i8, ptr %i.dl, i64 32
  %i.gt = add nsw i32 %.val54.i.i, -1
  %i.gu = zext i32 %i.gt to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.q ] ; 3 uses
  %.val55.i.i = load ptr, ptr %i.dl, align 8, !tbaa !43
  %.val56.i.i = load ptr, ptr %i.gs, align 8, !tbaa !47
  %i.gv = getelementptr i8, ptr %.val55.i.i, i64 32
  %.val55.val.i.i = load ptr, ptr %i.gv, align 8, !tbaa !27
  %i.gw = getelementptr i8, ptr %.val55.val.i.i, i64 8
  %.val55.val.val.i.i = load ptr, ptr %i.gw, align 8, !tbaa !31
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %.val56.i.i, i64 %indvars.iv.i.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !45
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %.val55.val.val.i.i, i64 %i.gz
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !32
  %i.hc = tail call ptr @Abc_ObjName(ptr noundef %i.hb) #6
  %i.hd = icmp eq i64 %indvars.iv.i.i, %i.gu
  %i.he = select i1 %i.hd, ptr @.str.22, ptr @.str.23
  %i.hf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.21, ptr noundef %i.hc, ptr noundef nonnull %i.he) #6 ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val53.i.i = load i32, ptr %i.dt, align 4, !tbaa !48
  %i.hg = sext i32 %.val53.i.i to i64
  %i.hh = icmp slt i64 %indvars.iv.next.i.i, %i.hg
  br i1 %i.hh, label %bb.q, label %.critedge.i.i, !llvm.loop !60

.critedge.i.i:                                    ; preds = %bb.q, %bb.p
  %fwrite42.i.i = tail call i64 @fwrite(ptr nonnull @.str.24, i64 3, i64 1, ptr nonnull %i.u) ; 0 uses
  br label %Io_WriteBenchLutOneNode.exit.i

Io_WriteBenchLutOneNode.exit.i:                   ; preds = %.critedge.i.i, %bb.o, %Extra_TruthIsConst1.exit.i.i, %Extra_TruthIsConst0.exit.i.i, %bb.i, %bb.h
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %i.hi = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 4
  %.val.i13 = load i32, ptr %i.hj, align 4, !tbaa !30
  %i.hk = sext i32 %.val.i13 to i64
  %i.hl = icmp slt i64 %indvars.iv.next95.i, %i.hk
  br i1 %i.hl, label %bb.h, label %.critedge6.i, !llvm.loop !61

.critedge6.i:                                     ; preds = %Io_WriteBenchLutOneNode.exit.i, %.critedge4.i
  tail call void @Extra_ProgressBarStop(ptr noundef %i.de) #6
  %i.hm = load ptr, ptr %i.db, align 8, !tbaa !64 ; 2 uses
  %.not.i68.i = icmp eq ptr %i.hm, null
  br i1 %.not.i68.i, label %Io_WriteBenchLutOne.exit, label %bb.r

bb.r:                                             ; preds = %.critedge6.i
  tail call void @free(ptr noundef nonnull %i.hm) #6
  br label %Io_WriteBenchLutOne.exit

Io_WriteBenchLutOne.exit:                         ; preds = %.critedge6.i, %bb.r
  tail call void @free(ptr noundef nonnull %i.cy) #6
  %i.hn = getelementptr i8, ptr %0, i64 328
  %.val = load ptr, ptr %i.hn, align 8, !tbaa !49
  %.not11 = icmp eq ptr %.val, null
  br i1 %.not11, label %bb.t, label %bb.s

bb.s:                                             ; preds = %Io_WriteBenchLutOne.exit
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %Io_WriteBenchLutOne.exit
  %i.ho = tail call i32 @fclose(ptr noundef nonnull %i.u) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.e, %Io_WriteBenchCheckNames.exit
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.t ], [ 0, %Io_WriteBenchCheckNames.exit ]
  ret i32 %.0
}

declare ptr @Abc_ObjName(ptr noundef) local_unnamed_addr #2

declare ptr @Extra_ProgressBarStart(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Extra_ProgressBarStop(ptr noundef) local_unnamed_addr #2

declare void @Extra_ProgressBarUpdate_int(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Abc_NodeIsBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @Hop_ManConvertAigToTruth(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Extra_PrintHexadecimal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @Nm_ManFindNameById(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !35}
!1 = distinct !{!1, !35}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 _ZTS9Nm_Man_t_", !10, i64 0}
!13 = !{!"p1 _ZTS10Vec_Ptr_t_", !10, i64 0}
!14 = !{!"p1 _ZTS10Abc_Ntk_t_", !10, i64 0}
!15 = !{!"p1 _ZTS10Abc_Des_t_", !10, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"p1 int", !10, i64 0}
!18 = !{!"Vec_Int_t_", !7, i64 0, !7, i64 4, !17, i64 8}
!19 = !{!"p1 _ZTS12Mem_Fixed_t_", !10, i64 0}
!20 = !{!"p1 _ZTS11Mem_Step_t_", !10, i64 0}
!21 = !{!"p1 _ZTS14Abc_ManTime_t_", !10, i64 0}
!22 = !{!"float", !6, i64 0}
!23 = !{!"p1 _ZTS10Vec_Int_t_", !10, i64 0}
!24 = !{!"p1 _ZTS10Abc_Cex_t_", !10, i64 0}
!25 = !{!"p1 float", !10, i64 0}
!26 = !{!"Abc_Ntk_t_", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !12, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !6, i64 96, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !14, i64 160, !7, i64 168, !15, i64 176, !14, i64 184, !7, i64 192, !7, i64 196, !7, i64 200, !16, i64 208, !7, i64 216, !18, i64 224, !19, i64 240, !20, i64 248, !10, i64 256, !21, i64 264, !10, i64 272, !22, i64 280, !7, i64 284, !23, i64 288, !13, i64 296, !17, i64 304, !24, i64 312, !13, i64 320, !14, i64 328, !10, i64 336, !10, i64 344, !14, i64 352, !10, i64 360, !10, i64 368, !23, i64 376, !23, i64 384, !11, i64 392, !25, i64 400, !13, i64 408, !23, i64 416, !23, i64 424, !13, i64 432, !23, i64 440, !23, i64 448, !23, i64 456}
!27 = !{!26, !13, i64 32}
!28 = !{!"any p2 pointer", !10, i64 0}
!29 = !{!"Vec_Ptr_t_", !7, i64 0, !7, i64 4, !28, i64 8}
!30 = !{!29, !7, i64 4}
!31 = !{!29, !28, i64 8}
!32 = !{!10, !10, i64 0}
!33 = !{!26, !12, i64 24}
!34 = !{!6, !6, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!26, !11, i64 8}
!39 = !{!26, !13, i64 40}
!40 = !{!26, !13, i64 48}
!41 = !{!"p1 _ZTS10Abc_Obj_t_", !10, i64 0}
!42 = !{!"Abc_Obj_t_", !14, i64 0, !41, i64 8, !7, i64 16, !7, i64 20, !7, i64 20, !7, i64 20, !7, i64 20, !7, i64 20, !7, i64 21, !7, i64 21, !7, i64 21, !7, i64 21, !7, i64 21, !18, i64 24, !18, i64 40, !10, i64 56, !6, i64 64, !6, i64 72}
!43 = !{!42, !14, i64 0}
!44 = !{!42, !17, i64 48}
!45 = !{!7, !7, i64 0}
!46 = !{!26, !13, i64 80}
!47 = !{!42, !17, i64 32}
!48 = !{!42, !7, i64 28}
!49 = !{!26, !14, i64 328}
!50 = distinct !{!50, !35}
!51 = distinct !{!51, !35}
!52 = distinct !{!52, !35}
!53 = distinct !{!53, !35}
!54 = distinct !{!54, !35}
!55 = distinct !{!55, !35}
!56 = distinct !{!56, !35}
!57 = distinct !{!57, !35, !66, !67}
!58 = distinct !{!58, !35}
!59 = distinct !{!59, !35}
!60 = distinct !{!60, !35}
!61 = distinct !{!61, !35}
!62 = !{!18, !7, i64 4}
!63 = !{!18, !7, i64 0}
!64 = !{!18, !17, i64 8}
!65 = !{!26, !10, i64 256}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
