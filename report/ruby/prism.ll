inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@pm_alias_method_node_create:bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !tbaa !14
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !127
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.l, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @token_newline_index(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 376
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 608
  %i.e = load i64, ptr %i.d, align 8, !tbaa !483
  %i.f = add i64 %i.e, -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 600
  %i.h = getelementptr i8, ptr %0, i64 352
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  %i.j = tail call i32 @pm_newline_list_line(ptr noundef %i.g, ptr noundef %i.i, i32 noundef 0) #27
  %i.k = sext i32 %i.j to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ %i.k, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parser_warn_indentation_mismatch(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 704
  %i.b = load i8, ptr %i.a, align 8, !tbaa !58, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %token_column.exit51.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 376
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 608
  %i.h = load i64, ptr %i.g, align 8, !tbaa !483
  %i.i = add i64 %i.h, -1
  br label %token_newline_index.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 600
  %i.k = getelementptr i8, ptr %0, i64 352
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !166
  %i.m = tail call i32 @pm_newline_list_line(ptr noundef %i.j, ptr noundef %i.l, i32 noundef 0) #27
  %i.n = sext i32 %i.m to i64
  br label %token_newline_index.exit

token_newline_index.exit:                         ; preds = %bb.c, %bb.d
  %.0.i = phi i64 [ %i.i, %bb.c ], [ %i.n, %bb.d ] ; 3 uses
  %i.o = icmp eq i64 %1, %.0.i
  br i1 %i.o, label %token_column.exit51.thread, label %bb.e

bb.e:                                             ; preds = %token_newline_index.exit
  %i.p = getelementptr i8, ptr %0, i64 304
  %.val38 = load ptr, ptr %i.p, align 8, !tbaa !74 ; 8 uses
  %i.q = getelementptr i8, ptr %0, i64 624
  %.val39 = load ptr, ptr %i.q, align 8, !tbaa !484 ; 2 uses
  %i.r = getelementptr i8, ptr %2, i64 8
  %.val40 = load ptr, ptr %i.r, align 8, !tbaa !127 ; 5 uses
  %.val4067 = ptrtoaddr ptr %.val40 to i64        ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %.val39, i64 %1
  %i.t = load i64, ptr %i.s, align 8, !tbaa !20
  %i.u = getelementptr i8, ptr %.val38, i64 %i.t  ; 4 uses
  %i.v = icmp eq i64 %1, 0
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %.val38, align 1, !tbaa !67
  %i.x = icmp eq i8 %i.w, -17
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %.val38, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !67
  %i.aa = icmp eq i8 %i.z, -69
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %.val38, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !67
  %i.ad = icmp eq i8 %i.ac, -65
  %spec.select.idx.i = select i1 %i.ad, i64 3, i64 0
  %spec.select.i = getelementptr i8, ptr %i.u, i64 %spec.select.idx.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.018.i = phi ptr [ %i.u, %bb.e ], [ %spec.select.i, %bb.h ], [ %i.u, %bb.g ], [ %i.u, %bb.f ] ; 5 uses
  %.018.i68 = ptrtoaddr ptr %.018.i to i64        ; 2 uses
  %i.ae = icmp ult ptr %.018.i, %.val40
  br i1 %i.ae, label %.lr.ph.i, label %token_column.exit.thread

.lr.ph.i:                                         ; preds = %bb.i
  br i1 %3, label %.lr.ph.split.i.preheader, label %.lr.ph.split.us.i

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  %i.af = sub i64 %.val4067, %.018.i68            ; 3 uses
  %xtraiter = and i64 %i.af, 1
  %i.ag = add i64 %.val4067, -1
  %i.ah = icmp eq i64 %i.ag, %.018.i68
  br i1 %i.ah, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %i.af, -2
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.l
  %.02.us.i = phi i64 [ %.1.us.i, %bb.l ], [ 0, %.lr.ph.i ] ; 2 uses
  %.1191.us.i = phi ptr [ %i.an, %bb.l ], [ %.018.i, %.lr.ph.i ] ; 2 uses
  %i.ai = load i8, ptr %.1191.us.i, align 1, !tbaa !67
  switch i8 %i.ai, label %token_column.exit [
    i8 9, label %bb.k
    i8 32, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %i.aj = add i64 %.02.us.i, 1
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us.i
  %i.ak = sdiv i64 %.02.us.i, 8
  %i.al = shl nsw i64 %i.ak, 3
  %i.am = add i64 %i.al, 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.us.i = phi i64 [ %i.aj, %bb.j ], [ %i.am, %bb.k ] ; 2 uses
  %i.an = getelementptr i8, ptr %.1191.us.i, i64 1 ; 2 uses
  %exitcond11.not.i = icmp eq ptr %i.an, %.val40
  br i1 %exitcond11.not.i, label %token_column.exit, label %.lr.ph.split.us.i, !llvm.loop !485

.lr.ph.split.i:                                   ; preds = %bb.s, %.lr.ph.split.i.preheader.new
  %.02.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %.1.i.1, %bb.s ] ; 3 uses
  %.1191.i = phi ptr [ %.018.i, %.lr.ph.split.i.preheader.new ], [ %i.bb, %bb.s ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %bb.s ]
  %i.ao = load i8, ptr %.1191.i, align 1, !tbaa !67
  switch i8 %i.ao, label %bb.o [
    i8 9, label %bb.m
    i8 32, label %bb.n
  ]

bb.m:                                             ; preds = %.lr.ph.split.i
  %i.ap = sdiv i64 %.02.i, 8
  %i.aq = shl nsw i64 %i.ap, 3
  %i.ar = add i64 %i.aq, 8
  br label %.lr.ph.split.i.1

bb.n:                                             ; preds = %.lr.ph.split.i
  %i.as = add i64 %.02.i, 1
  br label %.lr.ph.split.i.1

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.at = add i64 %.02.i, 1
  br label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %bb.o, %bb.n, %bb.m
  %.1.i = phi i64 [ %i.at, %bb.o ], [ %i.ar, %bb.m ], [ %i.as, %bb.n ] ; 3 uses
  %i.au = getelementptr i8, ptr %.1191.i, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !67
  switch i8 %i.av, label %bb.r [
    i8 9, label %bb.q
    i8 32, label %bb.p
  ]

bb.p:                                             ; preds = %.lr.ph.split.i.1
  %i.aw = add i64 %.1.i, 1
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.split.i.1
  %i.ax = sdiv i64 %.1.i, 8
  %i.ay = shl nsw i64 %i.ax, 3
  %i.az = add i64 %i.ay, 8
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.split.i.1
  %i.ba = add i64 %.1.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.1.i.1 = phi i64 [ %i.ba, %bb.r ], [ %i.az, %bb.q ], [ %i.aw, %bb.p ] ; 3 uses
  %i.bb = getelementptr i8, ptr %.1191.i, i64 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %token_column.exit.loopexit.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !485

token_column.exit.loopexit.unr-lcssa:             ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %token_column.exit, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %token_column.exit.loopexit.unr-lcssa, %.lr.ph.split.i.preheader
  %.02.i.epil.init = phi i64 [ 0, %.lr.ph.split.i.preheader ], [ %.1.i.1, %token_column.exit.loopexit.unr-lcssa ] ; 3 uses
  %.1191.i.epil.init = phi ptr [ %.018.i, %.lr.ph.split.i.preheader ], [ %i.bb, %token_column.exit.loopexit.unr-lcssa ]
  %lcmp.mod70 = trunc i64 %i.af to i1
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.bc = load i8, ptr %.1191.i.epil.init, align 1, !tbaa !67
  switch i8 %i.bc, label %bb.v [
    i8 9, label %bb.u
    i8 32, label %bb.t
  ]

bb.t:                                             ; preds = %.lr.ph.split.i.epil.preheader
  %i.bd = add i64 %.02.i.epil.init, 1
  br label %token_column.exit

bb.u:                                             ; preds = %.lr.ph.split.i.epil.preheader
  %i.be = sdiv i64 %.02.i.epil.init, 8
  %i.bf = shl nsw i64 %i.be, 3
  %i.bg = add i64 %i.bf, 8
  br label %token_column.exit

bb.v:                                             ; preds = %.lr.ph.split.i.epil.preheader
  %i.bh = add i64 %.02.i.epil.init, 1
  br label %token_column.exit

token_column.exit:                                ; preds = %.lr.ph.split.us.i, %bb.l, %token_column.exit.loopexit.unr-lcssa, %bb.v, %bb.u, %bb.t
  %.020.i = phi i64 [ %i.bd, %bb.t ], [ %.1.i.1, %token_column.exit.loopexit.unr-lcssa ], [ %i.bh, %bb.v ], [ %i.bg, %bb.u ], [ -1, %.lr.ph.split.us.i ], [ %.1.us.i, %bb.l ] ; 2 uses
  %i.bi = icmp ne i64 %.020.i, -1
  %or.cond.not = select i1 %3, i1 true, i1 %i.bi
  br i1 %or.cond.not, label %token_column.exit.thread, label %token_column.exit51.thread

token_column.exit.thread:                         ; preds = %bb.i, %token_column.exit
  %.020.i54 = phi i64 [ %.020.i, %token_column.exit ], [ 0, %bb.i ] ; 2 uses
  %i.bj = getelementptr i8, ptr %0, i64 352
  %.val37 = load ptr, ptr %i.bj, align 8, !tbaa !127 ; 5 uses
  %i.bk = getelementptr [8 x i8], ptr %.val39, i64 %.0.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !20
  %i.bm = getelementptr i8, ptr %.val38, i64 %i.bl ; 4 uses
  %i.bn = icmp eq i64 %.0.i, 0
  br i1 %i.bn, label %bb.w, label %bb.z

bb.w:                                             ; preds = %token_column.exit.thread
  %i.bo = load i8, ptr %.val38, align 1, !tbaa !67
  %i.bp = icmp eq i8 %i.bo, -17
  br i1 %i.bp, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr i8, ptr %.val38, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !67
  %i.bs = icmp eq i8 %i.br, -69
  br i1 %i.bs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr i8, ptr %.val38, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !67
  %i.bv = icmp eq i8 %i.bu, -65
  %spec.select.idx.i49 = select i1 %i.bv, i64 3, i64 0
  %spec.select.i50 = getelementptr i8, ptr %i.bm, i64 %spec.select.idx.i49
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %token_column.exit.thread
  %.018.i41 = phi ptr [ %i.bm, %token_column.exit.thread ], [ %spec.select.i50, %bb.y ], [ %i.bm, %bb.x ], [ %i.bm, %bb.w ] ; 2 uses
  %i.bw = icmp ult ptr %.018.i41, %.val37
  br i1 %i.bw, label %.lr.ph.split.us.i44, label %token_column.exit51

.lr.ph.split.us.i44:                              ; preds = %bb.z, %bb.ac
  %.02.us.i45 = phi i64 [ %.1.us.i47, %bb.ac ], [ 0, %bb.z ] ; 2 uses
  %.1191.us.i46 = phi ptr [ %i.cc, %bb.ac ], [ %.018.i41, %bb.z ] ; 2 uses
  %i.bx = load i8, ptr %.1191.us.i46, align 1, !tbaa !67
  switch i8 %i.bx, label %token_column.exit51.thread [
    i8 9, label %bb.ab
    i8 32, label %bb.aa
  ]

bb.aa:                                            ; preds = %.lr.ph.split.us.i44
  %i.by = add i64 %.02.us.i45, 1
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.us.i44
  %i.bz = sdiv i64 %.02.us.i45, 8
  %i.ca = shl nsw i64 %i.bz, 3
  %i.cb = add i64 %i.ca, 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.us.i47 = phi i64 [ %i.by, %bb.aa ], [ %i.cb, %bb.ab ] ; 2 uses
  %i.cc = getelementptr i8, ptr %.1191.us.i46, i64 1 ; 2 uses
  %exitcond11.not.i48 = icmp eq ptr %i.cc, %.val37
  br i1 %exitcond11.not.i48, label %token_column.exit51, label %.lr.ph.split.us.i44, !llvm.loop !485

token_column.exit51:                              ; preds = %bb.ac, %bb.z
  %.020.i42 = phi i64 [ 0, %bb.z ], [ %.1.us.i47, %bb.ac ] ; 3 uses
  %i.cd = icmp eq i64 %.020.i42, -1
  %i.ce = icmp eq i64 %.020.i54, %.020.i42
  %i.cf = icmp sgt i64 %.020.i42, %.020.i54
  %or.cond34 = select i1 %4, i1 %i.cf, i1 false
  %i.cg = or i1 %i.ce, %or.cond34
  %or.cond35 = select i1 %i.cd, i1 true, i1 %i.cg
  br i1 %or.cond35, label %token_column.exit51.thread, label %bb.ad

bb.ad:                                            ; preds = %token_column.exit51
  %i.ch = getelementptr i8, ptr %0, i64 448
  %i.ci = getelementptr i8, ptr %0, i64 360
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !128 ; 2 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %.val37 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = trunc i64 %i.cm to i32
  %i.co = getelementptr i8, ptr %2, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !128
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %.val40 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = trunc i64 %1 to i32
  %i.cv = getelementptr i8, ptr %0, i64 664
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !26
  %i.cx = add i32 %i.cw, %i.cu
  %i.cy = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.ch, ptr noundef %.val37, ptr noundef %i.cj, i32 noundef 312, i32 noundef %i.cn, ptr noundef %.val37, i32 noundef %i.ct, ptr noundef %.val40, i32 noundef %i.cx) #27 ; 0 uses
  br label %token_column.exit51.thread

token_column.exit51.thread:                       ; preds = %.lr.ph.split.us.i44, %token_newline_index.exit, %bb.ad, %token_column.exit51, %token_column.exit, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_case_node_create(ptr nofree noundef captures(none) %0, ptr %.8.val, ptr %.16.val, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %2, i64 16
  %i.h = getelementptr i8, ptr %2, i64 8
  store i16 25, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.8.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !14
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.j, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_case_match_node_create(ptr nofree noundef captures(none) %0, ptr %.8.val, ptr %.16.val, ptr noundef %1, ptr %.8.val1, ptr %.16.val3) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  store i16 24, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.16.val3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.8.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
end_hunk_0
begin_hunk_1_@parse_parameters:bb.a
  %.not57.i.i315 = icmp eq i32 %i.hv, 0
  br i1 %.not57.i.i315, label %pm_locals_find.exit.thread.i310, label %.lr.ph.i.i316

.lr.ph.i.i316:                                    ; preds = %.preheader.i.i314
  %i.hw = getelementptr i8, ptr %i.hq, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i317 = zext i32 %i.hv to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %.lr.ph.i.i316
  %indvars.iv.i.i318 = phi i64 [ 0, %.lr.ph.i.i316 ], [ %indvars.iv.next.i.i320, %bb.ay ] ; 3 uses
  %i.hy = getelementptr [40 x i8], ptr %i.hx, i64 %indvars.iv.i.i318
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !156
  %.not39.i.i319 = icmp eq i32 %i.hz, %i.ex
  br i1 %.not39.i.i319, label %.thread.loopexit.split.loop.exit66.i.i322, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next.i.i320 = add nuw nsw i64 %indvars.iv.i.i318, 1 ; 2 uses
  %exitcond.not.i.i321 = icmp eq i64 %indvars.iv.next.i.i320, %wide.trip.count.i.i317
  br i1 %exitcond.not.i.i321, label %pm_locals_find.exit.thread.i310, label %bb.ax, !llvm.loop !233

bb.az:                                            ; preds = %bb.aw
  %i.ia = add i32 %i.hs, -1                       ; 2 uses
  %i.ib = lshr i32 %i.ex, 16
  %i.ic = xor i32 %i.ib, %i.ex
  %i.id = mul i32 %i.ic, 73244475                 ; 2 uses
  %i.ie = lshr i32 %i.id, 16
  %i.if = xor i32 %i.ie, %i.id
  %i.ig = mul i32 %i.if, 73244475                 ; 2 uses
  %i.ih = lshr i32 %i.ig, 16
  %i.ii = xor i32 %i.ih, %i.ig                    ; 2 uses
  %i.ij = getelementptr i8, ptr %i.hq, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !94 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %.0.i.i308 = phi i32 [ %i.ii, %bb.az ], [ %i.ir, %bb.bc ] ; 2 uses
  %i.il = and i32 %.0.i.i308, %i.ia               ; 2 uses
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr [40 x i8], ptr %i.ik, i64 %i.im
  %i.io = load i32, ptr %i.in, align 8, !tbaa !156 ; 2 uses
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %pm_locals_find.exit.thread.i310, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iq = icmp eq i32 %i.io, %i.ex
  br i1 %i.iq, label %pm_locals_find.exit.i311, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ir = add i32 %.0.i.i308, 1                   ; 2 uses
  %i.is = xor i32 %i.ir, %i.ii
  %i.it = and i32 %i.is, %i.ia
  %.not.i.i309 = icmp eq i32 %i.it, 0
  br i1 %.not.i.i309, label %pm_locals_find.exit.thread.i310, label %bb.ba, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i322:        ; preds = %bb.ax
  %i.iu = trunc nuw i64 %indvars.iv.i.i318 to i32
  br label %pm_locals_find.exit.i311

pm_locals_find.exit.i311:                         ; preds = %bb.bb, %.thread.loopexit.split.loop.exit66.i.i322
  %i.iv = phi ptr [ %i.hx, %.thread.loopexit.split.loop.exit66.i.i322 ], [ %i.ik, %bb.bb ]
  %.5.i.i312 = phi i32 [ %i.iu, %.thread.loopexit.split.loop.exit66.i.i322 ], [ %i.il, %bb.bb ] ; 2 uses
  %.not.i313 = icmp eq i32 %.5.i.i312, -1
  br i1 %.not.i313, label %pm_locals_find.exit.thread.i310, label %pm_locals_reads.exit323

pm_locals_find.exit.thread.i310:                  ; preds = %pm_locals_find.exit.i311, %.preheader.i.i314, %bb.bc, %bb.ba, %bb.ay
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit323:                          ; preds = %pm_locals_find.exit.i311
  %i.iw = zext i32 %.5.i.i312 to i64
  %i.ix = getelementptr [40 x i8], ptr %i.iv, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 28
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !265
  %.not242 = icmp eq i32 %i.iz, %i.gk
  br i1 %.not242, label %.split, label %bb.bd

bb.bd:                                            ; preds = %pm_locals_reads.exit323
  %i.ja = trunc i64 %i.er to i32
  %i.jb = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %.val271, ptr noundef %.val272, i32 noundef 207, i32 noundef %i.ja, ptr noundef %.val271) #27 ; 0 uses
  br label %.split

bb.be:                                            ; preds = %pm_parser_local_add_token.exit296
  %i.jc = load i32, ptr %i.a, align 4, !tbaa !7
  %i.jd = icmp ugt i32 %i.jc, 5
  %i.je = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 13 uses
  %i.jf = icmp eq ptr %i.je, null                 ; 2 uses
  br i1 %i.jd, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  br i1 %i.jf, label %bb.bg, label %pm_required_parameter_node_create.exit

bb.bg:                                            ; preds = %bb.bf
  %i.jg = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.jh = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.jg, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_parameter_node_create.exit:           ; preds = %bb.bf
  %i.ji = load i32, ptr %0, align 8, !tbaa !109
  %i.jj = add i32 %i.ji, 1                        ; 2 uses
  store i32 %i.jj, ptr %0, align 8, !tbaa !109
  %i.jk = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val271, i64 noundef %i.er) #27
  store i16 127, ptr %i.je, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i325 = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i32 %i.jj, ptr %.sroa.3.0..sroa_idx.i325, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i326 = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store ptr %.val271, ptr %.sroa.4.0..sroa_idx.i326, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i327 = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %.val272, ptr %.sroa.5.0..sroa_idx.i327, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i328 = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store i32 %i.jk, ptr %.sroa.6.0..sroa_idx.i328, align 8, !tbaa !7
  br i1 %i.eo, label %.split.thread.sink.split, label %.split.thread

