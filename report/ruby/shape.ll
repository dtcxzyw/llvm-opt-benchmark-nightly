inline.NumInlined: 231
inline.NumDeleted: 74
begin_hunk_0_@rb_shape_transition_add_ivar:bb.a
  store i16 %i.z, ptr %i.aa, align 8, !tbaa !53
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = load i8, ptr %i.a, align 1, !tbaa !54, !range !28, !noundef !29
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.u, align 4, !tbaa !49
  %i.ag = add i8 %i.af, 1
  store i8 %i.ag, ptr %i.u, align 4, !tbaa !49
  %i.ah = tail call zeroext i1 @rb_warning_category_enabled_p(i32 noundef 3) #14
  br i1 %i.ah, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr %i.u, align 4, !tbaa !49
  %i.aj = icmp ugt i8 %i.ai, 7
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call i64 @rb_class_path(i64 noundef %.1.i) #14
  tail call void (i32, ptr, ...) @rb_category_warn(i32 noundef 3, ptr noundef nonnull @.str.8, i64 noundef %i.ak, i32 noundef 8) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.al = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17
  %i.am = ptrtoint ptr %i.x to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 40
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = and i32 %i.e, 264241152
  %i.as = or i32 %i.ar, %i.aq
  br label %transition_complex.exit

bb.k:                                             ; preds = %obj_get_owner_class.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.at = and i32 %i.e, 29360128                  ; 2 uses
  %.not.i11 = icmp eq i32 %i.at, 0
  br i1 %.not.i11, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = or disjoint i32 %i.at, 134217728        ; 2 uses
  %i.av = and i32 %i.e, 67108864
  %.not10.i = icmp eq i32 %i.av, 0
  br i1 %.not10.i, label %transition_complex.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = tail call fastcc i32 @shape_transition_object_id(i32 noundef %i.au), !inline_history !42
  br label %transition_complex.exit

bb.n:                                             ; preds = %bb.k
  %i.ax = and i32 %i.e, 67108864
  %.not11.i = icmp eq i32 %i.ax, 0
  %i.ay = and i32 %i.e, 33554432                  ; 2 uses
  br i1 %.not11.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = or disjoint i32 %i.ay, 201326593
  br label %transition_complex.exit

bb.p:                                             ; preds = %bb.n
  %i.ba = or disjoint i32 %i.ay, 134217728
  br label %transition_complex.exit

