Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ioWriteBook?download=true
inline.NumInlined: 242
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Io_WriteBook:bb.a
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %0
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aj = tail call fastcc i32 @Io_NtkWriteNodes(ptr noundef %i.e, ptr noundef %i.ah)
  %i.ak = add i32 %i.aj, %.1104
  tail call fastcc void @Io_NtkWriteNets(ptr noundef %i.g, ptr noundef %i.ah)
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.al = phi ptr [ %i.ad, %.lr.ph ], [ %.pre, %bb.f ] ; 2 uses
  %.2 = phi i32 [ %.1104, %.lr.ph ], [ %i.ak, %bb.f ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %.val = load i32, ptr %i.ao, align 4, !tbaa !33
  %i.ap = sext i32 %.val to i64
  %i.aq = icmp slt i64 %indvars.iv.next, %i.ap
  br i1 %i.aq, label %.lr.ph, label %.critedge, !llvm.loop !38

.critedge:                                        ; preds = %bb.g, %.preheader, %bb.e
  %.3 = phi i32 [ %.068, %bb.e ], [ %.068, %.preheader ], [ %.2, %bb.g ] ; 3 uses
  %i.ar = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  %i.as = tail call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  %i.at = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1) #16 ; 0 uses
  %strlen78 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr79 = getelementptr inbounds i8, ptr %i.c, i64 %strlen78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr79, ptr noundef nonnull align 1 dereferenceable(5) @.str.7, i64 5, i1 false)
  %i.au = tail call noalias ptr @fopen(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.2) ; 12 uses
  %i.av = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1) #16 ; 0 uses
  %strlen80 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr81 = getelementptr inbounds i8, ptr %i.c, i64 %strlen80
  store i32 7106606, ptr %endptr81, align 1
  %i.aw = tail call noalias ptr @fopen(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.2) ; 18 uses
  %i.ax = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %1) #16 ; 0 uses
  %strlen82 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.c)
  %endptr83 = getelementptr inbounds i8, ptr %i.c, i64 %strlen82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %endptr83, ptr noundef nonnull align 1 dereferenceable(5) @.str.9, i64 5, i1 false)
  %i.ay = tail call noalias ptr @fopen(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.2)
  tail call void @free(ptr noundef %i.c) #16
  %i.az = getelementptr i8, ptr %0, i64 124
  %.val39.i = load i32, ptr %i.az, align 4, !tbaa !28
  %i.ba = getelementptr i8, ptr %0, i64 128       ; 4 uses
  %.val40.i = load i32, ptr %i.ba, align 8, !tbaa !28
  %i.bb = uitofp i32 %.3 to double                ; 2 uses
  %i.bc = fdiv double %i.bb, 9.000000e-01         ; 3 uses
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.bc)
  %i.bd = fptosi double %sqrt.i to i32            ; 5 uses
  %i.be = add nsw i32 %.val40.i, %.val39.i
  %i.bf = getelementptr i8, ptr %0, i64 40        ; 3 uses
  %.val.i = load ptr, ptr %i.bf, align 8, !tbaa !40
  %i.bg = getelementptr i8, ptr %.val.i, i64 4
  %.val.val.i = load i32, ptr %i.bg, align 4, !tbaa !33
  %i.bh = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %.val38.i = load ptr, ptr %i.bh, align 8, !tbaa !41
  %i.bi = getelementptr i8, ptr %.val38.i, i64 4
  %.val38.val.i = load i32, ptr %i.bi, align 4, !tbaa !33
  %i.bj = add nsw i32 %.val38.val.i, %.val.val.i  ; 7 uses
  %i.bk = uitofp i32 %i.bd to double              ; 8 uses
  %i.bl = fdiv double %i.bc, %i.bk
  %i.bm = fptosi double %i.bl to i32              ; 2 uses
  %i.bn = sitofp i32 %i.bm to double              ; 7 uses
  %i.bo = fmul nnan double %i.bk, %i.bn           ; 3 uses
  %i.bp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, i32 noundef 1) ; 0 uses
  %i.bq = udiv i32 %.3, %i.be
  %i.br = uitofp i32 %i.bq to double
  %i.bs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %.3, double noundef %i.br) ; 0 uses
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.bt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, double noundef %i.bc) ; 0 uses
  %i.bu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, double noundef 1.000000e+01) ; 0 uses
  %i.bv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52, double noundef 1.000000e+00) ; 0 uses
  %puts37.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, double noundef %i.bn) ; 0 uses
  %i.bx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, double noundef %i.bk, i32 noundef %i.bd) ; 0 uses
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, double noundef %i.bo) ; 0 uses
  %i.bz = fsub nnan double %i.bo, %i.bb
  %i.ca = fmul nnan double %i.bz, 1.000000e+02
  %i.cb = fdiv double %i.ca, %i.bo
  %i.cc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, double noundef %i.cb) ; 0 uses
  %i.cd = fdiv double %i.bn, %i.bk
  %i.ce = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, double noundef %i.cd) ; 0 uses
  %i.cf = tail call i64 @fwrite(ptr nonnull @.str.59, i64 20, i64 1, ptr %i.au) ; 0 uses
  %i.cg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.60, i32 noundef %i.bd) #16 ; 0 uses
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %Io_NtkWriteScl.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.critedge, %.lr.ph.i.i
  %.023.i.i = phi i32 [ %i.cu, %.lr.ph.i.i ], [ 0, %.critedge ] ; 3 uses
  %i.ch = tail call i64 @fwrite(ptr nonnull @.str.61, i64 19, i64 1, ptr %i.au) ; 0 uses
  %i.ci = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.62, i32 noundef %.023.i.i) #16 ; 0 uses
  %i.cj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.63, i32 noundef 1) #16 ; 0 uses
  %i.ck = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.64, i32 noundef 1) #16 ; 0 uses
  %i.cl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.65, i32 noundef 1) #16 ; 0 uses
  %i.cm = and i32 %.023.i.i, 1
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr @__const.Io_NtkWriteScl.rowOrients, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !42
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.66, ptr noundef %i.cp) #16 ; 0 uses
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.67, i32 noundef 89) #16 ; 0 uses
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.68, i32 noundef 0, i32 noundef %i.bm) #16 ; 0 uses
  %i.ct = tail call i64 @fwrite(ptr nonnull @.str.69, i64 4, i64 1, ptr %i.au) ; 0 uses
  %i.cu = add nuw i32 %.023.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cu, %i.bd
  br i1 %exitcond.not.i.i, label %Io_NtkWriteScl.exit.i, label %.lr.ph.i.i, !llvm.loop !43

Io_NtkWriteScl.exit.i:                            ; preds = %.lr.ph.i.i, %.critedge
  %i.cv = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 5 uses
  %i.cw = add i32 %i.bj, -1
  %or.cond.i.i.i = icmp ult i32 %i.cw, 7
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 8, i32 %i.bj ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 3 uses
  store i32 0, ptr %i.cx, align 4, !tbaa !33
  store i32 %spec.store.select.i.i.i, ptr %i.cv, align 8, !tbaa !44
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_PtrAlloc.exit.i.i, label %bb.h

bb.h:                                             ; preds = %Io_NtkWriteScl.exit.i
  %i.cy = sext i32 %spec.store.select.i.i.i to i64
  %i.cz = shl nsw i64 %i.cy, 3
  %i.da = tail call noalias ptr @malloc(i64 noundef %i.cz) #19
  br label %Vec_PtrAlloc.exit.i.i

