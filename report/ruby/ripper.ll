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
define internal fastcc noundef ptr @rb_node_block_pass_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef readonly captures(none) %3) unnamed_addr #0 {
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
  %.03690 = phi i1 [ %3, %vtable_included.exit.thread ], [ false, %bb.a ] ; 6 uses
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
  %3 = phi i1 [ true, %bb.e ], [ %.03690, %.preheader.i ], [ %.03690, %bb.b ], [ %.03690, %.lr.ph.i51 ], [ %.03690, %bb.d ] ; 2 uses
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
  %.03685 = phi i1 [ %.03690, %.critedge ], [ false, %bb.a ], [ %3, %vtable_included.exit.thread ]
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
define internal fastcc noundef ptr @rb_node_lvar_new(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
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
define internal fastcc noundef ptr @last_arg_append(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
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
define internal fastcc noundef ptr @rest_arg_append(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
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
  %4 = trunc nuw i32 %.0660 to i1                 ; 2 uses
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
  br label %bb.md

bb.lq:                                            ; preds = %bb.lo, %bb.lo, %bb.lo, %bb.lo, %bb.lo, %bb.lo, %bb.ln
  %i.beh = and i32 %i.bea, 577
  %.not804 = icmp ne i32 %i.beh, 0
  %i.bei = and i32 %i.bea, 2064
  %i.bej = icmp eq i32 %i.bei, 2064
  %or.cond821 = or i1 %.not804, %i.bej
  br i1 %or.cond821, label %bb.md, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.bek = and i32 %i.agm, 904
  %i.bel = icmp eq i32 %i.bek, 0
  %or.cond7 = select i1 %i.bel, i1 %4, i1 false
  br i1 %or.cond7, label %bb.ls, label %bb.md

bb.ls:                                            ; preds = %bb.lr
  switch i32 %i.bdt, label %bb.lt [
    i32 32, label %bb.md
    i32 13, label %bb.md
    i32 12, label %bb.md
    i32 11, label %bb.md
    i32 10, label %bb.md
    i32 9, label %bb.md
  ]

bb.lt:                                            ; preds = %bb.ls
  %i.bem = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.ben = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.591, i64 noundef 15) #29
  %.val853 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.beo = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val853, i64 noundef %i.bem, i32 noundef 2, i64 noundef 34316, i64 noundef %i.ben) #29 ; 0 uses
  br label %bb.md

bb.lu:                                            ; preds = %bb.lj
  %i.bep = load ptr, ptr %0, align 8, !tbaa !18
  store i64 42, ptr %i.bep, align 8, !tbaa !10
  %i.beq = load i16, ptr %i.f, align 8
  %i.ber = and i16 %i.beq, 32
  %.not.i960 = icmp eq i16 %i.ber, 0
  br i1 %.not.i960, label %parser_set_lex_state.exit962, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bes = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bet = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bes, i32 noundef 1, i32 noundef 10660) #29
  br label %parser_set_lex_state.exit962

parser_set_lex_state.exit962:                     ; preds = %bb.lu, %bb.lv
  %.0.i961 = phi i32 [ %i.bet, %bb.lv ], [ 1, %bb.lu ]
  store i32 %.0.i961, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.lw:                                            ; preds = %bb.lj
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bds)
  %i.beu = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.bev = and i32 %i.beu, 48
  %i.bew = icmp ne i32 %i.bev, 0
  %5 = trunc nuw i32 %.0660 to i1                 ; 2 uses
  %or.cond9 = select i1 %i.bew, i1 %5, i1 false
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
  %i.bex = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bey = load i64, ptr @id_warning, align 8, !tbaa !11
  %i.bez = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.592, i64 noundef 34) #29
  %i.bfa = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bex, i64 noundef %i.bey, i32 noundef 1, i64 noundef %i.bez) #29 ; 0 uses
  br label %bb.md

bb.lz:                                            ; preds = %bb.lx, %bb.lx, %bb.lx, %bb.lx, %bb.lx, %bb.lx, %bb.lw
  %i.bfb = and i32 %i.beu, 577
  %.not801 = icmp ne i32 %i.bfb, 0
  %i.bfc = and i32 %i.beu, 2064
  %i.bfd = icmp eq i32 %i.bfc, 2064
  %or.cond823 = or i1 %.not801, %i.bfd
  br i1 %or.cond823, label %bb.md, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.bfe = and i32 %i.agm, 904
  %i.bff = icmp eq i32 %i.bfe, 0
  %or.cond11 = select i1 %i.bff, i1 %5, i1 false
  br i1 %or.cond11, label %bb.mb, label %bb.md

bb.mb:                                            ; preds = %bb.ma
  switch i32 %i.bds, label %bb.mc [
    i32 32, label %bb.md
    i32 13, label %bb.md
    i32 12, label %bb.md
    i32 11, label %bb.md
    i32 10, label %bb.md
    i32 9, label %bb.md
  ]

bb.mc:                                            ; preds = %bb.mb
  %i.bfg = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.bfh = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.591, i64 noundef 15) #29
  %.val852 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bfi = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val852, i64 noundef %i.bfg, i32 noundef 2, i64 noundef 10764, i64 noundef %i.bfh) #29 ; 0 uses
  br label %bb.md

bb.md:                                            ; preds = %bb.mb, %bb.mb, %bb.mb, %bb.mb, %bb.mb, %bb.mb, %bb.ls, %bb.ls, %bb.ls, %bb.ls, %bb.ls, %bb.ls, %bb.ma, %bb.mc, %bb.lz, %bb.lr, %bb.lt, %bb.lq, %bb.ly, %bb.lp
  %.0655 = phi i32 [ 333, %bb.ly ], [ 334, %bb.lq ], [ 334, %bb.lp ], [ 134, %bb.lr ], [ 333, %bb.lz ], [ 134, %bb.lt ], [ 134, %bb.ls ], [ 42, %bb.mc ], [ 42, %bb.mb ], [ 42, %bb.ma ], [ 134, %bb.ls ], [ 134, %bb.ls ], [ 134, %bb.ls ], [ 134, %bb.ls ], [ 134, %bb.ls ], [ 42, %bb.mb ], [ 42, %bb.mb ], [ 42, %bb.mb ], [ 42, %bb.mb ], [ 42, %bb.mb ]
  %i.bfj = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.bfk = and i32 %i.bfj, 384
  %.not806 = icmp eq i32 %i.bfk, 0
  %i.bfl = select i1 %.not806, i32 1, i32 16      ; 2 uses
  %i.bfm = load i16, ptr %i.f, align 8
  %i.bfn = and i16 %i.bfm, 32
  %.not.i965 = icmp eq i16 %i.bfn, 0
  br i1 %.not.i965, label %parser_set_lex_state.exit967, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.bfo = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bfj, i32 noundef %i.bfl, i32 noundef 10675) #29
  br label %parser_set_lex_state.exit967

parser_set_lex_state.exit967:                     ; preds = %bb.md, %bb.me
  %.0.i966 = phi i32 [ %i.bfo, %bb.me ], [ %i.bfl, %bb.md ]
  store i32 %.0.i966, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.mf:                                            ; preds = %bb.gv
  %i.bfp = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 3 uses
  %i.bfq = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.bfr = and i32 %i.bfq, 384
  %.not799 = icmp eq i32 %i.bfr, 0
  %i.bfs = load i16, ptr %i.f, align 8
  %i.bft = and i16 %i.bfs, 32
  %.not.i971 = icmp eq i16 %i.bft, 0              ; 2 uses
  br i1 %.not799, label %bb.mi, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  br i1 %.not.i971, label %parser_set_lex_state.exit970, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bfu = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bfq, i32 noundef 16, i32 noundef 10681) #29
  br label %parser_set_lex_state.exit970

parser_set_lex_state.exit970:                     ; preds = %bb.mg, %bb.mh
  %.0.i969 = phi i32 [ %i.bfu, %bb.mh ], [ 16, %bb.mg ]
  store i32 %.0.i969, ptr %i.afs, align 8, !tbaa !60
  switch i32 %i.bfp, label %bb.mm [
    i32 64, label %pushback.exit1061
    i32 61, label %bb.mk
    i32 126, label %bb.ml
  ]

bb.mi:                                            ; preds = %bb.mf
  br i1 %.not.i971, label %parser_set_lex_state.exit973, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bfv = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bfq, i32 noundef 1, i32 noundef 10687) #29
  br label %parser_set_lex_state.exit973

parser_set_lex_state.exit973:                     ; preds = %bb.mi, %bb.mj
  %.0.i972 = phi i32 [ %i.bfv, %bb.mj ], [ 1, %bb.mi ]
  store i32 %.0.i972, ptr %i.afs, align 8, !tbaa !60
  switch i32 %i.bfp, label %bb.mm [
    i32 61, label %bb.mk
    i32 126, label %bb.ml
  ]

bb.mk:                                            ; preds = %parser_set_lex_state.exit970, %parser_set_lex_state.exit973
  br label %pushback.exit1061

bb.ml:                                            ; preds = %parser_set_lex_state.exit970, %parser_set_lex_state.exit973
  br label %pushback.exit1061

bb.mm:                                            ; preds = %parser_set_lex_state.exit970, %parser_set_lex_state.exit973
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bfp)
  br label %pushback.exit1061

bb.mn:                                            ; preds = %bb.gv
  %i.bfw = load ptr, ptr %i.agb, align 8, !tbaa !44
  %i.bfx = icmp eq ptr %i.agu, %i.bfw
  br i1 %i.bfx, label %bb.mo, label %word_match_p.exit.thread

bb.mo:                                            ; preds = %bb.mn
  %i.bfy = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.agv, ptr noundef nonnull dereferenceable(6) @.str.29, i64 noundef 5) #32
  %.not.i974 = icmp eq i32 %i.bfy, 0
  br i1 %.not.i974, label %bb.mp, label %word_match_p.exit.thread

bb.mp:                                            ; preds = %bb.mo
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.agu, i64 6 ; 2 uses
  %i.bga = load ptr, ptr %i.afu, align 8, !tbaa !413 ; 6 uses
  %.not11.i = icmp ult ptr %i.bfz, %i.bga
  br i1 %.not11.i, label %bb.mq, label %word_match_p.exit

bb.mq:                                            ; preds = %bb.mp
  %i.bgb = load i8, ptr %i.bfz, align 1, !tbaa !10
  switch i8 %i.bgb, label %word_match_p.exit.thread [
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

word_match_p.exit:                                ; preds = %bb.mq, %bb.mq, %bb.mq, %bb.mq, %bb.mq, %bb.mq, %bb.mq, %bb.mq, %bb.mq, %bb.mp
  store ptr %i.bga, ptr %i.aft, align 8, !tbaa !48
  %.val3.i977 = load ptr, ptr %i.afw, align 8, !tbaa !41 ; 4 uses
  %i.bgc = icmp ult ptr %i.bga, %.val3.i977
  br i1 %i.bgc, label %bb.mr, label %ripper_has_scan_event.exit.i978

bb.mr:                                            ; preds = %word_match_p.exit
  %i.bgd = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bgd, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i978:                  ; preds = %word_match_p.exit
  %.not.i979 = icmp ugt ptr %i.bga, %.val3.i977
  br i1 %.not.i979, label %bb.ms, label %.critedge.i989.peel

bb.ms:                                            ; preds = %ripper_has_scan_event.exit.i978
  %i.bge = ptrtoint ptr %i.bga to i64
  %i.bgf = ptrtoint ptr %.val3.i977 to i64
  %i.bgg = sub i64 %i.bge, %i.bgf
  %i.bgh = load ptr, ptr %i.afx, align 8, !tbaa !49
  %i.bgi = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i977, i64 noundef %i.bgg, ptr noundef %i.bgh) #29
  %i.bgj = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 353) #29
  %.val.i.i980 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bgk = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i980, i64 noundef %i.bgj, i32 noundef 1, i64 noundef %i.bgi) #29
  %i.bgl = load ptr, ptr %i.afz, align 8, !tbaa !39
  %i.bgm = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.bgl) #29 ; 0 uses
  %i.bgn = load ptr, ptr %i.aft, align 8, !tbaa !48
  store ptr %i.bgn, ptr %i.afw, align 8, !tbaa !41
  store i64 %i.bgk, ptr %i.aga, align 8, !tbaa !47
  %.pre2138 = load ptr, ptr %i.afu, align 8, !tbaa !413
  br label %.critedge.i989.peel

.critedge.i989.peel:                              ; preds = %ripper_has_scan_event.exit.i978, %bb.ms
  %i.bgo = phi ptr [ %i.bga, %ripper_has_scan_event.exit.i978 ], [ %.pre2138, %bb.ms ]
  store ptr %i.bgo, ptr %i.aft, align 8, !tbaa !48
  %i.bgp = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i990.peel = icmp eq i32 %i.bgp, 0
  br i1 %.not14.i990.peel, label %bb.mt, label %ripper_dispatch_scan_event.exit1008.thread

bb.mt:                                            ; preds = %.critedge.i989.peel
  %.pre.i993.peel = load ptr, ptr %i.aft, align 8, !tbaa !48 ; 7 uses
  %i.bgq = getelementptr inbounds nuw i8, ptr %.pre.i993.peel, i64 1 ; 7 uses
  store ptr %i.bgq, ptr %i.aft, align 8, !tbaa !48
  %i.bgr = load i8, ptr %.pre.i993.peel, align 1, !tbaa !10
  switch i8 %i.bgr, label %.split670.peel [
    i8 13, label %bb.mw
    i8 61, label %sub_0.peel
  ], !prof !548
end_hunk_1
begin_hunk_2_@parser_yylex:bb.a
    i8 13, label %bb.nb
    i8 61, label %sub_0
  ], !prof !548

bb.nb:                                            ; preds = %bb.na
  %i.bih = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not.i.i994 = icmp ult ptr %i.bif, %i.bih
  br i1 %.not.i.i994, label %bb.nc, label %.split670

bb.nc:                                            ; preds = %bb.nb
  %i.bii = load i8, ptr %i.bif, align 1, !tbaa !10
  %i.bij = icmp eq i8 %i.bii, 10
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bie, i64 2
  %spec.select2718 = select i1 %i.bij, ptr %i.bik, ptr %i.bif
  br label %.split670

ripper_dispatch_scan_event.exit1008.thread:       ; preds = %.critedge.i989.peel, %.critedge.i989
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.593) #29
  br label %pushback.exit1061

.split670:                                        ; preds = %bb.nc, %bb.na, %bb.nb
  %i.bil = phi ptr [ %i.bif, %bb.na ], [ %i.bif, %bb.nb ], [ %spec.select2718, %bb.nc ] ; 2 uses
  %i.bim = load i16, ptr %i.f, align 8
  %i.bin = and i16 %i.bim, -9
  store i16 %i.bin, ptr %i.f, align 8
  %i.bio = getelementptr inbounds i8, ptr %i.bil, i64 -1 ; 3 uses
  store ptr %i.bio, ptr %i.aft, align 8, !tbaa !48
  %i.bip = load ptr, ptr %i.agb, align 8, !tbaa !44
  %i.biq = icmp ugt ptr %i.bio, %i.bip
  br i1 %i.biq, label %bb.nd, label %pushback.exit997

bb.nd:                                            ; preds = %.split670
  %i.bir = load i8, ptr %i.bio, align 1, !tbaa !10
  %i.bis = icmp eq i8 %i.bir, 10
  br i1 %i.bis, label %bb.ne, label %pushback.exit997

bb.ne:                                            ; preds = %bb.nd
  %i.bit = getelementptr inbounds i8, ptr %i.bil, i64 -2 ; 2 uses
  %i.biu = load i8, ptr %i.bit, align 1, !tbaa !10
  %i.biv = icmp eq i8 %i.biu, 13
  br i1 %i.biv, label %pushback.exit997.sink.split, label %pushback.exit997