transition_complex.exit:                          ; preds = %bb.p, %bb.o, %bb.m, %bb.l, %bb.j
  %.0 = phi i32 [ %i.as, %bb.j ], [ %i.aw, %bb.m ], [ %i.au, %bb.l ], [ %i.az, %bb.o ], [ %i.ba, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_shape_transition_add_ivar_no_warnings(i64 noundef %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = and i32 %1, 524287
  %i.c = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr [40 x i8], ptr %i.c, i64 %i.d
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 148      ; 3 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !49
  %i.i = icmp ult i8 %i.h, 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.j = call fastcc ptr @get_next_shape_internal(ptr noundef %i.e, i64 noundef %2, i32 noundef 1, ptr noundef %i.a, i1 noundef zeroext %i.i) ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.j, i64 28
  %i.l = load i16, ptr %i.k, align 4, !tbaa !52   ; 2 uses
  %i.m = getelementptr i8, ptr %i.f, i64 144      ; 2 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !53
  %i.o = icmp ugt i16 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 %i.l, ptr %i.m, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = load i8, ptr %i.a, align 1, !tbaa !54, !range !28, !noundef !29
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.g, align 4, !tbaa !49
  %i.s = add i8 %i.r, 1
  store i8 %i.s, ptr %i.g, align 4, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.t = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = sdiv exact i64 %i.w, 40
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %1, 264241152
  %i.aa = or i32 %i.z, %i.y
  br label %transition_complex.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ab = and i32 %1, 29360128                    ; 2 uses
  %.not.i8 = icmp eq i32 %i.ab, 0
  br i1 %.not.i8, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = or disjoint i32 %i.ab, 134217728        ; 2 uses
  %i.ad = and i32 %1, 67108864
  %.not10.i = icmp eq i32 %i.ad, 0
  br i1 %.not10.i, label %transition_complex.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call fastcc i32 @shape_transition_object_id(i32 noundef %i.ac), !inline_history !42
  br label %transition_complex.exit

bb.j:                                             ; preds = %bb.g
  %i.af = and i32 %1, 67108864
  %.not11.i = icmp eq i32 %i.af, 0
  %i.ag = and i32 %1, 33554432                    ; 2 uses
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = or disjoint i32 %i.ag, 201326593
  br label %transition_complex.exit

bb.l:                                             ; preds = %bb.j
  %i.ai = or disjoint i32 %i.ag, 134217728
  br label %transition_complex.exit

transition_complex.exit:                          ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.f
  %.0 = phi i32 [ %i.aa, %bb.f ], [ %i.ae, %bb.i ], [ %i.ac, %bb.h ], [ %i.ah, %bb.k ], [ %i.ai, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef zeroext i1 @rb_shape_get_iv_index_with_hint(i32 noundef %0, i64 noundef %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i16, ptr %2, align 2, !tbaa !56
  %i.b = load i32, ptr %3, align 4, !tbaa !7      ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr %3, align 4, !tbaa !7
  %i.d = and i32 %0, 524287
  %i.e = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17 ; 4 uses
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr [40 x i8], ptr %i.e, i64 %i.f ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.g, i64 28
  %i.k = load i16, ptr %i.j, align 4, !tbaa !52
  %i.l = icmp ugt i16 %i.k, 9
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %.thread.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 32), align 8
  br label %bb.d

bb.d:                                             ; preds = %tailrecurse.backedge.i.i.i.i, %.lr.ph.i.i.i.i
  %.tr16.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %.tr.be.i.i.i.i, %tailrecurse.backedge.i.i.i.i ] ; 4 uses
  %i.n = load i64, ptr %.tr16.i.i.i.i, align 8, !tbaa !58 ; 2 uses
  %i.o = icmp eq i64 %i.n, %1
  br i1 %i.o, label %shape_cache_find_ivar.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = icmp ult i64 %1, %i.n
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %.tr16.i.i.i.i, i64 16
  %.val.i.i.i.i = load i32, ptr %i.q, align 8, !tbaa !60 ; 2 uses
  %i.r = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %i.r, label %rb_shape_get_iv_index.exit, label %tailrecurse.backedge.i.i.i.i

tailrecurse.backedge.i.i.i.i:                     ; preds = %bb.g, %bb.f
  %.pn.in.in.i.i.i.i = phi i32 [ %.val.i.i.i.i, %bb.f ], [ %.val13.i.i.i.i, %bb.g ]
  %.pn.in.i.i.i.i = add i32 %.pn.in.in.i.i.i.i, -1
  %.pn.i.i.i.i = zext i32 %.pn.in.i.i.i.i to i64
  %.tr.be.i.i.i.i = getelementptr [24 x i8], ptr %i.m, i64 %.pn.i.i.i.i ; 2 uses
  %i.s = icmp eq ptr %.tr.be.i.i.i.i, null
  br i1 %i.s, label %rb_shape_get_iv_index.exit, label %bb.d

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %.tr16.i.i.i.i, i64 20
  %.val13.i.i.i.i = load i32, ptr %i.t, align 4, !tbaa !61 ; 2 uses
  %i.u = icmp eq i32 %.val13.i.i.i.i, 0
  br i1 %i.u, label %rb_shape_get_iv_index.exit, label %tailrecurse.backedge.i.i.i.i

shape_cache_find_ivar.exit.i.i:                   ; preds = %bb.d
  %i.v = getelementptr i8, ptr %.tr16.i.i.i.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.w = ptrtoint ptr %.val.i.i.i to i64
  %i.x = and i64 %i.w, -2
  br label %bb.i

.thread.i.i:                                      ; preds = %bb.c, %bb.b
  %i.y = getelementptr i8, ptr %i.g, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !38   ; 2 uses
  %.not11.not.i.i.i = icmp eq i32 %i.z, -1
  br i1 %.not11.not.i.i.i, label %rb_shape_get_iv_index.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread.i.i, %bb.h
  %i.aa = phi i32 [ %i.ai, %bb.h ], [ %i.z, %.thread.i.i ]
  %.0612.i.i.i = phi ptr [ %i.ag, %bb.h ], [ %i.g, %.thread.i.i ] ; 2 uses
  %i.ab = getelementptr i8, ptr %.0612.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !48
  %i.ad = icmp eq i64 %i.ac, %1
  br i1 %i.ad, label %shape_find_ivar.exit.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.ae = and i32 %i.aa, 524287
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr [40 x i8], ptr %i.e, i64 %i.af ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !38 ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %i.ai, -1
  br i1 %.not.not.i.i.i, label %rb_shape_get_iv_index.exit, label %.lr.ph.i.i.i, !llvm.loop !63

shape_find_ivar.exit.loopexit.i.i:                ; preds = %.lr.ph.i.i.i
  %i.aj = ptrtoint ptr %.0612.i.i.i to i64
  br label %bb.i

bb.i:                                             ; preds = %shape_find_ivar.exit.loopexit.i.i, %shape_cache_find_ivar.exit.i.i
  %.09.i.i = phi i64 [ %i.x, %shape_cache_find_ivar.exit.i.i ], [ %i.aj, %shape_find_ivar.exit.loopexit.i.i ]
  %i.ak = ptrtoint ptr %i.e to i64
  %i.al = sub i64 %.09.i.i, %i.ak
  %i.am = sdiv exact i64 %i.al, 40
  %i.an = and i64 %i.am, 524287
  %i.ao = getelementptr [40 x i8], ptr %i.e, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 28
  %i.aq = load i16, ptr %i.ap, align 4, !tbaa !52
  %i.ar = add i16 %i.aq, -1
  store i16 %i.ar, ptr %2, align 2, !tbaa !56
  br label %rb_shape_get_iv_index.exit

bb.j:                                             ; preds = %bb.a
  %i.as = and i32 %0, 524287
  %i.at = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17 ; 6 uses
  %i.au = zext nneg i32 %i.as to i64
  %i.av = getelementptr [40 x i8], ptr %i.at, i64 %i.au ; 4 uses
  %i.aw = and i32 %i.b, 524287
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr [40 x i8], ptr %i.at, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.av, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57
  %.not = icmp ne ptr %i.ba, null                 ; 2 uses
  br i1 %.not, label %bb.k, label %.preheader112

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr i8, ptr %i.av, i64 28
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !52
  %i.bd = icmp ugt i16 %i.bc, 9
  %spec.select = select i1 %i.bd, i32 2, i32 2147483647
  br label %.preheader112

.preheader112:                                    ; preds = %bb.k, %bb.j
  %.163.ph = phi i32 [ %spec.select, %bb.k ], [ 2147483647, %bb.j ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader112, %bb.p
  %.163 = phi i32 [ %i.cm, %bb.p ], [ %.163.ph, %.preheader112 ] ; 2 uses
  %.04062 = phi ptr [ %.141.lcssa, %bb.p ], [ %i.ay, %.preheader112 ] ; 3 uses
  %.04461 = phi ptr [ %i.cl, %bb.p ], [ %i.av, %.preheader112 ] ; 7 uses
  %i.be = getelementptr i8, ptr %.04461, i64 28
  %i.bf = load i16, ptr %i.be, align 4, !tbaa !52 ; 4 uses
  %i.bg = icmp ugt i16 %i.bf, %i.a
  br i1 %i.bg, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.l
  %i.bh = getelementptr i8, ptr %.04062, i64 28
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !52
  %i.bj = icmp ugt i16 %i.bi, %i.bf
  br i1 %i.bj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.14160 = phi ptr [ %i.bo, %.lr.ph ], [ %.04062, %.preheader ]
  %i.bk = getelementptr i8, ptr %.14160, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !38
  %i.bm = and i32 %i.bl, 524287
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr [40 x i8], ptr %i.at, i64 %i.bn ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 28
  %i.bq = load i16, ptr %i.bp, align 4, !tbaa !52
  %i.br = icmp ugt i16 %i.bq, %i.bf
  br i1 %i.br, label %.lr.ph, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.141.lcssa = phi ptr [ %.04062, %.preheader ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.bs = icmp eq ptr %.141.lcssa, %.04461
  br i1 %i.bs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  %i.bt = ptrtoint ptr %.04461 to i64
  %i.bu = ptrtoint ptr %i.at to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 40
  %i.bx = trunc i64 %i.bw to i32
  store i32 %i.bx, ptr %3, align 4, !tbaa !7
  br label %rb_shape_get_iv_index.exit

bb.n:                                             ; preds = %._crit_edge
  %i.by = getelementptr i8, ptr %.04461, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !48
  %i.ca = icmp eq i64 %i.bz, %1
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cb = add i16 %i.bf, -1
  store i16 %i.cb, ptr %2, align 2, !tbaa !56
  %i.cc = ptrtoint ptr %.04461 to i64
  %i.cd = ptrtoint ptr %i.at to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = sdiv exact i64 %i.ce, 40
  %i.cg = trunc i64 %i.cf to i32
  store i32 %i.cg, ptr %3, align 4, !tbaa !7
  br label %rb_shape_get_iv_index.exit

bb.p:                                             ; preds = %bb.n
  %i.ch = getelementptr i8, ptr %.04461, i64 24
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !38
  %i.cj = and i32 %i.ci, 524287
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr [40 x i8], ptr %i.at, i64 %i.ck ; 2 uses
  %i.cm = add nsw i32 %.163, -1
  %i.cn = icmp sgt i32 %.163, 1
  br i1 %i.cn, label %bb.l, label %.critedge, !llvm.loop !65

.critedge:                                        ; preds = %bb.p, %bb.l
  %.044.lcssa = phi ptr [ %i.cl, %bb.p ], [ %.04461, %bb.l ] ; 2 uses
  %i.co = getelementptr i8, ptr %.044.lcssa, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !57
  %.not47 = icmp eq ptr %i.cp, null
  %i.cq = and i1 %.not, %.not47
  %spec.select50 = select i1 %i.cq, ptr %i.av, ptr %.044.lcssa ; 2 uses
  store i32 %0, ptr %3, align 4, !tbaa !7
  %i.cr = getelementptr i8, ptr %spec.select50, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !38 ; 2 uses
  %.not15.i = icmp eq i32 %i.cs, -1
  br i1 %.not15.i, label %rb_shape_get_iv_index.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.ct = load ptr, ptr @rb_shape_tree, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.u, %.lr.ph.i
  %i.cu = phi i32 [ %i.cs, %.lr.ph.i ], [ %i.dh, %bb.u ]
  %.01016.i = phi ptr [ %spec.select50, %.lr.ph.i ], [ %i.df, %bb.u ] ; 3 uses
  %i.cv = getelementptr i8, ptr %.01016.i, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !48
  %i.cx = icmp eq i64 %i.cw, %1
  br i1 %i.cx, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.cy = getelementptr i8, ptr %.01016.i, i64 32
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !43
  switch i8 %i.cz, label %bb.u [
    i8 1, label %bb.s
    i8 0, label %rb_shape_get_iv_index.exit
    i8 2, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr i8, ptr %.01016.i, i64 28
  %i.db = load i16, ptr %i.da, align 4, !tbaa !52
  %i.dc = add i16 %i.db, -1
  store i16 %i.dc, ptr %2, align 2, !tbaa !56
  br label %rb_shape_get_iv_index.exit

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.9) #15
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.dd = and i32 %i.cu, 524287
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr [40 x i8], ptr %i.ct, i64 %i.de ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 24
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !38 ; 2 uses
  %.not.i = icmp eq i32 %i.dh, -1
  br i1 %.not.i, label %rb_shape_get_iv_index.exit, label %bb.q, !llvm.loop !66

rb_shape_get_iv_index.exit:                       ; preds = %bb.u, %bb.r, %bb.g, %tailrecurse.backedge.i.i.i.i, %bb.f, %bb.h, %bb.s, %.critedge, %bb.i, %.thread.i.i, %bb.m, %bb.o
  %.143 = phi i1 [ false, %.critedge ], [ true, %bb.m ], [ true, %bb.o ], [ true, %bb.i ], [ true, %bb.s ], [ false, %.thread.i.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ], [ false, %tailrecurse.backedge.i.i.i.i ], [ false, %bb.r ], [ false, %bb.u ]
  ret i1 %.143
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @rb_shape_get_iv_index(i32 noundef %0, i64 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %0, 524287
  %i.b = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17 ; 4 uses
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr [40 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 28
  %i.h = load i16, ptr %i.g, align 4, !tbaa !52
  %i.i = icmp ugt i16 %i.h, 9
  br i1 %i.i, label %.lr.ph.i.i.i, label %.thread.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 32), align 8
  br label %bb.c

bb.c:                                             ; preds = %tailrecurse.backedge.i.i.i, %.lr.ph.i.i.i
  %.tr16.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.tr.be.i.i.i, %tailrecurse.backedge.i.i.i ] ; 4 uses
  %i.k = load i64, ptr %.tr16.i.i.i, align 8, !tbaa !58 ; 2 uses
  %i.l = icmp eq i64 %i.k, %1
  br i1 %i.l, label %shape_cache_find_ivar.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %1, %i.k
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %.tr16.i.i.i, i64 16
  %.val.i.i.i = load i32, ptr %i.n, align 8, !tbaa !60 ; 2 uses
  %i.o = icmp eq i32 %.val.i.i.i, 0
  br i1 %i.o, label %rb_shape_find_ivar.exit.thread, label %tailrecurse.backedge.i.i.i

tailrecurse.backedge.i.i.i:                       ; preds = %bb.f, %bb.e
  %.pn.in.in.i.i.i = phi i32 [ %.val.i.i.i, %bb.e ], [ %.val13.i.i.i, %bb.f ]
  %.pn.in.i.i.i = add i32 %.pn.in.in.i.i.i, -1
  %.pn.i.i.i = zext i32 %.pn.in.i.i.i to i64
  %.tr.be.i.i.i = getelementptr [24 x i8], ptr %i.j, i64 %.pn.i.i.i ; 2 uses
  %i.p = icmp eq ptr %.tr.be.i.i.i, null
  br i1 %i.p, label %rb_shape_find_ivar.exit.thread, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.tr16.i.i.i, i64 20
  %.val13.i.i.i = load i32, ptr %i.q, align 4, !tbaa !61 ; 2 uses
  %i.r = icmp eq i32 %.val13.i.i.i, 0
  br i1 %i.r, label %rb_shape_find_ivar.exit.thread, label %tailrecurse.backedge.i.i.i

shape_cache_find_ivar.exit.i:                     ; preds = %bb.c
  %i.s = getelementptr i8, ptr %.tr16.i.i.i, i64 8
  %.val.i.i = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.t = ptrtoint ptr %.val.i.i to i64
  %i.u = and i64 %i.t, -2
  br label %bb.h

.thread.i:                                        ; preds = %bb.b, %bb.a
  %i.v = getelementptr i8, ptr %i.d, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !38   ; 2 uses
  %.not11.not.i.i = icmp eq i32 %i.w, -1
  br i1 %.not11.not.i.i, label %rb_shape_find_ivar.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread.i, %bb.g
  %i.x = phi i32 [ %i.af, %bb.g ], [ %i.w, %.thread.i ]
  %.0612.i.i = phi ptr [ %i.ad, %bb.g ], [ %i.d, %.thread.i ] ; 2 uses
  %i.y = getelementptr i8, ptr %.0612.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !48
  %i.aa = icmp eq i64 %i.z, %1
  br i1 %i.aa, label %shape_find_ivar.exit.loopexit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ab = and i32 %i.x, 524287
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr [40 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %.not.not.i.i = icmp eq i32 %i.af, -1
  br i1 %.not.not.i.i, label %rb_shape_find_ivar.exit.thread, label %.lr.ph.i.i, !llvm.loop !63

shape_find_ivar.exit.loopexit.i:                  ; preds = %.lr.ph.i.i
  %i.ag = ptrtoint ptr %.0612.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %shape_find_ivar.exit.loopexit.i, %shape_cache_find_ivar.exit.i
  %.09.i = phi i64 [ %i.u, %shape_cache_find_ivar.exit.i ], [ %i.ag, %shape_find_ivar.exit.loopexit.i ]
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %.09.i, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 40
  %i.ak = and i64 %i.aj, 524287
  %i.al = getelementptr [40 x i8], ptr %i.b, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 28
  %i.an = load i16, ptr %i.am, align 4, !tbaa !52
  %i.ao = add i16 %i.an, -1
  store i16 %i.ao, ptr %2, align 2, !tbaa !56
  br label %rb_shape_find_ivar.exit.thread

rb_shape_find_ivar.exit.thread:                   ; preds = %bb.e, %tailrecurse.backedge.i.i.i, %bb.f, %bb.g, %.thread.i, %bb.h
  %.0.i5 = phi i1 [ true, %bb.h ], [ false, %bb.g ], [ false, %.thread.i ], [ false, %bb.f ], [ false, %tailrecurse.backedge.i.i.i ], [ false, %bb.e ]
  ret i1 %.0.i5
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @rb_shape_find_ivar(i32 noundef %0, i64 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #6 {
bb.a:
  %i.a = and i32 %0, 524287
  %i.b = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17 ; 3 uses
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr [40 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 28
  %i.h = load i16, ptr %i.g, align 4, !tbaa !52
  %i.i = icmp ugt i16 %i.h, 9
  br i1 %i.i, label %.lr.ph.i.i, label %.thread

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 32), align 8
  br label %bb.c

bb.c:                                             ; preds = %tailrecurse.backedge.i.i, %.lr.ph.i.i
  %.tr16.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %.tr.be.i.i, %tailrecurse.backedge.i.i ] ; 4 uses
  %i.k = load i64, ptr %.tr16.i.i, align 8, !tbaa !58 ; 2 uses
  %i.l = icmp eq i64 %i.k, %1
  br i1 %i.l, label %shape_cache_find_ivar.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp ult i64 %1, %i.k
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %.tr16.i.i, i64 16
  %.val.i.i = load i32, ptr %i.n, align 8, !tbaa !60 ; 2 uses
  %i.o = icmp eq i32 %.val.i.i, 0
  br i1 %i.o, label %shape_find_ivar.exit.thread, label %tailrecurse.backedge.i.i

tailrecurse.backedge.i.i:                         ; preds = %bb.f, %bb.e
  %.pn.in.in.i.i = phi i32 [ %.val.i.i, %bb.e ], [ %.val13.i.i, %bb.f ]
  %.pn.in.i.i = add i32 %.pn.in.in.i.i, -1
  %.pn.i.i = zext i32 %.pn.in.i.i to i64
  %.tr.be.i.i = getelementptr [24 x i8], ptr %i.j, i64 %.pn.i.i ; 2 uses
  %i.p = icmp eq ptr %.tr.be.i.i, null
  br i1 %i.p, label %shape_find_ivar.exit.thread, label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.tr16.i.i, i64 20
  %.val13.i.i = load i32, ptr %i.q, align 4, !tbaa !61 ; 2 uses
  %i.r = icmp eq i32 %.val13.i.i, 0
  br i1 %i.r, label %shape_find_ivar.exit.thread, label %tailrecurse.backedge.i.i

shape_cache_find_ivar.exit:                       ; preds = %bb.c
  %i.s = getelementptr i8, ptr %.tr16.i.i, i64 8
  %.val.i = load ptr, ptr %i.s, align 8, !tbaa !62
  %i.t = ptrtoint ptr %.val.i to i64
  %i.u = and i64 %i.t, -2
  br label %shape_find_ivar.exit

.thread:                                          ; preds = %bb.b, %bb.a
  %i.v = getelementptr i8, ptr %i.d, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !38   ; 2 uses
  %.not11.not.i = icmp eq i32 %i.w, -1
  br i1 %.not11.not.i, label %shape_find_ivar.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread, %bb.g
  %i.x = phi i32 [ %i.af, %bb.g ], [ %i.w, %.thread ]
  %.0612.i = phi ptr [ %i.ad, %bb.g ], [ %i.d, %.thread ] ; 2 uses
  %i.y = getelementptr i8, ptr %.0612.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !48
  %i.aa = icmp eq i64 %i.z, %1
  br i1 %i.aa, label %shape_find_ivar.exit.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ab = and i32 %i.x, 524287
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr [40 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !38 ; 2 uses
  %.not.not.i = icmp eq i32 %i.af, -1
  br i1 %.not.not.i, label %shape_find_ivar.exit.thread, label %.lr.ph.i, !llvm.loop !63

shape_find_ivar.exit.loopexit:                    ; preds = %.lr.ph.i
  %i.ag = ptrtoint ptr %.0612.i to i64
  br label %shape_find_ivar.exit

shape_find_ivar.exit:                             ; preds = %shape_find_ivar.exit.loopexit, %shape_cache_find_ivar.exit
  %.09 = phi i64 [ %i.u, %shape_cache_find_ivar.exit ], [ %i.ag, %shape_find_ivar.exit.loopexit ]
  %i.ah = ptrtoint ptr %i.b to i64
  %i.ai = sub i64 %.09, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 40
  %i.ak = trunc i64 %i.aj to i32
  %i.al = and i32 %0, 264241152
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %2, align 4, !tbaa !7
  br label %shape_find_ivar.exit.thread

shape_find_ivar.exit.thread:                      ; preds = %bb.e, %bb.f, %tailrecurse.backedge.i.i, %bb.g, %.thread, %shape_find_ivar.exit
  %.0 = phi i1 [ true, %shape_find_ivar.exit ], [ false, %bb.g ], [ false, %.thread ], [ false, %tailrecurse.backedge.i.i ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef i32 @rb_shape_id_offset() local_unnamed_addr #7 {
bb.a:
  ret i32 4
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_shape_rebuild(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %0, 524287
  %i.b = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17 ; 2 uses
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr [40 x i8], ptr %i.b, i64 %i.c
  %i.e = and i32 %1, 524287
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr [40 x i8], ptr %i.b, i64 %i.f
  %i.h = tail call fastcc ptr @shape_rebuild(ptr noundef %i.d, ptr noundef %i.g) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 40
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %0, 264241152
  %i.p = or i32 %i.o, %i.n
  br label %transition_complex.exit

bb.c:                                             ; preds = %bb.a
  %i.q = or i32 %1, %0                            ; 2 uses
  %i.r = and i32 %0, 29360128                     ; 2 uses
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = or disjoint i32 %i.r, 134217728          ; 2 uses
  %i.t = and i32 %i.q, 67108864
  %.not10.i = icmp eq i32 %i.t, 0
  br i1 %.not10.i, label %transition_complex.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call fastcc i32 @shape_transition_object_id(i32 noundef %i.s), !inline_history !42
  br label %transition_complex.exit

bb.f:                                             ; preds = %bb.c
  %i.v = and i32 %i.q, 67108864
  %.not11.i = icmp eq i32 %i.v, 0
  %i.w = and i32 %0, 33554432                     ; 2 uses
  br i1 %.not11.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = or disjoint i32 %i.w, 201326593
  br label %transition_complex.exit

bb.h:                                             ; preds = %bb.f
  %i.y = or disjoint i32 %i.w, 134217728
  br label %transition_complex.exit

transition_complex.exit:                          ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.p, %bb.b ], [ %i.u, %bb.e ], [ %i.s, %bb.d ], [ %i.x, %bb.g ], [ %i.y, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @shape_rebuild(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = getelementptr i8, ptr %1, i64 32         ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !43    ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !43
  %.not = icmp eq i8 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !38
  %i.h = and i32 %i.g, 524287
  %i.i = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr [40 x i8], ptr %i.i, i64 %i.j
  %i.l = tail call fastcc ptr @shape_rebuild(ptr noundef nonnull %0, ptr noundef %i.k) ; 2 uses
  %.not12 = icmp eq ptr %i.l, null
  br i1 %.not12, label %bb.e, label %thread-pre-split, !prof !44

thread-pre-split:                                 ; preds = %bb.b
  %.pr = load i8, ptr %i.b, align 8, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.m = phi i8 [ %.pr, %thread-pre-split ], [ %i.c, %bb.a ]
  %.0 = phi ptr [ %i.l, %thread-pre-split ], [ %0, %bb.a ] ; 2 uses
  %cond = icmp eq i8 %i.m, 1
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.p = call fastcc ptr @get_next_shape_internal(ptr noundef nonnull %.0, i64 noundef %i.o, i32 noundef 1, ptr noundef %i.a, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.011 = phi ptr [ null, %bb.b ], [ %i.p, %bb.d ], [ %.0, %bb.c ]
  ret ptr %.011
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_shape_copy_fields(i64 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %2, 524287
  %i.b = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17 ; 3 uses
  %i.c = zext nneg i32 %i.a to i64
  %i.d = getelementptr [40 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = and i32 %4, 524287
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr [40 x i8], ptr %i.b, i64 %i.f ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 28
  %i.i = load i16, ptr %i.h, align 4, !tbaa !52   ; 3 uses
  %i.j = getelementptr i8, ptr %i.d, i64 28       ; 3 uses
  %i.k = load i16, ptr %i.j, align 4, !tbaa !52
  %i.l = icmp eq i16 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %.preheader30

.preheader30:                                     ; preds = %bb.a
  %i.m = getelementptr i8, ptr %i.g, i64 24       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %.not36 = icmp eq i32 %i.n, -1
  br i1 %.not36, label %.loopexit, label %.lr.ph39

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i16 %i.i, 0
  br i1 %.not.i, label %.loopexit, label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.b
  %i.o = zext i16 %i.i to i64
  %i.p = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull readonly align 1 %3, i64 noundef range(i64 1, 524281) %i.p, i1 noundef false) #14
  %.pre46 = load i16, ptr %i.j, align 4, !tbaa !52 ; 2 uses
  %.not42 = icmp eq i16 %.pre46, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph41

.lr.ph41:                                         ; preds = %ruby_nonempty_memcpy.exit, %rb_obj_written.exit
  %i.q = phi i16 [ %i.x, %rb_obj_written.exit ], [ %.pre46, %ruby_nonempty_memcpy.exit ]
end_hunk_0
begin_hunk_1_@Init_default_shapes:bb.a
  store <2 x i16> %i.o, ptr %i.q, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader39

.lr.ph.preheader39:                               ; preds = %.lr.ph.preheader, %middle.block
  %.02127.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader39, %.lr.ph
  %.02127 = phi i64 [ %i.y, %.lr.ph ], [ %.02127.ph, %.lr.ph.preheader39 ] ; 3 uses
  %i.s = getelementptr [8 x i8], ptr %i.b, i64 %.02127
  %i.t = load i64, ptr %i.s, align 8, !tbaa !41
  %i.u = add i64 %i.t, 524272
  %i.v = lshr i64 %i.u, 3
  %i.w = trunc i64 %i.v to i16
  %i.x = getelementptr [2 x i8], ptr %i.f, i64 %.02127
  store i16 %i.w, ptr %i.x, align 2, !tbaa !56
  %i.y = add nuw i64 %.02127, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %.0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.c
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !76
  %i.z = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !41
  %i.aa = tail call i64 @rb_size_mul_or_raise(i64 noundef 524288, i64 noundef 40, i64 noundef %i.z) #14 ; 2 uses
  %i.ab = tail call ptr @mmap(ptr noundef null, i64 noundef %i.aa, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #14 ; 3 uses
  store ptr %i.ab, ptr @rb_shape_tree, align 8, !tbaa !17
  %i.ac = icmp eq ptr %i.ab, inttoptr (i64 -1 to ptr)
  br i1 %i.ac, label %.thread, label %bb.d

.thread:                                          ; preds = %._crit_edge
  store ptr null, ptr @rb_shape_tree, align 8, !tbaa !17
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  tail call void @ruby_annotate_mmap(ptr noundef %i.ab, i64 noundef %i.aa, ptr noundef nonnull @.str.5) #14
  %.pr = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17
  %.not24 = icmp eq ptr %.pr, null
  br i1 %.not24, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  tail call void @rb_memerror() #15
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ad = tail call i64 @rb_make_internal_id() #14
  store i64 %i.ad, ptr @id_object_id, align 8, !tbaa !41
  %i.ae = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !41
  %i.af = tail call i64 @rb_size_mul_or_raise(i64 noundef 16777216, i64 noundef 24, i64 noundef %i.ae) #14 ; 2 uses
  %i.ag = tail call ptr @mmap(ptr noundef null, i64 noundef %i.af, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #14 ; 3 uses
  store ptr %i.ag, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 32), align 8, !tbaa !77
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 40), align 8, !tbaa !78
  %i.ah = icmp eq ptr %i.ag, inttoptr (i64 -1 to ptr)
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 32), align 8, !tbaa !77
  store i32 16777216, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 40), align 8, !tbaa !78
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @ruby_annotate_mmap(ptr noundef %i.ag, i64 noundef %i.af, ptr noundef nonnull @.str.6) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @rb_gc_register_address(ptr noundef nonnull @shape_tree_obj) #14
  %i.ai = tail call i64 @rb_data_typed_object_wrap(i64 noundef 0, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull @shape_tree_type) #14
  store i64 %i.ai, ptr @shape_tree_obj, align 8, !tbaa !41
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.aj = load atomic volatile i32, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 24) seq_cst, align 8 ; 5 uses
  %i.ak = icmp ugt i32 %i.aj, 524287
  br i1 %i.ak, label %rb_shape_alloc_with_parent_id.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = add nuw nsw i32 %i.aj, 1
  %i.am = cmpxchg volatile ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 24), i32 %i.aj, i32 %i.al seq_cst seq_cst, align 4
  %i.an = extractvalue { i32, i1 } %i.am, 0
  %.not.i.i = icmp eq i32 %i.aj, %i.an
  br i1 %.not.i.i, label %shape_alloc.exit.i, label %bb.j, !llvm.loop !79

shape_alloc.exit.i:                               ; preds = %bb.k
  %i.ao = load ptr, ptr @rb_shape_tree, align 8, !tbaa !17
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = getelementptr [40 x i8], ptr %i.ao, i64 %i.ap ; 6 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %rb_shape_alloc_with_parent_id.exit, label %bb.l

bb.l:                                             ; preds = %shape_alloc.exit.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !48
  %i.as = getelementptr i8, ptr %i.aq, i64 28
  store i16 0, ptr %i.as, align 4, !tbaa !52
  %i.at = getelementptr i8, ptr %i.aq, i64 24
  store i32 -1, ptr %i.at, align 8, !tbaa !38
  store i64 0, ptr %i.aq, align 8, !tbaa !70
  br label %rb_shape_alloc_with_parent_id.exit

rb_shape_alloc_with_parent_id.exit:               ; preds = %bb.j, %shape_alloc.exit.i, %bb.l
  %.0.i = phi ptr [ %i.aq, %bb.l ], [ null, %shape_alloc.exit.i ], [ null, %bb.j ] ; 4 uses
  %i.au = getelementptr i8, ptr %.0.i, i64 30
  store i16 0, ptr %i.au, align 2, !tbaa !80
  %i.av = getelementptr i8, ptr %.0.i, i64 32
  store i8 0, ptr %i.av, align 8, !tbaa !43
  store ptr %.0.i, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 8), align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.aw = load i64, ptr @id_object_id, align 8, !tbaa !41
  %i.ax = call fastcc ptr @get_next_shape_internal(ptr noundef %.0.i, i64 noundef %i.aw, i32 noundef 2, ptr noundef %i.a, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare ptr @rb_gc_heap_sizes() local_unnamed_addr #8

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #9

declare i64 @rb_size_mul_or_raise(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

declare void @ruby_annotate_mmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: cold noreturn
declare void @rb_memerror() local_unnamed_addr #3

declare i64 @rb_make_internal_id() local_unnamed_addr #8

declare void @rb_gc_register_address(ptr noundef) local_unnamed_addr #8

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @get_next_shape_internal(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 0, 256) %2, ptr noundef nonnull writeonly captures(none) initializes((0, 1)) %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.e, null
  store i8 0, ptr %3, align 1, !tbaa !54
  br i1 %.not.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %.split49.i, label %.split49.us.i

.split49.us.i:                                    ; preds = %bb.b
  %i.f = load atomic ptr, ptr %0 seq_cst, align 8 ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 3 uses
  %.not.us.i = icmp eq ptr %i.f, null
  br i1 %.not.us.i, label %get_next_shape_internal_atomic.exit, label %bb.c

bb.c:                                             ; preds = %.split49.us.i
  %i.h = and i64 %i.g, 1
  %.not39.us.i = icmp eq i64 %i.h, 0
  br i1 %.not39.us.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.g, -2
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !48
  %i.m = icmp eq i64 %i.l, %1
  %spec.select.us.i = select i1 %i.m, ptr %i.j, ptr null
  br label %get_next_shape_internal_atomic.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.n = call i32 @rb_managed_id_table_lookup(i64 noundef %i.g, i64 noundef %1, ptr noundef nonnull %i.a) #14
  %.not40.us.i = icmp eq i32 %i.n, 0
  %i.o = load i64, ptr %i.a, align 8
  %i.p = inttoptr i64 %i.o to ptr
  %.2.us.i = select i1 %.not40.us.i, ptr null, ptr %i.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %get_next_shape_internal_atomic.exit

.split49.i:                                       ; preds = %bb.b, %bb.n
  %i.q = load atomic ptr, ptr %0 seq_cst, align 8 ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 6 uses
  %.not.i44 = icmp eq ptr %i.q, null
  br i1 %.not.i44, label %.thread56.thread.i, label %bb.f

bb.f:                                             ; preds = %.split49.i
  %i.s = and i64 %i.r, 1
  %.not39.i = icmp eq i64 %i.s, 0
  br i1 %.not39.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = and i64 %i.r, -2                         ; 2 uses
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !48
  %i.x = icmp eq i64 %i.w, %1
  br i1 %i.x, label %get_next_shape_internal_atomic.exit, label %.thread56.i.thread

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.y = call i32 @rb_managed_id_table_lookup(i64 noundef %i.r, i64 noundef %1, ptr noundef nonnull %i.a) #14
  %.not40.i = icmp eq i32 %i.y, 0
  %i.z = load i64, ptr %i.a, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %.not40.i, label %.thread56.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.thread61.i, label %get_next_shape_internal_atomic.exit.loopexit.split.loop.exit48

.thread56.i:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ab = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %2) ; 2 uses
  %.not41.i = icmp eq ptr %i.ab, null
  br i1 %.not41.i, label %.thread.i, label %.thread63.i

.thread56.i.thread:                               ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ac = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %2) ; 2 uses
  %.not41.i46 = icmp eq ptr %i.ac, null
  br i1 %.not41.i46, label %.thread.i, label %bb.j

.thread56.thread.i:                               ; preds = %.split49.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ad = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %2) ; 3 uses
  %.not4164.i = icmp eq ptr %i.ad, null
  br i1 %.not4164.i, label %.thread.i, label %.split.i

.thread61.i:                                      ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ae = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef range(i32 0, 256) %2) ; 2 uses
  %.not4162.i = icmp eq ptr %i.ae, null
  br i1 %.not4162.i, label %.thread.i, label %.thread63.i

.split.i:                                         ; preds = %.thread56.thread.i
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = or i64 %i.af, 1                         ; 2 uses
  store i64 %i.ag, ptr %i.b, align 8, !tbaa !41
  %i.ah = cmpxchg volatile ptr %0, i64 0, i64 %i.ag seq_cst seq_cst, align 8
  br label %bb.k

bb.j:                                             ; preds = %.thread56.i.thread
  %i.ai = call i64 @rb_managed_id_table_new(i64 noundef 2) #14 ; 3 uses
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !41
  %i.aj = load i64, ptr %i.v, align 8, !tbaa !48
  %i.ak = call i32 @rb_managed_id_table_insert(i64 noundef %i.ai, i64 noundef %i.aj, i64 noundef %i.t) #14 ; 0 uses
  br label %.split35.i

.thread63.i:                                      ; preds = %.thread61.i, %.thread56.i
  %i.al = phi ptr [ %i.ab, %.thread56.i ], [ %i.ae, %.thread61.i ]
  %i.am = call i64 @rb_managed_id_table_dup(i64 noundef %i.r) #14 ; 2 uses
  store i64 %i.am, ptr %i.b, align 8, !tbaa !41
  br label %.split35.i

.split35.i:                                       ; preds = %.thread63.i, %bb.j
  %i.an = phi ptr [ %i.al, %.thread63.i ], [ %i.ac, %bb.j ] ; 3 uses
  %i.ao = phi i64 [ %i.am, %.thread63.i ], [ %i.ai, %bb.j ] ; 2 uses
  %i.ap = getelementptr i8, ptr %i.an, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !48
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = call i32 @rb_managed_id_table_insert(i64 noundef %i.ao, i64 noundef %i.aq, i64 noundef %i.ar) #14 ; 0 uses
  store i8 1, ptr %3, align 1, !tbaa !54
  %i.at = cmpxchg volatile ptr %0, i64 %i.r, i64 %i.ao seq_cst seq_cst, align 8
  br label %bb.k

bb.k:                                             ; preds = %.split35.i, %.split.i
  %i.au = phi ptr [ %i.ad, %.split.i ], [ %i.an, %.split35.i ]
  %.pn.i = phi { i64, i1 } [ %i.ah, %.split.i ], [ %i.at, %.split35.i ]
  %phi.call.i = extractvalue { i64, i1 } %.pn.i, 0
  %.not43.i = icmp eq i64 %phi.call.i, %i.r
  br i1 %.not43.i, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.av = load i64, ptr %i.b, align 8, !tbaa !41  ; 3 uses
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = and i64 %i.av, 7
  %i.ay = icmp ne i64 %i.ax, 0
  %i.az = or i1 %i.aw, %i.ay
  br i1 %i.az, label %rb_obj_written.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = load i64, ptr @shape_tree_obj, align 8, !tbaa !41
  call void @rb_gc_writebarrier(i64 noundef %i.ba, i64 noundef %i.av) #14
  br label %rb_obj_written.exit.i

rb_obj_written.exit.i:                            ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr %i.b, ptr %i.c, align 8, !tbaa !83
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #14, !srcloc !84
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.bc = load volatile i64, ptr %i.bb, align 8, !tbaa !41 ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %.thread56.i.thread, %.thread61.i, %.thread56.thread.i, %.thread56.i, %rb_obj_written.exit.i
  %i.bd = phi ptr [ %i.au, %rb_obj_written.exit.i ], [ null, %.thread56.i ], [ null, %.thread56.thread.i ], [ null, %.thread61.i ], [ null, %.thread56.i.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %get_next_shape_internal_atomic.exit

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.split49.i

bb.o:                                             ; preds = %bb.a
  %i.be = load i64, ptr %0, align 8, !tbaa !70    ; 6 uses
  %.not = icmp eq i64 %i.be, 0                    ; 2 uses
  br i1 %.not, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = and i64 %i.be, 1
  %.not39 = icmp eq i64 %i.bf, 0
  br i1 %.not39, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = and i64 %i.be, -2
  %i.bh = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !48
  %i.bk = icmp eq i64 %i.bj, %1
  %spec.select = select i1 %i.bk, ptr %i.bh, ptr null
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  %i.bl = call i32 @rb_managed_id_table_lookup(i64 noundef %i.be, i64 noundef %1, ptr noundef nonnull %i.d) #14
  %.not40 = icmp eq i32 %i.bl, 0
  %i.bm = load i64, ptr %i.d, align 8
  %i.bn = inttoptr i64 %i.bm to ptr
  %.1 = select i1 %.not40, ptr null, ptr %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.o
  %.2 = phi ptr [ %spec.select, %bb.q ], [ %.1, %bb.r ], [ null, %bb.o ] ; 2 uses
  %.not41 = icmp eq ptr %.2, null
  %brmerge.not = and i1 %4, %.not41
  br i1 %brmerge.not, label %bb.t, label %get_next_shape_internal_atomic.exit

bb.t:                                             ; preds = %bb.s
  %i.bo = load atomic volatile i32, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 24) seq_cst, align 8
  %i.bp = icmp ugt i32 %i.bo, 524287
  br i1 %i.bp, label %get_next_shape_internal_atomic.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = call fastcc ptr @rb_shape_alloc_new_child(i64 noundef %1, ptr noundef nonnull %0, i32 noundef %2) ; 5 uses
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = or i64 %i.br, 1
  store i64 %i.bs, ptr %0, align 8, !tbaa !70
  br label %get_next_shape_internal_atomic.exit

bb.w:                                             ; preds = %bb.u
  %i.bt = and i64 %i.be, 1
  %.not42 = icmp eq i64 %i.bt, 0
  br i1 %.not42, label %rb_obj_write.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = and i64 %i.be, -2                       ; 2 uses
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = call i64 @rb_managed_id_table_new(i64 noundef 2) #14 ; 5 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !48
  %i.bz = call i32 @rb_managed_id_table_insert(i64 noundef %i.bw, i64 noundef %i.by, i64 noundef %i.bu) #14 ; 0 uses
  %i.ca = load i64, ptr @shape_tree_obj, align 8, !tbaa !41
  store i64 %i.bw, ptr %0, align 8, !tbaa !41
  %i.cb = icmp eq i64 %i.bw, 0
  %i.cc = and i64 %i.bw, 7
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = or i1 %i.cb, %i.cd
  br i1 %i.ce, label %rb_obj_write.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @rb_gc_writebarrier(i64 noundef %i.ca, i64 noundef %i.bw) #14
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.y, %bb.x, %bb.w
  %i.cf = load i64, ptr %0, align 8, !tbaa !70
  %i.cg = getelementptr i8, ptr %i.bq, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !48
  %i.ci = ptrtoint ptr %i.bq to i64
  %i.cj = call i32 @rb_managed_id_table_insert(i64 noundef %i.cf, i64 noundef %i.ch, i64 noundef %i.ci) #14 ; 0 uses
  store i8 1, ptr %3, align 1, !tbaa !54
  br label %get_next_shape_internal_atomic.exit

get_next_shape_internal_atomic.exit.loopexit.split.loop.exit48: ; preds = %bb.i
  %i.ck = inttoptr i64 %i.z to ptr
  br label %get_next_shape_internal_atomic.exit

get_next_shape_internal_atomic.exit:              ; preds = %bb.g, %get_next_shape_internal_atomic.exit.loopexit.split.loop.exit48, %.thread.i, %bb.e, %bb.d, %.split49.us.i, %bb.s, %bb.t, %rb_obj_write.exit, %bb.v
  %.0 = phi ptr [ %i.bq, %rb_obj_write.exit ], [ %.2, %bb.s ], [ %i.bq, %bb.v ], [ null, %bb.t ], [ %i.bd, %.thread.i ], [ null, %.split49.us.i ], [ %spec.select.us.i, %bb.d ], [ %.2.us.i, %bb.e ], [ %i.ck, %get_next_shape_internal_atomic.exit.loopexit.split.loop.exit48 ], [ %i.u, %bb.g ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_shape_free_all() local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rb_shape_tree, i64 16), align 8, !tbaa !76
  tail call void @ruby_xfree(ptr noundef %i.a) #14
  ret void
}
end_hunk_1