Vec_PtrAlloc.exit.i.i:                            ; preds = %bb.h, %Io_NtkWriteScl.exit.i
  %.promoted256.i.i = phi ptr [ %i.da, %bb.h ], [ null, %Io_NtkWriteScl.exit.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 5 uses
  store ptr %.promoted256.i.i, ptr %i.db, align 8, !tbaa !36
  %i.dc = fmul nnan double %i.bn, 2.000000e+00
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.bk, double 2.000000e+00, double %i.dc)
  %i.de = uitofp i32 %i.bj to double
  %i.df = fdiv double %i.bk, %i.dd
  %i.dg = fmul double %i.df, %i.de
  %i.dh = fptosi double %i.dg to i32              ; 11 uses
  %i.di = shl i32 %i.dh, 1                        ; 6 uses
  %i.dj = sub i32 %i.bj, %i.di                    ; 2 uses
  %i.dk = uitofp i32 %i.dj to double
  %i.dl = fmul nnan double %i.dk, 5.000000e-01
  %i.dm = tail call double @llvm.ceil.f64(double %i.dl)
  %i.dn = fptoui double %i.dm to i32              ; 3 uses
  %i.do = sub i32 %i.dj, %i.dn                    ; 3 uses
  %.val179248.i.i = load ptr, ptr %i.bf, align 8, !tbaa !40 ; 2 uses
  %i.dp = getelementptr i8, ptr %.val179248.i.i, i64 4
  %.val179.val249.i.i = load i32, ptr %i.dp, align 4, !tbaa !33
  %i.dq = icmp sgt i32 %.val179.val249.i.i, 0
  br i1 %i.dq, label %.lr.ph.i43.i, label %.critedge.preheader.i.i

..critedge.preheader_crit_edge.i.i:               ; preds = %Vec_PtrPush.exit.i.i
  %i.dr = trunc nsw i64 %indvars.iv.next316.i.i to i32 ; 2 uses
  store i32 %i.dr, ptr %i.cx, align 4, !tbaa !33
  store i32 %spec.select.sink.i254.i.i, ptr %i.cv, align 8
  store ptr %storemerge232258.i.i, ptr %i.db, align 8
  br label %.critedge.preheader.i.i

.critedge.preheader.i.i:                          ; preds = %..critedge.preheader_crit_edge.i.i, %Vec_PtrAlloc.exit.i.i
  %.promoted269.i.i = phi ptr [ %storemerge232258.i.i, %..critedge.preheader_crit_edge.i.i ], [ %.promoted256.i.i, %Vec_PtrAlloc.exit.i.i ] ; 2 uses
  %.promoted266.i.i = phi i32 [ %spec.select.sink.i254.i.i, %..critedge.preheader_crit_edge.i.i ], [ %spec.store.select.i.i.i, %Vec_PtrAlloc.exit.i.i ]
  %.promoted264.i.i = phi i32 [ %i.dr, %..critedge.preheader_crit_edge.i.i ], [ 0, %Vec_PtrAlloc.exit.i.i ] ; 2 uses
  %.val180259.i.i = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %i.ds = getelementptr i8, ptr %.val180259.i.i, i64 4
  %.val180.val260.i.i = load i32, ptr %i.ds, align 4, !tbaa !33
  %i.dt = icmp sgt i32 %.val180.val260.i.i, 0
  br i1 %i.dt, label %.lr.ph263.i.i, label %.critedge2.i.i

.lr.ph263.i.i:                                    ; preds = %.critedge.preheader.i.i
  %i.du = sext i32 %.promoted264.i.i to i64
  br label %bb.q

.lr.ph.i43.i:                                     ; preds = %Vec_PtrAlloc.exit.i.i, %Vec_PtrPush.exit.i.i
  %indvars.iv315.i.i = phi i64 [ %indvars.iv.next316.i.i, %Vec_PtrPush.exit.i.i ], [ 0, %Vec_PtrAlloc.exit.i.i ] ; 7 uses
  %storemerge232257.i.i = phi ptr [ %storemerge232258.i.i, %Vec_PtrPush.exit.i.i ], [ %.promoted256.i.i, %Vec_PtrAlloc.exit.i.i ] ; 6 uses
  %spec.select.sink.i255.i.i = phi i32 [ %spec.select.sink.i254.i.i, %Vec_PtrPush.exit.i.i ], [ %spec.store.select.i.i.i, %Vec_PtrAlloc.exit.i.i ] ; 4 uses
  %.val179251.i.i = phi ptr [ %.val179.i.i, %Vec_PtrPush.exit.i.i ], [ %.val179248.i.i, %Vec_PtrAlloc.exit.i.i ]
  %i.dv = getelementptr i8, ptr %.val179251.i.i, i64 8
  %.val185.val.i.i = load ptr, ptr %i.dv, align 8, !tbaa !36
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.val185.val.i.i, i64 %indvars.iv315.i.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !37
  %i.dy = trunc nsw i64 %indvars.iv315.i.i to i32
  %i.dz = icmp eq i32 %spec.select.sink.i255.i.i, %i.dy
  br i1 %i.dz, label %bb.i, label %Vec_PtrPush.exit.i.i

bb.i:                                             ; preds = %.lr.ph.i43.i
  %i.ea = icmp samesign ult i64 %indvars.iv315.i.i, 16
  br i1 %i.ea, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.not9.i.i.i.i = icmp eq ptr %storemerge232257.i.i, null
  br i1 %.not9.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eb = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge232257.i.i, i64 noundef 128) #20
  br label %Vec_PtrPush.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.ec = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrPush.exit.i.i

bb.m:                                             ; preds = %bb.i
  %i.ed = icmp samesign ult i64 %indvars.iv315.i.i, 1073741823
  %i.ee = shl i32 %spec.select.sink.i255.i.i, 1
  %spec.select.i.i.i = select i1 %i.ed, i32 %i.ee, i32 2147483647 ; 4 uses
  %i.ef = sext i32 %spec.select.i.i.i to i64
  %.not.i10.i.i.i = icmp samesign ult i64 %indvars.iv315.i.i, %i.ef
  br i1 %.not.i10.i.i.i, label %bb.n, label %Vec_PtrPush.exit.i.i

bb.n:                                             ; preds = %bb.m
  %.not9.i11.i.i.i = icmp eq ptr %storemerge232257.i.i, null
  %i.eg = zext nneg i32 %spec.select.i.i.i to i64
  %i.eh = shl nuw nsw i64 %i.eg, 3                ; 2 uses
  br i1 %.not9.i11.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ei = tail call ptr @realloc(ptr noundef nonnull %storemerge232257.i.i, i64 noundef %i.eh) #20
  br label %Vec_PtrPush.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.ej = tail call noalias ptr @malloc(i64 noundef %i.eh) #19
  br label %Vec_PtrPush.exit.i.i

Vec_PtrPush.exit.i.i:                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %.lr.ph.i43.i
  %storemerge232258.i.i = phi ptr [ %storemerge232257.i.i, %.lr.ph.i43.i ], [ %storemerge232257.i.i, %bb.m ], [ %i.ec, %bb.l ], [ %i.eb, %bb.k ], [ %i.ei, %bb.o ], [ %i.ej, %bb.p ] ; 4 uses
  %spec.select.sink.i254.i.i = phi i32 [ %spec.select.sink.i255.i.i, %.lr.ph.i43.i ], [ %spec.select.sink.i255.i.i, %bb.m ], [ 16, %bb.l ], [ 16, %bb.k ], [ %spec.select.i.i.i, %bb.o ], [ %spec.select.i.i.i, %bb.p ] ; 3 uses
  %indvars.iv.next316.i.i = add nuw nsw i64 %indvars.iv315.i.i, 1 ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %storemerge232258.i.i, i64 %indvars.iv315.i.i
  store ptr %i.dx, ptr %i.ek, align 8, !tbaa !37
  %.val179.i.i = load ptr, ptr %i.bf, align 8, !tbaa !40 ; 2 uses
  %i.el = getelementptr i8, ptr %.val179.i.i, i64 4
  %.val179.val.i.i = load i32, ptr %i.el, align 4, !tbaa !33
  %i.em = sext i32 %.val179.val.i.i to i64
  %i.en = icmp slt i64 %indvars.iv.next316.i.i, %i.em
  br i1 %i.en, label %.lr.ph.i43.i, label %..critedge.preheader_crit_edge.i.i, !llvm.loop !45

