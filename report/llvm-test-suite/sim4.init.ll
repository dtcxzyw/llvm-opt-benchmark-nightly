inline.NumInlined: 21
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@get_next_seq:bb.a

bb.m:                                             ; preds = %.critedge2.thread
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bo = tail call i64 @fwrite(ptr nonnull @.str.34, i64 238, i64 1, ptr %i.bn) #23 ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %._crit_edge, %bb.d, %.critedge2.thread, %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !39
  %i.br = load i32, ptr %i.x, align 4, !tbaa !40
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bs
  store i8 0, ptr %i.bt, align 1, !tbaa !29
  %i.bu = load ptr, ptr %i.u, align 8, !tbaa !36  ; 3 uses
  %i.bv = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.bu, ptr noundef nonnull dereferenceable(1) @.str.35) #21 ; 3 uses
  %.not97 = icmp eq ptr %i.bv, null
  br i1 %.not97, label %.critedge2..loopexit_crit_edge, label %bb.n

.critedge2..loopexit_crit_edge:                   ; preds = %.critedge2
  %.pre136 = tail call ptr @__ctype_b_loc() #22
  br label %.loopexit

bb.n:                                             ; preds = %.critedge2
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 6 ; 3 uses
  %i.bx = add i32 %i.t, -6                        ; 2 uses
  %i.by = tail call ptr @__ctype_b_loc() #22      ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !73 ; 2 uses
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !29  ; 2 uses
  %i.cb = sext i8 %i.ca to i64
  %i.cc = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !75
  %i.ce = and i16 %i.cd, 2048
  %.not98119 = icmp eq i16 %i.ce, 0
  br i1 %.not98119, label %.preheader, label %.lr.ph123

.preheader:                                       ; preds = %.lr.ph123, %bb.n
  %i.cf = phi i8 [ %i.ca, %bb.n ], [ %i.ci, %.lr.ph123 ] ; 2 uses
  %.081.lcssa = phi i32 [ %i.bx, %bb.n ], [ %i.ch, %.lr.ph123 ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.bw, %bb.n ], [ %i.cg, %.lr.ph123 ]
  %.not99125 = icmp eq i8 %i.cf, 0
  br i1 %.not99125, label %.loopexit, label %.lr.ph128

.lr.ph123:                                        ; preds = %bb.n, %.lr.ph123
  %.0121 = phi ptr [ %i.cg, %.lr.ph123 ], [ %i.bw, %bb.n ]
  %.081120 = phi i32 [ %i.ch, %.lr.ph123 ], [ %i.bx, %bb.n ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0121, i64 1 ; 3 uses
  %i.ch = add i32 %.081120, -1                    ; 2 uses
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !29  ; 2 uses
  %i.cj = sext i8 %i.ci to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %i.bz, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !75
  %i.cm = and i16 %i.cl, 2048
  %.not98 = icmp eq i16 %i.cm, 0
  br i1 %.not98, label %.preheader, label %.lr.ph123, !llvm.loop !81

.lr.ph128:                                        ; preds = %.preheader, %.lr.ph128
  %i.cn = phi i8 [ %i.cq, %.lr.ph128 ], [ %i.cf, %.preheader ]
  %.1127 = phi ptr [ %i.co, %.lr.ph128 ], [ %.0.lcssa, %.preheader ]
  %.3126 = phi ptr [ %i.cp, %.lr.ph128 ], [ %i.bv, %.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1127, i64 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.3126, i64 1
  store i8 %i.cn, ptr %.3126, align 1, !tbaa !29
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !29  ; 2 uses
  %.not99 = icmp eq i8 %i.cq, 0
  br i1 %.not99, label %.loopexit.loopexit, label %.lr.ph128, !llvm.loop !82

.loopexit.loopexit:                               ; preds = %.lr.ph128
  %.pre135 = load ptr, ptr %i.u, align 8, !tbaa !36
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge2..loopexit_crit_edge, %.loopexit.loopexit, %.preheader
  %.pre-phi = phi ptr [ %.pre136, %.critedge2..loopexit_crit_edge ], [ %i.by, %.loopexit.loopexit ], [ %i.by, %.preheader ]
  %i.cr = phi ptr [ %i.bu, %.critedge2..loopexit_crit_edge ], [ %.pre135, %.loopexit.loopexit ], [ %i.bu, %.preheader ]
  %.182 = phi i32 [ %i.t, %.critedge2..loopexit_crit_edge ], [ %.081.lcssa, %.loopexit.loopexit ], [ %.081.lcssa, %.preheader ]
  %i.cs = zext i32 %.182 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.cu = load ptr, ptr %.pre-phi, align 8, !tbaa !73
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4, %.loopexit
  %.pn = phi ptr [ %i.ct, %.loopexit ], [ %.4, %.critedge4 ] ; 2 uses
  %.4 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 2 uses
  %i.cv = load i8, ptr %.4, align 1, !tbaa !29
  %i.cw = sext i8 %i.cv to i64
  %i.cx = getelementptr inbounds [2 x i8], ptr %i.cu, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !75
  %i.cz = and i16 %i.cy, 8194
  %or.cond105 = icmp eq i16 %i.cz, 0
  br i1 %or.cond105, label %bb.o, label %.critedge4, !llvm.loop !83

bb.o:                                             ; preds = %.critedge4
  %i.da = load i32, ptr %i.x, align 4, !tbaa !40
  %i.db = add i32 %i.da, %1
  %i.dc = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.pn, i64 noundef 24, ptr noundef nonnull @.str.36, i32 noundef %i.db) #18
  %or.cond = icmp ugt i32 %i.dc, 23
  br i1 %or.cond, label %bb.p, label %.critedge.thread

bb.p:                                             ; preds = %bb.o
  %i.dd = load i32, ptr %i.x, align 4, !tbaa !40
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.37, i32 noundef %i.dd) #20
  unreachable

