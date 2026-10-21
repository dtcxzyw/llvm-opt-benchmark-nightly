Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/array?download=true
inline.NumInlined: 57
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 33
begin_hunk_0_@php_array_replace_recursive:bb.a
  %i.cn = load ptr, ptr %.0103163, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !25
  %i.cq = or i32 %i.cp, 32
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !25
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.critedge
  %i.cr = getelementptr inbounds nuw i8, ptr %.0104, i64 9 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !25
  %.not132 = icmp eq i8 %i.cs, 0
  %.pre153 = load ptr, ptr %.0104, align 8, !tbaa !25 ; 2 uses
  br i1 %.not132, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre153, i64 4 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !25
  %i.cv = or i32 %i.cu, 32
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !25
  %.pre152 = load ptr, ptr %.0104, align 8, !tbaa !25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cw = phi ptr [ %.pre152, %bb.aj ], [ %.pre153, %bb.ai ]
  %i.cx = load ptr, ptr %.0103163, align 8, !tbaa !25
  %i.cy = tail call i32 @php_array_replace_recursive(ptr noundef %i.cx, ptr noundef %i.cw)
  %i.cz = load i8, ptr %i.cl, align 1, !tbaa !25
  %.not133 = icmp eq i8 %i.cz, 0
  br i1 %.not133, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.da = load ptr, ptr %.0103163, align 8, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !25
  %i.dd = and i32 %i.dc, -33
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.de = load i8, ptr %i.cr, align 1, !tbaa !25
  %.not134 = icmp eq i8 %i.de, 0
  br i1 %.not134, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.df = load ptr, ptr %.0104, align 8, !tbaa !25
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !25
  %i.di = and i32 %i.dh, -33
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.not135 = icmp eq i32 %i.cy, 0
  br i1 %.not135, label %.thread141, label %bb.ap

.sink.split:                                      ; preds = %bb.k, %bb.p
  %.sink = phi ptr [ %i.ak, %bb.p ], [ %i.ac, %bb.k ]
  tail call void @zval_add_ref(ptr noundef %.sink) #18
  br label %bb.ap

bb.ap:                                            ; preds = %.sink.split, %bb.d, %bb.ao
  %i.dj = add i32 %.0112147, -1                   ; 2 uses
  %.not = icmp eq i32 %i.dj, 0
  br i1 %.not, label %.thread141, label %.lr.ph, !llvm.loop !254

.thread141:                                       ; preds = %bb.ap, %bb.ao, %bb.a, %bb.x
  %i.dk = phi i32 [ 0, %bb.x ], [ 1, %bb.a ], [ 1, %bb.ap ], [ 0, %bb.ao ]
  ret i32 %i.dk
}