sub_0:                                            ; preds = %bb.na
  %i.biw = load i8, ptr %i.bif, align 1
  %.not1809.a = icmp eq i8 %i.biw, 101
  br i1 %.not1809.a, label %sub_1, label %.split671

sub_1:                                            ; preds = %sub_0
  %i.bix = getelementptr inbounds nuw i8, ptr %i.bie, i64 2
  %i.biy = load i8, ptr %i.bix, align 1
  %.not1810 = icmp eq i8 %i.biy, 110
  br i1 %.not1810, label %.tail, label %.split671

.tail:                                            ; preds = %sub_1
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bie, i64 3
  %i.bja = load i8, ptr %i.biz, align 1
  %i.bjb = icmp eq i8 %i.bja, 100
  br i1 %i.bjb, label %bb.nf, label %.split671

bb.nf:                                            ; preds = %.tail
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bie, i64 4 ; 2 uses
  %i.bjd = load ptr, ptr %i.afu, align 8, !tbaa !413 ; 11 uses
  %.not11.i1000 = icmp ult ptr %i.bjc, %i.bjd
  br i1 %.not11.i1000, label %bb.ng, label %word_match_p.exit1001

bb.ng:                                            ; preds = %bb.nf
  %i.bje = load i8, ptr %i.bjc, align 1, !tbaa !10
  switch i8 %i.bje, label %.split671 [
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

.split671:                                        ; preds = %sub_1, %sub_0, %bb.ng, %.tail
  %i.bjf = load i16, ptr %i.f, align 8
  %i.bjg = and i16 %i.bjf, -9
  store i16 %i.bjg, ptr %i.f, align 8
  store ptr %i.bie, ptr %i.aft, align 8, !tbaa !48
  %i.bjh = load ptr, ptr %i.agb, align 8, !tbaa !44
  %i.bji = icmp ugt ptr %i.bie, %i.bjh
  br i1 %i.bji, label %bb.nh, label %pushback.exit997

bb.nh:                                            ; preds = %.split671
  %i.bjj = load i8, ptr %i.bie, align 1, !tbaa !10
  %i.bjk = icmp eq i8 %i.bjj, 10
  br i1 %i.bjk, label %bb.ni, label %pushback.exit997

bb.ni:                                            ; preds = %bb.nh
  %i.bjl = getelementptr inbounds i8, ptr %i.bie, i64 -1 ; 2 uses
  %i.bjm = load i8, ptr %i.bjl, align 1, !tbaa !10
  %i.bjn = icmp eq i8 %i.bjm, 13
  br i1 %i.bjn, label %pushback.exit997.sink.split, label %pushback.exit997

pushback.exit997.sink.split:                      ; preds = %bb.ni, %bb.ne
  %.sink2719 = phi ptr [ %i.bit, %bb.ne ], [ %i.bjl, %bb.ni ]
  store ptr %.sink2719, ptr %i.aft, align 8, !tbaa !48
  br label %pushback.exit997

pushback.exit997:                                 ; preds = %pushback.exit997.sink.split, %bb.ni, %bb.nh, %.split671, %bb.ne, %bb.nd, %.split670
  %i.bjo = load ptr, ptr %i.afu, align 8, !tbaa !413 ; 3 uses
  store ptr %i.bjo, ptr %i.aft, align 8, !tbaa !48
  %.val3.i983 = load ptr, ptr %i.afw, align 8, !tbaa !41 ; 2 uses
  %i.bjp = icmp ult ptr %i.bjo, %.val3.i983
  br i1 %i.bjp, label %.loopexit2103, label %ripper_has_scan_event.exit.i984, !llvm.loop !551

word_match_p.exit1001:                            ; preds = %bb.ng, %bb.ng, %bb.ng, %bb.ng, %bb.ng, %bb.ng, %bb.ng, %bb.ng, %bb.ng, %bb.nf, %bb.mv, %bb.mv, %bb.mv, %bb.mv, %bb.mv, %bb.mv, %bb.mv, %bb.mv, %bb.mv, %bb.mu
  %i.bjq = phi ptr [ %i.bgz, %bb.mu ], [ %i.bgz, %bb.mv ], [ %i.bgz, %bb.mv ], [ %i.bgz, %bb.mv ], [ %i.bgz, %bb.mv ], [ %i.bgz, %bb.mv ], [ %i.bgz, %bb.mv ], [ %i.bgz, %bb.mv ], [ %i.bgz, %bb.mv ], [ %i.bgz, %bb.mv ], [ %i.bjd, %bb.nf ], [ %i.bjd, %bb.ng ], [ %i.bjd, %bb.ng ], [ %i.bjd, %bb.ng ], [ %i.bjd, %bb.ng ], [ %i.bjd, %bb.ng ], [ %i.bjd, %bb.ng ], [ %i.bjd, %bb.ng ], [ %i.bjd, %bb.ng ], [ %i.bjd, %bb.ng ] ; 4 uses
  store ptr %i.bjq, ptr %i.aft, align 8, !tbaa !48
  %.val3.i1004 = load ptr, ptr %i.afw, align 8, !tbaa !41 ; 4 uses
  %i.bjr = icmp ult ptr %i.bjq, %.val3.i1004
  br i1 %i.bjr, label %bb.nj, label %ripper_has_scan_event.exit.i1005

bb.nj:                                            ; preds = %word_match_p.exit1001
  %i.bjs = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bjs, ptr noundef nonnull @.str.674) #31
  unreachable

ripper_has_scan_event.exit.i1005:                 ; preds = %word_match_p.exit1001
  %.not.i1006 = icmp ugt ptr %i.bjq, %.val3.i1004
  br i1 %.not.i1006, label %bb.nk, label %.backedge.backedge

bb.nk:                                            ; preds = %ripper_has_scan_event.exit.i1005
  %i.bjt = ptrtoint ptr %i.bjq to i64
  %i.bju = ptrtoint ptr %.val3.i1004 to i64
  %i.bjv = sub i64 %i.bjt, %i.bju
  %i.bjw = load ptr, ptr %i.afx, align 8, !tbaa !49
  %i.bjx = tail call i64 @rb_enc_str_new(ptr noundef %.val3.i1004, i64 noundef %i.bjv, ptr noundef %i.bjw) #29
  %i.bjy = tail call i64 @ripper_token2eventid(i32 noundef range(i32 1, 0) 355) #29
  %.val.i.i1007 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bjz = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val.i.i1007, i64 noundef %i.bjy, i32 noundef 1, i64 noundef %i.bjx) #29
  %i.bka = load ptr, ptr %i.afz, align 8, !tbaa !39
  %i.bkb = tail call ptr @rb_parser_set_location(ptr noundef nonnull %0, ptr noundef %i.bka) #29 ; 0 uses
  %i.bkc = load ptr, ptr %i.aft, align 8, !tbaa !48
  store ptr %i.bkc, ptr %i.afw, align 8, !tbaa !41
  store i64 %i.bjz, ptr %i.aga, align 8, !tbaa !47
  br label %.backedge.backedge

word_match_p.exit.thread:                         ; preds = %bb.mq, %bb.mo, %bb.mn
  %i.bkd = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.bke = and i32 %i.bkd, 384
  %.not795 = icmp eq i32 %i.bke, 0
  %i.bkf = select i1 %.not795, i32 1, i32 16      ; 2 uses
  %i.bkg = load i16, ptr %i.f, align 8
  %i.bkh = and i16 %i.bkg, 32
  %.not.i1009 = icmp eq i16 %i.bkh, 0
  br i1 %.not.i1009, label %parser_set_lex_state.exit1011, label %bb.nl

bb.nl:                                            ; preds = %word_match_p.exit.thread
  %i.bki = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bkd, i32 noundef %i.bkf, i32 noundef 10728) #29
  br label %parser_set_lex_state.exit1011

parser_set_lex_state.exit1011:                    ; preds = %word_match_p.exit.thread, %bb.nl
  %.0.i1010 = phi i32 [ %i.bki, %bb.nl ], [ %i.bkf, %word_match_p.exit.thread ]
  store i32 %.0.i1010, ptr %i.afs, align 8, !tbaa !60
  %i.bkj = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  switch i32 %i.bkj, label %bb.np [
    i32 61, label %bb.nm
    i32 126, label %pushback.exit1061
    i32 62, label %bb.no
  ]

bb.nm:                                            ; preds = %parser_set_lex_state.exit1011
  %i.bkk = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %i.bkl = icmp eq i32 %i.bkk, 61
  br i1 %i.bkl, label %pushback.exit1061, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bkk)
  br label %pushback.exit1061

bb.no:                                            ; preds = %parser_set_lex_state.exit1011
  br label %pushback.exit1061

bb.np:                                            ; preds = %parser_set_lex_state.exit1011
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bkj)
  br label %pushback.exit1061

bb.nq:                                            ; preds = %bb.gv
  %i.bkm = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 3 uses
  %i.bkn = icmp eq i32 %i.bkm, 60                 ; 2 uses
  %.pre2136.a = load i32, ptr %i.afs, align 8, !tbaa !60 ; 5 uses
  %i.bko = and i32 %.pre2136.a, 782
  %or.cond824 = icmp eq i32 %i.bko, 0
  %or.cond2720 = select i1 %i.bkn, i1 %or.cond824, i1 false
  br i1 %or.cond2720, label %bb.nr, label %bb.nu

bb.nr:                                            ; preds = %bb.nq
  %i.bkp = and i32 %.pre2136.a, 48
  %.not789 = icmp eq i32 %i.bkp, 0
  br i1 %.not789, label %bb.nt, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.bkq = and i32 %.pre2136.a, 2048
  %i.bkr = icmp ne i32 %i.bkq, 0
  %6 = trunc nuw i32 %.0660 to i1
  %or.cond13 = select i1 %i.bkr, i1 true, i1 %6
  br i1 %or.cond13, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %bb.ns, %bb.nr
  %i.bks = tail call fastcc i32 @heredoc_identifier(ptr noundef nonnull %0) ; 2 uses
  %.not790 = icmp eq i32 %i.bks, 0
  %i.bkt = tail call i32 @llvm.smax.i32(i32 %i.bks, i32 0)
  br i1 %.not790, label %._crit_edge, label %pushback.exit1061

._crit_edge:                                      ; preds = %bb.nt
  %.pre2135 = load i32, ptr %i.afs, align 8, !tbaa !60
  br label %bb.nu

bb.nu:                                            ; preds = %._crit_edge, %bb.ns, %bb.nq
  %i.bku = phi i32 [ %.pre2135, %._crit_edge ], [ %.pre2136.a, %bb.ns ], [ %.pre2136.a, %bb.nq ] ; 4 uses
  %i.bkv = and i32 %i.bku, 384
  %.not791 = icmp eq i32 %i.bkv, 0
  br i1 %.not791, label %bb.nx, label %bb.nv

bb.nv:                                            ; preds = %bb.nu
  %i.bkw = load i16, ptr %i.f, align 8
  %i.bkx = and i16 %i.bkw, 32
  %.not.i1012 = icmp eq i16 %i.bkx, 0
  br i1 %.not.i1012, label %parser_set_lex_state.exit1014, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.bky = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bku, i32 noundef 16, i32 noundef 10755) #29
  br label %parser_set_lex_state.exit1014

bb.nx:                                            ; preds = %bb.nu
  %i.bkz = and i32 %i.bku, 512
  %.not792 = icmp eq i32 %i.bkz, 0
  %.pre2137 = load i16, ptr %i.f, align 8         ; 2 uses
  br i1 %.not792, label %bb.nz, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.bla = or i16 %.pre2137, 4                    ; 2 uses
  store i16 %i.bla, ptr %i.f, align 8
  br label %bb.nz

bb.nz:                                            ; preds = %bb.ny, %bb.nx
  %i.blb = phi i16 [ %i.bla, %bb.ny ], [ %.pre2137, %bb.nx ]
  %i.blc = and i16 %i.blb, 32
  %.not.i1015 = icmp eq i16 %i.blc, 0
  br i1 %.not.i1015, label %parser_set_lex_state.exit1014, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.bld = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bku, i32 noundef 1, i32 noundef 10760) #29
  br label %parser_set_lex_state.exit1014

parser_set_lex_state.exit1014:                    ; preds = %bb.oa, %bb.nz, %bb.nw, %bb.nv
  %storemerge1330 = phi i32 [ 16, %bb.nv ], [ %i.bky, %bb.nw ], [ %i.bld, %bb.oa ], [ 1, %bb.nz ]
  store i32 %storemerge1330, ptr %i.afs, align 8, !tbaa !60
  %i.ble = icmp eq i32 %i.bkm, 61
  br i1 %i.ble, label %bb.ob, label %bb.od

bb.ob:                                            ; preds = %parser_set_lex_state.exit1014
  %i.blf = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %i.blg = icmp eq i32 %i.blf, 62
  br i1 %i.blg, label %pushback.exit1061, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.blf)
  br label %pushback.exit1061

bb.od:                                            ; preds = %parser_set_lex_state.exit1014
  br i1 %i.bkn, label %bb.oe, label %bb.ok

bb.oe:                                            ; preds = %bb.od
  %i.blh = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 3 uses
  %i.bli = icmp eq i32 %i.blh, 61
  br i1 %i.bli, label %bb.of, label %bb.oh

bb.of:                                            ; preds = %bb.oe
  %i.blj = load ptr, ptr %0, align 8, !tbaa !18
  store i64 136, ptr %i.blj, align 8, !tbaa !10
  %i.blk = load i16, ptr %i.f, align 8
  %i.bll = and i16 %i.blk, 32
  %.not.i1018 = icmp eq i16 %i.bll, 0
  br i1 %.not.i1018, label %parser_set_lex_state.exit1020, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.blm = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bln = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.blm, i32 noundef 1, i32 noundef 10772) #29
  br label %parser_set_lex_state.exit1020

parser_set_lex_state.exit1020:                    ; preds = %bb.of, %bb.og
  %.0.i1019 = phi i32 [ %i.bln, %bb.og ], [ 1, %bb.of ]
  store i32 %.0.i1019, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.oh:                                            ; preds = %bb.oe
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.blh)
  %i.blo = and i32 %i.agm, 904
  %i.blp = icmp eq i32 %i.blo, 0
  %7 = trunc nuw i32 %.0660 to i1
  %or.cond15 = select i1 %i.blp, i1 %7, i1 false
  br i1 %or.cond15, label %bb.oi, label %pushback.exit1061

bb.oi:                                            ; preds = %bb.oh
  switch i32 %i.blh, label %bb.oj [
    i32 32, label %pushback.exit1061
    i32 13, label %pushback.exit1061
    i32 12, label %pushback.exit1061
    i32 11, label %pushback.exit1061
    i32 10, label %pushback.exit1061
    i32 9, label %pushback.exit1061
  ]

bb.oj:                                            ; preds = %bb.oi
  %i.blq = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.blr = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.594, i64 noundef 13) #29
  %.val851 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bls = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val851, i64 noundef %i.blq, i32 noundef 2, i64 noundef 34828, i64 noundef %i.blr) #29 ; 0 uses
  br label %pushback.exit1061

bb.ok:                                            ; preds = %bb.od
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bkm)
  br label %pushback.exit1061

bb.ol:                                            ; preds = %bb.gv
  %i.blt = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.blu = and i32 %i.blt, 384
  %.not786 = icmp eq i32 %i.blu, 0
  %i.blv = select i1 %.not786, i32 1, i32 16      ; 2 uses
  %i.blw = load i16, ptr %i.f, align 8
  %i.blx = and i16 %i.blw, 32
  %.not.i1022 = icmp eq i16 %i.blx, 0
  br i1 %.not.i1022, label %parser_set_lex_state.exit1024, label %bb.om