bb.bh:                                            ; preds = %bb.be
  br i1 %i.jf, label %bb.bi, label %pm_required_parameter_node_create.exit337

bb.bi:                                            ; preds = %bb.bh
  %i.jl = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.jm = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.jl, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_parameter_node_create.exit337:        ; preds = %bb.bh
  %i.jn = load i32, ptr %0, align 8, !tbaa !109
  %i.jo = add i32 %i.jn, 1                        ; 2 uses
  store i32 %i.jo, ptr %0, align 8, !tbaa !109
  %i.jp = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val271, i64 noundef %i.er) #27
  store i16 127, ptr %i.je, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i333 = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i32 %i.jo, ptr %.sroa.3.0..sroa_idx.i333, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i334 = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store ptr %.val271, ptr %.sroa.4.0..sroa_idx.i334, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i335 = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %.val272, ptr %.sroa.5.0..sroa_idx.i335, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i336 = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store i32 %i.jp, ptr %.sroa.6.0..sroa_idx.i336, align 8, !tbaa !7
  br i1 %i.eo, label %.split.thread.sink.split, label %.split.thread

.split.thread.sink.split:                         ; preds = %pm_required_parameter_node_create.exit337, %pm_required_parameter_node_create.exit
  %.sink643.ph = phi ptr [ %i.ai, %pm_required_parameter_node_create.exit ], [ %i.v, %pm_required_parameter_node_create.exit337 ]
  %i.jq = getelementptr i8, ptr %i.je, i64 2      ; 2 uses
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !116
  %i.js = or i16 %i.jr, 4
  store i16 %i.js, ptr %i.jq, align 2, !tbaa !116
  br label %.split.thread

