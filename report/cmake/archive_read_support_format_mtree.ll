Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_mtree?download=true
inline.NumInlined: 33
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cleanup:bb.a
; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare void @archive_string_free(ptr noundef) local_unnamed_addr #3

declare void @archive_entry_linkresolver_free(ptr noundef) local_unnamed_addr #3

declare ptr @__archive_read_ahead(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 33) i32 @detect_form(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = icmp ne ptr %1, null                     ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.aw, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.at, %bb.d
  %.ph.ph = phi i64 [ %i.em, %bb.at ], [ %i.e, %bb.d ]
  %.0118.ph.ph = phi ptr [ %i.el, %bb.at ], [ %i.c, %bb.d ]
  %.0115.ph.ph = phi i64 [ %.2117365, %bb.at ], [ %i.e, %bb.d ]
  %.054.ph.ph = phi i32 [ %.5, %bb.at ], [ 0, %bb.d ]
  %.049.ph.ph = phi i32 [ %.453, %bb.at ], [ 0, %bb.d ]
  %.048.ph.ph = phi i32 [ %.3, %bb.at ], [ 0, %bb.d ] ; 24 uses
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.w
  %.ph = phi i64 [ %i.br, %bb.w ], [ %.ph.ph, %.outer.outer ]
  %.0118.ph = phi ptr [ %i.bl, %bb.w ], [ %.0118.ph.ph, %.outer.outer ]
  %.0115.ph = phi i64 [ %.2117365, %bb.w ], [ %.0115.ph.ph, %.outer.outer ]
  %.054.ph = phi i32 [ %.256, %bb.w ], [ %.054.ph.ph, %.outer.outer ] ; 10 uses
  %.049.ph = phi i32 [ %.150, %bb.w ], [ %.049.ph.ph, %.outer.outer ] ; 3 uses
  %.not = icmp eq i32 %.049.ph, 0
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.r
  %i.f = phi i64 [ %i.bh, %bb.r ], [ %.ph, %.outer ] ; 8 uses
  %.0118 = phi ptr [ %i.bg, %bb.r ], [ %.0118.ph, %.outer ] ; 3 uses
  %.0115 = phi i64 [ %.2117365, %bb.r ], [ %.0115.ph, %.outer ] ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = icmp sgt i64 %i.f, 0
  br i1 %i.h, label %.lr.ph.i.i, label %.lr.ph.preheader

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.j
  %.032.i.i = phi i64 [ %i.r, %bb.j ], [ 0, %bb.f ] ; 4 uses
  %.02031.i.i = phi ptr [ %i.q, %bb.j ], [ %.0118, %bb.f ] ; 3 uses
  %i.i = load i8, ptr %.02031.i.i, align 1, !tbaa !42
  switch i8 %i.i, label %bb.j [
    i8 0, label %.lr.ph.preheader.i
    i8 13, label %bb.g
    i8 10, label %.loopexit.i.i
  ]

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.j = sub nuw nsw i64 %i.f, %.032.i.i
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.h, label %.loopexit.i.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %.02031.i.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !42
  %i.n = icmp eq i8 %i.m, 10
  br i1 %i.n, label %bb.i, label %.loopexit.i.i

bb.i:                                             ; preds = %bb.h
  %i.o = add nuw nsw i64 %.032.i.i, 2
  br label %next_line.exit.thread357

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.h, %bb.g
  %i.p = add nuw nsw i64 %.032.i.i, 1
  br label %next_line.exit.thread357

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.02031.i.i, i64 1
  %i.r = add nuw nsw i64 %.032.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %i.f
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader, label %.lr.ph.i.i, !llvm.loop !104

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i.i, %bb.e
  %.046.ph.i = phi i64 [ 0, %bb.e ], [ -1, %.lr.ph.i.i ] ; 2 uses
  %i.s = icmp eq i64 %.046.ph.i, %i.f
  br i1 %i.s, label %.lr.ph.preheader, label %next_line.exit.thread

.lr.ph.preheader:                                 ; preds = %bb.j, %bb.f, %.lr.ph.preheader.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %get_line_size.exit68.thread71.i
  %.14793.i244 = phi i64 [ %i.ag, %get_line_size.exit68.thread71.i ], [ %i.f, %.lr.ph.preheader ] ; 4 uses
  %.1116243 = phi i64 [ %i.af, %get_line_size.exit68.thread71.i ], [ %.0115, %.lr.ph.preheader ] ; 5 uses
  %i.t = sub nsw i64 %.1116243, %.14793.i244      ; 2 uses
  %i.u = icmp sgt i64 %.14793.i244, 1048575
  br i1 %i.u, label %next_line.exit.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.v = add nsw i64 %.1116243, 1023
  %i.w = and i64 %i.v, 4294966272                 ; 2 uses
  %i.x = add i64 %.1116243, 160
  %i.y = icmp ult i64 %i.w, %i.x
  %i.z = zext i1 %i.y to i64
  %spec.select.i = shl nuw nsw i64 %i.w, %i.z
  %i.aa = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %spec.select.i, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.ab = icmp ne ptr %i.aa, null                 ; 2 uses
  br i1 %i.ab, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %.not59.i = icmp slt i64 %.1116243, %i.ac
  br i1 %.not59.i, label %bb.m, label %next_line.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ad = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %i.ac, ptr noundef nonnull %i.a) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.ae = phi ptr [ %i.ad, %bb.m ], [ %i.aa, %bb.k ] ; 2 uses
  %i.af = load i64, ptr %i.a, align 8, !tbaa !47  ; 3 uses
  %i.ag = sub nsw i64 %i.af, %i.t                 ; 6 uses
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !47
  %i.ah = sub nsw i64 %i.ag, %.14793.i244
  %.fr.i = freeze i64 %i.ah                       ; 5 uses
  %i.ai = icmp sgt i64 %.fr.i, 0
  br i1 %i.ai, label %.lr.ph.i63.preheader.i, label %get_line_size.exit68.i