bb.om:                                            ; preds = %bb.ol
  %i.bly = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.blt, i32 noundef %i.blv, i32 noundef 10782) #29
  br label %parser_set_lex_state.exit1024

parser_set_lex_state.exit1024:                    ; preds = %bb.ol, %bb.om
  %.0.i1023 = phi i32 [ %i.bly, %bb.om ], [ %i.blv, %bb.ol ]
  store i32 %.0.i1023, ptr %i.afs, align 8, !tbaa !60
  %i.blz = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  switch i32 %i.blz, label %bb.or [
    i32 61, label %pushback.exit1061
    i32 62, label %bb.on
  ]

bb.on:                                            ; preds = %parser_set_lex_state.exit1024
  %i.bma = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %i.bmb = icmp eq i32 %i.bma, 61
  br i1 %i.bmb, label %bb.oo, label %bb.oq

bb.oo:                                            ; preds = %bb.on
  %i.bmc = load ptr, ptr %0, align 8, !tbaa !18
  store i64 137, ptr %i.bmc, align 8, !tbaa !10
  %i.bmd = load i16, ptr %i.f, align 8
  %i.bme = and i16 %i.bmd, 32
  %.not.i1025 = icmp eq i16 %i.bme, 0
  br i1 %.not.i1025, label %parser_set_lex_state.exit1027, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.bmf = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bmg = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmf, i32 noundef 1, i32 noundef 10789) #29
  br label %parser_set_lex_state.exit1027

parser_set_lex_state.exit1027:                    ; preds = %bb.oo, %bb.op
  %.0.i1026 = phi i32 [ %i.bmg, %bb.op ], [ 1, %bb.oo ]
  store i32 %.0.i1026, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.oq:                                            ; preds = %bb.on
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bma)
  br label %pushback.exit1061

bb.or:                                            ; preds = %parser_set_lex_state.exit1024
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.blz)
  br label %pushback.exit1061

bb.os:                                            ; preds = %bb.gv
  %i.bmh = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.bmi = and i32 %i.bmh, 1032
  %i.bmj = icmp eq i32 %i.bmi, 0
  %i.bmk = icmp ne i32 %.0663, 0
  %or.cond17 = select i1 %i.bmj, i1 true, i1 %i.bmk
  %i.bml = and i32 %i.bmh, 48
  %.not785 = icmp eq i32 %i.bml, 0
  %i.bmm = select i1 %or.cond17, i1 %.not785, i1 false
  %i.bmn = select i1 %i.bmm, i32 2, i32 66
  %i.bmo = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmo, i64 16
  store i32 %i.bmn, ptr %i.bmp, align 8, !tbaa !10
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmo, i64 24
  store i32 34, ptr %i.bmq, align 8, !tbaa !10
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmo, i64 20
  store i32 0, ptr %i.bmr, align 4, !tbaa !10
  store ptr %i.bmo, ptr %i.h, align 8, !tbaa !171
  %i.bms = load ptr, ptr %i.aft, align 8, !tbaa !48
  %i.bmt = getelementptr inbounds i8, ptr %i.bms, i64 -1
  store ptr %i.bmt, ptr %i.afw, align 8, !tbaa !41
  br label %pushback.exit1061

bb.ot:                                            ; preds = %bb.gv
  %i.bmu = load i32, ptr %i.afs, align 8, !tbaa !60 ; 5 uses
  %i.bmv = and i32 %i.bmu, 128
  %.not782 = icmp eq i32 %i.bmv, 0
  br i1 %.not782, label %bb.ow, label %bb.ou

bb.ou:                                            ; preds = %bb.ot
  %i.bmw = load i16, ptr %i.f, align 8
  %i.bmx = and i16 %i.bmw, 32
  %.not.i1028 = icmp eq i16 %i.bmx, 0
  br i1 %.not.i1028, label %parser_set_lex_state.exit1030, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.bmy = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmu, i32 noundef 8, i32 noundef 10806) #29
  br label %parser_set_lex_state.exit1030

parser_set_lex_state.exit1030:                    ; preds = %bb.ou, %bb.ov
  %.0.i1029 = phi i32 [ %i.bmy, %bb.ov ], [ 8, %bb.ou ]
  store i32 %.0.i1029, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.ow:                                            ; preds = %bb.ot
  %i.bmz = and i32 %i.bmu, 256
  %.not783 = icmp eq i32 %i.bmz, 0
  br i1 %.not783, label %bb.pc, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %.not784 = icmp eq i32 %.0663, 0
  %i.bna = load i16, ptr %i.f, align 8
  %i.bnb = and i16 %i.bna, 32
  %.not.i1034 = icmp eq i16 %i.bnb, 0             ; 2 uses
  br i1 %.not784, label %bb.pa, label %bb.oy

bb.oy:                                            ; preds = %bb.ox
  br i1 %.not.i1034, label %parser_set_lex_state.exit1033, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.bnc = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmu, i32 noundef 32, i32 noundef 10811) #29
  br label %parser_set_lex_state.exit1033

parser_set_lex_state.exit1033:                    ; preds = %bb.oy, %bb.oz
  %.0.i1032 = phi i32 [ %i.bnc, %bb.oz ], [ 32, %bb.oy ]
  store i32 %.0.i1032, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.pa:                                            ; preds = %bb.ox
  br i1 %.not.i1034, label %parser_set_lex_state.exit1036, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.bnd = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmu, i32 noundef 16, i32 noundef 10813) #29
  br label %parser_set_lex_state.exit1036

parser_set_lex_state.exit1036:                    ; preds = %bb.pa, %bb.pb
  %.0.i1035 = phi i32 [ %i.bnd, %bb.pb ], [ 16, %bb.pa ]
  store i32 %.0.i1035, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.pc:                                            ; preds = %bb.ow
  %i.bne = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bne, i64 16
  store i32 2, ptr %i.bnf, align 8, !tbaa !10
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bne, i64 24
  store i32 96, ptr %i.bng, align 8, !tbaa !10
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bne, i64 20
  store i32 0, ptr %i.bnh, align 4, !tbaa !10
  store ptr %i.bne, ptr %i.h, align 8, !tbaa !171
  br label %pushback.exit1061

bb.pd:                                            ; preds = %bb.gv
  %i.bni = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.bnj = and i32 %i.bni, 1032
  %i.bnk = icmp eq i32 %i.bnj, 0
  %i.bnl = icmp ne i32 %.0663, 0
  %or.cond19 = select i1 %i.bnk, i1 true, i1 %i.bnl
  %i.bnm = and i32 %i.bni, 48
  %.not781 = icmp eq i32 %i.bnm, 0
  %i.bnn = select i1 %or.cond19, i1 %.not781, i1 false
  %i.bno = select i1 %i.bnn, i32 0, i32 64
  %i.bnp = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 16
  store i32 %i.bno, ptr %i.bnq, align 8, !tbaa !10
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnp, i64 24
  store i32 39, ptr %i.bnr, align 8, !tbaa !10
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnp, i64 20
  store i32 0, ptr %i.bns, align 4, !tbaa !10
  store ptr %i.bnp, ptr %i.h, align 8, !tbaa !171
  %i.bnt = load ptr, ptr %i.aft, align 8, !tbaa !48
  %i.bnu = getelementptr inbounds i8, ptr %i.bnt, i64 -1
  store ptr %i.bnu, ptr %i.afw, align 8, !tbaa !41
  br label %pushback.exit1061

bb.pe:                                            ; preds = %bb.gv
  %i.bnv = tail call fastcc i32 @parse_qmark(ptr noundef nonnull %0, i32 noundef %.0660)
  br label %pushback.exit1061

bb.pf:                                            ; preds = %bb.gv
  %i.bnw = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 4 uses
  switch i32 %i.bnw, label %bb.pp [
    i32 38, label %bb.pg
    i32 61, label %bb.pl
    i32 46, label %bb.pn
  ]

bb.pg:                                            ; preds = %bb.pf
  %i.bnx = load i16, ptr %i.f, align 8
  %i.bny = and i16 %i.bnx, 32
  %.not.i1037 = icmp eq i16 %i.bny, 0
  br i1 %.not.i1037, label %parser_set_lex_state.exit1039, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.bnz = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.boa = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bnz, i32 noundef 1, i32 noundef 10830) #29
  br label %parser_set_lex_state.exit1039

parser_set_lex_state.exit1039:                    ; preds = %bb.pg, %bb.ph
  %.0.i1038 = phi i32 [ %i.boa, %bb.ph ], [ 1, %bb.pg ]
  store i32 %.0.i1038, ptr %i.afs, align 8, !tbaa !60
  %i.bob = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %i.boc = icmp eq i32 %i.bob, 61
  br i1 %i.boc, label %bb.pi, label %bb.pk

bb.pi:                                            ; preds = %parser_set_lex_state.exit1039
  %i.bod = load ptr, ptr %0, align 8, !tbaa !18
  store i64 148, ptr %i.bod, align 8, !tbaa !10
  %i.boe = load i16, ptr %i.f, align 8
  %i.bof = and i16 %i.boe, 32
  %.not.i1040 = icmp eq i16 %i.bof, 0
  br i1 %.not.i1040, label %parser_set_lex_state.exit1042, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.bog = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.boh = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bog, i32 noundef 1, i32 noundef 10833) #29
  br label %parser_set_lex_state.exit1042

parser_set_lex_state.exit1042:                    ; preds = %bb.pi, %bb.pj
  %.0.i1041 = phi i32 [ %i.boh, %bb.pj ], [ 1, %bb.pi ]
  store i32 %.0.i1041, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.pk:                                            ; preds = %parser_set_lex_state.exit1039
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bob)
  br label %pushback.exit1061

bb.pl:                                            ; preds = %bb.pf
  %i.boi = load ptr, ptr %0, align 8, !tbaa !18
  store i64 38, ptr %i.boi, align 8, !tbaa !10
  %i.boj = load i16, ptr %i.f, align 8
  %i.bok = and i16 %i.boj, 32
  %.not.i1043 = icmp eq i16 %i.bok, 0
  br i1 %.not.i1043, label %parser_set_lex_state.exit1045, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.bol = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bom = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bol, i32 noundef 1, i32 noundef 10841) #29
  br label %parser_set_lex_state.exit1045

parser_set_lex_state.exit1045:                    ; preds = %bb.pl, %bb.pm
  %.0.i1044 = phi i32 [ %i.bom, %bb.pm ], [ 1, %bb.pl ]
  store i32 %.0.i1044, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.pn:                                            ; preds = %bb.pf
  %i.bon = load ptr, ptr %0, align 8, !tbaa !18
  store i64 150, ptr %i.bon, align 8, !tbaa !10
  %i.boo = load i16, ptr %i.f, align 8
  %i.bop = and i16 %i.boo, 32
  %.not.i1046 = icmp eq i16 %i.bop, 0
  br i1 %.not.i1046, label %parser_set_lex_state.exit1048, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.boq = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bor = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.boq, i32 noundef 256, i32 noundef 10846) #29
  br label %parser_set_lex_state.exit1048

parser_set_lex_state.exit1048:                    ; preds = %bb.pn, %bb.po
  %.0.i1047 = phi i32 [ %i.bor, %bb.po ], [ 256, %bb.pn ]
  store i32 %.0.i1047, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.pp:                                            ; preds = %bb.pf
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bnw)
  %i.bos = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.bot = and i32 %i.bos, 48
  %i.bou = icmp ne i32 %i.bot, 0
  %8 = trunc nuw i32 %.0660 to i1                 ; 2 uses
  %or.cond21 = select i1 %i.bou, i1 %8, i1 false
  br i1 %or.cond21, label %bb.pq, label %bb.pv

bb.pq:                                            ; preds = %bb.pp
  switch i32 %i.bnw, label %.thread1261 [
    i32 32, label %bb.pv
    i32 13, label %bb.pv
    i32 12, label %bb.pv
    i32 11, label %bb.pv
    i32 10, label %bb.pv
    i32 9, label %bb.pv
    i32 58, label %bb.pr
  ]

bb.pr:                                            ; preds = %bb.pq
  %i.bov = load ptr, ptr %i.aft, align 8, !tbaa !48
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bov, i64 1 ; 3 uses
  %i.box = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not776 = icmp ult ptr %i.bow, %i.box
  br i1 %.not776, label %bb.ps, label %.thread1261

bb.ps:                                            ; preds = %bb.pr
  %i.boy = load i8, ptr %i.bow, align 1, !tbaa !10 ; 2 uses
  switch i8 %i.boy, label %bb.pt [
    i8 34, label %is_identchar.exit.thread
    i8 39, label %is_identchar.exit.thread
  ]

bb.pt:                                            ; preds = %bb.ps
  %i.boz = load ptr, ptr %i.afx, align 8, !tbaa !49 ; 2 uses
  %i.bpa = zext i8 %i.boy to i32
  %i.bpb = getelementptr inbounds nuw i8, ptr %i.boz, i64 88
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !552
  %i.bpd = tail call i32 %i.bpc(i32 noundef range(i32 -1, 256) %i.bpa, i32 noundef 13, ptr noundef %i.boz) #29, !inline_history !553
  %.not.i1050 = icmp eq i32 %i.bpd, 0
  br i1 %.not.i1050, label %bb.pu, label %is_identchar.exit.thread

bb.pu:                                            ; preds = %bb.pt
  %i.bpe = load i8, ptr %i.bow, align 1, !tbaa !10 ; 2 uses
  %i.bpf = icmp ne i8 %i.bpe, 95
  %.not777 = icmp sgt i8 %i.bpe, -1
  %or.cond = and i1 %i.bpf, %.not777
  br i1 %or.cond, label %.thread1261, label %is_identchar.exit.thread

.thread1261:                                      ; preds = %bb.pu, %bb.pq, %bb.pr
  %i.bpg = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bph = load i64, ptr @id_warning, align 8, !tbaa !11
  %i.bpi = tail call i64 @rb_usascii_str_new_static(ptr noundef nonnull @.str.595, i64 noundef 34) #29
  %i.bpj = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.bpg, i64 noundef %i.bph, i32 noundef 1, i64 noundef %i.bpi) #29 ; 0 uses
  br label %is_identchar.exit.thread

bb.pv:                                            ; preds = %bb.pq, %bb.pq, %bb.pq, %bb.pq, %bb.pq, %bb.pq, %bb.pp
  %i.bpk = and i32 %i.bos, 577
  %.not778 = icmp ne i32 %i.bpk, 0
  %i.bpl = and i32 %i.bos, 2064
  %i.bpm = icmp eq i32 %i.bpl, 2064
  %or.cond826 = or i1 %.not778, %i.bpm
  br i1 %or.cond826, label %is_identchar.exit.thread, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.bpn = and i32 %i.agm, 904
  %i.bpo = icmp eq i32 %i.bpn, 0
  %or.cond25 = select i1 %i.bpo, i1 %8, i1 false
  br i1 %or.cond25, label %bb.px, label %is_identchar.exit.thread

bb.px:                                            ; preds = %bb.pw
  switch i32 %i.bnw, label %bb.py [
    i32 32, label %is_identchar.exit.thread
    i32 13, label %is_identchar.exit.thread
    i32 12, label %is_identchar.exit.thread
    i32 11, label %is_identchar.exit.thread
    i32 10, label %is_identchar.exit.thread
    i32 9, label %is_identchar.exit.thread
  ]