.split.thread:                                    ; preds = %.split.thread.sink.split, %pm_required_parameter_node_create.exit337, %pm_required_parameter_node_create.exit
  %.sink643 = phi ptr [ %i.ai, %pm_required_parameter_node_create.exit ], [ %i.v, %pm_required_parameter_node_create.exit337 ], [ %.sink643.ph, %.split.thread.sink.split ]
  %i.jt = load ptr, ptr %i.t, align 8, !tbaa !524 ; 3 uses
  %i.ju = icmp eq ptr %i.jt, null
  %i.jv = icmp uge ptr %i.jt, %.val271
  %i.jw = or i1 %i.ju, %i.jv
  %storemerge.i.i339 = select i1 %i.jw, ptr %.val271, ptr %i.jt
  store ptr %storemerge.i.i339, ptr %i.t, align 8, !tbaa !524
  %i.jx = load ptr, ptr %i.u, align 8, !tbaa !525 ; 2 uses
  %.not543 = icmp ugt ptr %i.jx, %.val272
  %storemerge19.i.i340 = select i1 %.not543, ptr %i.jx, ptr %.val272
  store ptr %storemerge19.i.i340, ptr %i.u, align 8, !tbaa !525
  tail call void @pm_node_list_append(ptr noundef %.sink643, ptr noundef nonnull %i.je) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %.critedge