declare ptr @zend_hash_index_find(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @zif_array_merge(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25
  %i.f = and i32 %i.e, 134217728
  %.not252.i = icmp eq i32 %i.f, 0
  br i1 %.not252.i, label %.critedge.i, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameter_error(i32 noundef 11, i32 noundef %i.b, ptr noundef null, i32 noundef 0, ptr noundef null) #18
  br label %php_array_merge_wrapper.exit

.critedge.i:                                      ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge.i
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader

bb.c:                                             ; preds = %.critedge.i
  store ptr @zend_empty_array, ptr %1, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 7, ptr %i.g, align 8, !tbaa !25
  br label %php_array_merge_wrapper.exit

.preheader:                                       ; preds = %.preheader.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.0227.i14 = phi i64 [ 0, %.preheader.preheader ], [ %i.r, %bb.e ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !25
  %.not269.i = icmp eq i8 %i.j, 7
  br i1 %.not269.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.k = trunc nuw i64 %indvars.iv to i32
  %i.l = add nuw i32 %i.k, 1
  %i.m = tail call ptr @zend_zval_value_name(ptr noundef nonnull %i.h) #18
  tail call void (i32, ptr, ...) @zend_argument_type_error(i32 noundef %i.l, ptr noundef nonnull @.str.3, ptr noundef %i.m) #18
  br label %php_array_merge_wrapper.exit

bb.e:                                             ; preds = %.preheader
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %i.q = zext i32 %i.p to i64
  %i.r = add i64 %.0227.i14, %i.q                 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.f, label %.preheader, !llvm.loop !2

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ugt i64 %i.r, 1073741823
  br i1 %i.s, label %bb.g, label %bb.h, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 1073741824) #18
  br label %php_array_merge_wrapper.exit

bb.h:                                             ; preds = %bb.f
  %i.t = icmp eq i32 %i.b, 2
  %.pre51 = load ptr, ptr %i.c, align 8, !tbaa !25 ; 12 uses
  br i1 %i.t, label %bb.i, label %.critedge271.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.pre51, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35
  %i.w = icmp eq i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !25  ; 2 uses
  br i1 %i.w, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !35
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %select.unfold, label %.critedge271.i

select.unfold:                                    ; preds = %bb.i, %bb.j
  %i.ab = phi ptr [ %.pre51, %bb.j ], [ %.pre, %bb.i ] ; 10 uses
  %.0240.i = phi ptr [ %i.c, %bb.j ], [ %i.x, %bb.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !25
  %i.ae = and i32 %i.ad, 4
  %.not255.i = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !36 ; 3 uses
  br i1 %.not255.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %select.unfold
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.l, label %.critedge271.i

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.0240.i, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !25 ; 2 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.al, ptr %i.am, align 8, !tbaa !25
  %i.an = and i32 %i.al, 65280
  %.not260.i = icmp eq i32 %i.an, 0
  br i1 %.not260.i, label %php_array_merge_wrapper.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.ab, align 8, !tbaa !29
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ab, align 8, !tbaa !29
  br label %php_array_merge_wrapper.exit

bb.n:                                             ; preds = %select.unfold
  %.not256.i16 = icmp eq i32 %i.ag, 0
  br i1 %.not256.i16, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0230.i19 = phi i32 [ %i.ay, %.lr.ph ], [ %i.ag, %.lr.ph.preheader ]
  %.0231.i18 = phi ptr [ %i.ax, %.lr.ph ], [ %i.ar, %.lr.ph.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0231.i18, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !119
  %i.au = getelementptr inbounds nuw i8, ptr %.0231.i18, i64 8
  %i.av = load i8, ptr %i.au, align 8, !tbaa !25
  %i.aw = icmp eq i8 %i.av, 0
  %.not258.i = icmp ne ptr %i.at, null
  %.1238.i = select i1 %i.aw, i1 true, i1 %.not258.i, !prof !30 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0231.i18, i64 32
  %i.ay = add i32 %.0230.i19, -1                  ; 2 uses
  %.not256.i = icmp ne i32 %i.ay, 0
  %or.cond.not = select i1 %.1238.i, i1 %.not256.i, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %.1238.i, label %.critedge, label %.critedge271.i

.critedge:                                        ; preds = %bb.n, %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %.0240.i, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !25 ; 2 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !25
  %i.bc = and i32 %i.ba, 65280
  %.not259.i = icmp eq i32 %i.bc, 0
  br i1 %.not259.i, label %php_array_merge_wrapper.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.bd = load i32, ptr %i.ab, align 8, !tbaa !29
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ab, align 8, !tbaa !29
  br label %php_array_merge_wrapper.exit

.critedge271.i:                                   ; preds = %bb.j, %._crit_edge, %bb.k, %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre51, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !25
  %i.bh = and i32 %i.bg, 4
  %.not261.i = icmp eq i32 %i.bh, 0
  br i1 %.not261.i, label %bb.y, label %bb.p

bb.p:                                             ; preds = %.critedge271.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre51, i64 24 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre51, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !35
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.q, label %zend_may_modify_arg_in_place.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !25
  %.not.i2 = icmp eq i8 %i.bo, 0
  br i1 %.not.i2, label %zend_may_modify_arg_in_place.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre51, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !25
  %i.br = and i32 %i.bq, 192
  %.not3.i = icmp eq i32 %i.br, 0
  br i1 %.not3.i, label %zend_may_modify_arg_in_place.exit, label %zend_may_modify_arg_in_place.exit.thread

zend_may_modify_arg_in_place.exit:                ; preds = %bb.r
  %i.bs = load i32, ptr %.pre51, align 8, !tbaa !29
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.s, label %zend_may_modify_arg_in_place.exit.thread

bb.s:                                             ; preds = %zend_may_modify_arg_in_place.exit
  store ptr %.pre51, ptr %1, align 8, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.bu, align 8, !tbaa !25
  br label %.loopexit

zend_may_modify_arg_in_place.exit.thread:         ; preds = %bb.p, %zend_may_modify_arg_in_place.exit, %bb.r, %bb.q
  %i.bv = trunc nuw nsw i64 %i.r to i32
  %i.bw = tail call ptr @_zend_new_array(i32 noundef %i.bv) #18 ; 8 uses
  store ptr %i.bw, ptr %1, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.bx, align 8, !tbaa !25
  tail call void @zend_hash_real_init_packed(ptr noundef %i.bw) #18
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !36 ; 4 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre51, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !25 ; 2 uses
  %i.cd = load i32, ptr %i.bi, align 8, !tbaa !36 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %.idx = shl nuw nsw i64 %i.ce, 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx
  %.not266.i22 = icmp eq i32 %i.cd, 0
  br i1 %.not266.i22, label %._crit_edge29, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %zend_may_modify_arg_in_place.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !25
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ca
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %bb.x
  %.0220.i25 = phi ptr [ %i.cz, %bb.x ], [ %i.cc, %.lr.ph28.preheader ] ; 5 uses
  %.0222.i24 = phi i32 [ %.1223.i, %bb.x ], [ %i.bz, %.lr.ph28.preheader ] ; 2 uses
  %.0224.i23 = phi ptr [ %.1225.i, %bb.x ], [ %i.ci, %.lr.ph28.preheader ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0220.i25, i64 8
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !25
  switch i8 %i.ck, label %.critedge275.i [
    i8 0, label %bb.x
    i8 10, label %bb.t
  ], !prof !137

bb.t:                                             ; preds = %.lr.ph28
  %i.cl = load ptr, ptr %.0220.i25, align 8, !tbaa !25 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !29
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.u, label %.critedge275.i, !prof !30

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  br label %.critedge275.i

.critedge275.i:                                   ; preds = %.lr.ph28, %bb.u, %bb.t
  %.0218.i = phi ptr [ %i.co, %bb.u ], [ %.0220.i25, %bb.t ], [ %.0220.i25, %.lr.ph28 ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0218.i, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.0218.i, i64 9
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !25
  %.not267.i = icmp eq i8 %i.cr, 0
  %.pre53 = load ptr, ptr %.0218.i, align 8, !tbaa !25 ; 3 uses
  br i1 %.not267.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge275.i
  %i.cs = load i32, ptr %.pre53, align 4, !tbaa !29
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %.pre53, align 4, !tbaa !29
  %.pre52 = load ptr, ptr %.0218.i, align 8, !tbaa !25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge275.i
  %i.cu = phi ptr [ %.pre52, %bb.v ], [ %.pre53, %.critedge275.i ]
  %i.cv = load i32, ptr %i.cp, align 8, !tbaa !25
  store ptr %i.cu, ptr %.0224.i23, align 8, !tbaa !25
  %i.cw = getelementptr inbounds nuw i8, ptr %.0224.i23, i64 8
  store i32 %i.cv, ptr %i.cw, align 8, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %.0224.i23, i64 16
  %i.cy = add i32 %.0222.i24, 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph28, %bb.w
  %.1225.i = phi ptr [ %.0224.i23, %.lr.ph28 ], [ %i.cx, %bb.w ]
  %.1223.i = phi i32 [ %.0222.i24, %.lr.ph28 ], [ %i.cy, %bb.w ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0220.i25, i64 16 ; 2 uses
  %.not266.i = icmp eq ptr %i.cz, %i.cf
  br i1 %.not266.i, label %._crit_edge29.loopexit, label %.lr.ph28, !llvm.loop !4

._crit_edge29.loopexit:                           ; preds = %bb.x
  %.pre54 = load i32, ptr %i.by, align 8, !tbaa !36
  %.pre55 = zext i32 %.1223.i to i64
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %zend_may_modify_arg_in_place.exit.thread
  %.pre-phi = phi i64 [ %.pre55, %._crit_edge29.loopexit ], [ %i.ca, %zend_may_modify_arg_in_place.exit.thread ]
  %i.da = phi i32 [ %.pre54, %._crit_edge29.loopexit ], [ %i.bz, %zend_may_modify_arg_in_place.exit.thread ]
  %.0222.i.lcssa = phi i32 [ %.1223.i, %._crit_edge29.loopexit ], [ %i.bz, %zend_may_modify_arg_in_place.exit.thread ] ; 2 uses
  %i.db = sub i32 %.0222.i.lcssa, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bw, i64 28 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !35
  %i.de = add i32 %i.db, %i.dd
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !35
  store i32 %.0222.i.lcssa, ptr %i.by, align 8, !tbaa !36
  %i.df = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i64 %.pre-phi, ptr %i.df, align 8, !tbaa !127
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  store i32 0, ptr %i.dg, align 4, !tbaa !129
  br label %.loopexit

bb.y:                                             ; preds = %.critedge271.i
  %i.dh = trunc nuw nsw i64 %i.r to i32
  %i.di = tail call ptr @_zend_new_array(i32 noundef %i.dh) #18 ; 10 uses
  store ptr %i.di, ptr %1, align 8, !tbaa !25
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.dj, align 8, !tbaa !25
  tail call void @zend_hash_real_init_mixed(ptr noundef %i.di) #18
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre51, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !25 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre51, i64 24
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !36 ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %.idx41 = shl nuw nsw i64 %i.do, 5
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx41
  %.not263.i31 = icmp eq i32 %i.dn, 0
  br i1 %.not263.i31, label %.loopexit, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.y
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 28 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph35, %bb.ak
  %.0.i32 = phi ptr [ %i.dl, %.lr.ph35 ], [ %i.fw, %bb.ak ] ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i32, i64 8
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !25  ; 2 uses
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.ak, label %bb.aa, !prof !30

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i32, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !119 ; 8 uses
  %i.ea = icmp eq i8 %i.dw, 10
  br i1 %i.ea, label %bb.ab, label %.critedge277.i

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load ptr, ptr %.0.i32, align 8, !tbaa !25 ; 2 uses
end_hunk_0
begin_hunk_1_@zif_array_merge:bb.a
  br i1 %.not.i6, label %bb.ai, label %_zend_hash_append_ex.exit

bb.ai:                                            ; preds = %zend_string_addref.exit
  %i.fe = tail call i64 @zend_string_hash_func(ptr noundef nonnull %i.dz) #18 ; 0 uses
  br label %_zend_hash_append_ex.exit

_zend_hash_append_ex.exit:                        ; preds = %bb.ai, %zend_string_addref.exit, %bb.af
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  store ptr %i.dz, ptr %i.ff, align 8, !tbaa !119
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !125 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !120
  %i.fj = trunc i64 %i.fh to i32
  %i.fk = load i32, ptr %i.dt, align 4, !tbaa !136
  %i.fl = or i32 %i.fk, %i.fj
  %i.fm = load ptr, ptr %i.dr, align 8, !tbaa !25
  %i.fn = sext i32 %i.fl to i64                   ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !59
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !25
  %i.fr = load ptr, ptr %i.dr, align 8, !tbaa !25
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.fr, i64 %i.fn
  store i32 %i.ek, ptr %i.fs, align 4, !tbaa !59
  %i.ft = load i32, ptr %i.du, align 4, !tbaa !35
  %i.fu = add i32 %i.ft, 1
  store i32 %i.fu, ptr %i.du, align 4, !tbaa !35
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ae
  %i.fv = tail call ptr @zend_hash_next_index_insert_new(ptr noundef %i.di, ptr noundef nonnull %.1219.i) #18 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_zend_hash_append_ex.exit, %bb.z
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i32, i64 32 ; 2 uses
  %.not263.i = icmp eq ptr %i.fw, %i.dp
  br i1 %.not263.i, label %.loopexit, label %bb.z, !llvm.loop !5

.loopexit:                                        ; preds = %bb.ak, %bb.y, %._crit_edge29, %bb.s
  %.0229.i = phi i1 [ true, %bb.s ], [ false, %._crit_edge29 ], [ false, %bb.y ], [ false, %bb.ak ]
  %.0226.i = phi ptr [ %.pre51, %bb.s ], [ %i.bw, %._crit_edge29 ], [ %i.di, %bb.y ], [ %i.di, %bb.ak ] ; 3 uses
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %._crit_edge39, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %.loopexit
  %umax = tail call i32 @llvm.umax.i32(i32 %i.b, i32 2)
  %wide.trip.count49 = zext i32 %umax to i64
  br label %.lr.ph38

.lr.ph38:                                         ; preds = %.lr.ph38.preheader, %.lr.ph38
  %indvars.iv46 = phi i64 [ 1, %.lr.ph38.preheader ], [ %indvars.iv.next47, %.lr.ph38 ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv46
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !25
  %i.fz = tail call i32 @php_array_merge(ptr noundef %.0226.i, ptr noundef %i.fy) ; 0 uses
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %._crit_edge39, label %.lr.ph38, !llvm.loop !256

._crit_edge39:                                    ; preds = %.lr.ph38, %.loopexit
  br i1 %.0229.i, label %bb.al, label %php_array_merge_wrapper.exit

bb.al:                                            ; preds = %._crit_edge39
  %i.ga = load i32, ptr %.0226.i, align 4, !tbaa !29
  %i.gb = add i32 %i.ga, 1
  store i32 %i.gb, ptr %.0226.i, align 4, !tbaa !29
  br label %php_array_merge_wrapper.exit

php_array_merge_wrapper.exit:                     ; preds = %.critedge, %bb.o, %bb.d, %bb.b, %bb.c, %bb.g, %bb.l, %bb.m, %._crit_edge39, %bb.al
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zif_array_merge_recursive(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !25
  %i.f = and i32 %i.e, 134217728
  %.not252.i = icmp eq i32 %i.f, 0
  br i1 %.not252.i, label %.critedge.i, label %bb.b, !prof !27

bb.b:                                             ; preds = %bb.a
  tail call void @zend_wrong_parameter_error(i32 noundef 11, i32 noundef %i.b, ptr noundef null, i32 noundef 0, ptr noundef null) #18
  br label %php_array_merge_wrapper.exit

.critedge.i:                                      ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.critedge.i
  %wide.trip.count = zext i32 %i.b to i64
  br label %.preheader

bb.c:                                             ; preds = %.critedge.i
  store ptr @zend_empty_array, ptr %1, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 7, ptr %i.g, align 8, !tbaa !25
  br label %php_array_merge_wrapper.exit

.preheader:                                       ; preds = %.preheader.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.0227.i14 = phi i64 [ 0, %.preheader.preheader ], [ %i.r, %bb.e ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %indvars.iv ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !25
  %.not269.i = icmp eq i8 %i.j, 7
  br i1 %.not269.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.k = trunc nuw i64 %indvars.iv to i32
  %i.l = add nuw i32 %i.k, 1
  %i.m = tail call ptr @zend_zval_value_name(ptr noundef nonnull %i.h) #18
  tail call void (i32, ptr, ...) @zend_argument_type_error(i32 noundef %i.l, ptr noundef nonnull @.str.3, ptr noundef %i.m) #18
  br label %php_array_merge_wrapper.exit

bb.e:                                             ; preds = %.preheader
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !35
  %i.q = zext i32 %i.p to i64
  %i.r = add i64 %.0227.i14, %i.q                 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.f, label %.preheader, !llvm.loop !2

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ugt i64 %i.r, 1073741823
  br i1 %i.s, label %bb.g, label %bb.h, !prof !30

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 1073741824) #18
  br label %php_array_merge_wrapper.exit

bb.h:                                             ; preds = %bb.f
  %i.t = icmp eq i32 %i.b, 2
  %.pre51 = load ptr, ptr %i.c, align 8, !tbaa !25 ; 12 uses
  br i1 %i.t, label %bb.i, label %.critedge271.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.pre51, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !35
  %i.w = icmp eq i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !25  ; 2 uses
  br i1 %i.w, label %select.unfold, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.pre, i64 28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !35
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %select.unfold, label %.critedge271.i

select.unfold:                                    ; preds = %bb.i, %bb.j
  %i.ab = phi ptr [ %.pre51, %bb.j ], [ %.pre, %bb.i ] ; 10 uses
  %.0240.i = phi ptr [ %i.c, %bb.j ], [ %i.x, %bb.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !25
  %i.ae = and i32 %i.ad, 4
  %.not255.i = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !36 ; 3 uses
  br i1 %.not255.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %select.unfold
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35
  %i.aj = icmp eq i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.l, label %.critedge271.i

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %.0240.i, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !25 ; 2 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.al, ptr %i.am, align 8, !tbaa !25
  %i.an = and i32 %i.al, 65280
  %.not260.i = icmp eq i32 %i.an, 0
  br i1 %.not260.i, label %php_array_merge_wrapper.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load i32, ptr %i.ab, align 8, !tbaa !29
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.ab, align 8, !tbaa !29
  br label %php_array_merge_wrapper.exit

bb.n:                                             ; preds = %select.unfold
  %.not256.i16 = icmp eq i32 %i.ag, 0
  br i1 %.not256.i16, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0230.i19 = phi i32 [ %i.ay, %.lr.ph ], [ %i.ag, %.lr.ph.preheader ]
  %.0231.i18 = phi ptr [ %i.ax, %.lr.ph ], [ %i.ar, %.lr.ph.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0231.i18, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !119
  %i.au = getelementptr inbounds nuw i8, ptr %.0231.i18, i64 8
  %i.av = load i8, ptr %i.au, align 8, !tbaa !25
  %i.aw = icmp eq i8 %i.av, 0
  %.not258.i = icmp ne ptr %i.at, null
  %.1238.i = select i1 %i.aw, i1 true, i1 %.not258.i, !prof !30 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.0231.i18, i64 32
  %i.ay = add i32 %.0230.i19, -1                  ; 2 uses
  %.not256.i = icmp ne i32 %i.ay, 0
  %or.cond.not = select i1 %.1238.i, i1 %.not256.i, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %.1238.i, label %.critedge, label %.critedge271.i

.critedge:                                        ; preds = %bb.n, %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %.0240.i, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !25 ; 2 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !25
  %i.bc = and i32 %i.ba, 65280
  %.not259.i = icmp eq i32 %i.bc, 0
  br i1 %.not259.i, label %php_array_merge_wrapper.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.bd = load i32, ptr %i.ab, align 8, !tbaa !29
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.ab, align 8, !tbaa !29
  br label %php_array_merge_wrapper.exit

.critedge271.i:                                   ; preds = %bb.j, %._crit_edge, %bb.k, %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre51, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !25
  %i.bh = and i32 %i.bg, 4
  %.not261.i = icmp eq i32 %i.bh, 0
  br i1 %.not261.i, label %bb.y, label %bb.p

bb.p:                                             ; preds = %.critedge271.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre51, i64 24 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !36
  %i.bk = getelementptr inbounds nuw i8, ptr %.pre51, i64 28
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !35
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.q, label %zend_may_modify_arg_in_place.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !25
  %.not.i2 = icmp eq i8 %i.bo, 0
  br i1 %.not.i2, label %zend_may_modify_arg_in_place.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre51, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !25
  %i.br = and i32 %i.bq, 192
  %.not3.i = icmp eq i32 %i.br, 0
  br i1 %.not3.i, label %zend_may_modify_arg_in_place.exit, label %zend_may_modify_arg_in_place.exit.thread

zend_may_modify_arg_in_place.exit:                ; preds = %bb.r
  %i.bs = load i32, ptr %.pre51, align 8, !tbaa !29
  %i.bt = icmp eq i32 %i.bs, 1
  br i1 %i.bt, label %bb.s, label %zend_may_modify_arg_in_place.exit.thread

bb.s:                                             ; preds = %zend_may_modify_arg_in_place.exit
  store ptr %.pre51, ptr %1, align 8, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.bu, align 8, !tbaa !25
  br label %.loopexit

zend_may_modify_arg_in_place.exit.thread:         ; preds = %bb.p, %zend_may_modify_arg_in_place.exit, %bb.r, %bb.q
  %i.bv = trunc nuw nsw i64 %i.r to i32
  %i.bw = tail call ptr @_zend_new_array(i32 noundef %i.bv) #18 ; 8 uses
  store ptr %i.bw, ptr %1, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.bx, align 8, !tbaa !25
  tail call void @zend_hash_real_init_packed(ptr noundef %i.bw) #18
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 24 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !36 ; 4 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pre51, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !25 ; 2 uses
  %i.cd = load i32, ptr %i.bi, align 8, !tbaa !36 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %.idx = shl nuw nsw i64 %i.ce, 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx
  %.not266.i22 = icmp eq i32 %i.cd, 0
  br i1 %.not266.i22, label %._crit_edge29, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %zend_may_modify_arg_in_place.exit.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !25
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ca
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %bb.x
  %.0220.i25 = phi ptr [ %i.cz, %bb.x ], [ %i.cc, %.lr.ph28.preheader ] ; 5 uses
  %.0222.i24 = phi i32 [ %.1223.i, %bb.x ], [ %i.bz, %.lr.ph28.preheader ] ; 2 uses
  %.0224.i23 = phi ptr [ %.1225.i, %bb.x ], [ %i.ci, %.lr.ph28.preheader ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0220.i25, i64 8
  %i.ck = load i8, ptr %i.cj, align 8, !tbaa !25
  switch i8 %i.ck, label %.critedge275.i [
    i8 0, label %bb.x
    i8 10, label %bb.t
  ], !prof !137

bb.t:                                             ; preds = %.lr.ph28
  %i.cl = load ptr, ptr %.0220.i25, align 8, !tbaa !25 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !29
  %i.cn = icmp eq i32 %i.cm, 1
  br i1 %i.cn, label %bb.u, label %.critedge275.i, !prof !30

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  br label %.critedge275.i

.critedge275.i:                                   ; preds = %.lr.ph28, %bb.u, %bb.t
  %.0218.i = phi ptr [ %i.co, %bb.u ], [ %.0220.i25, %bb.t ], [ %.0220.i25, %.lr.ph28 ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0218.i, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.0218.i, i64 9
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !25
  %.not267.i = icmp eq i8 %i.cr, 0
  %.pre53 = load ptr, ptr %.0218.i, align 8, !tbaa !25 ; 3 uses
  br i1 %.not267.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge275.i
  %i.cs = load i32, ptr %.pre53, align 4, !tbaa !29
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %.pre53, align 4, !tbaa !29
  %.pre52 = load ptr, ptr %.0218.i, align 8, !tbaa !25
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge275.i
  %i.cu = phi ptr [ %.pre52, %bb.v ], [ %.pre53, %.critedge275.i ]
  %i.cv = load i32, ptr %i.cp, align 8, !tbaa !25
  store ptr %i.cu, ptr %.0224.i23, align 8, !tbaa !25
  %i.cw = getelementptr inbounds nuw i8, ptr %.0224.i23, i64 8
  store i32 %i.cv, ptr %i.cw, align 8, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %.0224.i23, i64 16
  %i.cy = add i32 %.0222.i24, 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph28, %bb.w
  %.1225.i = phi ptr [ %.0224.i23, %.lr.ph28 ], [ %i.cx, %bb.w ]
  %.1223.i = phi i32 [ %.0222.i24, %.lr.ph28 ], [ %i.cy, %bb.w ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0220.i25, i64 16 ; 2 uses
  %.not266.i = icmp eq ptr %i.cz, %i.cf
  br i1 %.not266.i, label %._crit_edge29.loopexit, label %.lr.ph28, !llvm.loop !4

._crit_edge29.loopexit:                           ; preds = %bb.x
  %.pre54 = load i32, ptr %i.by, align 8, !tbaa !36
  %.pre55 = zext i32 %.1223.i to i64
  br label %._crit_edge29

._crit_edge29:                                    ; preds = %._crit_edge29.loopexit, %zend_may_modify_arg_in_place.exit.thread
  %.pre-phi = phi i64 [ %.pre55, %._crit_edge29.loopexit ], [ %i.ca, %zend_may_modify_arg_in_place.exit.thread ]
  %i.da = phi i32 [ %.pre54, %._crit_edge29.loopexit ], [ %i.bz, %zend_may_modify_arg_in_place.exit.thread ]
  %.0222.i.lcssa = phi i32 [ %.1223.i, %._crit_edge29.loopexit ], [ %i.bz, %zend_may_modify_arg_in_place.exit.thread ] ; 2 uses
  %i.db = sub i32 %.0222.i.lcssa, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bw, i64 28 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !35
  %i.de = add i32 %i.db, %i.dd
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !35
  store i32 %.0222.i.lcssa, ptr %i.by, align 8, !tbaa !36
  %i.df = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  store i64 %.pre-phi, ptr %i.df, align 8, !tbaa !127
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  store i32 0, ptr %i.dg, align 4, !tbaa !129
  br label %.loopexit

bb.y:                                             ; preds = %.critedge271.i
  %i.dh = trunc nuw nsw i64 %i.r to i32
  %i.di = tail call ptr @_zend_new_array(i32 noundef %i.dh) #18 ; 10 uses
  store ptr %i.di, ptr %1, align 8, !tbaa !25
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 775, ptr %i.dj, align 8, !tbaa !25
  tail call void @zend_hash_real_init_mixed(ptr noundef %i.di) #18
  %i.dk = getelementptr inbounds nuw i8, ptr %.pre51, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !25 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre51, i64 24
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !36 ; 2 uses
  %i.do = zext i32 %i.dn to i64
  %.idx41 = shl nuw nsw i64 %i.do, 5
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx41
  %.not263.i31 = icmp eq i32 %i.dn, 0
  br i1 %.not263.i31, label %.loopexit, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.y
  %i.dq = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 28 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph35, %bb.ak
  %.0.i32 = phi ptr [ %i.dl, %.lr.ph35 ], [ %i.fw, %bb.ak ] ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i32, i64 8
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !25  ; 2 uses
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.ak, label %bb.aa, !prof !30

bb.aa:                                            ; preds = %bb.z
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i32, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !119 ; 8 uses
  %i.ea = icmp eq i8 %i.dw, 10
  br i1 %i.ea, label %bb.ab, label %.critedge277.i

bb.ab:                                            ; preds = %bb.aa
  %i.eb = load ptr, ptr %.0.i32, align 8, !tbaa !25 ; 2 uses
end_hunk_1