bb.py:                                            ; preds = %bb.px
  %i.bpp = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.bpq = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.591, i64 noundef 15) #29
  %.val850 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bpr = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val850, i64 noundef %i.bpp, i32 noundef 2, i64 noundef 9740, i64 noundef %i.bpq) #29 ; 0 uses
  br label %is_identchar.exit.thread

is_identchar.exit.thread:                         ; preds = %bb.px, %bb.px, %bb.px, %bb.px, %bb.px, %bb.px, %bb.ps, %bb.pt, %bb.pu, %bb.ps, %bb.pw, %bb.py, %bb.pv, %.thread1261
  %.1656 = phi i32 [ 335, %bb.pt ], [ 335, %bb.pv ], [ 335, %bb.ps ], [ 335, %bb.ps ], [ 335, %.thread1261 ], [ 38, %bb.py ], [ 38, %bb.px ], [ 38, %bb.pw ], [ 335, %bb.pu ], [ 38, %bb.px ], [ 38, %bb.px ], [ 38, %bb.px ], [ 38, %bb.px ], [ 38, %bb.px ]
  %i.bps = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.bpt = and i32 %i.bps, 384
  %.not780 = icmp eq i32 %i.bpt, 0
  %i.bpu = select i1 %.not780, i32 1, i32 16      ; 2 uses
  %i.bpv = load i16, ptr %i.f, align 8
  %i.bpw = and i16 %i.bpv, 32
  %.not.i1052 = icmp eq i16 %i.bpw, 0
  br i1 %.not.i1052, label %parser_set_lex_state.exit1054, label %bb.pz

bb.pz:                                            ; preds = %is_identchar.exit.thread
  %i.bpx = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bps, i32 noundef %i.bpu, i32 noundef 10865) #29
  br label %parser_set_lex_state.exit1054

parser_set_lex_state.exit1054:                    ; preds = %is_identchar.exit.thread, %bb.pz
  %.0.i1053 = phi i32 [ %i.bpx, %bb.pz ], [ %i.bpu, %is_identchar.exit.thread ]
  store i32 %.0.i1053, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.qa:                                            ; preds = %bb.gv
  %i.bpy = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  switch i32 %i.bpy, label %bb.qm [
    i32 124, label %bb.qb
    i32 61, label %bb.qk
  ]

bb.qb:                                            ; preds = %bb.qa
  %i.bpz = load i16, ptr %i.f, align 8
  %i.bqa = and i16 %i.bpz, 32
  %.not.i1055 = icmp eq i16 %i.bqa, 0
  br i1 %.not.i1055, label %parser_set_lex_state.exit1057, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.bqb = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bqc = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqb, i32 noundef 1, i32 noundef 10870) #29
  br label %parser_set_lex_state.exit1057

parser_set_lex_state.exit1057:                    ; preds = %bb.qb, %bb.qc
  %.0.i1056 = phi i32 [ %i.bqc, %bb.qc ], [ 1, %bb.qb ]
  store i32 %.0.i1056, ptr %i.afs, align 8, !tbaa !60
  %i.bqd = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %i.bqe = icmp eq i32 %i.bqd, 61
  br i1 %i.bqe, label %bb.qd, label %bb.qf

bb.qd:                                            ; preds = %parser_set_lex_state.exit1057
  %i.bqf = load ptr, ptr %0, align 8, !tbaa !18
  store i64 149, ptr %i.bqf, align 8, !tbaa !10
  %i.bqg = load i16, ptr %i.f, align 8
  %i.bqh = and i16 %i.bqg, 32
  %.not.i1058 = icmp eq i16 %i.bqh, 0
  br i1 %.not.i1058, label %parser_set_lex_state.exit1060, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.bqi = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bqj = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqi, i32 noundef 1, i32 noundef 10873) #29
  br label %parser_set_lex_state.exit1060

parser_set_lex_state.exit1060:                    ; preds = %bb.qd, %bb.qe
  %.0.i1059 = phi i32 [ %i.bqj, %bb.qe ], [ 1, %bb.qd ]
  store i32 %.0.i1059, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.qf:                                            ; preds = %parser_set_lex_state.exit1057
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bqd)
  %i.bqk = and i32 %i.agm, 1
  %.not773 = icmp eq i32 %i.bqk, 0
  br i1 %.not773, label %pushback.exit1061, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.bql = load i16, ptr %i.f, align 8
  %i.bqm = and i16 %i.bql, -9
  store i16 %i.bqm, ptr %i.f, align 8
  %i.bqn = load ptr, ptr %i.aft, align 8, !tbaa !48 ; 2 uses
  %i.bqo = getelementptr inbounds i8, ptr %i.bqn, i64 -1 ; 3 uses
  store ptr %i.bqo, ptr %i.aft, align 8, !tbaa !48
  %i.bqp = load ptr, ptr %i.agb, align 8, !tbaa !44
  %i.bqq = icmp ugt ptr %i.bqo, %i.bqp
  br i1 %i.bqq, label %bb.qh, label %pushback.exit1061

bb.qh:                                            ; preds = %bb.qg
  %i.bqr = load i8, ptr %i.bqo, align 1, !tbaa !10
  %i.bqs = icmp eq i8 %i.bqr, 10
  br i1 %i.bqs, label %bb.qi, label %pushback.exit1061

bb.qi:                                            ; preds = %bb.qh
  %i.bqt = getelementptr inbounds i8, ptr %i.bqn, i64 -2 ; 2 uses
  %i.bqu = load i8, ptr %i.bqt, align 1, !tbaa !10
  %i.bqv = icmp eq i8 %i.bqu, 13
  br i1 %i.bqv, label %bb.qj, label %pushback.exit1061

bb.qj:                                            ; preds = %bb.qi
  store ptr %i.bqt, ptr %i.aft, align 8, !tbaa !48
  br label %pushback.exit1061

bb.qk:                                            ; preds = %bb.qa
  %i.bqw = load ptr, ptr %0, align 8, !tbaa !18
  store i64 124, ptr %i.bqw, align 8, !tbaa !10
  %i.bqx = load i16, ptr %i.f, align 8
  %i.bqy = and i16 %i.bqx, 32
  %.not.i1062 = icmp eq i16 %i.bqy, 0
  br i1 %.not.i1062, label %parser_set_lex_state.exit1064, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.bqz = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bra = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqz, i32 noundef 1, i32 noundef 10886) #29
  br label %parser_set_lex_state.exit1064

parser_set_lex_state.exit1064:                    ; preds = %bb.qk, %bb.ql
  %.0.i1063 = phi i32 [ %i.bra, %bb.ql ], [ 1, %bb.qk ]
  store i32 %.0.i1063, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.qm:                                            ; preds = %bb.qa
  %i.brb = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.brc = and i32 %i.brb, 384
  %.not772 = icmp eq i32 %i.brc, 0
  %i.brd = select i1 %.not772, i32 1025, i32 16   ; 2 uses
  %i.bre = load i16, ptr %i.f, align 8
  %i.brf = and i16 %i.bre, 32
  %.not.i1065 = icmp eq i16 %i.brf, 0
  br i1 %.not.i1065, label %parser_set_lex_state.exit1067, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.brg = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.brb, i32 noundef %i.brd, i32 noundef 10889) #29
  br label %parser_set_lex_state.exit1067

parser_set_lex_state.exit1067:                    ; preds = %bb.qm, %bb.qn
  %.0.i1066 = phi i32 [ %i.brg, %bb.qn ], [ %i.brd, %bb.qm ]
  store i32 %.0.i1066, ptr %i.afs, align 8, !tbaa !60
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bpy)
  br label %pushback.exit1061

bb.qo:                                            ; preds = %bb.gv
  %i.brh = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 8 uses
  %i.bri = load i32, ptr %i.afs, align 8, !tbaa !60 ; 6 uses
  %i.brj = and i32 %i.bri, 384
  %.not766 = icmp eq i32 %i.brj, 0
  br i1 %.not766, label %bb.qs, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.brk = load i16, ptr %i.f, align 8
  %i.brl = and i16 %i.brk, 32
  %.not.i1068 = icmp eq i16 %i.brl, 0
  br i1 %.not.i1068, label %parser_set_lex_state.exit1070, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.brm = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bri, i32 noundef 16, i32 noundef 10896) #29
  br label %parser_set_lex_state.exit1070

parser_set_lex_state.exit1070:                    ; preds = %bb.qp, %bb.qq
  %.0.i1069 = phi i32 [ %i.brm, %bb.qq ], [ 16, %bb.qp ]
  store i32 %.0.i1069, ptr %i.afs, align 8, !tbaa !60
  %i.brn = icmp eq i32 %i.brh, 64
  br i1 %i.brn, label %pushback.exit1061, label %bb.qr

bb.qr:                                            ; preds = %parser_set_lex_state.exit1070
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.brh)
  br label %pushback.exit1061

bb.qs:                                            ; preds = %bb.qo
  %i.bro = icmp eq i32 %i.brh, 61
  br i1 %i.bro, label %bb.qt, label %bb.qv

bb.qt:                                            ; preds = %bb.qs
  %i.brp = load ptr, ptr %0, align 8, !tbaa !18
  store i64 43, ptr %i.brp, align 8, !tbaa !10
  %i.brq = load i16, ptr %i.f, align 8
  %i.brr = and i16 %i.brq, 32
  %.not.i1071 = icmp eq i16 %i.brr, 0
  br i1 %.not.i1071, label %parser_set_lex_state.exit1073, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %i.brs = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.brt = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.brs, i32 noundef 1, i32 noundef 10905) #29
  br label %parser_set_lex_state.exit1073

parser_set_lex_state.exit1073:                    ; preds = %bb.qt, %bb.qu
  %.0.i1072 = phi i32 [ %i.brt, %bb.qu ], [ 1, %bb.qt ]
  store i32 %.0.i1072, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.qv:                                            ; preds = %bb.qs
  %i.bru = and i32 %i.bri, 577
  %.not767 = icmp ne i32 %i.bru, 0
  %i.brv = and i32 %i.bri, 2064
  %i.brw = icmp eq i32 %i.brv, 2064
  %or.cond828 = or i1 %.not767, %i.brw
  br i1 %or.cond828, label %bb.qz, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.brx = and i32 %i.bri, 48
  %i.bry = icmp ne i32 %i.brx, 0
  %9 = trunc nuw i32 %.0660 to i1                 ; 2 uses
  %or.cond27 = select i1 %i.bry, i1 %9, i1 false
  br i1 %or.cond27, label %bb.qx, label %bb.rc

bb.qx:                                            ; preds = %bb.qw
  switch i32 %i.brh, label %bb.qy [
    i32 32, label %bb.rc
    i32 13, label %bb.rc
    i32 12, label %bb.rc
    i32 11, label %bb.rc
    i32 10, label %bb.rc
    i32 9, label %bb.rc
  ]

bb.qy:                                            ; preds = %bb.qx
  tail call fastcc void @arg_ambiguous(ptr noundef nonnull %0, i8 noundef signext 43)
  br label %bb.qz

bb.qz:                                            ; preds = %bb.qy, %bb.qv
  %i.brz = load i16, ptr %i.f, align 8
  %i.bsa = and i16 %i.brz, 32
  %.not.i1075 = icmp eq i16 %i.bsa, 0
  br i1 %.not.i1075, label %parser_set_lex_state.exit1077, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.bsb = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bsc = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bsb, i32 noundef 1, i32 noundef 10909) #29
  br label %parser_set_lex_state.exit1077

parser_set_lex_state.exit1077:                    ; preds = %bb.qz, %bb.ra
  %.0.i1076 = phi i32 [ %i.bsc, %bb.ra ], [ 1, %bb.qz ]
  store i32 %.0.i1076, ptr %i.afs, align 8, !tbaa !60
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.brh)
  %i.bsd = add nsw i32 %i.brh, -58
  %or.cond1344 = icmp ult i32 %i.bsd, -10
  br i1 %or.cond1344, label %pushback.exit1061, label %bb.rb

bb.rb:                                            ; preds = %parser_set_lex_state.exit1077
  %i.bse = tail call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef 43)
  br label %pushback.exit1061

bb.rc:                                            ; preds = %bb.qx, %bb.qx, %bb.qx, %bb.qx, %bb.qx, %bb.qx, %bb.qw
  %i.bsf = load i16, ptr %i.f, align 8
  %i.bsg = and i16 %i.bsf, 32
  %.not.i1078 = icmp eq i16 %i.bsg, 0
  br i1 %.not.i1078, label %parser_set_lex_state.exit1080, label %bb.rd

bb.rd:                                            ; preds = %bb.rc
  %i.bsh = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bri, i32 noundef 1, i32 noundef 10916) #29
  br label %parser_set_lex_state.exit1080

parser_set_lex_state.exit1080:                    ; preds = %bb.rc, %bb.rd
  %.0.i1079 = phi i32 [ %i.bsh, %bb.rd ], [ 1, %bb.rc ]
  store i32 %.0.i1079, ptr %i.afs, align 8, !tbaa !60
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.brh)
  %i.bsi = and i32 %i.agm, 904
  %i.bsj = icmp eq i32 %i.bsi, 0
  %or.cond29 = select i1 %i.bsj, i1 %9, i1 false
  br i1 %or.cond29, label %bb.re, label %pushback.exit1061

bb.re:                                            ; preds = %parser_set_lex_state.exit1080
  switch i32 %i.brh, label %bb.rf [
    i32 32, label %pushback.exit1061
    i32 13, label %pushback.exit1061
    i32 12, label %pushback.exit1061
    i32 11, label %pushback.exit1061
    i32 10, label %pushback.exit1061
    i32 9, label %pushback.exit1061
  ]

bb.rf:                                            ; preds = %bb.re
  %i.bsk = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.bsl = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.596, i64 noundef 14) #29
  %.val849 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bsm = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val849, i64 noundef %i.bsk, i32 noundef 2, i64 noundef 11020, i64 noundef %i.bsl) #29 ; 0 uses
  br label %pushback.exit1061

bb.rg:                                            ; preds = %bb.gv
  %i.bsn = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 8 uses
  %i.bso = load i32, ptr %i.afs, align 8, !tbaa !60 ; 7 uses
  %i.bsp = and i32 %i.bso, 384
  %.not760 = icmp eq i32 %i.bsp, 0
  br i1 %.not760, label %bb.rk, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.bsq = load i16, ptr %i.f, align 8
  %i.bsr = and i16 %i.bsq, 32
  %.not.i1082 = icmp eq i16 %i.bsr, 0
  br i1 %.not.i1082, label %parser_set_lex_state.exit1084, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  %i.bss = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bso, i32 noundef 16, i32 noundef 10923) #29
  br label %parser_set_lex_state.exit1084

parser_set_lex_state.exit1084:                    ; preds = %bb.rh, %bb.ri
  %.0.i1083 = phi i32 [ %i.bss, %bb.ri ], [ 16, %bb.rh ]
  store i32 %.0.i1083, ptr %i.afs, align 8, !tbaa !60
  %i.bst = icmp eq i32 %i.bsn, 64
  br i1 %i.bst, label %pushback.exit1061, label %bb.rj

bb.rj:                                            ; preds = %parser_set_lex_state.exit1084
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bsn)
  br label %pushback.exit1061

bb.rk:                                            ; preds = %bb.rg
  switch i32 %i.bsn, label %bb.rp [
    i32 61, label %bb.rl
    i32 62, label %bb.rn
  ]

bb.rl:                                            ; preds = %bb.rk
  %i.bsu = load ptr, ptr %0, align 8, !tbaa !18
  store i64 45, ptr %i.bsu, align 8, !tbaa !10
  %i.bsv = load i16, ptr %i.f, align 8
  %i.bsw = and i16 %i.bsv, 32
  %.not.i1085 = icmp eq i16 %i.bsw, 0
  br i1 %.not.i1085, label %parser_set_lex_state.exit1087, label %bb.rm