.split:                                           ; preds = %bb.av, %pm_locals_reads.exit323, %bb.bd
  %i.jy = load ptr, ptr %i.y, align 8, !tbaa !253 ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.jy) #27
  store ptr %i.ka, ptr %i.y, align 8, !tbaa !253
  %i.kb = load i8, ptr %i.af, align 1, !tbaa !254, !range !45, !noundef !46
  %i.kc = trunc nuw i8 %i.kb to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %i.kc, label %.critedge245.thread, label %.critedge

bb.bj:                                            ; preds = %.critedge245
  br i1 %or.cond, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i8 1, ptr %i.x, align 1, !tbaa !197
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kd = call fastcc zeroext i1 @update_parameter_state(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.a) ; 0 uses
  %i.ke = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not542 = icmp eq ptr %i.ke, null
  br i1 %.not542, label %context_push.exit343, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i32 23, ptr %i.ke, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i341 = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i341, align 4
  %.sroa.3.0..sroa_idx.i342 = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kf = load ptr, ptr %i.y, align 8, !tbaa !253
  store ptr %i.kf, ptr %.sroa.3.0..sroa_idx.i342, align 8
  store ptr %i.ke, ptr %i.y, align 8, !tbaa !253
  br label %context_push.exit343

context_push.exit343:                             ; preds = %bb.bl, %bb.bm
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.0505.0.copyload = load i64, ptr %i.l, align 8
  %i.kg = load <2 x ptr>, ptr %i.p, align 8, !tbaa !14 ; 5 uses
  %i.kh = extractelement <2 x ptr> %i.kg, i64 0   ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store i64 %.sroa.0505.0.copyload, ptr %11, align 8
  store ptr %i.kh, ptr %.sroa.4507.0..sroa_idx508, align 8, !tbaa !14
  %i.ki = extractelement <2 x ptr> %i.kg, i64 1   ; 9 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 -1     ; 9 uses
  store ptr %i.kj, ptr %.sroa.11.0..sroa_idx515, align 8, !tbaa !128
  %i.kk = load i8, ptr %i.z, align 1, !tbaa !43, !range !45, !noundef !46
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %context_push.exit343
  %i.km = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.kn = getelementptr i8, ptr %i.km, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !152
  %i.kp = ptrtoint ptr %i.kj to i64
  %i.kq = ptrtoint ptr %i.kh to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = tail call zeroext i1 %i.ko(ptr noundef %i.kh, i64 noundef %i.kr) #27
  br i1 %i.ks, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %context_push.exit343
  %i.kt = ptrtoint ptr %i.kj to i64
  %i.ku = ptrtoint ptr %i.kh to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %i.kw = tail call zeroext i1 @pm_encoding_utf_8_isupper_char(ptr noundef %i.kh, i64 noundef %i.kv) #27
  br i1 %i.kw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.kx = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %i.kh, ptr noundef %i.kj, i32 noundef 12) #27 ; 0 uses
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo, %bb.bn
  %i.ky = getelementptr i8, ptr %i.ki, i64 -2
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !67
  switch i8 %i.kz, label %bb.bs [
    i8 33, label %bb.br
    i8 63, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq, %bb.bq
  %i.la = ptrtoint ptr %i.kj to i64
  %i.lb = ptrtoint ptr %i.kh to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = trunc i64 %i.lc to i32
  %i.le = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %i.kh, ptr noundef %i.kj, i32 noundef 152, i32 noundef %i.ld, ptr noundef %i.kh) #27 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bp
  %i.lf = call fastcc zeroext i1 @pm_parser_parameter_name_check(ptr noundef nonnull %0, ptr noundef nonnull %11) ; 3 uses
  %i.lg = ptrtoint ptr %i.kj to i64
  %i.lh = ptrtoint ptr %i.kh to i64
  %i.li = sub i64 %i.lg, %i.lh                    ; 7 uses
  %i.lj = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27 ; 2 uses
  %.not.i.i344 = icmp eq i32 %i.lj, 0
  br i1 %.not.i.i344, label %pm_parser_local_add_token.exit346, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val.i.i345 = load ptr, ptr %i.n, align 8, !tbaa !59
  tail call fastcc void @pm_parser_local_add(ptr %.val.i.i345, i32 noundef %i.lj, ptr noundef %i.kh, ptr noundef %i.kj, i32 noundef 1)
  br label %pm_parser_local_add_token.exit346