.lr.ph.i63.preheader.i:                           ; preds = %bb.n
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 %.1116243
  br label %.lr.ph.i63.i

.lr.ph.i63.i:                                     ; preds = %bb.q, %.lr.ph.i63.preheader.i
  %.032.i64.i = phi i64 [ %i.ar, %bb.q ], [ 0, %.lr.ph.i63.preheader.i ] ; 3 uses
  %.02031.i65.i = phi ptr [ %i.aq, %bb.q ], [ %i.aj, %.lr.ph.i63.preheader.i ] ; 3 uses
  %i.ak = load i8, ptr %.02031.i65.i, align 1, !tbaa !42
  switch i8 %i.ak, label %bb.q [
    i8 0, label %get_line_size.exit68.thread71.i
    i8 13, label %bb.o
    i8 10, label %next_line.exit
  ]

bb.o:                                             ; preds = %.lr.ph.i63.i
  %i.al = sub nuw nsw i64 %.fr.i, %.032.i64.i
  %i.am = icmp sgt i64 %i.al, 1
  br i1 %i.am, label %bb.p, label %next_line.exit

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %.02031.i65.i, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !42
  %i.ap = icmp eq i8 %i.ao, 10
  %spec.select540 = select i1 %i.ap, i64 2, i64 1
  br label %next_line.exit

bb.q:                                             ; preds = %.lr.ph.i63.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.02031.i65.i, i64 1
  %i.ar = add nuw nsw i64 %.032.i64.i, 1          ; 2 uses
  %exitcond.not.i67.i = icmp eq i64 %i.ar, %.fr.i
  br i1 %exitcond.not.i67.i, label %get_line_size.exit68.i, label %.lr.ph.i63.i, !llvm.loop !104

get_line_size.exit68.i:                           ; preds = %bb.q, %bb.n
  %i.as = icmp slt i64 %.fr.i, 0
  %spec.select78.i = select i1 %i.as, i64 %.fr.i, i64 %i.ag
  br label %get_line_size.exit68.thread71.i

get_line_size.exit68.thread71.i:                  ; preds = %.lr.ph.i63.i, %get_line_size.exit68.i
  %.3.i = phi i64 [ %spec.select78.i, %get_line_size.exit68.i ], [ -1, %.lr.ph.i63.i ] ; 2 uses
  %i.at = icmp eq i64 %.3.i, %i.ag
  %or.cond.i = and i1 %i.ab, %i.at
  br i1 %or.cond.i, label %.lr.ph, label %next_line.exit.thread, !llvm.loop !105