bb.q:                                             ; preds = %Vec_PtrPush.exit223.i.i, %.lr.ph263.i.i
  %indvars.iv322.i.i = phi i64 [ 0, %.lr.ph263.i.i ], [ %indvars.iv.next323.i.i, %Vec_PtrPush.exit223.i.i ] ; 2 uses
  %indvars.iv320.i.i = phi i64 [ %i.du, %.lr.ph263.i.i ], [ %indvars.iv.next321.i.i, %Vec_PtrPush.exit223.i.i ] ; 6 uses
  %storemerge270.i.i = phi ptr [ %.promoted269.i.i, %.lr.ph263.i.i ], [ %storemerge271.i.i, %Vec_PtrPush.exit223.i.i ] ; 6 uses
  %spec.select.sink.i220268.i.i = phi i32 [ %.promoted266.i.i, %.lr.ph263.i.i ], [ %spec.select.sink.i220267.i.i, %Vec_PtrPush.exit223.i.i ] ; 4 uses
  %.val180262.i.i = phi ptr [ %.val180259.i.i, %.lr.ph263.i.i ], [ %.val180.i.i, %Vec_PtrPush.exit223.i.i ]
  %i.eo = getelementptr i8, ptr %.val180262.i.i, i64 8
  %.val194.val.i.i = load ptr, ptr %i.eo, align 8, !tbaa !36
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.val194.val.i.i, i64 %indvars.iv322.i.i
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !37
  %i.er = trunc nsw i64 %indvars.iv320.i.i to i32
  %i.es = icmp eq i32 %spec.select.sink.i220268.i.i, %i.er
  br i1 %i.es, label %bb.r, label %Vec_PtrPush.exit223.i.i

bb.r:                                             ; preds = %bb.q
  %i.et = icmp samesign ult i64 %indvars.iv320.i.i, 16
  br i1 %i.et, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not9.i.i221.i.i = icmp eq ptr %storemerge270.i.i, null
  br i1 %.not9.i.i221.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eu = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge270.i.i, i64 noundef 128) #20
  br label %Vec_PtrPush.exit223.i.i

bb.u:                                             ; preds = %bb.s
  %i.ev = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrPush.exit223.i.i

bb.v:                                             ; preds = %bb.r
  %i.ew = icmp samesign ult i64 %indvars.iv320.i.i, 1073741823
  %i.ex = shl i32 %spec.select.sink.i220268.i.i, 1
  %spec.select.i216.i.i = select i1 %i.ew, i32 %i.ex, i32 2147483647 ; 4 uses
  %i.ey = sext i32 %spec.select.i216.i.i to i64
  %.not.i10.i217.i.i = icmp samesign ult i64 %indvars.iv320.i.i, %i.ey
  br i1 %.not.i10.i217.i.i, label %bb.w, label %Vec_PtrPush.exit223.i.i

bb.w:                                             ; preds = %bb.v
  %.not9.i11.i218.i.i = icmp eq ptr %storemerge270.i.i, null
  %i.ez = zext nneg i32 %spec.select.i216.i.i to i64
  %i.fa = shl nuw nsw i64 %i.ez, 3                ; 2 uses
  br i1 %.not9.i11.i218.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fb = tail call ptr @realloc(ptr noundef nonnull %storemerge270.i.i, i64 noundef %i.fa) #20
  br label %Vec_PtrPush.exit223.i.i

bb.y:                                             ; preds = %bb.w
  %i.fc = tail call noalias ptr @malloc(i64 noundef %i.fa) #19
  br label %Vec_PtrPush.exit223.i.i

Vec_PtrPush.exit223.i.i:                          ; preds = %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.q
  %storemerge271.i.i = phi ptr [ %storemerge270.i.i, %bb.q ], [ %storemerge270.i.i, %bb.v ], [ %i.ev, %bb.u ], [ %i.eu, %bb.t ], [ %i.fb, %bb.x ], [ %i.fc, %bb.y ] ; 4 uses
  %spec.select.sink.i220267.i.i = phi i32 [ %spec.select.sink.i220268.i.i, %bb.q ], [ %spec.select.sink.i220268.i.i, %bb.v ], [ 16, %bb.u ], [ 16, %bb.t ], [ %spec.select.i216.i.i, %bb.x ], [ %spec.select.i216.i.i, %bb.y ] ; 2 uses
  %indvars.iv.next321.i.i = add nuw nsw i64 %indvars.iv320.i.i, 1 ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %storemerge271.i.i, i64 %indvars.iv320.i.i
  store ptr %i.eq, ptr %i.fd, align 8, !tbaa !37
  %indvars.iv.next323.i.i = add nuw nsw i64 %indvars.iv322.i.i, 1 ; 2 uses
  %.val180.i.i = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %i.fe = getelementptr i8, ptr %.val180.i.i, i64 4
  %.val180.val.i.i = load i32, ptr %i.fe, align 4, !tbaa !33
  %i.ff = sext i32 %.val180.val.i.i to i64
  %i.fg = icmp slt i64 %indvars.iv.next323.i.i, %i.ff
  br i1 %i.fg, label %bb.q, label %.critedge..critedge2_crit_edge.i.i, !llvm.loop !46

.critedge..critedge2_crit_edge.i.i:               ; preds = %Vec_PtrPush.exit223.i.i
  %i.fh = trunc nsw i64 %indvars.iv.next321.i.i to i32 ; 2 uses
  store i32 %i.fh, ptr %i.cx, align 4, !tbaa !33
  store i32 %spec.select.sink.i220267.i.i, ptr %i.cv, align 8
  store ptr %storemerge271.i.i, ptr %i.db, align 8
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.critedge..critedge2_crit_edge.i.i, %.critedge.preheader.i.i
  %.val53.i.i.i = phi ptr [ %storemerge271.i.i, %.critedge..critedge2_crit_edge.i.i ], [ %.promoted269.i.i, %.critedge.preheader.i.i ]
  %.val.i.i.i = phi i32 [ %i.fh, %.critedge..critedge2_crit_edge.i.i ], [ %.promoted264.i.i, %.critedge.preheader.i.i ] ; 10 uses
  %i.fi = zext i32 %.val.i.i.i to i64
  %i.fj = shl nuw nsw i64 %i.fi, 2                ; 2 uses
  %i.fk = tail call noalias ptr @malloc(i64 noundef %i.fj) #19 ; 6 uses
  %i.fl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 7 uses
  %i.fm = add i32 %.val.i.i.i, -1
  %or.cond.i.i.i.i = icmp ult i32 %i.fm, 7
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 8, i32 %.val.i.i.i ; 8 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 4 ; 4 uses
  store i32 0, ptr %i.fn, align 4, !tbaa !33
  store i32 %spec.store.select.i.i.i.i, ptr %i.fl, align 8, !tbaa !44
  %.not.i.i.i.i = icmp eq i32 %spec.store.select.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %Vec_PtrAlloc.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %.critedge2.i.i
  %i.fo = sext i32 %spec.store.select.i.i.i.i to i64
  %i.fp = shl nsw i64 %i.fo, 3
  %i.fq = tail call noalias ptr @malloc(i64 noundef %i.fp) #19
  br label %Vec_PtrAlloc.exit.i.i.i