pm_parser_local_add_token.exit346:                ; preds = %bb.bs, %bb.bt
  %i.lk = load i32, ptr %i.k, align 8, !tbaa !170 ; 2 uses
  switch i32 %i.lk, label %bb.bz [
    i32 3, label %bb.bu
    i32 15, label %bb.bu
    i32 16, label %bb.bu
    i32 17, label %bb.bw
    i32 14, label %bb.bw
  ]

bb.bu:                                            ; preds = %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346
  %i.ll = load ptr, ptr %i.y, align 8, !tbaa !253 ; 2 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.ll) #27
  store ptr %i.ln, ptr %i.y, align 8, !tbaa !253
  %i.lo = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 10 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bv, label %pm_required_keyword_parameter_node_create.exit

bb.bv:                                            ; preds = %bb.bu
  %i.lq = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.lr = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.lq, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit:   ; preds = %bb.bu
  %i.ls = load i32, ptr %0, align 8, !tbaa !109
  %i.lt = add i32 %i.ls, 1                        ; 2 uses
  store i32 %i.lt, ptr %0, align 8, !tbaa !109
  %i.lu = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27
  store i16 126, ptr %i.lo, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i348 = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  store i32 %i.lt, ptr %.sroa.3.0..sroa_idx.i348, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i349 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store ptr %i.kh, ptr %.sroa.4.0..sroa_idx.i349, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i350 = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store ptr %i.ki, ptr %.sroa.5.0..sroa_idx.i350, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  store i32 %i.lu, ptr %.sroa.6.0..sroa_idx.i351, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  store ptr %i.kh, ptr %.sroa.8.0..sroa_idx.i352, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  store ptr %i.ki, ptr %.sroa.9.0..sroa_idx.i353, align 8, !tbaa !14
  br i1 %i.lf, label %.thread.sink.split, label %.thread

bb.bw:                                            ; preds = %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346
  %i.lv = load ptr, ptr %i.y, align 8, !tbaa !253 ; 2 uses
  %i.lw = getelementptr i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.lv) #27
  store ptr %i.lx, ptr %i.y, align 8, !tbaa !253
  br i1 %2, label %.thread534, label %bb.bx

.thread534:                                       ; preds = %bb.bw
  store i8 0, ptr %i.x, align 1, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.critedge245.thread

bb.bx:                                            ; preds = %bb.bw
  %i.ly = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 10 uses
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %bb.by, label %pm_required_keyword_parameter_node_create.exit364

bb.by:                                            ; preds = %bb.bx
  %i.ma = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.mb = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ma, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit364: ; preds = %bb.bx
  %i.mc = load i32, ptr %0, align 8, !tbaa !109
  %i.md = add i32 %i.mc, 1                        ; 2 uses
  store i32 %i.md, ptr %0, align 8, !tbaa !109
  %i.me = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27
  store i16 126, ptr %i.ly, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i358 = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store i32 %i.md, ptr %.sroa.3.0..sroa_idx.i358, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i359 = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store ptr %i.kh, ptr %.sroa.4.0..sroa_idx.i359, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i360 = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store ptr %i.ki, ptr %.sroa.5.0..sroa_idx.i360, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i361 = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  store i32 %i.me, ptr %.sroa.6.0..sroa_idx.i361, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i362 = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  store ptr %i.kh, ptr %.sroa.8.0..sroa_idx.i362, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i363 = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  store ptr %i.ki, ptr %.sroa.9.0..sroa_idx.i363, align 8, !tbaa !14
  br i1 %i.lf, label %.thread.sink.split, label %.thread

bb.bz:                                            ; preds = %pm_parser_local_add_token.exit346
  %i.mf = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.lk)
  br i1 %i.mf, label %bb.ca, label %bb.cy

bb.ca:                                            ; preds = %bb.bz
  %i.mg = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27 ; 8 uses
  %i.mh = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.mi = icmp ult i32 %i.mh, 2
  br i1 %i.mi, label %bb.cb, label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  %i.mj = load ptr, ptr %i.n, align 8, !tbaa !59  ; 4 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 12
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !93 ; 2 uses
  %i.mm = icmp ult i32 %i.ml, 9
  br i1 %i.mm, label %.preheader.i.i374, label %bb.ce

.preheader.i.i374:                                ; preds = %bb.cb
  %i.mn = getelementptr i8, ptr %i.mj, i64 8
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !155 ; 2 uses
  %.not57.i.i375 = icmp eq i32 %i.mo, 0
  br i1 %.not57.i.i375, label %pm_locals_find.exit.thread.i370, label %.lr.ph.i.i376

.lr.ph.i.i376:                                    ; preds = %.preheader.i.i374
  %i.mp = getelementptr i8, ptr %i.mj, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i377 = zext i32 %i.mo to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %.lr.ph.i.i376
  %indvars.iv.i.i378 = phi i64 [ 0, %.lr.ph.i.i376 ], [ %indvars.iv.next.i.i380, %bb.cd ] ; 3 uses
  %i.mr = getelementptr [40 x i8], ptr %i.mq, i64 %indvars.iv.i.i378
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !156
  %.not39.i.i379 = icmp eq i32 %i.ms, %i.mg
  br i1 %.not39.i.i379, label %.thread.loopexit.split.loop.exit66.i.i382, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %indvars.iv.next.i.i380 = add nuw nsw i64 %indvars.iv.i.i378, 1 ; 2 uses
  %exitcond.not.i.i381 = icmp eq i64 %indvars.iv.next.i.i380, %wide.trip.count.i.i377
  br i1 %exitcond.not.i.i381, label %pm_locals_find.exit.thread.i370, label %bb.cc, !llvm.loop !233

bb.ce:                                            ; preds = %bb.cb
  %i.mt = add i32 %i.ml, -1                       ; 2 uses
  %i.mu = lshr i32 %i.mg, 16
  %i.mv = xor i32 %i.mu, %i.mg
  %i.mw = mul i32 %i.mv, 73244475                 ; 2 uses
  %i.mx = lshr i32 %i.mw, 16
  %i.my = xor i32 %i.mx, %i.mw
  %i.mz = mul i32 %i.my, 73244475                 ; 2 uses
  %i.na = lshr i32 %i.mz, 16
  %i.nb = xor i32 %i.na, %i.mz                    ; 2 uses
  %i.nc = getelementptr i8, ptr %i.mj, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !94 ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %.0.i.i368 = phi i32 [ %i.nb, %bb.ce ], [ %i.nk, %bb.ch ] ; 2 uses
  %i.ne = and i32 %.0.i.i368, %i.mt               ; 2 uses
  %i.nf = zext i32 %i.ne to i64
  %i.ng = getelementptr [40 x i8], ptr %i.nd, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !156 ; 2 uses
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %pm_locals_find.exit.thread.i370, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nj = icmp eq i32 %i.nh, %i.mg
  br i1 %i.nj, label %pm_locals_find.exit.i371, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nk = add i32 %.0.i.i368, 1                   ; 2 uses
  %i.nl = xor i32 %i.nk, %i.nb
  %i.nm = and i32 %i.nl, %i.mt
  %.not.i.i369 = icmp eq i32 %i.nm, 0
  br i1 %.not.i.i369, label %pm_locals_find.exit.thread.i370, label %bb.cf, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i382:        ; preds = %bb.cc
  %i.nn = trunc nuw i64 %indvars.iv.i.i378 to i32
  br label %pm_locals_find.exit.i371