next_line.exit:                                   ; preds = %.lr.ph.i63.i, %bb.p, %bb.o
  %.sink = phi i64 [ %spec.select540, %bb.p ], [ 1, %bb.o ], [ 1, %.lr.ph.i63.i ] ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.ae, i64 %i.t
  %i.av = add nuw nsw i64 %.032.i64.i, %.sink
  %i.aw = add nsw i64 %i.av, %.14793.i244         ; 3 uses
  %i.ax = icmp slt i64 %i.aw, 1
  br i1 %i.ax, label %next_line.exit.thread, label %next_line.exit.thread357

next_line.exit.thread357:                         ; preds = %bb.i, %.loopexit.i.i, %next_line.exit
  %.251.i368 = phi i64 [ %i.aw, %next_line.exit ], [ %i.o, %bb.i ], [ %i.p, %.loopexit.i.i ] ; 5 uses
  %.3114366 = phi i64 [ %.sink, %next_line.exit ], [ 2, %bb.i ], [ 1, %.loopexit.i.i ] ; 6 uses
  %.2117365 = phi i64 [ %i.af, %next_line.exit ], [ %.0115, %bb.i ], [ %.0115, %.loopexit.i.i ] ; 3 uses
  %.3121364 = phi ptr [ %i.au, %next_line.exit ], [ %.0118, %bb.i ], [ %.0118, %.loopexit.i.i ] ; 4 uses
  %.promoted363 = phi i64 [ %i.ag, %next_line.exit ], [ %i.f, %bb.i ], [ %i.f, %.loopexit.i.i ] ; 2 uses
  br i1 %.not, label %.lr.ph259.preheader, label %bb.s

.lr.ph259.preheader:                              ; preds = %next_line.exit.thread357
  %scevgep = getelementptr i8, ptr %.3121364, i64 %.251.i368 ; 2 uses
  br label %.lr.ph259

.lr.ph259:                                        ; preds = %.lr.ph259.preheader, %.critedge3
  %.059258 = phi i64 [ %i.bc, %.critedge3 ], [ %.251.i368, %.lr.ph259.preheader ] ; 3 uses
  %.1119257 = phi ptr [ %i.ba, %.critedge3 ], [ %.3121364, %.lr.ph259.preheader ] ; 3 uses
  %i.ay = phi i64 [ %i.bb, %.critedge3 ], [ %.promoted363, %.lr.ph259.preheader ] ; 2 uses
  %i.az = load i8, ptr %.1119257, align 1, !tbaa !42 ; 2 uses
  switch i8 %i.az, label %.critedge [
    i8 32, label %.critedge3
    i8 9, label %.critedge3
  ]

.critedge3:                                       ; preds = %.lr.ph259, %.lr.ph259
  %i.ba = getelementptr inbounds nuw i8, ptr %.1119257, i64 1
  %i.bb = add nsw i64 %i.ay, -1                   ; 3 uses
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !47
  %i.bc = add nsw i64 %.059258, -1
  %i.bd = icmp sgt i64 %.059258, 1
  br i1 %i.bd, label %.lr.ph259, label %.critedgethread-pre-split, !llvm.loop !106

.critedgethread-pre-split:                        ; preds = %.critedge3
  %.pr = load i8, ptr %scevgep, align 1, !tbaa !42
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph259, %.critedgethread-pre-split
  %i.be = phi i64 [ %i.bb, %.critedgethread-pre-split ], [ %i.ay, %.lr.ph259 ] ; 2 uses
  %.1119189 = phi ptr [ %scevgep, %.critedgethread-pre-split ], [ %.1119257, %.lr.ph259 ] ; 12 uses
  %.059181 = phi i64 [ 0, %.critedgethread-pre-split ], [ %.059258, %.lr.ph259 ] ; 24 uses
  %i.bf = phi i8 [ %.pr, %.critedgethread-pre-split ], [ %i.az, %.lr.ph259 ] ; 3 uses
  switch i8 %i.bf, label %bb.x [
    i8 35, label %bb.r
    i8 10, label %bb.r
    i8 13, label %bb.r
    i8 47, label %bb.an
  ]

bb.r:                                             ; preds = %.critedge, %.critedge, %.critedge
  %i.bg = getelementptr inbounds nuw i8, ptr %.1119189, i64 %.059181
  %i.bh = sub nsw i64 %i.be, %.059181             ; 2 uses
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !47
  br label %bb.e

