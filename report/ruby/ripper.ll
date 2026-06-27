inline.NumInlined: 2066
inline.NumDeleted: 252
begin_hunk_0_@new_args_forward_call:bb.a
  store i32 %i.ay, ptr %i.j, align 8, !tbaa !208
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store i32 %i.ax, ptr %i.az, align 8, !tbaa !209
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i64 38, ptr %i.ba, align 8, !tbaa !379
  %.val.i.i31 = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.bb = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i31, i32 noundef range(i32 0, 115) 79, i64 noundef range(i64 32, 129) 72, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.bb, i32 noundef range(i32 0, 115) 79) #29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !13
  %i.bd = load i32, ptr %3, align 4, !tbaa !51
  %i.be = sext i32 %i.bd to i64
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !61
  %i.bg = and i64 %i.bf, 32767
  %i.bh = shl nsw i64 %i.be, 15
  %i.bi = or disjoint i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %i.bb, align 8, !tbaa !61
  %i.bj = load i32, ptr %i.j, align 8, !tbaa !208 ; 2 uses
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.j, align 8, !tbaa !208
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i32 %i.bj, ptr %i.bl, align 8, !tbaa !209
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 48 ; 4 uses
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = and i8 %i.bn, -2
  store i8 %i.bo, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 2 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !112
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr %i.ap, ptr %i.bq, align 8, !tbaa !381
  %i.br = getelementptr inbounds nuw i8, ptr %i.bb, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.br, ptr noundef nonnull align 4 dereferenceable(16) @__const.ripper_yyparse.inheritance_operator_loc, i64 16, i1 false), !tbaa.struct !13
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !61
  %i.bs = and i64 %.val.i, 32512
  %i.bt = icmp eq i64 %i.bs, 11008
  br i1 %i.bt, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.val.i.i32 = load i64, ptr %1, align 8, !tbaa !61
  %i.bu = and i64 %.val.i.i32, 32512              ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 19968
  br i1 %i.bv, label %bb.d, label %splat_array.exit.i

bb.d:                                             ; preds = %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !115 ; 2 uses
  %.0.val.pre.i.i = load i64, ptr %i.bx, align 8, !tbaa !61
  %.pre.i.i = and i64 %.0.val.pre.i.i, 32512
  br label %splat_array.exit.i

splat_array.exit.i:                               ; preds = %bb.d, %bb.c
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %bb.d ], [ %i.bu, %bb.c ]
  %.0.i.i = phi ptr [ %i.bx, %bb.d ], [ %1, %bb.c ] ; 5 uses
  %.not.i = icmp eq i64 %.pre-phi.i.i, 11008
  br i1 %.not.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %splat_array.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !179 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i10.i = phi ptr [ %i.cb, %bb.f ], [ %.0.i.i, %bb.e ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !10
  %i.cg = add nsw i64 %i.cf, %i.cd
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i10.i, i64 48
  store ptr %i.b, ptr %i.ch, align 8, !tbaa !179
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !179 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.cj, null
  br i1 %.not17.i.i, label %list_concat.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10
  br label %list_concat.exit.i

list_concat.exit.i:                               ; preds = %bb.h, %bb.g
  %.sink.i.i = phi ptr [ %i.cl, %bb.h ], [ %i.b, %bb.g ]
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !179
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  store ptr %.sink.i.i, ptr %i.cn, align 8, !tbaa !10
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cq = load i64, ptr %i.cp, align 8
  store i64 %i.cq, ptr %i.co, align 8
  br label %bb.k

bb.i:                                             ; preds = %splat_array.exit.i, %bb.b
  %i.cr = tail call fastcc ptr @arg_concat(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull readonly %3)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %.val.i.i33 = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.cs = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i33, i32 noundef range(i32 0, 115) 78, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.cs, i32 noundef range(i32 0, 115) 78) #29
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.cu = load i32, ptr %2, align 4, !tbaa !51
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load i64, ptr %i.cs, align 8, !tbaa !61
  %i.cx = and i64 %i.cw, 32767
  %i.cy = shl nsw i64 %i.cv, 15
  %i.cz = or disjoint i64 %i.cx, %i.cy
  store i64 %i.cz, ptr %i.cs, align 8, !tbaa !61
  %i.da = load i32, ptr %i.j, align 8, !tbaa !208 ; 2 uses
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.j, align 8, !tbaa !208
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  store i32 %i.da, ptr %i.dc, align 8, !tbaa !209
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  store ptr %i.b, ptr %i.dd, align 8, !tbaa !115
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 4 dereferenceable(16) @__const.ripper_yyparse.inheritance_operator_loc, i64 16, i1 false), !tbaa.struct !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %list_concat.exit.i, %bb.i
  %i.df = phi ptr [ %i.cs, %bb.j ], [ %.0.i.i, %list_concat.exit.i ], [ %i.cr, %bb.i ]
  %i.dg = load i8, ptr %i.bm, align 8
  %i.dh = or i8 %i.dg, 1
  store i8 %i.dh, ptr %i.bm, align 8
  %i.di = tail call fastcc ptr @new_hash(ptr noundef nonnull %0, ptr noundef %i.ao, ptr noundef %2)
  %i.dj = tail call fastcc ptr @arg_append(ptr noundef nonnull %0, ptr noundef %i.df, ptr noundef %i.di, ptr noundef %3) ; 3 uses
  %.not14.i = icmp eq ptr %i.dj, null
  br i1 %.not14.i, label %arg_blk_pass.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.dj, ptr %i.bp, align 8, !tbaa !112
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load <2 x i32>, ptr %i.dk, align 8, !tbaa !6
  store <2 x i32> %i.dl, ptr %i.bc, align 8, !tbaa !6
  br label %arg_blk_pass.exit

arg_blk_pass.exit:                                ; preds = %bb.k, %bb.l
  ret ptr %i.bb
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_block_pass_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 79, i64 noundef range(i64 32, 129) 72, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 79) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !61
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !208  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !209
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, -2
  store i8 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.q, align 8, !tbaa !112
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %1, ptr %i.r, align 8, !tbaa !381
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !13
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc void @forwarding_arg_check(ptr noundef %0, i64 noundef range(i64 38, 135) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.03487 = load ptr, ptr %i.b, align 8, !tbaa !382 ; 2 uses
  %.03588 = load ptr, ptr %i.c, align 8, !tbaa !382 ; 2 uses
  %.not89 = icmp eq ptr %.03588, null
  br i1 %.not89, label %.critedge46, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %vtable_included.exit.thread
  %.03592 = phi ptr [ %i.e, %vtable_included.exit.thread ], [ %.03588, %bb.a ]
  %.03491 = phi ptr [ %.034, %vtable_included.exit.thread ], [ %.03487, %bb.a ] ; 5 uses
  %.03690 = phi i1 [ %6, %vtable_included.exit.thread ], [ false, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.03592, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 4 uses
  %i.f = icmp ult ptr %i.e, inttoptr (i64 2 to ptr)
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ult ptr %.03491, inttoptr (i64 2 to ptr)
  br i1 %i.g, label %vtable_included.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.03491, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !186  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %vtable_included.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.k = load ptr, ptr %.03491, align 8, !tbaa !188 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.i to i64  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = icmp eq i64 %i.m, %1
  br i1 %i.n, label %.lr.ph.i51, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %vtable_included.exit.thread, label %bb.c, !llvm.loop !205

.lr.ph.i51:                                       ; preds = %bb.c, %bb.e
  %indvars.iv.i53 = phi i64 [ %indvars.iv.next.i54, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i53
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11
  %i.q = icmp eq i64 %i.p, 129
  br i1 %i.q, label %vtable_included.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i51
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next.i54, %wide.trip.count.i
  br i1 %exitcond.not.i55, label %vtable_included.exit.thread, label %.lr.ph.i51, !llvm.loop !205

vtable_included.exit.thread:                      ; preds = %bb.d, %bb.e, %.lr.ph.i51, %.preheader.i, %bb.b
  %3 = phi i32 [ 1, %bb.e ], [ 0, %.preheader.i ], [ 0, %bb.b ], [ 0, %.lr.ph.i51 ], [ 0, %bb.d ]
  %4 = zext i1 %.03690 to i32
  %5 = or i32 %3, %4
  %6 = icmp ne i32 %5, 0                          ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.03491, i64 16
  %.034 = load ptr, ptr %i.r, align 8, !tbaa !382 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge46, label %.lr.ph, !llvm.loop !383

.critedge:                                        ; preds = %.lr.ph
  %.not94 = icmp eq ptr %i.e, inttoptr (i64 1 to ptr)
  br i1 %.not94, label %bb.f, label %.critedge46

bb.f:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !378
  %i.u = tail call i32 @rb_parser_local_defined(ptr noundef %0, i64 noundef %1, ptr noundef %i.t) #29
  %.not40 = icmp eq i32 %i.u, 0
  br i1 %.not40, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !378
  %i.w = tail call i32 @rb_parser_local_defined(ptr noundef nonnull %0, i64 noundef 129, ptr noundef %i.v) #29
  %.not41 = icmp eq i32 %i.w, 0
  br i1 %.not41, label %.thread, label %.sink.split

.critedge46:                                      ; preds = %vtable_included.exit.thread, %bb.a, %.critedge
  %.03685 = phi i1 [ %.03690, %.critedge ], [ false, %bb.a ], [ %6, %vtable_included.exit.thread ]
  %.03482 = phi ptr [ %.03491, %.critedge ], [ %.03487, %bb.a ], [ %.034, %vtable_included.exit.thread ] ; 3 uses
  %i.x = icmp ult ptr %.03482, inttoptr (i64 2 to ptr)
  br i1 %i.x, label %.sink.split, label %.preheader.i57

.preheader.i57:                                   ; preds = %.critedge46
  %i.y = getelementptr inbounds nuw i8, ptr %.03482, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !186  ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i59, label %.sink.split

.lr.ph.i59:                                       ; preds = %.preheader.i57
  %i.ab = load ptr, ptr %.03482, align 8, !tbaa !188 ; 2 uses
  %wide.trip.count.i60 = zext nneg i32 %i.z to i64 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i59
  %indvars.iv.i61 = phi i64 [ 0, %.lr.ph.i59 ], [ %indvars.iv.next.i62, %bb.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i61
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = icmp eq i64 %i.ad, %1
  br i1 %i.ae, label %.lr.ph.i67, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i62 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i63 = icmp eq i64 %indvars.iv.next.i62, %wide.trip.count.i60
  br i1 %exitcond.not.i63, label %.sink.split, label %bb.h, !llvm.loop !205

.lr.ph.i67:                                       ; preds = %bb.h, %bb.j
  %indvars.iv.i69 = phi i64 [ %indvars.iv.next.i70, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i69
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !11
  %i.ah = icmp eq i64 %i.ag, 129
  br i1 %i.ah, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i67
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i69, 1 ; 2 uses
  %exitcond.not.i71 = icmp eq i64 %indvars.iv.next.i70, %wide.trip.count.i60
  br i1 %exitcond.not.i71, label %.thread, label %.lr.ph.i67, !llvm.loop !205

.thread:                                          ; preds = %bb.j, %bb.g
  %.03684 = phi i1 [ %.03690, %bb.g ], [ %.03685, %bb.j ]
  br i1 %.03684, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.i, %.lr.ph.i67, %.thread, %bb.f, %bb.g, %.critedge46, %.preheader.i57
  %.str.750.sink = phi ptr [ @.str.749, %bb.f ], [ @.str.749, %.lr.ph.i67 ], [ @.str.750, %.thread ], [ @.str.749, %.preheader.i57 ], [ @.str.749, %.critedge46 ], [ @.str.749, %bb.g ], [ @.str.749, %bb.i ]
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull %.str.750.sink, ptr noundef %2) #29
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rb_node_lvar_new(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 48, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #29 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 48) #29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !13
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !61
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !208  ; 2 uses
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !209
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.n, align 8, !tbaa !379
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @last_arg_append(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %.val.i = load i64, ptr %1, align 8, !tbaa !61
  %i.a = and i64 %.val.i, 32512                   ; 2 uses
  %i.b = icmp eq i64 %i.a, 19968
  br i1 %i.b, label %bb.b, label %splat_array.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !115  ; 2 uses
  %.0.val.pre.i = load i64, ptr %i.d, align 8, !tbaa !61
  %.pre.i = and i64 %.0.val.pre.i, 32512
  br label %splat_array.exit

splat_array.exit:                                 ; preds = %bb.a, %bb.b
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.b ], [ %i.a, %bb.a ]
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ]  ; 5 uses
  %.not = icmp eq i64 %.pre-phi.i, 11008
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %splat_array.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !179  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %list_append.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  br label %list_append.exit

list_append.exit:                                 ; preds = %bb.c, %bb.d
  %.0.i10 = phi ptr [ %i.h, %bb.d ], [ %.0.i, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = add nsw i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 288
  %.val.i.i21.i = load ptr, ptr %i.m, align 8, !tbaa !122
  %i.n = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i21.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #29 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.n, i32 noundef range(i32 0, 115) 43) #29
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !13
  %i.p = load i32, ptr %i.l, align 4, !tbaa !51
  %i.q = sext i32 %i.p to i64
  %i.r = load i64, ptr %i.n, align 8, !tbaa !61
  %i.s = and i64 %i.r, 32767
  %i.t = shl nsw i64 %i.q, 15
  %i.u = or disjoint i64 %i.s, %i.t
  store i64 %i.u, ptr %i.n, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !208  ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !208
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 %i.w, ptr %i.y, align 8, !tbaa !209
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %2, ptr %i.z, align 8, !tbaa !177
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 1, ptr %i.aa, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr null, ptr %i.ab, align 8, !tbaa !179
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i10, i64 48
  store ptr %i.n, ptr %i.ac, align 8, !tbaa !179
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !179
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.n, ptr %i.ae, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  store i64 %i.ah, ptr %i.af, align 8
  br label %bb.f

bb.e:                                             ; preds = %splat_array.exit
  %i.ai = tail call fastcc ptr @arg_append(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %list_append.exit
  %.0 = phi ptr [ %.0.i, %list_append.exit ], [ %i.ai, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @rest_arg_append(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !61
  %i.a = and i64 %.val, 32512
  %i.b = icmp eq i64 %i.a, 11008
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !61
  %i.c = and i64 %.val.i, 32512                   ; 2 uses
  %i.d = icmp eq i64 %i.c, 19968
  br i1 %i.d, label %bb.c, label %splat_array.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !115  ; 2 uses
  %.0.val.pre.i = load i64, ptr %i.f, align 8, !tbaa !61
  %.pre.i = and i64 %.0.val.pre.i, 32512
  br label %splat_array.exit

splat_array.exit:                                 ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.c ], [ %i.c, %bb.b ]
  %.0.i = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ]  ; 5 uses
  %.not = icmp eq i64 %.pre-phi.i, 11008
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %splat_array.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !179  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !10
  br label %bb.f
end_hunk_0
begin_hunk_1_@parser_yylex:bb.a
  %.val.i943 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bbi = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i943, i64 noundef %i.bbh, i32 noundef 1, i64 noundef %i.bbf) #29
  store i64 %i.bbi, ptr %i.aga, align 8, !tbaa !47
  store ptr null, ptr %i.agh, align 8, !tbaa !40
  store i32 %i.bba, ptr %i.agi, align 4, !tbaa !42
  store ptr %i.baz, ptr %i.afw, align 8, !tbaa !41
  br label %.backedge.backedge

.loopexit1361:                                    ; preds = %bb.kk, %bb.ka, %.loopexit2112, %bb.ks
  %i.bbj = phi ptr [ %i.baj, %bb.ks ], [ %i.baj, %.loopexit2112 ], [ %i.ayl, %bb.ka ], [ %i.azm, %bb.kk ]
  %i.bbk = phi i32 [ 1, %bb.ks ], [ 1, %.loopexit2112 ], [ 0, %bb.ka ], [ 0, %bb.kk ]
  %.16611862 = phi i32 [ %.1661.lcssa1860, %bb.ks ], [ %.1661.lcssa1860, %.loopexit2112 ], [ %.0660, %bb.ka ], [ 1, %bb.kk ] ; 2 uses
  %i.bbl = load ptr, ptr %i.agh, align 8, !tbaa !40 ; 2 uses
  %.not.i944 = icmp eq ptr %i.bbl, null
  br i1 %.not.i944, label %ripper_dispatch_delayed_token.exit946, label %bb.ky

bb.ky:                                            ; preds = %.loopexit1361
  %i.bbm = load ptr, ptr %i.afw, align 8, !tbaa !41
  %i.bbn = load i32, ptr %i.agi, align 4, !tbaa !42
  %i.bbo = load i32, ptr %i.agj, align 8, !tbaa !43
  store i32 %i.bbo, ptr %i.agi, align 4, !tbaa !42
  %i.bbp = load ptr, ptr %i.agb, align 8, !tbaa !44
  %i.bbq = load i32, ptr %i.agk, align 4, !tbaa !45
  %i.bbr = sext i32 %i.bbq to i64
  %i.bbs = getelementptr inbounds i8, ptr %i.bbp, i64 %i.bbr
  store ptr %i.bbs, ptr %i.afw, align 8, !tbaa !41
  %i.bbt = tail call i64 @rb_str_new_mutable_parser_string(ptr noundef nonnull %i.bbl) #29
  %i.bbu = load ptr, ptr %i.agh, align 8, !tbaa !40
  tail call void @rb_parser_string_free(ptr noundef nonnull %0, ptr noundef %i.bbu) #29
  %i.bbv = tail call i64 @ripper_token2eventid(i32 noundef 351) #29
  %.val.i945 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bbw = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i945, i64 noundef %i.bbv, i32 noundef 1, i64 noundef %i.bbt) #29
  store i64 %i.bbw, ptr %i.aga, align 8, !tbaa !47
  store ptr null, ptr %i.agh, align 8, !tbaa !40
  store i32 %i.bbn, ptr %i.agi, align 4, !tbaa !42
  store ptr %i.bbm, ptr %i.afw, align 8, !tbaa !41
  %.pre2144 = load ptr, ptr %i.aft, align 8, !tbaa !48
  br label %ripper_dispatch_delayed_token.exit946

ripper_dispatch_delayed_token.exit946:            ; preds = %.loopexit1361, %bb.ky
  %i.bbx = phi ptr [ %i.bbj, %.loopexit1361 ], [ %.pre2144, %bb.ky ] ; 4 uses
  %i.bby = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not811 = icmp ult ptr %i.bbx, %i.bby
  br i1 %.not811, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %ripper_dispatch_delayed_token.exit946
  %i.bbz = load i8, ptr %i.bbx, align 1, !tbaa !10
  %i.bca = icmp eq i8 %i.bbz, 46
  %i.bcb = zext i1 %i.bca to i32
  br label %bb.la

bb.la:                                            ; preds = %bb.kz, %ripper_dispatch_delayed_token.exit946
  %i.bcc = phi i32 [ 0, %ripper_dispatch_delayed_token.exit946 ], [ %i.bcb, %bb.kz ]
  %i.bcd = icmp eq i32 %i.bcc, %i.bbk
  br i1 %i.bcd, label %bb.lb, label %.loopexit1360

bb.lb:                                            ; preds = %bb.la
  %i.bce = load i16, ptr %i.f, align 8
  %i.bcf = and i16 %i.bce, -9
  store i16 %i.bcf, ptr %i.f, align 8
  %i.bcg = getelementptr inbounds i8, ptr %i.bbx, i64 -1 ; 6 uses
  store ptr %i.bcg, ptr %i.aft, align 8, !tbaa !48
  %i.bch = load ptr, ptr %i.agb, align 8, !tbaa !44
  %i.bci = icmp ugt ptr %i.bcg, %i.bch
  br i1 %i.bci, label %bb.lc, label %pushback.exit947

bb.lc:                                            ; preds = %bb.lb
  %i.bcj = load i8, ptr %i.bcg, align 1, !tbaa !10
  %i.bck = icmp eq i8 %i.bcj, 10
  br i1 %i.bck, label %bb.ld, label %pushback.exit947

bb.ld:                                            ; preds = %bb.lc
  %i.bcl = getelementptr inbounds i8, ptr %i.bbx, i64 -2 ; 3 uses
  %i.bcm = load i8, ptr %i.bcl, align 1, !tbaa !10
  %i.bcn = icmp eq i8 %i.bcm, 13
  br i1 %i.bcn, label %bb.le, label %pushback.exit947

bb.le:                                            ; preds = %bb.ld
  store ptr %i.bcl, ptr %i.aft, align 8, !tbaa !48
  br label %pushback.exit947

pushback.exit947:                                 ; preds = %bb.lb, %bb.lc, %bb.ld, %bb.le
  %.val.i948 = phi ptr [ %i.bcg, %bb.lb ], [ %i.bcg, %bb.lc ], [ %i.bcg, %bb.ld ], [ %i.bcl, %bb.le ] ; 3 uses
  %.val3.i949 = load ptr, ptr %i.afw, align 8, !tbaa !41 ; 4 uses
  %i.bco = icmp ult ptr %.val.i948, %.val3.i949
  br i1 %i.bco, label %bb.lf, label %ripper_has_scan_event.exit.i950

bb.lf:                                            ; preds = %pushback.exit947
  %i.bcp = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bcp, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i950:                  ; preds = %pushback.exit947
  %.not.i951 = icmp ugt ptr %.val.i948, %.val3.i949
  br i1 %.not.i951, label %bb.lg, label %.backedge.backedge

bb.lg:                                            ; preds = %ripper_has_scan_event.exit.i950
  %i.bcq = ptrtoint ptr %.val.i948 to i64
  %i.bcr = ptrtoint ptr %.val3.i949 to i64
  %i.bcs = sub i64 %i.bcq, %i.bcr
  %i.bct = load ptr, ptr %i.afx, align 8, !tbaa !49
  %i.bcu = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i949, i64 noundef %i.bcs, ptr noundef %i.bct) #29
  %i.bcv = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 324) #29
  %.val.i.i952 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bcw = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i952, i64 noundef %i.bcv, i32 noundef 1, i64 noundef %i.bcu) #29
  %i.bcx = load ptr, ptr %i.afz, align 8, !tbaa !39
  %i.bcy = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.bcx) #29 ; 0 uses
  %i.bcz = load ptr, ptr %i.aft, align 8, !tbaa !48
  store ptr %i.bcz, ptr %i.afw, align 8, !tbaa !41
  store i64 %i.bcw, ptr %i.aga, align 8, !tbaa !47
  br label %.backedge.backedge