bb.rm:                                            ; preds = %bb.rl
  %i.bsx = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bsy = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bsx, i32 noundef 1, i32 noundef 10932) #29
  br label %parser_set_lex_state.exit1087

parser_set_lex_state.exit1087:                    ; preds = %bb.rl, %bb.rm
  %.0.i1086 = phi i32 [ %i.bsy, %bb.rm ], [ 1, %bb.rl ]
  store i32 %.0.i1086, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.rn:                                            ; preds = %bb.rk
  %i.bsz = load i16, ptr %i.f, align 8
  %i.bta = and i16 %i.bsz, 32
  %.not.i1088 = icmp eq i16 %i.bta, 0
  br i1 %.not.i1088, label %parser_set_lex_state.exit1090, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.btb = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bso, i32 noundef 8, i32 noundef 10936) #29
  br label %parser_set_lex_state.exit1090

parser_set_lex_state.exit1090:                    ; preds = %bb.rn, %bb.ro
  %.0.i1089 = phi i32 [ %i.btb, %bb.ro ], [ 8, %bb.rn ]
  store i32 %.0.i1089, ptr %i.afs, align 8, !tbaa !60
  %i.btc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.btd = load i32, ptr %i.btc, align 8, !tbaa !158
  %i.bte = load ptr, ptr %0, align 8, !tbaa !18
  store i32 %i.btd, ptr %i.bte, align 8, !tbaa !10
  %i.btf = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.btg = load i32, ptr %i.btf, align 4, !tbaa !174
  store i32 %i.btg, ptr %i.btc, align 8, !tbaa !158
  br label %pushback.exit1061

bb.rp:                                            ; preds = %bb.rk
  %i.bth = and i32 %i.bso, 577
  %.not761 = icmp ne i32 %i.bth, 0
  %i.bti = and i32 %i.bso, 2064
  %i.btj = icmp eq i32 %i.bti, 2064
  %or.cond830 = or i1 %.not761, %i.btj
  br i1 %or.cond830, label %bb.rt, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.btk = and i32 %i.bso, 48
  %i.btl = icmp ne i32 %i.btk, 0
  %10 = trunc nuw i32 %.0660 to i1                ; 2 uses
  %or.cond31 = select i1 %i.btl, i1 %10, i1 false
  br i1 %or.cond31, label %bb.rr, label %bb.rv

bb.rr:                                            ; preds = %bb.rq
  switch i32 %i.bsn, label %bb.rs [
    i32 32, label %bb.rv
    i32 13, label %bb.rv
    i32 12, label %bb.rv
    i32 11, label %bb.rv
    i32 10, label %bb.rv
    i32 9, label %bb.rv
  ]

bb.rs:                                            ; preds = %bb.rr
  tail call fastcc void @arg_ambiguous(ptr noundef nonnull %0, i8 noundef signext 45)
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.rp
  %i.btm = load i16, ptr %i.f, align 8
  %i.btn = and i16 %i.btm, 32
  %.not.i1092 = icmp eq i16 %i.btn, 0
  br i1 %.not.i1092, label %parser_set_lex_state.exit1094, label %bb.ru

bb.ru:                                            ; preds = %bb.rt
  %i.bto = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.btp = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bto, i32 noundef 1, i32 noundef 10942) #29
  br label %parser_set_lex_state.exit1094

parser_set_lex_state.exit1094:                    ; preds = %bb.rt, %bb.ru
  %.0.i1093 = phi i32 [ %i.btp, %bb.ru ], [ 1, %bb.rt ]
  store i32 %.0.i1093, ptr %i.afs, align 8, !tbaa !60
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bsn)
  %i.btq = add nsw i32 %i.bsn, -58
  %or.cond1346 = icmp ult i32 %i.btq, -10
  %spec.select1348 = select i1 %or.cond1346, i32 133, i32 360
  br label %pushback.exit1061

bb.rv:                                            ; preds = %bb.rr, %bb.rr, %bb.rr, %bb.rr, %bb.rr, %bb.rr, %bb.rq
  %i.btr = load i16, ptr %i.f, align 8
  %i.bts = and i16 %i.btr, 32
  %.not.i1095 = icmp eq i16 %i.bts, 0
  br i1 %.not.i1095, label %parser_set_lex_state.exit1097, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.btt = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bso, i32 noundef 1, i32 noundef 10949) #29
  br label %parser_set_lex_state.exit1097

parser_set_lex_state.exit1097:                    ; preds = %bb.rv, %bb.rw
  %.0.i1096 = phi i32 [ %i.btt, %bb.rw ], [ 1, %bb.rv ]
  store i32 %.0.i1096, ptr %i.afs, align 8, !tbaa !60
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bsn)
  %i.btu = and i32 %i.agm, 904
  %i.btv = icmp eq i32 %i.btu, 0
  %or.cond33 = select i1 %i.btv, i1 %10, i1 false
  br i1 %or.cond33, label %bb.rx, label %pushback.exit1061

bb.rx:                                            ; preds = %parser_set_lex_state.exit1097
  switch i32 %i.bsn, label %bb.ry [
    i32 32, label %pushback.exit1061
    i32 13, label %pushback.exit1061
    i32 12, label %pushback.exit1061
    i32 11, label %pushback.exit1061
    i32 10, label %pushback.exit1061
    i32 9, label %pushback.exit1061
  ]

bb.ry:                                            ; preds = %bb.rx
  %i.btw = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.btx = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.596, i64 noundef 14) #29
  %.val848 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.bty = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val848, i64 noundef %i.btw, i32 noundef 2, i64 noundef 11532, i64 noundef %i.btx) #29 ; 0 uses
  br label %pushback.exit1061

bb.rz:                                            ; preds = %bb.gv
  %i.btz = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.bua = load i16, ptr %i.f, align 8
  %i.bub = and i16 %i.bua, 32
  %.not.i1099 = icmp eq i16 %i.bub, 0
  br i1 %.not.i1099, label %parser_set_lex_state.exit1101, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.buc = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.btz, i32 noundef 1, i32 noundef 10955) #29
  %.pre2133.a = load ptr, ptr %i.aft, align 8, !tbaa !48
  br label %parser_set_lex_state.exit1101

parser_set_lex_state.exit1101:                    ; preds = %bb.rz, %bb.sa
  %i.bud = phi ptr [ %.pre2133.a, %bb.sa ], [ %i.agv, %bb.rz ] ; 2 uses
  %.0.i1100 = phi i32 [ %i.buc, %bb.sa ], [ 1, %bb.rz ]
  store i32 %.0.i1100, ptr %i.afs, align 8, !tbaa !60
  %i.bue = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not.i1102 = icmp ult ptr %i.bud, %i.bue
  br i1 %.not.i1102, label %bb.sb, label %.critedge.i1103, !prof !486

bb.sb:                                            ; preds = %parser_set_lex_state.exit1101
  %i.buf = load i16, ptr %i.f, align 8
  %i.bug = and i16 %i.buf, 8
  %.not13.i1109 = icmp eq i16 %i.bug, 0
  br i1 %.not13.i1109, label %bb.sc, label %.critedge.i1103, !prof !486

bb.sc:                                            ; preds = %bb.sb
  %i.buh = load ptr, ptr %i.afv, align 8, !tbaa !487
  %i.bui = icmp ugt ptr %i.buh, inttoptr (i64 1 to ptr)
  br i1 %i.bui, label %.critedge.i1103, label %bb.sd, !prof !196

.critedge.i1103:                                  ; preds = %bb.sc, %bb.sb, %parser_set_lex_state.exit1101
  %i.buj = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i1104 = icmp eq i32 %i.buj, 0
  br i1 %.not14.i1104, label %.critedge._crit_edge.i1106, label %pushback.exit1124

.critedge._crit_edge.i1106:                       ; preds = %.critedge.i1103
  %.pre.i1107 = load ptr, ptr %i.aft, align 8, !tbaa !48
  br label %bb.sd

bb.sd:                                            ; preds = %.critedge._crit_edge.i1106, %bb.sc
  %i.buk = phi ptr [ %.pre.i1107, %.critedge._crit_edge.i1106 ], [ %i.bud, %bb.sc ] ; 3 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %i.buk, i64 1 ; 8 uses
  store ptr %i.bul, ptr %i.aft, align 8, !tbaa !48
  %i.bum = load i8, ptr %i.buk, align 1, !tbaa !10 ; 3 uses
  %i.bun = icmp eq i8 %i.bum, 13
  br i1 %i.bun, label %bb.se, label %nextc0.exit1110, !prof !196

bb.se:                                            ; preds = %bb.sd
  %i.buo = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not.i.i1108 = icmp ult ptr %i.bul, %i.buo
  br i1 %.not.i.i1108, label %bb.sf, label %.thread1272

bb.sf:                                            ; preds = %bb.se
  %i.bup = load i8, ptr %i.bul, align 1, !tbaa !10
  %i.buq = icmp eq i8 %i.bup, 10                  ; 2 uses
  %i.bur = getelementptr inbounds nuw i8, ptr %i.buk, i64 2
  %spec.select2721.a = select i1 %i.buq, ptr %i.bur, ptr %i.bul
  %spec.select2722.a = select i1 %i.buq, i32 10, i32 13
  br label %.thread1272

nextc0.exit1110:                                  ; preds = %bb.sd
  %i.bus = zext i8 %i.bum to i32
  %i.but = icmp eq i8 %i.bum, 46
  br i1 %i.but, label %bb.sg, label %.thread1272

bb.sg:                                            ; preds = %nextc0.exit1110
  %i.buu = and i32 %i.btz, 577
  %.not753.le = icmp ne i32 %i.buu, 0
  %i.buv = and i32 %i.btz, 2064
  %i.buw = icmp eq i32 %i.buv, 2064
  %i.bux = or i1 %.not753.le, %i.buw              ; 2 uses
  %i.buy = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not.i1111 = icmp ult ptr %i.bul, %i.buy
  br i1 %.not.i1111, label %bb.sh, label %.critedge.i1112, !prof !486

bb.sh:                                            ; preds = %bb.sg
  %i.buz = load i16, ptr %i.f, align 8
  %i.bva = and i16 %i.buz, 8
  %.not13.i1118 = icmp eq i16 %i.bva, 0
  br i1 %.not13.i1118, label %bb.si, label %.critedge.i1112, !prof !486

bb.si:                                            ; preds = %bb.sh
  %i.bvb = load ptr, ptr %i.afv, align 8, !tbaa !487
  %i.bvc = icmp ugt ptr %i.bvb, inttoptr (i64 1 to ptr)
  br i1 %i.bvc, label %.critedge.i1112, label %bb.sj, !prof !196

.critedge.i1112:                                  ; preds = %bb.si, %bb.sh, %bb.sg
  %i.bvd = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i1113 = icmp eq i32 %i.bvd, 0
  br i1 %.not14.i1113, label %.critedge._crit_edge.i1115, label %pushback.exit1123

.critedge._crit_edge.i1115:                       ; preds = %.critedge.i1112
  %.pre.i1116 = load ptr, ptr %i.aft, align 8, !tbaa !48
  br label %bb.sj

bb.sj:                                            ; preds = %.critedge._crit_edge.i1115, %bb.si
  %i.bve = phi ptr [ %.pre.i1116, %.critedge._crit_edge.i1115 ], [ %i.bul, %bb.si ] ; 3 uses
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.bve, i64 1 ; 6 uses
  store ptr %i.bvf, ptr %i.aft, align 8, !tbaa !48
  %i.bvg = load i8, ptr %i.bve, align 1, !tbaa !10
  switch i8 %i.bvg, label %.thread1267 [
    i8 13, label %bb.sk
    i8 46, label %bb.sm
  ], !prof !548

bb.sk:                                            ; preds = %bb.sj
  %i.bvh = load ptr, ptr %i.afu, align 8, !tbaa !413
  %.not.i.i1117 = icmp ult ptr %i.bvf, %i.bvh
  br i1 %.not.i.i1117, label %bb.sl, label %.thread1267

bb.sl:                                            ; preds = %bb.sk
  %i.bvi = load i8, ptr %i.bvf, align 1, !tbaa !10
  %i.bvj = icmp eq i8 %i.bvi, 10
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.bve, i64 2
  %spec.select2723 = select i1 %i.bvj, ptr %i.bvk, ptr %i.bvf
  br label %.thread1267

bb.sm:                                            ; preds = %bb.sj
  %i.bvl = load i16, ptr %i.agl, align 8
  %i.bvm = and i16 %i.bvl, 4
  %.not757 = icmp eq i16 %i.bvm, 0
  br i1 %.not757, label %bb.sn, label %bb.so

bb.sn:                                            ; preds = %bb.sm
  %i.bvn = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.bvo = and i32 %i.bvn, 1032
end_hunk_2
begin_hunk_3_@parser_yylex:bb.a
  %i.bxx = load ptr, ptr %0, align 8, !tbaa !18
  store i64 46, ptr %i.bxx, align 8, !tbaa !10
  %i.bxy = load i16, ptr %i.f, align 8
  %i.bxz = and i16 %i.bxy, 32
  %.not.i1129 = icmp eq i16 %i.bxz, 0
  br i1 %.not.i1129, label %parser_set_lex_state.exit1131, label %bb.th

bb.th:                                            ; preds = %pushback.exit1124
  %i.bya = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.byb = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bya, i32 noundef 256, i32 noundef 10985) #29
  br label %parser_set_lex_state.exit1131

parser_set_lex_state.exit1131:                    ; preds = %pushback.exit1124, %bb.th
  %.0.i1130 = phi i32 [ %i.byb, %bb.th ], [ 256, %pushback.exit1124 ]
  store i32 %.0.i1130, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.ti:                                            ; preds = %bb.tg, %bb.tf
  %.0.i1127 = phi i32 [ %i.bxw, %bb.tg ], [ 2, %bb.tf ]
  store i32 %.0.i1127, ptr %i.afs, align 8, !tbaa !60
  %i.byc = load ptr, ptr %i.aft, align 8, !tbaa !48
  store ptr %i.byc, ptr %i.afw, align 8, !tbaa !41
  br label %.backedge.backedge

bb.tj:                                            ; preds = %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv, %bb.gv
  %i.byd = tail call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef %i.agx)
  br label %pushback.exit1061

bb.tk:                                            ; preds = %bb.gv
  %i.bye = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.byf = load i64, ptr %i.bye, align 8, !tbaa !103
  %i.byg = lshr i64 %i.byf, 1                     ; 2 uses
  store i64 %i.byg, ptr %i.bye, align 8, !tbaa !103
  %i.byh = load i16, ptr %i.f, align 8
  %i.byi = and i16 %i.byh, 32
  %.not751 = icmp eq i16 %i.byi, 0
  br i1 %.not751, label %.thread, label %bb.tl

.thread:                                          ; preds = %bb.tk
  %i.byj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.byk = load i64, ptr %i.byj, align 8, !tbaa !114
  %i.byl = lshr i64 %i.byk, 1
  store i64 %i.byl, ptr %i.byj, align 8, !tbaa !114
  br label %parser_set_lex_state.exit1134