pm_locals_find.exit.i371:                         ; preds = %bb.cg, %.thread.loopexit.split.loop.exit66.i.i382
  %i.no = phi ptr [ %i.mq, %.thread.loopexit.split.loop.exit66.i.i382 ], [ %i.nd, %bb.cg ]
  %.5.i.i372 = phi i32 [ %i.nn, %.thread.loopexit.split.loop.exit66.i.i382 ], [ %i.ne, %bb.cg ] ; 2 uses
  %.not.i373 = icmp eq i32 %.5.i.i372, -1
  br i1 %.not.i373, label %pm_locals_find.exit.thread.i370, label %pm_locals_reads.exit383

pm_locals_find.exit.thread.i370:                  ; preds = %pm_locals_find.exit.i371, %.preheader.i.i374, %bb.ch, %bb.cf, %bb.cd
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit383:                          ; preds = %pm_locals_find.exit.i371
  %i.np = zext i32 %.5.i.i372 to i64
  %i.nq = getelementptr [40 x i8], ptr %i.no, i64 %i.np
  %i.nr = getelementptr i8, ptr %i.nq, i64 28
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !265
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ca, %pm_locals_reads.exit383
  %i.nt = phi i32 [ %i.ns, %pm_locals_reads.exit383 ], [ 0, %bb.ca ]
  br i1 %5, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.nu = load i32, ptr %i.ad, align 8, !tbaa !7
  %i.nv = shl i32 %i.nu, 1
  store i32 %i.nv, ptr %i.ad, align 8, !tbaa !7
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.nw = tail call fastcc ptr @parse_expression(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 212, i16 noundef zeroext %i.ae), !inline_history !297 ; 3 uses
  %i.nx = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef readonly %i.nw) ; 3 uses
  %.not.i495 = icmp eq ptr %i.nx, null
  br i1 %.not.i495, label %pm_assert_value_expression.exit498, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ny = getelementptr i8, ptr %i.nx, i64 8
  %.val.i496 = load ptr, ptr %i.ny, align 8, !tbaa !133
  %i.nz = getelementptr i8, ptr %i.nx, i64 16
  %.val5.i497 = load ptr, ptr %i.nz, align 8, !tbaa !134
  %i.oa = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %.val.i496, ptr noundef %.val5.i497, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit498

pm_assert_value_expression.exit498:               ; preds = %bb.ck, %bb.cl
  br i1 %5, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %pm_assert_value_expression.exit498
  %i.ob = load i32, ptr %i.ad, align 8, !tbaa !7
  %i.oc = lshr i32 %i.ob, 1
  store i32 %i.oc, ptr %i.ad, align 8, !tbaa !7
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %pm_assert_value_expression.exit498
  %i.od = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.oe = icmp ult i32 %i.od, 2
  br i1 %i.oe, label %bb.co, label %bb.cw

bb.co:                                            ; preds = %bb.cn
  %i.of = load ptr, ptr %i.n, align 8, !tbaa !59  ; 4 uses
  %i.og = getelementptr i8, ptr %i.of, i64 12
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !93 ; 2 uses
  %i.oi = icmp ult i32 %i.oh, 9
  br i1 %i.oi, label %.preheader.i.i390, label %bb.cr

.preheader.i.i390:                                ; preds = %bb.co
  %i.oj = getelementptr i8, ptr %i.of, i64 8
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !155 ; 2 uses
  %.not57.i.i391 = icmp eq i32 %i.ok, 0
  br i1 %.not57.i.i391, label %pm_locals_find.exit.thread.i386, label %.lr.ph.i.i392

.lr.ph.i.i392:                                    ; preds = %.preheader.i.i390
  %i.ol = getelementptr i8, ptr %i.of, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i393 = zext i32 %i.ok to i64
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cq, %.lr.ph.i.i392
  %indvars.iv.i.i394 = phi i64 [ 0, %.lr.ph.i.i392 ], [ %indvars.iv.next.i.i396, %bb.cq ] ; 3 uses
  %i.on = getelementptr [40 x i8], ptr %i.om, i64 %indvars.iv.i.i394
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !156
  %.not39.i.i395 = icmp eq i32 %i.oo, %i.mg
  br i1 %.not39.i.i395, label %.thread.loopexit.split.loop.exit66.i.i398, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %indvars.iv.next.i.i396 = add nuw nsw i64 %indvars.iv.i.i394, 1 ; 2 uses
  %exitcond.not.i.i397 = icmp eq i64 %indvars.iv.next.i.i396, %wide.trip.count.i.i393
  br i1 %exitcond.not.i.i397, label %pm_locals_find.exit.thread.i386, label %bb.cp, !llvm.loop !233

bb.cr:                                            ; preds = %bb.co
  %i.op = add i32 %i.oh, -1                       ; 2 uses
  %i.oq = lshr i32 %i.mg, 16
  %i.or = xor i32 %i.oq, %i.mg
  %i.os = mul i32 %i.or, 73244475                 ; 2 uses
  %i.ot = lshr i32 %i.os, 16
  %i.ou = xor i32 %i.ot, %i.os
  %i.ov = mul i32 %i.ou, 73244475                 ; 2 uses
  %i.ow = lshr i32 %i.ov, 16
  %i.ox = xor i32 %i.ow, %i.ov                    ; 2 uses
  %i.oy = getelementptr i8, ptr %i.of, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !94 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cu, %bb.cr
  %.0.i.i384 = phi i32 [ %i.ox, %bb.cr ], [ %i.pg, %bb.cu ] ; 2 uses
  %i.pa = and i32 %.0.i.i384, %i.op               ; 2 uses
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr [40 x i8], ptr %i.oz, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !156 ; 2 uses
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %pm_locals_find.exit.thread.i386, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pf = icmp eq i32 %i.pd, %i.mg
  br i1 %i.pf, label %pm_locals_find.exit.i387, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pg = add i32 %.0.i.i384, 1                   ; 2 uses
  %i.ph = xor i32 %i.pg, %i.ox
  %i.pi = and i32 %i.ph, %i.op
  %.not.i.i385 = icmp eq i32 %i.pi, 0
  br i1 %.not.i.i385, label %pm_locals_find.exit.thread.i386, label %bb.cs, !llvm.loop !234