.loopexit1360:                                    ; preds = %.loopexit2109.a, %.loopexit2110.a, %bb.kr, %.loopexit2111.a, %bb.la, %bb.ka, %bb.kc, %bb.kk, %bb.km
  %i.bda = load i32, ptr %i.agi, align 4, !tbaa !42
  %i.bdb = add nsw i32 %i.bda, -1
  store i32 %i.bdb, ptr %i.agi, align 4, !tbaa !42
  %i.bdc = load ptr, ptr %i.agg, align 8, !tbaa !488
  store ptr %i.bdc, ptr %i.afv, align 8, !tbaa !487
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.axy, i64 24
  %i.bde = load ptr, ptr %i.bdd, align 8, !tbaa !451 ; 2 uses
  store ptr %i.bde, ptr %i.agb, align 8, !tbaa !44
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.axy, i64 16
  %i.bdg = load i64, ptr %i.bdf, align 8, !tbaa !453
  %i.bdh = getelementptr inbounds i8, ptr %i.bde, i64 %i.bdg ; 3 uses
  store ptr %i.bdh, ptr %i.afu, align 8, !tbaa !413
  store ptr %i.axy, ptr %i.agg, align 8, !tbaa !488
  store ptr %i.bdh, ptr %i.aft, align 8, !tbaa !48
  store ptr %i.bdh, ptr %i.afw, align 8, !tbaa !41
  %i.bdi = load ptr, ptr %i.afz, align 8, !tbaa !39
  %i.bdj = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.bdi) #29 ; 0 uses
  br label %.loopexit1368

.loopexit2107:                                    ; preds = %.critedge.i932.peel
  %i.bdk = icmp eq i32 %.0660, 0
  br i1 %i.bdk, label %bb.lh, label %.loopexit2107.thread

.loopexit2107.thread:                             ; preds = %.critedge.i932, %.loopexit2107
  tail call fastcc void @ripper_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 324)
  %i.bdl = load ptr, ptr %i.afu, align 8, !tbaa !413
  store ptr %i.bdl, ptr %i.aft, align 8, !tbaa !48
  br label %.loopexit1368

bb.lh:                                            ; preds = %.loopexit2107
  %i.bdm = load ptr, ptr %i.afu, align 8, !tbaa !413
  store ptr %i.bdm, ptr %i.aft, align 8, !tbaa !48
  br label %.loopexit1368

.loopexit1368:                                    ; preds = %bb.kh, %bb.lh, %.loopexit2107.thread, %.loopexit1360
  %i.bdn = load i16, ptr %i.f, align 8            ; 2 uses
  %i.bdo = or i16 %i.bdn, 4
  store i16 %i.bdo, ptr %i.f, align 8
  %i.bdp = and i16 %i.bdn, 32
  %.not.i954 = icmp eq i16 %i.bdp, 0
  br i1 %.not.i954, label %parser_set_lex_state.exit, label %bb.li

bb.li:                                            ; preds = %.loopexit1368
  %i.bdq = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bdr = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bdq, i32 noundef 1, i32 noundef 10635) #29
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %.loopexit1368, %bb.li
  %.0.i955 = phi i32 [ %i.bdr, %bb.li ], [ 1, %.loopexit1368 ]
  store i32 %.0.i955, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.lj:                                            ; preds = %bb.gv
  %i.bds = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 4 uses
  switch i32 %i.bds, label %bb.lw [
    i32 42, label %bb.lk
    i32 61, label %bb.lu
  ]

bb.lk:                                            ; preds = %bb.lj
  %i.bdt = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 4 uses
  %i.bdu = icmp eq i32 %i.bdt, 61
  br i1 %i.bdu, label %bb.ll, label %bb.ln

bb.ll:                                            ; preds = %bb.lk
  %i.bdv = load ptr, ptr %0, align 8, !tbaa !18
  store i64 134, ptr %i.bdv, align 8, !tbaa !10
  %i.bdw = load i16, ptr %i.f, align 8
  %i.bdx = and i16 %i.bdw, 32
  %.not.i956 = icmp eq i16 %i.bdx, 0
  br i1 %.not.i956, label %parser_set_lex_state.exit958, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.bdy = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bdz = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bdy, i32 noundef 1, i32 noundef 10642) #29
  br label %parser_set_lex_state.exit958

parser_set_lex_state.exit958:                     ; preds = %bb.ll, %bb.lm
  %.0.i957 = phi i32 [ %i.bdz, %bb.lm ], [ 1, %bb.ll ]
  store i32 %.0.i957, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.ln:                                            ; preds = %bb.lk
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bdt)
  %i.bea = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.beb = and i32 %i.bea, 48
  %i.bec = icmp ne i32 %i.beb, 0
  %4 = icmp ne i32 %.0660, 0                      ; 2 uses
  %or.cond5 = select i1 %i.bec, i1 %4, i1 false
  br i1 %or.cond5, label %bb.lo, label %bb.lq

bb.lo:                                            ; preds = %bb.ln
  switch i32 %i.bdt, label %bb.lp [
    i32 32, label %bb.lq
    i32 13, label %bb.lq
    i32 12, label %bb.lq
    i32 11, label %bb.lq
    i32 10, label %bb.lq
    i32 9, label %bb.lq
  ]

bb.lp:                                            ; preds = %bb.lo
  %i.bed = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bee = load i64, ptr @id_warning, align 8, !tbaa !11
  %i.bef = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.590, i64 noundef 35) #29
  %i.beg = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bed, i64 noundef %i.bee, i32 noundef 1, i64 noundef %i.bef) #29 ; 0 uses
  br label %switch.lookup

bb.lq:                                            ; preds = %bb.lo, %bb.lo, %bb.lo, %bb.lo, %bb.lo, %bb.lo, %bb.ln
  %i.beh = and i32 %i.bea, 577
  %.not804 = icmp ne i32 %i.beh, 0
  %i.bei = and i32 %i.bea, 2064
  %i.bej = icmp eq i32 %i.bei, 2064
  %or.cond821 = or i1 %.not804, %i.bej
  br i1 %or.cond821, label %switch.lookup, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bek = and i32 %i.agm, 904
  %i.bel = icmp eq i32 %i.bek, 0
  %or.cond7 = select i1 %i.bel, i1 %4, i1 false
  br i1 %or.cond7, label %bb.ls, label %switch.lookup

bb.ls:                                            ; preds = %bb.lr
  %switch.tableidx = add nsw i32 %i.bdt, -9       ; 2 uses
  %i.bem = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond3167.a = select i1 %i.bem, i1 %switch.lobit, i1 false
  br i1 %or.cond3167.a, label %switch.lookup, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.ben = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.beo = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.591, i64 noundef 15) #29
  %.val853 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bep = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val853, i64 noundef %i.ben, i32 noundef 2, i64 noundef 34316, i64 noundef %i.beo) #29 ; 0 uses
  br label %switch.lookup

bb.lu:                                            ; preds = %bb.lj
  %i.beq = load ptr, ptr %0, align 8, !tbaa !18
  store i64 42, ptr %i.beq, align 8, !tbaa !10
  %i.ber = load i16, ptr %i.f, align 8
  %i.bes = and i16 %i.ber, 32
  %.not.i960 = icmp eq i16 %i.bes, 0
  br i1 %.not.i960, label %parser_set_lex_state.exit962, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bet = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.beu = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bet, i32 noundef 1, i32 noundef 10660) #29
  br label %parser_set_lex_state.exit962

parser_set_lex_state.exit962:                     ; preds = %bb.lu, %bb.lv
  %.0.i961 = phi i32 [ %i.beu, %bb.lv ], [ 1, %bb.lu ]
  store i32 %.0.i961, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.lw:                                            ; preds = %bb.lj
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bds)
  %i.bev = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.bew = and i32 %i.bev, 48
  %i.bex = icmp ne i32 %i.bew, 0
  %5 = icmp ne i32 %.0660, 0                      ; 2 uses
  %or.cond9 = select i1 %i.bex, i1 %5, i1 false
  br i1 %or.cond9, label %bb.lx, label %bb.lz

bb.lx:                                            ; preds = %bb.lw
  switch i32 %i.bds, label %bb.ly [
    i32 32, label %bb.lz
    i32 13, label %bb.lz
    i32 12, label %bb.lz
    i32 11, label %bb.lz
    i32 10, label %bb.lz
    i32 9, label %bb.lz
  ]

bb.ly:                                            ; preds = %bb.lx
  %i.bey = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bez = load i64, ptr @id_warning, align 8, !tbaa !11
  %i.bfa = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.592, i64 noundef 34) #29
  %i.bfb = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bey, i64 noundef %i.bez, i32 noundef 1, i64 noundef %i.bfa) #29 ; 0 uses
  br label %switch.lookup

bb.lz:                                            ; preds = %bb.lx, %bb.lx, %bb.lx, %bb.lx, %bb.lx, %bb.lx, %bb.lw
  %i.bfc = and i32 %i.bev, 577
  %.not801 = icmp ne i32 %i.bfc, 0
  %i.bfd = and i32 %i.bev, 2064
  %i.bfe = icmp eq i32 %i.bfd, 2064
  %or.cond823 = or i1 %.not801, %i.bfe
  br i1 %or.cond823, label %switch.lookup, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.bff = and i32 %i.agm, 904
  %i.bfg = icmp eq i32 %i.bff, 0
  %or.cond11 = select i1 %i.bfg, i1 %5, i1 false
  br i1 %or.cond11, label %bb.mb, label %switch.lookup

bb.mb:                                            ; preds = %bb.ma
  %switch.tableidx3161 = add nsw i32 %i.bds, -9   ; 2 uses
  %i.bfh = icmp ult i32 %switch.tableidx3161, 24
  %switch.shifted3165 = lshr i32 8388639, %switch.tableidx3161
  %switch.lobit3166 = trunc i32 %switch.shifted3165 to i1
  %or.cond3168 = select i1 %i.bfh, i1 %switch.lobit3166, i1 false
  br i1 %or.cond3168, label %switch.lookup, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bfi = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.bfj = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.591, i64 noundef 15) #29
  %.val852 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bfk = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val852, i64 noundef %i.bfi, i32 noundef 2, i64 noundef 10764, i64 noundef %i.bfj) #29 ; 0 uses
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.mb, %bb.ls, %bb.ma, %bb.mc, %bb.lz, %bb.lr, %bb.lt, %bb.lq, %bb.ly, %bb.lp
  %.0655 = phi i32 [ 333, %bb.ly ], [ 334, %bb.lq ], [ 334, %bb.lp ], [ 134, %bb.lr ], [ 333, %bb.lz ], [ 134, %bb.lt ], [ 42, %bb.ma ], [ 42, %bb.mc ], [ 134, %bb.ls ], [ 42, %bb.mb ]
  %i.bfl = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.bfm = and i32 %i.bfl, 384
  %.not806 = icmp eq i32 %i.bfm, 0
  %i.bfn = select i1 %.not806, i32 1, i32 16      ; 2 uses
  %i.bfo = load i16, ptr %i.f, align 8
  %i.bfp = and i16 %i.bfo, 32
  %.not.i965 = icmp eq i16 %i.bfp, 0
  br i1 %.not.i965, label %parser_set_lex_state.exit967, label %bb.md

bb.md:                                            ; preds = %switch.lookup
  %i.bfq = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bfl, i32 noundef %i.bfn, i32 noundef 10675) #29
  br label %parser_set_lex_state.exit967

parser_set_lex_state.exit967:                     ; preds = %switch.lookup, %bb.md
  %.0.i966 = phi i32 [ %i.bfq, %bb.md ], [ %i.bfn, %switch.lookup ]
  store i32 %.0.i966, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.me:                                            ; preds = %bb.gv
  %i.bfr = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 3 uses
  %i.bfs = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.bft = and i32 %i.bfs, 384
  %.not799 = icmp eq i32 %i.bft, 0
  %i.bfu = load i16, ptr %i.f, align 8
  %i.bfv = and i16 %i.bfu, 32
  %.not.i971 = icmp eq i16 %i.bfv, 0              ; 2 uses
  br i1 %.not799, label %bb.mh, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  br i1 %.not.i971, label %parser_set_lex_state.exit970, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.bfw = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bfs, i32 noundef 16, i32 noundef 10681) #29
  br label %parser_set_lex_state.exit970

parser_set_lex_state.exit970:                     ; preds = %bb.mf, %bb.mg
  %.0.i969 = phi i32 [ %i.bfw, %bb.mg ], [ 16, %bb.mf ]
  store i32 %.0.i969, ptr %i.afs, align 8, !tbaa !60
  switch i32 %i.bfr, label %bb.ml [
    i32 64, label %pushback.exit1061
    i32 61, label %bb.mj
    i32 126, label %bb.mk
  ]

bb.mh:                                            ; preds = %bb.me
  br i1 %.not.i971, label %parser_set_lex_state.exit973, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.bfx = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bfs, i32 noundef 1, i32 noundef 10687) #29
  br label %parser_set_lex_state.exit973

parser_set_lex_state.exit973:                     ; preds = %bb.mh, %bb.mi
  %.0.i972 = phi i32 [ %i.bfx, %bb.mi ], [ 1, %bb.mh ]
  store i32 %.0.i972, ptr %i.afs, align 8, !tbaa !60
  switch i32 %i.bfr, label %bb.ml [
    i32 61, label %bb.mj
    i32 126, label %bb.mk
  ]

bb.mj:                                            ; preds = %parser_set_lex_state.exit970, %parser_set_lex_state.exit973
  br label %pushback.exit1061

bb.mk:                                            ; preds = %parser_set_lex_state.exit970, %parser_set_lex_state.exit973
  br label %pushback.exit1061

bb.ml:                                            ; preds = %parser_set_lex_state.exit970, %parser_set_lex_state.exit973
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bfr)
  br label %pushback.exit1061

bb.mm:                                            ; preds = %bb.gv
  %i.bfy = load ptr, ptr %i.agb, align 8, !tbaa !44
  %i.bfz = icmp eq ptr %i.agu, %i.bfy
  br i1 %i.bfz, label %bb.mn, label %word_match_p.exit.thread

bb.mn:                                            ; preds = %bb.mm
  %i.bga = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.agv, ptr noundef nonnull dereferenceable(6) @.str.29, i64 noundef 5) #32
  %.not.i974 = icmp eq i32 %i.bga, 0
  br i1 %.not.i974, label %bb.mo, label %word_match_p.exit.thread

bb.mo:                                            ; preds = %bb.mn
  %i.bgb = getelementptr inbounds nuw i8, ptr %i.agu, i64 6 ; 2 uses
  %i.bgc = load ptr, ptr %i.afu, align 8, !tbaa !413 ; 6 uses
  %.not11.i = icmp ult ptr %i.bgb, %i.bgc
  br i1 %.not11.i, label %bb.mp, label %word_match_p.exit

bb.mp:                                            ; preds = %bb.mo
  %i.bgd = load i8, ptr %i.bgb, align 1, !tbaa !10
  switch i8 %i.bgd, label %word_match_p.exit.thread [
    i8 32, label %word_match_p.exit
    i8 13, label %word_match_p.exit
    i8 12, label %word_match_p.exit
    i8 11, label %word_match_p.exit
    i8 10, label %word_match_p.exit
    i8 9, label %word_match_p.exit
    i8 0, label %word_match_p.exit
    i8 4, label %word_match_p.exit
    i8 26, label %word_match_p.exit
  ]

word_match_p.exit:                                ; preds = %bb.mp, %bb.mp, %bb.mp, %bb.mp, %bb.mp, %bb.mp, %bb.mp, %bb.mp, %bb.mp, %bb.mo
  store ptr %i.bgc, ptr %i.aft, align 8, !tbaa !48
  %.val3.i977 = load ptr, ptr %i.afw, align 8, !tbaa !41 ; 4 uses
  %i.bge = icmp ult ptr %i.bgc, %.val3.i977
  br i1 %i.bge, label %bb.mq, label %ripper_has_scan_event.exit.i978

bb.mq:                                            ; preds = %word_match_p.exit
  %i.bgf = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bgf, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i978:                  ; preds = %word_match_p.exit
  %.not.i979 = icmp ugt ptr %i.bgc, %.val3.i977
  br i1 %.not.i979, label %bb.mr, label %.critedge.i989.peel

bb.mr:                                            ; preds = %ripper_has_scan_event.exit.i978
  %i.bgg = ptrtoint ptr %i.bgc to i64
  %i.bgh = ptrtoint ptr %.val3.i977 to i64
  %i.bgi = sub i64 %i.bgg, %i.bgh
  %i.bgj = load ptr, ptr %i.afx, align 8, !tbaa !49
  %i.bgk = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i977, i64 noundef %i.bgi, ptr noundef %i.bgj) #29
  %i.bgl = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 353) #29
  %.val.i.i980 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bgm = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i980, i64 noundef %i.bgl, i32 noundef 1, i64 noundef %i.bgk) #29
  %i.bgn = load ptr, ptr %i.afz, align 8, !tbaa !39
  %i.bgo = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.bgn) #29 ; 0 uses
  %i.bgp = load ptr, ptr %i.aft, align 8, !tbaa !48
  store ptr %i.bgp, ptr %i.afw, align 8, !tbaa !41
  store i64 %i.bgm, ptr %i.aga, align 8, !tbaa !47
  %.pre2138 = load ptr, ptr %i.afu, align 8, !tbaa !413
  br label %.critedge.i989.peel

.critedge.i989.peel:                              ; preds = %ripper_has_scan_event.exit.i978, %bb.mr
  %i.bgq = phi ptr [ %i.bgc, %ripper_has_scan_event.exit.i978 ], [ %.pre2138, %bb.mr ]
  store ptr %i.bgq, ptr %i.aft, align 8, !tbaa !48
  %i.bgr = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i990.peel = icmp eq i32 %i.bgr, 0
  br i1 %.not14.i990.peel, label %bb.ms, label %ripper_dispatch_scan_event.exit1008.thread

bb.ms:                                            ; preds = %.critedge.i989.peel
  %.pre.i993.peel = load ptr, ptr %i.aft, align 8, !tbaa !48 ; 7 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %.pre.i993.peel, i64 1 ; 7 uses
  store ptr %i.bgs, ptr %i.aft, align 8, !tbaa !48
  %i.bgt = load i8, ptr %.pre.i993.peel, align 1, !tbaa !10
  switch i8 %i.bgt, label %.split670.peel [
    i8 13, label %bb.mv
    i8 61, label %sub_0.peel
  ], !prof !548

sub_0.peel:                                       ; preds = %bb.ms
end_hunk_1
begin_hunk_2_@parser_yylex:bb.a
    i8 13, label %bb.na
    i8 61, label %sub_0
  ], !prof !548

bb.na:                                            ; preds = %bb.mz
  %i.bij = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not.i.i994 = icmp ult ptr %i.bih, %i.bij
  br i1 %.not.i.i994, label %bb.nb, label %.split670

bb.nb:                                            ; preds = %bb.na
  %i.bik = load i8, ptr %i.bih, align 1, !tbaa !10
  %i.bil = icmp eq i8 %i.bik, 10
  %i.bim = getelementptr inbounds nuw i8, ptr %i.big, i64 2
  %spec.select2718 = select i1 %i.bil, ptr %i.bim, ptr %i.bih
  br label %.split670