bb.tl:                                            ; preds = %bb.tk
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.byg, ptr noundef nonnull @.str.13, i32 noundef 10994) #29
  %.pre2131.a = load i16, ptr %i.f, align 8
  %.pre2146.a = and i16 %.pre2131.a, 32
  %i.bym = icmp eq i16 %.pre2146.a, 0
  %i.byn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.byo = load i64, ptr %i.byn, align 8, !tbaa !114
  %i.byp = lshr i64 %i.byo, 1                     ; 2 uses
  store i64 %i.byp, ptr %i.byn, align 8, !tbaa !114
  br i1 %i.bym, label %parser_set_lex_state.exit1134, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.byp, ptr noundef nonnull @.str.16, i32 noundef 10995) #29
  %.pre2132 = load i16, ptr %i.f, align 8
  %.pre2147 = and i16 %.pre2132, 32
  %i.byq = icmp eq i16 %.pre2147, 0
  br i1 %i.byq, label %parser_set_lex_state.exit1134, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  %i.byr = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bys = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.byr, i32 noundef 8, i32 noundef 10996) #29
  br label %parser_set_lex_state.exit1134

parser_set_lex_state.exit1134:                    ; preds = %.thread, %bb.tl, %bb.tm, %bb.tn
  %.0.i1133 = phi i32 [ %i.bys, %bb.tn ], [ 8, %bb.tm ], [ 8, %bb.tl ], [ 8, %.thread ]
  store i32 %.0.i1133, ptr %i.afs, align 8, !tbaa !60
  %i.byt = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.byu = load i32, ptr %i.byt, align 4, !tbaa !174
  %i.byv = add nsw i32 %i.byu, -1
  store i32 %i.byv, ptr %i.byt, align 4, !tbaa !174
  br label %pushback.exit1061

bb.to:                                            ; preds = %bb.gv
  %i.byw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.byx = load i64, ptr %i.byw, align 8, !tbaa !103
  %i.byy = lshr i64 %i.byx, 1                     ; 2 uses
  store i64 %i.byy, ptr %i.byw, align 8, !tbaa !103
  %i.byz = load i16, ptr %i.f, align 8
  %i.bza = and i16 %i.byz, 32
  %.not749 = icmp eq i16 %i.bza, 0
  br i1 %.not749, label %.thread2342, label %bb.tp

.thread2342:                                      ; preds = %bb.to
  %i.bzb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bzc = load i64, ptr %i.bzb, align 8, !tbaa !114
  %i.bzd = lshr i64 %i.bzc, 1
  store i64 %i.bzd, ptr %i.bzb, align 8, !tbaa !114
  br label %parser_set_lex_state.exit1137

bb.tp:                                            ; preds = %bb.to
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.byy, ptr noundef nonnull @.str.13, i32 noundef 11001) #29
  %.pre2129.a = load i16, ptr %i.f, align 8
  %.pre2149 = and i16 %.pre2129.a, 32
  %i.bze = icmp eq i16 %.pre2149, 0
  %i.bzf = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bzg = load i64, ptr %i.bzf, align 8, !tbaa !114
  %i.bzh = lshr i64 %i.bzg, 1                     ; 2 uses
  store i64 %i.bzh, ptr %i.bzf, align 8, !tbaa !114
  br i1 %i.bze, label %parser_set_lex_state.exit1137, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bzh, ptr noundef nonnull @.str.16, i32 noundef 11002) #29
  %.pre2130 = load i16, ptr %i.f, align 8
  %.pre2151 = and i16 %.pre2130, 32
  %i.bzi = icmp eq i16 %.pre2151, 0
  br i1 %i.bzi, label %parser_set_lex_state.exit1137, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  %i.bzj = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.bzk = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bzj, i32 noundef 2, i32 noundef 11003) #29
  br label %parser_set_lex_state.exit1137

parser_set_lex_state.exit1137:                    ; preds = %.thread2342, %bb.tp, %bb.tq, %bb.tr
  %.0.i1136 = phi i32 [ %i.bzk, %bb.tr ], [ 2, %bb.tq ], [ 2, %bb.tp ], [ 2, %.thread2342 ]
  store i32 %.0.i1136, ptr %i.afs, align 8, !tbaa !60
  %i.bzl = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.bzm = load i32, ptr %i.bzl, align 4, !tbaa !174
  %i.bzn = add nsw i32 %i.bzm, -1
  store i32 %i.bzn, ptr %i.bzl, align 4, !tbaa !174
  br label %pushback.exit1061

bb.ts:                                            ; preds = %bb.gv
  %i.bzo = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.bzp = load i32, ptr %i.bzo, align 4, !tbaa !172 ; 2 uses
  %i.bzq = add nsw i32 %i.bzp, -1
  store i32 %i.bzq, ptr %i.bzo, align 4, !tbaa !172
  %.not746 = icmp eq i32 %i.bzp, 0
  br i1 %.not746, label %pushback.exit1061, label %bb.tt

bb.tt:                                            ; preds = %bb.ts
  %i.bzr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bzs = load i64, ptr %i.bzr, align 8, !tbaa !103
  %i.bzt = lshr i64 %i.bzs, 1                     ; 2 uses
  store i64 %i.bzt, ptr %i.bzr, align 8, !tbaa !103
  %i.bzu = load i16, ptr %i.f, align 8
  %i.bzv = and i16 %i.bzu, 32
  %.not747 = icmp eq i16 %i.bzv, 0
  br i1 %.not747, label %.thread2347, label %bb.tu

.thread2347:                                      ; preds = %bb.tt
  %i.bzw = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bzx = load i64, ptr %i.bzw, align 8, !tbaa !114
  %i.bzy = lshr i64 %i.bzx, 1
  store i64 %i.bzy, ptr %i.bzw, align 8, !tbaa !114
  br label %parser_set_lex_state.exit1140

bb.tu:                                            ; preds = %bb.tt
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bzt, ptr noundef nonnull @.str.13, i32 noundef 11010) #29
  %.pre2127.a = load i16, ptr %i.f, align 8
  %.pre2153 = and i16 %.pre2127.a, 32
  %i.bzz = icmp eq i16 %.pre2153, 0
  %i.caa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cab = load i64, ptr %i.caa, align 8, !tbaa !114
  %i.cac = lshr i64 %i.cab, 1                     ; 2 uses
  store i64 %i.cac, ptr %i.caa, align 8, !tbaa !114
  br i1 %i.bzz, label %parser_set_lex_state.exit1140, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  tail call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.cac, ptr noundef nonnull @.str.16, i32 noundef 11011) #29
  %.pre2128 = load i16, ptr %i.f, align 8
  %.pre2155 = and i16 %.pre2128, 32
  %i.cad = icmp eq i16 %.pre2155, 0
  br i1 %i.cad, label %parser_set_lex_state.exit1140, label %bb.tw

bb.tw:                                            ; preds = %bb.tv
  %i.cae = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.caf = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cae, i32 noundef 2, i32 noundef 11012) #29
  br label %parser_set_lex_state.exit1140

parser_set_lex_state.exit1140:                    ; preds = %.thread2347, %bb.tu, %bb.tv, %bb.tw
  %.0.i1139 = phi i32 [ %i.caf, %bb.tw ], [ 2, %bb.tv ], [ 2, %bb.tu ], [ 2, %.thread2347 ]
  store i32 %.0.i1139, ptr %i.afs, align 8, !tbaa !60
  %i.cag = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.cah = load i32, ptr %i.cag, align 4, !tbaa !174
  %i.cai = add nsw i32 %i.cah, -1
  store i32 %i.cai, ptr %i.cag, align 4, !tbaa !174
  br label %pushback.exit1061

bb.tx:                                            ; preds = %bb.gv
  %i.caj = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 5 uses
  %i.cak = icmp eq i32 %i.caj, 58
  %i.cal = load i32, ptr %i.afs, align 8, !tbaa !60 ; 5 uses
  br i1 %i.cak, label %bb.ty, label %bb.ue

bb.ty:                                            ; preds = %bb.tx
  %i.cam = and i32 %i.cal, 577
  %.not744 = icmp ne i32 %i.cam, 0
  %i.can = and i32 %i.cal, 2064
  %i.cao = icmp eq i32 %i.can, 2064
  %or.cond833 = or i1 %.not744, %i.cao
  br i1 %or.cond833, label %bb.ua, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  %i.cap = and i32 %i.cal, 48
  %i.caq = icmp ne i32 %i.cap, 0
  %11 = trunc nuw i32 %.0660 to i1
  %or.cond37 = select i1 %i.caq, i1 %11, i1 false
  br i1 %or.cond37, label %bb.ua, label %bb.uc

bb.ua:                                            ; preds = %bb.tz, %bb.ty
  %i.car = load i16, ptr %i.f, align 8
  %i.cas = and i16 %i.car, 32
  %.not.i1141 = icmp eq i16 %i.cas, 0
  br i1 %.not.i1141, label %parser_set_lex_state.exit1143, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.cat = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cal, i32 noundef 1, i32 noundef 11020) #29
  br label %parser_set_lex_state.exit1143

parser_set_lex_state.exit1143:                    ; preds = %bb.ua, %bb.ub
  %.0.i1142 = phi i32 [ %i.cat, %bb.ub ], [ 1, %bb.ua ]
  store i32 %.0.i1142, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.uc:                                            ; preds = %bb.tz
  %i.cau = load ptr, ptr %0, align 8, !tbaa !18
  store i64 147, ptr %i.cau, align 8, !tbaa !10
  %i.cav = load i16, ptr %i.f, align 8
  %i.caw = and i16 %i.cav, 32
  %.not.i1144 = icmp eq i16 %i.caw, 0
  br i1 %.not.i1144, label %parser_set_lex_state.exit1146, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.cax = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cay = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cax, i32 noundef 256, i32 noundef 11024) #29
  br label %parser_set_lex_state.exit1146

parser_set_lex_state.exit1146:                    ; preds = %bb.uc, %bb.ud
  %.0.i1145 = phi i32 [ %i.cay, %bb.ud ], [ 256, %bb.uc ]
  store i32 %.0.i1145, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.ue:                                            ; preds = %bb.tx
  %i.caz = and i32 %i.cal, 14
  %.not742 = icmp eq i32 %i.caz, 0
  br i1 %.not742, label %bb.uf, label %bb.ug

bb.uf:                                            ; preds = %bb.ue
  switch i32 %i.caj, label %bb.un [
    i32 35, label %bb.ug
    i32 32, label %bb.ug
    i32 13, label %bb.ug
    i32 12, label %bb.ug
    i32 11, label %bb.ug
    i32 10, label %bb.ug
    i32 9, label %bb.ug
    i32 39, label %bb.ul
    i32 34, label %bb.um
  ]

bb.ug:                                            ; preds = %bb.uf, %bb.uf, %bb.uf, %bb.uf, %bb.uf, %bb.uf, %bb.uf, %bb.ue
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.caj)
  %i.cba = and i32 %i.agm, 904
  %i.cbb = icmp eq i32 %i.cba, 0
  %12 = trunc nuw i32 %.0660 to i1
  %or.cond41 = select i1 %i.cbb, i1 %12, i1 false
  br i1 %or.cond41, label %bb.uh, label %bb.uj

bb.uh:                                            ; preds = %bb.ug
  switch i32 %i.caj, label %bb.ui [
    i32 32, label %bb.uj
    i32 13, label %bb.uj
    i32 12, label %bb.uj
    i32 11, label %bb.uj
    i32 10, label %bb.uj
    i32 9, label %bb.uj
  ]

bb.ui:                                            ; preds = %bb.uh
  %i.cbc = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.cbd = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.600, i64 noundef 14) #29
  %.val847 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.cbe = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val847, i64 noundef %i.cbc, i32 noundef 2, i64 noundef 14860, i64 noundef %i.cbd) #29 ; 0 uses
  br label %bb.uj

bb.uj:                                            ; preds = %bb.uh, %bb.uh, %bb.uh, %bb.uh, %bb.uh, %bb.uh, %bb.ui, %bb.ug
  %i.cbf = load i16, ptr %i.f, align 8
  %i.cbg = and i16 %i.cbf, 32
  %.not.i1149 = icmp eq i16 %i.cbg, 0
  br i1 %.not.i1149, label %parser_set_lex_state.exit1151, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.cbh = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cbi = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cbh, i32 noundef 1, i32 noundef 11030) #29
  br label %parser_set_lex_state.exit1151

parser_set_lex_state.exit1151:                    ; preds = %bb.uj, %bb.uk
  %.0.i1150 = phi i32 [ %i.cbi, %bb.uk ], [ 1, %bb.uj ]
  store i32 %.0.i1150, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.ul:                                            ; preds = %bb.uf
  %i.cbj = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cbj, i64 16
  store i32 16, ptr %i.cbk, align 8, !tbaa !10
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cbj, i64 24
  store i32 39, ptr %i.cbl, align 8, !tbaa !10
  %i.cbm = getelementptr inbounds nuw i8, ptr %i.cbj, i64 20
  store i32 0, ptr %i.cbm, align 4, !tbaa !10
  store ptr %i.cbj, ptr %i.h, align 8, !tbaa !171
  br label %bb.uo

bb.um:                                            ; preds = %bb.uf
  %i.cbn = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbn, i64 16
  store i32 18, ptr %i.cbo, align 8, !tbaa !10
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbn, i64 24
  store i32 34, ptr %i.cbp, align 8, !tbaa !10
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.cbn, i64 20
  store i32 0, ptr %i.cbq, align 4, !tbaa !10
  store ptr %i.cbn, ptr %i.h, align 8, !tbaa !171
  br label %bb.uo

bb.un:                                            ; preds = %bb.uf
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.caj)
  br label %bb.uo

bb.uo:                                            ; preds = %bb.un, %bb.um, %bb.ul
  %i.cbr = load i16, ptr %i.f, align 8
  %i.cbs = and i16 %i.cbr, 32
  %.not.i1152 = icmp eq i16 %i.cbs, 0
  br i1 %.not.i1152, label %parser_set_lex_state.exit1154, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.cbt = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cbu = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cbt, i32 noundef 128, i32 noundef 11044) #29
  br label %parser_set_lex_state.exit1154

parser_set_lex_state.exit1154:                    ; preds = %bb.uo, %bb.up
  %.0.i1153 = phi i32 [ %i.cbu, %bb.up ], [ 128, %bb.uo ]
  store i32 %.0.i1153, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.uq:                                            ; preds = %bb.gv
  %i.cbv = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.cbw = and i32 %i.cbv, 577
  %.not738 = icmp ne i32 %i.cbw, 0
  %i.cbx = and i32 %i.cbv, 2064
  %i.cby = icmp eq i32 %i.cbx, 2064
  %or.cond835 = or i1 %.not738, %i.cby
  br i1 %or.cond835, label %bb.ur, label %bb.us

bb.ur:                                            ; preds = %bb.uq
  %i.cbz = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cbz, i64 16
  store i32 7, ptr %i.cca, align 8, !tbaa !10
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cbz, i64 24
  store i32 47, ptr %i.ccb, align 8, !tbaa !10
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.cbz, i64 20
  store i32 0, ptr %i.ccc, align 4, !tbaa !10
  store ptr %i.cbz, ptr %i.h, align 8, !tbaa !171
  br label %pushback.exit1061

bb.us:                                            ; preds = %bb.uq
  %i.ccd = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 4 uses
  %i.cce = icmp eq i32 %i.ccd, 61
  br i1 %i.cce, label %bb.ut, label %bb.uv

bb.ut:                                            ; preds = %bb.us
  %i.ccf = load ptr, ptr %0, align 8, !tbaa !18
  store i64 47, ptr %i.ccf, align 8, !tbaa !10
  %i.ccg = load i16, ptr %i.f, align 8
  %i.cch = and i16 %i.ccg, 32
  %.not.i1155 = icmp eq i16 %i.cch, 0
  br i1 %.not.i1155, label %parser_set_lex_state.exit1157, label %bb.uu

bb.uu:                                            ; preds = %bb.ut
  %i.cci = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.ccj = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cci, i32 noundef 1, i32 noundef 11054) #29
  br label %parser_set_lex_state.exit1157