Vec_PtrAlloc.exit.i.i.i:                          ; preds = %bb.z, %.critedge2.i.i
  %i.fr = phi ptr [ %i.fq, %bb.z ], [ null, %.critedge2.i.i ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 10 uses
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !36
  %.not117.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not117.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %Vec_PtrAlloc.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.fk, i8 0, i64 %i.fj, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %Vec_PtrAlloc.exit.i.i.i
  %i.ft = load ptr, ptr %.val53.i.i.i, align 8, !tbaa !37
  %i.fu = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.fv = tail call ptr @Extra_ProgressBarStart(ptr noundef %i.fu, i32 noundef %.val.i.i.i) #16 ; 4 uses
  %i.fw = icmp ugt i32 %.val.i.i.i, 1
  br i1 %i.fw, label %.lr.ph109.lr.ph.i.i.i, label %Io_NtkOrderingPads.exit.i.i

.lr.ph109.lr.ph.i.i.i:                            ; preds = %._crit_edge.i.i.i
  %i.fx = sext i32 %spec.store.select.i.i.i.i to i64
  %i.fy = shl nsw i64 %i.fx, 3
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.gb = getelementptr i8, ptr %0, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %.not.i83.i.i.i = icmp eq ptr %i.fv, null
  br label %.lr.ph109.split.preheader.i.i.i

.lr.ph109.split.preheader.i.i.i:                  ; preds = %Extra_ProgressBarUpdate.exit.i.i.i, %.lr.ph109.lr.ph.i.i.i
  %i.ge = phi ptr [ %i.fr, %.lr.ph109.lr.ph.i.i.i ], [ %i.vz, %Extra_ProgressBarUpdate.exit.i.i.i ] ; 7 uses
  %i.gf = phi i32 [ 0, %.lr.ph109.lr.ph.i.i.i ], [ %i.wa, %Extra_ProgressBarUpdate.exit.i.i.i ] ; 9 uses
  %.043.ph116.i.i.i = phi ptr [ %i.ft, %.lr.ph109.lr.ph.i.i.i ], [ %.1.i.i.i, %Extra_ProgressBarUpdate.exit.i.i.i ] ; 2 uses
  %.044.ph115.i.i.i = phi i1 [ true, %.lr.ph109.lr.ph.i.i.i ], [ %.not5088.i.i.i, %Extra_ProgressBarUpdate.exit.i.i.i ]
  %.045.ph114.i.i.i = phi i32 [ 0, %.lr.ph109.lr.ph.i.i.i ], [ %.2.i.i.i, %Extra_ProgressBarUpdate.exit.i.i.i ] ; 2 uses
  %.047.ph113.i.i.i = phi i32 [ 1, %.lr.ph109.lr.ph.i.i.i ], [ %.148.i.i.i, %Extra_ProgressBarUpdate.exit.i.i.i ] ; 3 uses
  %i.gg = getelementptr i8, ptr %.043.ph116.i.i.i, i64 16
  %.043.val55.peel.i.i.i = load i32, ptr %i.gg, align 8, !tbaa !47 ; 2 uses
  %i.gh = zext i32 %.043.val55.peel.i.i.i to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !28
  %i.gk = icmp eq i32 %i.gj, 0
  %or.cond.peel.i.i.i = or i1 %.044.ph115.i.i.i, %i.gk
  br i1 %or.cond.peel.i.i.i, label %.split.us.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph109.split.preheader.i.i.i
  %i.gl = add nuw i32 %.047.ph113.i.i.i, 1        ; 2 uses
  %.val52.peel.i.i.i = load ptr, ptr %i.db, align 8, !tbaa !36
  %i.gm = icmp ult i32 %i.gl, %.val.i.i.i
  br i1 %i.gm, label %.lr.ph109.split.i.i.i, label %Io_NtkOrderingPads.exit.i.i

.lr.ph109.split.i.i.i:                            ; preds = %bb.aa, %bb.ab
  %.pn.in.i.i.i = phi i32 [ %.047106.i.i.i, %bb.ab ], [ %.047.ph113.i.i.i, %bb.aa ]
  %.047106.i.i.i = phi i32 [ %i.gs, %bb.ab ], [ %i.gl, %bb.aa ] ; 3 uses
  %.pn.i.i.i = sext i32 %.pn.in.i.i.i to i64
  %.043108.in.i.i.i = getelementptr inbounds [8 x i8], ptr %.val52.peel.i.i.i, i64 %.pn.i.i.i
  %.043108.i.i.i = load ptr, ptr %.043108.in.i.i.i, align 8, !tbaa !37 ; 2 uses
  %i.gn = getelementptr i8, ptr %.043108.i.i.i, i64 16
  %.043.val55.i.i.i = load i32, ptr %i.gn, align 8, !tbaa !47 ; 2 uses
  %i.go = zext i32 %.043.val55.i.i.i to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !28
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %.split.us.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph109.split.i.i.i
  %i.gs = add i32 %.047106.i.i.i, 1               ; 2 uses
  %exitcond.not.i42.i = icmp eq i32 %i.gs, %.val.i.i.i
  br i1 %exitcond.not.i42.i, label %Io_NtkOrderingPads.exit.i.i, label %.lr.ph109.split.i.i.i, !llvm.loop !50

.split.us.i.i.i:                                  ; preds = %.lr.ph109.split.i.i.i, %.lr.ph109.split.preheader.i.i.i
  %.043.val.i346.i.i = phi i32 [ %.043.val55.peel.i.i.i, %.lr.ph109.split.preheader.i.i.i ], [ %.043.val55.i.i.i, %.lr.ph109.split.i.i.i ] ; 2 uses
  %.043108.lcssa.i.i.i = phi ptr [ %.043.ph116.i.i.i, %.lr.ph109.split.preheader.i.i.i ], [ %.043108.i.i.i, %.lr.ph109.split.i.i.i ] ; 11 uses
  %.047106.lcssa.i.i.i = phi i32 [ %.047.ph113.i.i.i, %.lr.ph109.split.preheader.i.i.i ], [ %.047106.i.i.i, %.lr.ph109.split.i.i.i ] ; 3 uses
  %i.gt = getelementptr i8, ptr %.043108.lcssa.i.i.i, i64 16 ; 2 uses
  %i.gu = icmp sgt i32 %i.gf, 0
  br i1 %i.gu, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.us.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.gf to i64
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ad
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.ad, !llvm.loop !52

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.ac ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i.i.i.i
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !37
  %i.gx = icmp eq ptr %i.gw, %.043108.lcssa.i.i.i
  br i1 %i.gx, label %Vec_PtrAlloc.exit.i.i.i.i, label %bb.ac

._crit_edge.i.i.i.i:                              ; preds = %bb.ac, %.split.us.i.i.i
  %i.gy = load i32, ptr %i.fl, align 8, !tbaa !44
  %i.gz = icmp eq i32 %i.gf, %i.gy
  br i1 %i.gz, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ha = icmp slt i32 %i.gf, 16
  br i1 %i.ha, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.ge, null
  br i1 %.not9.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hb = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.ge, i64 noundef 128) #20
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %i.hc = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.hd = icmp samesign ult i32 %i.gf, 1073741823
  %i.he = shl nuw nsw i32 %i.gf, 1
  %spec.select.i.i.i.i.i = select i1 %i.hd, i32 %i.he, i32 2147483647 ; 4 uses
  %.not.i10.i.i.i.i.i = icmp samesign ult i32 %i.gf, %spec.select.i.i.i.i.i
  br i1 %.not.i10.i.i.i.i.i, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %.not9.i11.i.i.i.i.i = icmp eq ptr %i.ge, null
  %i.hf = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.hg = shl nuw nsw i64 %i.hf, 3                ; 2 uses
  br i1 %.not9.i11.i.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hh = tail call ptr @realloc(ptr noundef nonnull %i.ge, i64 noundef %i.hg) #20
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.hi = tail call noalias ptr @malloc(i64 noundef %i.hg) #19
  br label %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i

Vec_PtrGrow.exit12.sink.split.i.i.i.i.i:          ; preds = %bb.al, %bb.ak, %bb.ah, %bb.ag
  %storemerge.i.i.i = phi ptr [ %i.hc, %bb.ah ], [ %i.hb, %bb.ag ], [ %i.hh, %bb.ak ], [ %i.hi, %bb.al ] ; 2 uses
  %spec.select.sink.i.i.i.i.i = phi i32 [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i.i.i.i.i, %bb.ak ], [ %spec.select.i.i.i.i.i, %bb.al ]
  store ptr %storemerge.i.i.i, ptr %i.fs, align 8, !tbaa !36
  store i32 %spec.select.sink.i.i.i.i.i, ptr %i.fl, align 8, !tbaa !44
  %.043.val.i.pre.i.i = load i32, ptr %i.gt, align 8, !tbaa !47
  br label %bb.am