ripper_dispatch_scan_event.exit1008.thread:       ; preds = %.critedge.i989.peel, %.critedge.i989
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.593) #29
  br label %pushback.exit1061

.split670:                                        ; preds = %bb.nb, %bb.mz, %bb.na
  %i.bin = phi ptr [ %i.bih, %bb.mz ], [ %i.bih, %bb.na ], [ %spec.select2718, %bb.nb ] ; 2 uses
  %i.bio = load i16, ptr %i.f, align 8
  %i.bip = and i16 %i.bio, -9
  store i16 %i.bip, ptr %i.f, align 8
  %i.biq = getelementptr inbounds i8, ptr %i.bin, i64 -1 ; 3 uses
  store ptr %i.biq, ptr %i.aft, align 8, !tbaa !48
  %i.bir = load ptr, ptr %i.agb, align 8, !tbaa !44
  %i.bis = icmp ugt ptr %i.biq, %i.bir
  br i1 %i.bis, label %bb.nc, label %pushback.exit997

bb.nc:                                            ; preds = %.split670
  %i.bit = load i8, ptr %i.biq, align 1, !tbaa !10
  %i.biu = icmp eq i8 %i.bit, 10
  br i1 %i.biu, label %bb.nd, label %pushback.exit997

bb.nd:                                            ; preds = %bb.nc
  %i.biv = getelementptr inbounds i8, ptr %i.bin, i64 -2 ; 2 uses
  %i.biw = load i8, ptr %i.biv, align 1, !tbaa !10
  %i.bix = icmp eq i8 %i.biw, 13
  br i1 %i.bix, label %pushback.exit997.sink.split, label %pushback.exit997

sub_0:                                            ; preds = %bb.mz
  %i.biy = load i8, ptr %i.bih, align 1
  %.not1809.a = icmp eq i8 %i.biy, 101
  br i1 %.not1809.a, label %sub_1, label %.split671

sub_1:                                            ; preds = %sub_0
  %i.biz = getelementptr inbounds nuw i8, ptr %i.big, i64 2
  %i.bja = load i8, ptr %i.biz, align 1
  %.not1810 = icmp eq i8 %i.bja, 110
  br i1 %.not1810, label %.tail, label %.split671

.tail:                                            ; preds = %sub_1
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.big, i64 3
  %i.bjc = load i8, ptr %i.bjb, align 1
  %i.bjd = icmp eq i8 %i.bjc, 100
  br i1 %i.bjd, label %bb.ne, label %.split671

bb.ne:                                            ; preds = %.tail
  %i.bje = getelementptr inbounds nuw i8, ptr %i.big, i64 4 ; 2 uses
  %i.bjf = load ptr, ptr %i.afu, align 8, !tbaa !413 ; 11 uses
  %.not11.i1000 = icmp ult ptr %i.bje, %i.bjf
  br i1 %.not11.i1000, label %bb.nf, label %word_match_p.exit1001

bb.nf:                                            ; preds = %bb.ne
  %i.bjg = load i8, ptr %i.bje, align 1, !tbaa !10
  switch i8 %i.bjg, label %.split671 [
    i8 32, label %word_match_p.exit1001
    i8 13, label %word_match_p.exit1001
    i8 12, label %word_match_p.exit1001
    i8 11, label %word_match_p.exit1001
    i8 10, label %word_match_p.exit1001
    i8 9, label %word_match_p.exit1001
    i8 0, label %word_match_p.exit1001
    i8 4, label %word_match_p.exit1001
    i8 26, label %word_match_p.exit1001
  ]

.split671:                                        ; preds = %sub_1, %sub_0, %bb.nf, %.tail
  %i.bjh = load i16, ptr %i.f, align 8
  %i.bji = and i16 %i.bjh, -9
  store i16 %i.bji, ptr %i.f, align 8
  store ptr %i.big, ptr %i.aft, align 8, !tbaa !48
  %i.bjj = load ptr, ptr %i.agb, align 8, !tbaa !44
  %i.bjk = icmp ugt ptr %i.big, %i.bjj
  br i1 %i.bjk, label %bb.ng, label %pushback.exit997

bb.ng:                                            ; preds = %.split671
  %i.bjl = load i8, ptr %i.big, align 1, !tbaa !10
  %i.bjm = icmp eq i8 %i.bjl, 10
  br i1 %i.bjm, label %bb.nh, label %pushback.exit997

bb.nh:                                            ; preds = %bb.ng
  %i.bjn = getelementptr inbounds i8, ptr %i.big, i64 -1 ; 2 uses
  %i.bjo = load i8, ptr %i.bjn, align 1, !tbaa !10
  %i.bjp = icmp eq i8 %i.bjo, 13
  br i1 %i.bjp, label %pushback.exit997.sink.split, label %pushback.exit997

pushback.exit997.sink.split:                      ; preds = %bb.nh, %bb.nd
  %.sink2719 = phi ptr [ %i.biv, %bb.nd ], [ %i.bjn, %bb.nh ]
  store ptr %.sink2719, ptr %i.aft, align 8, !tbaa !48
  br label %pushback.exit997

pushback.exit997:                                 ; preds = %pushback.exit997.sink.split, %bb.nh, %bb.ng, %.split671, %bb.nd, %bb.nc, %.split670
  %i.bjq = load ptr, ptr %i.afu, align 8, !tbaa !413 ; 3 uses
  store ptr %i.bjq, ptr %i.aft, align 8, !tbaa !48
  %.val3.i983 = load ptr, ptr %i.afw, align 8, !tbaa !41 ; 2 uses
  %i.bjr = icmp ult ptr %i.bjq, %.val3.i983
  br i1 %i.bjr, label %.loopexit2103, label %ripper_has_scan_event.exit.i984, !llvm.loop !551

word_match_p.exit1001:                            ; preds = %bb.nf, %bb.nf, %bb.nf, %bb.nf, %bb.nf, %bb.nf, %bb.nf, %bb.nf, %bb.nf, %bb.ne, %bb.mu, %bb.mu, %bb.mu, %bb.mu, %bb.mu, %bb.mu, %bb.mu, %bb.mu, %bb.mu, %bb.mt
  %i.bjs = phi ptr [ %i.bhb, %bb.mt ], [ %i.bhb, %bb.mu ], [ %i.bhb, %bb.mu ], [ %i.bhb, %bb.mu ], [ %i.bhb, %bb.mu ], [ %i.bhb, %bb.mu ], [ %i.bhb, %bb.mu ], [ %i.bhb, %bb.mu ], [ %i.bhb, %bb.mu ], [ %i.bhb, %bb.mu ], [ %i.bjf, %bb.ne ], [ %i.bjf, %bb.nf ], [ %i.bjf, %bb.nf ], [ %i.bjf, %bb.nf ], [ %i.bjf, %bb.nf ], [ %i.bjf, %bb.nf ], [ %i.bjf, %bb.nf ], [ %i.bjf, %bb.nf ], [ %i.bjf, %bb.nf ], [ %i.bjf, %bb.nf ] ; 4 uses
  store ptr %i.bjs, ptr %i.aft, align 8, !tbaa !48
  %.val3.i1004 = load ptr, ptr %i.afw, align 8, !tbaa !41 ; 4 uses
  %i.bjt = icmp ult ptr %i.bjs, %.val3.i1004
  br i1 %i.bjt, label %bb.ni, label %ripper_has_scan_event.exit.i1005

bb.ni:                                            ; preds = %word_match_p.exit1001
  %i.bju = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bju, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i1005:                 ; preds = %word_match_p.exit1001
  %.not.i1006 = icmp ugt ptr %i.bjs, %.val3.i1004
  br i1 %.not.i1006, label %bb.nj, label %.backedge.backedge

bb.nj:                                            ; preds = %ripper_has_scan_event.exit.i1005
  %i.bjv = ptrtoint ptr %i.bjs to i64
  %i.bjw = ptrtoint ptr %.val3.i1004 to i64
  %i.bjx = sub i64 %i.bjv, %i.bjw
  %i.bjy = load ptr, ptr %i.afx, align 8, !tbaa !49
  %i.bjz = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i1004, i64 noundef %i.bjx, ptr noundef %i.bjy) #29
  %i.bka = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 355) #29
  %.val.i.i1007 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bkb = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i1007, i64 noundef %i.bka, i32 noundef 1, i64 noundef %i.bjz) #29
  %i.bkc = load ptr, ptr %i.afz, align 8, !tbaa !39
  %i.bkd = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.bkc) #29 ; 0 uses
  %i.bke = load ptr, ptr %i.aft, align 8, !tbaa !48
  store ptr %i.bke, ptr %i.afw, align 8, !tbaa !41
  store i64 %i.bkb, ptr %i.aga, align 8, !tbaa !47
  br label %.backedge.backedge

word_match_p.exit.thread:                         ; preds = %bb.mp, %bb.mn, %bb.mm
  %i.bkf = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.bkg = and i32 %i.bkf, 384
  %.not795 = icmp eq i32 %i.bkg, 0
  %i.bkh = select i1 %.not795, i32 1, i32 16      ; 2 uses
  %i.bki = load i16, ptr %i.f, align 8
  %i.bkj = and i16 %i.bki, 32
  %.not.i1009 = icmp eq i16 %i.bkj, 0
  br i1 %.not.i1009, label %parser_set_lex_state.exit1011, label %bb.nk

bb.nk:                                            ; preds = %word_match_p.exit.thread
  %i.bkk = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bkf, i32 noundef %i.bkh, i32 noundef 10728) #29
  br label %parser_set_lex_state.exit1011

parser_set_lex_state.exit1011:                    ; preds = %word_match_p.exit.thread, %bb.nk
  %.0.i1010 = phi i32 [ %i.bkk, %bb.nk ], [ %i.bkh, %word_match_p.exit.thread ]
  store i32 %.0.i1010, ptr %i.afs, align 8, !tbaa !60
  %i.bkl = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  switch i32 %i.bkl, label %bb.no [
    i32 61, label %bb.nl
    i32 126, label %pushback.exit1061
    i32 62, label %bb.nn
  ]

bb.nl:                                            ; preds = %parser_set_lex_state.exit1011
  %i.bkm = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %i.bkn = icmp eq i32 %i.bkm, 61
  br i1 %i.bkn, label %pushback.exit1061, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bkm)
  br label %pushback.exit1061

bb.nn:                                            ; preds = %parser_set_lex_state.exit1011
  br label %pushback.exit1061

bb.no:                                            ; preds = %parser_set_lex_state.exit1011
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bkl)
  br label %pushback.exit1061

bb.np:                                            ; preds = %bb.gv
  %i.bko = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 3 uses
  %i.bkp = icmp eq i32 %i.bko, 60                 ; 2 uses
  %.pre2136.a = load i32, ptr %i.afs, align 8, !tbaa !60 ; 5 uses
  %i.bkq = and i32 %.pre2136.a, 782
  %or.cond824 = icmp eq i32 %i.bkq, 0
  %or.cond2720 = select i1 %i.bkp, i1 %or.cond824, i1 false
  br i1 %or.cond2720, label %bb.nq, label %bb.nt

bb.nq:                                            ; preds = %bb.np
  %i.bkr = and i32 %.pre2136.a, 48
  %.not789 = icmp eq i32 %i.bkr, 0
  br i1 %.not789, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %bb.nq
  %i.bks = and i32 %.pre2136.a, 2048
  %i.bkt = icmp ne i32 %i.bks, 0
  %6 = icmp ne i32 %.0660, 0
  %or.cond13 = select i1 %i.bkt, i1 true, i1 %6
  br i1 %or.cond13, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %bb.nr, %bb.nq
  %i.bku = tail call fastcc i32 @heredoc_identifier(ptr noundef nonnull %0) ; 2 uses
  %.not790 = icmp eq i32 %i.bku, 0
  %i.bkv = tail call i32 @llvm.smax.i32(i32 %i.bku, i32 0)
  br i1 %.not790, label %._crit_edge, label %pushback.exit1061

._crit_edge:                                      ; preds = %bb.ns
  %.pre2135 = load i32, ptr %i.afs, align 8, !tbaa !60
  br label %bb.nt

bb.nt:                                            ; preds = %._crit_edge, %bb.nr, %bb.np
  %i.bkw = phi i32 [ %.pre2135, %._crit_edge ], [ %.pre2136.a, %bb.nr ], [ %.pre2136.a, %bb.np ] ; 4 uses
  %i.bkx = and i32 %i.bkw, 384
  %.not791 = icmp eq i32 %i.bkx, 0
  br i1 %.not791, label %bb.nw, label %bb.nu

bb.nu:                                            ; preds = %bb.nt
  %i.bky = load i16, ptr %i.f, align 8
  %i.bkz = and i16 %i.bky, 32
  %.not.i1012 = icmp eq i16 %i.bkz, 0
  br i1 %.not.i1012, label %parser_set_lex_state.exit1014, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.bla = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bkw, i32 noundef 16, i32 noundef 10755) #29
  br label %parser_set_lex_state.exit1014

bb.nw:                                            ; preds = %bb.nt
  %i.blb = and i32 %i.bkw, 512
  %.not792 = icmp eq i32 %i.blb, 0
  %.pre2137 = load i16, ptr %i.f, align 8         ; 2 uses
  br i1 %.not792, label %bb.ny, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.blc = or i16 %.pre2137, 4                    ; 2 uses
  store i16 %i.blc, ptr %i.f, align 8
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nx, %bb.nw
  %i.bld = phi i16 [ %i.blc, %bb.nx ], [ %.pre2137, %bb.nw ]
  %i.ble = and i16 %i.bld, 32
  %.not.i1015 = icmp eq i16 %i.ble, 0
  br i1 %.not.i1015, label %parser_set_lex_state.exit1014, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.blf = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bkw, i32 noundef 1, i32 noundef 10760) #29
  br label %parser_set_lex_state.exit1014

parser_set_lex_state.exit1014:                    ; preds = %bb.nz, %bb.ny, %bb.nv, %bb.nu
  %storemerge1330 = phi i32 [ 16, %bb.nu ], [ %i.bla, %bb.nv ], [ %i.blf, %bb.nz ], [ 1, %bb.ny ]
  store i32 %storemerge1330, ptr %i.afs, align 8, !tbaa !60
  %i.blg = icmp eq i32 %i.bko, 61
  br i1 %i.blg, label %bb.oa, label %bb.oc

bb.oa:                                            ; preds = %parser_set_lex_state.exit1014
  %i.blh = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %i.bli = icmp eq i32 %i.blh, 62
  br i1 %i.bli, label %pushback.exit1061, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.blh)
  br label %pushback.exit1061

bb.oc:                                            ; preds = %parser_set_lex_state.exit1014
  br i1 %i.bkp, label %bb.od, label %bb.oj

bb.od:                                            ; preds = %bb.oc
  %i.blj = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 3 uses
  %i.blk = icmp eq i32 %i.blj, 61
  br i1 %i.blk, label %bb.oe, label %bb.og

bb.oe:                                            ; preds = %bb.od
  %i.bll = load ptr, ptr %0, align 8, !tbaa !18
  store i64 136, ptr %i.bll, align 8, !tbaa !10
  %i.blm = load i16, ptr %i.f, align 8
  %i.bln = and i16 %i.blm, 32
  %.not.i1018 = icmp eq i16 %i.bln, 0
  br i1 %.not.i1018, label %parser_set_lex_state.exit1020, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.blo = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.blp = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.blo, i32 noundef 1, i32 noundef 10772) #29
  br label %parser_set_lex_state.exit1020

parser_set_lex_state.exit1020:                    ; preds = %bb.oe, %bb.of
  %.0.i1019 = phi i32 [ %i.blp, %bb.of ], [ 1, %bb.oe ]
  store i32 %.0.i1019, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.og:                                            ; preds = %bb.od
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.blj)
  %i.blq = and i32 %i.agm, 904
  %i.blr = icmp eq i32 %i.blq, 0
  %7 = icmp ne i32 %.0660, 0
  %or.cond15 = select i1 %i.blr, i1 %7, i1 false
  br i1 %or.cond15, label %bb.oh, label %pushback.exit1061

bb.oh:                                            ; preds = %bb.og
  %switch.tableidx3169 = add nsw i32 %i.blj, -9   ; 2 uses
  %i.bls = icmp ult i32 %switch.tableidx3169, 24
  %switch.shifted3172 = lshr i32 8388639, %switch.tableidx3169
  %switch.lobit3173 = trunc i32 %switch.shifted3172 to i1
  %or.cond3199.a = select i1 %i.bls, i1 %switch.lobit3173, i1 false
  br i1 %or.cond3199.a, label %pushback.exit1061, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.blt = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.blu = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.594, i64 noundef 13) #29
  %.val851 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.blv = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val851, i64 noundef %i.blt, i32 noundef 2, i64 noundef 34828, i64 noundef %i.blu) #29 ; 0 uses
  br label %pushback.exit1061

bb.oj:                                            ; preds = %bb.oc
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bko)
  br label %pushback.exit1061

bb.ok:                                            ; preds = %bb.gv
  %i.blw = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.blx = and i32 %i.blw, 384
  %.not786 = icmp eq i32 %i.blx, 0
  %i.bly = select i1 %.not786, i32 1, i32 16      ; 2 uses
  %i.blz = load i16, ptr %i.f, align 8
  %i.bma = and i16 %i.blz, 32
  %.not.i1022 = icmp eq i16 %i.bma, 0
  br i1 %.not.i1022, label %parser_set_lex_state.exit1024, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.bmb = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.blw, i32 noundef %i.bly, i32 noundef 10782) #29
  br label %parser_set_lex_state.exit1024

parser_set_lex_state.exit1024:                    ; preds = %bb.ok, %bb.ol
  %.0.i1023 = phi i32 [ %i.bmb, %bb.ol ], [ %i.bly, %bb.ok ]
  store i32 %.0.i1023, ptr %i.afs, align 8, !tbaa !60
  %i.bmc = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  switch i32 %i.bmc, label %bb.oq [
    i32 61, label %pushback.exit1061
    i32 62, label %bb.om
  ]

bb.om:                                            ; preds = %parser_set_lex_state.exit1024
  %i.bmd = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %i.bme = icmp eq i32 %i.bmd, 61
  br i1 %i.bme, label %bb.on, label %bb.op

bb.on:                                            ; preds = %bb.om
  %i.bmf = load ptr, ptr %0, align 8, !tbaa !18
  store i64 137, ptr %i.bmf, align 8, !tbaa !10
  %i.bmg = load i16, ptr %i.f, align 8
  %i.bmh = and i16 %i.bmg, 32
  %.not.i1025 = icmp eq i16 %i.bmh, 0
  br i1 %.not.i1025, label %parser_set_lex_state.exit1027, label %bb.oo

bb.oo:                                            ; preds = %bb.on
  %i.bmi = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bmj = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmi, i32 noundef 1, i32 noundef 10789) #29
  br label %parser_set_lex_state.exit1027

parser_set_lex_state.exit1027:                    ; preds = %bb.on, %bb.oo
  %.0.i1026 = phi i32 [ %i.bmj, %bb.oo ], [ 1, %bb.on ]
  store i32 %.0.i1026, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.op:                                            ; preds = %bb.om
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bmd)
  br label %pushback.exit1061

bb.oq:                                            ; preds = %parser_set_lex_state.exit1024
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bmc)
  br label %pushback.exit1061

bb.or:                                            ; preds = %bb.gv
  %i.bmk = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.bml = and i32 %i.bmk, 1032
  %i.bmm = icmp eq i32 %i.bml, 0
  %i.bmn = icmp ne i32 %.0663, 0
  %or.cond17 = select i1 %i.bmm, i1 true, i1 %i.bmn
  %i.bmo = and i32 %i.bmk, 48
  %.not785 = icmp eq i32 %i.bmo, 0
  %i.bmp = select i1 %or.cond17, i1 %.not785, i1 false
  %i.bmq = select i1 %i.bmp, i32 2, i32 66
  %i.bmr = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 16
  store i32 %i.bmq, ptr %i.bms, align 8, !tbaa !10
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bmr, i64 24
  store i32 34, ptr %i.bmt, align 8, !tbaa !10
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bmr, i64 20
  store i32 0, ptr %i.bmu, align 4, !tbaa !10
  store ptr %i.bmr, ptr %i.h, align 8, !tbaa !171
  %i.bmv = load ptr, ptr %i.aft, align 8, !tbaa !48
  %i.bmw = getelementptr inbounds i8, ptr %i.bmv, i64 -1
  store ptr %i.bmw, ptr %i.afw, align 8, !tbaa !41
  br label %pushback.exit1061

bb.os:                                            ; preds = %bb.gv
  %i.bmx = load i32, ptr %i.afs, align 8, !tbaa !60 ; 5 uses
  %i.bmy = and i32 %i.bmx, 128
  %.not782 = icmp eq i32 %i.bmy, 0
  br i1 %.not782, label %bb.ov, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.bmz = load i16, ptr %i.f, align 8
  %i.bna = and i16 %i.bmz, 32
  %.not.i1028 = icmp eq i16 %i.bna, 0
  br i1 %.not.i1028, label %parser_set_lex_state.exit1030, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.bnb = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmx, i32 noundef 8, i32 noundef 10806) #29
  br label %parser_set_lex_state.exit1030