end_hunk_1
begin_hunk_2_@pm_check_value_expression:bb.a
    i16 107, label %bb.b
    i16 124, label %bb.b
    i16 131, label %bb.b
    i16 101, label %bb.b
    i16 98, label %bb.ab
    i16 11, label %bb.c
    i16 50, label %bb.n
    i16 116, label %bb.o
    i16 140, label %bb.p
    i16 67, label %bb.q
    i16 146, label %bb.u
    i16 47, label %bb.y
    i16 4, label %bb.z
    i16 114, label %bb.aa
  ]

bb.b:                                             ; preds = %.lr.ph189, %.lr.ph189, %.lr.ph189, %.lr.ph189, %.lr.ph189, %.lr.ph189
  %.not145 = icmp eq ptr %.0100185, null
  %i.b = select i1 %.not145, ptr %.091186, ptr %.0100185
  br label %.thread

bb.c:                                             ; preds = %.lr.ph189
  %i.c = getelementptr i8, ptr %.091186, i64 64   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !508
  %.not136 = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %.091186, i64 48   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !502  ; 2 uses
  %.not137 = icmp eq ptr %i.f, null               ; 2 uses
  br i1 %.not136, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not137, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.f) ; 2 uses
  %.not142 = icmp eq ptr %i.g, null
  br i1 %.not142, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr i8, ptr %.091186, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !527  ; 2 uses
  %.not143 = icmp eq ptr %i.i, null
  br i1 %.not143, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.i) ; 2 uses
  %.not144 = icmp eq ptr %i.j, null
  br i1 %.not144, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !508
  br label %.thread156

bb.i:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.091186, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !527  ; 3 uses
  br i1 %.not137, label %.thread156, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.m) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = icmp eq ptr %.0100185, null
  %spec.select = select i1 %i.q, ptr %i.o, ptr %.0100185 ; 2 uses
  %.0123179 = load ptr, ptr %i.e, align 8, !tbaa !505 ; 2 uses
  %.not138180 = icmp eq ptr %.0123179, null
  br i1 %.not138180, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %.0123181, i64 112
  %.0123 = load ptr, ptr %i.r, align 8, !tbaa !505 ; 2 uses
  %.not138 = icmp eq ptr %.0123, null
  br i1 %.not138, label %._crit_edge, label %.lr.ph, !llvm.loop !606

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.0123181 = phi ptr [ %.0123, %bb.m ], [ %.0123179, %bb.l ] ; 2 uses
  %i.s = getelementptr i8, ptr %.0123181, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !498
  %i.u = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %i.t)
  %.not139 = icmp eq ptr %i.u, null
  br i1 %.not139, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.m, %.lr.ph, %bb.l
  %.5105 = phi ptr [ %spec.select, %bb.l ], [ null, %.lr.ph ], [ %spec.select, %bb.m ] ; 2 uses
  %i.v = getelementptr i8, ptr %.091186, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !507  ; 2 uses
  %.not140.not = icmp eq ptr %i.w, null
  br i1 %.not140.not, label %.thread, label %.thread156

bb.n:                                             ; preds = %.lr.ph189
  %i.x = getelementptr i8, ptr %.091186, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !607
  br label %.thread156

bb.o:                                             ; preds = %.lr.ph189
  %i.z = getelementptr i8, ptr %.091186, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !528
  br label %.thread156

bb.p:                                             ; preds = %.lr.ph189
  %i.ab = getelementptr i8, ptr %.091186, i64 24
  %i.ac = getelementptr i8, ptr %.091186, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !104
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !101
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !105
  br label %.thread156

bb.q:                                             ; preds = %.lr.ph189
  %i.ai = getelementptr i8, ptr %.091186, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !609 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr i8, ptr %.091186, i64 72  ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !545
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.aj) ; 2 uses
  %.not174 = icmp eq ptr %i.ao, null
  br i1 %.not174, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = icmp eq ptr %.0100185, null
  %spec.select147 = select i1 %i.ap, ptr %i.ao, ptr %.0100185
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !545
  br label %.thread156

bb.u:                                             ; preds = %.lr.ph189
  %i.ar = getelementptr i8, ptr %.091186, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !610 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = getelementptr i8, ptr %.091186, i64 72  ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !611
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.as) ; 2 uses
  %.not173 = icmp eq ptr %i.ax, null
  br i1 %.not173, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = icmp eq ptr %.0100185, null
  %spec.select148 = select i1 %i.ay, ptr %i.ax, ptr %.0100185
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !611
  br label %.thread156

bb.y:                                             ; preds = %.lr.ph189
  %i.ba = getelementptr i8, ptr %.091186, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !612
  br label %.thread156

bb.z:                                             ; preds = %.lr.ph189
  %i.bc = getelementptr i8, ptr %.091186, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !613
  br label %.thread156

bb.aa:                                            ; preds = %.lr.ph189
  %i.be = getelementptr i8, ptr %.091186, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !614
  br label %.thread156

bb.ab:                                            ; preds = %.lr.ph189
  %i.bg = getelementptr i8, ptr %0, i64 496       ; 2 uses
  %i.bh = getelementptr i8, ptr %.091186, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !615 ; 2 uses
  %i.bj = add i32 %i.bi, 1                        ; 2 uses
  %xtraiter = and i32 %i.bj, 7                    ; 3 uses
  %i.bk = icmp ult i32 %i.bi, 7
  br i1 %i.bk, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ab
  %unroll_iter = and i32 %i.bj, -8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.new
  %.089.in = phi ptr [ %i.bg, %.new ], [ %.089.7, %bb.ac ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.7, %bb.ac ]
  %.089 = load ptr, ptr %.089.in, align 8, !tbaa !66
  %.089.1 = load ptr, ptr %.089, align 8, !tbaa !66
  %.089.2 = load ptr, ptr %.089.1, align 8, !tbaa !66
  %.089.3 = load ptr, ptr %.089.2, align 8, !tbaa !66
  %.089.4 = load ptr, ptr %.089.3, align 8, !tbaa !66
  %.089.5 = load ptr, ptr %.089.4, align 8, !tbaa !66
  %.089.6 = load ptr, ptr %.089.5, align 8, !tbaa !66
  %.089.7 = load ptr, ptr %.089.6, align 8, !tbaa !66 ; 3 uses
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %bb.ac, !llvm.loop !616

.unr-lcssa:                                       ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.ab
  %.089.in.epil.init = phi ptr [ %i.bg, %bb.ab ], [ %.089.7, %.unr-lcssa ]
  %lcmp.mod242 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod242)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader
  %.089.in.epil = phi ptr [ %.089.in.epil.init, %.epil.preheader ], [ %.089.epil, %bb.ad ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ad ]
  %.089.epil = load ptr, ptr %.089.in.epil, align 8, !tbaa !66 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ad, !llvm.loop !617