bb.s:                                             ; preds = %next_line.exit.thread357
  %i.bi = call fastcc i32 @bid_keyword_list(ptr noundef %.3121364, i64 noundef %.251.i368, i32 noundef 0, i32 noundef 0)
  %i.bj = icmp slt i32 %i.bi, 1
  br i1 %i.bj, label %next_line.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bk = xor i64 %.3114366, -1
  %i.bl = getelementptr i8, ptr %.3121364, i64 %.251.i368 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bk
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !42
  %.not76 = icmp eq i8 %i.bn, 92
  br i1 %.not76, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = icmp eq i32 %.049.ph, 1
  br i1 %i.bo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bp = add nsw i32 %.054.ph, 1
  %i.bq = icmp sgt i32 %.054.ph, 1
  br i1 %i.bq, label %.thread145, label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.256 = phi i32 [ %.054.ph, %bb.t ], [ %i.bp, %bb.v ], [ %.054.ph, %bb.u ]
  %.150 = phi i32 [ %.049.ph, %bb.t ], [ 0, %bb.v ], [ 0, %bb.u ]
  %i.br = sub nsw i64 %.promoted363, %.251.i368   ; 2 uses
  store i64 %i.br, ptr %i.a, align 8, !tbaa !47
  br label %.outer

bb.x:                                             ; preds = %.critedge
  %i.bs = getelementptr i8, ptr %.1119189, i64 %.059181 ; 5 uses
  %.not103.i = icmp eq i64 %.059181, 0
  br i1 %.not103.i, label %.thread.i83, label %.lr.ph.preheader.i80

.lr.ph.preheader.i80:                             ; preds = %bb.x
  %i.bt = zext i8 %i.bf to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @bid_entry.safe_char, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !42
  %.not.peel.i = icmp eq i8 %i.bv, 0              ; 2 uses
  br i1 %.not.peel.i, label %.loopexit110.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.preheader.i80
  %i.bw = getelementptr inbounds nuw i8, ptr %.1119189, i64 1 ; 2 uses
  %.not115.i = icmp eq i64 %.059181, 1
  br i1 %.not115.i, label %.loopexit.thread.i, label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %bb.y, %bb.z
  %.04985.i = phi ptr [ %i.cb, %bb.z ], [ %i.bw, %bb.y ] ; 3 uses
  %i.bx = load i8, ptr %.04985.i, align 1, !tbaa !42 ; 2 uses
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @bid_entry.safe_char, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !42
  %.not.i82 = icmp eq i8 %i.ca, 0
  br i1 %.not.i82, label %.loopexit110.i, label %bb.z

.loopexit110.i:                                   ; preds = %.lr.ph.i81, %.lr.ph.preheader.i80
  %.04985.lcssa.i = phi ptr [ %.1119189, %.lr.ph.preheader.i80 ], [ %.04985.i, %.lr.ph.i81 ] ; 2 uses
  %.lcssa.i = phi i8 [ %i.bf, %.lr.ph.preheader.i80 ], [ %i.bx, %.lr.ph.i81 ]
  switch i8 %.lcssa.i, label %.thread.i83 [
    i8 32, label %.loopexit.i
    i8 9, label %.loopexit.i
    i8 13, label %.loopexit.i
    i8 10, label %.loopexit.i
  ]

bb.z:                                             ; preds = %.lr.ph.i81
  %i.cb = getelementptr inbounds nuw i8, ptr %.04985.i, i64 1 ; 3 uses
  %i.cc = icmp ult ptr %i.cb, %i.bs
  br i1 %i.cc, label %.lr.ph.i81, label %.loopexit.thread.i, !llvm.loop !107

.loopexit.thread.i:                               ; preds = %bb.z, %bb.y
  %.04982.ph.i = phi ptr [ %i.bw, %bb.y ], [ %i.cb, %bb.z ] ; 2 uses
  %i.cd = ptrtoint ptr %i.bs to i64
  %i.ce = ptrtoint ptr %.04982.ph.i to i64
  %i.cf = sub i64 %i.cd, %i.ce
  br label %bid_entry.exit

.loopexit.i:                                      ; preds = %.loopexit110.i, %.loopexit110.i, %.loopexit110.i, %.loopexit110.i
  %i.cg = ptrtoint ptr %i.bs to i64
  %i.ch = ptrtoint ptr %.04985.lcssa.i to i64
  %i.ci = sub i64 %i.cg, %i.ch
  br i1 %.not.peel.i, label %.thread.i83, label %bid_entry.exit