parser_set_lex_state.exit1030:                    ; preds = %bb.ot, %bb.ou
  %.0.i1029 = phi i32 [ %i.bnb, %bb.ou ], [ 8, %bb.ot ]
  store i32 %.0.i1029, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.ov:                                            ; preds = %bb.os
  %i.bnc = and i32 %i.bmx, 256
  %.not783 = icmp eq i32 %i.bnc, 0
  br i1 %.not783, label %bb.pb, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %.not784 = icmp eq i32 %.0663, 0
  %i.bnd = load i16, ptr %i.f, align 8
  %i.bne = and i16 %i.bnd, 32
  %.not.i1034 = icmp eq i16 %i.bne, 0             ; 2 uses
  br i1 %.not784, label %bb.oz, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  br i1 %.not.i1034, label %parser_set_lex_state.exit1033, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  %i.bnf = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmx, i32 noundef 32, i32 noundef 10811) #29
  br label %parser_set_lex_state.exit1033

parser_set_lex_state.exit1033:                    ; preds = %bb.ox, %bb.oy
  %.0.i1032 = phi i32 [ %i.bnf, %bb.oy ], [ 32, %bb.ox ]
  store i32 %.0.i1032, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.oz:                                            ; preds = %bb.ow
  br i1 %.not.i1034, label %parser_set_lex_state.exit1036, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.bng = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmx, i32 noundef 16, i32 noundef 10813) #29
  br label %parser_set_lex_state.exit1036

parser_set_lex_state.exit1036:                    ; preds = %bb.oz, %bb.pa
  %.0.i1035 = phi i32 [ %i.bng, %bb.pa ], [ 16, %bb.oz ]
  store i32 %.0.i1035, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.pb:                                            ; preds = %bb.ov
  %i.bnh = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 16
  store i32 2, ptr %i.bni, align 8, !tbaa !10
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bnh, i64 24
  store i32 96, ptr %i.bnj, align 8, !tbaa !10
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnh, i64 20
  store i32 0, ptr %i.bnk, align 4, !tbaa !10
  store ptr %i.bnh, ptr %i.h, align 8, !tbaa !171
  br label %pushback.exit1061

bb.pc:                                            ; preds = %bb.gv
  %i.bnl = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.bnm = and i32 %i.bnl, 1032
  %i.bnn = icmp eq i32 %i.bnm, 0
  %i.bno = icmp ne i32 %.0663, 0
  %or.cond19 = select i1 %i.bnn, i1 true, i1 %i.bno
  %i.bnp = and i32 %i.bnl, 48
  %.not781 = icmp eq i32 %i.bnp, 0
  %i.bnq = select i1 %or.cond19, i1 %.not781, i1 false
  %i.bnr = select i1 %i.bnq, i32 0, i32 64
  %i.bns = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bns, i64 16
  store i32 %i.bnr, ptr %i.bnt, align 8, !tbaa !10
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bns, i64 24
  store i32 39, ptr %i.bnu, align 8, !tbaa !10
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bns, i64 20
  store i32 0, ptr %i.bnv, align 4, !tbaa !10
  store ptr %i.bns, ptr %i.h, align 8, !tbaa !171
  %i.bnw = load ptr, ptr %i.aft, align 8, !tbaa !48
  %i.bnx = getelementptr inbounds i8, ptr %i.bnw, i64 -1
  store ptr %i.bnx, ptr %i.afw, align 8, !tbaa !41
  br label %pushback.exit1061

bb.pd:                                            ; preds = %bb.gv
  %i.bny = tail call fastcc i32 @parse_qmark(ptr noundef nonnull %0, i32 noundef %.0660)
  br label %pushback.exit1061

bb.pe:                                            ; preds = %bb.gv
  %i.bnz = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 4 uses
  switch i32 %i.bnz, label %bb.po [
    i32 38, label %bb.pf
    i32 61, label %bb.pk
    i32 46, label %bb.pm
  ]

bb.pf:                                            ; preds = %bb.pe
  %i.boa = load i16, ptr %i.f, align 8
  %i.bob = and i16 %i.boa, 32
  %.not.i1037 = icmp eq i16 %i.bob, 0
  br i1 %.not.i1037, label %parser_set_lex_state.exit1039, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.boc = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bod = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.boc, i32 noundef 1, i32 noundef 10830) #29
  br label %parser_set_lex_state.exit1039

parser_set_lex_state.exit1039:                    ; preds = %bb.pf, %bb.pg
  %.0.i1038 = phi i32 [ %i.bod, %bb.pg ], [ 1, %bb.pf ]
  store i32 %.0.i1038, ptr %i.afs, align 8, !tbaa !60
  %i.boe = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %i.bof = icmp eq i32 %i.boe, 61
  br i1 %i.bof, label %bb.ph, label %bb.pj

bb.ph:                                            ; preds = %parser_set_lex_state.exit1039
  %i.bog = load ptr, ptr %0, align 8, !tbaa !18
  store i64 148, ptr %i.bog, align 8, !tbaa !10
  %i.boh = load i16, ptr %i.f, align 8
  %i.boi = and i16 %i.boh, 32
  %.not.i1040 = icmp eq i16 %i.boi, 0
  br i1 %.not.i1040, label %parser_set_lex_state.exit1042, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.boj = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bok = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.boj, i32 noundef 1, i32 noundef 10833) #29
  br label %parser_set_lex_state.exit1042

parser_set_lex_state.exit1042:                    ; preds = %bb.ph, %bb.pi
  %.0.i1041 = phi i32 [ %i.bok, %bb.pi ], [ 1, %bb.ph ]
  store i32 %.0.i1041, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.pj:                                            ; preds = %parser_set_lex_state.exit1039
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.boe)
  br label %pushback.exit1061

bb.pk:                                            ; preds = %bb.pe
  %i.bol = load ptr, ptr %0, align 8, !tbaa !18
  store i64 38, ptr %i.bol, align 8, !tbaa !10
  %i.bom = load i16, ptr %i.f, align 8
  %i.bon = and i16 %i.bom, 32
  %.not.i1043 = icmp eq i16 %i.bon, 0
  br i1 %.not.i1043, label %parser_set_lex_state.exit1045, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.boo = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bop = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.boo, i32 noundef 1, i32 noundef 10841) #29
  br label %parser_set_lex_state.exit1045

parser_set_lex_state.exit1045:                    ; preds = %bb.pk, %bb.pl
  %.0.i1044 = phi i32 [ %i.bop, %bb.pl ], [ 1, %bb.pk ]
  store i32 %.0.i1044, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.pm:                                            ; preds = %bb.pe
  %i.boq = load ptr, ptr %0, align 8, !tbaa !18
  store i64 150, ptr %i.boq, align 8, !tbaa !10
  %i.bor = load i16, ptr %i.f, align 8
  %i.bos = and i16 %i.bor, 32
  %.not.i1046 = icmp eq i16 %i.bos, 0
  br i1 %.not.i1046, label %parser_set_lex_state.exit1048, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.bot = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bou = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bot, i32 noundef 256, i32 noundef 10846) #29
  br label %parser_set_lex_state.exit1048

parser_set_lex_state.exit1048:                    ; preds = %bb.pm, %bb.pn
  %.0.i1047 = phi i32 [ %i.bou, %bb.pn ], [ 256, %bb.pm ]
  store i32 %.0.i1047, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.po:                                            ; preds = %bb.pe
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bnz)
  %i.bov = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.bow = and i32 %i.bov, 48
  %i.box = icmp ne i32 %i.bow, 0
  %8 = icmp ne i32 %.0660, 0                      ; 2 uses
  %or.cond21 = select i1 %i.box, i1 %8, i1 false
  br i1 %or.cond21, label %bb.pp, label %bb.pu

bb.pp:                                            ; preds = %bb.po
  switch i32 %i.bnz, label %.thread1261 [
    i32 32, label %bb.pu
    i32 13, label %bb.pu
    i32 12, label %bb.pu
    i32 11, label %bb.pu
    i32 10, label %bb.pu
    i32 9, label %bb.pu
    i32 58, label %bb.pq
  ]

bb.pq:                                            ; preds = %bb.pp
  %i.boy = load ptr, ptr %i.aft, align 8, !tbaa !48
  %i.boz = getelementptr inbounds nuw i8, ptr %i.boy, i64 1 ; 3 uses
  %i.bpa = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not776 = icmp ult ptr %i.boz, %i.bpa
  br i1 %.not776, label %bb.pr, label %.thread1261

bb.pr:                                            ; preds = %bb.pq
  %i.bpb = load i8, ptr %i.boz, align 1, !tbaa !10 ; 2 uses
  switch i8 %i.bpb, label %bb.ps [
    i8 34, label %is_identchar.exit.thread
    i8 39, label %is_identchar.exit.thread
  ]

bb.ps:                                            ; preds = %bb.pr
  %i.bpc = load ptr, ptr %i.afx, align 8, !tbaa !49 ; 2 uses
  %i.bpd = zext i8 %i.bpb to i32
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.bpc, i64 88
  %i.bpf = load ptr, ptr %i.bpe, align 8, !tbaa !552
  %i.bpg = tail call i32 %i.bpf(i32 noundef range(i32 -1, 256) %i.bpd, i32 noundef 13, ptr noundef %i.bpc) #29, !inline_history !553
  %.not.i1050 = icmp eq i32 %i.bpg, 0
  br i1 %.not.i1050, label %bb.pt, label %is_identchar.exit.thread

bb.pt:                                            ; preds = %bb.ps
  %i.bph = load i8, ptr %i.boz, align 1, !tbaa !10 ; 2 uses
  %i.bpi = icmp ne i8 %i.bph, 95
  %.not777 = icmp sgt i8 %i.bph, -1
  %or.cond = and i1 %i.bpi, %.not777
  br i1 %or.cond, label %.thread1261, label %is_identchar.exit.thread

.thread1261:                                      ; preds = %bb.pt, %bb.pp, %bb.pq
  %i.bpj = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bpk = load i64, ptr @id_warning, align 8, !tbaa !11
  %i.bpl = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.595, i64 noundef 34) #29
  %i.bpm = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bpj, i64 noundef %i.bpk, i32 noundef 1, i64 noundef %i.bpl) #29 ; 0 uses
  br label %is_identchar.exit.thread

bb.pu:                                            ; preds = %bb.pp, %bb.pp, %bb.pp, %bb.pp, %bb.pp, %bb.pp, %bb.po
  %i.bpn = and i32 %i.bov, 577
  %.not778 = icmp ne i32 %i.bpn, 0
  %i.bpo = and i32 %i.bov, 2064
  %i.bpp = icmp eq i32 %i.bpo, 2064
  %or.cond826 = or i1 %.not778, %i.bpp
  br i1 %or.cond826, label %is_identchar.exit.thread, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.bpq = and i32 %i.agm, 904
  %i.bpr = icmp eq i32 %i.bpq, 0
  %or.cond25 = select i1 %i.bpr, i1 %8, i1 false
  br i1 %or.cond25, label %bb.pw, label %is_identchar.exit.thread

bb.pw:                                            ; preds = %bb.pv
  %switch.tableidx3174 = add nsw i32 %i.bnz, -9   ; 2 uses
  %i.bps = icmp ult i32 %switch.tableidx3174, 24
  %switch.shifted3178 = lshr i32 8388639, %switch.tableidx3174
  %switch.lobit3179 = trunc i32 %switch.shifted3178 to i1
  %or.cond3180 = select i1 %i.bps, i1 %switch.lobit3179, i1 false
  br i1 %or.cond3180, label %is_identchar.exit.thread, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.bpt = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.bpu = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.591, i64 noundef 15) #29
  %.val850 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bpv = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val850, i64 noundef %i.bpt, i32 noundef 2, i64 noundef 9740, i64 noundef %i.bpu) #29 ; 0 uses
  br label %is_identchar.exit.thread

is_identchar.exit.thread:                         ; preds = %bb.pw, %bb.pr, %bb.ps, %bb.pt, %bb.pr, %bb.pv, %bb.px, %bb.pu, %.thread1261
  %.1656 = phi i32 [ 335, %bb.ps ], [ 335, %bb.pu ], [ 335, %bb.pr ], [ 335, %bb.pr ], [ 335, %.thread1261 ], [ 38, %bb.px ], [ 335, %bb.pt ], [ 38, %bb.pv ], [ 38, %bb.pw ]
  %i.bpw = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.bpx = and i32 %i.bpw, 384
  %.not780 = icmp eq i32 %i.bpx, 0
  %i.bpy = select i1 %.not780, i32 1, i32 16      ; 2 uses
  %i.bpz = load i16, ptr %i.f, align 8
  %i.bqa = and i16 %i.bpz, 32
  %.not.i1052 = icmp eq i16 %i.bqa, 0
  br i1 %.not.i1052, label %parser_set_lex_state.exit1054, label %bb.py

bb.py:                                            ; preds = %is_identchar.exit.thread
  %i.bqb = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bpw, i32 noundef %i.bpy, i32 noundef 10865) #29
  br label %parser_set_lex_state.exit1054

parser_set_lex_state.exit1054:                    ; preds = %is_identchar.exit.thread, %bb.py
  %.0.i1053 = phi i32 [ %i.bqb, %bb.py ], [ %i.bpy, %is_identchar.exit.thread ]
  store i32 %.0.i1053, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.pz:                                            ; preds = %bb.gv
  %i.bqc = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  switch i32 %i.bqc, label %bb.ql [
    i32 124, label %bb.qa
    i32 61, label %bb.qj
  ]

bb.qa:                                            ; preds = %bb.pz
  %i.bqd = load i16, ptr %i.f, align 8
  %i.bqe = and i16 %i.bqd, 32
  %.not.i1055 = icmp eq i16 %i.bqe, 0
  br i1 %.not.i1055, label %parser_set_lex_state.exit1057, label %bb.qb

bb.qb:                                            ; preds = %bb.qa
  %i.bqf = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bqg = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqf, i32 noundef 1, i32 noundef 10870) #29
  br label %parser_set_lex_state.exit1057

parser_set_lex_state.exit1057:                    ; preds = %bb.qa, %bb.qb
  %.0.i1056 = phi i32 [ %i.bqg, %bb.qb ], [ 1, %bb.qa ]
  store i32 %.0.i1056, ptr %i.afs, align 8, !tbaa !60
  %i.bqh = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %i.bqi = icmp eq i32 %i.bqh, 61
  br i1 %i.bqi, label %bb.qc, label %bb.qe

bb.qc:                                            ; preds = %parser_set_lex_state.exit1057
  %i.bqj = load ptr, ptr %0, align 8, !tbaa !18
  store i64 149, ptr %i.bqj, align 8, !tbaa !10
  %i.bqk = load i16, ptr %i.f, align 8
  %i.bql = and i16 %i.bqk, 32
  %.not.i1058 = icmp eq i16 %i.bql, 0
  br i1 %.not.i1058, label %parser_set_lex_state.exit1060, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.bqm = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bqn = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqm, i32 noundef 1, i32 noundef 10873) #29
  br label %parser_set_lex_state.exit1060

parser_set_lex_state.exit1060:                    ; preds = %bb.qc, %bb.qd
  %.0.i1059 = phi i32 [ %i.bqn, %bb.qd ], [ 1, %bb.qc ]
  store i32 %.0.i1059, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.qe:                                            ; preds = %parser_set_lex_state.exit1057
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bqh)
  %i.bqo = and i32 %i.agm, 1
  %.not773 = icmp eq i32 %i.bqo, 0
  br i1 %.not773, label %pushback.exit1061, label %bb.qf

bb.qf:                                            ; preds = %bb.qe
  %i.bqp = load i16, ptr %i.f, align 8
  %i.bqq = and i16 %i.bqp, -9
  store i16 %i.bqq, ptr %i.f, align 8
  %i.bqr = load ptr, ptr %i.aft, align 8, !tbaa !48 ; 2 uses
  %i.bqs = getelementptr inbounds i8, ptr %i.bqr, i64 -1 ; 3 uses
  store ptr %i.bqs, ptr %i.aft, align 8, !tbaa !48
  %i.bqt = load ptr, ptr %i.agb, align 8, !tbaa !44
  %i.bqu = icmp ugt ptr %i.bqs, %i.bqt
  br i1 %i.bqu, label %bb.qg, label %pushback.exit1061

bb.qg:                                            ; preds = %bb.qf
  %i.bqv = load i8, ptr %i.bqs, align 1, !tbaa !10
  %i.bqw = icmp eq i8 %i.bqv, 10
  br i1 %i.bqw, label %bb.qh, label %pushback.exit1061

bb.qh:                                            ; preds = %bb.qg
  %i.bqx = getelementptr inbounds i8, ptr %i.bqr, i64 -2 ; 2 uses
  %i.bqy = load i8, ptr %i.bqx, align 1, !tbaa !10
  %i.bqz = icmp eq i8 %i.bqy, 13
  br i1 %i.bqz, label %bb.qi, label %pushback.exit1061

bb.qi:                                            ; preds = %bb.qh
  store ptr %i.bqx, ptr %i.aft, align 8, !tbaa !48
  br label %pushback.exit1061

bb.qj:                                            ; preds = %bb.pz
  %i.bra = load ptr, ptr %0, align 8, !tbaa !18
  store i64 124, ptr %i.bra, align 8, !tbaa !10
  %i.brb = load i16, ptr %i.f, align 8
  %i.brc = and i16 %i.brb, 32
  %.not.i1062 = icmp eq i16 %i.brc, 0
  br i1 %.not.i1062, label %parser_set_lex_state.exit1064, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  %i.brd = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bre = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.brd, i32 noundef 1, i32 noundef 10886) #29
  br label %parser_set_lex_state.exit1064

parser_set_lex_state.exit1064:                    ; preds = %bb.qj, %bb.qk
  %.0.i1063 = phi i32 [ %i.bre, %bb.qk ], [ 1, %bb.qj ]
  store i32 %.0.i1063, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.ql:                                            ; preds = %bb.pz
  %i.brf = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.brg = and i32 %i.brf, 384
  %.not772 = icmp eq i32 %i.brg, 0
  %i.brh = select i1 %.not772, i32 1025, i32 16   ; 2 uses
  %i.bri = load i16, ptr %i.f, align 8
  %i.brj = and i16 %i.bri, 32
  %.not.i1065 = icmp eq i16 %i.brj, 0
  br i1 %.not.i1065, label %parser_set_lex_state.exit1067, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %i.brk = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.brf, i32 noundef %i.brh, i32 noundef 10889) #29
  br label %parser_set_lex_state.exit1067

parser_set_lex_state.exit1067:                    ; preds = %bb.ql, %bb.qm
  %.0.i1066 = phi i32 [ %i.brk, %bb.qm ], [ %i.brh, %bb.ql ]
  store i32 %.0.i1066, ptr %i.afs, align 8, !tbaa !60
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bqc)
  br label %pushback.exit1061

bb.qn:                                            ; preds = %bb.gv
  %i.brl = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 8 uses
  %i.brm = load i32, ptr %i.afs, align 8, !tbaa !60 ; 6 uses
  %i.brn = and i32 %i.brm, 384
  %.not766 = icmp eq i32 %i.brn, 0
  br i1 %.not766, label %bb.qr, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.bro = load i16, ptr %i.f, align 8
  %i.brp = and i16 %i.bro, 32
  %.not.i1068 = icmp eq i16 %i.brp, 0
  br i1 %.not.i1068, label %parser_set_lex_state.exit1070, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.brq = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.brm, i32 noundef 16, i32 noundef 10896) #29
  br label %parser_set_lex_state.exit1070

parser_set_lex_state.exit1070:                    ; preds = %bb.qo, %bb.qp
  %.0.i1069 = phi i32 [ %i.brq, %bb.qp ], [ 16, %bb.qo ]
  store i32 %.0.i1069, ptr %i.afs, align 8, !tbaa !60
  %i.brr = icmp eq i32 %i.brl, 64
  br i1 %i.brr, label %pushback.exit1061, label %bb.qq

bb.qq:                                            ; preds = %parser_set_lex_state.exit1070
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.brl)
  br label %pushback.exit1061

bb.qr:                                            ; preds = %bb.qn
  %i.brs = icmp eq i32 %i.brl, 61
  br i1 %i.brs, label %bb.qs, label %bb.qu

bb.qs:                                            ; preds = %bb.qr
  %i.brt = load ptr, ptr %0, align 8, !tbaa !18
  store i64 43, ptr %i.brt, align 8, !tbaa !10
  %i.bru = load i16, ptr %i.f, align 8
  %i.brv = and i16 %i.bru, 32
  %.not.i1071 = icmp eq i16 %i.brv, 0
  br i1 %.not.i1071, label %parser_set_lex_state.exit1073, label %bb.qt