bb.am:                                            ; preds = %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i, %bb.ai, %._crit_edge.i.i.i.i
  %.043.val.i.i.i = phi i32 [ %.043.val.i346.i.i, %._crit_edge.i.i.i.i ], [ %.043.val.i346.i.i, %bb.ai ], [ %.043.val.i.pre.i.i, %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i ]
  %i.hj = phi ptr [ %i.ge, %._crit_edge.i.i.i.i ], [ %i.ge, %bb.ai ], [ %storemerge.i.i.i, %Vec_PtrGrow.exit12.sink.split.i.i.i.i.i ]
  %i.hk = add nsw i32 %i.gf, 1
  store i32 %i.hk, ptr %i.fn, align 4, !tbaa !33
  %i.hl = sext i32 %i.gf to i64
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hj, i64 %i.hl
  store ptr %.043108.lcssa.i.i.i, ptr %i.hm, align 8, !tbaa !37
  %i.hn = zext i32 %.043.val.i.i.i to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.hn
  store i32 1, ptr %i.ho, align 4, !tbaa !28
  %i.hp = add i32 %.045.ph114.i.i.i, 1
  br label %Vec_PtrAlloc.exit.i.i.i.i

Vec_PtrAlloc.exit.i.i.i.i:                        ; preds = %bb.ad, %bb.am
  %.146.i.i.i = phi i32 [ %i.hp, %bb.am ], [ %.045.ph114.i.i.i, %bb.ad ] ; 2 uses
  %i.hq = tail call noalias ptr @malloc(i64 noundef %i.fy) #19 ; 4 uses
  %i.hr = load ptr, ptr %i.fz, align 8, !tbaa !53
  %.not.i125.i.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i125.i.i.i.i, label %bb.an, label %Abc_NtkIncrementTravId.exit.i.i.i.i

bb.an:                                            ; preds = %Vec_PtrAlloc.exit.i.i.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.gb, align 8, !tbaa !54
  %i.hs = getelementptr i8, ptr %.val.i.i.i.i.i, i64 4
  %.val.val.i.i.i.i.i = load i32, ptr %i.hs, align 4, !tbaa !33 ; 2 uses
  %i.ht = add nsw i32 %.val.val.i.i.i.i.i, 500    ; 5 uses
  %i.hu = load i32, ptr %i.ga, align 8, !tbaa !55
  %.not.i.i.i.i.i.i.i = icmp slt i32 %i.hu, %i.ht
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ao, label %Vec_IntGrow.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.hv = sext i32 %i.ht to i64
  %i.hw = shl nsw i64 %i.hv, 2
  %i.hx = tail call noalias ptr @malloc(i64 noundef %i.hw) #19 ; 2 uses
  store ptr %i.hx, ptr %i.fz, align 8, !tbaa !56
  store i32 %i.ht, ptr %i.ga, align 8, !tbaa !55
  br label %Vec_IntGrow.exit.i.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i.i:                     ; preds = %bb.ao, %bb.an
  %i.hy = phi ptr [ %i.hx, %bb.ao ], [ null, %bb.an ]
  %i.hz = icmp sgt i32 %.val.val.i.i.i.i.i, -500
  br i1 %i.hz, label %.lr.ph.i.i.i.i.i.i, label %Vec_IntFill.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %Vec_IntGrow.exit.i.i.i.i.i.i
  %i.ia = zext nneg i32 %i.ht to i64
  %i.ib = shl nuw nsw i64 %i.ia, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.hy, i8 0, i64 %i.ib, i1 false), !tbaa !28
  br label %Vec_IntFill.exit.i.i.i.i.i

Vec_IntFill.exit.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i.i
  store i32 %i.ht, ptr %i.gc, align 4, !tbaa !57
  br label %Abc_NtkIncrementTravId.exit.i.i.i.i

Abc_NtkIncrementTravId.exit.i.i.i.i:              ; preds = %Vec_IntFill.exit.i.i.i.i.i, %Vec_PtrAlloc.exit.i.i.i.i
  %i.ic = load i32, ptr %i.gd, align 8, !tbaa !58
  %i.id = add nsw i32 %i.ic, 1
  store i32 %i.id, ptr %i.gd, align 8, !tbaa !58
  %.val123.i.i.i.i = load ptr, ptr %.043108.lcssa.i.i.i, align 8, !tbaa !59
  %.val124.i.i.i.i = load i32, ptr %i.gt, align 8, !tbaa !47
  tail call fastcc void @Abc_NodeSetTravIdCurrent(ptr %.val123.i.i.i.i, i32 %.val124.i.i.i.i)
  %i.ie = getelementptr i8, ptr %.043108.lcssa.i.i.i, i64 20
  %.val118.i.i.i.i = load i32, ptr %i.ie, align 4
  %i.if = and i32 %.val118.i.i.i.i, 15
  %.not.i56.i.i.i = icmp eq i32 %i.if, 2
  %.val89.i.i.i.i = load ptr, ptr %.043108.lcssa.i.i.i, align 8, !tbaa !59
  %i.ig = getelementptr i8, ptr %.val89.i.i.i.i, i64 32
  %.val89.val.i.i.i.i = load ptr, ptr %i.ig, align 8, !tbaa !54
  %i.ih = getelementptr i8, ptr %.val89.val.i.i.i.i, i64 8
  %.val89.val.val.i.i.i.i = load ptr, ptr %i.ih, align 8, !tbaa !36 ; 2 uses
  br i1 %.not.i56.i.i.i, label %bb.ap, label %bb.az

bb.ap:                                            ; preds = %Abc_NtkIncrementTravId.exit.i.i.i.i
  %i.ii = getelementptr i8, ptr %.043108.lcssa.i.i.i, i64 48
  %.val90.i.i.i.i = load ptr, ptr %i.ii, align 8, !tbaa !60
  %.val90.val.i.i.i.i = load i32, ptr %.val90.i.i.i.i, align 4, !tbaa !28
  %i.ij = sext i32 %.val90.val.i.i.i.i to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %.val89.val.val.i.i.i.i, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !37 ; 3 uses
  %i.im = getelementptr i8, ptr %i.il, i64 44     ; 2 uses
  %.val112195.i.i.i.i = load i32, ptr %i.im, align 4, !tbaa !61
  %i.in = icmp sgt i32 %.val112195.i.i.i.i, 0
  br i1 %i.in, label %.lr.ph197.i.i.i.i, label %thread-pre-split.preheader.i.i.i.i

.lr.ph197.i.i.i.i:                                ; preds = %bb.ap
  %i.io = getelementptr i8, ptr %i.il, i64 48
  br label %bb.aq

.thread-pre-split.preheader.loopexit_crit_edge.i.i.i.i: ; preds = %Vec_PtrPush.exit.i61.i.i.i
  %i.ip = trunc nsw i64 %indvars.iv.next235.i.i.i.i to i32
  br label %thread-pre-split.preheader.i.i.i.i

.thread-pre-split.preheader.loopexit185_crit_edge.i.i.i.i: ; preds = %Vec_PtrPush.exit133.i.i.i.i
  %i.iq = trunc nsw i64 %indvars.iv.next228.i.i.i.i to i32
  br label %thread-pre-split.preheader.i.i.i.i

thread-pre-split.preheader.i.i.i.i:               ; preds = %bb.az, %.thread-pre-split.preheader.loopexit185_crit_edge.i.i.i.i, %.thread-pre-split.preheader.loopexit_crit_edge.i.i.i.i, %bb.ap
  %i.ir = phi i32 [ %spec.store.select.i.i.i.i, %bb.az ], [ %spec.select.sink.i130190.i.i.i.i, %.thread-pre-split.preheader.loopexit185_crit_edge.i.i.i.i ], [ %spec.store.select.i.i.i.i, %bb.ap ], [ %spec.select.sink.i201.i.i.i.i, %.thread-pre-split.preheader.loopexit_crit_edge.i.i.i.i ] ; 2 uses
  %.val82260.i.i.i.i = phi ptr [ %i.hq, %bb.az ], [ %storemerge183194.i.i.i.i, %.thread-pre-split.preheader.loopexit185_crit_edge.i.i.i.i ], [ %i.hq, %bb.ap ], [ %storemerge205.i.i.i.i, %.thread-pre-split.preheader.loopexit_crit_edge.i.i.i.i ] ; 3 uses
  %.promoted212.i.i.i.i = phi i32 [ 0, %bb.az ], [ %i.iq, %.thread-pre-split.preheader.loopexit185_crit_edge.i.i.i.i ], [ 0, %bb.ap ], [ %i.ip, %.thread-pre-split.preheader.loopexit_crit_edge.i.i.i.i ] ; 3 uses
  %exitcond.i.i.i.i205212 = icmp slt i32 %.promoted212.i.i.i.i, 1
  br i1 %exitcond.i.i.i.i205212, label %Io_NtkBfsPads.exit.i.i.i, label %.lr.ph208