.thread.i83:                                      ; preds = %.loopexit.i, %.loopexit110.i, %bb.x
  %2 = sub nsw i64 0, %.3114366
  %i.cj = getelementptr inbounds i8, ptr %i.bs, i64 %2 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %i.cj, i64 -2
  %i.cl = sub i64 %.059181, %.3114366             ; 2 uses
  %.not67.i = icmp slt i64 %i.cl, 2
  br i1 %.not67.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.thread.i83
  %i.cm = getelementptr inbounds i8, ptr %i.cj, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !42
  %i.co = icmp eq i8 %i.cn, 92
  br i1 %i.co, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load i8, ptr %i.ck, align 1, !tbaa !42
  switch i8 %i.cp, label %bb.ac [
    i8 32, label %next_line.exit.thread
    i8 9, label %next_line.exit.thread
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.thread.i83
  %i.cq = sub i64 %.3114366, %.059181
  %.not68.i = icmp sgt i64 %i.cq, -1
  br i1 %.not68.i, label %next_line.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds i8, ptr %i.cj, i64 -1 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !42  ; 2 uses
  %i.ct = icmp eq i8 %i.cs, 92
  br i1 %i.ct, label %next_line.exit.thread, label %.lr.ph91.i

.lr.ph91thread-pre-split.i:                       ; preds = %bb.af
  %.pr.i = load i8, ptr %i.db, align 1, !tbaa !42
  br label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %bb.ad, %.lr.ph91thread-pre-split.i
  %i.cu = phi i8 [ %.pr.i, %.lr.ph91thread-pre-split.i ], [ %i.cs, %bb.ad ] ; 3 uses
  %i.cv = phi ptr [ %i.db, %.lr.ph91thread-pre-split.i ], [ %i.cr, %bb.ad ] ; 3 uses
  %.04690.i = phi i32 [ %spec.select.i85, %.lr.ph91thread-pre-split.i ], [ 0, %bb.ad ] ; 3 uses
  %.04789.i = phi i32 [ %i.cz, %.lr.ph91thread-pre-split.i ], [ 0, %bb.ad ] ; 3 uses
  %.04888.i = phi ptr [ %i.cv, %.lr.ph91thread-pre-split.i ], [ %i.cj, %bb.ad ] ; 2 uses
  switch i8 %i.cu, label %bb.ae [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
  ]

bb.ae:                                            ; preds = %.lr.ph91.i
  %i.cw = zext i8 %i.cu to i64
  %i.cx = getelementptr inbounds nuw i8, ptr @bid_entry.safe_char, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !42
  %.not72.i = icmp eq i8 %i.cy, 0
  br i1 %.not72.i, label %next_line.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cz = add nuw nsw i32 %.04789.i, 1            ; 2 uses
  %i.da = icmp eq i8 %i.cu, 47
  %spec.select.i85 = select i1 %i.da, i32 1, i32 %.04690.i ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cv, i64 -1 ; 3 uses
  %.not69.i = icmp ugt ptr %.1119189, %i.db
  br i1 %.not69.i, label %.critedge.i, label %.lr.ph91thread-pre-split.i, !llvm.loop !108

.critedge.i:                                      ; preds = %bb.af, %.lr.ph91.i, %.lr.ph91.i
  %.048.lcssa.ph.i = phi ptr [ %i.cv, %bb.af ], [ %.04888.i, %.lr.ph91.i ], [ %.04888.i, %.lr.ph91.i ]
  %.047.lcssa.ph.i = phi i32 [ %i.cz, %bb.af ], [ %.04789.i, %.lr.ph91.i ], [ %.04789.i, %.lr.ph91.i ] ; 2 uses
  %.046.lcssa.ph.i = phi i32 [ %spec.select.i85, %bb.af ], [ %.04690.i, %.lr.ph91.i ], [ %.04690.i, %.lr.ph91.i ]
  %i.dc = icmp eq i32 %.046.lcssa.ph.i, 0
  %i.dd = icmp eq i32 %.047.lcssa.ph.i, 0
  %or.cond.i84 = select i1 %i.dd, i1 true, i1 %i.dc
  br i1 %or.cond.i84, label %next_line.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %.critedge.i
  %i.de = load i8, ptr %.048.lcssa.ph.i, align 1, !tbaa !42
  %i.df = icmp eq i8 %i.de, 47
  br i1 %i.df, label %next_line.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dg = zext nneg i32 %.047.lcssa.ph.i to i64
  %i.dh = sub i64 %i.cl, %i.dg
  br label %bid_entry.exit

bid_entry.exit:                                   ; preds = %.loopexit.thread.i, %.loopexit.i, %bb.ah
  %i.di = phi i1 [ false, %bb.ah ], [ true, %.loopexit.i ], [ true, %.loopexit.thread.i ] ; 3 uses
  %.0109 = phi i32 [ 1, %bb.ah ], [ 0, %.loopexit.i ], [ 0, %.loopexit.thread.i ]
  %.152.i = phi i64 [ %i.dh, %bb.ah ], [ %i.ci, %.loopexit.i ], [ %i.cf, %.loopexit.thread.i ]
  %.2.i = phi ptr [ %.1119189, %bb.ah ], [ %.04985.lcssa.i, %.loopexit.i ], [ %.04982.ph.i, %.loopexit.thread.i ]
  %i.dj = call fastcc i32 @bid_keyword_list(ptr noundef %.2.i, i64 noundef %.152.i, i32 noundef 0, i32 noundef %.0109) ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, -1
  br i1 %i.dk, label %bb.ai, label %next_line.exit.thread

bb.ai:                                            ; preds = %bid_entry.exit
  switch i32 %.048.ph.ph, label %bb.al [
    i32 0, label %bb.aj
    i32 1, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.di, label %.thread, label %.thread136

.thread:                                          ; preds = %bb.aj
  %.not74 = icmp ne i32 %i.dj, 0
  %spec.select = sext i1 %.not74 to i32
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.dl = icmp ne i32 %i.dj, 0
  %or.cond5 = and i1 %i.di, %i.dl
  br i1 %or.cond5, label %next_line.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak
  br i1 %i.di, label %bb.am, label %.thread136

bb.am:                                            ; preds = %.thread, %bb.al
  %.1134 = phi i32 [ %spec.select, %.thread ], [ %.048.ph.ph, %bb.al ] ; 2 uses
  %i.dm = xor i64 %.3114366, -1
  %i.dn = getelementptr i8, ptr %i.bs, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !42
  %i.dp = icmp eq i8 %i.do, 92
  br i1 %i.dp, label %bb.at, label %.thread136

.thread136:                                       ; preds = %bb.aj, %bb.am, %bb.al
  %.1135 = phi i32 [ %.1134, %bb.am ], [ %.048.ph.ph, %bb.al ], [ 1, %bb.aj ] ; 2 uses
  %i.dq = add nsw i32 %.054.ph, 1
  %i.dr = icmp sgt i32 %.054.ph, 1
  br i1 %i.dr, label %.thread145, label %bb.at

bb.an:                                            ; preds = %.critedge
  %i.ds = icmp samesign ugt i64 %.059181, 4
  br i1 %i.ds, label %bb.ao, label %next_line.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.dt = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.1119189, ptr noundef nonnull dereferenceable(5) @.str.5, i64 noundef 4) #20
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dv = getelementptr inbounds nuw i8, ptr %.1119189, i64 4
  %i.dw = add nsw i64 %.059181, -4
  %i.dx = call fastcc i32 @bid_keyword_list(ptr noundef nonnull %i.dv, i64 noundef %i.dw, i32 noundef 0, i32 noundef 0)
  %i.dy = icmp slt i32 %i.dx, 1
  br i1 %i.dy, label %next_line.exit.thread, label %.sink.split

bb.aq:                                            ; preds = %bb.ao
  %i.dz = icmp samesign ugt i64 %.059181, 6
  br i1 %i.dz, label %bb.ar, label %next_line.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.ea = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %.1119189, ptr noundef nonnull dereferenceable(7) @.str.6, i64 noundef 6) #20
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.as, label %next_line.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.ec = getelementptr inbounds nuw i8, ptr %.1119189, i64 6
  %i.ed = add nsw i64 %.059181, -6
  %i.ee = call fastcc i32 @bid_keyword_list(ptr noundef nonnull %i.ec, i64 noundef %i.ed, i32 noundef 1, i32 noundef 0)
  %i.ef = icmp slt i32 %i.ee, 1
  br i1 %i.ef, label %next_line.exit.thread, label %.sink.split

