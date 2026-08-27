Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libregexp?download=true
inline.NumInlined: 313
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@re_string_find2:bb.a

bb.l:                                             ; preds = %._crit_edge94, %bb.h
  %.2 = phi i32 [ %i.ba, %._crit_edge94 ], [ %.072, %bb.h ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !90
  %i.bd = sext i32 %1 to i64
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.bf = add nsw i64 %i.be, 16
  %i.bg = tail call ptr @lre_realloc(ptr noundef %i.bc, ptr noundef null, i64 noundef %i.bf) #20 ; 6 uses
  %.not81 = icmp eq ptr %i.bg, null
  br i1 %.not81, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !87
  %i.bj = zext i32 %.2 to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !88
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !88
  store ptr %i.bg, ptr %i.bk, align 8, !tbaa !88
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !96
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.a, align 8, !tbaa !96
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %3, ptr %i.bo, align 8, !tbaa !38
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 %1, ptr %i.bp, align 4, !tbaa !38
  %.not82 = icmp eq i32 %1, 0
  br i1 %.not82, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr align 4 %2, i64 %i.be, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.i, %bb.m, %bb.n, %bb.l, %.loopexit
  %.175 = phi i32 [ 0, %.loopexit ], [ -1, %bb.l ], [ 1, %bb.m ], [ -1, %bb.i ], [ 1, %bb.n ], [ 1, %bb.c ], [ 1, %bb.f ]
  ret i32 %.175
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @cr_init_char_range(ptr %.96.val, ptr noundef nonnull %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #2 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  %i.b = lshr i32 %1, 1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @char_range_table, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !131  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.g = load i16, ptr %i.e, align 2, !tbaa !65   ; 2 uses
  tail call void @cr_init(ptr noundef nonnull %0, ptr noundef %.96.val, ptr noundef nonnull @lre_realloc) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.h, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  store i32 0, ptr %i.i, align 4, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.j, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !87
  %.not4 = icmp eq i16 %i.g, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = zext i16 %i.g to i64
  %wide.trip.count = shl nuw nsw i64 %i.l, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv
  %i.p = load i16, ptr %i.o, align 2, !tbaa !65
  %i.q = zext i16 %i.p to i32
  %i.r = load i32, ptr %0, align 8, !tbaa !122    ; 3 uses
  %i.s = load i32, ptr %i.m, align 4, !tbaa !126
  %.not.i = icmp slt i32 %i.r, %i.s
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = add nsw i32 %i.r, 1
  %i.u = tail call i32 @cr_realloc(ptr noundef nonnull %0, i32 noundef %i.t) #20
  %.not8.i = icmp eq i32 %i.u, 0
  br i1 %.not8.i, label %._crit_edge.i, label %cr_add_point.exit

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load i32, ptr %0, align 8, !tbaa !122
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.r, %bb.b ] ; 2 uses
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !121
  %i.x = add nsw i32 %i.v, 1
  store i32 %i.x, ptr %0, align 8, !tbaa !122
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.y
  store i32 %i.q, ptr %i.z, align 4, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !133

._crit_edge:                                      ; preds = %bb.d, %bb.a
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.aa = tail call i32 @cr_invert(ptr noundef nonnull %0) #20
  %.not15 = icmp eq i32 %i.aa, 0
  br i1 %.not15, label %bb.g, label %cr_add_point.exit

cr_add_point.exit:                                ; preds = %bb.c, %bb.e
  %i.ab = load i32, ptr %i.i, align 4, !tbaa !81  ; 2 uses
  %.not19.i = icmp eq i32 %i.ab, 0
  br i1 %.not19.i, label %re_string_list_free.exit, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %cr_add_point.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i19, %.lr.ph17.i
  %i.ad = phi i32 [ %i.ab, %.lr.ph17.i ], [ %i.ak, %._crit_edge.i19 ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next.i, %._crit_edge.i19 ] ; 2 uses
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88 ; 2 uses
  %.not13.i = icmp eq ptr %i.ag, null
  br i1 %.not13.i, label %._crit_edge.i19, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.01214.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ah = load ptr, ptr %.01214.i, align 8, !tbaa !88 ; 2 uses
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !90
  %i.aj = tail call ptr @lre_realloc(ptr noundef %i.ai, ptr noundef nonnull %.01214.i, i64 noundef 0) #20 ; 0 uses
  %.not.i17 = icmp eq ptr %i.ah, null
  br i1 %.not.i17, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !91

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i18 = load i32, ptr %i.i, align 4, !tbaa !81
  br label %._crit_edge.i19

._crit_edge.i19:                                  ; preds = %._crit_edge.loopexit.i, %bb.f
  %i.ak = phi i32 [ %.pre.i18, %._crit_edge.loopexit.i ], [ %i.ad, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = zext i32 %i.ak to i64
  %i.am = icmp samesign ult i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %bb.f, label %re_string_list_free.exit, !llvm.loop !92

re_string_list_free.exit:                         ; preds = %._crit_edge.i19, %cr_add_point.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !90
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.aq = tail call ptr @lre_realloc(ptr noundef %i.ao, ptr noundef %i.ap, i64 noundef 0) #20 ; 0 uses
  tail call void @cr_free(ptr noundef nonnull %0) #20
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.e, %re_string_list_free.exit
  %.014 = phi i32 [ -1, %re_string_list_free.exit ], [ 0, %bb.e ], [ 0, %._crit_edge ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @parse_unicode_property(ptr nofree noundef nonnull captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 19 uses
  %i.b = alloca [64 x i8], align 16               ; 9 uses
  %5 = alloca %struct.CharRange, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = load ptr, ptr %2, align 8, !tbaa !9      ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !12
  %.not = icmp eq i8 %i.d, 123
  br i1 %.not, label %.preheader120, label %bb.b

.preheader120:                                    ; preds = %bb.a
  %.079126 = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.e = load i8, ptr %.079126, align 1, !tbaa !12 ; 5 uses
  %i.f = add i8 %i.e, -48
  %or.cond.i127 = icmp ult i8 %i.f, 10
  %i.g = and i8 %i.e, -33
  %i.h = add i8 %i.g, -65
  %i.i = icmp ult i8 %i.h, 26
  %or.cond13.i128 = or i1 %or.cond.i127, %i.i
  %i.j = icmp eq i8 %i.e, 95
  %i.k = or i1 %i.j, %or.cond13.i128
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader120
  %i.l = ptrtoint ptr %i.a to i64
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.26)
  br label %bb.as

bb.c:                                             ; preds = %bb.e
  %i.m = ptrtoint ptr %i.z to i64
  %i.n = sub i64 %i.m, %i.l
  %i.o = icmp samesign ugt i64 %i.n, 62
  br i1 %i.o, label %.loopexit121, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.077129162, i64 2 ; 2 uses
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !12
  %.079.1 = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.q = load i8, ptr %.079.1, align 1, !tbaa !12 ; 5 uses
  %i.r = add i8 %i.q, -48
  %or.cond.i.1 = icmp ult i8 %i.r, 10
  %i.s = and i8 %i.q, -33
  %i.t = add i8 %i.s, -65
  %i.u = icmp ult i8 %i.t, 26
  %or.cond13.i.1 = or i1 %or.cond.i.1, %i.u
  %i.v = icmp eq i8 %i.q, 95
  %i.w = or i1 %i.v, %or.cond13.i.1
  br i1 %i.w, label %bb.e, label %._crit_edge.loopexit.split.loop.exit, !llvm.loop !134

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %.077129162 = phi ptr [ %i.a, %.lr.ph ], [ %i.p, %bb.d ] ; 3 uses
  %i.x = phi ptr [ %i.c, %.lr.ph ], [ %.079, %bb.d ] ; 3 uses
  %i.y = phi i8 [ %i.e, %.lr.ph ], [ %i.q, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %.077129162, i64 1 ; 3 uses
  store i8 %i.y, ptr %.077129162, align 1, !tbaa !12
  %.079 = getelementptr inbounds nuw i8, ptr %i.x, i64 2 ; 3 uses
  %i.aa = load i8, ptr %.079, align 1, !tbaa !12  ; 5 uses
  %i.ab = add i8 %i.aa, -48
  %or.cond.i = icmp ult i8 %i.ab, 10
  %i.ac = and i8 %i.aa, -33
  %i.ad = add i8 %i.ac, -65
  %i.ae = icmp ult i8 %i.ad, 26
  %or.cond13.i = or i1 %or.cond.i, %i.ae
  %i.af = icmp eq i8 %i.aa, 95
  %i.ag = or i1 %i.af, %or.cond13.i
  br i1 %i.ag, label %bb.c, label %._crit_edge, !llvm.loop !134

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.d
  %.079.1.le = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.split.loop.exit, %bb.e, %.preheader120
  %i.ah = phi i8 [ %i.e, %.preheader120 ], [ %i.q, %._crit_edge.loopexit.split.loop.exit ], [ %i.aa, %bb.e ] ; 2 uses
  %.077.lcssa = phi ptr [ %i.a, %.preheader120 ], [ %i.p, %._crit_edge.loopexit.split.loop.exit ], [ %i.z, %bb.e ]
  %.079.lcssa = phi ptr [ %.079126, %.preheader120 ], [ %.079.1.le, %._crit_edge.loopexit.split.loop.exit ], [ %.079, %bb.e ] ; 3 uses
  store i8 0, ptr %.077.lcssa, align 1, !tbaa !12
  %i.ai = icmp eq i8 %i.ah, 61
  br i1 %i.ai, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %.180132 = getelementptr inbounds nuw i8, ptr %.079.lcssa, i64 1 ; 2 uses
  %i.aj = load i8, ptr %.180132, align 1, !tbaa !12 ; 5 uses
  %i.ak = add i8 %i.aj, -48
  %or.cond.i107133 = icmp ult i8 %i.ak, 10
  %i.al = and i8 %i.aj, -33
  %i.am = add i8 %i.al, -65
  %i.an = icmp ult i8 %i.am, 26
  %or.cond13.i111134 = or i1 %or.cond.i107133, %i.an
  %i.ao = icmp eq i8 %i.aj, 95
  %i.ap = or i1 %i.ao, %or.cond13.i111134
  br i1 %i.ap, label %.lr.ph137, label %.loopexit

.lr.ph137:                                        ; preds = %.preheader
  %i.aq = ptrtoint ptr %i.b to i64
  br label %bb.i

bb.f:                                             ; preds = %bb.i
  %i.ar = ptrtoint ptr %i.be to i64
  %i.as = sub i64 %i.ar, %i.aq
  %i.at = icmp samesign ugt i64 %i.as, 62
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %.178135164, i64 2 ; 2 uses
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !12
  %.180.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.av = load i8, ptr %.180.1, align 1, !tbaa !12 ; 5 uses
  %i.aw = add i8 %i.av, -48
  %or.cond.i107.1 = icmp ult i8 %i.aw, 10
  %i.ax = and i8 %i.av, -33
  %i.ay = add i8 %i.ax, -65
  %i.az = icmp ult i8 %i.ay, 26
  %or.cond13.i111.1 = or i1 %or.cond.i107.1, %i.az
  %i.ba = icmp eq i8 %i.av, 95
  %i.bb = or i1 %i.ba, %or.cond13.i111.1
  br i1 %i.bb, label %bb.i, label %.loopexit.loopexit.split.loop.exit, !llvm.loop !135

bb.h:                                             ; preds = %bb.f
  call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.27)
  br label %bb.as

bb.i:                                             ; preds = %bb.g, %.lr.ph137
  %.178135164 = phi ptr [ %i.b, %.lr.ph137 ], [ %i.au, %bb.g ] ; 3 uses
  %i.bc = phi ptr [ %.079.lcssa, %.lr.ph137 ], [ %.180, %bb.g ] ; 3 uses
  %i.bd = phi i8 [ %i.aj, %.lr.ph137 ], [ %i.av, %bb.g ]
  %i.be = getelementptr inbounds nuw i8, ptr %.178135164, i64 1 ; 3 uses
  store i8 %i.bd, ptr %.178135164, align 1, !tbaa !12
  %.180 = getelementptr inbounds nuw i8, ptr %i.bc, i64 2 ; 3 uses
  %i.bf = load i8, ptr %.180, align 1, !tbaa !12  ; 5 uses
  %i.bg = add i8 %i.bf, -48
  %or.cond.i107 = icmp ult i8 %i.bg, 10
  %i.bh = and i8 %i.bf, -33
  %i.bi = add i8 %i.bh, -65
  %i.bj = icmp ult i8 %i.bi, 26
  %or.cond13.i111 = or i1 %or.cond.i107, %i.bj
  %i.bk = icmp eq i8 %i.bf, 95
  %i.bl = or i1 %i.bk, %or.cond13.i111
  br i1 %i.bl, label %bb.f, label %.loopexit, !llvm.loop !135

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.g
  %.180.1.le = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.split.loop.exit, %bb.i, %.preheader, %._crit_edge
  %i.bm = phi i8 [ %i.ah, %._crit_edge ], [ %i.aj, %.preheader ], [ %i.av, %.loopexit.loopexit.split.loop.exit ], [ %i.bf, %bb.i ]
  %.281 = phi ptr [ %.079.lcssa, %._crit_edge ], [ %.180132, %.preheader ], [ %.180.1.le, %.loopexit.loopexit.split.loop.exit ], [ %.180, %bb.i ]
  %.2 = phi ptr [ %i.b, %._crit_edge ], [ %i.b, %.preheader ], [ %i.au, %.loopexit.loopexit.split.loop.exit ], [ %i.be, %bb.i ]
  store i8 0, ptr %.2, align 1, !tbaa !12
  %.not87 = icmp eq i8 %i.bm, 125
  br i1 %.not87, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.28)
  br label %bb.as

bb.k:                                             ; preds = %.loopexit
  %i.bn = getelementptr inbounds nuw i8, ptr %.281, i64 1
  %i.bo = load i32, ptr %i.a, align 16
  %i.bp = xor i32 %i.bo, 1769104211
  %i.bq = getelementptr i8, ptr %i.a, i64 3
  %i.br = load i32, ptr %i.bq, align 1
  %i.bs = xor i32 %i.br, 7630953
  %i.bt = or i32 %i.bp, %i.bs
  %i.bu = icmp ne i32 %i.bt, 0
  %i.bv = zext i1 %i.bu to i32
  %.not88 = icmp eq i32 %i.bv, 0
  br i1 %.not88, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = load i16, ptr %i.a, align 16
  %i.bx = xor i16 %i.bw, 25459
  %i.by = getelementptr i8, ptr %i.a, i64 2
  %i.bz = load i8, ptr %i.by, align 2
  %i.ca = zext i8 %i.bz to i16
  %i.cb = or i16 %i.bx, %i.ca
  %i.cc = icmp ne i16 %i.cb, 0
  %i.cd = zext i1 %i.cc to i32
  %.not90 = icmp eq i32 %i.cd, 0
  br i1 %.not90, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = load i128, ptr %i.a, align 16
  %i.cf = xor i128 %i.ce, 146793563286051187053228178410241680211
  %i.cg = getelementptr i8, ptr %i.a, i64 16
  %i.ch = load i16, ptr %i.cg, align 16
  %i.ci = zext i16 %i.ch to i128
  %i.cj = xor i128 %i.ci, 115
  %i.ck = or i128 %i.cf, %i.cj
  %i.cl = icmp ne i128 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %.not92 = icmp eq i32 %i.cm, 0
  %lhsv = load i32, ptr %i.a, align 16
  %.not94 = icmp eq i32 %lhsv, 7889779
  %or.cond104 = select i1 %.not92, i1 true, i1 %.not94
  br i1 %or.cond104, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.l
  %.076 = phi i1 [ false, %bb.k ], [ false, %bb.l ], [ true, %bb.m ]
  %i.cn = getelementptr i8, ptr %0, i64 96
  %.val106 = load ptr, ptr %i.cn, align 8, !tbaa !13
  call void @cr_init(ptr noundef nonnull %1, ptr noundef %.val106, ptr noundef nonnull @lre_realloc) #20
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.co, align 8, !tbaa !96
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  store i32 0, ptr %i.cp, align 4, !tbaa !81
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.cq, align 8, !tbaa !120
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr null, ptr %i.cr, align 8, !tbaa !87
  %i.cs = call i32 @unicode_script(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i1 noundef zeroext %.076) #20 ; 2 uses
  %.not95 = icmp eq i32 %i.cs, 0
  br i1 %.not95, label %.thread118, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = load i32, ptr %i.cp, align 4, !tbaa !81 ; 2 uses
  %.not19.i = icmp eq i32 %i.ct, 0
  br i1 %.not19.i, label %re_string_list_free.exit, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %.lr.ph17.i
  %i.cv = phi i32 [ %i.ct, %.lr.ph17.i ], [ %i.dc, %._crit_edge.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !88 ; 2 uses
  %.not13.i = icmp eq ptr %i.cy, null
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p, %.lr.ph.i
  %.01214.i = phi ptr [ %i.cz, %.lr.ph.i ], [ %i.cy, %bb.p ] ; 2 uses
  %i.cz = load ptr, ptr %.01214.i, align 8, !tbaa !88 ; 2 uses
  %i.da = load ptr, ptr %i.cu, align 8, !tbaa !90
  %i.db = call ptr @lre_realloc(ptr noundef %i.da, ptr noundef nonnull %.01214.i, i64 noundef 0) #20 ; 0 uses
  %.not.i = icmp eq ptr %i.cz, null
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !91

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.cp, align 4, !tbaa !81
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.p
  %i.dc = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.cv, %bb.p ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dd = zext i32 %i.dc to i64
  %i.de = icmp samesign ult i64 %indvars.iv.next.i, %i.dd
  br i1 %i.de, label %bb.p, label %re_string_list_free.exit, !llvm.loop !92

re_string_list_free.exit:                         ; preds = %._crit_edge.i, %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !90
  %i.dh = load ptr, ptr %i.cr, align 8, !tbaa !87
  %i.di = call ptr @lre_realloc(ptr noundef %i.dg, ptr noundef %i.dh, i64 noundef 0) #20 ; 0 uses
  call void @cr_free(ptr noundef nonnull %1) #20
  %i.dj = icmp eq i32 %i.cs, -2
  br i1 %i.dj, label %bb.q, label %bb.ar

bb.q:                                             ; preds = %re_string_list_free.exit
  call void (ptr, ptr, ...) @re_parse_error(ptr noundef %0, ptr noundef nonnull @.str.33)
  br label %bb.as

bb.r:                                             ; preds = %bb.m
  %i.dk = load i128, ptr %i.a, align 16
  %i.dl = xor i128 %i.dk, 161430768871213215975044779250010711367
  %i.dm = getelementptr i8, ptr %i.a, i64 16
  %i.dn = load i8, ptr %i.dm, align 16
  %i.do = zext i8 %i.dn to i128
  %i.dp = or i128 %i.dl, %i.do
  %i.dq = icmp ne i128 %i.dp, 0
  %i.dr = zext i1 %i.dq to i32
  %.not97 = icmp eq i32 %i.dr, 0
  br i1 %.not97, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ds = load i16, ptr %i.a, align 16
  %i.dt = xor i16 %i.ds, 25447
  %i.du = getelementptr i8, ptr %i.a, i64 2
  %i.dv = load i8, ptr %i.du, align 2
  %i.dw = zext i8 %i.dv to i16
  %i.dx = or i16 %i.dt, %i.dw
  %i.dy = icmp ne i16 %i.dx, 0
  %i.dz = zext i1 %i.dy to i32
  %.not99 = icmp eq i32 %i.dz, 0
  br i1 %.not99, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ea = getelementptr i8, ptr %0, i64 96
  %.val105 = load ptr, ptr %i.ea, align 8, !tbaa !13
  call void @cr_init(ptr noundef nonnull %1, ptr noundef %.val105, ptr noundef nonnull @lre_realloc) #20
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.eb, align 8, !tbaa !96
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 0, ptr %i.ec, align 4, !tbaa !81
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.ed, align 8, !tbaa !120
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr null, ptr %i.ee, align 8, !tbaa !87
  %i.ef = call i32 @unicode_general_category(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #20 ; 2 uses
end_hunk_0