bb.aq:                                            ; preds = %Vec_PtrPush.exit.i61.i.i.i, %.lr.ph197.i.i.i.i
  %indvars.iv234.i.i.i.i = phi i64 [ 0, %.lr.ph197.i.i.i.i ], [ %indvars.iv.next235.i.i.i.i, %Vec_PtrPush.exit.i61.i.i.i ] ; 7 uses
  %storemerge204.i.i.i.i = phi ptr [ %i.hq, %.lr.ph197.i.i.i.i ], [ %storemerge205.i.i.i.i, %Vec_PtrPush.exit.i61.i.i.i ] ; 6 uses
  %spec.select.sink.i202.i.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph197.i.i.i.i ], [ %spec.select.sink.i201.i.i.i.i, %Vec_PtrPush.exit.i61.i.i.i ] ; 4 uses
  %.val115.i.i.i.i = load ptr, ptr %i.il, align 8, !tbaa !59
  %.val116.i.i.i.i = load ptr, ptr %i.io, align 8, !tbaa !60
  %i.is = getelementptr i8, ptr %.val115.i.i.i.i, i64 32
  %.val115.val.i.i.i.i = load ptr, ptr %i.is, align 8, !tbaa !54
  %i.it = getelementptr i8, ptr %.val115.val.i.i.i.i, i64 8
  %.val115.val.val.i.i.i.i = load ptr, ptr %i.it, align 8, !tbaa !36
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.val116.i.i.i.i, i64 %indvars.iv234.i.i.i.i
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !28
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %.val115.val.val.i.i.i.i, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !37
  %i.iz = trunc nsw i64 %indvars.iv234.i.i.i.i to i32
  %i.ja = icmp eq i32 %spec.select.sink.i202.i.i.i.i, %i.iz
  br i1 %i.ja, label %bb.ar, label %Vec_PtrPush.exit.i61.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.jb = icmp samesign ult i64 %indvars.iv234.i.i.i.i, 16
  br i1 %i.jb, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %.not9.i.i.i65.i.i.i = icmp eq ptr %storemerge204.i.i.i.i, null
  br i1 %.not9.i.i.i65.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.jc = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge204.i.i.i.i, i64 noundef 128) #20
  br label %Vec_PtrPush.exit.i61.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.jd = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrPush.exit.i61.i.i.i

bb.av:                                            ; preds = %bb.ar
  %i.je = icmp samesign ult i64 %indvars.iv234.i.i.i.i, 1073741823
  %i.jf = shl i32 %spec.select.sink.i202.i.i.i.i, 1
  %spec.select.i.i62.i.i.i = select i1 %i.je, i32 %i.jf, i32 2147483647 ; 4 uses
  %i.jg = sext i32 %spec.select.i.i62.i.i.i to i64
  %.not.i10.i.i63.i.i.i = icmp samesign ult i64 %indvars.iv234.i.i.i.i, %i.jg
  br i1 %.not.i10.i.i63.i.i.i, label %bb.aw, label %Vec_PtrPush.exit.i61.i.i.i

bb.aw:                                            ; preds = %bb.av
  %.not9.i11.i.i64.i.i.i = icmp eq ptr %storemerge204.i.i.i.i, null
  %i.jh = zext nneg i32 %spec.select.i.i62.i.i.i to i64
  %i.ji = shl nuw nsw i64 %i.jh, 3                ; 2 uses
  br i1 %.not9.i11.i.i64.i.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jj = tail call ptr @realloc(ptr noundef nonnull %storemerge204.i.i.i.i, i64 noundef %i.ji) #20
  br label %Vec_PtrPush.exit.i61.i.i.i

bb.ay:                                            ; preds = %bb.aw
  %i.jk = tail call noalias ptr @malloc(i64 noundef %i.ji) #19
  br label %Vec_PtrPush.exit.i61.i.i.i

Vec_PtrPush.exit.i61.i.i.i:                       ; preds = %bb.ay, %bb.ax, %bb.av, %bb.au, %bb.at, %bb.aq
  %storemerge205.i.i.i.i = phi ptr [ %storemerge204.i.i.i.i, %bb.aq ], [ %storemerge204.i.i.i.i, %bb.av ], [ %i.jd, %bb.au ], [ %i.jc, %bb.at ], [ %i.jj, %bb.ax ], [ %i.jk, %bb.ay ] ; 3 uses
  %spec.select.sink.i201.i.i.i.i = phi i32 [ %spec.select.sink.i202.i.i.i.i, %bb.aq ], [ %spec.select.sink.i202.i.i.i.i, %bb.av ], [ 16, %bb.au ], [ 16, %bb.at ], [ %spec.select.i.i62.i.i.i, %bb.ax ], [ %spec.select.i.i62.i.i.i, %bb.ay ] ; 2 uses
  %indvars.iv.next235.i.i.i.i = add nuw nsw i64 %indvars.iv234.i.i.i.i, 1 ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %storemerge205.i.i.i.i, i64 %indvars.iv234.i.i.i.i
  store ptr %i.iy, ptr %i.jl, align 8, !tbaa !37
  %.val112.i.i.i.i = load i32, ptr %i.im, align 4, !tbaa !61
  %i.jm = sext i32 %.val112.i.i.i.i to i64
  %i.jn = icmp slt i64 %indvars.iv.next235.i.i.i.i, %i.jm
  br i1 %i.jn, label %bb.aq, label %.thread-pre-split.preheader.loopexit_crit_edge.i.i.i.i, !llvm.loop !62

bb.az:                                            ; preds = %Abc_NtkIncrementTravId.exit.i.i.i.i
  %i.jo = getelementptr i8, ptr %.043108.lcssa.i.i.i, i64 32
  %.val100.i.i.i.i = load ptr, ptr %i.jo, align 8, !tbaa !63
  %.val100.val.i.i.i.i = load i32, ptr %.val100.i.i.i.i, align 4, !tbaa !28
  %i.jp = sext i32 %.val100.val.i.i.i.i to i64
  %i.jq = getelementptr inbounds [8 x i8], ptr %.val89.val.val.i.i.i.i, i64 %i.jp
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !37 ; 3 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 28     ; 2 uses
  %.val110186.i.i.i.i = load i32, ptr %i.js, align 4, !tbaa !64
  %i.jt = icmp sgt i32 %.val110186.i.i.i.i, 0
  br i1 %i.jt, label %.lr.ph.i58.i.i.i, label %thread-pre-split.preheader.i.i.i.i

.lr.ph.i58.i.i.i:                                 ; preds = %bb.az
  %i.ju = getelementptr i8, ptr %i.jr, i64 32
  br label %bb.ba