.epilog-lcssa:                                    ; preds = %bb.ad, %.unr-lcssa
  %.089.lcssa = phi ptr [ %.089.7, %.unr-lcssa ], [ %.089.epil, %bb.ad ]
  %i.bl = getelementptr i8, ptr %.089.lcssa, i64 8
  %i.bm = getelementptr i8, ptr %.091186, i64 24
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !619
  tail call fastcc void @pm_locals_read(ptr noundef %i.bl, i32 noundef %i.bn)
  br label %.thread

.thread156:                                       ; preds = %bb.i, %bb.h, %bb.x, %bb.t, %._crit_edge, %bb.aa, %bb.z, %bb.y, %bb.p, %bb.o, %bb.n
  %.15 = phi ptr [ %.5105, %._crit_edge ], [ %.0100185, %bb.n ], [ %.0100185, %bb.o ], [ %.0100185, %bb.p ], [ %spec.select147, %bb.t ], [ %spec.select148, %bb.x ], [ %.0100185, %bb.y ], [ %.0100185, %bb.z ], [ %.0100185, %bb.aa ], [ %.0100185, %bb.h ], [ %.0100185, %bb.i ]
  %.899 = phi ptr [ %i.w, %._crit_edge ], [ %i.y, %bb.n ], [ %i.aa, %bb.o ], [ %i.ah, %bb.p ], [ %i.aq, %bb.t ], [ %i.az, %bb.x ], [ %i.bb, %bb.y ], [ %i.bd, %bb.z ], [ %i.bf, %bb.aa ], [ %i.k, %bb.h ], [ %i.m, %bb.i ] ; 2 uses
  %.not = icmp eq ptr %.899, null
  br i1 %.not, label %.thread, label %.lr.ph189, !llvm.loop !620

.thread:                                          ; preds = %._crit_edge, %.lr.ph189, %.thread156, %bb.j, %bb.g, %bb.e, %bb.k, %bb.q, %bb.r, %bb.s, %bb.u, %bb.v, %bb.w, %bb.a, %.epilog-lcssa, %bb.b
  %.13 = phi ptr [ null, %.epilog-lcssa ], [ %i.b, %bb.b ], [ null, %bb.a ], [ null, %bb.v ], [ null, %bb.u ], [ null, %bb.s ], [ null, %bb.q ], [ null, %bb.k ], [ null, %bb.j ], [ %i.j, %bb.g ], [ %i.g, %bb.e ], [ null, %.lr.ph189 ], [ null, %bb.r ], [ null, %.thread156 ], [ %.5105, %._crit_edge ], [ null, %bb.w ]
  ret ptr %.13
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_locals_read(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93   ; 2 uses
  %i.c = icmp ult i32 %i.b, 9
  br i1 %i.c, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !155    ; 2 uses
  %.not57.i = icmp eq i32 %i.d, 0
  br i1 %.not57.i, label %pm_locals_find.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %wide.trip.count.i = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.g = getelementptr [40 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 8, !tbaa !156
  %.not39.i = icmp eq i32 %i.h, %1
  br i1 %.not39.i, label %.thread.loopexit.split.loop.exit66.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %pm_locals_find.exit.thread, label %bb.b, !llvm.loop !233

bb.d:                                             ; preds = %bb.a
  %i.i = add i32 %i.b, -1                         ; 2 uses
  %i.j = lshr i32 %1, 16
  %i.k = xor i32 %i.j, %1
  %i.l = mul i32 %i.k, 73244475                   ; 2 uses
  %i.m = lshr i32 %i.l, 16
  %i.n = xor i32 %i.m, %i.l
  %i.o = mul i32 %i.n, 73244475                   ; 2 uses
  %i.p = lshr i32 %i.o, 16
  %i.q = xor i32 %i.p, %i.o                       ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.0.i = phi i32 [ %i.q, %bb.d ], [ %i.z, %bb.g ] ; 2 uses
  %i.t = and i32 %.0.i, %i.i                      ; 2 uses
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr [40 x i8], ptr %i.s, i64 %i.u
  %i.w = load i32, ptr %i.v, align 8, !tbaa !156  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %pm_locals_find.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp eq i32 %i.w, %1
  br i1 %i.y, label %pm_locals_find.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = add i32 %.0.i, 1                         ; 2 uses
  %i.aa = xor i32 %i.z, %i.q
  %i.ab = and i32 %i.aa, %i.i
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %pm_locals_find.exit.thread, label %bb.e, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i:             ; preds = %bb.b
  %i.ac = trunc nuw i64 %indvars.iv.i to i32
  br label %pm_locals_find.exit

pm_locals_find.exit:                              ; preds = %bb.f, %.thread.loopexit.split.loop.exit66.i
  %i.ad = phi ptr [ %i.f, %.thread.loopexit.split.loop.exit66.i ], [ %i.s, %bb.f ]
  %.5.i = phi i32 [ %i.ac, %.thread.loopexit.split.loop.exit66.i ], [ %i.t, %bb.f ] ; 2 uses
  %.not = icmp eq i32 %.5.i, -1
  br i1 %.not, label %pm_locals_find.exit.thread, label %bb.h

pm_locals_find.exit.thread:                       ; preds = %bb.g, %bb.e, %bb.c, %.preheader.i, %pm_locals_find.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 921, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_read) #26
  unreachable

bb.h:                                             ; preds = %pm_locals_find.exit
  %i.ae = zext i32 %.5.i to i64
  %i.af = getelementptr [40 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 28     ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !265 ; 2 uses
  %.not7 = icmp eq i32 %i.ah, -1
  br i1 %.not7, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.2, i32 noundef 924, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_read) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ai = add nuw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !265
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_symbol_node_label_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  switch i32 %i.a, label %bb.l [
    i32 111, label %bb.b
    i32 163, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !128  ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -1       ; 4 uses
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !127  ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 12 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %pm_symbol_node_create.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.j = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.i, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_symbol_node_create.exit:                       ; preds = %bb.b
  %i.k = load i32, ptr %0, align 8, !tbaa !109
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %0, align 8, !tbaa !109
  store i16 143, ptr %i.g, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 3 uses
  store i16 2, ptr %.sroa.2.0..sroa_idx.i.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.l, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.f, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.d, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.d, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.c, ptr %.sroa.14.0..sroa_idx.i.i, align 8, !tbaa !14
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp sgt i64 %i.o, -1
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %pm_symbol_node_create.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.2, i32 noundef 6629, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_symbol_node_label_create) #26
  unreachable

bb.e:                                             ; preds = %pm_symbol_node_create.exit
  %i.q = getelementptr i8, ptr %i.g, i64 72       ; 3 uses
  tail call void @pm_string_shared_init(ptr noundef %i.q, ptr noundef %i.f, ptr noundef %i.d) #27
  %i.r = getelementptr i8, ptr %0, i64 672
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !207  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.h, label %bb.f
end_hunk_2