bb.qt:                                            ; preds = %bb.qs
  %i.brw = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.brx = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.brw, i32 noundef 1, i32 noundef 10905) #29
  br label %parser_set_lex_state.exit1073

parser_set_lex_state.exit1073:                    ; preds = %bb.qs, %bb.qt
  %.0.i1072 = phi i32 [ %i.brx, %bb.qt ], [ 1, %bb.qs ]
  store i32 %.0.i1072, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.qu:                                            ; preds = %bb.qr
  %i.bry = and i32 %i.brm, 577
  %.not767 = icmp ne i32 %i.bry, 0
  %i.brz = and i32 %i.brm, 2064
  %i.bsa = icmp eq i32 %i.brz, 2064
  %or.cond828 = or i1 %.not767, %i.bsa
  br i1 %or.cond828, label %bb.qy, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.bsb = and i32 %i.brm, 48
  %i.bsc = icmp ne i32 %i.bsb, 0
  %9 = icmp ne i32 %.0660, 0                      ; 2 uses
  %or.cond27 = select i1 %i.bsc, i1 %9, i1 false
  br i1 %or.cond27, label %bb.qw, label %bb.rb

bb.qw:                                            ; preds = %bb.qv
  switch i32 %i.brl, label %bb.qx [
    i32 32, label %bb.rb
    i32 13, label %bb.rb
    i32 12, label %bb.rb
    i32 11, label %bb.rb
    i32 10, label %bb.rb
    i32 9, label %bb.rb
  ]

bb.qx:                                            ; preds = %bb.qw
  tail call fastcc void @arg_ambiguous(ptr noundef nonnull %0, i8 noundef signext 43)
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %bb.qu
  %i.bsd = load i16, ptr %i.f, align 8
  %i.bse = and i16 %i.bsd, 32
  %.not.i1075 = icmp eq i16 %i.bse, 0
  br i1 %.not.i1075, label %parser_set_lex_state.exit1077, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.bsf = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bsg = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bsf, i32 noundef 1, i32 noundef 10909) #29
  br label %parser_set_lex_state.exit1077

parser_set_lex_state.exit1077:                    ; preds = %bb.qy, %bb.qz
  %.0.i1076 = phi i32 [ %i.bsg, %bb.qz ], [ 1, %bb.qy ]
  store i32 %.0.i1076, ptr %i.afs, align 8, !tbaa !60
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.brl)
  %i.bsh = add nsw i32 %i.brl, -58
  %or.cond1344 = icmp ult i32 %i.bsh, -10
  br i1 %or.cond1344, label %pushback.exit1061, label %bb.ra

bb.ra:                                            ; preds = %parser_set_lex_state.exit1077
  %i.bsi = tail call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef 43)
  br label %pushback.exit1061

bb.rb:                                            ; preds = %bb.qw, %bb.qw, %bb.qw, %bb.qw, %bb.qw, %bb.qw, %bb.qv
  %i.bsj = load i16, ptr %i.f, align 8
  %i.bsk = and i16 %i.bsj, 32
  %.not.i1078 = icmp eq i16 %i.bsk, 0
  br i1 %.not.i1078, label %parser_set_lex_state.exit1080, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  %i.bsl = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.brm, i32 noundef 1, i32 noundef 10916) #29
  br label %parser_set_lex_state.exit1080

parser_set_lex_state.exit1080:                    ; preds = %bb.rb, %bb.rc
  %.0.i1079 = phi i32 [ %i.bsl, %bb.rc ], [ 1, %bb.rb ]
  store i32 %.0.i1079, ptr %i.afs, align 8, !tbaa !60
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.brl)
  %i.bsm = and i32 %i.agm, 904
  %i.bsn = icmp eq i32 %i.bsm, 0
  %or.cond29 = select i1 %i.bsn, i1 %9, i1 false
  br i1 %or.cond29, label %bb.rd, label %pushback.exit1061

bb.rd:                                            ; preds = %parser_set_lex_state.exit1080
  %switch.tableidx3181 = add nsw i32 %i.brl, -9   ; 2 uses
  %i.bso = icmp ult i32 %switch.tableidx3181, 24
  %switch.shifted3185 = lshr i32 8388639, %switch.tableidx3181
  %switch.lobit3186 = trunc i32 %switch.shifted3185 to i1
  %or.cond3200.a = select i1 %i.bso, i1 %switch.lobit3186, i1 false
  br i1 %or.cond3200.a, label %pushback.exit1061, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.bsp = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.bsq = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.596, i64 noundef 14) #29
  %.val849 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bsr = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val849, i64 noundef %i.bsp, i32 noundef 2, i64 noundef 11020, i64 noundef %i.bsq) #29 ; 0 uses
  br label %pushback.exit1061

bb.rf:                                            ; preds = %bb.gv
  %i.bss = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 8 uses
  %i.bst = load i32, ptr %i.afs, align 8, !tbaa !60 ; 7 uses
  %i.bsu = and i32 %i.bst, 384
  %.not760 = icmp eq i32 %i.bsu, 0
  br i1 %.not760, label %bb.rj, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.bsv = load i16, ptr %i.f, align 8
  %i.bsw = and i16 %i.bsv, 32
  %.not.i1082 = icmp eq i16 %i.bsw, 0
  br i1 %.not.i1082, label %parser_set_lex_state.exit1084, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.bsx = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bst, i32 noundef 16, i32 noundef 10923) #29
  br label %parser_set_lex_state.exit1084

parser_set_lex_state.exit1084:                    ; preds = %bb.rg, %bb.rh
  %.0.i1083 = phi i32 [ %i.bsx, %bb.rh ], [ 16, %bb.rg ]
  store i32 %.0.i1083, ptr %i.afs, align 8, !tbaa !60
  %i.bsy = icmp eq i32 %i.bss, 64
  br i1 %i.bsy, label %pushback.exit1061, label %bb.ri

bb.ri:                                            ; preds = %parser_set_lex_state.exit1084
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bss)
  br label %pushback.exit1061

bb.rj:                                            ; preds = %bb.rf
  switch i32 %i.bss, label %bb.ro [
    i32 61, label %bb.rk
    i32 62, label %bb.rm
  ]

bb.rk:                                            ; preds = %bb.rj
  %i.bsz = load ptr, ptr %0, align 8, !tbaa !18
  store i64 45, ptr %i.bsz, align 8, !tbaa !10
  %i.bta = load i16, ptr %i.f, align 8
  %i.btb = and i16 %i.bta, 32
  %.not.i1085 = icmp eq i16 %i.btb, 0
  br i1 %.not.i1085, label %parser_set_lex_state.exit1087, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.btc = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.btd = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.btc, i32 noundef 1, i32 noundef 10932) #29
  br label %parser_set_lex_state.exit1087

parser_set_lex_state.exit1087:                    ; preds = %bb.rk, %bb.rl
  %.0.i1086 = phi i32 [ %i.btd, %bb.rl ], [ 1, %bb.rk ]
  store i32 %.0.i1086, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.rm:                                            ; preds = %bb.rj
  %i.bte = load i16, ptr %i.f, align 8
  %i.btf = and i16 %i.bte, 32
  %.not.i1088 = icmp eq i16 %i.btf, 0
  br i1 %.not.i1088, label %parser_set_lex_state.exit1090, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.btg = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bst, i32 noundef 8, i32 noundef 10936) #29
  br label %parser_set_lex_state.exit1090

parser_set_lex_state.exit1090:                    ; preds = %bb.rm, %bb.rn
  %.0.i1089 = phi i32 [ %i.btg, %bb.rn ], [ 8, %bb.rm ]
  store i32 %.0.i1089, ptr %i.afs, align 8, !tbaa !60
  %i.bth = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bti = load i32, ptr %i.bth, align 8, !tbaa !158
  %i.btj = load ptr, ptr %0, align 8, !tbaa !18
  store i32 %i.bti, ptr %i.btj, align 8, !tbaa !10
  %i.btk = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.btl = load i32, ptr %i.btk, align 4, !tbaa !174
  store i32 %i.btl, ptr %i.bth, align 8, !tbaa !158
  br label %pushback.exit1061

bb.ro:                                            ; preds = %bb.rj
  %i.btm = and i32 %i.bst, 577
  %.not761 = icmp ne i32 %i.btm, 0
  %i.btn = and i32 %i.bst, 2064
  %i.bto = icmp eq i32 %i.btn, 2064
  %or.cond830 = or i1 %.not761, %i.bto
  br i1 %or.cond830, label %bb.rs, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.btp = and i32 %i.bst, 48
  %i.btq = icmp ne i32 %i.btp, 0
  %10 = icmp ne i32 %.0660, 0                     ; 2 uses
  %or.cond31 = select i1 %i.btq, i1 %10, i1 false
  br i1 %or.cond31, label %bb.rq, label %bb.ru

bb.rq:                                            ; preds = %bb.rp
  switch i32 %i.bss, label %bb.rr [
    i32 32, label %bb.ru
    i32 13, label %bb.ru
    i32 12, label %bb.ru
    i32 11, label %bb.ru
    i32 10, label %bb.ru
    i32 9, label %bb.ru
  ]

bb.rr:                                            ; preds = %bb.rq
  tail call fastcc void @arg_ambiguous(ptr noundef nonnull %0, i8 noundef signext 45)
  br label %bb.rs

bb.rs:                                            ; preds = %bb.rr, %bb.ro
  %i.btr = load i16, ptr %i.f, align 8
  %i.bts = and i16 %i.btr, 32
  %.not.i1092 = icmp eq i16 %i.bts, 0
  br i1 %.not.i1092, label %parser_set_lex_state.exit1094, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.btt = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.btu = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.btt, i32 noundef 1, i32 noundef 10942) #29
  br label %parser_set_lex_state.exit1094

parser_set_lex_state.exit1094:                    ; preds = %bb.rs, %bb.rt
  %.0.i1093 = phi i32 [ %i.btu, %bb.rt ], [ 1, %bb.rs ]
  store i32 %.0.i1093, ptr %i.afs, align 8, !tbaa !60
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bss)
  %i.btv = add nsw i32 %i.bss, -58
  %or.cond1346 = icmp ult i32 %i.btv, -10
  %spec.select1348 = select i1 %or.cond1346, i32 133, i32 360
  br label %pushback.exit1061

bb.ru:                                            ; preds = %bb.rq, %bb.rq, %bb.rq, %bb.rq, %bb.rq, %bb.rq, %bb.rp
  %i.btw = load i16, ptr %i.f, align 8
  %i.btx = and i16 %i.btw, 32
  %.not.i1095 = icmp eq i16 %i.btx, 0
  br i1 %.not.i1095, label %parser_set_lex_state.exit1097, label %bb.rv

bb.rv:                                            ; preds = %bb.ru
  %i.bty = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bst, i32 noundef 1, i32 noundef 10949) #29
  br label %parser_set_lex_state.exit1097

parser_set_lex_state.exit1097:                    ; preds = %bb.ru, %bb.rv
  %.0.i1096 = phi i32 [ %i.bty, %bb.rv ], [ 1, %bb.ru ]
  store i32 %.0.i1096, ptr %i.afs, align 8, !tbaa !60
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bss)
  %i.btz = and i32 %i.agm, 904
  %i.bua = icmp eq i32 %i.btz, 0
  %or.cond33 = select i1 %i.bua, i1 %10, i1 false
  br i1 %or.cond33, label %bb.rw, label %pushback.exit1061

bb.rw:                                            ; preds = %parser_set_lex_state.exit1097
  %switch.tableidx3187 = add nsw i32 %i.bss, -9   ; 2 uses
  %i.bub = icmp ult i32 %switch.tableidx3187, 24
  %switch.shifted3191 = lshr i32 8388639, %switch.tableidx3187
  %switch.lobit3192 = trunc i32 %switch.shifted3191 to i1
  %or.cond3201.a = select i1 %i.bub, i1 %switch.lobit3192, i1 false
  br i1 %or.cond3201.a, label %pushback.exit1061, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.buc = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.bud = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.596, i64 noundef 14) #29
  %.val848 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bue = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val848, i64 noundef %i.buc, i32 noundef 2, i64 noundef 11532, i64 noundef %i.bud) #29 ; 0 uses
  br label %pushback.exit1061

bb.ry:                                            ; preds = %bb.gv
  %i.buf = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.bug = load i16, ptr %i.f, align 8
  %i.buh = and i16 %i.bug, 32
  %.not.i1099 = icmp eq i16 %i.buh, 0
  br i1 %.not.i1099, label %parser_set_lex_state.exit1101, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.bui = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.buf, i32 noundef 1, i32 noundef 10955) #29
  %.pre2133.a = load ptr, ptr %i.aft, align 8, !tbaa !48
  br label %parser_set_lex_state.exit1101

parser_set_lex_state.exit1101:                    ; preds = %bb.ry, %bb.rz
  %i.buj = phi ptr [ %.pre2133.a, %bb.rz ], [ %i.agv, %bb.ry ] ; 2 uses
  %.0.i1100 = phi i32 [ %i.bui, %bb.rz ], [ 1, %bb.ry ]
  store i32 %.0.i1100, ptr %i.afs, align 8, !tbaa !60
  %i.buk = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not.i1102 = icmp ult ptr %i.buj, %i.buk
  br i1 %.not.i1102, label %bb.sa, label %.critedge.i1103, !prof !486

bb.sa:                                            ; preds = %parser_set_lex_state.exit1101
  %i.bul = load i16, ptr %i.f, align 8
  %i.bum = and i16 %i.bul, 8
  %.not13.i1109 = icmp eq i16 %i.bum, 0
  br i1 %.not13.i1109, label %bb.sb, label %.critedge.i1103, !prof !486

bb.sb:                                            ; preds = %bb.sa
  %i.bun = load ptr, ptr %i.afv, align 8, !tbaa !487
  %i.buo = icmp ugt ptr %i.bun, inttoptr (i64 1 to ptr)
  br i1 %i.buo, label %.critedge.i1103, label %bb.sc, !prof !196

.critedge.i1103:                                  ; preds = %bb.sb, %bb.sa, %parser_set_lex_state.exit1101
  %i.bup = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i1104 = icmp eq i32 %i.bup, 0
  br i1 %.not14.i1104, label %.critedge._crit_edge.i1106, label %pushback.exit1124

.critedge._crit_edge.i1106:                       ; preds = %.critedge.i1103
  %.pre.i1107 = load ptr, ptr %i.aft, align 8, !tbaa !48
  br label %bb.sc

bb.sc:                                            ; preds = %.critedge._crit_edge.i1106, %bb.sb
  %i.buq = phi ptr [ %.pre.i1107, %.critedge._crit_edge.i1106 ], [ %i.buj, %bb.sb ] ; 3 uses
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buq, i64 1 ; 8 uses
  store ptr %i.bur, ptr %i.aft, align 8, !tbaa !48
  %i.bus = load i8, ptr %i.buq, align 1, !tbaa !10 ; 3 uses
  %i.but = icmp eq i8 %i.bus, 13
  br i1 %i.but, label %bb.sd, label %nextc0.exit1110, !prof !196

bb.sd:                                            ; preds = %bb.sc
  %i.buu = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not.i.i1108 = icmp ult ptr %i.bur, %i.buu
  br i1 %.not.i.i1108, label %bb.se, label %.thread1272

bb.se:                                            ; preds = %bb.sd
  %i.buv = load i8, ptr %i.bur, align 1, !tbaa !10
  %i.buw = icmp eq i8 %i.buv, 10                  ; 2 uses
  %i.bux = getelementptr inbounds nuw i8, ptr %i.buq, i64 2
  %spec.select2721.a = select i1 %i.buw, ptr %i.bux, ptr %i.bur
  %spec.select2722.a = select i1 %i.buw, i32 10, i32 13
  br label %.thread1272

nextc0.exit1110:                                  ; preds = %bb.sc
  %i.buy = zext i8 %i.bus to i32
  %i.buz = icmp eq i8 %i.bus, 46
  br i1 %i.buz, label %bb.sf, label %.thread1272

bb.sf:                                            ; preds = %nextc0.exit1110
  %i.bva = and i32 %i.buf, 577
  %.not753.le = icmp ne i32 %i.bva, 0
  %i.bvb = and i32 %i.buf, 2064
  %i.bvc = icmp eq i32 %i.bvb, 2064
  %i.bvd = or i1 %.not753.le, %i.bvc              ; 2 uses
  %i.bve = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not.i1111 = icmp ult ptr %i.bur, %i.bve
  br i1 %.not.i1111, label %bb.sg, label %.critedge.i1112, !prof !486

bb.sg:                                            ; preds = %bb.sf
  %i.bvf = load i16, ptr %i.f, align 8
  %i.bvg = and i16 %i.bvf, 8
  %.not13.i1118 = icmp eq i16 %i.bvg, 0
  br i1 %.not13.i1118, label %bb.sh, label %.critedge.i1112, !prof !486

bb.sh:                                            ; preds = %bb.sg
  %i.bvh = load ptr, ptr %i.afv, align 8, !tbaa !487
  %i.bvi = icmp ugt ptr %i.bvh, inttoptr (i64 1 to ptr)
  br i1 %i.bvi, label %.critedge.i1112, label %bb.si, !prof !196

.critedge.i1112:                                  ; preds = %bb.sh, %bb.sg, %bb.sf
  %i.bvj = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i1113 = icmp eq i32 %i.bvj, 0
  br i1 %.not14.i1113, label %.critedge._crit_edge.i1115, label %pushback.exit1123

.critedge._crit_edge.i1115:                       ; preds = %.critedge.i1112
  %.pre.i1116 = load ptr, ptr %i.aft, align 8, !tbaa !48
  br label %bb.si

bb.si:                                            ; preds = %.critedge._crit_edge.i1115, %bb.sh
  %i.bvk = phi ptr [ %.pre.i1116, %.critedge._crit_edge.i1115 ], [ %i.bur, %bb.sh ] ; 3 uses
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvk, i64 1 ; 6 uses
  store ptr %i.bvl, ptr %i.aft, align 8, !tbaa !48
  %i.bvm = load i8, ptr %i.bvk, align 1, !tbaa !10
  switch i8 %i.bvm, label %.thread1267 [
    i8 13, label %bb.sj
    i8 46, label %bb.sl
  ], !prof !548

bb.sj:                                            ; preds = %bb.si
  %i.bvn = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not.i.i1117 = icmp ult ptr %i.bvl, %i.bvn
  br i1 %.not.i.i1117, label %bb.sk, label %.thread1267

bb.sk:                                            ; preds = %bb.sj
  %i.bvo = load i8, ptr %i.bvl, align 1, !tbaa !10
  %i.bvp = icmp eq i8 %i.bvo, 10
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.bvk, i64 2
  %spec.select2723 = select i1 %i.bvp, ptr %i.bvq, ptr %i.bvl
  br label %.thread1267

bb.sl:                                            ; preds = %bb.si
  %i.bvr = load i16, ptr %i.agl, align 8
  %i.bvs = and i16 %i.bvr, 4
  %.not757 = icmp eq i16 %i.bvs, 0
  br i1 %.not757, label %bb.sm, label %bb.sn

bb.sm:                                            ; preds = %bb.sl
  %i.bvt = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.bvu = and i32 %i.bvt, 1032
  %i.bvv = icmp eq i32 %i.bvu, 0
  %i.bvw = icmp ne i32 %.0663, 0
end_hunk_2
begin_hunk_3_@parser_yylex:bb.a
  %i.byd = load ptr, ptr %0, align 8, !tbaa !18
  store i64 46, ptr %i.byd, align 8, !tbaa !10
  %i.bye = load i16, ptr %i.f, align 8
  %i.byf = and i16 %i.bye, 32
  %.not.i1129 = icmp eq i16 %i.byf, 0
  br i1 %.not.i1129, label %parser_set_lex_state.exit1131, label %bb.tg

bb.tg:                                            ; preds = %pushback.exit1124
  %i.byg = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.byh = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.byg, i32 noundef 256, i32 noundef 10985) #29
  br label %parser_set_lex_state.exit1131

parser_set_lex_state.exit1131:                    ; preds = %pushback.exit1124, %bb.tg
  %.0.i1130 = phi i32 [ %i.byh, %bb.tg ], [ 256, %pushback.exit1124 ]
  store i32 %.0.i1130, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.th:                                            ; preds = %bb.tf, %bb.te
  %.0.i1127 = phi i32 [ %i.byc, %bb.tf ], [ 2, %bb.te ]
  store i32 %.0.i1127, ptr %i.afs, align 8, !tbaa !60
  %i.byi = load ptr, ptr %i.aft, align 8, !tbaa !48
  store ptr %i.byi, ptr %i.afw, align 8, !tbaa !41
  br label %.backedge.backedge

bb.ti:                                            ; preds = %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv
  %i.byj = tail call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef %i.agx)
  br label %pushback.exit1061