bb.ba:                                            ; preds = %Vec_PtrPush.exit133.i.i.i.i, %.lr.ph.i58.i.i.i
  %indvars.iv227.i.i.i.i = phi i64 [ 0, %.lr.ph.i58.i.i.i ], [ %indvars.iv.next228.i.i.i.i, %Vec_PtrPush.exit133.i.i.i.i ] ; 7 uses
  %storemerge183193.i.i.i.i = phi ptr [ %i.hq, %.lr.ph.i58.i.i.i ], [ %storemerge183194.i.i.i.i, %Vec_PtrPush.exit133.i.i.i.i ] ; 6 uses
  %spec.select.sink.i130191.i.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph.i58.i.i.i ], [ %spec.select.sink.i130190.i.i.i.i, %Vec_PtrPush.exit133.i.i.i.i ] ; 4 uses
  %.val106.i.i.i.i = load ptr, ptr %i.jr, align 8, !tbaa !59
  %.val107.i.i.i.i = load ptr, ptr %i.ju, align 8, !tbaa !63
  %i.jv = getelementptr i8, ptr %.val106.i.i.i.i, i64 32
  %.val106.val.i.i.i.i = load ptr, ptr %i.jv, align 8, !tbaa !54
  %i.jw = getelementptr i8, ptr %.val106.val.i.i.i.i, i64 8
  %.val106.val.val.i.i.i.i = load ptr, ptr %i.jw, align 8, !tbaa !36
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.val107.i.i.i.i, i64 %indvars.iv227.i.i.i.i
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !28
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %.val106.val.val.i.i.i.i, i64 %i.jz
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !37
  %i.kc = trunc nsw i64 %indvars.iv227.i.i.i.i to i32
  %i.kd = icmp eq i32 %spec.select.sink.i130191.i.i.i.i, %i.kc
  br i1 %i.kd, label %bb.bb, label %Vec_PtrPush.exit133.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ke = icmp samesign ult i64 %indvars.iv227.i.i.i.i, 16
  br i1 %i.ke, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %.not9.i.i131.i.i.i.i = icmp eq ptr %storemerge183193.i.i.i.i, null
  br i1 %.not9.i.i131.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kf = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge183193.i.i.i.i, i64 noundef 128) #20
  br label %Vec_PtrPush.exit133.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.kg = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #19
  br label %Vec_PtrPush.exit133.i.i.i.i

bb.bf:                                            ; preds = %bb.bb
  %i.kh = icmp samesign ult i64 %indvars.iv227.i.i.i.i, 1073741823
  %i.ki = shl i32 %spec.select.sink.i130191.i.i.i.i, 1
  %spec.select.i126.i.i.i.i = select i1 %i.kh, i32 %i.ki, i32 2147483647 ; 4 uses
  %i.kj = sext i32 %spec.select.i126.i.i.i.i to i64
  %.not.i10.i127.i.i.i.i = icmp samesign ult i64 %indvars.iv227.i.i.i.i, %i.kj
  br i1 %.not.i10.i127.i.i.i.i, label %bb.bg, label %Vec_PtrPush.exit133.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %.not9.i11.i128.i.i.i.i = icmp eq ptr %storemerge183193.i.i.i.i, null
  %i.kk = zext nneg i32 %spec.select.i126.i.i.i.i to i64
  %i.kl = shl nuw nsw i64 %i.kk, 3                ; 2 uses
  br i1 %.not9.i11.i128.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.km = tail call ptr @realloc(ptr noundef nonnull %storemerge183193.i.i.i.i, i64 noundef %i.kl) #20
  br label %Vec_PtrPush.exit133.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.kn = tail call noalias ptr @malloc(i64 noundef %i.kl) #19
  br label %Vec_PtrPush.exit133.i.i.i.i

Vec_PtrPush.exit133.i.i.i.i:                      ; preds = %bb.bi, %bb.bh, %bb.bf, %bb.be, %bb.bd, %bb.ba
  %storemerge183194.i.i.i.i = phi ptr [ %storemerge183193.i.i.i.i, %bb.ba ], [ %storemerge183193.i.i.i.i, %bb.bf ], [ %i.kg, %bb.be ], [ %i.kf, %bb.bd ], [ %i.km, %bb.bh ], [ %i.kn, %bb.bi ] ; 3 uses
  %spec.select.sink.i130190.i.i.i.i = phi i32 [ %spec.select.sink.i130191.i.i.i.i, %bb.ba ], [ %spec.select.sink.i130191.i.i.i.i, %bb.bf ], [ 16, %bb.be ], [ 16, %bb.bd ], [ %spec.select.i126.i.i.i.i, %bb.bh ], [ %spec.select.i126.i.i.i.i, %bb.bi ] ; 2 uses
  %indvars.iv.next228.i.i.i.i = add nuw nsw i64 %indvars.iv227.i.i.i.i, 1 ; 3 uses
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %storemerge183194.i.i.i.i, i64 %indvars.iv227.i.i.i.i
  store ptr %i.kb, ptr %i.ko, align 8, !tbaa !37
  %.val110.i.i.i.i = load i32, ptr %i.js, align 4, !tbaa !64
  %i.kp = sext i32 %.val110.i.i.i.i to i64
  %i.kq = icmp slt i64 %indvars.iv.next228.i.i.i.i, %i.kp
  br i1 %i.kq, label %bb.ba, label %.thread-pre-split.preheader.loopexit185_crit_edge.i.i.i.i, !llvm.loop !65

.thread-pre-split.loopexit_crit_edge.i.i.i.i:     ; preds = %bb.ec
  br label %thread-pre-split.backedge.i.i.i.i, !llvm.loop !66

.lr.ph208:                                        ; preds = %thread-pre-split.preheader.i.i.i.i, %thread-pre-split.backedge.i.i.i.i
  %wide.trip.count.i57.i.i.i214.in = phi i32 [ %i.rf, %thread-pre-split.backedge.i.i.i.i ], [ %.promoted212.i.i.i.i, %thread-pre-split.preheader.i.i.i.i ]
  %.in = phi i32 [ %.val.pr214.i.i.i.i, %thread-pre-split.backedge.i.i.i.i ], [ %.promoted212.i.i.i.i, %thread-pre-split.preheader.i.i.i.i ]
  %.val82.i.i.i.i213 = phi ptr [ %.val82257.i.i.i.i, %thread-pre-split.backedge.i.i.i.i ], [ %.val82260.i.i.i.i, %thread-pre-split.preheader.i.i.i.i ] ; 7 uses
  %i.kr = phi i32 [ %i.re, %thread-pre-split.backedge.i.i.i.i ], [ %i.ir, %thread-pre-split.preheader.i.i.i.i ] ; 3 uses
  %i.ks = phi ptr [ %i.rd, %thread-pre-split.backedge.i.i.i.i ], [ %.val82260.i.i.i.i, %thread-pre-split.preheader.i.i.i.i ] ; 3 uses
  %i.kt = phi i32 [ %i.rc, %thread-pre-split.backedge.i.i.i.i ], [ %i.ir, %thread-pre-split.preheader.i.i.i.i ] ; 3 uses
  %i.ku = phi ptr [ %i.rb, %thread-pre-split.backedge.i.i.i.i ], [ %.val82260.i.i.i.i, %thread-pre-split.preheader.i.i.i.i ] ; 3 uses
  %wide.trip.count.i57.i.i.i214 = zext i32 %wide.trip.count.i57.i.i.i214.in to i64
  %i.kv = zext i32 %.in to i64                    ; 2 uses
  %scevgep.i.i.i.i215 = getelementptr i8, ptr %.val82.i.i.i.i213, i64 -8
  br label %bb.bk

bb.bj:                                            ; preds = %Abc_NodeIsTravIdCurrent.exit.i.i.i
  %indvar.next.i.i.i.i = add nuw nsw i64 %indvar.i.i.i.i207, 1 ; 2 uses
  %exitcond.i.i.i.i = icmp eq i64 %indvar.next.i.i.i.i, %wide.trip.count.i57.i.i.i214
  br i1 %exitcond.i.i.i.i, label %Io_NtkBfsPads.exit.i.i.i, label %bb.bk, !llvm.loop !66

bb.bk:                                            ; preds = %.lr.ph208, %bb.bj
  %indvar.i.i.i.i207 = phi i64 [ 0, %.lr.ph208 ], [ %indvar.next.i.i.i.i, %bb.bj ] ; 2 uses
  %indvars.iv241.i.i.i.i206 = phi i64 [ %i.kv, %.lr.ph208 ], [ %indvars.iv.next242.i.i.i.i, %bb.bj ] ; 4 uses
  %i.kw = load ptr, ptr %.val82.i.i.i.i213, align 8, !tbaa !37 ; 15 uses
  %i.kx = trunc nuw i64 %indvars.iv241.i.i.i.i206 to i32 ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, 0
  br i1 %i.ky, label %.lr.ph202, label %._crit_edge203