parser_set_lex_state.exit1157:                    ; preds = %bb.ut, %bb.uu
  %.0.i1156 = phi i32 [ %i.ccj, %bb.uu ], [ 1, %bb.ut ]
  store i32 %.0.i1156, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.uv:                                            ; preds = %bb.us
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.ccd)
  %i.cck = load i32, ptr %i.afs, align 8, !tbaa !60 ; 3 uses
  %i.ccl = and i32 %i.cck, 48
  %i.ccm = icmp ne i32 %i.ccl, 0
  %13 = trunc nuw i32 %.0660 to i1                ; 2 uses
  %or.cond43 = select i1 %i.ccm, i1 %13, i1 false
  br i1 %or.cond43, label %bb.uw, label %bb.uy

bb.uw:                                            ; preds = %bb.uv
  switch i32 %i.ccd, label %bb.ux [
    i32 32, label %bb.uy
    i32 13, label %bb.uy
    i32 12, label %bb.uy
    i32 11, label %bb.uy
    i32 10, label %bb.uy
    i32 9, label %bb.uy
  ]

bb.ux:                                            ; preds = %bb.uw
  tail call fastcc void @arg_ambiguous(ptr noundef nonnull %0, i8 noundef signext 47)
  %i.ccn = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cco = getelementptr inbounds nuw i8, ptr %i.ccn, i64 16
  store i32 7, ptr %i.cco, align 8, !tbaa !10
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.ccn, i64 24
  store i32 47, ptr %i.ccp, align 8, !tbaa !10
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccn, i64 20
  store i32 0, ptr %i.ccq, align 4, !tbaa !10
  store ptr %i.ccn, ptr %i.h, align 8, !tbaa !171
  br label %pushback.exit1061

bb.uy:                                            ; preds = %bb.uw, %bb.uw, %bb.uw, %bb.uw, %bb.uw, %bb.uw, %bb.uv
  %i.ccr = and i32 %i.cck, 384
  %.not740 = icmp eq i32 %i.ccr, 0
  %i.ccs = select i1 %.not740, i32 1, i32 16      ; 2 uses
  %i.cct = load i16, ptr %i.f, align 8
  %i.ccu = and i16 %i.cct, 32
  %.not.i1159 = icmp eq i16 %i.ccu, 0
  br i1 %.not.i1159, label %parser_set_lex_state.exit1161, label %bb.uz

bb.uz:                                            ; preds = %bb.uy
  %i.ccv = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cck, i32 noundef %i.ccs, i32 noundef 11063) #29
  br label %parser_set_lex_state.exit1161

parser_set_lex_state.exit1161:                    ; preds = %bb.uy, %bb.uz
  %.0.i1160 = phi i32 [ %i.ccv, %bb.uz ], [ %i.ccs, %bb.uy ]
  store i32 %.0.i1160, ptr %i.afs, align 8, !tbaa !60
  %i.ccw = and i32 %i.agm, 904
  %i.ccx = icmp eq i32 %i.ccw, 0
  %or.cond45 = select i1 %i.ccx, i1 %13, i1 false
  br i1 %or.cond45, label %bb.va, label %pushback.exit1061

bb.va:                                            ; preds = %parser_set_lex_state.exit1161
  switch i32 %i.ccd, label %bb.vb [
    i32 32, label %pushback.exit1061
    i32 13, label %pushback.exit1061
    i32 12, label %pushback.exit1061
    i32 11, label %pushback.exit1061
    i32 10, label %pushback.exit1061
    i32 9, label %pushback.exit1061
  ]

bb.vb:                                            ; preds = %bb.va
  %i.ccy = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.ccz = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.601, i64 noundef 14) #29
  %.val846 = load i64, ptr %i.afy, align 8, !tbaa !46
  %i.cda = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val846, i64 noundef %i.ccy, i32 noundef 2, i64 noundef 12044, i64 noundef %i.ccz) #29 ; 0 uses
  br label %pushback.exit1061

bb.vc:                                            ; preds = %bb.gv
  %i.cdb = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %i.cdc = icmp eq i32 %i.cdb, 61
  br i1 %i.cdc, label %bb.vd, label %bb.vf

bb.vd:                                            ; preds = %bb.vc
  %i.cdd = load ptr, ptr %0, align 8, !tbaa !18
  store i64 94, ptr %i.cdd, align 8, !tbaa !10
  %i.cde = load i16, ptr %i.f, align 8
  %i.cdf = and i16 %i.cde, 32
  %.not.i1163 = icmp eq i16 %i.cdf, 0
  br i1 %.not.i1163, label %parser_set_lex_state.exit1165, label %bb.ve

bb.ve:                                            ; preds = %bb.vd
  %i.cdg = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cdh = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdg, i32 noundef 1, i32 noundef 11069) #29
  br label %parser_set_lex_state.exit1165

parser_set_lex_state.exit1165:                    ; preds = %bb.vd, %bb.ve
  %.0.i1164 = phi i32 [ %i.cdh, %bb.ve ], [ 1, %bb.vd ]
  store i32 %.0.i1164, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.vf:                                            ; preds = %bb.vc
  %i.cdi = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.cdj = and i32 %i.cdi, 384
  %.not737 = icmp eq i32 %i.cdj, 0
  %i.cdk = select i1 %.not737, i32 1, i32 16      ; 2 uses
  %i.cdl = load i16, ptr %i.f, align 8
  %i.cdm = and i16 %i.cdl, 32
  %.not.i1166 = icmp eq i16 %i.cdm, 0
  br i1 %.not.i1166, label %parser_set_lex_state.exit1168, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.cdn = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdi, i32 noundef %i.cdk, i32 noundef 11072) #29
  br label %parser_set_lex_state.exit1168

parser_set_lex_state.exit1168:                    ; preds = %bb.vf, %bb.vg
  %.0.i1167 = phi i32 [ %i.cdn, %bb.vg ], [ %i.cdk, %bb.vf ]
  store i32 %.0.i1167, ptr %i.afs, align 8, !tbaa !60
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cdb)
  br label %pushback.exit1061

bb.vh:                                            ; preds = %bb.gv
  %i.cdo = load i16, ptr %i.f, align 8            ; 2 uses
  %i.cdp = and i16 %i.cdo, 32
  %.not.i1169 = icmp eq i16 %i.cdp, 0
  br i1 %.not.i1169, label %parser_set_lex_state.exit1171, label %bb.vi

bb.vi:                                            ; preds = %bb.vh
  %i.cdq = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cdr = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdq, i32 noundef 1, i32 noundef 11077) #29
  %.pre2126 = load i16, ptr %i.f, align 8
  br label %parser_set_lex_state.exit1171

parser_set_lex_state.exit1171:                    ; preds = %bb.vh, %bb.vi
  %i.cds = phi i16 [ %.pre2126, %bb.vi ], [ %i.cdo, %bb.vh ]
  %.0.i1170 = phi i32 [ %i.cdr, %bb.vi ], [ 1, %bb.vh ]
  store i32 %.0.i1170, ptr %i.afs, align 8, !tbaa !60
  %i.cdt = or i16 %i.cds, 4
  store i16 %i.cdt, ptr %i.f, align 8
  br label %pushback.exit1061

bb.vj:                                            ; preds = %bb.gv
  %i.cdu = load i16, ptr %i.f, align 8
  %i.cdv = and i16 %i.cdu, 32
  %.not.i1172 = icmp eq i16 %i.cdv, 0
  br i1 %.not.i1172, label %parser_set_lex_state.exit1174, label %bb.vk

bb.vk:                                            ; preds = %bb.vj
  %i.cdw = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cdx = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdw, i32 noundef 1025, i32 noundef 11082) #29
  br label %parser_set_lex_state.exit1174

parser_set_lex_state.exit1174:                    ; preds = %bb.vj, %bb.vk
  %.0.i1173 = phi i32 [ %i.cdx, %bb.vk ], [ 1025, %bb.vj ]
  store i32 %.0.i1173, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.vl:                                            ; preds = %bb.gv
  %i.cdy = load i32, ptr %i.afs, align 8, !tbaa !60 ; 2 uses
  %i.cdz = and i32 %i.cdy, 384
  %.not735 = icmp eq i32 %i.cdz, 0
  br i1 %.not735, label %bb.vq, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.cea = tail call fastcc i32 @nextc0(ptr noundef nonnull %0) ; 2 uses
  %.not736 = icmp eq i32 %i.cea, 64
  br i1 %.not736, label %bb.vo, label %bb.vn

bb.vn:                                            ; preds = %bb.vm
  tail call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cea)
  br label %bb.vo

bb.vo:                                            ; preds = %bb.vn, %bb.vm
  %i.ceb = load i16, ptr %i.f, align 8
  %i.cec = and i16 %i.ceb, 32
  %.not.i1175 = icmp eq i16 %i.cec, 0
  br i1 %.not.i1175, label %parser_set_lex_state.exit1177, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.ced = load i32, ptr %i.afs, align 8, !tbaa !60
  %i.cee = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ced, i32 noundef 16, i32 noundef 11090) #29
  br label %parser_set_lex_state.exit1177

parser_set_lex_state.exit1177:                    ; preds = %bb.vo, %bb.vp
  %.0.i1176 = phi i32 [ %i.cee, %bb.vp ], [ 16, %bb.vo ]
  store i32 %.0.i1176, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.vq:                                            ; preds = %bb.vl
  %i.cef = load i16, ptr %i.f, align 8
  %i.ceg = and i16 %i.cef, 32
  %.not.i1178 = icmp eq i16 %i.ceg, 0
  br i1 %.not.i1178, label %parser_set_lex_state.exit1180, label %bb.vr

bb.vr:                                            ; preds = %bb.vq
  %i.ceh = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdy, i32 noundef 1, i32 noundef 11093) #29
  br label %parser_set_lex_state.exit1180

parser_set_lex_state.exit1180:                    ; preds = %bb.vq, %bb.vr
  %.0.i1179 = phi i32 [ %i.ceh, %bb.vr ], [ 1, %bb.vq ]
  store i32 %.0.i1179, ptr %i.afs, align 8, !tbaa !60
  br label %pushback.exit1061

bb.vs:                                            ; preds = %bb.gv
  %i.cei = load i32, ptr %i.afs, align 8, !tbaa !60 ; 5 uses
  %i.cej = and i32 %i.cei, 577
  %.not729 = icmp ne i32 %i.cej, 0
  %i.cek = and i32 %i.cei, 2064
  %i.cel = icmp eq i32 %i.cek, 2064
  %or.cond837 = or i1 %.not729, %i.cel
  br i1 %or.cond837, label %bb.vy, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %.not730 = icmp eq i32 %.0660, 0
  br i1 %.not730, label %bb.vy, label %bb.vu
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
  br label %bb.be

bb.ac:                                            ; preds = %bb.aa
  %i.ct = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store i32 0, ptr %i.cu, align 8, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store i32 %.2, ptr %i.cv, align 8, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  store i32 %.0, ptr %i.cw, align 4, !tbaa !10
  store ptr %i.ct, ptr %i.a, align 8, !tbaa !171
  br label %bb.be

bb.ad:                                            ; preds = %bb.aa
  %i.cx = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store i32 16394, ptr %i.cy, align 8, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i32 %.2, ptr %i.cz, align 8, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  store i32 %.0, ptr %i.da, align 4, !tbaa !10
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !171
  br label %bb.be

bb.ae:                                            ; preds = %bb.aa
  %i.db = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i32 16392, ptr %i.dc, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i32 %.2, ptr %i.dd, align 8, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  store i32 %.0, ptr %i.de, align 4, !tbaa !10
  store ptr %i.db, ptr %i.a, align 8, !tbaa !171
  br label %bb.be

bb.af:                                            ; preds = %bb.aa
  %i.df = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store i32 16394, ptr %i.dg, align 8, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store i32 %.2, ptr %i.dh, align 8, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  store i32 %.0, ptr %i.di, align 4, !tbaa !10
  store ptr %i.df, ptr %i.a, align 8, !tbaa !171
  br label %bb.be

bb.ag:                                            ; preds = %bb.aa
  %i.dj = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 16392, ptr %i.dk, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  store i32 %.2, ptr %i.dl, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  store i32 %.0, ptr %i.dm, align 4, !tbaa !10
  store ptr %i.dj, ptr %i.a, align 8, !tbaa !171
  br label %bb.be

bb.ah:                                            ; preds = %bb.aa
  %i.dn = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store i32 2, ptr %i.do, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i32 %.2, ptr %i.dp, align 8, !tbaa !10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  store i32 %.0, ptr %i.dq, align 4, !tbaa !10
  store ptr %i.dn, ptr %i.a, align 8, !tbaa !171
  br label %bb.be

bb.ai:                                            ; preds = %bb.aa
  %i.dr = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i32 7, ptr %i.ds, align 8, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store i32 %.2, ptr %i.dt, align 8, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  store i32 %.0, ptr %i.du, align 4, !tbaa !10
  store ptr %i.dr, ptr %i.a, align 8, !tbaa !171
  br label %bb.be

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
  br label %bb.be

bb.al:                                            ; preds = %bb.aa
  tail call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef @.str.661)
  br label %bb.be

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
  br label %bb.be

nextc0.exit124.thread:                            ; preds = %bb.ar, %bb.as, %bb.aq, %.critedge.i117, %nextc0.exit124
  %.011.i119141 = phi i32 [ %i.et, %nextc0.exit124 ], [ 13, %bb.ar ], [ 10, %bb.as ], [ 13, %bb.aq ], [ -1, %.critedge.i117 ] ; 5 uses
  %i.fb = load i32, ptr %i.d, align 8, !tbaa !60  ; 4 uses
  %i.fc = and i32 %i.fb, 48
  %i.fd = icmp ne i32 %i.fc, 0
  %3 = trunc nuw i32 %1 to i1                     ; 2 uses
  %or.cond = and i1 %i.fd, %3
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
  %or.cond5 = and i1 %i.gb, %3
  br i1 %or.cond5, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %pushback.exit132
  switch i32 %.011.i119141, label %bb.bd [
    i32 32, label %bb.be
    i32 13, label %bb.be
    i32 12, label %bb.be
    i32 11, label %bb.be
    i32 10, label %bb.be
    i32 9, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  %i.gc = load i64, ptr getelementptr inbounds nuw (i8, ptr @ripper_parser_ids, i64 624), align 8, !tbaa !547
  %i.gd = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.663, i64 noundef 14) #29
  %i.ge = getelementptr i8, ptr %0, i64 368
  %.val103 = load i64, ptr %i.ge, align 8, !tbaa !46
  %i.gf = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.val103, i64 noundef %i.gc, i32 noundef 2, i64 noundef 9484, i64 noundef %i.gd) #29 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %parser_precise_mbclen.exit.thread, %pushback.exit132, %bb.bd, %parser_set_lex_state.exit127, %bb.al, %parser_set_lex_state.exit, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %nextc0.exit.thread136, %parser_precise_mbclen.exit
  %.090 = phi i32 [ 0, %nextc0.exit.thread136 ], [ 0, %parser_precise_mbclen.exit.thread ], [ 0, %parser_precise_mbclen.exit ], [ 0, %bb.al ], [ 338, %bb.ab ], [ 338, %bb.ac ], [ 341, %bb.ad ], [ 342, %bb.ae ], [ 343, %bb.af ], [ 344, %bb.ag ], [ 339, %bb.ah ], [ 340, %bb.ai ], [ 337, %parser_set_lex_state.exit ], [ 326, %parser_set_lex_state.exit127 ], [ 37, %bb.bd ], [ 37, %bb.bc ], [ 37, %pushback.exit132 ], [ 37, %bb.bc ], [ 37, %bb.bc ], [ 37, %bb.bc ], [ 37, %bb.bc ], [ 37, %bb.bc ]
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
end_hunk_4
begin_hunk_5_@parse_ident:bb.a
bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !413
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
  switch i32 %.011.i, label %parser_is_identchar.exit.thread..thread202_crit_edge [
    i32 63, label %bb.j
    i32 33, label %bb.j
    i32 61, label %parser_is_identchar.exit.thread._crit_edge
    i32 -1, label %tokadd.exit
  ]