.sink.split:                                      ; preds = %bb.as, %bb.ap
  %i.eg = xor i64 %.3114366, -1
  %i.eh = getelementptr i8, ptr %.1119189, i64 %.059181
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.eg
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !42
  %i.ek = icmp eq i8 %i.ej, 92
  %spec.select78 = select i1 %i.ek, i32 2, i32 0
  br label %bb.at

bb.at:                                            ; preds = %.sink.split, %bb.am, %.thread136
  %.5 = phi i32 [ %i.dq, %.thread136 ], [ %.054.ph, %bb.am ], [ %.054.ph, %.sink.split ]
  %.453 = phi i32 [ 0, %.thread136 ], [ 1, %bb.am ], [ %spec.select78, %.sink.split ]
  %.3 = phi i32 [ %.1135, %.thread136 ], [ %.1134, %bb.am ], [ %.048.ph.ph, %.sink.split ]
  %i.el = getelementptr inbounds nuw i8, ptr %.1119189, i64 %.059181
  %i.em = sub nsw i64 %i.be, %.059181             ; 2 uses
  store i64 %i.em, ptr %i.a, align 8, !tbaa !47
  br label %.outer.outer

next_line.exit.thread:                            ; preds = %bb.an, %bb.ac, %bb.ad, %bb.ab, %bb.ab, %.critedge.i, %bb.ag, %bid_entry.exit, %bb.ak, %bb.aq, %bb.ar, %bb.as, %bb.ap, %bb.s, %bb.ae, %next_line.exit, %.lr.ph.preheader.i, %bb.l, %.lr.ph, %get_line_size.exit68.thread71.i
  %.160 = phi i64 [ 1, %bb.s ], [ %.046.ph.i, %.lr.ph.preheader.i ], [ %.3.i, %get_line_size.exit68.thread71.i ], [ %.059181, %bb.ae ], [ 0, %bb.l ], [ 1, %.lr.ph ], [ %i.aw, %next_line.exit ], [ %.059181, %bb.ab ], [ %.059181, %.critedge.i ], [ %.059181, %bb.ag ], [ %.059181, %bid_entry.exit ], [ %.059181, %bb.ak ], [ %.059181, %bb.ac ], [ 1, %bb.aq ], [ 1, %bb.ar ], [ 1, %bb.as ], [ %.059181, %bb.an ], [ %.059181, %bb.ad ], [ 1, %bb.ap ], [ %.059181, %bb.ab ]
  %.4 = phi i32 [ %.048.ph.ph, %bb.s ], [ %.048.ph.ph, %next_line.exit ], [ %.048.ph.ph, %bb.l ], [ %.048.ph.ph, %bb.ae ], [ %.048.ph.ph, %get_line_size.exit68.thread71.i ], [ %.048.ph.ph, %.lr.ph ], [ %.048.ph.ph, %.lr.ph.preheader.i ], [ %.048.ph.ph, %bb.ab ], [ %.048.ph.ph, %.critedge.i ], [ %.048.ph.ph, %bb.ag ], [ %.048.ph.ph, %bid_entry.exit ], [ 1, %bb.ak ], [ %.048.ph.ph, %bb.ac ], [ %.048.ph.ph, %bb.aq ], [ %.048.ph.ph, %bb.ar ], [ %.048.ph.ph, %bb.as ], [ %.048.ph.ph, %bb.an ], [ %.048.ph.ph, %bb.ad ], [ %.048.ph.ph, %bb.ap ], [ %.048.ph.ph, %bb.ab ] ; 2 uses
  %i.en = icmp sgt i32 %.054.ph, 2
  br i1 %i.en, label %.thread145, label %bb.au