bb.tj:                                            ; preds = %bb.gv
  %i.byk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.byl = load i64, ptr %i.byk, align 8, !tbaa !103
  %i.bym = lshr i64 %i.byl, 1                     ; 2 uses
  store i64 %i.bym, ptr %i.byk, align 8, !tbaa !103
  %i.byn = load i16, ptr %i.f, align 8
  %i.byo = and i16 %i.byn, 32
  %.not751 = icmp eq i16 %i.byo, 0
  br i1 %.not751, label %.thread, label %bb.tk

.thread:                                          ; preds = %bb.tj
  %i.byp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.byq = load i64, ptr %i.byp, align 8, !tbaa !114
  %i.byr = lshr i64 %i.byq, 1
  store i64 %i.byr, ptr %i.byp, align 8, !tbaa !114
  br label %parser_set_lex_state.exit1134

bb.tk:                                            ; preds = %bb.tj
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bym, ptr noundef nonnull @.str.13, i32 noundef 10994) #29
  %.pre2131.a = load i16, ptr %i.f, align 8
  %.pre2146.a = and i16 %.pre2131.a, 32
  %i.bys = icmp eq i16 %.pre2146.a, 0
  %i.byt = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.byu = load i64, ptr %i.byt, align 8, !tbaa !114
  %i.byv = lshr i64 %i.byu, 1                     ; 2 uses
  store i64 %i.byv, ptr %i.byt, align 8, !tbaa !114
  br i1 %i.bys, label %parser_set_lex_state.exit1134, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.byv, ptr noundef nonnull @.str.16, i32 noundef 10995) #29
  %.pre2132 = load i16, ptr %i.f, align 8
  %.pre2147 = and i16 %.pre2132, 32
  %i.byw = icmp eq i16 %.pre2147, 0
  br i1 %i.byw, label %parser_set_lex_state.exit1134, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %i.byx = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.byy = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.byx, i32 noundef 8, i32 noundef 10996) #29
  br label %parser_set_lex_state.exit1134

parser_set_lex_state.exit1134:                    ; preds = %.thread, %bb.tk, %bb.tl, %bb.tm
  %.0.i1133 = phi i32 [ %i.byy, %bb.tm ], [ 8, %bb.tl ], [ 8, %bb.tk ], [ 8, %.thread ]
  store i32 %.0.i1133, ptr %i.afs, align 8, !tbaa !60
  %i.byz = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.bza = load i32, ptr %i.byz, align 4, !tbaa !174
  %i.bzb = add nsw i32 %i.bza, -1
  store i32 %i.bzb, ptr %i.byz, align 4, !tbaa !174
  br label %pushback.exit1061

bb.tn:                                            ; preds = %bb.gv
  %i.bzc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bzd = load i64, ptr %i.bzc, align 8, !tbaa !103
  %i.bze = lshr i64 %i.bzd, 1                     ; 2 uses
  store i64 %i.bze, ptr %i.bzc, align 8, !tbaa !103
  %i.bzf = load i16, ptr %i.f, align 8
  %i.bzg = and i16 %i.bzf, 32
  %.not749 = icmp eq i16 %i.bzg, 0
  br i1 %.not749, label %.thread2342, label %bb.to

.thread2342:                                      ; preds = %bb.tn
  %i.bzh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bzi = load i64, ptr %i.bzh, align 8, !tbaa !114
  %i.bzj = lshr i64 %i.bzi, 1
  store i64 %i.bzj, ptr %i.bzh, align 8, !tbaa !114
  br label %parser_set_lex_state.exit1137

bb.to:                                            ; preds = %bb.tn
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bze, ptr noundef nonnull @.str.13, i32 noundef 11001) #29
  %.pre2129.a = load i16, ptr %i.f, align 8
  %.pre2149 = and i16 %.pre2129.a, 32
  %i.bzk = icmp eq i16 %.pre2149, 0
  %i.bzl = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bzm = load i64, ptr %i.bzl, align 8, !tbaa !114
  %i.bzn = lshr i64 %i.bzm, 1                     ; 2 uses
  store i64 %i.bzn, ptr %i.bzl, align 8, !tbaa !114
  br i1 %i.bzk, label %parser_set_lex_state.exit1137, label %bb.tp

bb.tp:                                            ; preds = %bb.to
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bzn, ptr noundef nonnull @.str.16, i32 noundef 11002) #29
  %.pre2130 = load i16, ptr %i.f, align 8
  %.pre2151 = and i16 %.pre2130, 32
  %i.bzo = icmp eq i16 %.pre2151, 0
  br i1 %i.bzo, label %parser_set_lex_state.exit1137, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %i.bzp = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bzq = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bzp, i32 noundef 2, i32 noundef 11003) #29
  br label %parser_set_lex_state.exit1137

parser_set_lex_state.exit1137:                    ; preds = %.thread2342, %bb.to, %bb.tp, %bb.tq
  %.0.i1136 = phi i32 [ %i.bzq, %bb.tq ], [ 2, %bb.tp ], [ 2, %bb.to ], [ 2, %.thread2342 ]
  store i32 %.0.i1136, ptr %i.afs, align 8, !tbaa !60
  %i.bzr = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.bzs = load i32, ptr %i.bzr, align 4, !tbaa !174
  %i.bzt = add nsw i32 %i.bzs, -1
  store i32 %i.bzt, ptr %i.bzr, align 4, !tbaa !174
  br label %pushback.exit1061

bb.tr:                                            ; preds = %bb.gv
  %i.bzu = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.bzv = load i32, ptr %i.bzu, align 4, !tbaa !172 ; 2 uses
  %i.bzw = add nsw i32 %i.bzv, -1
  store i32 %i.bzw, ptr %i.bzu, align 4, !tbaa !172
  %.not746 = icmp eq i32 %i.bzv, 0
  br i1 %.not746, label %pushback.exit1061, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.bzx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bzy = load i64, ptr %i.bzx, align 8, !tbaa !103
  %i.bzz = lshr i64 %i.bzy, 1                     ; 2 uses
  store i64 %i.bzz, ptr %i.bzx, align 8, !tbaa !103
  %i.caa = load i16, ptr %i.f, align 8
  %i.cab = and i16 %i.caa, 32
  %.not747 = icmp eq i16 %i.cab, 0
  br i1 %.not747, label %.thread2347, label %bb.tt

.thread2347:                                      ; preds = %bb.ts
  %i.cac = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cad = load i64, ptr %i.cac, align 8, !tbaa !114
  %i.cae = lshr i64 %i.cad, 1
  store i64 %i.cae, ptr %i.cac, align 8, !tbaa !114
  br label %parser_set_lex_state.exit1140

bb.tt:                                            ; preds = %bb.ts
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bzz, ptr noundef nonnull @.str.13, i32 noundef 11010) #29
  %.pre2127.a = load i16, ptr %i.f, align 8
  %.pre2153 = and i16 %.pre2127.a, 32
  %i.caf = icmp eq i16 %.pre2153, 0
  %i.cag = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cah = load i64, ptr %i.cag, align 8, !tbaa !114
  %i.cai = lshr i64 %i.cah, 1                     ; 2 uses
  store i64 %i.cai, ptr %i.cag, align 8, !tbaa !114
  br i1 %i.caf, label %parser_set_lex_state.exit1140, label %bb.tu

bb.tu:                                            ; preds = %bb.tt
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.cai, ptr noundef nonnull @.str.16, i32 noundef 11011) #29
  %.pre2128 = load i16, ptr %i.f, align 8
  %.pre2155 = and i16 %.pre2128, 32
  %i.caj = icmp eq i16 %.pre2155, 0
  br i1 %i.caj, label %parser_set_lex_state.exit1140, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  %i.cak = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cal = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cak, i32 noundef 2, i32 noundef 11012) #29
  br label %parser_set_lex_state.exit1140

parser_set_lex_state.exit1140:                    ; preds = %.thread2347, %bb.tt, %bb.tu, %bb.tv
  %.0.i1139 = phi i32 [ %i.cal, %bb.tv ], [ 2, %bb.tu ], [ 2, %bb.tt ], [ 2, %.thread2347 ]
  store i32 %.0.i1139, ptr %i.afs, align 8, !tbaa !60
  %i.cam = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.can = load i32, ptr %i.cam, align 4, !tbaa !174
  %i.cao = add nsw i32 %i.can, -1
  store i32 %i.cao, ptr %i.cam, align 4, !tbaa !174
  br label %pushback.exit1061

bb.tw:                                            ; preds = %bb.gv
  %i.cap = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 5 uses
  %i.caq = icmp eq i32 %i.cap, 58
  %i.car = load i32, ptr %i.afs, align 8, !tbaa !60 ; 5 uses
  br i1 %i.caq, label %bb.tx, label %bb.ud

bb.tx:                                            ; preds = %bb.tw
  %i.cas = and i32 %i.car, 577
  %.not744 = icmp ne i32 %i.cas, 0
  %i.cat = and i32 %i.car, 2064
  %i.cau = icmp eq i32 %i.cat, 2064
  %or.cond833 = or i1 %.not744, %i.cau
  br i1 %or.cond833, label %bb.tz, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  %i.cav = and i32 %i.car, 48
  %i.caw = icmp ne i32 %i.cav, 0
  %11 = icmp ne i32 %.0660, 0
  %or.cond37 = select i1 %i.caw, i1 %11, i1 false
  br i1 %or.cond37, label %bb.tz, label %bb.ub

bb.tz:                                            ; preds = %bb.ty, %bb.tx
  %i.cax = load i16, ptr %i.f, align 8
  %i.cay = and i16 %i.cax, 32
  %.not.i1141 = icmp eq i16 %i.cay, 0
  br i1 %.not.i1141, label %parser_set_lex_state.exit1143, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.caz = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.car, i32 noundef 1, i32 noundef 11020) #29
  br label %parser_set_lex_state.exit1143

parser_set_lex_state.exit1143:                    ; preds = %bb.tz, %bb.ua
  %.0.i1142 = phi i32 [ %i.caz, %bb.ua ], [ 1, %bb.tz ]
  store i32 %.0.i1142, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.ub:                                            ; preds = %bb.ty
  %i.cba = load ptr, ptr %0, align 8, !tbaa !18
  store i64 147, ptr %i.cba, align 8, !tbaa !10
  %i.cbb = load i16, ptr %i.f, align 8
  %i.cbc = and i16 %i.cbb, 32
  %.not.i1144 = icmp eq i16 %i.cbc, 0
  br i1 %.not.i1144, label %parser_set_lex_state.exit1146, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  %i.cbd = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cbe = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cbd, i32 noundef 256, i32 noundef 11024) #29
  br label %parser_set_lex_state.exit1146

parser_set_lex_state.exit1146:                    ; preds = %bb.ub, %bb.uc
  %.0.i1145 = phi i32 [ %i.cbe, %bb.uc ], [ 256, %bb.ub ]
  store i32 %.0.i1145, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.ud:                                            ; preds = %bb.tw
  %i.cbf = and i32 %i.car, 14
  %.not742 = icmp eq i32 %i.cbf, 0
  br i1 %.not742, label %bb.ue, label %bb.uf

bb.ue:                                            ; preds = %bb.ud
  switch i32 %i.cap, label %bb.um [
    i32 35, label %bb.uf
    i32 32, label %bb.uf
    i32 13, label %bb.uf
    i32 12, label %bb.uf
    i32 11, label %bb.uf
    i32 10, label %bb.uf
    i32 9, label %bb.uf
    i32 39, label %bb.uk
    i32 34, label %bb.ul
  ]

bb.uf:                                            ; preds = %bb.ue, %bb.ue, %bb.ue, %bb.ue, %bb.ue, %bb.ue, %bb.ue, %bb.ud
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cap)
  %i.cbg = and i32 %i.agm, 904
  %i.cbh = icmp eq i32 %i.cbg, 0
  %12 = icmp ne i32 %.0660, 0
  %or.cond41 = select i1 %i.cbh, i1 %12, i1 false
  br i1 %or.cond41, label %bb.ug, label %bb.ui

bb.ug:                                            ; preds = %bb.uf
  switch i32 %i.cap, label %bb.uh [
    i32 32, label %bb.ui
    i32 13, label %bb.ui
    i32 12, label %bb.ui
    i32 11, label %bb.ui
    i32 10, label %bb.ui
    i32 9, label %bb.ui
  ]

bb.uh:                                            ; preds = %bb.ug
  %i.cbi = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.cbj = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.600, i64 noundef 14) #29
  %.val847 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.cbk = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val847, i64 noundef %i.cbi, i32 noundef 2, i64 noundef 14860, i64 noundef %i.cbj) #29 ; 0 uses
  br label %bb.ui

bb.ui:                                            ; preds = %bb.ug, %bb.ug, %bb.ug, %bb.ug, %bb.ug, %bb.ug, %bb.uh, %bb.uf
  %i.cbl = load i16, ptr %i.f, align 8
  %i.cbm = and i16 %i.cbl, 32
  %.not.i1149 = icmp eq i16 %i.cbm, 0
  br i1 %.not.i1149, label %parser_set_lex_state.exit1151, label %bb.uj

bb.uj:                                            ; preds = %bb.ui
  %i.cbn = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cbo = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cbn, i32 noundef 1, i32 noundef 11030) #29
  br label %parser_set_lex_state.exit1151

parser_set_lex_state.exit1151:                    ; preds = %bb.ui, %bb.uj
  %.0.i1150 = phi i32 [ %i.cbo, %bb.uj ], [ 1, %bb.ui ]
  store i32 %.0.i1150, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.uk:                                            ; preds = %bb.ue
  %i.cbp = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cbp, i64 16
  store i32 16, ptr %i.cbq, align 8, !tbaa !10
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbp, i64 24
  store i32 39, ptr %i.cbr, align 8, !tbaa !10
  %i.cbs = getelementptr inbounds nuw i8, ptr %i.cbp, i64 20
  store i32 0, ptr %i.cbs, align 4, !tbaa !10
  store ptr %i.cbp, ptr %i.h, align 8, !tbaa !171
  br label %bb.un

bb.ul:                                            ; preds = %bb.ue
  %i.cbt = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbt, i64 16
  store i32 18, ptr %i.cbu, align 8, !tbaa !10
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbt, i64 24
  store i32 34, ptr %i.cbv, align 8, !tbaa !10
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbt, i64 20
  store i32 0, ptr %i.cbw, align 4, !tbaa !10
  store ptr %i.cbt, ptr %i.h, align 8, !tbaa !171
  br label %bb.un

bb.um:                                            ; preds = %bb.ue
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cap)
  br label %bb.un

bb.un:                                            ; preds = %bb.um, %bb.ul, %bb.uk
  %i.cbx = load i16, ptr %i.f, align 8
  %i.cby = and i16 %i.cbx, 32
  %.not.i1152 = icmp eq i16 %i.cby, 0
  br i1 %.not.i1152, label %parser_set_lex_state.exit1154, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.cbz = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cca = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cbz, i32 noundef 128, i32 noundef 11044) #29
  br label %parser_set_lex_state.exit1154

parser_set_lex_state.exit1154:                    ; preds = %bb.un, %bb.uo
  %.0.i1153 = phi i32 [ %i.cca, %bb.uo ], [ 128, %bb.un ]
  store i32 %.0.i1153, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.up:                                            ; preds = %bb.gv
  %i.ccb = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.ccc = and i32 %i.ccb, 577
  %.not738 = icmp ne i32 %i.ccc, 0
  %i.ccd = and i32 %i.ccb, 2064
  %i.cce = icmp eq i32 %i.ccd, 2064
  %or.cond835 = or i1 %.not738, %i.cce
  br i1 %or.cond835, label %bb.uq, label %bb.ur

bb.uq:                                            ; preds = %bb.up
  %i.ccf = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.ccf, i64 16
  store i32 7, ptr %i.ccg, align 8, !tbaa !10
  %i.cch = getelementptr inbounds nuw i8, ptr %i.ccf, i64 24
  store i32 47, ptr %i.cch, align 8, !tbaa !10
  %i.cci = getelementptr inbounds nuw i8, ptr %i.ccf, i64 20
  store i32 0, ptr %i.cci, align 4, !tbaa !10
  store ptr %i.ccf, ptr %i.h, align 8, !tbaa !171
  br label %pushback.exit1061

bb.ur:                                            ; preds = %bb.up
  %i.ccj = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 4 uses
  %i.cck = icmp eq i32 %i.ccj, 61
  br i1 %i.cck, label %bb.us, label %bb.uu

bb.us:                                            ; preds = %bb.ur
  %i.ccl = load ptr, ptr %0, align 8, !tbaa !18
  store i64 47, ptr %i.ccl, align 8, !tbaa !10
  %i.ccm = load i16, ptr %i.f, align 8
  %i.ccn = and i16 %i.ccm, 32
  %.not.i1155 = icmp eq i16 %i.ccn, 0
  br i1 %.not.i1155, label %parser_set_lex_state.exit1157, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  %i.cco = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.ccp = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cco, i32 noundef 1, i32 noundef 11054) #29
  br label %parser_set_lex_state.exit1157

parser_set_lex_state.exit1157:                    ; preds = %bb.us, %bb.ut
  %.0.i1156 = phi i32 [ %i.ccp, %bb.ut ], [ 1, %bb.us ]
  store i32 %.0.i1156, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.uu:                                            ; preds = %bb.ur
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.ccj)
  %i.ccq = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.ccr = and i32 %i.ccq, 48
  %i.ccs = icmp ne i32 %i.ccr, 0
  %13 = icmp ne i32 %.0660, 0                     ; 2 uses
  %or.cond43 = select i1 %i.ccs, i1 %13, i1 false
  br i1 %or.cond43, label %bb.uv, label %bb.ux

bb.uv:                                            ; preds = %bb.uu
  switch i32 %i.ccj, label %bb.uw [
    i32 32, label %bb.ux
    i32 13, label %bb.ux
    i32 12, label %bb.ux
    i32 11, label %bb.ux
    i32 10, label %bb.ux
    i32 9, label %bb.ux
  ]

bb.uw:                                            ; preds = %bb.uv
  tail call fastcc void @arg_ambiguous(ptr noundef nonnull %0, i8 noundef signext 47)
  %i.cct = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.cct, i64 16
  store i32 7, ptr %i.ccu, align 8, !tbaa !10
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.cct, i64 24
  store i32 47, ptr %i.ccv, align 8, !tbaa !10
  %i.ccw = getelementptr inbounds nuw i8, ptr %i.cct, i64 20
  store i32 0, ptr %i.ccw, align 4, !tbaa !10
  store ptr %i.cct, ptr %i.h, align 8, !tbaa !171
  br label %pushback.exit1061

bb.ux:                                            ; preds = %bb.uv, %bb.uv, %bb.uv, %bb.uv, %bb.uv, %bb.uv, %bb.uu
  %i.ccx = and i32 %i.ccq, 384
  %.not740 = icmp eq i32 %i.ccx, 0
  %i.ccy = select i1 %.not740, i32 1, i32 16      ; 2 uses
  %i.ccz = load i16, ptr %i.f, align 8
  %i.cda = and i16 %i.ccz, 32
  %.not.i1159 = icmp eq i16 %i.cda, 0
  br i1 %.not.i1159, label %parser_set_lex_state.exit1161, label %bb.uy

bb.uy:                                            ; preds = %bb.ux
  %i.cdb = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ccq, i32 noundef %i.ccy, i32 noundef 11063) #29
  br label %parser_set_lex_state.exit1161

parser_set_lex_state.exit1161:                    ; preds = %bb.ux, %bb.uy
  %.0.i1160 = phi i32 [ %i.cdb, %bb.uy ], [ %i.ccy, %bb.ux ]
  store i32 %.0.i1160, ptr %i.afs, align 8, !tbaa !60
  %i.cdc = and i32 %i.agm, 904
  %i.cdd = icmp eq i32 %i.cdc, 0
  %or.cond45 = select i1 %i.cdd, i1 %13, i1 false
  br i1 %or.cond45, label %bb.uz, label %pushback.exit1061

bb.uz:                                            ; preds = %parser_set_lex_state.exit1161
  %switch.tableidx3193 = add nsw i32 %i.ccj, -9   ; 2 uses
  %i.cde = icmp ult i32 %switch.tableidx3193, 24
  %switch.shifted3197 = lshr i32 8388639, %switch.tableidx3193
  %switch.lobit3198 = trunc i32 %switch.shifted3197 to i1
  %or.cond3202 = select i1 %i.cde, i1 %switch.lobit3198, i1 false
  br i1 %or.cond3202, label %pushback.exit1061, label %bb.va

bb.va:                                            ; preds = %bb.uz
  %i.cdf = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.cdg = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.601, i64 noundef 14) #29
  %.val846 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.cdh = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val846, i64 noundef %i.cdf, i32 noundef 2, i64 noundef 12044, i64 noundef %i.cdg) #29 ; 0 uses
  br label %pushback.exit1061