parser_is_identchar.exit.thread._crit_edge:       ; preds = %parser_is_identchar.exit.thread
  %.pre236.pre = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %bb.o

parser_is_identchar.exit.thread..thread202_crit_edge: ; preds = %parser_is_identchar.exit.thread
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %.thread202

bb.j:                                             ; preds = %parser_is_identchar.exit.thread, %parser_is_identchar.exit.thread
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !48  ; 4 uses
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !413
  %.not131 = icmp ult ptr %i.aq, %i.ar
  br i1 %.not131, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !10
  %i.at = icmp eq i8 %i.as, 61
  br i1 %i.at, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = trunc nuw nsw i32 %.011.i to i8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !471
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !514 ; 2 uses
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !514
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds i8, ptr %i.aw, i64 %i.ba
  store i8 %i.au, ptr %i.bb, align 1, !tbaa !10
  %i.bc = load i32, ptr %i.ax, align 8, !tbaa !514
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !480 ; 2 uses
  %.not.i158 = icmp slt i32 %i.bc, %i.be
  br i1 %.not.i158, label %tokadd.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = shl nsw i32 %i.be, 1                    ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !480
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !471
  %i.bh = sext i32 %i.bf to i64
  %i.bi = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.bg, i64 noundef %i.bh, i64 noundef 1) #36
  store ptr %i.bi, ptr %i.av, align 8, !tbaa !471
  br label %tokadd.exit

bb.n:                                             ; preds = %bb.k
  %i.bj = icmp eq i32 %.011.i, 61
  br i1 %i.bj, label %bb.o, label %.thread202

bb.o:                                             ; preds = %parser_is_identchar.exit.thread._crit_edge, %bb.n
  %.pre236 = phi ptr [ %.pre236.pre, %parser_is_identchar.exit.thread._crit_edge ], [ %i.aq, %bb.n ] ; 8 uses
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !60
  %i.bl = and i32 %i.bk, 128
  %.not132 = icmp eq i32 %i.bl, 0
  br i1 %.not132, label %.thread202, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !413 ; 2 uses
  %.not133 = icmp ult ptr %.pre236, %i.bm
  br i1 %.not133, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bn = load i8, ptr %.pre236, align 1, !tbaa !10
  switch i8 %i.bn, label %bb.t [
    i8 126, label %.thread202
    i8 62, label %.thread202
    i8 61, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre236, i64 1 ; 2 uses
  %.not136 = icmp ult ptr %i.bo, %i.bm
  br i1 %.not136, label %bb.s, label %.thread202

bb.s:                                             ; preds = %bb.r
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !10
  %i.bq = icmp eq i8 %i.bp, 62
  br i1 %i.bq, label %bb.t, label %.thread202

bb.t:                                             ; preds = %bb.q, %bb.p, %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !471
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !514 ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !514
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds i8, ptr %i.bs, i64 %i.bw
  store i8 61, ptr %i.bx, align 1, !tbaa !10
  %i.by = load i32, ptr %i.bt, align 8, !tbaa !514
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !480 ; 2 uses
  %.not.i159 = icmp slt i32 %i.by, %i.ca
  br i1 %.not.i159, label %tokadd.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = shl nsw i32 %i.ca, 1                    ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !480
  %i.cc = load ptr, ptr %i.br, align 8, !tbaa !471
  %i.cd = sext i32 %i.cb to i64
  %i.ce = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.cc, i64 noundef %i.cd, i64 noundef 1) #36
  store ptr %i.ce, ptr %i.br, align 8, !tbaa !471
  br label %tokadd.exit

.thread202:                                       ; preds = %bb.q, %bb.q, %parser_is_identchar.exit.thread..thread202_crit_edge, %bb.n, %bb.o, %bb.r, %bb.s
  %i.cf = phi ptr [ %.pre, %parser_is_identchar.exit.thread..thread202_crit_edge ], [ %i.aq, %bb.n ], [ %.pre236, %bb.o ], [ %.pre236, %bb.q ], [ %.pre236, %bb.q ], [ %.pre236, %bb.r ], [ %.pre236, %bb.s ] ; 2 uses
  %i.cg = load i16, ptr %i.h, align 8
  %i.ch = and i16 %i.cg, -9
  store i16 %i.ch, ptr %i.h, align 8
  %i.ci = getelementptr inbounds i8, ptr %i.cf, i64 -1 ; 3 uses
  store ptr %i.ci, ptr %i.f, align 8, !tbaa !48
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !44
  %i.cl = icmp ugt ptr %i.ci, %i.ck
  br i1 %i.cl, label %bb.v, label %tokadd.exit

bb.v:                                             ; preds = %.thread202
  %i.cm = load i8, ptr %i.ci, align 1, !tbaa !10
  %i.cn = icmp eq i8 %i.cm, 10
  br i1 %i.cn, label %bb.w, label %tokadd.exit

bb.w:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds i8, ptr %i.cf, i64 -2 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !10
  %i.cq = icmp eq i8 %i.cp, 13
  br i1 %i.cq, label %bb.x, label %tokadd.exit

bb.x:                                             ; preds = %bb.w
  store ptr %i.co, ptr %i.f, align 8, !tbaa !48
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %parser_is_identchar.exit.thread, %bb.x, %bb.w, %bb.v, %.thread202, %bb.u, %bb.t, %bb.m, %bb.l
  %i.cr = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.t ], [ true, %parser_is_identchar.exit.thread ], [ true, %.thread202 ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ]
  %.0112 = phi i32 [ 307, %bb.u ], [ 308, %bb.m ], [ 308, %bb.l ], [ 307, %bb.t ], [ 311, %parser_is_identchar.exit.thread ], [ 311, %.thread202 ], [ 311, %bb.v ], [ 311, %bb.w ], [ 311, %bb.x ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !471
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !514
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %i.ct, i64 %i.cw
  store i8 0, ptr %i.cx, align 1, !tbaa !10
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !60  ; 5 uses
  %i.cz = and i32 %i.cy, 1032
  %i.da = icmp eq i32 %i.cz, 0
  %3 = trunc nuw i32 %2 to i1                     ; 2 uses
  %or.cond3 = or i1 %i.da, %3
  %i.db = and i32 %i.cy, 48
  %.not137 = icmp eq i32 %i.db, 0
  %or.cond = and i1 %.not137, %or.cond3
  br i1 %or.cond, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %tokadd.exit
  %i.dc = load ptr, ptr %i.f, align 8, !tbaa !48  ; 4 uses
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !413 ; 3 uses
  %.not138 = icmp ult ptr %i.dc, %i.dd
  br i1 %.not138, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !10
  %i.df = icmp eq i8 %i.de, 58
  br i1 %i.df, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 1 ; 2 uses
  %.not139 = icmp ult ptr %i.dg, %i.dd
  br i1 %.not139, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !10
  %i.di = icmp eq i8 %i.dh, 58
  br i1 %i.di, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dj = load i16, ptr %i.h, align 8
  %i.dk = and i16 %i.dj, 32
  %.not.i161 = icmp eq i16 %i.dk, 0
  br i1 %.not.i161, label %parser_set_lex_state.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cy, i32 noundef 2064, i32 noundef 10371) #29
  %.pre237 = load ptr, ptr %i.f, align 8, !tbaa !48
  %.pre238 = load ptr, ptr %i.g, align 8, !tbaa !413
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.ac, %bb.ad
  %i.dm = phi ptr [ %.pre238, %bb.ad ], [ %i.dd, %bb.ac ]
  %i.dn = phi ptr [ %.pre237, %bb.ad ], [ %i.dc, %bb.ac ] ; 2 uses
  %.0.i = phi i32 [ %i.dl, %bb.ad ], [ 2064, %bb.ac ]
  store i32 %.0.i, ptr %i.a, align 8, !tbaa !60
  %.not.i162 = icmp ult ptr %i.dn, %i.dm
  br i1 %.not.i162, label %bb.ae, label %.critedge.i163, !prof !486

bb.ae:                                            ; preds = %parser_set_lex_state.exit
  %i.do = load i16, ptr %i.h, align 8
  %i.dp = and i16 %i.do, 8
  %.not13.i169 = icmp eq i16 %i.dp, 0
  br i1 %.not13.i169, label %bb.af, label %.critedge.i163, !prof !486

bb.af:                                            ; preds = %bb.ae
  %i.dq = load ptr, ptr %i.i, align 8, !tbaa !487
  %i.dr = icmp ugt ptr %i.dq, inttoptr (i64 1 to ptr)
  br i1 %i.dr, label %.critedge.i163, label %bb.ag, !prof !196

.critedge.i163:                                   ; preds = %bb.af, %bb.ae, %parser_set_lex_state.exit
  %i.ds = tail call fastcc i32 @nextline(ptr noundef nonnull %0)
  %.not14.i164 = icmp eq i32 %i.ds, 0
  br i1 %.not14.i164, label %.critedge._crit_edge.i166, label %nextc0.exit170

.critedge._crit_edge.i166:                        ; preds = %.critedge.i163
  %.pre.i167 = load ptr, ptr %i.f, align 8, !tbaa !48
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge._crit_edge.i166, %bb.af
  %i.dt = phi ptr [ %.pre.i167, %.critedge._crit_edge.i166 ], [ %i.dn, %bb.af ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1 ; 3 uses
  store ptr %i.du, ptr %i.f, align 8, !tbaa !48
  %i.dv = load i8, ptr %i.dt, align 1, !tbaa !10
  %i.dw = icmp eq i8 %i.dv, 13
  br i1 %i.dw, label %bb.ah, label %nextc0.exit170, !prof !196

bb.ah:                                            ; preds = %bb.ag
  %i.dx = load ptr, ptr %i.g, align 8, !tbaa !413
  %.not.i.i168 = icmp ult ptr %i.du, %i.dx
  br i1 %.not.i.i168, label %bb.ai, label %nextc0.exit170

bb.ai:                                            ; preds = %bb.ah
  %i.dy = load i8, ptr %i.du, align 1, !tbaa !10
  %i.dz = icmp eq i8 %i.dy, 10
  br i1 %i.dz, label %bb.aj, label %nextc0.exit170

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store ptr %i.ea, ptr %i.f, align 8, !tbaa !48
  br label %nextc0.exit170

nextc0.exit170:                                   ; preds = %.critedge.i163, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %i.eb = load ptr, ptr %i.cs, align 8, !tbaa !471
  %i.ec = load i32, ptr %i.cu, align 8, !tbaa !514
  %i.ed = sext i32 %i.ec to i64
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.ef = tail call i64 @rb_intern3(ptr noundef %i.eb, i64 noundef %i.ed, ptr noundef %i.ee) #29 ; 2 uses
  %i.eg = load ptr, ptr %0, align 8, !tbaa !18
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !10
  %i.eh = tail call i64 @rb_id2sym(i64 noundef %i.ef) #29
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !47
  br label %.thread204

bb.ak:                                            ; preds = %tokadd.exit, %bb.y, %bb.z, %bb.ab
  %i.ej = and i32 %i.cy, 256
  %i.ek = icmp eq i32 %i.ej, 0
  %or.cond211 = and i1 %spec.select228, %i.ek
  br i1 %or.cond211, label %bb.al, label %bb.bf

bb.al:                                            ; preds = %bb.ak
  %i.el = load ptr, ptr %i.cs, align 8, !tbaa !471
  %i.em = load i32, ptr %i.cu, align 8, !tbaa !514
  %i.en = tail call ptr @rb_reserved_word(ptr noundef %i.el, i32 noundef %i.em) #29 ; 5 uses
  %.not140 = icmp eq ptr %i.en, null
  %.pre240 = load i32, ptr %i.a, align 8, !tbaa !60 ; 6 uses
  br i1 %.not140, label %bb.bf, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = and i32 %.pre240, 128
  %.not141 = icmp eq i32 %i.eo, 0
  br i1 %.not141, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ep = load i16, ptr %i.h, align 8
  %i.eq = and i16 %i.ep, 32
  %.not.i171 = icmp eq i16 %i.eq, 0
  br i1 %.not.i171, label %parser_set_lex_state.exit173, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.er = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pre240, i32 noundef 8, i32 noundef 10412) #29
  br label %parser_set_lex_state.exit173

parser_set_lex_state.exit173:                     ; preds = %bb.an, %bb.ao
  %.0.i172 = phi i32 [ %i.er, %bb.ao ], [ 8, %bb.an ]
  store i32 %.0.i172, ptr %i.a, align 8, !tbaa !60
  %i.es = load ptr, ptr %i.cs, align 8, !tbaa !471
  %i.et = load i32, ptr %i.cu, align 8, !tbaa !514
  %i.eu = sext i32 %i.et to i64
  %i.ev = tail call i64 @rb_intern2(ptr noundef %i.es, i64 noundef %i.eu) #29
  %i.ew = load ptr, ptr %0, align 8, !tbaa !18
  store i64 %i.ev, ptr %i.ew, align 8, !tbaa !10
  %i.ex = load ptr, ptr %i.cs, align 8, !tbaa !471
  %i.ey = load i32, ptr %i.cu, align 8, !tbaa !514
  %i.ez = sext i32 %i.ey to i64
  %i.fa = tail call i64 @rb_intern2(ptr noundef %i.ex, i64 noundef %i.ez) #29
  %i.fb = tail call i64 @rb_id2sym(i64 noundef %i.fa) #29
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !47
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !14
  %i.ff = sext i16 %i.fe to i32
  br label %.thread204

bb.ap:                                            ; preds = %bb.am
  %i.fg = getelementptr inbounds nuw i8, ptr %i.en, i64 6
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !567
  %i.fi = sext i16 %i.fh to i32                   ; 2 uses
  %i.fj = load i16, ptr %i.h, align 8
  %i.fk = and i16 %i.fj, 32
  %.not.i174 = icmp eq i16 %i.fk, 0
  br i1 %.not.i174, label %parser_set_lex_state.exit176, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fl = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %.pre240, i32 noundef %i.fi, i32 noundef 10416) #29
  br label %parser_set_lex_state.exit176

parser_set_lex_state.exit176:                     ; preds = %bb.ap, %bb.aq
  %.0.i175 = phi i32 [ %i.fl, %bb.aq ], [ %i.fi, %bb.ap ] ; 3 uses
  store i32 %.0.i175, ptr %i.a, align 8, !tbaa !60
  %i.fm = and i32 %.0.i175, 1
  %.not142 = icmp eq i32 %i.fm, 0
  br i1 %.not142, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %parser_set_lex_state.exit176
  %i.fn = load i16, ptr %i.h, align 8
  %i.fo = or i16 %i.fn, 4
  store i16 %i.fo, ptr %i.h, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %parser_set_lex_state.exit176
  %i.fp = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !14 ; 3 uses
  %i.fr = icmp eq i16 %i.fq, 281
  br i1 %i.fr, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !158
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !174
  %i.fw = icmp eq i32 %i.ft, %i.fv
  br i1 %i.fw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 -1, ptr %i.fs, align 8, !tbaa !158
  br label %.thread204

bb.av:                                            ; preds = %bb.at
  %i.fx = load i16, ptr %i.h, align 8
  %i.fy = and i16 %i.fx, 32
  %.not145 = icmp eq i16 %i.fy, 0
end_hunk_5