bb.bl:                                            ; preds = %.lr.ph202
  %i.kz = trunc nuw i64 %i.lc to i32              ; 2 uses
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %.lr.ph202, label %._crit_edge203, !llvm.loop !67

.lr.ph202:                                        ; preds = %bb.bk, %bb.bl
  %i.lb = phi i32 [ %i.kz, %bb.bl ], [ %i.kx, %bb.bk ]
  %indvars.iv.i.i.i.i.i201 = phi i64 [ %i.lc, %bb.bl ], [ %indvars.iv241.i.i.i.i206, %bb.bk ]
  %i.lc = add nsw i64 %indvars.iv.i.i.i.i.i201, -1 ; 3 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.val82.i.i.i.i213, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !37
  %i.lf = icmp eq ptr %i.le, %i.kw
  br i1 %i.lf, label %._crit_edge, label %bb.bl, !llvm.loop !67

._crit_edge:                                      ; preds = %.lr.ph202
  br label %._crit_edge203, !llvm.loop !67

._crit_edge203:                                   ; preds = %bb.bl, %._crit_edge, %bb.bk
  %.0.in.lcssa.i.i.i.i.i = phi i32 [ %i.lb, %._crit_edge ], [ 0, %bb.bk ], [ 0, %bb.bl ] ; 2 uses
  %i.lg = trunc nuw i64 %indvars.iv241.i.i.i.i206 to i32
  %i.lh = icmp slt i32 %.0.in.lcssa.i.i.i.i.i, %i.lg
  br i1 %i.lh, label %.lr.ph.i.i.i.i.i, label %Vec_PtrRemove.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge203
  %i.li = zext nneg i32 %.0.in.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.lj = shl nuw nsw i64 %i.li, 3                ; 2 uses
  %scevgep239.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i215, i64 %i.lj
  %scevgep240.i.i.i.i = getelementptr i8, ptr %.val82.i.i.i.i213, i64 %i.lj
  %i.lk = add nuw i64 %indvar.i.i.i.i207, %i.li
  %i.ll = sub i64 %i.kv, %i.lk
  %i.lm = shl i64 %i.ll, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep239.i.i.i.i, ptr align 8 %scevgep240.i.i.i.i, i64 %i.lm, i1 false), !tbaa !37
  br label %Vec_PtrRemove.exit.i.i.i.i

Vec_PtrRemove.exit.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge203
  %indvars.iv.next242.i.i.i.i = add nsw i64 %indvars.iv241.i.i.i.i206, -1 ; 2 uses
  %.val2.i.i.i.i = load ptr, ptr %i.kw, align 8, !tbaa !59 ; 7 uses
  %i.ln = getelementptr i8, ptr %i.kw, i64 16
  %.val3.i.i.i.i = load i32, ptr %i.ln, align 8, !tbaa !47 ; 7 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 224 ; 2 uses
  %i.lp = add nsw i32 %.val3.i.i.i.i, 1           ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 228 ; 3 uses
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !57 ; 4 uses
  %.not.i.not.i.i.i.i.i.i = icmp slt i32 %.val3.i.i.i.i, %i.lr
  br i1 %.not.i.not.i.i.i.i.i.i, label %Abc_NodeIsTravIdCurrent.exit.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %Vec_PtrRemove.exit.i.i.i.i
  %i.ls = load i32, ptr %i.lo, align 8, !tbaa !55 ; 4 uses
  %i.lt = shl nsw i32 %i.ls, 1                    ; 2 uses
  %.not.i.i.i.i.i.i = icmp slt i32 %.val3.i.i.i.i, %i.lt
  %.not.i.i.not.i.i.i.i.i.i = icmp sgt i32 %i.ls, %.val3.i.i.i.i ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.bs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.lu = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 232 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !56 ; 2 uses
  %.not9.i.i.i.i.i.i.i.i = icmp eq ptr %i.lv, null
  %i.lw = sext i32 %i.lp to i64
  %i.lx = shl nsw i64 %i.lw, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ly = tail call ptr @realloc(ptr noundef nonnull %i.lv, i64 noundef %i.lx) #20
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.lz = tail call noalias ptr @malloc(i64 noundef %i.lx) #19
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ma = phi ptr [ %i.ly, %bb.bp ], [ %i.lz, %bb.bq ]
  store ptr %i.ma, ptr %i.lu, align 8, !tbaa !56
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %bb.bm
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mb = icmp slt i32 %i.ls, 1073741823
  %spec.select.i.i.i.i.i.i.i = select i1 %i.mb, i32 %i.lt, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i.i.i.i = icmp slt i32 %i.ls, %spec.select.i.i.i.i.i.i.i
  br i1 %.not.i22.i.i.i.i.i.i.i, label %bb.bu, label %Vec_IntGrow.exit.i.i.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.mc = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 232 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !56 ; 2 uses
  %.not9.i23.i.i.i.i.i.i.i = icmp eq ptr %i.md, null
  %i.me = sext i32 %spec.select.i.i.i.i.i.i.i to i64
  %i.mf = shl nsw i64 %i.me, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i.i.i.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mg = tail call ptr @realloc(ptr noundef nonnull %i.md, i64 noundef %i.mf) #20
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.mh = tail call noalias ptr @malloc(i64 noundef %i.mf) #19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.mi = phi ptr [ %i.mg, %bb.bv ], [ %i.mh, %bb.bw ]
  store ptr %i.mi, ptr %i.mc, align 8, !tbaa !56
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i:        ; preds = %bb.bx, %bb.br
  %spec.select.sink.i.i.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.i.i, %bb.bx ], [ %i.lp, %bb.br ]
  store i32 %spec.select.sink.i.i.i.i.i.i.i, ptr %i.lo, align 8, !tbaa !55
  %.pre.i.i.i.i.i.i = load i32, ptr %i.lq, align 4, !tbaa !57
  br label %Vec_IntGrow.exit.i.i.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i.i.i:                   ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i, %bb.bt, %bb.bs, %bb.bn
  %i.mj = phi i32 [ %.pre.i.i.i.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i ], [ %i.lr, %bb.bt ], [ %i.lr, %bb.bs ], [ %i.lr, %bb.bn ] ; 3 uses
  %.not3.i.i.i.i.i.i = icmp sgt i32 %i.mj, %.val3.i.i.i.i
  br i1 %.not3.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %Vec_IntGrow.exit.i.i.i.i.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i, i64 232
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !56
  %i.mm = sext i32 %i.mj to i64
  %i.mn = shl nsw i64 %i.mm, 2
  %scevgep.i.i.i.i.i.i.i = getelementptr i8, ptr %i.ml, i64 %i.mn
  %i.mo = sub i32 %.val3.i.i.i.i, %i.mj
  %i.mp = zext i32 %i.mo to i64
  %i.mq = shl nuw nsw i64 %i.mp, 2
  %i.mr = add nuw nsw i64 %i.mq, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i.i.i.i, i8 0, i64 %i.mr, i1 false), !tbaa !28
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i.i.i
  store i32 %i.lp, ptr %i.lq, align 4, !tbaa !57
  %.val.pre.i.i.i.i = load ptr, ptr %i.kw, align 8, !tbaa !59
  br label %Abc_NodeIsTravIdCurrent.exit.i.i.i

Abc_NodeIsTravIdCurrent.exit.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i.i, %Vec_PtrRemove.exit.i.i.i.i
  %.val121.i.i.i.i = phi ptr [ %.val2.i.i.i.i, %Vec_PtrRemove.exit.i.i.i.i ], [ %.val.pre.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.ms = getelementptr i8, ptr %.val2.i.i.i.i, i64 232
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ms, align 8, !tbaa !56
  %i.mt = sext i32 %.val3.i.i.i.i to i64
end_hunk_0