bb.vb:                                            ; preds = %bb.gv
  %i.cdi = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %i.cdj = icmp eq i32 %i.cdi, 61
  br i1 %i.cdj, label %bb.vc, label %bb.ve

bb.vc:                                            ; preds = %bb.vb
  %i.cdk = load ptr, ptr %0, align 8, !tbaa !18
  store i64 94, ptr %i.cdk, align 8, !tbaa !10
  %i.cdl = load i16, ptr %i.f, align 8
  %i.cdm = and i16 %i.cdl, 32
  %.not.i1163 = icmp eq i16 %i.cdm, 0
  br i1 %.not.i1163, label %parser_set_lex_state.exit1165, label %bb.vd

bb.vd:                                            ; preds = %bb.vc
  %i.cdn = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cdo = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdn, i32 noundef 1, i32 noundef 11069) #29
  br label %parser_set_lex_state.exit1165

parser_set_lex_state.exit1165:                    ; preds = %bb.vc, %bb.vd
  %.0.i1164 = phi i32 [ %i.cdo, %bb.vd ], [ 1, %bb.vc ]
  store i32 %.0.i1164, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.ve:                                            ; preds = %bb.vb
  %i.cdp = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.cdq = and i32 %i.cdp, 384
  %.not737 = icmp eq i32 %i.cdq, 0
  %i.cdr = select i1 %.not737, i32 1, i32 16      ; 2 uses
  %i.cds = load i16, ptr %i.f, align 8
  %i.cdt = and i16 %i.cds, 32
  %.not.i1166 = icmp eq i16 %i.cdt, 0
  br i1 %.not.i1166, label %parser_set_lex_state.exit1168, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.cdu = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdp, i32 noundef %i.cdr, i32 noundef 11072) #29
  br label %parser_set_lex_state.exit1168

parser_set_lex_state.exit1168:                    ; preds = %bb.ve, %bb.vf
  %.0.i1167 = phi i32 [ %i.cdu, %bb.vf ], [ %i.cdr, %bb.ve ]
  store i32 %.0.i1167, ptr %i.afs, align 8, !tbaa !60
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cdi)
  br label %pushback.exit1061

bb.vg:                                            ; preds = %bb.gv
  %i.cdv = load i16, ptr %i.f, align 8            ; 2 uses
  %i.cdw = and i16 %i.cdv, 32
  %.not.i1169 = icmp eq i16 %i.cdw, 0
  br i1 %.not.i1169, label %parser_set_lex_state.exit1171, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  %i.cdx = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cdy = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdx, i32 noundef 1, i32 noundef 11077) #29
  %.pre2126 = load i16, ptr %i.f, align 8
  br label %parser_set_lex_state.exit1171

parser_set_lex_state.exit1171:                    ; preds = %bb.vg, %bb.vh
  %i.cdz = phi i16 [ %.pre2126, %bb.vh ], [ %i.cdv, %bb.vg ]
  %.0.i1170 = phi i32 [ %i.cdy, %bb.vh ], [ 1, %bb.vg ]
  store i32 %.0.i1170, ptr %i.afs, align 8, !tbaa !60
  %i.cea = or i16 %i.cdz, 4
  store i16 %i.cea, ptr %i.f, align 8
  br label %pushback.exit1061

bb.vi:                                            ; preds = %bb.gv
  %i.ceb = load i16, ptr %i.f, align 8
  %i.cec = and i16 %i.ceb, 32
  %.not.i1172 = icmp eq i16 %i.cec, 0
  br i1 %.not.i1172, label %parser_set_lex_state.exit1174, label %bb.vj

bb.vj:                                            ; preds = %bb.vi
  %i.ced = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cee = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ced, i32 noundef 1025, i32 noundef 11082) #29
  br label %parser_set_lex_state.exit1174

parser_set_lex_state.exit1174:                    ; preds = %bb.vi, %bb.vj
  %.0.i1173 = phi i32 [ %i.cee, %bb.vj ], [ 1025, %bb.vi ]
  store i32 %.0.i1173, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.vk:                                            ; preds = %bb.gv
  %i.cef = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.ceg = and i32 %i.cef, 384
  %.not735 = icmp eq i32 %i.ceg, 0
  br i1 %.not735, label %bb.vp, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.ceh = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %.not736 = icmp eq i32 %i.ceh, 64
  br i1 %.not736, label %bb.vn, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.ceh)
  br label %bb.vn

bb.vn:                                            ; preds = %bb.vm, %bb.vl
  %i.cei = load i16, ptr %i.f, align 8
  %i.cej = and i16 %i.cei, 32
  %.not.i1175 = icmp eq i16 %i.cej, 0
  br i1 %.not.i1175, label %parser_set_lex_state.exit1177, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  %i.cek = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cel = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cek, i32 noundef 16, i32 noundef 11090) #29
  br label %parser_set_lex_state.exit1177

parser_set_lex_state.exit1177:                    ; preds = %bb.vn, %bb.vo
  %.0.i1176 = phi i32 [ %i.cel, %bb.vo ], [ 16, %bb.vn ]
  store i32 %.0.i1176, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.vp:                                            ; preds = %bb.vk
  %i.cem = load i16, ptr %i.f, align 8
  %i.cen = and i16 %i.cem, 32
  %.not.i1178 = icmp eq i16 %i.cen, 0
  br i1 %.not.i1178, label %parser_set_lex_state.exit1180, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %i.ceo = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cef, i32 noundef 1, i32 noundef 11093) #29
  br label %parser_set_lex_state.exit1180

parser_set_lex_state.exit1180:                    ; preds = %bb.vp, %bb.vq
  %.0.i1179 = phi i32 [ %i.ceo, %bb.vq ], [ 1, %bb.vp ]
  store i32 %.0.i1179, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.vr:                                            ; preds = %bb.gv
  %i.cep = load i32, ptr %i.afs, align 8, !tbaa !60 ; 5 uses
  %i.ceq = and i32 %i.cep, 577
  %.not729 = icmp ne i32 %i.ceq, 0
  %i.cer = and i32 %i.cep, 2064
  %i.ces = icmp eq i32 %i.cer, 2064
  %or.cond837 = or i1 %.not729, %i.ces
  br i1 %or.cond837, label %bb.vx, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %.not730 = icmp eq i32 %.0660, 0
  br i1 %.not730, label %bb.vx, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
end_hunk_3
begin_hunk_4_@parse_percent:bb.a
    i32 105, label %bb.ag
    i32 120, label %bb.ah
    i32 114, label %bb.ai
    i32 115, label %bb.aj
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.cp = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i32 2, ptr %i.cq, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store i32 %.2, ptr %i.cr, align 8, !tbaa !10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  store i32 %.0, ptr %i.cs, align 4, !tbaa !10
  store ptr %i.cp, ptr %i.a, align 8, !tbaa !171
  br label %switch.lookup

bb.ac:                                            ; preds = %bb.aa
  %i.ct = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i32 0, ptr %i.cu, align 8, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store i32 %.2, ptr %i.cv, align 8, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  store i32 %.0, ptr %i.cw, align 4, !tbaa !10
  store ptr %i.ct, ptr %i.a, align 8, !tbaa !171
  br label %switch.lookup

bb.ad:                                            ; preds = %bb.aa
  %i.cx = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i32 16394, ptr %i.cy, align 8, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i32 %.2, ptr %i.cz, align 8, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  store i32 %.0, ptr %i.da, align 4, !tbaa !10
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !171
  br label %switch.lookup

bb.ae:                                            ; preds = %bb.aa
  %i.db = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i32 16392, ptr %i.dc, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i32 %.2, ptr %i.dd, align 8, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  store i32 %.0, ptr %i.de, align 4, !tbaa !10
  store ptr %i.db, ptr %i.a, align 8, !tbaa !171
  br label %switch.lookup

bb.af:                                            ; preds = %bb.aa
  %i.df = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i32 16394, ptr %i.dg, align 8, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store i32 %.2, ptr %i.dh, align 8, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  store i32 %.0, ptr %i.di, align 4, !tbaa !10
  store ptr %i.df, ptr %i.a, align 8, !tbaa !171
  br label %switch.lookup

bb.ag:                                            ; preds = %bb.aa
  %i.dj = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 16392, ptr %i.dk, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i32 %.2, ptr %i.dl, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store i32 %.0, ptr %i.dm, align 4, !tbaa !10
  store ptr %i.dj, ptr %i.a, align 8, !tbaa !171
  br label %switch.lookup

bb.ah:                                            ; preds = %bb.aa
  %i.dn = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i32 2, ptr %i.do, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i32 %.2, ptr %i.dp, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  store i32 %.0, ptr %i.dq, align 4, !tbaa !10
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !171
  br label %switch.lookup

bb.ai:                                            ; preds = %bb.aa
  %i.dr = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i32 7, ptr %i.ds, align 8, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store i32 %.2, ptr %i.dt, align 8, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  store i32 %.0, ptr %i.du, align 4, !tbaa !10
  store ptr %i.dr, ptr %i.a, align 8, !tbaa !171
  br label %switch.lookup

bb.aj:                                            ; preds = %bb.aa
  %i.dv = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  store i32 16, ptr %i.dw, align 8, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store i32 %.2, ptr %i.dx, align 8, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  store i32 %.0, ptr %i.dy, align 4, !tbaa !10
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !171
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ea = load i16, ptr %i.dz, align 8
  %i.eb = and i16 %i.ea, 32
  %.not.i114 = icmp eq i16 %i.eb, 0
  br i1 %.not.i114, label %parser_set_lex_state.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ec = load i32, ptr %i.d, align 8, !tbaa !60
  %i.ed = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ec, i32 noundef 4224, i32 noundef 10089) #29
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.aj, %bb.ak
  %.0.i115 = phi i32 [ %i.ed, %bb.ak ], [ 4224, %bb.aj ]
  store i32 %.0.i115, ptr %i.d, align 8, !tbaa !60
  br label %switch.lookup

bb.al:                                            ; preds = %bb.aa
  tail call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef @.str.661)
  br label %switch.lookup

bb.am:                                            ; preds = %bb.a
  br i1 %.not.i, label %bb.an, label %.critedge.i117, !prof !486

bb.an:                                            ; preds = %bb.am
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ef = load i16, ptr %i.ee, align 8
  %i.eg = and i16 %i.ef, 8
  %.not13.i123 = icmp eq i16 %i.eg, 0
  br i1 %.not13.i123, label %bb.ao, label %.critedge.i117, !prof !486

bb.ao:                                            ; preds = %bb.an
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !487
  %i.ej = icmp ugt ptr %i.ei, inttoptr (i64 1 to ptr)
  br i1 %i.ej, label %.critedge.i117, label %bb.ap, !prof !196

.critedge.i117:                                   ; preds = %bb.ao, %bb.an, %bb.am
  %i.ek = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i118 = icmp eq i32 %i.ek, 0
  br i1 %.not14.i118, label %.critedge._crit_edge.i120, label %nextc0.exit124.thread

.critedge._crit_edge.i120:                        ; preds = %.critedge.i117
  %.pre.i121 = load ptr, ptr %i.b, align 8, !tbaa !48
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge._crit_edge.i120, %bb.ao
  %i.el = phi ptr [ %.pre.i121, %.critedge._crit_edge.i120 ], [ %i.c, %bb.ao ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1 ; 3 uses
  store ptr %i.em, ptr %i.b, align 8, !tbaa !48
  %i.en = load i8, ptr %i.el, align 1, !tbaa !10  ; 3 uses
  %i.eo = icmp eq i8 %i.en, 13
  br i1 %i.eo, label %bb.aq, label %nextc0.exit124, !prof !196

bb.aq:                                            ; preds = %bb.ap
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !413
  %.not.i.i122 = icmp ult ptr %i.em, %i.ep
  br i1 %.not.i.i122, label %bb.ar, label %nextc0.exit124.thread

bb.ar:                                            ; preds = %bb.aq
  %i.eq = load i8, ptr %i.em, align 1, !tbaa !10
  %i.er = icmp eq i8 %i.eq, 10
  br i1 %i.er, label %bb.as, label %nextc0.exit124.thread

bb.as:                                            ; preds = %bb.ar
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  store ptr %i.es, ptr %i.b, align 8, !tbaa !48
  br label %nextc0.exit124.thread

nextc0.exit124:                                   ; preds = %bb.ap
  %i.et = zext i8 %i.en to i32
  %i.eu = icmp eq i8 %i.en, 61
  br i1 %i.eu, label %bb.at, label %nextc0.exit124.thread

bb.at:                                            ; preds = %nextc0.exit124
  %i.ev = load ptr, ptr %0, align 8, !tbaa !18
  store i64 37, ptr %i.ev, align 8, !tbaa !10
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ex = load i16, ptr %i.ew, align 8
  %i.ey = and i16 %i.ex, 32
  %.not.i125 = icmp eq i16 %i.ey, 0
  br i1 %.not.i125, label %parser_set_lex_state.exit127, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ez = load i32, ptr %i.d, align 8, !tbaa !60
  %i.fa = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ez, i32 noundef 1, i32 noundef 10099) #29
  br label %parser_set_lex_state.exit127

parser_set_lex_state.exit127:                     ; preds = %bb.at, %bb.au
  %.0.i126 = phi i32 [ %i.fa, %bb.au ], [ 1, %bb.at ]
  store i32 %.0.i126, ptr %i.d, align 8, !tbaa !60
  br label %switch.lookup

nextc0.exit124.thread:                            ; preds = %bb.ar, %bb.as, %bb.aq, %.critedge.i117, %nextc0.exit124
  %.011.i119141 = phi i32 [ %i.et, %nextc0.exit124 ], [ 13, %bb.ar ], [ 10, %bb.as ], [ 13, %bb.aq ], [ -1, %.critedge.i117 ] ; 5 uses
  %i.fb = load i32, ptr %i.d, align 8, !tbaa !60  ; 4 uses
  %i.fc = and i32 %i.fb, 48
  %i.fd = icmp ne i32 %i.fc, 0
  %3 = icmp ne i32 %1, 0                          ; 2 uses
  %or.cond = and i1 %3, %i.fd
  br i1 %or.cond, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %nextc0.exit124.thread
  switch i32 %.011.i119141, label %nextc0.exit.thread [
    i32 32, label %.thread161
    i32 13, label %.thread161
    i32 12, label %.thread161
    i32 11, label %.thread161
    i32 10, label %.thread161
    i32 9, label %.thread161
    i32 -1, label %nextc0.exit.thread136
  ]

bb.aw:                                            ; preds = %nextc0.exit124.thread
  %i.fe = and i32 %i.fb, 4096
  %i.ff = icmp ne i32 %i.fe, 0
  %i.fg = icmp eq i32 %.011.i119141, 115
  %or.cond3 = and i1 %i.fg, %i.ff
  br i1 %or.cond3, label %nextc0.exit.thread, label %.thread161

.thread161:                                       ; preds = %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.aw
  %i.fh = and i32 %i.fb, 384
  %.not96 = icmp eq i32 %i.fh, 0
  %i.fi = select i1 %.not96, i32 1, i32 16        ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.fk = load i16, ptr %i.fj, align 8
  %i.fl = and i16 %i.fk, 32
  %.not.i129 = icmp eq i16 %i.fl, 0
  br i1 %.not.i129, label %parser_set_lex_state.exit131, label %bb.ax

bb.ax:                                            ; preds = %.thread161
  %i.fm = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.fb, i32 noundef %i.fi, i32 noundef 10105) #29
  br label %parser_set_lex_state.exit131

parser_set_lex_state.exit131:                     ; preds = %.thread161, %bb.ax
  %.0.i130 = phi i32 [ %i.fm, %bb.ax ], [ %i.fi, %.thread161 ]
  store i32 %.0.i130, ptr %i.d, align 8, !tbaa !60
  %i.fn = icmp eq i32 %.011.i119141, -1
  br i1 %i.fn, label %pushback.exit132, label %bb.ay

bb.ay:                                            ; preds = %parser_set_lex_state.exit131
  %i.fo = load i16, ptr %i.fj, align 8
  %i.fp = and i16 %i.fo, -9
  store i16 %i.fp, ptr %i.fj, align 8
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !48  ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.fq, i64 -1 ; 3 uses
  store ptr %i.fr, ptr %i.b, align 8, !tbaa !48
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !44
  %i.fu = icmp ugt ptr %i.fr, %i.ft
  br i1 %i.fu, label %bb.az, label %pushback.exit132

bb.az:                                            ; preds = %bb.ay
  %i.fv = load i8, ptr %i.fr, align 1, !tbaa !10
  %i.fw = icmp eq i8 %i.fv, 10
  br i1 %i.fw, label %bb.ba, label %pushback.exit132

bb.ba:                                            ; preds = %bb.az
  %i.fx = getelementptr inbounds i8, ptr %i.fq, i64 -2 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !10
  %i.fz = icmp eq i8 %i.fy, 13
  br i1 %i.fz, label %bb.bb, label %pushback.exit132

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.fx, ptr %i.b, align 8, !tbaa !48
  br label %pushback.exit132

pushback.exit132:                                 ; preds = %parser_set_lex_state.exit131, %bb.ay, %bb.az, %bb.ba, %bb.bb
  %i.ga = and i32 %2, 904
  %i.gb = icmp eq i32 %i.ga, 0
  %or.cond5 = and i1 %3, %i.gb
  br i1 %or.cond5, label %bb.bc, label %switch.lookup

