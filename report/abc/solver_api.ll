Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/solver_api?download=true
inline.NumInlined: 299
inline.NumDeleted: 86
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@heap_insert
define internal fastcc void @heap_insert(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55     ; 6 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4        ; 2 uses
  %.val25 = load i32, ptr %i.b, align 4, !tbaa !106 ; 3 uses
  %i.c = add i32 %1, 1                            ; 5 uses
  %i.d = icmp ult i32 %.val25, %i.c
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.b, align 4, !tbaa !106
  %i.e = load i32, ptr %i.a, align 8, !tbaa !143
  %.not.i = icmp ult i32 %i.e, %i.c
  br i1 %.not.i, label %vec_int_resize.exit, label %.lr.ph

vec_int_resize.exit:                              ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !88
  %i.h = zext i32 %i.c to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  %i.j = tail call ptr @realloc(ptr noundef %i.g, i64 noundef %i.i) #31
  store ptr %i.j, ptr %i.f, align 8, !tbaa !88
  store i32 %i.c, ptr %i.a, align 8, !tbaa !143
  %.pre = load ptr, ptr %0, align 8, !tbaa !55    ; 3 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 4
  %.val2330.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !106
  %i.k = icmp ult i32 %.val25, %.val2330.pre
  br i1 %i.k, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %vec_int_resize.exit
  %i.l = phi ptr [ %.pre, %vec_int_resize.exit ], [ %i.a, %bb.b ] ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val27 = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.o = zext i32 %.val25 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.o, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.val27, i64 %indvars.iv
  store i32 -1, ptr %i.p, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val23 = load i32, ptr %i.m, align 4, !tbaa !106
  %i.q = zext i32 %.val23 to i64
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.c, label %.critedge, !llvm.loop !141

.critedge:                                        ; preds = %bb.c, %vec_int_resize.exit, %bb.a
  %i.s = phi ptr [ %i.a, %bb.a ], [ %.pre, %vec_int_resize.exit ], [ %i.l, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !56   ; 8 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4        ; 4 uses
  %.val = load i32, ptr %i.v, align 4, !tbaa !93  ; 7 uses
  %i.w = getelementptr i8, ptr %i.s, i64 8
  %.val21 = load ptr, ptr %i.w, align 8, !tbaa !88 ; 3 uses
  %i.x = zext i32 %1 to i64                       ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.val21, i64 %i.x
  store i32 %.val, ptr %i.y, align 4, !tbaa !10
  %i.z = load i32, ptr %i.u, align 8, !tbaa !100
  %i.aa = icmp eq i32 %.val, %i.z
  br i1 %i.aa, label %bb.d, label %vec_uint_push_back.exit

bb.d:                                             ; preds = %.critedge
  %i.ab = icmp ult i32 %.val, 16
  br i1 %i.ab, label %vec_uint_reserve.exit.i, label %bb.e

vec_uint_reserve.exit.i:                          ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !79
  %i.ae = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.ad, i64 noundef 64) #31
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !79
  br label %vec_uint_reserve.exit10.sink.split.i

bb.e:                                             ; preds = %bb.d
  %.not.i9.i = icmp sgt i32 %.val, 0
  br i1 %.not.i9.i, label %bb.f, label %vec_uint_push_back.exit

bb.f:                                             ; preds = %bb.e
  %i.af = shl nuw i32 %.val, 1                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !79
  %i.ai = zext i32 %i.af to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2
  %i.ak = tail call ptr @realloc(ptr noundef %i.ah, i64 noundef %i.aj) #31
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !79
  br label %vec_uint_reserve.exit10.sink.split.i

vec_uint_reserve.exit10.sink.split.i:             ; preds = %bb.f, %vec_uint_reserve.exit.i
  %.sink.i = phi i32 [ %i.af, %bb.f ], [ 16, %vec_uint_reserve.exit.i ]
  store i32 %.sink.i, ptr %i.u, align 8, !tbaa !100
  %.pre35 = load i32, ptr %i.v, align 4, !tbaa !93
  %.pre36 = load ptr, ptr %0, align 8, !tbaa !55
  %.phi.trans.insert37 = getelementptr i8, ptr %.pre36, i64 8
  %.val26.pre = load ptr, ptr %.phi.trans.insert37, align 8, !tbaa !88
  %.pre39 = load ptr, ptr %i.t, align 8, !tbaa !56
  br label %vec_uint_push_back.exit

vec_uint_push_back.exit:                          ; preds = %.critedge, %bb.e, %vec_uint_reserve.exit10.sink.split.i
  %i.al = phi ptr [ %i.u, %.critedge ], [ %i.u, %bb.e ], [ %.pre39, %vec_uint_reserve.exit10.sink.split.i ]
  %.val26 = phi ptr [ %.val21, %.critedge ], [ %.val21, %bb.e ], [ %.val26.pre, %vec_uint_reserve.exit10.sink.split.i ] ; 3 uses
  %i.am = phi i32 [ %.val, %.critedge ], [ %.val, %bb.e ], [ %.pre35, %vec_uint_reserve.exit10.sink.split.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !79
  %i.ap = zext i32 %i.am to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  store i32 %1, ptr %i.aq, align 4, !tbaa !10
  %i.ar = load i32, ptr %i.v, align 4, !tbaa !93
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.v, align 4, !tbaa !93
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.val26, i64 %i.x
  %i.au = load i32, ptr %i.at, align 4, !tbaa !10 ; 3 uses
  %i.av = getelementptr i8, ptr %i.al, i64 8
  %.val28.i = load ptr, ptr %i.av, align 8, !tbaa !79 ; 4 uses
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.val28.i, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !10 ; 4 uses
  %.not40.i = icmp eq i32 %i.au, 0
  br i1 %.not40.i, label %..split24_crit_edge.i, label %.lr.ph.i

..split24_crit_edge.i:                            ; preds = %vec_uint_push_back.exit
  %.pre45.i = zext i32 %i.ay to i64
  br label %.split24.i

.lr.ph.i:                                         ; preds = %vec_uint_push_back.exit
  %i.az = getelementptr i8, ptr %0, i64 16
  %.val35.i = load ptr, ptr %i.az, align 8, !tbaa !54
  %i.ba = getelementptr i8, ptr %.val35.i, i64 8
  %.val35.val.i = load ptr, ptr %i.ba, align 8, !tbaa !86 ; 2 uses
  %i.bb = zext i32 %i.ay to i64                   ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.val35.val.i, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !101
  br label %bb.g

.split24.i:                                       ; preds = %bb.h, %..split24_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre45.i, %..split24_crit_edge.i ], [ %i.bb, %bb.h ]
  store i32 %i.ay, ptr %.val28.i, align 4, !tbaa !10
  br label %heap_percolate_up.exit

bb.g:                                             ; preds = %bb.h, %.lr.ph.i
  %.02341.i = phi i32 [ %i.au, %.lr.ph.i ], [ %.042.i, %bb.h ] ; 4 uses
  %.042.in.i = add i32 %.02341.i, -1
  %.042.i = lshr i32 %.042.in.i, 1                ; 3 uses
  %i.be = zext nneg i32 %.042.i to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.val28.i, i64 %i.be ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10 ; 2 uses
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.val35.val.i, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !101
  %.not36.i = icmp ugt i64 %i.bd, %i.bj
  %i.bk = zext i32 %.02341.i to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val28.i, i64 %i.bk ; 2 uses
  br i1 %.not36.i, label %bb.h, label %.split.i

.split.i:                                         ; preds = %bb.g
  store i32 %i.ay, ptr %i.bl, align 4, !tbaa !10
  br label %heap_percolate_up.exit

bb.h:                                             ; preds = %bb.g
  store i32 %i.bg, ptr %i.bl, align 4, !tbaa !10
  %i.bm = load i32, ptr %i.bf, align 4, !tbaa !10
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.val26, i64 %i.bn
  store i32 %.02341.i, ptr %i.bo, align 4, !tbaa !10
  %.not.i28 = icmp eq i32 %.042.i, 0
  br i1 %.not.i28, label %.split24.i, label %bb.g, !llvm.loop !142

heap_percolate_up.exit:                           ; preds = %.split24.i, %.split.i
  %.pre-phi.i.sink = phi i64 [ %.pre-phi.i, %.split24.i ], [ %i.bb, %.split.i ]
  %.sink = phi i32 [ 0, %.split24.i ], [ %.02341.i, %.split.i ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.val26, i64 %.pre-phi.i.sink
  store i32 %.sink, ptr %i.bp, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @satoko_add_clause(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 2 uses
  tail call void @qsort(ptr noundef %1, i64 noundef %i.a, i64 noundef 4, ptr noundef nonnull @stk_uint_compare) #30
  %i.b = getelementptr [4 x i8], ptr %1, i64 %i.a
  %i.c = getelementptr i8, ptr %i.b, i64 -4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = lshr i32 %i.d, 1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val4749 = load i32, ptr %i.h, align 4, !tbaa !102
  %.not50 = icmp ult i32 %i.e, %.val4749
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = tail call i32 @satoko_add_variable(ptr noundef nonnull %0, i8 noundef signext 1) ; 0 uses
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !51
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val47 = load i32, ptr %i.k, align 4, !tbaa !102
  %.not = icmp ult i32 %i.e, %.val47
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !144

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.n, align 4, !tbaa !93
  %.not56 = icmp eq i32 %2, 0
  br i1 %.not56, label %._crit_edge55.thread, label %.lr.ph54

.lr.ph54:                                         ; preds = %._crit_edge
  %i.o = getelementptr i8, ptr %0, i64 104
  %wide.trip.count = zext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph54, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph54 ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.052 = phi i32 [ -1, %.lr.ph54 ], [ %.1, %bb.i ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !10   ; 6 uses
  %i.r = xor i32 %i.q, %.052
  %i.s = icmp eq i32 %i.r, 1
  br i1 %i.s, label %clause_watch.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val45 = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.t = getelementptr i8, ptr %.val45, i64 8
  %.val45.val = load ptr, ptr %i.t, align 8, !tbaa !91
  %i.u = trunc i32 %i.q to i8
  %i.v = and i8 %i.u, 1
  %i.w = lshr i32 %i.q, 1
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.val45.val, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !96    ; 2 uses
  %i.aa = icmp eq i8 %i.z, %i.v
  br i1 %i.aa, label %clause_watch.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp ne i32 %i.q, %.052
  %i.ab = icmp eq i8 %i.z, 3
  %or.cond = and i1 %.not42, %i.ab
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !72  ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !93 ; 6 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !100
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %vec_uint_push_back.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp ult i32 %i.ae, 16
  br i1 %i.ah, label %vec_uint_reserve.exit.i, label %bb.g

vec_uint_reserve.exit.i:                          ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !79
  %i.ak = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.aj, i64 noundef 64) #31
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !79
  br label %vec_uint_reserve.exit10.sink.split.i

bb.g:                                             ; preds = %bb.f
  %.not.i9.i = icmp sgt i32 %i.ae, 0
  br i1 %.not.i9.i, label %bb.h, label %vec_uint_push_back.exit

bb.h:                                             ; preds = %bb.g
  %i.al = shl nuw i32 %i.ae, 1                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !79
  %i.ao = zext i32 %i.al to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  %i.aq = tail call ptr @realloc(ptr noundef %i.an, i64 noundef %i.ap) #31
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !79
  br label %vec_uint_reserve.exit10.sink.split.i

vec_uint_reserve.exit10.sink.split.i:             ; preds = %bb.h, %vec_uint_reserve.exit.i
  %.sink.i = phi i32 [ %i.al, %bb.h ], [ 16, %vec_uint_reserve.exit.i ]
  store i32 %.sink.i, ptr %i.ac, align 8, !tbaa !100
  %.pre = load i32, ptr %i.ad, align 4, !tbaa !93
  br label %vec_uint_push_back.exit

vec_uint_push_back.exit:                          ; preds = %bb.e, %bb.g, %vec_uint_reserve.exit10.sink.split.i
  %i.ar = phi i32 [ %i.ae, %bb.e ], [ %i.ae, %bb.g ], [ %.pre, %vec_uint_reserve.exit10.sink.split.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !79
  %i.au = zext i32 %i.ar to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  store i32 %i.q, ptr %i.av, align 4, !tbaa !10
  %i.aw = load i32, ptr %i.ad, align 4, !tbaa !93
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.ad, align 4, !tbaa !93
  br label %bb.i

bb.i:                                             ; preds = %vec_uint_push_back.exit, %bb.d
  %.1 = phi i32 [ %i.q, %vec_uint_push_back.exit ], [ %.052, %bb.d ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge55, label %bb.b, !llvm.loop !145

._crit_edge55:                                    ; preds = %bb.i
  %.pre58 = load ptr, ptr %i.l, align 8, !tbaa !72 ; 3 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre58, i64 4
  %.val43.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !93
  switch i32 %.val43.pre, label %bb.n [
    i32 0, label %._crit_edge55.thread
    i32 1, label %bb.j
  ]

._crit_edge55.thread:                             ; preds = %._crit_edge, %._crit_edge55
  store i32 0, ptr %0, align 8, !tbaa !35
  br label %clause_watch.exit

bb.j:                                             ; preds = %._crit_edge55
  %i.ay = getelementptr i8, ptr %.pre58, i64 8
  %.val44 = load ptr, ptr %i.ay, align 8, !tbaa !79
  %i.az = load i32, ptr %.val44, align 4, !tbaa !10 ; 3 uses
  %i.ba = lshr i32 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !60
  %i.bd = trunc i32 %i.az to i8
  %i.be = and i8 %i.bd, 1                         ; 2 uses
  %i.bf = getelementptr i8, ptr %i.bc, i64 8
  %.val16.i = load ptr, ptr %i.bf, align 8, !tbaa !91
  %i.bg = zext nneg i32 %i.ba to i64              ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val16.i, i64 %i.bg
  store i8 %i.be, ptr %i.bh, align 1, !tbaa !96
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !61
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %.val15.i = load ptr, ptr %i.bk, align 8, !tbaa !91
  %i.bl = getelementptr inbounds nuw i8, ptr %.val15.i, i64 %i.bg
  store i8 %i.be, ptr %i.bl, align 1, !tbaa !96
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !58
  %i.bo = getelementptr i8, ptr %0, i64 128
  %.val17.i = load ptr, ptr %i.bo, align 8, !tbaa !63
  %i.bp = getelementptr i8, ptr %.val17.i, i64 4
  %.val17.val.i = load i32, ptr %i.bp, align 4, !tbaa !93
  %i.bq = getelementptr i8, ptr %i.bn, i64 8
  %.val14.i = load ptr, ptr %i.bq, align 8, !tbaa !79
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val14.i, i64 %i.bg
  store i32 %.val17.val.i, ptr %i.br, align 4, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !59
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %.val.i = load ptr, ptr %i.bu, align 8, !tbaa !79
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.bg
  store i32 -1, ptr %i.bv, align 4, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !62 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4 ; 4 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !93 ; 6 uses
  %i.ca = load i32, ptr %i.bx, align 8, !tbaa !100
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.k, label %solver_enqueue.exit

bb.k:                                             ; preds = %bb.j
  %i.cc = icmp ult i32 %i.bz, 16
  br i1 %i.cc, label %vec_uint_reserve.exit.i.i, label %bb.l

vec_uint_reserve.exit.i.i:                        ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !79
  %i.cf = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef %i.ce, i64 noundef 64) #31
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !79
  br label %vec_uint_reserve.exit10.sink.split.i.i

bb.l:                                             ; preds = %bb.k
  %.not.i9.i.i = icmp sgt i32 %i.bz, 0
  br i1 %.not.i9.i.i, label %bb.m, label %solver_enqueue.exit

bb.m:                                             ; preds = %bb.l
  %i.cg = shl nuw i32 %i.bz, 1                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !79
  %i.cj = zext i32 %i.cg to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2
  %i.cl = tail call ptr @realloc(ptr noundef %i.ci, i64 noundef %i.ck) #31
  store ptr %i.cl, ptr %i.ch, align 8, !tbaa !79
  br label %vec_uint_reserve.exit10.sink.split.i.i

vec_uint_reserve.exit10.sink.split.i.i:           ; preds = %bb.m, %vec_uint_reserve.exit.i.i
  %.sink.i.i = phi i32 [ %i.cg, %bb.m ], [ 16, %vec_uint_reserve.exit.i.i ]
  store i32 %.sink.i.i, ptr %i.bx, align 8, !tbaa !100
  %.pre.i = load i32, ptr %i.by, align 4, !tbaa !93
  br label %solver_enqueue.exit

solver_enqueue.exit:                              ; preds = %bb.j, %bb.l, %vec_uint_reserve.exit10.sink.split.i.i
  %i.cm = phi i32 [ %i.bz, %bb.j ], [ %i.bz, %bb.l ], [ %.pre.i, %vec_uint_reserve.exit10.sink.split.i.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !79
  %i.cp = zext i32 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cp
  store i32 %i.az, ptr %i.cq, align 4, !tbaa !10
  %i.cr = load i32, ptr %i.by, align 4, !tbaa !93
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.by, align 4, !tbaa !93
  %i.ct = tail call i32 @solver_propagate(ptr noundef nonnull %0) #30
  %i.cu = icmp eq i32 %i.ct, -1
  %i.cv = zext i1 %i.cu to i32                    ; 2 uses
  store i32 %i.cv, ptr %0, align 8, !tbaa !35
  br label %clause_watch.exit

bb.n:                                             ; preds = %._crit_edge55
  %i.cw = tail call i32 @solver_clause_create(ptr noundef nonnull %0, ptr noundef nonnull %.pre58, i32 noundef 0) #30 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !40
  %.not.i.i = icmp ne i32 %i.cw, -1
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !39
  %i.db = zext i32 %i.cw to i64                   ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 12 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !96
  %i.dg = load i32, ptr %i.dd, align 4, !tbaa !96 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !48
  %i.dj = xor i32 %i.dg, 1
  %i.dk = getelementptr i8, ptr %i.di, i64 8
  %.val13.i = load ptr, ptr %i.dk, align 8, !tbaa !47
  %i.dl = zext i32 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %.val13.i, i64 %i.dl ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !95
  %.not.i = icmp eq i32 %i.do, 2
  %.sroa.42.0.insert.ext.i = zext i32 %i.df to i64
  %.sroa.42.0.insert.shift.i = shl nuw i64 %.sroa.42.0.insert.ext.i, 32
  %.sroa.01.0.insert.insert.i = or disjoint i64 %.sroa.42.0.insert.shift.i, %i.db
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 5 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !98 ; 3 uses
  %i.dr = load i32, ptr %i.dm, align 8, !tbaa !146
  %i.ds = icmp eq i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.o, label %watch_list_grow.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.dt = icmp ult i32 %i.dq, 4
  %i.du = lshr i32 %i.dq, 1
  %i.dv = mul i32 %i.du, 3
  %i.dw = select i1 %i.dt, i32 4, i32 %i.dv       ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !82
  %i.dz = zext i32 %i.dw to i64
  %i.ea = shl nuw nsw i64 %i.dz, 3
  %i.eb = tail call ptr @realloc(ptr noundef %i.dy, i64 noundef %i.ea) #31 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ed = load i32, ptr %i.dm, align 8, !tbaa !146
  %i.ee = uitofp i32 %i.ed to double
  %i.ef = fmul nnan double %i.ee, f0x3EB0000000000000
  %i.eg = uitofp i32 %i.dw to double
  %i.eh = fmul nnan double %i.eg, f0x3EB0000000000000
  %i.ei = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %i.ef, double noundef %i.eh) ; 0 uses
  %i.ej = load ptr, ptr @stdout, align 8, !tbaa !104
  %i.ek = tail call i32 @fflush(ptr noundef %i.ej) ; 0 uses
  br label %watch_list_grow.exit.i.i

bb.q:                                             ; preds = %bb.o
  store ptr %i.eb, ptr %i.dx, align 8, !tbaa !82
  store i32 %i.dw, ptr %i.dm, align 8, !tbaa !146
  br label %watch_list_grow.exit.i.i

watch_list_grow.exit.i.i:                         ; preds = %bb.q, %bb.p, %bb.n
  %i.el = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !82 ; 4 uses
  %i.en = load i32, ptr %i.dp, align 4, !tbaa !98 ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.dp, align 4, !tbaa !98
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ep
  store i64 %.sroa.01.0.insert.insert.i, ptr %i.eq, align 4, !tbaa !10
  br i1 %.not.i, label %bb.r, label %watch_list_push.exit.i

bb.r:                                             ; preds = %watch_list_grow.exit.i.i
  %i.er = load i32, ptr %i.dp, align 4, !tbaa !98 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !97 ; 2 uses
  %i.eu = icmp ugt i32 %i.er, %i.et
  br i1 %i.eu, label %bb.s, label %watch_list_push.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ev = zext i32 %i.et to i64
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ev ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 4, !tbaa !10
  %i.ey = add i32 %i.er, -1
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 4, !tbaa !10
  store i64 %i.fb, ptr %i.ew, align 4, !tbaa !10
  %i.fc = load i32, ptr %i.dp, align 4, !tbaa !98
  %i.fd = add i32 %i.fc, -1
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.fe
  store i64 %i.ex, ptr %i.ff, align 4, !tbaa !10
  %i.fg = load i32, ptr %i.es, align 8, !tbaa !97
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.es, align 8, !tbaa !97
  br label %watch_list_push.exit.i

watch_list_push.exit.i:                           ; preds = %bb.s, %bb.r, %watch_list_grow.exit.i.i
  %i.fi = load ptr, ptr %i.dh, align 8, !tbaa !48
  %i.fj = load i32, ptr %i.de, align 4, !tbaa !96
  %i.fk = xor i32 %i.fj, 1
  %i.fl = getelementptr i8, ptr %i.fi, i64 8
  %.val.i48 = load ptr, ptr %i.fl, align 8, !tbaa !47
  %i.fm = zext i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %.val.i48, i64 %i.fm ; 7 uses
  %i.fo = load i32, ptr %i.dn, align 4, !tbaa !95
  %.not18.i = icmp eq i32 %i.fo, 2
  %.sroa.4.0.insert.ext.i = zext i32 %i.dg to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %i.db
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 5 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !98 ; 3 uses
  %i.fr = load i32, ptr %i.fn, align 8, !tbaa !146
  %i.fs = icmp eq i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.t, label %watch_list_grow.exit.i15.i

bb.t:                                             ; preds = %watch_list_push.exit.i
  %i.ft = icmp ult i32 %i.fq, 4
  %i.fu = lshr i32 %i.fq, 1
  %i.fv = mul i32 %i.fu, 3
  %i.fw = select i1 %i.ft, i32 4, i32 %i.fv       ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !82
  %i.fz = zext i32 %i.fw to i64
  %i.ga = shl nuw nsw i64 %i.fz, 3
  %i.gb = tail call ptr @realloc(ptr noundef %i.fy, i64 noundef %i.ga) #31 ; 2 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gd = load i32, ptr %i.fn, align 8, !tbaa !146
  %i.ge = uitofp i32 %i.gd to double
  %i.gf = fmul nnan double %i.ge, f0x3EB0000000000000
  %i.gg = uitofp i32 %i.fw to double
  %i.gh = fmul nnan double %i.gg, f0x3EB0000000000000
  %i.gi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %i.gf, double noundef %i.gh) ; 0 uses
  %i.gj = load ptr, ptr @stdout, align 8, !tbaa !104
  %i.gk = tail call i32 @fflush(ptr noundef %i.gj) ; 0 uses
  br label %watch_list_grow.exit.i15.i

bb.v:                                             ; preds = %bb.t
  store ptr %i.gb, ptr %i.fx, align 8, !tbaa !82
  store i32 %i.fw, ptr %i.fn, align 8, !tbaa !146
  br label %watch_list_grow.exit.i15.i

watch_list_grow.exit.i15.i:                       ; preds = %bb.v, %bb.u, %watch_list_push.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !82 ; 4 uses
  %i.gn = load i32, ptr %i.fp, align 4, !tbaa !98 ; 2 uses
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.fp, align 4, !tbaa !98
  %i.gp = zext i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gp
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.gq, align 4, !tbaa !10
  br i1 %.not18.i, label %bb.w, label %clause_watch.exit

bb.w:                                             ; preds = %watch_list_grow.exit.i15.i
  %i.gr = load i32, ptr %i.fp, align 4, !tbaa !98 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 3 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !97 ; 2 uses
  %i.gu = icmp ugt i32 %i.gr, %i.gt
  br i1 %i.gu, label %bb.x, label %clause_watch.exit

bb.x:                                             ; preds = %bb.w
  %i.gv = zext i32 %i.gt to i64
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gv ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 4, !tbaa !10
  %i.gy = add i32 %i.gr, -1
  %i.gz = zext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 4, !tbaa !10
  store i64 %i.hb, ptr %i.gw, align 4, !tbaa !10
  %i.hc = load i32, ptr %i.fp, align 4, !tbaa !98
  %i.hd = add i32 %i.hc, -1
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.he
  store i64 %i.gx, ptr %i.hf, align 4, !tbaa !10
  %i.hg = load i32, ptr %i.gs, align 8, !tbaa !97
  %i.hh = add i32 %i.hg, 1
  store i32 %i.hh, ptr %i.gs, align 8, !tbaa !97
  br label %clause_watch.exit

clause_watch.exit:                                ; preds = %bb.b, %bb.c, %bb.x, %bb.w, %watch_list_grow.exit.i15.i, %solver_enqueue.exit, %._crit_edge55.thread
  %.040 = phi i32 [ 1, %bb.w ], [ 0, %._crit_edge55.thread ], [ %i.cv, %solver_enqueue.exit ], [ 1, %bb.x ], [ 1, %watch_list_grow.exit.i15.i ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.040
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @stk_uint_compare(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #14 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !10
  %i.b = load i32, ptr %1, align 4, !tbaa !10
  %.0 = tail call i32 @llvm.ucmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

declare i32 @solver_clause_create(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9
end_hunk_0