.critedge.thread:                                 ; preds = %.lr.ph165, %bb.a, %bb.o
  %.078 = phi i32 [ 0, %bb.o ], [ -1, %bb.a ], [ -1, %.lr.ph165 ]
  ret i32 %.078
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

declare void @init_encoding() local_unnamed_addr #8

declare void @init_hash_env(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @init_col(ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @bld_table(ptr noundef) local_unnamed_addr #8

declare void @SIM4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @print_res(ptr noundef %0, i32 noundef range(i32 0, 2) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [51 x i8], align 16               ; 7 uses
  %i.b = alloca [51 x i8], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4, !tbaa !48
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 76), align 4, !tbaa !21
  %.not = icmp ult i32 %i.d, %i.e
  br i1 %.not, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef %i.g, ptr noundef %i.i) ; 0 uses
  %.not32 = icmp eq i32 %1, 0
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 20), align 4, !tbaa !23
  switch i32 %i.k, label %bb.an [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !84
  tail call void @print_exons(ptr noundef nonnull %i.l, i32 noundef %i.n) #18
  br label %bb.ao

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  tail call fastcc void @print_align_lat(ptr noundef %i.p, ptr noundef %i.r, ptr noundef nonnull %0)
  br label %bb.ao

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !84
  tail call void @print_exons(ptr noundef nonnull %i.s, i32 noundef %i.u) #18
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  tail call fastcc void @print_align_lat(ptr noundef %i.w, ptr noundef %i.y, ptr noundef nonnull %0)
  br label %bb.ao

bb.h:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !84
  tail call void @print_exons(ptr noundef nonnull %i.z, i32 noundef %i.ab) #18
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !85
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !44
  %i.ah = add i32 %i.ag, -1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !86 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !88 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 4148
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !40 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.aq = zext i32 %i.am to i64                   ; 2 uses
  %i.ar = tail call i32 @llvm.usub.sat.i32(i32 %i.ao, i32 %i.am) ; 9 uses
  %exitcond.not.not.i = icmp ugt i32 %i.ao, %i.am
  br i1 %exitcond.not.not.i, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq ; 10 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !29
  %i.av = icmp eq i8 %i.au, 65
  %i.aw = zext i1 %i.av to i32                    ; 2 uses
  %exitcond.1.not.i = icmp eq i32 %i.ar, 1
  br i1 %exitcond.1.not.i, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !29
  %i.az = icmp eq i8 %i.ay, 65
  %i.ba = zext i1 %i.az to i32
  %spec.select.1.i = add nuw nsw i32 %i.ba, %i.aw ; 2 uses
  %exitcond.2.not.i = icmp eq i32 %i.ar, 2
  br i1 %exitcond.2.not.i, label %.critedge.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !29
  %i.bd = icmp eq i8 %i.bc, 65
  %i.be = zext i1 %i.bd to i32
  %spec.select.2.i = add nuw nsw i32 %spec.select.1.i, %i.be ; 2 uses
  %exitcond.3.not.i = icmp eq i32 %i.ar, 3
  br i1 %exitcond.3.not.i, label %.critedge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 3
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !29
  %i.bh = icmp eq i8 %i.bg, 65
  %i.bi = zext i1 %i.bh to i32
  %spec.select.3.i = add nuw nsw i32 %spec.select.2.i, %i.bi ; 2 uses
  %exitcond.4.not.i = icmp eq i32 %i.ar, 4
  br i1 %exitcond.4.not.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !29
  %i.bl = icmp eq i8 %i.bk, 65
  %i.bm = zext i1 %i.bl to i32
  %spec.select.4.i = add nuw nsw i32 %spec.select.3.i, %i.bm ; 2 uses
  %exitcond.5.not.i = icmp eq i32 %i.ar, 5
  br i1 %exitcond.5.not.i, label %.critedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.at, i64 5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !29
  %i.bp = icmp eq i8 %i.bo, 65
  %i.bq = zext i1 %i.bp to i32
  %spec.select.5.i = add nuw nsw i32 %spec.select.4.i, %i.bq ; 2 uses
  %exitcond.6.not.i = icmp eq i32 %i.ar, 6
  br i1 %exitcond.6.not.i, label %.critedge.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !29
  %i.bt = icmp eq i8 %i.bs, 65
  %i.bu = zext i1 %i.bt to i32
  %spec.select.6.i = add nuw nsw i32 %spec.select.5.i, %i.bu ; 2 uses
  %exitcond.7.not.i = icmp eq i32 %i.ar, 7
  br i1 %exitcond.7.not.i, label %.critedge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 7
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !29
  %i.bx = icmp eq i8 %i.bw, 65
  %i.by = zext i1 %i.bx to i32
  %spec.select.7.i = add nuw nsw i32 %spec.select.6.i, %i.by ; 2 uses
  %exitcond.8.not.i = icmp eq i32 %i.ar, 8
  br i1 %exitcond.8.not.i, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !29
  %i.cb = icmp eq i8 %i.ca, 65
  %i.cc = zext i1 %i.cb to i32
  %spec.select.8.i = add nuw nsw i32 %spec.select.7.i, %i.cc ; 2 uses
  %exitcond.9.not.i = icmp eq i32 %i.ar, 9
  br i1 %exitcond.9.not.i, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.at, i64 9
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !29
  %i.cf = icmp eq i8 %i.ce, 65
  %i.cg = zext i1 %i.cf to i32
  %spec.select.9.i = add nuw nsw i32 %spec.select.8.i, %i.cg
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %.0120.lcssa.i = phi i32 [ %spec.select.9.i, %bb.s ], [ 0, %bb.i ], [ %i.aw, %bb.j ], [ %spec.select.8.i, %bb.r ], [ %spec.select.1.i, %bb.k ], [ %spec.select.6.i, %bb.p ], [ %spec.select.2.i, %bb.l ], [ %spec.select.7.i, %bb.q ], [ %spec.select.3.i, %bb.m ], [ %spec.select.5.i, %bb.o ], [ %spec.select.4.i, %bb.n ] ; 2 uses
  %.0116.lcssa.i = phi i32 [ 10, %bb.s ], [ 0, %bb.i ], [ 1, %bb.j ], [ 9, %bb.r ], [ 2, %bb.k ], [ 7, %bb.p ], [ 3, %bb.l ], [ 8, %bb.q ], [ 4, %bb.m ], [ 6, %bb.o ], [ 5, %bb.n ] ; 3 uses
  %i.ch = add i32 %.0116.lcssa.i, %i.am           ; 2 uses
  %i.ci = icmp ult i32 %i.ch, %i.ao
  br i1 %i.ci, label %.lr.ph.i, label %.critedge2.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.cj = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.ck = sub i32 %i.ao, %i.am
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i
  %4 = phi i32 [ %i.ch, %.lr.ph.i ], [ %6, %bb.u ]
  %.1117149.i = phi i32 [ %.0116.lcssa.i, %.lr.ph.i ], [ %i.co, %bb.u ] ; 2 uses
  %.2122148.i = phi i32 [ %.0120.lcssa.i, %.lr.ph.i ], [ %i.cp, %bb.u ] ; 2 uses
  %5 = zext i32 %4 to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %5
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !29
  %i.cn = icmp eq i8 %i.cm, 65
  br i1 %i.cn, label %bb.u, label %.critedge2.i

bb.u:                                             ; preds = %bb.t
  %i.co = add i32 %.1117149.i, 1                  ; 2 uses
  %i.cp = add i32 %.2122148.i, 1                  ; 2 uses
  %6 = add i32 %i.co, %i.am                       ; 2 uses
  %i.cq = icmp ult i32 %6, %i.ao
  br i1 %i.cq, label %bb.t, label %.critedge2.i, !llvm.loop !90

.critedge2.i:                                     ; preds = %bb.u, %bb.t, %.critedge.i
  %.2122.lcssa.i = phi i32 [ %.0120.lcssa.i, %.critedge.i ], [ %.2122148.i, %bb.t ], [ %i.cp, %bb.u ]
  %.1117.lcssa.i = phi i32 [ %.0116.lcssa.i, %.critedge.i ], [ %.1117149.i, %bb.t ], [ %i.ck, %bb.u ] ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 4148
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !40
  %invariant.umin.i = tail call i32 @llvm.umin.i32(i32 %.1117.lcssa.i, i32 %i.cs) ; 4 uses
  %.not185.i = icmp eq i32 %invariant.umin.i, 0
  br i1 %.not185.i, label %.critedge2.._crit_edge_crit_edge.i, label %.lr.ph158.i

.critedge2.._crit_edge_crit_edge.i:               ; preds = %.critedge2.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !91
  %.phi.trans.insert208.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre209.i = load ptr, ptr %.phi.trans.insert208.i, align 8, !tbaa !39
  br label %._crit_edge.i

.lr.ph158.i:                                      ; preds = %.critedge2.i
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !39 ; 9 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !91 ; 10 uses
  %wide.trip.count191.i = zext i32 %invariant.umin.i to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %invariant.umin.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph158.i
  %i.cx = add nsw i64 %wide.trip.count191.i, -1   ; 2 uses
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = xor i32 %i.cw, -1
  %i.da = icmp ult i32 %i.cz, %i.cy
  %i.db = icmp ugt i64 %i.cx, 4294967295
  %i.dc = or i1 %i.da, %i.db
  br i1 %i.dc, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count191.i, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dm, %vector.body ]
  %vec.phi48 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dn, %vector.body ]
  %i.dd = trunc nuw i64 %index to i32
  %i.de = add i32 %i.cw, %i.dd
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %wide.load = load <4 x i8>, ptr %i.dg, align 1, !tbaa !29
  %wide.load49 = load <4 x i8>, ptr %i.dh, align 1, !tbaa !29
  %i.di = icmp eq <4 x i8> %wide.load, splat (i8 65)
  %i.dj = icmp eq <4 x i8> %wide.load49, splat (i8 65)
  %i.dk = zext <4 x i1> %i.di to <4 x i32>
  %i.dl = zext <4 x i1> %i.dj to <4 x i32>
  %i.dm = add <4 x i32> %vec.phi, %i.dk           ; 2 uses
  %i.dn = add <4 x i32> %vec.phi48, %i.dl         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.do = icmp eq i64 %index.next, %n.vec
  br i1 %i.do, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dn, %i.dm
  %i.dp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count191.i
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph158.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph158.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.0118156.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph158.i ], [ %i.dp, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count191.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.0118156.i.prol = phi i32 [ %spec.select131.i.prol, %scalar.ph.prol ], [ %.0118156.i.ph, %scalar.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dq = trunc nuw i64 %indvars.iv.i.prol to i32
  %i.dr = add i32 %i.cw, %i.dq
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !29
  %i.dv = icmp eq i8 %i.du, 65
  %i.dw = zext i1 %i.dv to i32
  %spec.select131.i.prol = add i32 %.0118156.i.prol, %i.dw ; 3 uses
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !95

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %spec.select131.i.lcssa.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %spec.select131.i.prol, %scalar.ph.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %.0118156.i.unr = phi i32 [ %.0118156.i.ph, %scalar.ph.preheader ], [ %spec.select131.i.prol, %scalar.ph.prol ]
  %i.dx = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count191.i
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %._crit_edge.i, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.cw
  %invariant.op77 = add i32 2, %i.cw
  %invariant.op79 = add i32 3, %i.cw
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i.a = phi i64 [ %indvars.iv.i.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.i.3, %scalar.ph ] ; 5 uses
  %.0118156.i = phi i32 [ %.0118156.i.unr, %scalar.ph.preheader.new ], [ %spec.select131.i.3, %scalar.ph ]
  %i.dz = trunc nuw i64 %indvars.iv.i.a to i32
  %i.ea = add i32 %i.cw, %i.dz
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !29
  %i.ee = icmp eq i8 %i.ed, 65
  %i.ef = zext i1 %i.ee to i32
  %spec.select131.i = add i32 %.0118156.i, %i.ef
  %i.eg = trunc i64 %indvars.iv.i.a to i32
  %.reass = add i32 %i.eg, %invariant.op
  %i.eh = zext i32 %.reass to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !29
  %i.ek = icmp eq i8 %i.ej, 65
  %i.el = zext i1 %i.ek to i32
  %spec.select131.i.1 = add i32 %spec.select131.i, %i.el
  %i.em = trunc i64 %indvars.iv.i.a to i32
  %.reass78 = add i32 %i.em, %invariant.op77
  %i.en = zext i32 %.reass78 to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !29
  %i.eq = icmp eq i8 %i.ep, 65
  %i.er = zext i1 %i.eq to i32
  %spec.select131.i.2 = add i32 %spec.select131.i.1, %i.er
  %i.es = trunc i64 %indvars.iv.i.a to i32
  %.reass80 = add i32 %i.es, %invariant.op79
  %i.et = zext i32 %.reass80 to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !29
  %i.ew = icmp eq i8 %i.ev, 65
  %i.ex = zext i1 %i.ew to i32
  %spec.select131.i.3 = add i32 %spec.select131.i.2, %i.ex ; 2 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.a, 4 ; 2 uses
  %exitcond192.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count191.i
  br i1 %exitcond192.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !96

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.critedge2.._crit_edge_crit_edge.i
  %i.ey = phi ptr [ %.pre209.i, %.critedge2.._crit_edge_crit_edge.i ], [ %i.cu, %middle.block ], [ %i.cu, %scalar.ph ], [ %i.cu, %scalar.ph.prol.loopexit ]
  %i.ez = phi i32 [ %.pre.i, %.critedge2.._crit_edge_crit_edge.i ], [ %i.cw, %middle.block ], [ %i.cw, %scalar.ph ], [ %i.cw, %scalar.ph.prol.loopexit ] ; 2 uses
  %.0118.lcssa.i = phi i32 [ 0, %.critedge2.._crit_edge_crit_edge.i ], [ %i.dp, %middle.block ], [ %spec.select131.i.lcssa.unr, %scalar.ph.prol.loopexit ], [ %spec.select131.i.3, %scalar.ph ]
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.fb = add i32 %i.ez, 1
  %i.fc = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 68), align 4, !tbaa !33
  %i.fd = add i32 %i.fb, %i.fc                    ; 2 uses
  %i.fe = load ptr, ptr %i.ap, align 8, !tbaa !39
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.aq
  %i.fg = add i32 %i.am, 1
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fi = zext i32 %i.ez to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fi
  %i.fk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %.1117.lcssa.i, i32 noundef %.2122.lcssa.i, i32 noundef %.0118.lcssa.i, i32 noundef %i.fd, i32 noundef %.1117.lcssa.i, ptr noundef %i.ff, i32 noundef %i.fg, i32 noundef %.1117.lcssa.i, i32 noundef %invariant.umin.i, ptr noundef %i.fj, i32 noundef %i.fd) ; 0 uses
  %i.fl = load i32, ptr %i.fa, align 4, !tbaa !91 ; 3 uses
  %i.fm = zext i32 %i.fl to i64
  %spec.select132142.i = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 50)
  %spec.select132.i = zext nneg i32 %spec.select132142.i to i64 ; 4 uses
  %i.fn = sub nsw i64 0, %spec.select132.i
  %i.fo = load ptr, ptr %i.fh, align 8, !tbaa !39
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fm
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %i.fn
  %i.fr = call ptr @strncpy(ptr noundef nonnull %i.a, ptr noundef %i.fq, i64 noundef %spec.select132.i) #18 ; 0 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select132.i
  store i8 0, ptr %i.fs, align 1, !tbaa !29
  %i.ft = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.25) #21 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %._crit_edge.i
  %i.fv = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.26) #21 ; 2 uses
  %.not128.i = icmp eq ptr %i.fv, null
  br i1 %.not128.i, label %bb.w, label %.thread.i

.thread.i:                                        ; preds = %bb.v, %._crit_edge.i
  %.0113137.i = phi ptr [ %i.fv, %bb.v ], [ %i.ft, %._crit_edge.i ]
  %i.fw = ptrtoint ptr %.0113137.i to i64
  %i.fx = ptrtoint ptr %i.a to i64
  %i.fy = add i64 %spec.select132.i, %i.fx
  %i.fz = sub i64 %i.fw, %i.fy
  %i.ga = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 68), align 4, !tbaa !33
  %i.gb = trunc i64 %i.fz to i32
  %i.gc = add i32 %i.fl, 1
  %i.gd = add i32 %i.gc, %i.ga
  %i.ge = add i32 %i.gd, %i.gb
  %i.gf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.ge) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.thread.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.h
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !97
end_hunk_0