bb.bc:                                            ; preds = %pushback.exit132
  %switch.tableidx = add i32 %.011.i119141, -9    ; 2 uses
  %i.gc = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond163 = select i1 %i.gc, i1 %switch.lobit, i1 false
  br i1 %or.cond163, label %switch.lookup, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gd = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.ge = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.663, i64 noundef 14) #29
  %i.gf = getelementptr i8, ptr %0, i64 368
  %.val103 = load i64, ptr %i.gf, align 8, !tbaa !46
  %i.gg = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val103, i64 noundef %i.gd, i32 noundef 2, i64 noundef 9484, i64 noundef %i.ge) #29 ; 0 uses
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.bc, %parser_precise_mbclen.exit.thread, %pushback.exit132, %bb.bd, %parser_set_lex_state.exit127, %bb.al, %parser_set_lex_state.exit, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %nextc0.exit.thread136, %parser_precise_mbclen.exit
  %.090 = phi i32 [ 0, %nextc0.exit.thread136 ], [ 0, %parser_precise_mbclen.exit.thread ], [ 0, %parser_precise_mbclen.exit ], [ 0, %bb.al ], [ 338, %bb.ab ], [ 338, %bb.ac ], [ 341, %bb.ad ], [ 342, %bb.ae ], [ 343, %bb.af ], [ 344, %bb.ag ], [ 339, %bb.ah ], [ 340, %bb.ai ], [ 337, %parser_set_lex_state.exit ], [ 326, %parser_set_lex_state.exit127 ], [ 37, %bb.bd ], [ 37, %pushback.exit132 ], [ 37, %bb.bc ]
  ret i32 %.090
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 321) i32 @parse_gvar(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.rb_code_location_struct, align 4 ; 5 uses
  %3 = alloca %struct.rb_code_location_struct, align 4 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 25 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 13 uses
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 32
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %parser_set_lex_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !60
  %i.j = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.i, i32 noundef 2, i32 noundef 10158) #29
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.j, %bb.b ], [ 2, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 %.0.i, ptr %i.k, align 8, !tbaa !60
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 33 uses
  store i32 0, ptr %i.n, align 8, !tbaa !514
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 33 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !471  ; 2 uses
  %.not.i102 = icmp eq ptr %i.p, null
  br i1 %.not.i102, label %bb.c, label %bb.d

bb.c:                                             ; preds = %parser_set_lex_state.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 60, ptr %i.q, align 4, !tbaa !480
  %i.r = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !471
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %parser_set_lex_state.exit
  %i.s = phi ptr [ %i.r, %bb.c ], [ %i.p, %parser_set_lex_state.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 20 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !480
  %i.v = icmp sgt i32 %i.u, 4096
  br i1 %i.v, label %bb.e, label %newtok.exit

bb.e:                                             ; preds = %bb.d
  store i32 60, ptr %i.t, align 4, !tbaa !480
  %i.w = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.s, i64 noundef 60, i64 noundef 1) #36
  store ptr %i.w, ptr %i.o, align 8, !tbaa !471
  br label %newtok.exit

newtok.exit:                                      ; preds = %bb.d, %bb.e
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !48   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !413
  %.not.i103 = icmp ult ptr %i.x, %i.z
  br i1 %.not.i103, label %bb.f, label %.critedge.i, !prof !486

bb.f:                                             ; preds = %newtok.exit
  %i.aa = load i16, ptr %i.e, align 8
  %i.ab = and i16 %i.aa, 8
  %.not13.i = icmp eq i16 %i.ab, 0
  br i1 %.not13.i, label %bb.g, label %.critedge.i, !prof !486

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !487
  %i.ae = icmp ugt ptr %i.ad, inttoptr (i64 1 to ptr)
  br i1 %i.ae, label %.critedge.i, label %bb.h, !prof !196

.critedge.i:                                      ; preds = %bb.g, %bb.f, %newtok.exit
  %i.af = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i = icmp eq i32 %i.af, 0
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit.thread

.critedge._crit_edge.i:                           ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !48
  br label %bb.h

bb.h:                                             ; preds = %.critedge._crit_edge.i, %bb.g
  %i.ag = phi ptr [ %.pre.i, %.critedge._crit_edge.i ], [ %i.x, %bb.g ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 5 uses
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !48
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !10  ; 7 uses
  %i.aj = icmp eq i8 %i.ai, 13
  br i1 %i.aj, label %bb.i, label %nextc0.exit, !prof !196

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !413
  %.not.i.i = icmp ult ptr %i.ah, %i.ak
  br i1 %.not.i.i, label %bb.j, label %nextc0.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !10
  %i.am = icmp eq i8 %i.al, 10
  br i1 %i.am, label %bb.k, label %nextc0.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store ptr %i.an, ptr %i.c, align 8, !tbaa !48
  br label %nextc0.exit.thread

nextc0.exit:                                      ; preds = %bb.h
  %i.ao = zext i8 %i.ai to i32
  switch i8 %i.ai, label %nextc0.exit.thread [
    i8 95, label %bb.l
    i8 126, label %bb.u
    i8 42, label %bb.u
    i8 36, label %bb.u
    i8 63, label %bb.u
    i8 33, label %bb.u
    i8 64, label %bb.u
    i8 47, label %bb.u
    i8 92, label %bb.u
    i8 59, label %bb.u
    i8 44, label %bb.u
    i8 46, label %bb.u
    i8 61, label %bb.u
    i8 58, label %bb.u
    i8 60, label %bb.u
    i8 62, label %bb.u
    i8 34, label %bb.u
    i8 45, label %bb.x
    i8 38, label %bb.al
    i8 96, label %bb.al
    i8 39, label %bb.al
    i8 43, label %bb.al
    i8 49, label %bb.aq
    i8 50, label %bb.aq
    i8 51, label %bb.aq
    i8 52, label %bb.aq
    i8 53, label %bb.aq
    i8 54, label %bb.aq
    i8 55, label %bb.aq
    i8 56, label %bb.aq
    i8 57, label %bb.aq
    i8 48, label %parser_is_identchar.exit159.thread
  ]

bb.l:                                             ; preds = %nextc0.exit
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !413
  %.not.i104 = icmp ult ptr %i.ah, %i.ap
  br i1 %.not.i104, label %bb.m, label %.critedge.i105, !prof !486

bb.m:                                             ; preds = %bb.l
  %i.aq = load i16, ptr %i.e, align 8
  %i.ar = and i16 %i.aq, 8
  %.not13.i111 = icmp eq i16 %i.ar, 0
  br i1 %.not13.i111, label %bb.n, label %.critedge.i105, !prof !486

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !487
  %i.au = icmp ugt ptr %i.at, inttoptr (i64 1 to ptr)
  br i1 %i.au, label %.critedge.i105, label %bb.o, !prof !196

.critedge.i105:                                   ; preds = %bb.n, %bb.m, %bb.l
  %i.av = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i106 = icmp eq i32 %i.av, 0
  br i1 %.not14.i106, label %.critedge._crit_edge.i108, label %nextc0.exit112

.critedge._crit_edge.i108:                        ; preds = %.critedge.i105
  %.pre.i109 = load ptr, ptr %i.c, align 8, !tbaa !48
  br label %bb.o

bb.o:                                             ; preds = %.critedge._crit_edge.i108, %bb.n
  %i.aw = phi ptr [ %.pre.i109, %.critedge._crit_edge.i108 ], [ %i.ah, %bb.n ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 3 uses
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !48
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !10  ; 2 uses
  %i.az = zext i8 %i.ay to i32
  %i.ba = icmp eq i8 %i.ay, 13
  br i1 %i.ba, label %bb.p, label %nextc0.exit112, !prof !196
end_hunk_4
begin_hunk_5_@parse_ident:bb.a
  %.not.i.i = icmp ult ptr %i.s, %i.w
  br i1 %.not.i.i, label %bb.g, label %nextc0.exit

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.s, align 1, !tbaa !10
  %i.y = icmp eq i8 %i.x, 10
  br i1 %i.y, label %bb.h, label %nextc0.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.z, ptr %i.f, align 8, !tbaa !48
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %bb.e, %bb.f, %bb.g, %bb.h
  %.011.i = phi i32 [ -1, %.critedge.i ], [ %i.u, %bb.e ], [ 13, %bb.f ], [ 10, %bb.h ], [ 13, %bb.g ] ; 5 uses
  %i.aa = load i16, ptr %i.h, align 8
  %i.ab = and i16 %i.aa, 8
  %.not.i156 = icmp eq i16 %i.ab, 0
  br i1 %.not.i156, label %bb.i, label %parser_is_identchar.exit.thread

bb.i:                                             ; preds = %nextc0.exit
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -1 ; 2 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !49  ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !10
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !552
  %i.aj = tail call i32 %i.ai(i32 noundef range(i32 -1, 256) %i.ag, i32 noundef 13, ptr noundef %i.ae) #29, !inline_history !555
  %.not.i.i157 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i157, label %parser_is_identchar.exit, label %.critedge.backedge

parser_is_identchar.exit:                         ; preds = %bb.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !10  ; 2 uses
  %i.al = icmp ne i8 %i.ak, 95
  %i.am = icmp sgt i8 %i.ak, -1
  %spec.select217 = and i1 %i.al, %i.am
  br i1 %spec.select217, label %parser_is_identchar.exit.thread, label %.critedge.backedge

.critedge.backedge:                               ; preds = %parser_is_identchar.exit, %bb.i
  %i.an = icmp ult i32 %.011.i, 128
  %spec.select = select i1 %i.an, i1 %spec.select228, i1 false
  %i.ao = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.011.i)
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %.thread204, label %bb.b, !llvm.loop !566

parser_is_identchar.exit.thread:                  ; preds = %nextc0.exit, %parser_is_identchar.exit
  %i.aq = add nsw i32 %.011.i, 1                  ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 31)
  switch i32 %i.ar, label %parser_is_identchar.exit.thread..thread202_crit_edge [
    i32 32, label %bb.j
    i32 17, label %bb.j
    i32 31, label %parser_is_identchar.exit.thread._crit_edge
    i32 0, label %tokadd.exit
  ]

parser_is_identchar.exit.thread._crit_edge:       ; preds = %parser_is_identchar.exit.thread
  %.pre236.pre = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %bb.o

parser_is_identchar.exit.thread..thread202_crit_edge: ; preds = %parser_is_identchar.exit.thread
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %.thread202

bb.j:                                             ; preds = %parser_is_identchar.exit.thread, %parser_is_identchar.exit.thread
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !48  ; 4 uses
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !413
  %.not131 = icmp ult ptr %i.as, %i.at
  br i1 %.not131, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.as, align 1, !tbaa !10
  %i.av = icmp eq i8 %i.au, 61
  br i1 %i.av, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = trunc nuw nsw i32 %.011.i to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !471
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !514 ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !514
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ay, i64 %i.bc
  store i8 %i.aw, ptr %i.bd, align 1, !tbaa !10
  %i.be = load i32, ptr %i.az, align 8, !tbaa !514
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !480 ; 2 uses
  %.not.i158 = icmp slt i32 %i.be, %i.bg
  br i1 %.not.i158, label %tokadd.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = shl nsw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !480
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !471
  %i.bj = sext i32 %i.bh to i64
  %i.bk = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.bi, i64 noundef %i.bj, i64 noundef 1) #36
  store ptr %i.bk, ptr %i.ax, align 8, !tbaa !471
  br label %tokadd.exit

bb.n:                                             ; preds = %bb.k
  %i.bl = icmp eq i32 %.011.i, 61
  br i1 %i.bl, label %bb.o, label %.thread202

bb.o:                                             ; preds = %parser_is_identchar.exit.thread._crit_edge, %bb.n
  %.pre236 = phi ptr [ %.pre236.pre, %parser_is_identchar.exit.thread._crit_edge ], [ %i.as, %bb.n ] ; 8 uses
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !60
  %i.bn = and i32 %i.bm, 128
  %.not132 = icmp eq i32 %i.bn, 0
  br i1 %.not132, label %.thread202, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !413 ; 2 uses
  %.not133 = icmp ult ptr %.pre236, %i.bo
  br i1 %.not133, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bp = load i8, ptr %.pre236, align 1, !tbaa !10
  switch i8 %i.bp, label %bb.t [
    i8 126, label %.thread202
    i8 62, label %.thread202
    i8 61, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre236, i64 1 ; 2 uses
  %.not136 = icmp ult ptr %i.bq, %i.bo
  br i1 %.not136, label %bb.s, label %.thread202

bb.s:                                             ; preds = %bb.r
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10
  %i.bs = icmp eq i8 %i.br, 62
  br i1 %i.bs, label %bb.t, label %.thread202

bb.t:                                             ; preds = %bb.q, %bb.p, %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !471
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !514 ; 2 uses
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !514
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %i.by
  store i8 61, ptr %i.bz, align 1, !tbaa !10
  %i.ca = load i32, ptr %i.bv, align 8, !tbaa !514
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !480 ; 2 uses
  %.not.i159 = icmp slt i32 %i.ca, %i.cc
  br i1 %.not.i159, label %tokadd.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = shl nsw i32 %i.cc, 1                    ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !480
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !471
  %i.cf = sext i32 %i.cd to i64
  %i.cg = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ce, i64 noundef %i.cf, i64 noundef 1) #36
  store ptr %i.cg, ptr %i.bt, align 8, !tbaa !471
  br label %tokadd.exit

.thread202:                                       ; preds = %bb.q, %bb.q, %parser_is_identchar.exit.thread..thread202_crit_edge, %bb.n, %bb.o, %bb.r, %bb.s
  %i.ch = phi ptr [ %.pre, %parser_is_identchar.exit.thread..thread202_crit_edge ], [ %i.as, %bb.n ], [ %.pre236, %bb.o ], [ %.pre236, %bb.q ], [ %.pre236, %bb.q ], [ %.pre236, %bb.r ], [ %.pre236, %bb.s ] ; 2 uses
  %i.ci = load i16, ptr %i.h, align 8
  %i.cj = and i16 %i.ci, -9
  store i16 %i.cj, ptr %i.h, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 -1 ; 3 uses
  store ptr %i.ck, ptr %i.f, align 8, !tbaa !48
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !44
  %i.cn = icmp ugt ptr %i.ck, %i.cm
  br i1 %i.cn, label %bb.v, label %tokadd.exit

bb.v:                                             ; preds = %.thread202
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !10
  %i.cp = icmp eq i8 %i.co, 10
  br i1 %i.cp, label %bb.w, label %tokadd.exit

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr inbounds i8, ptr %i.ch, i64 -2 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !10
  %i.cs = icmp eq i8 %i.cr, 13
  br i1 %i.cs, label %bb.x, label %tokadd.exit

bb.x:                                             ; preds = %bb.w
  store ptr %i.cq, ptr %i.f, align 8, !tbaa !48
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %parser_is_identchar.exit.thread, %bb.x, %bb.w, %bb.v, %.thread202, %bb.u, %bb.t, %bb.m, %bb.l
  %i.ct = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.t ], [ true, %parser_is_identchar.exit.thread ], [ true, %.thread202 ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ]
  %.0112 = phi i32 [ 307, %bb.u ], [ 308, %bb.m ], [ 308, %bb.l ], [ 307, %bb.t ], [ 311, %parser_is_identchar.exit.thread ], [ 311, %.thread202 ], [ 311, %bb.v ], [ 311, %bb.w ], [ 311, %bb.x ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !471
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !514
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 %i.cy
  store i8 0, ptr %i.cz, align 1, !tbaa !10
  %i.da = load i32, ptr %i.a, align 8, !tbaa !60  ; 5 uses
  %i.db = and i32 %i.da, 1032
  %i.dc = icmp eq i32 %i.db, 0
  %3 = icmp ne i32 %2, 0                          ; 2 uses
  %or.cond3 = or i1 %3, %i.dc
  %i.dd = and i32 %i.da, 48
  %.not137 = icmp eq i32 %i.dd, 0
  %or.cond = and i1 %.not137, %or.cond3
  br i1 %or.cond, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %tokadd.exit
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !48  ; 4 uses
  %i.df = load ptr, ptr %i.g, align 8, !tbaa !413 ; 3 uses
  %.not138 = icmp ult ptr %i.de, %i.df
  br i1 %.not138, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !10
  %i.dh = icmp eq i8 %i.dg, 58
  br i1 %i.dh, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 1 ; 2 uses
  %.not139 = icmp ult ptr %i.di, %i.df
  br i1 %.not139, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !10
  %i.dk = icmp eq i8 %i.dj, 58
  br i1 %i.dk, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dl = load i16, ptr %i.h, align 8
  %i.dm = and i16 %i.dl, 32
  %.not.i161 = icmp eq i16 %i.dm, 0
  br i1 %.not.i161, label %parser_set_lex_state.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.da, i32 noundef 2064, i32 noundef 10371) #29
  %.pre237 = load ptr, ptr %i.f, align 8, !tbaa !48
  %.pre238 = load ptr, ptr %i.g, align 8, !tbaa !413
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.ac, %bb.ad
  %i.do = phi ptr [ %.pre238, %bb.ad ], [ %i.df, %bb.ac ]
  %i.dp = phi ptr [ %.pre237, %bb.ad ], [ %i.de, %bb.ac ] ; 2 uses
  %.0.i = phi i32 [ %i.dn, %bb.ad ], [ 2064, %bb.ac ]
  store i32 %.0.i, ptr %i.a, align 8, !tbaa !60
  %.not.i162 = icmp ult ptr %i.dp, %i.do
  br i1 %.not.i162, label %bb.ae, label %.critedge.i163, !prof !486

bb.ae:                                            ; preds = %parser_set_lex_state.exit
  %i.dq = load i16, ptr %i.h, align 8
  %i.dr = and i16 %i.dq, 8
  %.not13.i169 = icmp eq i16 %i.dr, 0
  br i1 %.not13.i169, label %bb.af, label %.critedge.i163, !prof !486

bb.af:                                            ; preds = %bb.ae
  %i.ds = load ptr, ptr %i.i, align 8, !tbaa !487
  %i.dt = icmp ugt ptr %i.ds, inttoptr (i64 1 to ptr)
  br i1 %i.dt, label %.critedge.i163, label %bb.ag, !prof !196

.critedge.i163:                                   ; preds = %bb.af, %bb.ae, %parser_set_lex_state.exit
  %i.du = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i164 = icmp eq i32 %i.du, 0
  br i1 %.not14.i164, label %.critedge._crit_edge.i166, label %nextc0.exit170

.critedge._crit_edge.i166:                        ; preds = %.critedge.i163
  %.pre.i167 = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge._crit_edge.i166, %bb.af
  %i.dv = phi ptr [ %.pre.i167, %.critedge._crit_edge.i166 ], [ %i.dp, %bb.af ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 3 uses
  store ptr %i.dw, ptr %i.f, align 8, !tbaa !48
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !10
  %i.dy = icmp eq i8 %i.dx, 13
  br i1 %i.dy, label %bb.ah, label %nextc0.exit170, !prof !196

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !413
  %.not.i.i168 = icmp ult ptr %i.dw, %i.dz
  br i1 %.not.i.i168, label %bb.ai, label %nextc0.exit170

bb.ai:                                            ; preds = %bb.ah
  %i.ea = load i8, ptr %i.dw, align 1, !tbaa !10
  %i.eb = icmp eq i8 %i.ea, 10
  br i1 %i.eb, label %bb.aj, label %nextc0.exit170

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  store ptr %i.ec, ptr %i.f, align 8, !tbaa !48
  br label %nextc0.exit170

nextc0.exit170:                                   ; preds = %.critedge.i163, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %i.ed = load ptr, ptr %i.cu, align 8, !tbaa !471
  %i.ee = load i32, ptr %i.cw, align 8, !tbaa !514
  %i.ef = sext i32 %i.ee to i64
  %i.eg = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.eh = tail call i64 @rb_intern3(ptr noundef %i.ed, i64 noundef %i.ef, ptr noundef %i.eg) #29 ; 2 uses
  %i.ei = load ptr, ptr %0, align 8, !tbaa !18
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !10
  %i.ej = tail call i64 @rb_id2sym(i64 noundef %i.eh) #29
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !47
  br label %.thread204

bb.ak:                                            ; preds = %tokadd.exit, %bb.y, %bb.z, %bb.ab
  %i.el = and i32 %i.da, 256
  %i.em = icmp eq i32 %i.el, 0
  %or.cond211 = and i1 %spec.select228, %i.em
  br i1 %or.cond211, label %bb.al, label %bb.bf

bb.al:                                            ; preds = %bb.ak
  %i.en = load ptr, ptr %i.cu, align 8, !tbaa !471
  %i.eo = load i32, ptr %i.cw, align 8, !tbaa !514
  %i.ep = tail call ptr @rb_reserved_word(ptr noundef %i.en, i32 noundef %i.eo) #29 ; 5 uses
  %.not140 = icmp eq ptr %i.ep, null
  %.pre240 = load i32, ptr %i.a, align 8, !tbaa !60 ; 6 uses
  br i1 %.not140, label %bb.bf, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = and i32 %.pre240, 128
  %.not141 = icmp eq i32 %i.eq, 0
  br i1 %.not141, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.er = load i16, ptr %i.h, align 8
  %i.es = and i16 %i.er, 32
  %.not.i171 = icmp eq i16 %i.es, 0
  br i1 %.not.i171, label %parser_set_lex_state.exit173, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.et = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pre240, i32 noundef 8, i32 noundef 10412) #29
  br label %parser_set_lex_state.exit173

parser_set_lex_state.exit173:                     ; preds = %bb.an, %bb.ao
  %.0.i172 = phi i32 [ %i.et, %bb.ao ], [ 8, %bb.an ]
  store i32 %.0.i172, ptr %i.a, align 8, !tbaa !60
  %i.eu = load ptr, ptr %i.cu, align 8, !tbaa !471
  %i.ev = load i32, ptr %i.cw, align 8, !tbaa !514
  %i.ew = sext i32 %i.ev to i64
  %i.ex = tail call i64 @rb_intern2(ptr noundef %i.eu, i64 noundef %i.ew) #29
  %i.ey = load ptr, ptr %0, align 8, !tbaa !18
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !10
  %i.ez = load ptr, ptr %i.cu, align 8, !tbaa !471
  %i.fa = load i32, ptr %i.cw, align 8, !tbaa !514
  %i.fb = sext i32 %i.fa to i64
  %i.fc = tail call i64 @rb_intern2(ptr noundef %i.ez, i64 noundef %i.fb) #29
  %i.fd = tail call i64 @rb_id2sym(i64 noundef %i.fc) #29
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !47
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !14
  %i.fh = sext i16 %i.fg to i32
  br label %.thread204

bb.ap:                                            ; preds = %bb.am
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ep, i64 6
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !567
  %i.fk = sext i16 %i.fj to i32                   ; 2 uses
  %i.fl = load i16, ptr %i.h, align 8
  %i.fm = and i16 %i.fl, 32
  %.not.i174 = icmp eq i16 %i.fm, 0
  br i1 %.not.i174, label %parser_set_lex_state.exit176, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fn = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pre240, i32 noundef %i.fk, i32 noundef 10416) #29
  br label %parser_set_lex_state.exit176

parser_set_lex_state.exit176:                     ; preds = %bb.ap, %bb.aq
  %.0.i175 = phi i32 [ %i.fn, %bb.aq ], [ %i.fk, %bb.ap ] ; 3 uses
  store i32 %.0.i175, ptr %i.a, align 8, !tbaa !60
  %i.fo = and i32 %.0.i175, 1
  %.not142 = icmp eq i32 %i.fo, 0
  br i1 %.not142, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %parser_set_lex_state.exit176
  %i.fp = load i16, ptr %i.h, align 8
  %i.fq = or i16 %i.fp, 4
  store i16 %i.fq, ptr %i.h, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %parser_set_lex_state.exit176
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !14 ; 3 uses
  %i.ft = icmp eq i16 %i.fs, 281
  br i1 %i.ft, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !158
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !174
  %i.fy = icmp eq i32 %i.fv, %i.fx
  br i1 %i.fy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 -1, ptr %i.fu, align 8, !tbaa !158
  br label %.thread204

bb.av:                                            ; preds = %bb.at
  %i.fz = load i16, ptr %i.h, align 8
  %i.ga = and i16 %i.fz, 32
  %.not145 = icmp eq i16 %i.ga, 0
end_hunk_5