bb.au:                                            ; preds = %next_line.exit.thread
  %i.eo = icmp sgt i32 %.054.ph, 0
  %i.ep = icmp eq i64 %.160, 0
  %or.cond7 = and i1 %i.eo, %i.ep
  br i1 %or.cond7, label %.thread145, label %bb.aw

.thread145:                                       ; preds = %.thread136, %bb.v, %bb.au, %next_line.exit.thread
  %.4149 = phi i32 [ %.4, %next_line.exit.thread ], [ %.4, %bb.au ], [ %.048.ph.ph, %bb.v ], [ %.1135, %.thread136 ]
  %i.eq = icmp eq i32 %.4149, 1
  %or.cond9 = select i1 %i.b, i1 %i.eq, i1 false
  br i1 %or.cond9, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.thread145
  store i32 1, ptr %1, align 4, !tbaa !52
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %.thread145, %bb.av, %bb.c
  %.061 = phi i32 [ 32, %.thread145 ], [ -1, %bb.c ], [ 32, %bb.av ], [ 0, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.061
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @bid_keyword_list(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3) unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i64 %1, 0
  br i1 %i.a, label %.lr.ph145, label %.critedge

.lr.ph145:                                        ; preds = %bb.a
  %i.b = icmp ne i32 %3, 0                        ; 2 uses
  %.not75 = icmp ne i32 %2, 0                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph145, %select.unfold
  %.055144 = phi i32 [ 0, %.lr.ph145 ], [ %i.av, %select.unfold ] ; 7 uses
  %.060143 = phi ptr [ %0, %.lr.ph145 ], [ %.464, %select.unfold ] ; 3 uses
  %.065142 = phi i64 [ %1, %.lr.ph145 ], [ %.469, %select.unfold ] ; 3 uses
  %i.c = load i8, ptr %.060143, align 1, !tbaa !42 ; 2 uses
  switch i8 %i.c, label %.critedge2 [
    i8 0, label %.critedge
    i8 32, label %.critedge4.peel
    i8 9, label %.critedge4.peel
  ]

.critedge4.peel:                                  ; preds = %bb.b, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.060143, i64 1 ; 2 uses
  %i.e = icmp samesign ugt i64 %.065142, 1
  br i1 %i.e, label %.lr.ph, label %.critedge2thread-pre-split

.lr.ph:                                           ; preds = %.critedge4.peel, %.critedge4
  %.161121 = phi ptr [ %i.g, %.critedge4 ], [ %i.d, %.critedge4.peel ] ; 3 uses
  %.166120.in = phi i64 [ %.166120, %.critedge4 ], [ %.065142, %.critedge4.peel ] ; 2 uses
  %.166120 = add nsw i64 %.166120.in, -1          ; 2 uses
  %i.f = load i8, ptr %.161121, align 1, !tbaa !42 ; 2 uses
  switch i8 %i.f, label %.critedge2 [
    i8 32, label %.critedge4
    i8 9, label %.critedge4
  ]

.critedge4:                                       ; preds = %.lr.ph, %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.161121, i64 1 ; 2 uses
  %i.h = icmp samesign ugt i64 %.166120.in, 2
  br i1 %i.h, label %.lr.ph, label %.critedge2thread-pre-split, !llvm.loop !109

.critedge2thread-pre-split:                       ; preds = %.critedge4, %.critedge4.peel
  %.lcssa173 = phi ptr [ %i.d, %.critedge4.peel ], [ %i.g, %.critedge4 ] ; 2 uses
  %.pr = load i8, ptr %.lcssa173, align 1, !tbaa !42
  br label %.critedge2

.critedge2:                                       ; preds = %.lr.ph, %bb.b, %.critedge2thread-pre-split
  %.166104 = phi i64 [ 0, %.critedge2thread-pre-split ], [ %.065142, %bb.b ], [ %.166120, %.lr.ph ] ; 12 uses
  %.161102 = phi ptr [ %.lcssa173, %.critedge2thread-pre-split ], [ %.060143, %bb.b ], [ %.161121, %.lr.ph ] ; 11 uses
  %or.cond = phi i1 [ true, %.critedge2thread-pre-split ], [ %i.b, %bb.b ], [ true, %.lr.ph ]
  %i.i = phi i1 [ false, %.critedge2thread-pre-split ], [ true, %bb.b ], [ true, %.lr.ph ] ; 2 uses
  %i.j = phi i8 [ %.pr, %.critedge2thread-pre-split ], [ %i.c, %bb.b ], [ %i.f, %.lr.ph ] ; 3 uses
  switch i8 %i.j, label %bb.d [
    i8 10, label %.critedge
    i8 13, label %.critedge
    i8 92, label %bb.c
  ]

bb.c:                                             ; preds = %.critedge2
  %i.k = getelementptr inbounds nuw i8, ptr %.161102, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !42
  switch i8 %i.l, label %bb.d [
    i8 10, label %.critedge
    i8 13, label %.critedge
  ]

bb.d:                                             ; preds = %bb.c, %.critedge2
  br i1 %or.cond, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i64 %.166104, 0
  %or.cond7 = and i1 %i.b, %i.m
  br i1 %or.cond7, label %.critedge, label %bb.f

end_hunk_0
