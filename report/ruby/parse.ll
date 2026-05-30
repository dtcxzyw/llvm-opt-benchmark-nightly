inline.NumInlined: 1675
inline.NumDeleted: 269
begin_hunk_0_@new_args_forward_call:bb.a
  store i32 %i.ay, ptr %i.j, align 8, !tbaa !217
  %i.az = getelementptr i8, ptr %i.ap, i64 24
  store i32 %i.ax, ptr %i.az, align 8, !tbaa !218
  %i.ba = getelementptr i8, ptr %i.ap, i64 32
  store i64 38, ptr %i.ba, align 8, !tbaa !387
  %.val.i.i31 = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.bb = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i31, i32 noundef range(i32 0, 115) 79, i64 noundef range(i64 32, 129) 72, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.bb, i32 noundef range(i32 0, 115) 79) #31
  %i.bc = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  %i.bd = load i32, ptr %3, align 4, !tbaa !51
  %i.be = sext i32 %i.bd to i64
  %i.bf = load i64, ptr %i.bb, align 8, !tbaa !69
  %i.bg = and i64 %i.bf, 32767
  %i.bh = shl nsw i64 %i.be, 15
  %i.bi = or disjoint i64 %i.bg, %i.bh
  store i64 %i.bi, ptr %i.bb, align 8, !tbaa !69
  %i.bj = load i32, ptr %i.j, align 8, !tbaa !217 ; 2 uses
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.j, align 8, !tbaa !217
  %i.bl = getelementptr i8, ptr %i.bb, i64 24
  store i32 %i.bj, ptr %i.bl, align 8, !tbaa !218
  %i.bm = getelementptr i8, ptr %i.bb, i64 48     ; 4 uses
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = and i8 %i.bn, -2
  store i8 %i.bo, ptr %i.bm, align 8
  %i.bp = getelementptr i8, ptr %i.bb, i64 32     ; 2 uses
  store ptr null, ptr %i.bp, align 8, !tbaa !119
  %i.bq = getelementptr i8, ptr %i.bb, i64 40
  store ptr %i.ap, ptr %i.bq, align 8, !tbaa !389
  %i.br = getelementptr i8, ptr %i.bb, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.br, ptr noundef nonnull align 4 dereferenceable(16) @__const.ruby_yyparse.inheritance_operator_loc, i64 16, i1 false), !tbaa.struct !57
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !69
  %i.bs = and i64 %.val.i, 32512
  %i.bt = icmp eq i64 %i.bs, 11008
  br i1 %i.bt, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.val.i.i32 = load i64, ptr %1, align 8, !tbaa !69
  %i.bu = and i64 %.val.i.i32, 32512              ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 19968
  br i1 %i.bv, label %bb.d, label %splat_array.exit.i

bb.d:                                             ; preds = %bb.c
  %i.bw = getelementptr i8, ptr %1, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !122 ; 2 uses
  %.0.val.pre.i.i = load i64, ptr %i.bx, align 8, !tbaa !69
  %.pre.i.i = and i64 %.0.val.pre.i.i, 32512
  br label %splat_array.exit.i

splat_array.exit.i:                               ; preds = %bb.d, %bb.c
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %bb.d ], [ %i.bu, %bb.c ]
  %.0.i.i = phi ptr [ %i.bx, %bb.d ], [ %1, %bb.c ] ; 5 uses
  %.not.i = icmp eq i64 %.pre-phi.i.i, 11008
  br i1 %.not.i, label %bb.e, label %bb.i

bb.e:                                             ; preds = %splat_array.exit.i
  %i.by = getelementptr i8, ptr %.0.i.i, i64 48   ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !186 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i10.i = phi ptr [ %i.cb, %bb.f ], [ %.0.i.i, %bb.e ]
  %i.cc = getelementptr i8, ptr %i.b, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !15
  %i.ce = getelementptr i8, ptr %.0.i.i, i64 40   ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !15
  %i.cg = add i64 %i.cf, %i.cd
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !15
  %i.ch = getelementptr i8, ptr %.0.i10.i, i64 48
  store ptr %i.b, ptr %i.ch, align 8, !tbaa !186
  %i.ci = getelementptr i8, ptr %i.b, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !186 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.cj, null
  br i1 %.not17.i.i, label %list_concat.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ck = getelementptr i8, ptr %i.cj, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !15
  br label %list_concat.exit.i

list_concat.exit.i:                               ; preds = %bb.h, %bb.g
  %.sink.i.i = phi ptr [ %i.cl, %bb.h ], [ %i.b, %bb.g ]
  %i.cm = load ptr, ptr %i.by, align 8, !tbaa !186
  %i.cn = getelementptr i8, ptr %i.cm, i64 40
  store ptr %.sink.i.i, ptr %i.cn, align 8, !tbaa !15
  %i.co = getelementptr i8, ptr %.0.i.i, i64 16
  %i.cp = getelementptr i8, ptr %i.b, i64 16
  %i.cq = load i64, ptr %i.cp, align 8
  store i64 %i.cq, ptr %i.co, align 8
  br label %bb.k

bb.i:                                             ; preds = %splat_array.exit.i, %bb.b
  %i.cr = tail call fastcc ptr @arg_concat(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull readonly %3)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %.val.i.i33 = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.cs = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i33, i32 noundef range(i32 0, 115) 78, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 8 uses
  tail call void @rb_node_init(ptr noundef %i.cs, i32 noundef range(i32 0, 115) 78) #31
  %i.ct = getelementptr i8, ptr %i.cs, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.cu = load i32, ptr %2, align 4, !tbaa !51
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load i64, ptr %i.cs, align 8, !tbaa !69
  %i.cx = and i64 %i.cw, 32767
  %i.cy = shl nsw i64 %i.cv, 15
  %i.cz = or disjoint i64 %i.cx, %i.cy
  store i64 %i.cz, ptr %i.cs, align 8, !tbaa !69
  %i.da = load i32, ptr %i.j, align 8, !tbaa !217 ; 2 uses
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.j, align 8, !tbaa !217
  %i.dc = getelementptr i8, ptr %i.cs, i64 24
  store i32 %i.da, ptr %i.dc, align 8, !tbaa !218
  %i.dd = getelementptr i8, ptr %i.cs, i64 32
  store ptr %i.b, ptr %i.dd, align 8, !tbaa !122
  %i.de = getelementptr i8, ptr %i.cs, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 4 dereferenceable(16) @__const.ruby_yyparse.inheritance_operator_loc, i64 16, i1 false), !tbaa.struct !57
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %list_concat.exit.i, %bb.i
  %i.df = phi ptr [ %i.cs, %bb.j ], [ %.0.i.i, %list_concat.exit.i ], [ %i.cr, %bb.i ]
  %i.dg = load i8, ptr %i.bm, align 8
  %i.dh = or i8 %i.dg, 1
  store i8 %i.dh, ptr %i.bm, align 8
  %i.di = tail call fastcc ptr @new_hash(ptr noundef nonnull %0, ptr noundef %i.ao, ptr noundef nonnull %2)
  %i.dj = tail call fastcc ptr @arg_append(ptr noundef nonnull %0, ptr noundef %i.df, ptr noundef %i.di, ptr noundef nonnull %3) ; 3 uses
  %.not14.i = icmp eq ptr %i.dj, null
  br i1 %.not14.i, label %arg_blk_pass.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.dj, ptr %i.bp, align 8, !tbaa !119
  %i.dk = getelementptr i8, ptr %i.dj, i64 8
  %i.dl = load <2 x i32>, ptr %i.dk, align 8, !tbaa !7
  store <2 x i32> %i.dl, ptr %i.bc, align 8, !tbaa !7
  br label %arg_blk_pass.exit

arg_blk_pass.exit:                                ; preds = %bb.k, %bb.l
  ret ptr %i.bb
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_block_pass_new(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 79, i64 noundef range(i64 32, 129) 72, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 79) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr i8, ptr %i.b, i64 48       ; 2 uses
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, -2
  store i8 %i.p, ptr %i.n, align 8
  %i.q = getelementptr i8, ptr %i.b, i64 32
  store ptr null, ptr %i.q, align 8, !tbaa !119
  %i.r = getelementptr i8, ptr %i.b, i64 40
  store ptr %1, ptr %i.r, align 8, !tbaa !389
  %i.s = getelementptr i8, ptr %i.b, i64 52
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.s, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @forwarding_arg_check(ptr noundef captures(none) %0, i64 noundef range(i64 38, 135) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %.03481 = load ptr, ptr %i.b, align 8, !tbaa !390 ; 2 uses
  %.03582 = load ptr, ptr %i.c, align 8, !tbaa !390 ; 2 uses
  %.not83 = icmp eq ptr %.03582, null
  br i1 %.not83, label %.critedge46, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %vtable_included.exit.thread
  %.03586 = phi ptr [ %i.e, %vtable_included.exit.thread ], [ %.03582, %bb.a ]
  %.03485 = phi ptr [ %.034, %vtable_included.exit.thread ], [ %.03481, %bb.a ] ; 5 uses
  %.03684 = phi i1 [ %6, %vtable_included.exit.thread ], [ false, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %.03586, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !148  ; 4 uses
  %i.f = icmp ult ptr %i.e, inttoptr (i64 2 to ptr)
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ult ptr %.03485, inttoptr (i64 2 to ptr)
  br i1 %i.g, label %vtable_included.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.03485, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !195  ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %vtable_included.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.k = load ptr, ptr %.03485, align 8, !tbaa !197 ; 2 uses
  %i.l = zext nneg i32 %i.i to i64                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11
  %i.o = icmp eq i64 %i.n, %1
  br i1 %i.o, label %.lr.ph.i51, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not.i, label %vtable_included.exit.thread, label %bb.c, !llvm.loop !214

.lr.ph.i51:                                       ; preds = %bb.c, %bb.e
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv96
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = icmp eq i64 %i.q, 129
  br i1 %i.r, label %vtable_included.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i51
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %indvars.iv.next97, %i.l
  br i1 %exitcond.not.i53, label %vtable_included.exit.thread, label %.lr.ph.i51, !llvm.loop !214

vtable_included.exit.thread:                      ; preds = %bb.d, %bb.e, %.lr.ph.i51, %.preheader.i, %bb.b
  %3 = phi i32 [ 1, %bb.e ], [ 0, %.preheader.i ], [ 0, %bb.b ], [ 0, %.lr.ph.i51 ], [ 0, %bb.d ]
  %4 = zext i1 %.03684 to i32
  %5 = or i32 %3, %4
  %6 = icmp ne i32 %5, 0                          ; 2 uses
  %i.s = getelementptr i8, ptr %.03485, i64 16
  %.034 = load ptr, ptr %i.s, align 8, !tbaa !390 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge46, label %.lr.ph, !llvm.loop !391

.critedge:                                        ; preds = %.lr.ph
  %.not88 = icmp eq ptr %i.e, inttoptr (i64 1 to ptr)
  br i1 %.not88, label %bb.f, label %.critedge46

bb.f:                                             ; preds = %.critedge
  %i.t = getelementptr i8, ptr %0, i64 352        ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.v = tail call i32 @rb_local_defined(i64 noundef %1, ptr noundef %i.u) #31
  %.not40 = icmp eq i32 %i.v, 0
  br i1 %.not40, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.x = tail call i32 @rb_local_defined(i64 noundef 129, ptr noundef %i.w) #31
  %.not41 = icmp eq i32 %i.x, 0
  br i1 %.not41, label %.thread, label %.sink.split

.critedge46:                                      ; preds = %vtable_included.exit.thread, %bb.a, %.critedge
  %.03679 = phi i1 [ %.03684, %.critedge ], [ false, %bb.a ], [ %6, %vtable_included.exit.thread ]
  %.03476 = phi ptr [ %.03485, %.critedge ], [ %.03481, %bb.a ], [ %.034, %vtable_included.exit.thread ] ; 3 uses
  %i.y = icmp ult ptr %.03476, inttoptr (i64 2 to ptr)
  br i1 %i.y, label %.sink.split, label %.preheader.i55

.preheader.i55:                                   ; preds = %.critedge46
  %i.z = getelementptr i8, ptr %.03476, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !195 ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i57, label %.sink.split

.lr.ph.i57:                                       ; preds = %.preheader.i55
  %i.ac = load ptr, ptr %.03476, align 8, !tbaa !197 ; 2 uses
  %i.ad = zext nneg i32 %i.aa to i64              ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i57
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %bb.i ], [ 0, %.lr.ph.i57 ] ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv99
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11
  %i.ag = icmp eq i64 %i.af, %1
  br i1 %i.ag, label %.lr.ph.i63, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond.not.i59 = icmp eq i64 %indvars.iv.next100, %i.ad
  br i1 %exitcond.not.i59, label %.sink.split, label %bb.h, !llvm.loop !214

.lr.ph.i63:                                       ; preds = %bb.h, %bb.j
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv102
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11
  %i.aj = icmp eq i64 %i.ai, 129
  br i1 %i.aj, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i63
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %indvars.iv.next103, %i.ad
  br i1 %exitcond.not.i65, label %.thread, label %.lr.ph.i63, !llvm.loop !214

.thread:                                          ; preds = %bb.j, %bb.g
  %.03678 = phi i1 [ %.03684, %bb.g ], [ %.03679, %bb.j ]
  br i1 %.03678, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.i, %.lr.ph.i63, %.thread, %bb.f, %bb.g, %.critedge46, %.preheader.i55
  %.str.945.sink = phi ptr [ @.str.944, %bb.f ], [ @.str.944, %.lr.ph.i63 ], [ @.str.945, %.thread ], [ @.str.944, %.preheader.i55 ], [ @.str.944, %.critedge46 ], [ @.str.944, %bb.g ], [ @.str.944, %bb.i ]
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull %.str.945.sink, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %.thread
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rb_node_lvar_new(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 288
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.b = tail call ptr @rb_ast_newnode(ptr noundef %.val.i, i32 noundef range(i32 0, 115) 48, i64 noundef range(i64 32, 129) 40, i64 noundef 8) #31 ; 7 uses
  tail call void @rb_node_init(ptr noundef %i.b, i32 noundef range(i32 0, 115) 48) #31
  %i.c = getelementptr i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  %i.d = load i32, ptr %2, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = load i64, ptr %i.b, align 8, !tbaa !69
  %i.g = and i64 %i.f, 32767
  %i.h = shl nsw i64 %i.e, 15
  %i.i = or disjoint i64 %i.g, %i.h
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !217  ; 2 uses
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !217
  %i.m = getelementptr i8, ptr %i.b, i64 24
  store i32 %i.k, ptr %i.m, align 8, !tbaa !218
  %i.n = getelementptr i8, ptr %i.b, i64 32
  store i64 %1, ptr %i.n, align 8, !tbaa !387
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @last_arg_append(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %.val.i = load i64, ptr %1, align 8, !tbaa !69
  %i.a = and i64 %.val.i, 32512                   ; 2 uses
  %i.b = icmp eq i64 %i.a, 19968
  br i1 %i.b, label %bb.b, label %splat_array.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !122  ; 2 uses
  %.0.val.pre.i = load i64, ptr %i.d, align 8, !tbaa !69
  %.pre.i = and i64 %.0.val.pre.i, 32512
  br label %splat_array.exit

splat_array.exit:                                 ; preds = %bb.a, %bb.b
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.b ], [ %i.a, %bb.a ]
  %.0.i = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ]  ; 5 uses
  %.not = icmp eq i64 %.pre-phi.i, 11008
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %splat_array.exit
  %i.e = getelementptr i8, ptr %.0.i, i64 48      ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !186  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %list_append.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  br label %list_append.exit

list_append.exit:                                 ; preds = %bb.c, %bb.d
  %.0.i10 = phi ptr [ %i.h, %bb.d ], [ %.0.i, %bb.c ]
  %i.i = getelementptr i8, ptr %.0.i, i64 40      ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !15
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !15
  %i.l = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 288
  %.val.i.i21.i = load ptr, ptr %i.m, align 8, !tbaa !129
  %i.n = tail call ptr @rb_ast_newnode(ptr noundef %.val.i.i21.i, i32 noundef range(i32 0, 115) 43, i64 noundef range(i64 32, 129) 56, i64 noundef 8) #31 ; 10 uses
  tail call void @rb_node_init(ptr noundef %i.n, i32 noundef range(i32 0, 115) 43) #31
  %i.o = getelementptr i8, ptr %i.n, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !57
  %i.p = load i32, ptr %i.l, align 4, !tbaa !51
  %i.q = sext i32 %i.p to i64
  %i.r = load i64, ptr %i.n, align 8, !tbaa !69
  %i.s = and i64 %i.r, 32767
  %i.t = shl nsw i64 %i.q, 15
  %i.u = or disjoint i64 %i.s, %i.t
  store i64 %i.u, ptr %i.n, align 8, !tbaa !69
  %i.v = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !217  ; 2 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !217
  %i.y = getelementptr i8, ptr %i.n, i64 24
  store i32 %i.w, ptr %i.y, align 8, !tbaa !218
  %i.z = getelementptr i8, ptr %i.n, i64 32
  store ptr %2, ptr %i.z, align 8, !tbaa !184
  %i.aa = getelementptr i8, ptr %i.n, i64 40
  store i64 1, ptr %i.aa, align 8, !tbaa !15
  %i.ab = getelementptr i8, ptr %i.n, i64 48
  store ptr null, ptr %i.ab, align 8, !tbaa !186
  %i.ac = getelementptr i8, ptr %.0.i10, i64 48
  store ptr %i.n, ptr %i.ac, align 8, !tbaa !186
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !186
  %i.ae = getelementptr i8, ptr %i.ad, i64 40
  store ptr %i.n, ptr %i.ae, align 8, !tbaa !15
  %i.af = getelementptr i8, ptr %.0.i, i64 16
  %i.ag = getelementptr i8, ptr %2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8
  store i64 %i.ah, ptr %i.af, align 8
  br label %bb.f

bb.e:                                             ; preds = %splat_array.exit
  %i.ai = tail call fastcc ptr @arg_append(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %list_append.exit
  %.0 = phi ptr [ %.0.i, %list_append.exit ], [ %i.ai, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @rest_arg_append(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %2, align 8, !tbaa !69
  %i.a = and i64 %.val, 32512
  %i.b = icmp eq i64 %i.a, 11008
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !69
  %i.c = and i64 %.val.i, 32512                   ; 2 uses
  %i.d = icmp eq i64 %i.c, 19968
  br i1 %i.d, label %bb.c, label %splat_array.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122  ; 2 uses
  %.0.val.pre.i = load i64, ptr %i.f, align 8, !tbaa !69
  %.pre.i = and i64 %.0.val.pre.i, 32512
  br label %splat_array.exit

splat_array.exit:                                 ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.c ], [ %i.c, %bb.b ]
  %.0.i = phi ptr [ %i.f, %bb.c ], [ %1, %bb.b ]  ; 5 uses
  %.not = icmp eq i64 %.pre-phi.i, 11008
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %splat_array.exit
  %i.g = getelementptr i8, ptr %.0.i, i64 48      ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  br label %bb.f
end_hunk_0
begin_hunk_1_@parser_yylex:bb.a
  br i1 %i.bco, label %bb.lq, label %.loopexit1289

.loopexit1943.a:                                  ; preds = %bb.lh, %bb.ky
  %i.bcp = phi ptr [ %i.bbh, %bb.ky ], [ %i.bbw, %bb.lh ] ; 2 uses
  %.1695.lcssa1710.a = phi i32 [ %.0694, %bb.ky ], [ 1, %bb.lh ]
  %i.bcq = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not846 = icmp ult ptr %i.bcp, %i.bcq
  br i1 %.not846, label %bb.lo, label %.loopexit1289

bb.lo:                                            ; preds = %.loopexit1943.a
  %i.bcr = load i8, ptr %i.bcp, align 1, !tbaa !15
  %i.bcs = icmp eq i8 %i.bcr, 124
  br i1 %i.bcs, label %bb.lq, label %.loopexit1289

.loopexit1944:                                    ; preds = %bb.lh, %bb.ky
  %i.bct = phi ptr [ %i.bbh, %bb.ky ], [ %i.bbw, %bb.lh ] ; 2 uses
  %.1695.lcssa1711 = phi i32 [ %.0694, %bb.ky ], [ 1, %bb.lh ] ; 3 uses
  %i.bcu = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not844 = icmp ult ptr %i.bct, %i.bcu
  br i1 %.not844, label %bb.lp, label %.loopexit1290

bb.lp:                                            ; preds = %.loopexit1944
  %i.bcv = load i8, ptr %i.bct, align 1, !tbaa !15
  %i.bcw = icmp eq i8 %i.bcv, 38
  br i1 %i.bcw, label %bb.lq, label %.loopexit1290

bb.lq:                                            ; preds = %.loopexit1941.a, %.loopexit1942.a, %bb.lo, %bb.lp
  %.16951714 = phi i32 [ %.1695.lcssa1708.a, %.loopexit1941.a ], [ %.1695.lcssa1709.a, %.loopexit1942.a ], [ %.1695.lcssa1710.a, %bb.lo ], [ %.1695.lcssa1711, %bb.lp ]
  %i.bcx = load i32, ptr %i.e, align 8
  %i.bcy = and i32 %i.bcx, -9
  store i32 %i.bcy, ptr %i.e, align 8
  %i.bcz = load ptr, ptr %i.aih, align 8, !tbaa !188 ; 2 uses
  %i.bda = getelementptr i8, ptr %i.bcz, i64 -1   ; 3 uses
  store ptr %i.bda, ptr %i.aih, align 8, !tbaa !188
  %i.bdb = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bdc = icmp ugt ptr %i.bda, %i.bdb
  br i1 %i.bdc, label %bb.lr, label %pushback.exit969

bb.lr:                                            ; preds = %bb.lq
  %i.bdd = load i8, ptr %i.bda, align 1, !tbaa !15
  %i.bde = icmp eq i8 %i.bdd, 10
  br i1 %i.bde, label %bb.ls, label %pushback.exit969

bb.ls:                                            ; preds = %bb.lr
  %i.bdf = getelementptr i8, ptr %i.bcz, i64 -2   ; 2 uses
  %i.bdg = load i8, ptr %i.bdf, align 1, !tbaa !15
  %i.bdh = icmp eq i8 %i.bdg, 13
  br i1 %i.bdh, label %bb.lt, label %pushback.exit969

bb.lt:                                            ; preds = %bb.ls
  store ptr %i.bdf, ptr %i.aih, align 8, !tbaa !188
  br label %pushback.exit969

pushback.exit969:                                 ; preds = %bb.lq, %bb.lr, %bb.ls, %bb.lt
  call fastcc void @parser_dispatch_delayed_token(ptr noundef nonnull %0, i32 noundef 351, i32 noundef 10603)
  br label %.backedge

.loopexit1290:                                    ; preds = %bb.lh, %bb.ky, %.loopexit1944, %bb.lp
  %i.bdi = phi i32 [ 1, %bb.lp ], [ 1, %.loopexit1944 ], [ 0, %bb.ky ], [ 0, %bb.lh ]
  %.16951713 = phi i32 [ %.1695.lcssa1711, %bb.lp ], [ %.1695.lcssa1711, %.loopexit1944 ], [ %.0694, %bb.ky ], [ 1, %bb.lh ]
  call fastcc void @parser_dispatch_delayed_token(ptr noundef nonnull %0, i32 noundef 351, i32 noundef 10609)
  %i.bdj = load ptr, ptr %i.aih, align 8, !tbaa !188 ; 4 uses
  %i.bdk = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not845 = icmp ult ptr %i.bdj, %i.bdk
  br i1 %.not845, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %.loopexit1290
  %i.bdl = load i8, ptr %i.bdj, align 1, !tbaa !15
  %i.bdm = icmp eq i8 %i.bdl, 46
  %i.bdn = zext i1 %i.bdm to i32
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %.loopexit1290
  %i.bdo = phi i32 [ 0, %.loopexit1290 ], [ %i.bdn, %bb.lu ]
  %i.bdp = icmp eq i32 %i.bdo, %i.bdi
  br i1 %i.bdp, label %bb.lw, label %.loopexit1289

bb.lw:                                            ; preds = %bb.lv
  %i.bdq = load i32, ptr %i.e, align 8
  %i.bdr = and i32 %i.bdq, -9
  store i32 %i.bdr, ptr %i.e, align 8
  %i.bds = getelementptr i8, ptr %i.bdj, i64 -1   ; 3 uses
  store ptr %i.bds, ptr %i.aih, align 8, !tbaa !188
  %i.bdt = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bdu = icmp ugt ptr %i.bds, %i.bdt
  br i1 %i.bdu, label %bb.lx, label %pushback.exit970

bb.lx:                                            ; preds = %bb.lw
  %i.bdv = load i8, ptr %i.bds, align 1, !tbaa !15
  %i.bdw = icmp eq i8 %i.bdv, 10
  br i1 %i.bdw, label %bb.ly, label %pushback.exit970

bb.ly:                                            ; preds = %bb.lx
  %i.bdx = getelementptr i8, ptr %i.bdj, i64 -2   ; 2 uses
  %i.bdy = load i8, ptr %i.bdx, align 1, !tbaa !15
  %i.bdz = icmp eq i8 %i.bdy, 13
  br i1 %i.bdz, label %bb.lz, label %pushback.exit970

bb.lz:                                            ; preds = %bb.ly
  store ptr %i.bdx, ptr %i.aih, align 8, !tbaa !188
  br label %pushback.exit970

pushback.exit970:                                 ; preds = %bb.lw, %bb.lx, %bb.ly, %bb.lz
  call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 324, i32 noundef 10612)
  br label %.backedge

.loopexit1289:                                    ; preds = %.loopexit1941.a, %.loopexit1942.a, %bb.lo, %.loopexit1943.a, %bb.lv, %bb.ky, %bb.la, %bb.lh, %bb.lj
  %i.bea = load i32, ptr %i.aio, align 4, !tbaa !29
  %i.beb = add i32 %i.bea, -1                     ; 3 uses
  store i32 %i.beb, ptr %i.aio, align 4, !tbaa !29
  %i.bec = load ptr, ptr %i.ais, align 8, !tbaa !189
  store ptr %i.bec, ptr %i.aim, align 8, !tbaa !528
  %i.bed = getelementptr i8, ptr %i.bat, i64 24
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !18 ; 2 uses
  store ptr %i.bee, ptr %i.ain, align 8, !tbaa !50
  %i.bef = getelementptr i8, ptr %i.bat, i64 16
  %i.beg = load i64, ptr %i.bef, align 8, !tbaa !23 ; 2 uses
  %i.beh = getelementptr i8, ptr %i.bee, i64 %i.beg ; 3 uses
  store ptr %i.beh, ptr %i.ail, align 8, !tbaa !426
  store ptr %i.bat, ptr %i.ais, align 8, !tbaa !189
  store ptr %i.beh, ptr %i.aih, align 8, !tbaa !188
  store ptr %i.beh, ptr %i.aij, align 8, !tbaa !49
  %i.bei = getelementptr i8, ptr %0, i64 8
  %i.bej = load ptr, ptr %i.bei, align 8, !tbaa !63 ; 4 uses
  %i.bek = trunc i64 %i.beg to i32                ; 2 uses
  store i32 %i.beb, ptr %i.bej, align 4, !tbaa !51
  %i.bel = getelementptr i8, ptr %i.bej, i64 4
  store i32 %i.bek, ptr %i.bel, align 4, !tbaa !54
  %i.bem = getelementptr i8, ptr %i.bej, i64 8
  store i32 %i.beb, ptr %i.bem, align 4, !tbaa !55
  %i.ben = getelementptr i8, ptr %i.bej, i64 12
  store i32 %i.bek, ptr %i.ben, align 4, !tbaa !56
  br label %.loopexit1297

.loopexit1939:                                    ; preds = %.critedge.i960.peel
  %i.beo = icmp eq i32 %.0694, 0
  br i1 %i.beo, label %bb.ma, label %.loopexit1939.thread

.loopexit1939.thread:                             ; preds = %.critedge.i960, %.loopexit1939
  call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 324, i32 noundef 10623)
  %i.bep = load ptr, ptr %i.ail, align 8, !tbaa !426
  store ptr %i.bep, ptr %i.aih, align 8, !tbaa !188
  br label %.loopexit1297

bb.ma:                                            ; preds = %.loopexit1939
  %i.beq = load ptr, ptr %i.ail, align 8, !tbaa !426
  store ptr %i.beq, ptr %i.aih, align 8, !tbaa !188
  br label %.loopexit1297

.loopexit1297:                                    ; preds = %bb.le, %bb.ma, %.loopexit1939.thread, %.loopexit1289
  %i.ber = load i32, ptr %i.e, align 8            ; 2 uses
  %i.bes = or i32 %i.ber, 4
  store i32 %i.bes, ptr %i.e, align 8
  %i.bet = and i32 %i.ber, 32
  %.not.i971 = icmp eq i32 %i.bet, 0
  br i1 %.not.i971, label %parser_set_lex_state.exit, label %bb.mb

bb.mb:                                            ; preds = %.loopexit1297
  %i.beu = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bev = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.beu, i32 noundef 1, i32 noundef 10635) ; 0 uses
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %.loopexit1297, %bb.mb
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.mc:                                            ; preds = %bb.hw
  %i.bew = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 4 uses
  switch i32 %i.bew, label %bb.mn [
    i32 42, label %bb.md
    i32 61, label %bb.ml
  ]

bb.md:                                            ; preds = %bb.mc
  %i.bex = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 4 uses
  %i.bey = icmp eq i32 %i.bex, 61
  br i1 %i.bey, label %bb.me, label %bb.mg

bb.me:                                            ; preds = %bb.md
  %i.bez = load ptr, ptr %0, align 8, !tbaa !62
  store i64 134, ptr %i.bez, align 8, !tbaa !15
  %i.bfa = load i32, ptr %i.e, align 8
  %i.bfb = and i32 %i.bfa, 32
  %.not.i972 = icmp eq i32 %i.bfb, 0
  br i1 %.not.i972, label %parser_set_lex_state.exit973, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bfc = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bfd = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bfc, i32 noundef 1, i32 noundef 10642) ; 0 uses
  br label %parser_set_lex_state.exit973

parser_set_lex_state.exit973:                     ; preds = %bb.me, %bb.mf
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.mg:                                            ; preds = %bb.md
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bex)
  %i.bfe = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.bff = and i32 %i.bfe, 48
  %i.bfg = icmp ne i32 %i.bff, 0
  %3 = icmp ne i32 %.0694, 0                      ; 2 uses
  %or.cond5 = select i1 %i.bfg, i1 %3, i1 false
  br i1 %or.cond5, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  switch i32 %i.bex, label %.sink.split [
    i32 32, label %bb.mi
    i32 13, label %bb.mi
    i32 12, label %bb.mi
    i32 11, label %bb.mi
    i32 10, label %bb.mi
    i32 9, label %bb.mi
  ]

bb.mi:                                            ; preds = %bb.mh, %bb.mh, %bb.mh, %bb.mh, %bb.mh, %bb.mh, %bb.mg
  %i.bfh = and i32 %i.bfe, 577
  %.not838 = icmp ne i32 %i.bfh, 0
  %i.bfi = and i32 %i.bfe, 2064
  %i.bfj = icmp eq i32 %i.bfi, 2064
  %or.cond856 = or i1 %.not838, %i.bfj
  br i1 %or.cond856, label %bb.ms, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bfk = and i32 %i.aiz, 904
  %i.bfl = icmp eq i32 %i.bfk, 0
  %or.cond7 = select i1 %i.bfl, i1 %3, i1 false
  br i1 %or.cond7, label %bb.mk, label %bb.ms

bb.mk:                                            ; preds = %bb.mj
  switch i32 %i.bex, label %.sink.split.sink.split [
    i32 32, label %bb.ms
    i32 13, label %bb.ms
    i32 12, label %bb.ms
    i32 11, label %bb.ms
    i32 10, label %bb.ms
    i32 9, label %bb.ms
  ]

bb.ml:                                            ; preds = %bb.mc
  %i.bfm = load ptr, ptr %0, align 8, !tbaa !62
  store i64 42, ptr %i.bfm, align 8, !tbaa !15
  %i.bfn = load i32, ptr %i.e, align 8
  %i.bfo = and i32 %i.bfn, 32
  %.not.i975 = icmp eq i32 %i.bfo, 0
  br i1 %.not.i975, label %parser_set_lex_state.exit976, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.bfp = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bfq = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bfp, i32 noundef 1, i32 noundef 10660) ; 0 uses
  br label %parser_set_lex_state.exit976

parser_set_lex_state.exit976:                     ; preds = %bb.ml, %bb.mm
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.mn:                                            ; preds = %bb.mc
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bew)
  %i.bfr = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.bfs = and i32 %i.bfr, 48
  %i.bft = icmp ne i32 %i.bfs, 0
  %4 = icmp ne i32 %.0694, 0                      ; 2 uses
  %or.cond9 = select i1 %i.bft, i1 %4, i1 false
  br i1 %or.cond9, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  switch i32 %i.bew, label %.sink.split [
    i32 32, label %bb.mp
    i32 13, label %bb.mp
    i32 12, label %bb.mp
    i32 11, label %bb.mp
    i32 10, label %bb.mp
    i32 9, label %bb.mp
  ]

bb.mp:                                            ; preds = %bb.mo, %bb.mo, %bb.mo, %bb.mo, %bb.mo, %bb.mo, %bb.mn
  %i.bfu = and i32 %i.bfr, 577
  %.not835 = icmp ne i32 %i.bfu, 0
  %i.bfv = and i32 %i.bfr, 2064
  %i.bfw = icmp eq i32 %i.bfv, 2064
  %or.cond858 = or i1 %.not835, %i.bfw
  br i1 %or.cond858, label %bb.ms, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.bfx = and i32 %i.aiz, 904
  %i.bfy = icmp eq i32 %i.bfx, 0
  %or.cond11 = select i1 %i.bfy, i1 %4, i1 false
  br i1 %or.cond11, label %bb.mr, label %bb.ms

bb.mr:                                            ; preds = %bb.mq
  switch i32 %i.bew, label %.sink.split.sink.split [
    i32 32, label %bb.ms
    i32 13, label %bb.ms
    i32 12, label %bb.ms
    i32 11, label %bb.ms
    i32 10, label %bb.ms
    i32 9, label %bb.ms
  ]

.sink.split.sink.split:                           ; preds = %bb.mr, %bb.mk
  %.str.771.sink = phi ptr [ @.str.771, %bb.mk ], [ @.str.774, %bb.mr ]
  %.0689.ph.ph = phi i32 [ 134, %bb.mk ], [ 42, %bb.mr ]
  %i.bfz = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bga = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bfz, i32 noundef %i.bga, ptr noundef nonnull %.str.771.sink) #31
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.mo, %bb.mh
  %.str.772.sink = phi ptr [ @.str.770, %bb.mh ], [ @.str.773, %bb.mo ], [ @.str.772, %.sink.split.sink.split ]
  %.0689.ph = phi i32 [ 334, %bb.mh ], [ 333, %bb.mo ], [ %.0689.ph.ph, %.sink.split.sink.split ]
  %i.bgb = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bgc = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bgb, i32 noundef %i.bgc, ptr noundef nonnull %.str.772.sink) #31
  br label %bb.ms

bb.ms:                                            ; preds = %.sink.split, %bb.mr, %bb.mr, %bb.mr, %bb.mr, %bb.mr, %bb.mr, %bb.mk, %bb.mk, %bb.mk, %bb.mk, %bb.mk, %bb.mk, %bb.mq, %bb.mp, %bb.mj, %bb.mi
  %.0689 = phi i32 [ 42, %bb.mr ], [ 334, %bb.mi ], [ 42, %bb.mr ], [ 134, %bb.mj ], [ 333, %bb.mp ], [ 42, %bb.mr ], [ 134, %bb.mk ], [ 42, %bb.mr ], [ 42, %bb.mr ], [ 42, %bb.mq ], [ 134, %bb.mk ], [ 134, %bb.mk ], [ 134, %bb.mk ], [ 134, %bb.mk ], [ 134, %bb.mk ], [ 42, %bb.mr ], [ %.0689.ph, %.sink.split ]
  %i.bgd = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bge = and i32 %i.bgd, 384
  %.not840 = icmp eq i32 %i.bge, 0
  %i.bgf = select i1 %.not840, i32 1, i32 16      ; 2 uses
  %i.bgg = load i32, ptr %i.e, align 8
  %i.bgh = and i32 %i.bgg, 32
  %.not.i979 = icmp eq i32 %i.bgh, 0
  br i1 %.not.i979, label %parser_set_lex_state.exit980, label %bb.mt

bb.mt:                                            ; preds = %bb.ms
  %i.bgi = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bgd, i32 noundef %i.bgf, i32 noundef 10675) ; 0 uses
  br label %parser_set_lex_state.exit980

parser_set_lex_state.exit980:                     ; preds = %bb.ms, %bb.mt
  store i32 %i.bgf, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.mu:                                            ; preds = %bb.hw
  %i.bgj = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  %i.bgk = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.bgl = and i32 %i.bgk, 384
  %.not833 = icmp eq i32 %i.bgl, 0
  %i.bgm = load i32, ptr %i.e, align 8
  %i.bgn = and i32 %i.bgm, 32
  %.not.i983 = icmp eq i32 %i.bgn, 0              ; 2 uses
  br i1 %.not833, label %bb.mx, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  br i1 %.not.i983, label %parser_set_lex_state.exit982, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.bgo = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bgk, i32 noundef 16, i32 noundef 10681) ; 0 uses
  br label %parser_set_lex_state.exit982

parser_set_lex_state.exit982:                     ; preds = %bb.mv, %bb.mw
  store i32 16, ptr %i.aik, align 8, !tbaa !67
  switch i32 %i.bgj, label %bb.nb [
    i32 64, label %pushback.exit1038
    i32 61, label %bb.mz
    i32 126, label %bb.na
  ]

bb.mx:                                            ; preds = %bb.mu
  br i1 %.not.i983, label %parser_set_lex_state.exit984, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.bgp = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bgk, i32 noundef 1, i32 noundef 10687) ; 0 uses
  br label %parser_set_lex_state.exit984

parser_set_lex_state.exit984:                     ; preds = %bb.mx, %bb.my
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  switch i32 %i.bgj, label %bb.nb [
    i32 61, label %bb.mz
    i32 126, label %bb.na
  ]

bb.mz:                                            ; preds = %parser_set_lex_state.exit982, %parser_set_lex_state.exit984
  br label %pushback.exit1038

bb.na:                                            ; preds = %parser_set_lex_state.exit982, %parser_set_lex_state.exit984
  br label %pushback.exit1038

bb.nb:                                            ; preds = %parser_set_lex_state.exit982, %parser_set_lex_state.exit984
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bgj)
  br label %pushback.exit1038

bb.nc:                                            ; preds = %bb.hw
  %i.bgq = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bgr = icmp eq ptr %i.ajg, %i.bgq
  br i1 %i.bgr, label %bb.nd, label %word_match_p.exit.thread

bb.nd:                                            ; preds = %bb.nc
  %i.bgs = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ajh, ptr noundef nonnull dereferenceable(6) @.str.29, i64 noundef 5) #35
  %.not.i985 = icmp eq i32 %i.bgs, 0
  br i1 %.not.i985, label %bb.ne, label %word_match_p.exit.thread

bb.ne:                                            ; preds = %bb.nd
  %i.bgt = getelementptr i8, ptr %i.ajg, i64 6    ; 2 uses
  %i.bgu = load ptr, ptr %i.ail, align 8, !tbaa !426 ; 2 uses
  %.not11.i = icmp ult ptr %i.bgt, %i.bgu
  br i1 %.not11.i, label %bb.nf, label %.critedge.i988.peel

bb.nf:                                            ; preds = %bb.ne
  %i.bgv = load i8, ptr %i.bgt, align 1, !tbaa !15
  switch i8 %i.bgv, label %word_match_p.exit.thread [
    i8 32, label %.critedge.i988.peel
    i8 13, label %.critedge.i988.peel
    i8 12, label %.critedge.i988.peel
    i8 11, label %.critedge.i988.peel
    i8 10, label %.critedge.i988.peel
    i8 9, label %.critedge.i988.peel
    i8 0, label %.critedge.i988.peel
    i8 4, label %.critedge.i988.peel
    i8 26, label %.critedge.i988.peel
  ]

.critedge.i988.peel:                              ; preds = %bb.nf, %bb.nf, %bb.nf, %bb.nf, %bb.nf, %bb.nf, %bb.nf, %bb.nf, %bb.nf, %bb.ne
  store ptr %i.bgu, ptr %i.aih, align 8, !tbaa !188
  call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 353, i32 noundef 10705)
  %i.bgw = load ptr, ptr %i.ail, align 8, !tbaa !426
  store ptr %i.bgw, ptr %i.aih, align 8, !tbaa !188
  %i.bgx = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i989.peel = icmp eq i32 %i.bgx, 0
  br i1 %.not14.i989.peel, label %bb.ng, label %.thread1189

bb.ng:                                            ; preds = %.critedge.i988.peel
  %.pre.i992.peel = load ptr, ptr %i.aih, align 8, !tbaa !188 ; 7 uses
  %i.bgy = getelementptr i8, ptr %.pre.i992.peel, i64 1 ; 7 uses
  store ptr %i.bgy, ptr %i.aih, align 8, !tbaa !188
  %i.bgz = load i8, ptr %.pre.i992.peel, align 1, !tbaa !15
  switch i8 %i.bgz, label %.split704.peel [
    i8 13, label %bb.nj
    i8 61, label %sub_0.peel
  ], !prof !602

sub_0.peel:                                       ; preds = %bb.ng
  %i.bha = load i8, ptr %i.bgy, align 1
  %.not1659.peel.a = icmp eq i8 %i.bha, 101
  br i1 %.not1659.peel.a, label %sub_1.peel, label %.split705.peel

sub_1.peel:                                       ; preds = %sub_0.peel
  %i.bhb = getelementptr i8, ptr %.pre.i992.peel, i64 2
  %i.bhc = load i8, ptr %i.bhb, align 1
  %.not1660.peel = icmp eq i8 %i.bhc, 110
  br i1 %.not1660.peel, label %.tail.peel, label %.split705.peel

.tail.peel:                                       ; preds = %sub_1.peel
  %i.bhd = getelementptr i8, ptr %.pre.i992.peel, i64 3
  %i.bhe = load i8, ptr %i.bhd, align 1
  %i.bhf = icmp eq i8 %i.bhe, 100
  br i1 %i.bhf, label %bb.nh, label %.split705.peel

bb.nh:                                            ; preds = %.tail.peel
  %i.bhg = getelementptr i8, ptr %.pre.i992.peel, i64 4 ; 2 uses
  %i.bhh = load ptr, ptr %i.ail, align 8, !tbaa !426 ; 11 uses
  %.not11.i999.peel = icmp ult ptr %i.bhg, %i.bhh
  br i1 %.not11.i999.peel, label %bb.ni, label %.loopexit1936

bb.ni:                                            ; preds = %bb.nh
  %i.bhi = load i8, ptr %i.bhg, align 1, !tbaa !15
  switch i8 %i.bhi, label %.split705.peel [
    i8 32, label %.loopexit1936
    i8 13, label %.loopexit1936
    i8 12, label %.loopexit1936
    i8 11, label %.loopexit1936
end_hunk_1
begin_hunk_2_@parser_yylex:bb.a
  %i.bhv = and i32 %i.bhu, 8
  %.not13.i994 = icmp eq i32 %i.bhv, 0
  br i1 %.not13.i994, label %bb.nm, label %.critedge.i988, !prof !527

bb.nm:                                            ; preds = %bb.nl
  %i.bhw = load ptr, ptr %i.aim, align 8, !tbaa !528
  %i.bhx = icmp ugt ptr %i.bhw, inttoptr (i64 1 to ptr)
  br i1 %i.bhx, label %.critedge.i988, label %bb.nn, !prof !205

.critedge.i988:                                   ; preds = %bb.nm, %bb.nl, %pushback.exit996
  %i.bhy = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i989 = icmp eq i32 %i.bhy, 0
  br i1 %.not14.i989, label %.critedge._crit_edge.i991, label %.thread1189

.critedge._crit_edge.i991:                        ; preds = %.critedge.i988
  %.pre.i992 = load ptr, ptr %i.aih, align 8, !tbaa !188
  br label %bb.nn

bb.nn:                                            ; preds = %.critedge._crit_edge.i991, %bb.nm
  %i.bhz = phi ptr [ %.pre.i992, %.critedge._crit_edge.i991 ], [ %.pre1971.a, %bb.nm ] ; 11 uses
  %i.bia = getelementptr i8, ptr %i.bhz, i64 1    ; 7 uses
  store ptr %i.bia, ptr %i.aih, align 8, !tbaa !188
  %i.bib = load i8, ptr %i.bhz, align 1, !tbaa !15
  switch i8 %i.bib, label %.split704 [
    i8 13, label %bb.no
    i8 61, label %sub_0
  ], !prof !602

bb.no:                                            ; preds = %bb.nn
  %i.bic = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i.i993 = icmp ult ptr %i.bia, %i.bic
  br i1 %.not.i.i993, label %bb.np, label %.split704

bb.np:                                            ; preds = %bb.no
  %i.bid = load i8, ptr %i.bia, align 1, !tbaa !15
  %i.bie = icmp eq i8 %i.bid, 10
  %i.bif = getelementptr i8, ptr %i.bhz, i64 2
  %spec.select2537 = select i1 %i.bie, ptr %i.bif, ptr %i.bia
  br label %.split704

.thread1189:                                      ; preds = %.critedge.i988.peel, %.critedge.i988
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.775)
  br label %pushback.exit1038

.split704:                                        ; preds = %bb.np, %bb.nn, %bb.no
  %i.big = phi ptr [ %i.bia, %bb.nn ], [ %i.bia, %bb.no ], [ %spec.select2537, %bb.np ] ; 3 uses
  %i.bih = load i32, ptr %i.e, align 8
  %i.bii = and i32 %i.bih, -9
  store i32 %i.bii, ptr %i.e, align 8
  %i.bij = getelementptr i8, ptr %i.big, i64 -1   ; 3 uses
  store ptr %i.bij, ptr %i.aih, align 8, !tbaa !188
  %i.bik = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bil = icmp ugt ptr %i.bij, %i.bik
  br i1 %i.bil, label %bb.nq, label %pushback.exit996.backedge

bb.nq:                                            ; preds = %.split704
  %i.bim = load i8, ptr %i.bij, align 1, !tbaa !15
  %i.bin = icmp eq i8 %i.bim, 10
  br i1 %i.bin, label %bb.nr, label %pushback.exit996.backedge

bb.nr:                                            ; preds = %bb.nq
  %i.bio = getelementptr i8, ptr %i.big, i64 -2
  %i.bip = load i8, ptr %i.bio, align 1, !tbaa !15
  %i.biq = icmp eq i8 %i.bip, 13
  br i1 %i.biq, label %pushback.exit996.sink.split.split.loop.exit3624, label %pushback.exit996.backedge

sub_0:                                            ; preds = %bb.nn
  %i.bir = load i8, ptr %i.bia, align 1
  %.not1659.a = icmp eq i8 %i.bir, 101
  br i1 %.not1659.a, label %sub_1, label %.split705

sub_1:                                            ; preds = %sub_0
  %i.bis = getelementptr i8, ptr %i.bhz, i64 2
  %i.bit = load i8, ptr %i.bis, align 1
  %.not1660 = icmp eq i8 %i.bit, 110
  br i1 %.not1660, label %.tail, label %.split705

.tail:                                            ; preds = %sub_1
  %i.biu = getelementptr i8, ptr %i.bhz, i64 3
  %i.biv = load i8, ptr %i.biu, align 1
  %i.biw = icmp eq i8 %i.biv, 100
  br i1 %i.biw, label %bb.ns, label %.split705

bb.ns:                                            ; preds = %.tail
  %i.bix = getelementptr i8, ptr %i.bhz, i64 4    ; 2 uses
  %i.biy = load ptr, ptr %i.ail, align 8, !tbaa !426 ; 11 uses
  %.not11.i999 = icmp ult ptr %i.bix, %i.biy
  br i1 %.not11.i999, label %bb.nt, label %.loopexit1936

bb.nt:                                            ; preds = %bb.ns
  %i.biz = load i8, ptr %i.bix, align 1, !tbaa !15
  switch i8 %i.biz, label %.split705 [
    i8 32, label %.loopexit1936
    i8 13, label %.loopexit1936
    i8 12, label %.loopexit1936
    i8 11, label %.loopexit1936
    i8 10, label %.loopexit1936
    i8 9, label %.loopexit1936
    i8 0, label %.loopexit1936
    i8 4, label %.loopexit1936
    i8 26, label %.loopexit1936
  ]

.split705:                                        ; preds = %sub_1, %sub_0, %bb.nt, %.tail
  %i.bja = load i32, ptr %i.e, align 8
  %i.bjb = and i32 %i.bja, -9
  store i32 %i.bjb, ptr %i.e, align 8
  store ptr %i.bhz, ptr %i.aih, align 8, !tbaa !188
  %i.bjc = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bjd = icmp ugt ptr %i.bhz, %i.bjc
  br i1 %i.bjd, label %bb.nu, label %pushback.exit996.backedge

bb.nu:                                            ; preds = %.split705
  %i.bje = load i8, ptr %i.bhz, align 1, !tbaa !15
  %i.bjf = icmp eq i8 %i.bje, 10
  br i1 %i.bjf, label %bb.nv, label %pushback.exit996.backedge

bb.nv:                                            ; preds = %bb.nu
  %i.bjg = getelementptr i8, ptr %i.bhz, i64 -1
  %i.bjh = load i8, ptr %i.bjg, align 1, !tbaa !15
  %i.bji = icmp eq i8 %i.bjh, 13
  br i1 %i.bji, label %pushback.exit996.sink.split.split.loop.exit, label %pushback.exit996.backedge

pushback.exit996.backedge:                        ; preds = %bb.nv, %bb.nu, %.split705, %bb.nr, %bb.nq, %.split704
  br label %pushback.exit996, !llvm.loop !603

pushback.exit996.sink.split.split.loop.exit:      ; preds = %bb.nv
  %i.bjj = getelementptr i8, ptr %i.bhz, i64 -1
  br label %pushback.exit996.sink.split

pushback.exit996.sink.split.split.loop.exit3624:  ; preds = %bb.nr
  %i.bjk = getelementptr i8, ptr %i.big, i64 -2
  br label %pushback.exit996.sink.split

pushback.exit996.sink.split:                      ; preds = %pushback.exit996.sink.split.split.loop.exit3624, %pushback.exit996.sink.split.split.loop.exit
  %.sink2538 = phi ptr [ %i.bjj, %pushback.exit996.sink.split.split.loop.exit ], [ %i.bjk, %pushback.exit996.sink.split.split.loop.exit3624 ]
  br label %pushback.exit996.sink.split2965, !llvm.loop !603

.loopexit1936:                                    ; preds = %bb.ns, %bb.nt, %bb.nt, %bb.nt, %bb.nt, %bb.nt, %bb.nt, %bb.nt, %bb.nt, %bb.nt, %bb.ni, %bb.ni, %bb.ni, %bb.ni, %bb.ni, %bb.ni, %bb.ni, %bb.ni, %bb.ni, %bb.nh
  %i.bjl = phi ptr [ %i.bhh, %bb.nh ], [ %i.bhh, %bb.ni ], [ %i.bhh, %bb.ni ], [ %i.bhh, %bb.ni ], [ %i.bhh, %bb.ni ], [ %i.bhh, %bb.ni ], [ %i.bhh, %bb.ni ], [ %i.bhh, %bb.ni ], [ %i.bhh, %bb.ni ], [ %i.bhh, %bb.ni ], [ %i.biy, %bb.nt ], [ %i.biy, %bb.nt ], [ %i.biy, %bb.nt ], [ %i.biy, %bb.nt ], [ %i.biy, %bb.nt ], [ %i.biy, %bb.nt ], [ %i.biy, %bb.nt ], [ %i.biy, %bb.nt ], [ %i.biy, %bb.nt ], [ %i.biy, %bb.ns ]
  store ptr %i.bjl, ptr %i.aih, align 8, !tbaa !188
  call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 355, i32 noundef 10723)
  br label %.backedge

word_match_p.exit.thread:                         ; preds = %bb.nf, %bb.nd, %bb.nc
  %i.bjm = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bjn = and i32 %i.bjm, 384
  %.not829 = icmp eq i32 %i.bjn, 0
  %i.bjo = select i1 %.not829, i32 1, i32 16      ; 2 uses
  %i.bjp = load i32, ptr %i.e, align 8
  %i.bjq = and i32 %i.bjp, 32
  %.not.i1002 = icmp eq i32 %i.bjq, 0
  br i1 %.not.i1002, label %parser_set_lex_state.exit1003, label %bb.nw

bb.nw:                                            ; preds = %word_match_p.exit.thread
  %i.bjr = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bjm, i32 noundef %i.bjo, i32 noundef 10728) ; 0 uses
  br label %parser_set_lex_state.exit1003

parser_set_lex_state.exit1003:                    ; preds = %word_match_p.exit.thread, %bb.nw
  store i32 %i.bjo, ptr %i.aik, align 8, !tbaa !67
  %i.bjs = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  switch i32 %i.bjs, label %bb.oa [
    i32 61, label %bb.nx
    i32 126, label %pushback.exit1038
    i32 62, label %bb.nz
  ]

bb.nx:                                            ; preds = %parser_set_lex_state.exit1003
  %i.bjt = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.bju = icmp eq i32 %i.bjt, 61
  br i1 %i.bju, label %pushback.exit1038, label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bjt)
  br label %pushback.exit1038

bb.nz:                                            ; preds = %parser_set_lex_state.exit1003
  br label %pushback.exit1038

bb.oa:                                            ; preds = %parser_set_lex_state.exit1003
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bjs)
  br label %pushback.exit1038

bb.ob:                                            ; preds = %bb.hw
  %i.bjv = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  %i.bjw = icmp eq i32 %i.bjv, 60                 ; 2 uses
  %.pre1966.a = load i32, ptr %i.aik, align 8, !tbaa !67 ; 5 uses
  %i.bjx = and i32 %.pre1966.a, 782
  %or.cond859 = icmp eq i32 %i.bjx, 0
  %or.cond2539 = select i1 %i.bjw, i1 %or.cond859, i1 false
  br i1 %or.cond2539, label %bb.oc, label %bb.of

bb.oc:                                            ; preds = %bb.ob
  %i.bjy = and i32 %.pre1966.a, 48
  %.not823 = icmp eq i32 %i.bjy, 0
  br i1 %.not823, label %bb.oe, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.bjz = and i32 %.pre1966.a, 2048
  %i.bka = icmp ne i32 %i.bjz, 0
  %5 = icmp ne i32 %.0694, 0
  %or.cond13 = select i1 %i.bka, i1 true, i1 %5
  br i1 %or.cond13, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %bb.od, %bb.oc
  %i.bkb = call fastcc i32 @heredoc_identifier(ptr noundef nonnull %0) ; 2 uses
  %.not824 = icmp eq i32 %i.bkb, 0
  %i.bkc = call i32 @llvm.smax.i32(i32 %i.bkb, i32 0)
  br i1 %.not824, label %._crit_edge, label %pushback.exit1038

._crit_edge:                                      ; preds = %bb.oe
  %.pre1965 = load i32, ptr %i.aik, align 8, !tbaa !67
  br label %bb.of

bb.of:                                            ; preds = %._crit_edge, %bb.od, %bb.ob
  %i.bkd = phi i32 [ %.pre1965, %._crit_edge ], [ %.pre1966.a, %bb.od ], [ %.pre1966.a, %bb.ob ] ; 4 uses
  %i.bke = and i32 %i.bkd, 384
  %.not825 = icmp eq i32 %i.bke, 0
  br i1 %.not825, label %bb.oi, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.bkf = load i32, ptr %i.e, align 8
  %i.bkg = and i32 %i.bkf, 32
  %.not.i1004 = icmp eq i32 %i.bkg, 0
  br i1 %.not.i1004, label %parser_set_lex_state.exit1005, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.bkh = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bkd, i32 noundef 16, i32 noundef 10755) ; 0 uses
  br label %parser_set_lex_state.exit1005

bb.oi:                                            ; preds = %bb.of
  %i.bki = and i32 %i.bkd, 512
  %.not826 = icmp eq i32 %i.bki, 0
  %.pre1967 = load i32, ptr %i.e, align 8         ; 2 uses
  br i1 %.not826, label %bb.ok, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.bkj = or i32 %.pre1967, 4                    ; 2 uses
  store i32 %i.bkj, ptr %i.e, align 8
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.oi
  %i.bkk = phi i32 [ %i.bkj, %bb.oj ], [ %.pre1967, %bb.oi ]
  %i.bkl = and i32 %i.bkk, 32
  %.not.i1006 = icmp eq i32 %i.bkl, 0
  br i1 %.not.i1006, label %parser_set_lex_state.exit1005, label %bb.ol

bb.ol:                                            ; preds = %bb.ok
  %i.bkm = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bkd, i32 noundef 1, i32 noundef 10760) ; 0 uses
  br label %parser_set_lex_state.exit1005

parser_set_lex_state.exit1005:                    ; preds = %bb.ol, %bb.ok, %bb.oh, %bb.og
  %storemerge1261 = phi i32 [ 16, %bb.oh ], [ 16, %bb.og ], [ 1, %bb.ok ], [ 1, %bb.ol ]
  store i32 %storemerge1261, ptr %i.aik, align 8, !tbaa !67
  %i.bkn = icmp eq i32 %i.bjv, 61
  br i1 %i.bkn, label %bb.om, label %bb.oo

bb.om:                                            ; preds = %parser_set_lex_state.exit1005
  %i.bko = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.bkp = icmp eq i32 %i.bko, 62
  br i1 %i.bkp, label %pushback.exit1038, label %bb.on

bb.on:                                            ; preds = %bb.om
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bko)
  br label %pushback.exit1038

bb.oo:                                            ; preds = %parser_set_lex_state.exit1005
  br i1 %i.bjw, label %bb.op, label %bb.ov

bb.op:                                            ; preds = %bb.oo
  %i.bkq = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  %i.bkr = icmp eq i32 %i.bkq, 61
  br i1 %i.bkr, label %bb.oq, label %bb.os

bb.oq:                                            ; preds = %bb.op
  %i.bks = load ptr, ptr %0, align 8, !tbaa !62
  store i64 136, ptr %i.bks, align 8, !tbaa !15
  %i.bkt = load i32, ptr %i.e, align 8
  %i.bku = and i32 %i.bkt, 32
  %.not.i1008 = icmp eq i32 %i.bku, 0
  br i1 %.not.i1008, label %parser_set_lex_state.exit1009, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.bkv = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bkw = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bkv, i32 noundef 1, i32 noundef 10772) ; 0 uses
  br label %parser_set_lex_state.exit1009

parser_set_lex_state.exit1009:                    ; preds = %bb.oq, %bb.or
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.os:                                            ; preds = %bb.op
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bkq)
  %i.bkx = and i32 %i.aiz, 904
  %i.bky = icmp eq i32 %i.bkx, 0
  %6 = icmp ne i32 %.0694, 0
  %or.cond15 = select i1 %i.bky, i1 %6, i1 false
  br i1 %or.cond15, label %bb.ot, label %pushback.exit1038

bb.ot:                                            ; preds = %bb.os
  switch i32 %i.bkq, label %bb.ou [
    i32 32, label %pushback.exit1038
    i32 13, label %pushback.exit1038
    i32 12, label %pushback.exit1038
    i32 11, label %pushback.exit1038
    i32 10, label %pushback.exit1038
    i32 9, label %pushback.exit1038
  ]

bb.ou:                                            ; preds = %bb.ot
  %i.bkz = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bla = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bkz, i32 noundef %i.bla, ptr noundef nonnull @.str.776) #31
  %i.blb = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.blc = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.blb, i32 noundef %i.blc, ptr noundef nonnull @.str.777) #31
  br label %pushback.exit1038

bb.ov:                                            ; preds = %bb.oo
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bjv)
  br label %pushback.exit1038

bb.ow:                                            ; preds = %bb.hw
  %i.bld = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.ble = and i32 %i.bld, 384
  %.not820 = icmp eq i32 %i.ble, 0
  %i.blf = select i1 %.not820, i32 1, i32 16      ; 2 uses
  %i.blg = load i32, ptr %i.e, align 8
  %i.blh = and i32 %i.blg, 32
  %.not.i1011 = icmp eq i32 %i.blh, 0
  br i1 %.not.i1011, label %parser_set_lex_state.exit1012, label %bb.ox

bb.ox:                                            ; preds = %bb.ow
  %i.bli = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bld, i32 noundef %i.blf, i32 noundef 10782) ; 0 uses
  br label %parser_set_lex_state.exit1012

parser_set_lex_state.exit1012:                    ; preds = %bb.ow, %bb.ox
  store i32 %i.blf, ptr %i.aik, align 8, !tbaa !67
  %i.blj = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  switch i32 %i.blj, label %bb.pc [
    i32 61, label %pushback.exit1038
    i32 62, label %bb.oy
  ]

bb.oy:                                            ; preds = %parser_set_lex_state.exit1012
  %i.blk = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.bll = icmp eq i32 %i.blk, 61
  br i1 %i.bll, label %bb.oz, label %bb.pb

bb.oz:                                            ; preds = %bb.oy
  %i.blm = load ptr, ptr %0, align 8, !tbaa !62
  store i64 137, ptr %i.blm, align 8, !tbaa !15
  %i.bln = load i32, ptr %i.e, align 8
  %i.blo = and i32 %i.bln, 32
  %.not.i1013 = icmp eq i32 %i.blo, 0
  br i1 %.not.i1013, label %parser_set_lex_state.exit1014, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.blp = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.blq = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.blp, i32 noundef 1, i32 noundef 10789) ; 0 uses
  br label %parser_set_lex_state.exit1014

parser_set_lex_state.exit1014:                    ; preds = %bb.oz, %bb.pa
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.pb:                                            ; preds = %bb.oy
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.blk)
  br label %pushback.exit1038

bb.pc:                                            ; preds = %parser_set_lex_state.exit1012
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.blj)
  br label %pushback.exit1038

bb.pd:                                            ; preds = %bb.hw
  %i.blr = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bls = and i32 %i.blr, 1032
  %i.blt = icmp eq i32 %i.bls, 0
  %7 = icmp ne i32 %.0697, 0
  %or.cond17 = select i1 %i.blt, i1 true, i1 %7
  %i.blu = and i32 %i.blr, 48
  %.not819 = icmp eq i32 %i.blu, 0
  %i.blv = select i1 %or.cond17, i1 %.not819, i1 false
  %i.blw = select i1 %i.blv, i32 2, i32 66
  %i.blx = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.bly = getelementptr inbounds nuw i8, ptr %i.blx, i64 16
  store i32 %i.blw, ptr %i.bly, align 8, !tbaa !15
  %i.blz = getelementptr inbounds nuw i8, ptr %i.blx, i64 24
  store i32 34, ptr %i.blz, align 8, !tbaa !15
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blx, i64 20
  store i32 0, ptr %i.bma, align 4, !tbaa !15
  store ptr %i.blx, ptr %i.g, align 8, !tbaa !178
  %i.bmb = load ptr, ptr %i.aih, align 8, !tbaa !188
  %i.bmc = getelementptr i8, ptr %i.bmb, i64 -1
  store ptr %i.bmc, ptr %i.aij, align 8, !tbaa !49
  br label %pushback.exit1038

bb.pe:                                            ; preds = %bb.hw
  %i.bmd = load i32, ptr %i.aik, align 8, !tbaa !67 ; 5 uses
  %i.bme = and i32 %i.bmd, 128
  %.not816 = icmp eq i32 %i.bme, 0
  br i1 %.not816, label %bb.ph, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.bmf = load i32, ptr %i.e, align 8
  %i.bmg = and i32 %i.bmf, 32
  %.not.i1015 = icmp eq i32 %i.bmg, 0
  br i1 %.not.i1015, label %parser_set_lex_state.exit1016, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.bmh = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmd, i32 noundef 8, i32 noundef 10806) ; 0 uses
  br label %parser_set_lex_state.exit1016

parser_set_lex_state.exit1016:                    ; preds = %bb.pf, %bb.pg
  store i32 8, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.ph:                                            ; preds = %bb.pe
  %i.bmi = and i32 %i.bmd, 256
  %.not817 = icmp eq i32 %i.bmi, 0
  br i1 %.not817, label %bb.pn, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %.not818 = icmp eq i32 %.0697, 0
  %i.bmj = load i32, ptr %i.e, align 8
  %i.bmk = and i32 %i.bmj, 32
  %.not.i1019 = icmp eq i32 %i.bmk, 0             ; 2 uses
  br i1 %.not818, label %bb.pl, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  br i1 %.not.i1019, label %parser_set_lex_state.exit1018, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.bml = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmd, i32 noundef 32, i32 noundef 10811) ; 0 uses
  br label %parser_set_lex_state.exit1018

parser_set_lex_state.exit1018:                    ; preds = %bb.pj, %bb.pk
  store i32 32, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.pl:                                            ; preds = %bb.pi
  br i1 %.not.i1019, label %parser_set_lex_state.exit1020, label %bb.pm

bb.pm:                                            ; preds = %bb.pl
  %i.bmm = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmd, i32 noundef 16, i32 noundef 10813) ; 0 uses
  br label %parser_set_lex_state.exit1020

parser_set_lex_state.exit1020:                    ; preds = %bb.pl, %bb.pm
  store i32 16, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.pn:                                            ; preds = %bb.ph
  %i.bmn = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmn, i64 16
  store i32 2, ptr %i.bmo, align 8, !tbaa !15
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmn, i64 24
  store i32 96, ptr %i.bmp, align 8, !tbaa !15
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmn, i64 20
  store i32 0, ptr %i.bmq, align 4, !tbaa !15
  store ptr %i.bmn, ptr %i.g, align 8, !tbaa !178
  br label %pushback.exit1038

bb.po:                                            ; preds = %bb.hw
  %i.bmr = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bms = and i32 %i.bmr, 1032
  %i.bmt = icmp eq i32 %i.bms, 0
  %8 = icmp ne i32 %.0697, 0
  %or.cond19 = select i1 %i.bmt, i1 true, i1 %8
  %i.bmu = and i32 %i.bmr, 48
  %.not815 = icmp eq i32 %i.bmu, 0
  %i.bmv = select i1 %or.cond19, i1 %.not815, i1 false
  %i.bmw = select i1 %i.bmv, i32 0, i32 64
  %i.bmx = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmx, i64 16
  store i32 %i.bmw, ptr %i.bmy, align 8, !tbaa !15
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmx, i64 24
  store i32 39, ptr %i.bmz, align 8, !tbaa !15
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmx, i64 20
  store i32 0, ptr %i.bna, align 4, !tbaa !15
  store ptr %i.bmx, ptr %i.g, align 8, !tbaa !178
  %i.bnb = load ptr, ptr %i.aih, align 8, !tbaa !188
  %i.bnc = getelementptr i8, ptr %i.bnb, i64 -1
  store ptr %i.bnc, ptr %i.aij, align 8, !tbaa !49
  br label %pushback.exit1038

bb.pp:                                            ; preds = %bb.hw
  %i.bnd = call fastcc i32 @parse_qmark(ptr noundef nonnull %0, i32 noundef %.0694)
  br label %pushback.exit1038

bb.pq:                                            ; preds = %bb.hw
  %i.bne = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 4 uses
  switch i32 %i.bne, label %bb.qa [
    i32 38, label %bb.pr
    i32 61, label %bb.pw
    i32 46, label %bb.py
  ]

bb.pr:                                            ; preds = %bb.pq
  %i.bnf = load i32, ptr %i.e, align 8
  %i.bng = and i32 %i.bnf, 32
  %.not.i1021 = icmp eq i32 %i.bng, 0
  br i1 %.not.i1021, label %parser_set_lex_state.exit1022, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.bnh = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bni = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bnh, i32 noundef 1, i32 noundef 10830) ; 0 uses
  br label %parser_set_lex_state.exit1022

parser_set_lex_state.exit1022:                    ; preds = %bb.pr, %bb.ps
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  %i.bnj = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.bnk = icmp eq i32 %i.bnj, 61
  br i1 %i.bnk, label %bb.pt, label %bb.pv

bb.pt:                                            ; preds = %parser_set_lex_state.exit1022
  %i.bnl = load ptr, ptr %0, align 8, !tbaa !62
  store i64 148, ptr %i.bnl, align 8, !tbaa !15
  %i.bnm = load i32, ptr %i.e, align 8
  %i.bnn = and i32 %i.bnm, 32
  %.not.i1023 = icmp eq i32 %i.bnn, 0
  br i1 %.not.i1023, label %parser_set_lex_state.exit1024, label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.bno = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bnp = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bno, i32 noundef 1, i32 noundef 10833) ; 0 uses
  br label %parser_set_lex_state.exit1024

parser_set_lex_state.exit1024:                    ; preds = %bb.pt, %bb.pu
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.pv:                                            ; preds = %parser_set_lex_state.exit1022
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bnj)
  br label %pushback.exit1038

bb.pw:                                            ; preds = %bb.pq
  %i.bnq = load ptr, ptr %0, align 8, !tbaa !62
  store i64 38, ptr %i.bnq, align 8, !tbaa !15
  %i.bnr = load i32, ptr %i.e, align 8
  %i.bns = and i32 %i.bnr, 32
  %.not.i1025 = icmp eq i32 %i.bns, 0
  br i1 %.not.i1025, label %parser_set_lex_state.exit1026, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.bnt = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bnu = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bnt, i32 noundef 1, i32 noundef 10841) ; 0 uses
  br label %parser_set_lex_state.exit1026

parser_set_lex_state.exit1026:                    ; preds = %bb.pw, %bb.px
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.py:                                            ; preds = %bb.pq
  %i.bnv = load ptr, ptr %0, align 8, !tbaa !62
  store i64 150, ptr %i.bnv, align 8, !tbaa !15
  %i.bnw = load i32, ptr %i.e, align 8
  %i.bnx = and i32 %i.bnw, 32
  %.not.i1027 = icmp eq i32 %i.bnx, 0
  br i1 %.not.i1027, label %parser_set_lex_state.exit1028, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.bny = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bnz = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bny, i32 noundef 256, i32 noundef 10846) ; 0 uses
  br label %parser_set_lex_state.exit1028

parser_set_lex_state.exit1028:                    ; preds = %bb.py, %bb.pz
  store i32 256, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.qa:                                            ; preds = %bb.pq
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bne)
  %i.boa = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.bob = and i32 %i.boa, 48
  %i.boc = icmp ne i32 %i.bob, 0
  %9 = icmp ne i32 %.0694, 0                      ; 2 uses
  %or.cond21 = select i1 %i.boc, i1 %9, i1 false
  br i1 %or.cond21, label %bb.qb, label %bb.qg

bb.qb:                                            ; preds = %bb.qa
  switch i32 %i.bne, label %is_identchar.exit.thread.sink.split [
    i32 32, label %bb.qg
    i32 13, label %bb.qg
    i32 12, label %bb.qg
    i32 11, label %bb.qg
    i32 10, label %bb.qg
    i32 9, label %bb.qg
    i32 58, label %bb.qc
  ]

bb.qc:                                            ; preds = %bb.qb
  %i.bod = load ptr, ptr %i.aih, align 8, !tbaa !188
  %i.boe = getelementptr i8, ptr %i.bod, i64 1    ; 3 uses
  %i.bof = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not810 = icmp ult ptr %i.boe, %i.bof
  br i1 %.not810, label %bb.qd, label %is_identchar.exit.thread.sink.split

bb.qd:                                            ; preds = %bb.qc
  %i.bog = load i8, ptr %i.boe, align 1, !tbaa !15 ; 2 uses
  switch i8 %i.bog, label %bb.qe [
    i8 34, label %is_identchar.exit.thread
    i8 39, label %is_identchar.exit.thread
  ]

bb.qe:                                            ; preds = %bb.qd
  %i.boh = load ptr, ptr %i.aiu, align 8, !tbaa !176 ; 2 uses
  %i.boi = zext i8 %i.bog to i32
  %i.boj = getelementptr i8, ptr %i.boh, i64 88
  %i.bok = load ptr, ptr %i.boj, align 8, !tbaa !604
  %i.bol = call i32 %i.bok(i32 noundef range(i32 -1, 256) %i.boi, i32 noundef 13, ptr noundef %i.boh) #31, !inline_history !605
  %.not.i1030 = icmp eq i32 %i.bol, 0
  br i1 %.not.i1030, label %bb.qf, label %is_identchar.exit.thread

bb.qf:                                            ; preds = %bb.qe
  %i.bom = load i8, ptr %i.boe, align 1, !tbaa !15 ; 2 uses
  %i.bon = icmp ne i8 %i.bom, 95
  %.not811 = icmp sgt i8 %i.bom, -1
  %or.cond = and i1 %i.bon, %.not811
  br i1 %or.cond, label %is_identchar.exit.thread.sink.split, label %is_identchar.exit.thread

bb.qg:                                            ; preds = %bb.qb, %bb.qb, %bb.qb, %bb.qb, %bb.qb, %bb.qb, %bb.qa
  %i.boo = and i32 %i.boa, 577
  %.not812 = icmp ne i32 %i.boo, 0
  %i.bop = and i32 %i.boa, 2064
  %i.boq = icmp eq i32 %i.bop, 2064
  %or.cond861 = or i1 %.not812, %i.boq
  br i1 %or.cond861, label %is_identchar.exit.thread, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.bor = and i32 %i.aiz, 904
  %i.bos = icmp eq i32 %i.bor, 0
  %or.cond25 = select i1 %i.bos, i1 %9, i1 false
  br i1 %or.cond25, label %bb.qi, label %is_identchar.exit.thread

bb.qi:                                            ; preds = %bb.qh
  switch i32 %i.bne, label %bb.qj [
    i32 32, label %is_identchar.exit.thread
    i32 13, label %is_identchar.exit.thread
    i32 12, label %is_identchar.exit.thread
    i32 11, label %is_identchar.exit.thread
    i32 10, label %is_identchar.exit.thread
    i32 9, label %is_identchar.exit.thread
  ]

bb.qj:                                            ; preds = %bb.qi
  %i.bot = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bou = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bot, i32 noundef %i.bou, ptr noundef nonnull @.str.779) #31
  br label %is_identchar.exit.thread.sink.split

is_identchar.exit.thread.sink.split:              ; preds = %bb.qc, %bb.qb, %bb.qf, %bb.qj
  %.str.772.sink2542 = phi ptr [ @.str.772, %bb.qj ], [ @.str.778, %bb.qf ], [ @.str.778, %bb.qb ], [ @.str.778, %bb.qc ]
  %.1690.ph = phi i32 [ 38, %bb.qj ], [ 335, %bb.qf ], [ 335, %bb.qb ], [ 335, %bb.qc ]
  %i.bov = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bow = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bov, i32 noundef %i.bow, ptr noundef nonnull %.str.772.sink2542) #31
  br label %is_identchar.exit.thread

is_identchar.exit.thread:                         ; preds = %is_identchar.exit.thread.sink.split, %bb.qi, %bb.qi, %bb.qi, %bb.qi, %bb.qi, %bb.qi, %bb.qd, %bb.qe, %bb.qf, %bb.qd, %bb.qh, %bb.qg
  %.1690 = phi i32 [ 335, %bb.qe ], [ 335, %bb.qg ], [ 335, %bb.qd ], [ 335, %bb.qd ], [ 38, %bb.qi ], [ 38, %bb.qi ], [ 38, %bb.qi ], [ 38, %bb.qh ], [ 335, %bb.qf ], [ 38, %bb.qi ], [ 38, %bb.qi ], [ 38, %bb.qi ], [ %.1690.ph, %is_identchar.exit.thread.sink.split ]
  %i.box = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.boy = and i32 %i.box, 384
  %.not814 = icmp eq i32 %i.boy, 0
  %i.boz = select i1 %.not814, i32 1, i32 16      ; 2 uses
  %i.bpa = load i32, ptr %i.e, align 8
  %i.bpb = and i32 %i.bpa, 32
  %.not.i1032 = icmp eq i32 %i.bpb, 0
  br i1 %.not.i1032, label %parser_set_lex_state.exit1033, label %bb.qk

bb.qk:                                            ; preds = %is_identchar.exit.thread
  %i.bpc = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.box, i32 noundef %i.boz, i32 noundef 10865) ; 0 uses
  br label %parser_set_lex_state.exit1033

parser_set_lex_state.exit1033:                    ; preds = %is_identchar.exit.thread, %bb.qk
  store i32 %i.boz, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.ql:                                            ; preds = %bb.hw
  %i.bpd = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  switch i32 %i.bpd, label %bb.qx [
    i32 124, label %bb.qm
    i32 61, label %bb.qv
  ]

bb.qm:                                            ; preds = %bb.ql
  %i.bpe = load i32, ptr %i.e, align 8
  %i.bpf = and i32 %i.bpe, 32
  %.not.i1034 = icmp eq i32 %i.bpf, 0
  br i1 %.not.i1034, label %parser_set_lex_state.exit1035, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.bpg = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bph = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bpg, i32 noundef 1, i32 noundef 10870) ; 0 uses
  br label %parser_set_lex_state.exit1035

parser_set_lex_state.exit1035:                    ; preds = %bb.qm, %bb.qn
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  %i.bpi = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.bpj = icmp eq i32 %i.bpi, 61
  br i1 %i.bpj, label %bb.qo, label %bb.qq

bb.qo:                                            ; preds = %parser_set_lex_state.exit1035
  %i.bpk = load ptr, ptr %0, align 8, !tbaa !62
  store i64 149, ptr %i.bpk, align 8, !tbaa !15
  %i.bpl = load i32, ptr %i.e, align 8
  %i.bpm = and i32 %i.bpl, 32
  %.not.i1036 = icmp eq i32 %i.bpm, 0
  br i1 %.not.i1036, label %parser_set_lex_state.exit1037, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.bpn = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bpo = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bpn, i32 noundef 1, i32 noundef 10873) ; 0 uses
  br label %parser_set_lex_state.exit1037

parser_set_lex_state.exit1037:                    ; preds = %bb.qo, %bb.qp
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.qq:                                            ; preds = %parser_set_lex_state.exit1035
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bpi)
  %i.bpp = and i32 %i.aiz, 1
  %.not807 = icmp eq i32 %i.bpp, 0
  br i1 %.not807, label %pushback.exit1038, label %bb.qr

bb.qr:                                            ; preds = %bb.qq
  %i.bpq = load i32, ptr %i.e, align 8
  %i.bpr = and i32 %i.bpq, -9
  store i32 %i.bpr, ptr %i.e, align 8
  %i.bps = load ptr, ptr %i.aih, align 8, !tbaa !188 ; 2 uses
  %i.bpt = getelementptr i8, ptr %i.bps, i64 -1   ; 3 uses
  store ptr %i.bpt, ptr %i.aih, align 8, !tbaa !188
  %i.bpu = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bpv = icmp ugt ptr %i.bpt, %i.bpu
  br i1 %i.bpv, label %bb.qs, label %pushback.exit1038

bb.qs:                                            ; preds = %bb.qr
  %i.bpw = load i8, ptr %i.bpt, align 1, !tbaa !15
  %i.bpx = icmp eq i8 %i.bpw, 10
  br i1 %i.bpx, label %bb.qt, label %pushback.exit1038

bb.qt:                                            ; preds = %bb.qs
  %i.bpy = getelementptr i8, ptr %i.bps, i64 -2   ; 2 uses
  %i.bpz = load i8, ptr %i.bpy, align 1, !tbaa !15
  %i.bqa = icmp eq i8 %i.bpz, 13
  br i1 %i.bqa, label %bb.qu, label %pushback.exit1038

bb.qu:                                            ; preds = %bb.qt
  store ptr %i.bpy, ptr %i.aih, align 8, !tbaa !188
  br label %pushback.exit1038

bb.qv:                                            ; preds = %bb.ql
  %i.bqb = load ptr, ptr %0, align 8, !tbaa !62
  store i64 124, ptr %i.bqb, align 8, !tbaa !15
  %i.bqc = load i32, ptr %i.e, align 8
  %i.bqd = and i32 %i.bqc, 32
  %.not.i1039 = icmp eq i32 %i.bqd, 0
  br i1 %.not.i1039, label %parser_set_lex_state.exit1040, label %bb.qw

bb.qw:                                            ; preds = %bb.qv
  %i.bqe = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bqf = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqe, i32 noundef 1, i32 noundef 10886) ; 0 uses
  br label %parser_set_lex_state.exit1040

parser_set_lex_state.exit1040:                    ; preds = %bb.qv, %bb.qw
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.qx:                                            ; preds = %bb.ql
  %i.bqg = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bqh = and i32 %i.bqg, 384
  %.not806 = icmp eq i32 %i.bqh, 0
  %i.bqi = select i1 %.not806, i32 1025, i32 16   ; 2 uses
  %i.bqj = load i32, ptr %i.e, align 8
  %i.bqk = and i32 %i.bqj, 32
  %.not.i1041 = icmp eq i32 %i.bqk, 0
  br i1 %.not.i1041, label %parser_set_lex_state.exit1042, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  %i.bql = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqg, i32 noundef %i.bqi, i32 noundef 10889) ; 0 uses
  br label %parser_set_lex_state.exit1042

parser_set_lex_state.exit1042:                    ; preds = %bb.qx, %bb.qy
  store i32 %i.bqi, ptr %i.aik, align 8, !tbaa !67
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bpd)
  br label %pushback.exit1038

bb.qz:                                            ; preds = %bb.hw
  %i.bqm = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 8 uses
  %i.bqn = load i32, ptr %i.aik, align 8, !tbaa !67 ; 6 uses
  %i.bqo = and i32 %i.bqn, 384
  %.not800 = icmp eq i32 %i.bqo, 0
  br i1 %.not800, label %bb.rd, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.bqp = load i32, ptr %i.e, align 8
  %i.bqq = and i32 %i.bqp, 32
  %.not.i1043 = icmp eq i32 %i.bqq, 0
  br i1 %.not.i1043, label %parser_set_lex_state.exit1044, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.bqr = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqn, i32 noundef 16, i32 noundef 10896) ; 0 uses
  br label %parser_set_lex_state.exit1044

parser_set_lex_state.exit1044:                    ; preds = %bb.ra, %bb.rb
  store i32 16, ptr %i.aik, align 8, !tbaa !67
  %i.bqs = icmp eq i32 %i.bqm, 64
  br i1 %i.bqs, label %pushback.exit1038, label %bb.rc

bb.rc:                                            ; preds = %parser_set_lex_state.exit1044
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bqm)
  br label %pushback.exit1038

bb.rd:                                            ; preds = %bb.qz
  %i.bqt = icmp eq i32 %i.bqm, 61
  br i1 %i.bqt, label %bb.re, label %bb.rg

bb.re:                                            ; preds = %bb.rd
  %i.bqu = load ptr, ptr %0, align 8, !tbaa !62
  store i64 43, ptr %i.bqu, align 8, !tbaa !15
  %i.bqv = load i32, ptr %i.e, align 8
  %i.bqw = and i32 %i.bqv, 32
  %.not.i1045 = icmp eq i32 %i.bqw, 0
  br i1 %.not.i1045, label %parser_set_lex_state.exit1046, label %bb.rf

bb.rf:                                            ; preds = %bb.re
  %i.bqx = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bqy = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqx, i32 noundef 1, i32 noundef 10905) ; 0 uses
  br label %parser_set_lex_state.exit1046

parser_set_lex_state.exit1046:                    ; preds = %bb.re, %bb.rf
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.rg:                                            ; preds = %bb.rd
  %i.bqz = and i32 %i.bqn, 577
  %.not801 = icmp ne i32 %i.bqz, 0
  %i.bra = and i32 %i.bqn, 2064
  %i.brb = icmp eq i32 %i.bra, 2064
  %or.cond863 = or i1 %.not801, %i.brb
  br i1 %or.cond863, label %bb.rk, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.brc = and i32 %i.bqn, 48
  %i.brd = icmp ne i32 %i.brc, 0
  %10 = icmp ne i32 %.0694, 0                     ; 2 uses
  %or.cond27 = select i1 %i.brd, i1 %10, i1 false
  br i1 %or.cond27, label %bb.ri, label %bb.rn

bb.ri:                                            ; preds = %bb.rh
  switch i32 %i.bqm, label %bb.rj [
    i32 32, label %bb.rn
    i32 13, label %bb.rn
    i32 12, label %bb.rn
    i32 11, label %bb.rn
    i32 10, label %bb.rn
    i32 9, label %bb.rn
  ]

bb.rj:                                            ; preds = %bb.ri
  %i.bre = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.brf = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bre, i32 noundef %i.brf, ptr noundef nonnull @.str.843, i32 noundef 43) #31
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rj, %bb.rg
  %i.brg = load i32, ptr %i.e, align 8
  %i.brh = and i32 %i.brg, 32
  %.not.i1048 = icmp eq i32 %i.brh, 0
  br i1 %.not.i1048, label %parser_set_lex_state.exit1049, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.bri = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.brj = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bri, i32 noundef 1, i32 noundef 10909) ; 0 uses
  br label %parser_set_lex_state.exit1049

parser_set_lex_state.exit1049:                    ; preds = %bb.rk, %bb.rl
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bqm)
  %i.brk = add nsw i32 %i.bqm, -58
  %or.cond1274 = icmp ult i32 %i.brk, -10
  br i1 %or.cond1274, label %pushback.exit1038, label %bb.rm

bb.rm:                                            ; preds = %parser_set_lex_state.exit1049
  %i.brl = call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef 43)
  br label %pushback.exit1038

bb.rn:                                            ; preds = %bb.ri, %bb.ri, %bb.ri, %bb.ri, %bb.ri, %bb.ri, %bb.rh
  %i.brm = load i32, ptr %i.e, align 8
  %i.brn = and i32 %i.brm, 32
  %.not.i1050 = icmp eq i32 %i.brn, 0
  br i1 %.not.i1050, label %parser_set_lex_state.exit1051, label %bb.ro

bb.ro:                                            ; preds = %bb.rn
  %i.bro = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqn, i32 noundef 1, i32 noundef 10916) ; 0 uses
  br label %parser_set_lex_state.exit1051

parser_set_lex_state.exit1051:                    ; preds = %bb.rn, %bb.ro
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bqm)
  %i.brp = and i32 %i.aiz, 904
  %i.brq = icmp eq i32 %i.brp, 0
  %or.cond29 = select i1 %i.brq, i1 %10, i1 false
  br i1 %or.cond29, label %bb.rp, label %pushback.exit1038

bb.rp:                                            ; preds = %parser_set_lex_state.exit1051
  switch i32 %i.bqm, label %bb.rq [
    i32 32, label %pushback.exit1038
    i32 13, label %pushback.exit1038
    i32 12, label %pushback.exit1038
    i32 11, label %pushback.exit1038
    i32 10, label %pushback.exit1038
    i32 9, label %pushback.exit1038
  ]

bb.rq:                                            ; preds = %bb.rp
  %i.brr = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.brs = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.brr, i32 noundef %i.brs, ptr noundef nonnull @.str.780) #31
  %i.brt = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bru = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.brt, i32 noundef %i.bru, ptr noundef nonnull @.str.781) #31
  br label %pushback.exit1038

bb.rr:                                            ; preds = %bb.hw
  %i.brv = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 8 uses
  %i.brw = load i32, ptr %i.aik, align 8, !tbaa !67 ; 7 uses
  %i.brx = and i32 %i.brw, 384
  %.not794 = icmp eq i32 %i.brx, 0
  br i1 %.not794, label %bb.rv, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.bry = load i32, ptr %i.e, align 8
  %i.brz = and i32 %i.bry, 32
  %.not.i1053 = icmp eq i32 %i.brz, 0
  br i1 %.not.i1053, label %parser_set_lex_state.exit1054, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  %i.bsa = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.brw, i32 noundef 16, i32 noundef 10923) ; 0 uses
  br label %parser_set_lex_state.exit1054

parser_set_lex_state.exit1054:                    ; preds = %bb.rs, %bb.rt
  store i32 16, ptr %i.aik, align 8, !tbaa !67
  %i.bsb = icmp eq i32 %i.brv, 64
  br i1 %i.bsb, label %pushback.exit1038, label %bb.ru

bb.ru:                                            ; preds = %parser_set_lex_state.exit1054
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.brv)
  br label %pushback.exit1038

bb.rv:                                            ; preds = %bb.rr
  switch i32 %i.brv, label %bb.sa [
    i32 61, label %bb.rw
    i32 62, label %bb.ry
  ]

bb.rw:                                            ; preds = %bb.rv
  %i.bsc = load ptr, ptr %0, align 8, !tbaa !62
  store i64 45, ptr %i.bsc, align 8, !tbaa !15
  %i.bsd = load i32, ptr %i.e, align 8
  %i.bse = and i32 %i.bsd, 32
  %.not.i1055 = icmp eq i32 %i.bse, 0
  br i1 %.not.i1055, label %parser_set_lex_state.exit1056, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.bsf = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bsg = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bsf, i32 noundef 1, i32 noundef 10932) ; 0 uses
  br label %parser_set_lex_state.exit1056

parser_set_lex_state.exit1056:                    ; preds = %bb.rw, %bb.rx
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.ry:                                            ; preds = %bb.rv
  %i.bsh = load i32, ptr %i.e, align 8
  %i.bsi = and i32 %i.bsh, 32
  %.not.i1057 = icmp eq i32 %i.bsi, 0
  br i1 %.not.i1057, label %parser_set_lex_state.exit1058, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.bsj = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.brw, i32 noundef 8, i32 noundef 10936) ; 0 uses
  br label %parser_set_lex_state.exit1058

parser_set_lex_state.exit1058:                    ; preds = %bb.ry, %bb.rz
  store i32 8, ptr %i.aik, align 8, !tbaa !67
  %i.bsk = getelementptr i8, ptr %0, i64 112      ; 2 uses
  %i.bsl = load i32, ptr %i.bsk, align 8, !tbaa !164
  %i.bsm = load ptr, ptr %0, align 8, !tbaa !62
  store i32 %i.bsl, ptr %i.bsm, align 8, !tbaa !15
  %i.bsn = getelementptr i8, ptr %0, i64 108
  %i.bso = load i32, ptr %i.bsn, align 4, !tbaa !181
  store i32 %i.bso, ptr %i.bsk, align 8, !tbaa !164
  br label %pushback.exit1038

bb.sa:                                            ; preds = %bb.rv
  %i.bsp = and i32 %i.brw, 577
  %.not795 = icmp ne i32 %i.bsp, 0
  %i.bsq = and i32 %i.brw, 2064
  %i.bsr = icmp eq i32 %i.bsq, 2064
  %or.cond865 = or i1 %.not795, %i.bsr
  br i1 %or.cond865, label %bb.se, label %bb.sb

bb.sb:                                            ; preds = %bb.sa
  %i.bss = and i32 %i.brw, 48
  %i.bst = icmp ne i32 %i.bss, 0
  %11 = icmp ne i32 %.0694, 0                     ; 2 uses
  %or.cond31 = select i1 %i.bst, i1 %11, i1 false
  br i1 %or.cond31, label %bb.sc, label %bb.sg

bb.sc:                                            ; preds = %bb.sb
  switch i32 %i.brv, label %bb.sd [
    i32 32, label %bb.sg
    i32 13, label %bb.sg
    i32 12, label %bb.sg
    i32 11, label %bb.sg
    i32 10, label %bb.sg
    i32 9, label %bb.sg
  ]

bb.sd:                                            ; preds = %bb.sc
  %i.bsu = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bsv = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bsu, i32 noundef %i.bsv, ptr noundef nonnull @.str.843, i32 noundef 45) #31
  br label %bb.se

bb.se:                                            ; preds = %bb.sd, %bb.sa
  %i.bsw = load i32, ptr %i.e, align 8
  %i.bsx = and i32 %i.bsw, 32
  %.not.i1060 = icmp eq i32 %i.bsx, 0
  br i1 %.not.i1060, label %parser_set_lex_state.exit1061, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.bsy = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bsz = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bsy, i32 noundef 1, i32 noundef 10942) ; 0 uses
  br label %parser_set_lex_state.exit1061

parser_set_lex_state.exit1061:                    ; preds = %bb.se, %bb.sf
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.brv)
  %i.bta = add nsw i32 %i.brv, -58
  %or.cond1276 = icmp ult i32 %i.bta, -10
  %spec.select1278 = select i1 %or.cond1276, i32 133, i32 360
  br label %pushback.exit1038

bb.sg:                                            ; preds = %bb.sc, %bb.sc, %bb.sc, %bb.sc, %bb.sc, %bb.sc, %bb.sb
  %i.btb = load i32, ptr %i.e, align 8
  %i.btc = and i32 %i.btb, 32
  %.not.i1062 = icmp eq i32 %i.btc, 0
  br i1 %.not.i1062, label %parser_set_lex_state.exit1063, label %bb.sh

bb.sh:                                            ; preds = %bb.sg
  %i.btd = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.brw, i32 noundef 1, i32 noundef 10949) ; 0 uses
  br label %parser_set_lex_state.exit1063

parser_set_lex_state.exit1063:                    ; preds = %bb.sg, %bb.sh
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.brv)
  %i.bte = and i32 %i.aiz, 904
  %i.btf = icmp eq i32 %i.bte, 0
  %or.cond33 = select i1 %i.btf, i1 %11, i1 false
  br i1 %or.cond33, label %bb.si, label %pushback.exit1038

bb.si:                                            ; preds = %parser_set_lex_state.exit1063
  switch i32 %i.brv, label %bb.sj [
    i32 32, label %pushback.exit1038
    i32 13, label %pushback.exit1038
    i32 12, label %pushback.exit1038
    i32 11, label %pushback.exit1038
    i32 10, label %pushback.exit1038
    i32 9, label %pushback.exit1038
  ]

bb.sj:                                            ; preds = %bb.si
  %i.btg = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bth = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.btg, i32 noundef %i.bth, ptr noundef nonnull @.str.782) #31
  %i.bti = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.btj = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bti, i32 noundef %i.btj, ptr noundef nonnull @.str.781) #31
  br label %pushback.exit1038

bb.sk:                                            ; preds = %bb.hw
  %i.btk = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.btl = load i32, ptr %i.e, align 8
  %i.btm = and i32 %i.btl, 32
  %.not.i1065 = icmp eq i32 %i.btm, 0
  br i1 %.not.i1065, label %parser_set_lex_state.exit1066, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.btn = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.btk, i32 noundef 1, i32 noundef 10955) ; 0 uses
  %.pre1964 = load ptr, ptr %i.aih, align 8, !tbaa !188
  br label %parser_set_lex_state.exit1066

parser_set_lex_state.exit1066:                    ; preds = %bb.sk, %bb.sl
  %i.bto = phi ptr [ %i.ajh, %bb.sk ], [ %.pre1964, %bb.sl ] ; 2 uses
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  %i.btp = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i1067 = icmp ult ptr %i.bto, %i.btp
  br i1 %.not.i1067, label %bb.sm, label %.critedge.i1068, !prof !527

bb.sm:                                            ; preds = %parser_set_lex_state.exit1066
  %i.btq = load i32, ptr %i.e, align 8
  %i.btr = and i32 %i.btq, 8
  %.not13.i1074 = icmp eq i32 %i.btr, 0
  br i1 %.not13.i1074, label %bb.sn, label %.critedge.i1068, !prof !527

bb.sn:                                            ; preds = %bb.sm
  %i.bts = load ptr, ptr %i.aim, align 8, !tbaa !528
  %i.btt = icmp ugt ptr %i.bts, inttoptr (i64 1 to ptr)
  br i1 %i.btt, label %.critedge.i1068, label %bb.so, !prof !205

.critedge.i1068:                                  ; preds = %bb.sn, %bb.sm, %parser_set_lex_state.exit1066
  %i.btu = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i1069 = icmp eq i32 %i.btu, 0
  br i1 %.not14.i1069, label %.critedge._crit_edge.i1071, label %pushback.exit1088

.critedge._crit_edge.i1071:                       ; preds = %.critedge.i1068
  %.pre.i1072 = load ptr, ptr %i.aih, align 8, !tbaa !188
  br label %bb.so

bb.so:                                            ; preds = %.critedge._crit_edge.i1071, %bb.sn
  %i.btv = phi ptr [ %.pre.i1072, %.critedge._crit_edge.i1071 ], [ %i.bto, %bb.sn ] ; 3 uses
  %i.btw = getelementptr i8, ptr %i.btv, i64 1    ; 8 uses
  store ptr %i.btw, ptr %i.aih, align 8, !tbaa !188
  %i.btx = load i8, ptr %i.btv, align 1, !tbaa !15 ; 3 uses
  %i.bty = icmp eq i8 %i.btx, 13
  br i1 %i.bty, label %bb.sp, label %nextc0.exit1075, !prof !205

bb.sp:                                            ; preds = %bb.so
  %i.btz = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i.i1073 = icmp ult ptr %i.btw, %i.btz
  br i1 %.not.i.i1073, label %bb.sq, label %.thread1203

bb.sq:                                            ; preds = %bb.sp
  %i.bua = load i8, ptr %i.btw, align 1, !tbaa !15
  %i.bub = icmp eq i8 %i.bua, 10                  ; 2 uses
  %i.buc = getelementptr i8, ptr %i.btv, i64 2
  %spec.select2543.a = select i1 %i.bub, ptr %i.buc, ptr %i.btw
  %spec.select2544.a = select i1 %i.bub, i32 10, i32 13
  br label %.thread1203

nextc0.exit1075:                                  ; preds = %bb.so
  %i.bud = zext i8 %i.btx to i32
  %i.bue = icmp eq i8 %i.btx, 46
  br i1 %i.bue, label %bb.sr, label %.thread1203

bb.sr:                                            ; preds = %nextc0.exit1075
  %i.buf = and i32 %i.btk, 577
  %.not787.le = icmp ne i32 %i.buf, 0
  %i.bug = and i32 %i.btk, 2064
  %i.buh = icmp eq i32 %i.bug, 2064
  %i.bui = or i1 %.not787.le, %i.buh              ; 2 uses
  %i.buj = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i1076 = icmp ult ptr %i.btw, %i.buj
  br i1 %.not.i1076, label %bb.ss, label %.critedge.i1077, !prof !527

bb.ss:                                            ; preds = %bb.sr
  %i.buk = load i32, ptr %i.e, align 8
  %i.bul = and i32 %i.buk, 8
  %.not13.i1083 = icmp eq i32 %i.bul, 0
  br i1 %.not13.i1083, label %bb.st, label %.critedge.i1077, !prof !527

bb.st:                                            ; preds = %bb.ss
  %i.bum = load ptr, ptr %i.aim, align 8, !tbaa !528
  %i.bun = icmp ugt ptr %i.bum, inttoptr (i64 1 to ptr)
  br i1 %i.bun, label %.critedge.i1077, label %bb.su, !prof !205

.critedge.i1077:                                  ; preds = %bb.st, %bb.ss, %bb.sr
  %i.buo = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i1078 = icmp eq i32 %i.buo, 0
  br i1 %.not14.i1078, label %.critedge._crit_edge.i1080, label %pushback.exit1087

.critedge._crit_edge.i1080:                       ; preds = %.critedge.i1077
  %.pre.i1081 = load ptr, ptr %i.aih, align 8, !tbaa !188
  br label %bb.su

bb.su:                                            ; preds = %.critedge._crit_edge.i1080, %bb.st
  %i.bup = phi ptr [ %.pre.i1081, %.critedge._crit_edge.i1080 ], [ %i.btw, %bb.st ] ; 3 uses
  %i.buq = getelementptr i8, ptr %i.bup, i64 1    ; 6 uses
  store ptr %i.buq, ptr %i.aih, align 8, !tbaa !188
  %i.bur = load i8, ptr %i.bup, align 1, !tbaa !15
  switch i8 %i.bur, label %.thread1198 [
    i8 13, label %bb.sv
    i8 46, label %bb.sx
  ], !prof !602

bb.sv:                                            ; preds = %bb.su
  %i.bus = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i.i1082 = icmp ult ptr %i.buq, %i.bus
  br i1 %.not.i.i1082, label %bb.sw, label %.thread1198

bb.sw:                                            ; preds = %bb.sv
  %i.but = load i8, ptr %i.buq, align 1, !tbaa !15
  %i.buu = icmp eq i8 %i.but, 10
  %i.buv = getelementptr i8, ptr %i.bup, i64 2
  %spec.select2545 = select i1 %i.buu, ptr %i.buv, ptr %i.buq
  br label %.thread1198

bb.sx:                                            ; preds = %bb.su
  %i.buw = load i16, ptr %i.aix, align 8
  %i.bux = and i16 %i.buw, 4
  %.not791 = icmp eq i16 %i.bux, 0
  br i1 %.not791, label %bb.sy, label %bb.sz

bb.sy:                                            ; preds = %bb.sx
  %i.buy = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.buz = and i32 %i.buy, 1032
  %i.bva = icmp eq i32 %i.buz, 0
  %12 = icmp ne i32 %.0697, 0
  %or.cond35 = select i1 %i.bva, i1 true, i1 %12
  %i.bvb = and i32 %i.buy, 48
  %.not792 = icmp eq i32 %i.bvb, 0
  %or.cond866 = and i1 %.not792, %or.cond35
  br i1 %or.cond866, label %bb.tb, label %bb.sz

bb.sz:                                            ; preds = %bb.sy, %bb.sx
  %i.bvc = load i32, ptr %i.e, align 8
  %i.bvd = and i32 %i.bvc, 32
  %.not.i1085 = icmp eq i32 %i.bvd, 0
  br i1 %.not.i1085, label %parser_set_lex_state.exit1086, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %i.bve = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bvf = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bve, i32 noundef 4, i32 noundef 10959) ; 0 uses
  br label %parser_set_lex_state.exit1086

parser_set_lex_state.exit1086:                    ; preds = %bb.sz, %bb.ta
  store i32 4, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.tb:                                            ; preds = %bb.sy
  %i.bvg = getelementptr i8, ptr %0, i64 108
  %i.bvh = load i32, ptr %i.bvg, align 4, !tbaa !181
  %i.bvi = icmp eq i32 %i.bvh, 0
  br i1 %i.bvi, label %bb.tc, label %bb.te

bb.tc:                                            ; preds = %bb.tb
  %i.bvj = call fastcc i32 @looking_at_eol_p(ptr noundef nonnull %0)
  %.not793 = icmp eq i32 %i.bvj, 0
  br i1 %.not793, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %i.bvk = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bvl = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.bvk, i32 noundef %i.bvl, ptr noundef nonnull @.str.783) #31
  br label %bb.te

bb.te:                                            ; preds = %bb.td, %bb.tc, %bb.tb
  %i.bvm = select i1 %i.bui, i32 131, i32 129
  br label %pushback.exit1038

.thread1198:                                      ; preds = %bb.sw, %bb.su, %bb.sv
  %i.bvn = phi ptr [ %i.buq, %bb.su ], [ %i.buq, %bb.sv ], [ %spec.select2545, %bb.sw ] ; 2 uses
  %i.bvo = load i32, ptr %i.e, align 8
  %i.bvp = and i32 %i.bvo, -9
  store i32 %i.bvp, ptr %i.e, align 8
  %i.bvq = getelementptr i8, ptr %i.bvn, i64 -1   ; 3 uses
  store ptr %i.bvq, ptr %i.aih, align 8, !tbaa !188
  %i.bvr = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bvs = icmp ugt ptr %i.bvq, %i.bvr
  br i1 %i.bvs, label %bb.tf, label %pushback.exit1087

bb.tf:                                            ; preds = %.thread1198
  %i.bvt = load i8, ptr %i.bvq, align 1, !tbaa !15
  %i.bvu = icmp eq i8 %i.bvt, 10
  br i1 %i.bvu, label %bb.tg, label %pushback.exit1087

bb.tg:                                            ; preds = %bb.tf
  %i.bvv = getelementptr i8, ptr %i.bvn, i64 -2   ; 2 uses
  %i.bvw = load i8, ptr %i.bvv, align 1, !tbaa !15
  %i.bvx = icmp eq i8 %i.bvw, 13
  br i1 %i.bvx, label %bb.th, label %pushback.exit1087

bb.th:                                            ; preds = %bb.tg
  store ptr %i.bvv, ptr %i.aih, align 8, !tbaa !188
  br label %pushback.exit1087

pushback.exit1087:                                ; preds = %.critedge.i1077, %.thread1198, %bb.tf, %bb.tg, %bb.th
  %i.bvy = select i1 %i.bui, i32 130, i32 128
  br label %pushback.exit1038

.thread1203:                                      ; preds = %bb.sq, %bb.sp, %nextc0.exit1075
  %i.bvz = phi ptr [ %i.btw, %nextc0.exit1075 ], [ %i.btw, %bb.sp ], [ %spec.select2543.a, %bb.sq ] ; 2 uses
  %.011.i107011951205 = phi i32 [ %i.bud, %nextc0.exit1075 ], [ 13, %bb.sp ], [ %spec.select2544.a, %bb.sq ]
  %i.bwa = load i32, ptr %i.e, align 8
  %i.bwb = and i32 %i.bwa, -9
  store i32 %i.bwb, ptr %i.e, align 8
  %i.bwc = getelementptr i8, ptr %i.bvz, i64 -1   ; 6 uses
  store ptr %i.bwc, ptr %i.aih, align 8, !tbaa !188
  %i.bwd = load ptr, ptr %i.ain, align 8, !tbaa !50 ; 2 uses
  %i.bwe = icmp ugt ptr %i.bwc, %i.bwd
  br i1 %i.bwe, label %bb.ti, label %bb.tl

bb.ti:                                            ; preds = %.thread1203
  %i.bwf = load i8, ptr %i.bwc, align 1, !tbaa !15
  %i.bwg = icmp eq i8 %i.bwf, 10
  br i1 %i.bwg, label %bb.tj, label %bb.tl

bb.tj:                                            ; preds = %bb.ti
  %i.bwh = getelementptr i8, ptr %i.bvz, i64 -2   ; 3 uses
  %i.bwi = load i8, ptr %i.bwh, align 1, !tbaa !15
  %i.bwj = icmp eq i8 %i.bwi, 13
  br i1 %i.bwj, label %bb.tk, label %bb.tl

bb.tk:                                            ; preds = %bb.tj
  store ptr %i.bwh, ptr %i.aih, align 8, !tbaa !188
  br label %bb.tl

bb.tl:                                            ; preds = %bb.tk, %.thread1203, %bb.ti, %bb.tj
  %i.bwk = phi ptr [ %i.bwh, %bb.tk ], [ %i.bwc, %.thread1203 ], [ %i.bwc, %bb.ti ], [ %i.bwc, %bb.tj ] ; 2 uses
  %i.bwl = add nsw i32 %.011.i107011951205, -58
  %i.bwm = icmp ult i32 %i.bwl, -10
  br i1 %i.bwm, label %pushback.exit1088, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %i.bwn = getelementptr i8, ptr %i.bwk, i64 -1
  %i.bwo = icmp ugt ptr %i.bwn, %i.bwd
  br i1 %i.bwo, label %bb.tn, label %.critedge

bb.tn:                                            ; preds = %bb.tm
  %i.bwp = getelementptr i8, ptr %i.bwk, i64 -2
  %i.bwq = load i8, ptr %i.bwp, align 1, !tbaa !15
  %i.bwr = sext i8 %i.bwq to i32
  %i.bws = add nsw i32 %i.bwr, -58
  %i.bwt = icmp ult i32 %i.bws, -10
  %i.bwu = call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef 46) ; 0 uses
  br i1 %i.bwt, label %bb.tq, label %bb.to

bb.to:                                            ; preds = %bb.tn
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.bwv = load i32, ptr %i.aio, align 4, !tbaa !29 ; 4 uses
  %i.bww = load ptr, ptr %i.aij, align 8, !tbaa !49
  %i.bwx = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bwy = ptrtoint ptr %i.bww to i64
  %i.bwz = ptrtoint ptr %i.bwx to i64             ; 2 uses
  %i.bxa = sub i64 %i.bwy, %i.bwz
  %i.bxb = trunc i64 %i.bxa to i32
  %i.bxc = load ptr, ptr %i.aih, align 8, !tbaa !188
  %i.bxd = ptrtoint ptr %i.bxc to i64
  %i.bxe = sub i64 %i.bxd, %i.bwz
  %i.bxf = trunc i64 %i.bxe to i32
  store i32 %i.bwv, ptr %1, align 4, !tbaa !51
  store i32 %i.bxb, ptr %i.aip, align 4, !tbaa !54
  store i32 %i.bwv, ptr %i.aiq, align 4, !tbaa !55
  store i32 %i.bxf, ptr %i.air, align 4, !tbaa !56
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.784)
  %i.bxg = load i32, ptr %i.aio, align 4, !tbaa !29
  %i.bxh = icmp eq i32 %i.bwv, %i.bxg
  br i1 %i.bxh, label %bb.tp, label %parser_yyerror0.exit

bb.tp:                                            ; preds = %bb.to
  %i.bxi = load ptr, ptr %i.ais, align 8, !tbaa !189
  %i.bxj = load i64, ptr %i.ait, align 8, !tbaa !190
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.bxj, ptr noundef nonnull readonly %1, i32 noundef %i.bwv, ptr noundef %i.bxi)
  br label %parser_yyerror0.exit

parser_yyerror0.exit:                             ; preds = %bb.to, %bb.tp
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.tr

.critedge:                                        ; preds = %bb.tm
  %i.bxk = call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef 46) ; 0 uses
  br label %bb.tq

bb.tq:                                            ; preds = %.critedge, %bb.tn
  call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef @.str.785)
  br label %bb.tr

bb.tr:                                            ; preds = %bb.tq, %parser_yyerror0.exit
  %i.bxl = load i32, ptr %i.e, align 8
  %i.bxm = and i32 %i.bxl, 32
  %.not.i1089 = icmp eq i32 %i.bxm, 0
  br i1 %.not.i1089, label %bb.tu, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %i.bxn = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bxo = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bxn, i32 noundef 2, i32 noundef 10980) ; 0 uses
  br label %bb.tu

pushback.exit1088:                                ; preds = %.critedge.i1068, %bb.tl
  %i.bxp = load ptr, ptr %0, align 8, !tbaa !62
  store i64 46, ptr %i.bxp, align 8, !tbaa !15
  %i.bxq = load i32, ptr %i.e, align 8
  %i.bxr = and i32 %i.bxq, 32
  %.not.i1091 = icmp eq i32 %i.bxr, 0
  br i1 %.not.i1091, label %parser_set_lex_state.exit1092, label %bb.tt

bb.tt:                                            ; preds = %pushback.exit1088
  %i.bxs = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bxt = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bxs, i32 noundef 256, i32 noundef 10985) ; 0 uses
  br label %parser_set_lex_state.exit1092

parser_set_lex_state.exit1092:                    ; preds = %pushback.exit1088, %bb.tt
  store i32 256, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.tu:                                            ; preds = %bb.ts, %bb.tr
  store i32 2, ptr %i.aik, align 8, !tbaa !67
  %i.bxu = load ptr, ptr %i.aih, align 8, !tbaa !188
  store ptr %i.bxu, ptr %i.aij, align 8, !tbaa !49
  br label %.backedge

bb.tv:                                            ; preds = %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw
  %i.bxv = call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef %i.ajj)
  br label %pushback.exit1038

bb.tw:                                            ; preds = %bb.hw
  %i.bxw = getelementptr i8, ptr %0, i64 120      ; 2 uses
  %i.bxx = load i64, ptr %i.bxw, align 8, !tbaa !111
  %i.bxy = lshr i64 %i.bxx, 1                     ; 2 uses
  store i64 %i.bxy, ptr %i.bxw, align 8, !tbaa !111
  %i.bxz = load i32, ptr %i.e, align 8
  %i.bya = and i32 %i.bxz, 32
  %.not785 = icmp eq i32 %i.bya, 0
  br i1 %.not785, label %.thread2178, label %bb.tx

.thread2178:                                      ; preds = %bb.tw
  %i.byb = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.byc = load i64, ptr %i.byb, align 8, !tbaa !121
  %i.byd = lshr i64 %i.byc, 1
  store i64 %i.byd, ptr %i.byb, align 8, !tbaa !121
  br label %parser_set_lex_state.exit1094

bb.tx:                                            ; preds = %bb.tw
  call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bxy, ptr noundef nonnull @.str.13, i32 noundef 10994)
  %.pre1962.a = load i32, ptr %i.e, align 8
  %.pre1973.a = and i32 %.pre1962.a, 32
  %i.bye = icmp eq i32 %.pre1973.a, 0
  %i.byf = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.byg = load i64, ptr %i.byf, align 8, !tbaa !121
  %i.byh = lshr i64 %i.byg, 1                     ; 2 uses
  store i64 %i.byh, ptr %i.byf, align 8, !tbaa !121
  br i1 %i.bye, label %parser_set_lex_state.exit1094, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.byh, ptr noundef nonnull @.str.16, i32 noundef 10995)
  %.pre1963 = load i32, ptr %i.e, align 8
  %.pre1974 = and i32 %.pre1963, 32
  %i.byi = icmp eq i32 %.pre1974, 0
  br i1 %i.byi, label %parser_set_lex_state.exit1094, label %bb.tz

bb.tz:                                            ; preds = %bb.ty
  %i.byj = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.byk = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.byj, i32 noundef 8, i32 noundef 10996) ; 0 uses
  br label %parser_set_lex_state.exit1094

parser_set_lex_state.exit1094:                    ; preds = %.thread2178, %bb.tx, %bb.ty, %bb.tz
  store i32 8, ptr %i.aik, align 8, !tbaa !67
  %i.byl = getelementptr i8, ptr %0, i64 108      ; 2 uses
  %i.bym = load i32, ptr %i.byl, align 4, !tbaa !181
  %i.byn = add i32 %i.bym, -1
  store i32 %i.byn, ptr %i.byl, align 4, !tbaa !181
  br label %pushback.exit1038

bb.ua:                                            ; preds = %bb.hw
  %i.byo = getelementptr i8, ptr %0, i64 120      ; 2 uses
  %i.byp = load i64, ptr %i.byo, align 8, !tbaa !111
  %i.byq = lshr i64 %i.byp, 1                     ; 2 uses
  store i64 %i.byq, ptr %i.byo, align 8, !tbaa !111
  %i.byr = load i32, ptr %i.e, align 8
  %i.bys = and i32 %i.byr, 32
  %.not783 = icmp eq i32 %i.bys, 0
  br i1 %.not783, label %.thread2182, label %bb.ub

.thread2182:                                      ; preds = %bb.ua
  %i.byt = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.byu = load i64, ptr %i.byt, align 8, !tbaa !121
  %i.byv = lshr i64 %i.byu, 1
  store i64 %i.byv, ptr %i.byt, align 8, !tbaa !121
  br label %parser_set_lex_state.exit1096

bb.ub:                                            ; preds = %bb.ua
  call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.byq, ptr noundef nonnull @.str.13, i32 noundef 11001)
  %.pre1960.a = load i32, ptr %i.e, align 8
  %.pre1976 = and i32 %.pre1960.a, 32
  %i.byw = icmp eq i32 %.pre1976, 0
  %i.byx = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.byy = load i64, ptr %i.byx, align 8, !tbaa !121
  %i.byz = lshr i64 %i.byy, 1                     ; 2 uses
  store i64 %i.byz, ptr %i.byx, align 8, !tbaa !121
  br i1 %i.byw, label %parser_set_lex_state.exit1096, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.byz, ptr noundef nonnull @.str.16, i32 noundef 11002)
  %.pre1961 = load i32, ptr %i.e, align 8
  %.pre1978 = and i32 %.pre1961, 32
  %i.bza = icmp eq i32 %.pre1978, 0
  br i1 %i.bza, label %parser_set_lex_state.exit1096, label %bb.ud

bb.ud:                                            ; preds = %bb.uc
  %i.bzb = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bzc = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bzb, i32 noundef 2, i32 noundef 11003) ; 0 uses
  br label %parser_set_lex_state.exit1096

parser_set_lex_state.exit1096:                    ; preds = %.thread2182, %bb.ub, %bb.uc, %bb.ud
  store i32 2, ptr %i.aik, align 8, !tbaa !67
  %i.bzd = getelementptr i8, ptr %0, i64 108      ; 2 uses
  %i.bze = load i32, ptr %i.bzd, align 4, !tbaa !181
  %i.bzf = add i32 %i.bze, -1
  store i32 %i.bzf, ptr %i.bzd, align 4, !tbaa !181
  br label %pushback.exit1038

bb.ue:                                            ; preds = %bb.hw
  %i.bzg = getelementptr i8, ptr %0, i64 116      ; 2 uses
  %i.bzh = load i32, ptr %i.bzg, align 4, !tbaa !179 ; 2 uses
  %i.bzi = add i32 %i.bzh, -1
  store i32 %i.bzi, ptr %i.bzg, align 4, !tbaa !179
  %.not780 = icmp eq i32 %i.bzh, 0
  br i1 %.not780, label %pushback.exit1038, label %bb.uf

bb.uf:                                            ; preds = %bb.ue
  %i.bzj = getelementptr i8, ptr %0, i64 120      ; 2 uses
  %i.bzk = load i64, ptr %i.bzj, align 8, !tbaa !111
  %i.bzl = lshr i64 %i.bzk, 1                     ; 2 uses
  store i64 %i.bzl, ptr %i.bzj, align 8, !tbaa !111
  %i.bzm = load i32, ptr %i.e, align 8
  %i.bzn = and i32 %i.bzm, 32
  %.not781 = icmp eq i32 %i.bzn, 0
  br i1 %.not781, label %.thread2187, label %bb.ug

.thread2187:                                      ; preds = %bb.uf
  %i.bzo = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.bzp = load i64, ptr %i.bzo, align 8, !tbaa !121
  %i.bzq = lshr i64 %i.bzp, 1
  store i64 %i.bzq, ptr %i.bzo, align 8, !tbaa !121
  br label %parser_set_lex_state.exit1098

bb.ug:                                            ; preds = %bb.uf
  call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bzl, ptr noundef nonnull @.str.13, i32 noundef 11010)
  %.pre1958.a = load i32, ptr %i.e, align 8
  %.pre1980 = and i32 %.pre1958.a, 32
  %i.bzr = icmp eq i32 %.pre1980, 0
  %i.bzs = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.bzt = load i64, ptr %i.bzs, align 8, !tbaa !121
  %i.bzu = lshr i64 %i.bzt, 1                     ; 2 uses
  store i64 %i.bzu, ptr %i.bzs, align 8, !tbaa !121
  br i1 %i.bzr, label %parser_set_lex_state.exit1098, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bzu, ptr noundef nonnull @.str.16, i32 noundef 11011)
  %.pre1959 = load i32, ptr %i.e, align 8
  %.pre1982 = and i32 %.pre1959, 32
  %i.bzv = icmp eq i32 %.pre1982, 0
  br i1 %i.bzv, label %parser_set_lex_state.exit1098, label %bb.ui

bb.ui:                                            ; preds = %bb.uh
  %i.bzw = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bzx = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bzw, i32 noundef 2, i32 noundef 11012) ; 0 uses
  br label %parser_set_lex_state.exit1098

parser_set_lex_state.exit1098:                    ; preds = %.thread2187, %bb.ug, %bb.uh, %bb.ui
  store i32 2, ptr %i.aik, align 8, !tbaa !67
  %i.bzy = getelementptr i8, ptr %0, i64 108      ; 2 uses
  %i.bzz = load i32, ptr %i.bzy, align 4, !tbaa !181
  %i.caa = add i32 %i.bzz, -1
  store i32 %i.caa, ptr %i.bzy, align 4, !tbaa !181
  br label %pushback.exit1038

bb.uj:                                            ; preds = %bb.hw
  %i.cab = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 5 uses
  %i.cac = icmp eq i32 %i.cab, 58
  %i.cad = load i32, ptr %i.aik, align 8, !tbaa !67 ; 5 uses
  br i1 %i.cac, label %bb.uk, label %bb.uq

bb.uk:                                            ; preds = %bb.uj
  %i.cae = and i32 %i.cad, 577
  %.not778 = icmp ne i32 %i.cae, 0
  %i.caf = and i32 %i.cad, 2064
  %i.cag = icmp eq i32 %i.caf, 2064
  %or.cond868 = or i1 %.not778, %i.cag
  br i1 %or.cond868, label %bb.um, label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  %i.cah = and i32 %i.cad, 48
  %i.cai = icmp ne i32 %i.cah, 0
  %13 = icmp ne i32 %.0694, 0
  %or.cond37 = select i1 %i.cai, i1 %13, i1 false
  br i1 %or.cond37, label %bb.um, label %bb.uo

bb.um:                                            ; preds = %bb.ul, %bb.uk
  %i.caj = load i32, ptr %i.e, align 8
  %i.cak = and i32 %i.caj, 32
  %.not.i1099 = icmp eq i32 %i.cak, 0
  br i1 %.not.i1099, label %parser_set_lex_state.exit1100, label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.cal = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cad, i32 noundef 1, i32 noundef 11020) ; 0 uses
  br label %parser_set_lex_state.exit1100

parser_set_lex_state.exit1100:                    ; preds = %bb.um, %bb.un
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.uo:                                            ; preds = %bb.ul
  %i.cam = load ptr, ptr %0, align 8, !tbaa !62
  store i64 147, ptr %i.cam, align 8, !tbaa !15
  %i.can = load i32, ptr %i.e, align 8
  %i.cao = and i32 %i.can, 32
  %.not.i1101 = icmp eq i32 %i.cao, 0
  br i1 %.not.i1101, label %parser_set_lex_state.exit1102, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.cap = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.caq = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cap, i32 noundef 256, i32 noundef 11024) ; 0 uses
  br label %parser_set_lex_state.exit1102

parser_set_lex_state.exit1102:                    ; preds = %bb.uo, %bb.up
  store i32 256, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.uq:                                            ; preds = %bb.uj
  %i.car = and i32 %i.cad, 14
  %.not776 = icmp eq i32 %i.car, 0
  br i1 %.not776, label %bb.ur, label %bb.us

bb.ur:                                            ; preds = %bb.uq
  switch i32 %i.cab, label %bb.uz [
    i32 35, label %bb.us
    i32 32, label %bb.us
    i32 13, label %bb.us
    i32 12, label %bb.us
    i32 11, label %bb.us
    i32 10, label %bb.us
    i32 9, label %bb.us
    i32 39, label %bb.ux
    i32 34, label %bb.uy
  ]

bb.us:                                            ; preds = %bb.ur, %bb.ur, %bb.ur, %bb.ur, %bb.ur, %bb.ur, %bb.ur, %bb.uq
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cab)
  %i.cas = and i32 %i.aiz, 904
  %i.cat = icmp eq i32 %i.cas, 0
  %14 = icmp ne i32 %.0694, 0
  %or.cond41 = select i1 %i.cat, i1 %14, i1 false
  br i1 %or.cond41, label %bb.ut, label %bb.uv

bb.ut:                                            ; preds = %bb.us
  switch i32 %i.cab, label %bb.uu [
    i32 32, label %bb.uv
    i32 13, label %bb.uv
    i32 12, label %bb.uv
    i32 11, label %bb.uv
    i32 10, label %bb.uv
    i32 9, label %bb.uv
  ]

bb.uu:                                            ; preds = %bb.ut
  %i.cau = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.cav = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.cau, i32 noundef %i.cav, ptr noundef nonnull @.str.786) #31
  %i.caw = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.cax = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.caw, i32 noundef %i.cax, ptr noundef nonnull @.str.787) #31
  br label %bb.uv

bb.uv:                                            ; preds = %bb.ut, %bb.ut, %bb.ut, %bb.ut, %bb.ut, %bb.ut, %bb.uu, %bb.us
  %i.cay = load i32, ptr %i.e, align 8
  %i.caz = and i32 %i.cay, 32
  %.not.i1105 = icmp eq i32 %i.caz, 0
  br i1 %.not.i1105, label %parser_set_lex_state.exit1106, label %bb.uw

bb.uw:                                            ; preds = %bb.uv
  %i.cba = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cbb = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cba, i32 noundef 1, i32 noundef 11030) ; 0 uses
  br label %parser_set_lex_state.exit1106

parser_set_lex_state.exit1106:                    ; preds = %bb.uv, %bb.uw
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.ux:                                            ; preds = %bb.ur
  %i.cbc = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cbd = getelementptr inbounds nuw i8, ptr %i.cbc, i64 16
  store i32 16, ptr %i.cbd, align 8, !tbaa !15
  %i.cbe = getelementptr inbounds nuw i8, ptr %i.cbc, i64 24
  store i32 39, ptr %i.cbe, align 8, !tbaa !15
  %i.cbf = getelementptr inbounds nuw i8, ptr %i.cbc, i64 20
  store i32 0, ptr %i.cbf, align 4, !tbaa !15
  store ptr %i.cbc, ptr %i.g, align 8, !tbaa !178
  br label %bb.va

bb.uy:                                            ; preds = %bb.ur
  %i.cbg = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cbh = getelementptr inbounds nuw i8, ptr %i.cbg, i64 16
  store i32 18, ptr %i.cbh, align 8, !tbaa !15
  %i.cbi = getelementptr inbounds nuw i8, ptr %i.cbg, i64 24
  store i32 34, ptr %i.cbi, align 8, !tbaa !15
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.cbg, i64 20
  store i32 0, ptr %i.cbj, align 4, !tbaa !15
  store ptr %i.cbg, ptr %i.g, align 8, !tbaa !178
  br label %bb.va

bb.uz:                                            ; preds = %bb.ur
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cab)
  br label %bb.va

bb.va:                                            ; preds = %bb.uz, %bb.uy, %bb.ux
  %i.cbk = load i32, ptr %i.e, align 8
  %i.cbl = and i32 %i.cbk, 32
  %.not.i1107 = icmp eq i32 %i.cbl, 0
  br i1 %.not.i1107, label %parser_set_lex_state.exit1108, label %bb.vb

bb.vb:                                            ; preds = %bb.va
  %i.cbm = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cbn = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cbm, i32 noundef 128, i32 noundef 11044) ; 0 uses
  br label %parser_set_lex_state.exit1108

parser_set_lex_state.exit1108:                    ; preds = %bb.va, %bb.vb
  store i32 128, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.vc:                                            ; preds = %bb.hw
  %i.cbo = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.cbp = and i32 %i.cbo, 577
  %.not772 = icmp ne i32 %i.cbp, 0
  %i.cbq = and i32 %i.cbo, 2064
  %i.cbr = icmp eq i32 %i.cbq, 2064
  %or.cond870 = or i1 %.not772, %i.cbr
  br i1 %or.cond870, label %bb.vd, label %bb.ve

bb.vd:                                            ; preds = %bb.vc
  %i.cbs = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbs, i64 16
  store i32 7, ptr %i.cbt, align 8, !tbaa !15
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbs, i64 24
  store i32 47, ptr %i.cbu, align 8, !tbaa !15
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbs, i64 20
  store i32 0, ptr %i.cbv, align 4, !tbaa !15
  store ptr %i.cbs, ptr %i.g, align 8, !tbaa !178
  br label %pushback.exit1038

bb.ve:                                            ; preds = %bb.vc
  %i.cbw = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 4 uses
  %i.cbx = icmp eq i32 %i.cbw, 61
  br i1 %i.cbx, label %bb.vf, label %bb.vh

bb.vf:                                            ; preds = %bb.ve
  %i.cby = load ptr, ptr %0, align 8, !tbaa !62
  store i64 47, ptr %i.cby, align 8, !tbaa !15
  %i.cbz = load i32, ptr %i.e, align 8
  %i.cca = and i32 %i.cbz, 32
  %.not.i1109 = icmp eq i32 %i.cca, 0
  br i1 %.not.i1109, label %parser_set_lex_state.exit1110, label %bb.vg

bb.vg:                                            ; preds = %bb.vf
  %i.ccb = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.ccc = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ccb, i32 noundef 1, i32 noundef 11054) ; 0 uses
  br label %parser_set_lex_state.exit1110

parser_set_lex_state.exit1110:                    ; preds = %bb.vf, %bb.vg
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.vh:                                            ; preds = %bb.ve
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cbw)
  %i.ccd = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.cce = and i32 %i.ccd, 48
  %i.ccf = icmp ne i32 %i.cce, 0
  %15 = icmp ne i32 %.0694, 0                     ; 2 uses
  %or.cond43 = select i1 %i.ccf, i1 %15, i1 false
  br i1 %or.cond43, label %bb.vi, label %bb.vk

bb.vi:                                            ; preds = %bb.vh
  switch i32 %i.cbw, label %bb.vj [
    i32 32, label %bb.vk
    i32 13, label %bb.vk
    i32 12, label %bb.vk
    i32 11, label %bb.vk
    i32 10, label %bb.vk
    i32 9, label %bb.vk
  ]

bb.vj:                                            ; preds = %bb.vi
  %i.ccg = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.cch = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.ccg, i32 noundef %i.cch, ptr noundef nonnull @.str.842, i32 noundef 47) #31
  %i.cci = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cci, i64 16
  store i32 7, ptr %i.ccj, align 8, !tbaa !15
  %i.cck = getelementptr inbounds nuw i8, ptr %i.cci, i64 24
  store i32 47, ptr %i.cck, align 8, !tbaa !15
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cci, i64 20
  store i32 0, ptr %i.ccl, align 4, !tbaa !15
  store ptr %i.cci, ptr %i.g, align 8, !tbaa !178
  br label %pushback.exit1038

bb.vk:                                            ; preds = %bb.vi, %bb.vi, %bb.vi, %bb.vi, %bb.vi, %bb.vi, %bb.vh
  %i.ccm = and i32 %i.ccd, 384
  %.not774 = icmp eq i32 %i.ccm, 0
  %i.ccn = select i1 %.not774, i32 1, i32 16      ; 2 uses
  %i.cco = load i32, ptr %i.e, align 8
  %i.ccp = and i32 %i.cco, 32
  %.not.i1112 = icmp eq i32 %i.ccp, 0
  br i1 %.not.i1112, label %parser_set_lex_state.exit1113, label %bb.vl

bb.vl:                                            ; preds = %bb.vk
  %i.ccq = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ccd, i32 noundef %i.ccn, i32 noundef 11063) ; 0 uses
  br label %parser_set_lex_state.exit1113

parser_set_lex_state.exit1113:                    ; preds = %bb.vk, %bb.vl
  store i32 %i.ccn, ptr %i.aik, align 8, !tbaa !67
  %i.ccr = and i32 %i.aiz, 904
  %i.ccs = icmp eq i32 %i.ccr, 0
  %or.cond45 = select i1 %i.ccs, i1 %15, i1 false
  br i1 %or.cond45, label %bb.vm, label %pushback.exit1038

bb.vm:                                            ; preds = %parser_set_lex_state.exit1113
  switch i32 %i.cbw, label %bb.vn [
    i32 32, label %pushback.exit1038
    i32 13, label %pushback.exit1038
    i32 12, label %pushback.exit1038
    i32 11, label %pushback.exit1038
    i32 10, label %pushback.exit1038
    i32 9, label %pushback.exit1038
  ]

bb.vn:                                            ; preds = %bb.vm
  %i.cct = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.ccu = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.cct, i32 noundef %i.ccu, ptr noundef nonnull @.str.788) #31
  %i.ccv = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.ccw = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.ccv, i32 noundef %i.ccw, ptr noundef nonnull @.str.789) #31
  br label %pushback.exit1038

bb.vo:                                            ; preds = %bb.hw
  %i.ccx = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.ccy = icmp eq i32 %i.ccx, 61
  br i1 %i.ccy, label %bb.vp, label %bb.vr

bb.vp:                                            ; preds = %bb.vo
  %i.ccz = load ptr, ptr %0, align 8, !tbaa !62
  store i64 94, ptr %i.ccz, align 8, !tbaa !15
  %i.cda = load i32, ptr %i.e, align 8
  %i.cdb = and i32 %i.cda, 32
  %.not.i1115 = icmp eq i32 %i.cdb, 0
  br i1 %.not.i1115, label %parser_set_lex_state.exit1116, label %bb.vq

bb.vq:                                            ; preds = %bb.vp
  %i.cdc = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cdd = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdc, i32 noundef 1, i32 noundef 11069) ; 0 uses
  br label %parser_set_lex_state.exit1116

parser_set_lex_state.exit1116:                    ; preds = %bb.vp, %bb.vq
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.vr:                                            ; preds = %bb.vo
  %i.cde = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.cdf = and i32 %i.cde, 384
  %.not771 = icmp eq i32 %i.cdf, 0
  %i.cdg = select i1 %.not771, i32 1, i32 16      ; 2 uses
  %i.cdh = load i32, ptr %i.e, align 8
  %i.cdi = and i32 %i.cdh, 32
  %.not.i1117 = icmp eq i32 %i.cdi, 0
  br i1 %.not.i1117, label %parser_set_lex_state.exit1118, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  %i.cdj = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cde, i32 noundef %i.cdg, i32 noundef 11072) ; 0 uses
  br label %parser_set_lex_state.exit1118

parser_set_lex_state.exit1118:                    ; preds = %bb.vr, %bb.vs
  store i32 %i.cdg, ptr %i.aik, align 8, !tbaa !67
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.ccx)
  br label %pushback.exit1038

bb.vt:                                            ; preds = %bb.hw
  %i.cdk = load i32, ptr %i.e, align 8            ; 2 uses
  %i.cdl = and i32 %i.cdk, 32
  %.not.i1119 = icmp eq i32 %i.cdl, 0
  br i1 %.not.i1119, label %parser_set_lex_state.exit1120, label %bb.vu

bb.vu:                                            ; preds = %bb.vt
  %i.cdm = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cdn = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdm, i32 noundef 1, i32 noundef 11077) ; 0 uses
  %.pre1957 = load i32, ptr %i.e, align 8
  br label %parser_set_lex_state.exit1120

parser_set_lex_state.exit1120:                    ; preds = %bb.vt, %bb.vu
  %i.cdo = phi i32 [ %i.cdk, %bb.vt ], [ %.pre1957, %bb.vu ]
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  %i.cdp = or i32 %i.cdo, 4
  store i32 %i.cdp, ptr %i.e, align 8
  br label %pushback.exit1038

bb.vv:                                            ; preds = %bb.hw
  %i.cdq = load i32, ptr %i.e, align 8
  %i.cdr = and i32 %i.cdq, 32
  %.not.i1121 = icmp eq i32 %i.cdr, 0
  br i1 %.not.i1121, label %parser_set_lex_state.exit1122, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.cds = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cdt = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cds, i32 noundef 1025, i32 noundef 11082) ; 0 uses
  br label %parser_set_lex_state.exit1122

parser_set_lex_state.exit1122:                    ; preds = %bb.vv, %bb.vw
  store i32 1025, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.vx:                                            ; preds = %bb.hw
  %i.cdu = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.cdv = and i32 %i.cdu, 384
  %.not769 = icmp eq i32 %i.cdv, 0
  br i1 %.not769, label %bb.wc, label %bb.vy

bb.vy:                                            ; preds = %bb.vx
  %i.cdw = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %.not770 = icmp eq i32 %i.cdw, 64
  br i1 %.not770, label %bb.wa, label %bb.vz

bb.vz:                                            ; preds = %bb.vy
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cdw)
  br label %bb.wa

bb.wa:                                            ; preds = %bb.vz, %bb.vy
  %i.cdx = load i32, ptr %i.e, align 8
  %i.cdy = and i32 %i.cdx, 32
  %.not.i1123 = icmp eq i32 %i.cdy, 0
  br i1 %.not.i1123, label %parser_set_lex_state.exit1124, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.cdz = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cea = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdz, i32 noundef 16, i32 noundef 11090) ; 0 uses
  br label %parser_set_lex_state.exit1124

parser_set_lex_state.exit1124:                    ; preds = %bb.wa, %bb.wb
  store i32 16, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.wc:                                            ; preds = %bb.vx
  %i.ceb = load i32, ptr %i.e, align 8
  %i.cec = and i32 %i.ceb, 32
  %.not.i1125 = icmp eq i32 %i.cec, 0
  br i1 %.not.i1125, label %parser_set_lex_state.exit1126, label %bb.wd

bb.wd:                                            ; preds = %bb.wc
  %i.ced = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdu, i32 noundef 1, i32 noundef 11093) ; 0 uses
  br label %parser_set_lex_state.exit1126

parser_set_lex_state.exit1126:                    ; preds = %bb.wc, %bb.wd
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.we:                                            ; preds = %bb.hw
  %i.cee = load i32, ptr %i.aik, align 8, !tbaa !67 ; 5 uses
  %i.cef = and i32 %i.cee, 577
  %.not763 = icmp ne i32 %i.cef, 0
  %i.ceg = and i32 %i.cee, 2064
  %i.ceh = icmp eq i32 %i.ceg, 2064
  %or.cond872 = or i1 %.not763, %i.ceh
  br i1 %or.cond872, label %bb.wk, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %.not764 = icmp eq i32 %.0694, 0
  br i1 %.not764, label %bb.wk, label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  %i.cei = and i32 %i.cee, 48
end_hunk_2
begin_hunk_3_@parse_percent:bb.a
    i32 119, label %bb.af
    i32 73, label %bb.ag
    i32 105, label %bb.ah
    i32 120, label %bb.ai
    i32 114, label %bb.aj
    i32 115, label %bb.ak
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.dd = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store i32 2, ptr %i.de, align 8, !tbaa !15
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store i32 %.2, ptr %i.df, align 8, !tbaa !15
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 20
  store i32 %.0, ptr %i.dg, align 4, !tbaa !15
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !178
  br label %bb.bf

bb.ad:                                            ; preds = %bb.ab
  %i.dh = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 0, ptr %i.di, align 8, !tbaa !15
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i32 %.2, ptr %i.dj, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store i32 %.0, ptr %i.dk, align 4, !tbaa !15
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !178
  br label %bb.bf

bb.ae:                                            ; preds = %bb.ab
  %i.dl = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i32 16394, ptr %i.dm, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i32 %.2, ptr %i.dn, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  store i32 %.0, ptr %i.do, align 4, !tbaa !15
  store ptr %i.dl, ptr %i.a, align 8, !tbaa !178
  br label %bb.bf

bb.af:                                            ; preds = %bb.ab
  %i.dp = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i32 16392, ptr %i.dq, align 8, !tbaa !15
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store i32 %.2, ptr %i.dr, align 8, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  store i32 %.0, ptr %i.ds, align 4, !tbaa !15
  store ptr %i.dp, ptr %i.a, align 8, !tbaa !178
  br label %bb.bf

bb.ag:                                            ; preds = %bb.ab
  %i.dt = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i32 16394, ptr %i.du, align 8, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i32 %.2, ptr %i.dv, align 8, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i32 %.0, ptr %i.dw, align 4, !tbaa !15
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !178
  br label %bb.bf

bb.ah:                                            ; preds = %bb.ab
  %i.dx = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i32 16392, ptr %i.dy, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i32 %.2, ptr %i.dz, align 8, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  store i32 %.0, ptr %i.ea, align 4, !tbaa !15
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !178
  br label %bb.bf

bb.ai:                                            ; preds = %bb.ab
  %i.eb = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i32 2, ptr %i.ec, align 8, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store i32 %.2, ptr %i.ed, align 8, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store i32 %.0, ptr %i.ee, align 4, !tbaa !15
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !178
  br label %bb.bf

bb.aj:                                            ; preds = %bb.ab
  %i.ef = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i32 7, ptr %i.eg, align 8, !tbaa !15
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store i32 %.2, ptr %i.eh, align 8, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  store i32 %.0, ptr %i.ei, align 4, !tbaa !15
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !178
  br label %bb.bf

bb.ak:                                            ; preds = %bb.ab
  %i.ej = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i32 16, ptr %i.ek, align 8, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store i32 %.2, ptr %i.el, align 8, !tbaa !15
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 20
  store i32 %.0, ptr %i.em, align 4, !tbaa !15
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !178
  %i.en = getelementptr i8, ptr %0, i64 360
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = and i32 %i.eo, 32
  %.not.i115 = icmp eq i32 %i.ep, 0
  br i1 %.not.i115, label %parser_set_lex_state.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eq = load i32, ptr %i.d, align 8, !tbaa !67
  %i.er = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.eq, i32 noundef 4224, i32 noundef 10089) ; 0 uses
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.ak, %bb.al
  store i32 4224, ptr %i.d, align 8, !tbaa !67
  br label %bb.bf

bb.am:                                            ; preds = %bb.ab
  tail call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef @.str.849)
  br label %bb.bf

bb.an:                                            ; preds = %bb.a
  br i1 %.not.i, label %bb.ao, label %.critedge.i117, !prof !527

bb.ao:                                            ; preds = %bb.an
  %i.es = getelementptr i8, ptr %0, i64 360
  %i.et = load i32, ptr %i.es, align 8
  %i.eu = and i32 %i.et, 8
  %.not13.i123 = icmp eq i32 %i.eu, 0
  br i1 %.not13.i123, label %bb.ap, label %.critedge.i117, !prof !527

bb.ap:                                            ; preds = %bb.ao
  %i.ev = getelementptr i8, ptr %0, i64 64
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !528
  %i.ex = icmp ugt ptr %i.ew, inttoptr (i64 1 to ptr)
  br i1 %i.ex, label %.critedge.i117, label %bb.aq, !prof !205

.critedge.i117:                                   ; preds = %bb.ap, %bb.ao, %bb.an
  %i.ey = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i118 = icmp eq i32 %i.ey, 0
  br i1 %.not14.i118, label %.critedge._crit_edge.i120, label %nextc0.exit124.thread

.critedge._crit_edge.i120:                        ; preds = %.critedge.i117
  %.pre.i121 = load ptr, ptr %i.b, align 8, !tbaa !188
  br label %bb.aq

bb.aq:                                            ; preds = %.critedge._crit_edge.i120, %bb.ap
  %i.ez = phi ptr [ %.pre.i121, %.critedge._crit_edge.i120 ], [ %i.c, %bb.ap ] ; 3 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 1      ; 3 uses
  store ptr %i.fa, ptr %i.b, align 8, !tbaa !188
  %i.fb = load i8, ptr %i.ez, align 1, !tbaa !15  ; 3 uses
  %i.fc = icmp eq i8 %i.fb, 13
  br i1 %i.fc, label %bb.ar, label %nextc0.exit124, !prof !205

bb.ar:                                            ; preds = %bb.aq
  %i.fd = load ptr, ptr %i.i, align 8, !tbaa !426
  %.not.i.i122 = icmp ult ptr %i.fa, %i.fd
  br i1 %.not.i.i122, label %bb.as, label %nextc0.exit124.thread

bb.as:                                            ; preds = %bb.ar
  %i.fe = load i8, ptr %i.fa, align 1, !tbaa !15
  %i.ff = icmp eq i8 %i.fe, 10
  br i1 %i.ff, label %bb.at, label %nextc0.exit124.thread

bb.at:                                            ; preds = %bb.as
  %i.fg = getelementptr i8, ptr %i.ez, i64 2
  store ptr %i.fg, ptr %i.b, align 8, !tbaa !188
  br label %nextc0.exit124.thread

nextc0.exit124:                                   ; preds = %bb.aq
  %i.fh = zext i8 %i.fb to i32
  %i.fi = icmp eq i8 %i.fb, 61
  br i1 %i.fi, label %bb.au, label %nextc0.exit124.thread

bb.au:                                            ; preds = %nextc0.exit124
  %i.fj = load ptr, ptr %0, align 8, !tbaa !62
  store i64 37, ptr %i.fj, align 8, !tbaa !15
  %i.fk = getelementptr i8, ptr %0, i64 360
  %i.fl = load i32, ptr %i.fk, align 8
  %i.fm = and i32 %i.fl, 32
  %.not.i125 = icmp eq i32 %i.fm, 0
  br i1 %.not.i125, label %parser_set_lex_state.exit126, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fn = load i32, ptr %i.d, align 8, !tbaa !67
  %i.fo = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.fn, i32 noundef 1, i32 noundef 10099) ; 0 uses
  br label %parser_set_lex_state.exit126

parser_set_lex_state.exit126:                     ; preds = %bb.au, %bb.av
  store i32 1, ptr %i.d, align 8, !tbaa !67
  br label %bb.bf

nextc0.exit124.thread:                            ; preds = %bb.as, %bb.at, %bb.ar, %.critedge.i117, %nextc0.exit124
  %.011.i119139 = phi i32 [ %i.fh, %nextc0.exit124 ], [ 13, %bb.as ], [ 10, %bb.at ], [ 13, %bb.ar ], [ -1, %.critedge.i117 ] ; 5 uses
  %i.fp = load i32, ptr %i.d, align 8, !tbaa !67  ; 4 uses
  %i.fq = and i32 %i.fp, 48
  %i.fr = icmp ne i32 %i.fq, 0
  %4 = icmp ne i32 %1, 0                          ; 2 uses
  %or.cond = and i1 %4, %i.fr
  br i1 %or.cond, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %nextc0.exit124.thread
  switch i32 %.011.i119139, label %nextc0.exit.thread [
    i32 32, label %.thread160
    i32 13, label %.thread160
    i32 12, label %.thread160
    i32 11, label %.thread160
    i32 10, label %.thread160
    i32 9, label %.thread160
    i32 -1, label %nextc0.exit.thread134
  ]

bb.ax:                                            ; preds = %nextc0.exit124.thread
  %i.fs = and i32 %i.fp, 4096
  %i.ft = icmp ne i32 %i.fs, 0
  %i.fu = icmp eq i32 %.011.i119139, 115
  %or.cond3 = and i1 %i.fu, %i.ft
  br i1 %or.cond3, label %nextc0.exit.thread, label %.thread160

.thread160:                                       ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.aw, %bb.ax
  %i.fv = and i32 %i.fp, 384
  %.not99 = icmp eq i32 %i.fv, 0
  %i.fw = select i1 %.not99, i32 1, i32 16        ; 2 uses
  %i.fx = getelementptr i8, ptr %0, i64 360       ; 3 uses
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = and i32 %i.fy, 32
  %.not.i128 = icmp eq i32 %i.fz, 0
  br i1 %.not.i128, label %parser_set_lex_state.exit129, label %bb.ay

bb.ay:                                            ; preds = %.thread160
  %i.ga = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.fp, i32 noundef %i.fw, i32 noundef 10105) ; 0 uses
  br label %parser_set_lex_state.exit129

parser_set_lex_state.exit129:                     ; preds = %.thread160, %bb.ay
  store i32 %i.fw, ptr %i.d, align 8, !tbaa !67
  %i.gb = icmp eq i32 %.011.i119139, -1
  br i1 %i.gb, label %pushback.exit130, label %bb.az

bb.az:                                            ; preds = %parser_set_lex_state.exit129
  %i.gc = load i32, ptr %i.fx, align 8
  %i.gd = and i32 %i.gc, -9
  store i32 %i.gd, ptr %i.fx, align 8
  %i.ge = load ptr, ptr %i.b, align 8, !tbaa !188 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 -1     ; 3 uses
  store ptr %i.gf, ptr %i.b, align 8, !tbaa !188
  %i.gg = getelementptr i8, ptr %0, i64 72
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !50
  %i.gi = icmp ugt ptr %i.gf, %i.gh
  br i1 %i.gi, label %bb.ba, label %pushback.exit130

bb.ba:                                            ; preds = %bb.az
  %i.gj = load i8, ptr %i.gf, align 1, !tbaa !15
  %i.gk = icmp eq i8 %i.gj, 10
  br i1 %i.gk, label %bb.bb, label %pushback.exit130

bb.bb:                                            ; preds = %bb.ba
  %i.gl = getelementptr i8, ptr %i.ge, i64 -2     ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !15
  %i.gn = icmp eq i8 %i.gm, 13
  br i1 %i.gn, label %bb.bc, label %pushback.exit130

bb.bc:                                            ; preds = %bb.bb
  store ptr %i.gl, ptr %i.b, align 8, !tbaa !188
  br label %pushback.exit130

pushback.exit130:                                 ; preds = %parser_set_lex_state.exit129, %bb.az, %bb.ba, %bb.bb, %bb.bc
  %i.go = and i32 %2, 904
  %i.gp = icmp eq i32 %i.go, 0
  %or.cond5 = and i1 %4, %i.gp
  br i1 %or.cond5, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %pushback.exit130
  switch i32 %.011.i119139, label %bb.be [
    i32 32, label %bb.bf
    i32 13, label %bb.bf
    i32 12, label %bb.bf
    i32 11, label %bb.bf
    i32 10, label %bb.bf
    i32 9, label %bb.bf
  ]

bb.be:                                            ; preds = %bb.bd
  %i.gq = getelementptr i8, ptr %0, i64 200       ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !86
  %i.gs = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.gr, i32 noundef %i.gt, ptr noundef nonnull @.str.851) #31
  %i.gu = load ptr, ptr %i.gq, align 8, !tbaa !86
  %i.gv = load i32, ptr %i.gs, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.gu, i32 noundef %i.gv, ptr noundef nonnull @.str.852) #31
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.bd, %bb.bd, %bb.bd, %bb.bd, %bb.bd, %parser_precise_mbclen.exit.thread, %pushback.exit130, %bb.be, %parser_set_lex_state.exit126, %bb.am, %parser_set_lex_state.exit, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %nextc0.exit.thread134, %parser_yyerror0.exit
  %.093 = phi i32 [ 0, %nextc0.exit.thread134 ], [ 0, %parser_precise_mbclen.exit.thread ], [ 0, %parser_yyerror0.exit ], [ 0, %bb.am ], [ 338, %bb.ac ], [ 338, %bb.ad ], [ 341, %bb.ae ], [ 342, %bb.af ], [ 343, %bb.ag ], [ 344, %bb.ah ], [ 339, %bb.ai ], [ 340, %bb.aj ], [ 337, %parser_set_lex_state.exit ], [ 326, %parser_set_lex_state.exit126 ], [ 37, %bb.be ], [ 37, %bb.bd ], [ 37, %pushback.exit130 ], [ 37, %bb.bd ], [ 37, %bb.bd ], [ 37, %bb.bd ], [ 37, %bb.bd ], [ 37, %bb.bd ]
  ret i32 %.093
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 321) i32 @parse_gvar(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.rb_code_location_struct, align 4 ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 80         ; 24 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188
  %i.e = getelementptr i8, ptr %0, i64 360        ; 13 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 32
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %parser_set_lex_state.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 104
  %i.i = load i32, ptr %i.h, align 8, !tbaa !67
  %i.j = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.i, i32 noundef 2, i32 noundef 10158) ; 0 uses
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.a, %bb.b
  %i.k = getelementptr i8, ptr %0, i64 104        ; 3 uses
  store i32 2, ptr %i.k, align 8, !tbaa !67
  %i.l = getelementptr i8, ptr %i.d, i64 -1
  %i.m = getelementptr i8, ptr %0, i64 96         ; 4 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !49
  %i.n = getelementptr i8, ptr %0, i64 136        ; 34 uses
  store i32 0, ptr %i.n, align 8, !tbaa !570
  %i.o = getelementptr i8, ptr %0, i64 160        ; 34 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !500  ; 2 uses
  %.not.i92 = icmp eq ptr %i.p, null
  br i1 %.not.i92, label %bb.c, label %bb.d

bb.c:                                             ; preds = %parser_set_lex_state.exit
  %i.q = getelementptr i8, ptr %0, i64 140
  store i32 60, ptr %i.q, align 4, !tbaa !509
  %i.r = tail call noalias nonnull dereferenceable(60) ptr @ruby_xmalloc2(i64 noundef 60, i64 noundef 1) #33 ; 2 uses
  store ptr %i.r, ptr %i.o, align 8, !tbaa !500
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %parser_set_lex_state.exit
  %i.s = phi ptr [ %i.r, %bb.c ], [ %i.p, %parser_set_lex_state.exit ]
  %i.t = getelementptr i8, ptr %0, i64 140        ; 20 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !509
  %i.v = icmp sgt i32 %i.u, 4096
  br i1 %i.v, label %bb.e, label %newtok.exit

bb.e:                                             ; preds = %bb.d
  store i32 60, ptr %i.t, align 4, !tbaa !509
  %i.w = tail call nonnull dereferenceable(60) ptr @ruby_xrealloc2(ptr noundef nonnull %i.s, i64 noundef 60, i64 noundef 1) #38
  store ptr %i.w, ptr %i.o, align 8, !tbaa !500
  br label %newtok.exit

newtok.exit:                                      ; preds = %bb.d, %bb.e
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !188  ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 88         ; 8 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !426
  %.not.i93 = icmp ult ptr %i.x, %i.z
  br i1 %.not.i93, label %bb.f, label %.critedge.i, !prof !527

bb.f:                                             ; preds = %newtok.exit
  %i.aa = load i32, ptr %i.e, align 8
  %i.ab = and i32 %i.aa, 8
  %.not13.i = icmp eq i32 %i.ab, 0
  br i1 %.not13.i, label %bb.g, label %.critedge.i, !prof !527

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !528
  %i.ae = icmp ugt ptr %i.ad, inttoptr (i64 1 to ptr)
  br i1 %i.ae, label %.critedge.i, label %.critedge._crit_edge.i, !prof !205

.critedge.i:                                      ; preds = %bb.g, %bb.f, %newtok.exit
  %i.af = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i = icmp eq i32 %i.af, 0
  %.pre191.pre = load ptr, ptr %i.c, align 8, !tbaa !188 ; 2 uses
  br i1 %.not14.i, label %.critedge._crit_edge.i, label %nextc0.exit.thread

.critedge._crit_edge.i:                           ; preds = %.critedge.i, %bb.g
  %i.ag = phi ptr [ %i.x, %bb.g ], [ %.pre191.pre, %.critedge.i ] ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 1      ; 9 uses
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !188
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !15  ; 7 uses
  %i.aj = icmp eq i8 %i.ai, 13
  br i1 %i.aj, label %bb.h, label %nextc0.exit, !prof !205

bb.h:                                             ; preds = %.critedge._crit_edge.i
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !426
  %.not.i.i = icmp ult ptr %i.ah, %i.ak
  br i1 %.not.i.i, label %bb.i, label %nextc0.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.al = load i8, ptr %i.ah, align 1, !tbaa !15
  %i.am = icmp eq i8 %i.al, 10
  br i1 %i.am, label %bb.j, label %nextc0.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr i8, ptr %i.ag, i64 2      ; 2 uses
  store ptr %i.an, ptr %i.c, align 8, !tbaa !188
  br label %nextc0.exit.thread

nextc0.exit:                                      ; preds = %.critedge._crit_edge.i
  %i.ao = zext i8 %i.ai to i32
  switch i8 %i.ai, label %nextc0.exit.thread [
    i8 95, label %bb.k
    i8 126, label %bb.t
    i8 42, label %bb.t
    i8 36, label %bb.t
    i8 63, label %bb.t
    i8 33, label %bb.t
    i8 64, label %bb.t
    i8 47, label %bb.t
    i8 92, label %bb.t
    i8 59, label %bb.t
    i8 44, label %bb.t
    i8 46, label %bb.t
    i8 61, label %bb.t
    i8 58, label %bb.t
    i8 60, label %bb.t
    i8 62, label %bb.t
    i8 34, label %bb.t
    i8 45, label %bb.w
    i8 38, label %bb.ak
    i8 96, label %bb.ak
    i8 39, label %bb.ak
    i8 43, label %bb.ak
    i8 49, label %bb.ap
    i8 50, label %bb.ap
    i8 51, label %bb.ap
    i8 52, label %bb.ap
    i8 53, label %bb.ap
    i8 54, label %bb.ap
    i8 55, label %bb.ap
    i8 56, label %bb.ap
    i8 57, label %bb.ap
    i8 48, label %parser_is_identchar.exit147.thread
  ]

bb.k:                                             ; preds = %nextc0.exit
  %i.ap = load ptr, ptr %i.y, align 8, !tbaa !426
  %.not.i94 = icmp ult ptr %i.ah, %i.ap
  br i1 %.not.i94, label %bb.l, label %.critedge.i95, !prof !527

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.e, align 8
  %i.ar = and i32 %i.aq, 8
  %.not13.i101 = icmp eq i32 %i.ar, 0
  br i1 %.not13.i101, label %bb.m, label %.critedge.i95, !prof !527

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %0, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !528
  %i.au = icmp ugt ptr %i.at, inttoptr (i64 1 to ptr)
  br i1 %i.au, label %.critedge.i95, label %bb.n, !prof !205

.critedge.i95:                                    ; preds = %bb.m, %bb.l, %bb.k
  %i.av = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i96 = icmp eq i32 %i.av, 0
  br i1 %.not14.i96, label %.critedge._crit_edge.i98, label %nextc0.exit102

.critedge._crit_edge.i98:                         ; preds = %.critedge.i95
  %.pre.i99 = load ptr, ptr %i.c, align 8, !tbaa !188
  br label %bb.n

bb.n:                                             ; preds = %.critedge._crit_edge.i98, %bb.m
  %i.aw = phi ptr [ %.pre.i99, %.critedge._crit_edge.i98 ], [ %i.ah, %bb.m ] ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 1      ; 3 uses
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !188
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !15  ; 2 uses
  %i.az = zext i8 %i.ay to i32
  %i.ba = icmp eq i8 %i.ay, 13
  br i1 %i.ba, label %bb.o, label %nextc0.exit102, !prof !205
end_hunk_3
begin_hunk_4_@parse_ident:bb.a
bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !426
  %.not.i.i = icmp ult ptr %i.s, %i.w
  br i1 %.not.i.i, label %bb.g, label %nextc0.exit

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr %i.s, align 1, !tbaa !15
  %i.y = icmp eq i8 %i.x, 10
  br i1 %i.y, label %bb.h, label %nextc0.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %i.r, i64 2
  store ptr %i.z, ptr %i.f, align 8, !tbaa !188
  br label %nextc0.exit

nextc0.exit:                                      ; preds = %.critedge.i, %bb.e, %bb.f, %bb.g, %bb.h
  %.011.i = phi i32 [ -1, %.critedge.i ], [ %i.u, %bb.e ], [ 13, %bb.f ], [ 10, %bb.h ], [ 13, %bb.g ] ; 5 uses
  %i.aa = load i32, ptr %i.h, align 8
  %i.ab = and i32 %i.aa, 8
  %.not.i189 = icmp eq i32 %i.ab, 0
  br i1 %.not.i189, label %bb.i, label %parser_is_identchar.exit.thread

bb.i:                                             ; preds = %nextc0.exit
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !188
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1     ; 2 uses
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !176 ; 2 uses
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr i8, ptr %i.ae, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !604
  %i.aj = tail call i32 %i.ai(i32 noundef range(i32 -1, 256) %i.ag, i32 noundef 13, ptr noundef %i.ae) #31, !inline_history !607
  %.not.i.i190 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i190, label %parser_is_identchar.exit, label %.critedge.backedge

parser_is_identchar.exit:                         ; preds = %bb.i
  %i.ak = load i8, ptr %i.ad, align 1, !tbaa !15  ; 2 uses
  %i.al = icmp ne i8 %i.ak, 95
  %i.am = icmp sgt i8 %i.ak, -1
  %spec.select248 = and i1 %i.al, %i.am
  br i1 %spec.select248, label %parser_is_identchar.exit.thread, label %.critedge.backedge

.critedge.backedge:                               ; preds = %parser_is_identchar.exit, %bb.i
  %i.an = icmp ult i32 %.011.i, 128
  %spec.select = select i1 %i.an, i1 %spec.select254, i1 false
  %i.ao = tail call fastcc i32 @tokadd_mbchar(ptr noundef nonnull %0, i32 noundef %.011.i)
  %i.ap = icmp eq i32 %i.ao, -1
  br i1 %i.ap, label %.thread240, label %bb.b, !llvm.loop !617

parser_is_identchar.exit.thread:                  ; preds = %nextc0.exit, %parser_is_identchar.exit
  switch i32 %.011.i, label %parser_is_identchar.exit.thread..thread233_crit_edge [
    i32 63, label %bb.j
    i32 33, label %bb.j
    i32 61, label %parser_is_identchar.exit.thread._crit_edge
    i32 -1, label %tokadd.exit
  ]

parser_is_identchar.exit.thread._crit_edge:       ; preds = %parser_is_identchar.exit.thread
  %.pre257.pre = load ptr, ptr %i.f, align 8, !tbaa !188
  br label %bb.o

parser_is_identchar.exit.thread..thread233_crit_edge: ; preds = %parser_is_identchar.exit.thread
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !188
  br label %.thread233

bb.j:                                             ; preds = %parser_is_identchar.exit.thread, %parser_is_identchar.exit.thread
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !188 ; 4 uses
  %i.ar = load ptr, ptr %i.g, align 8, !tbaa !426
  %.not156 = icmp ult ptr %i.aq, %i.ar
  br i1 %.not156, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !15
  %i.at = icmp eq i8 %i.as, 61
  br i1 %i.at, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.au = trunc nuw nsw i32 %.011.i to i8
  %i.av = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !500
  %i.ax = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !570 ; 2 uses
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 8, !tbaa !570
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr i8, ptr %i.aw, i64 %i.ba
  store i8 %i.au, ptr %i.bb, align 1, !tbaa !15
  %i.bc = load i32, ptr %i.ax, align 8, !tbaa !570
  %i.bd = getelementptr i8, ptr %0, i64 140       ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !509 ; 2 uses
  %.not.i191 = icmp slt i32 %i.bc, %i.be
  br i1 %.not.i191, label %tokadd.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = shl i32 %i.be, 1                        ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !509
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !500
  %i.bh = sext i32 %i.bf to i64
  %i.bi = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.bg, i64 noundef %i.bh, i64 noundef 1) #38
  store ptr %i.bi, ptr %i.av, align 8, !tbaa !500
  br label %tokadd.exit

bb.n:                                             ; preds = %bb.k
  %i.bj = icmp eq i32 %.011.i, 61
  br i1 %i.bj, label %bb.o, label %.thread233

bb.o:                                             ; preds = %parser_is_identchar.exit.thread._crit_edge, %bb.n
  %.pre257 = phi ptr [ %.pre257.pre, %parser_is_identchar.exit.thread._crit_edge ], [ %i.aq, %bb.n ] ; 8 uses
  %i.bk = load i32, ptr %i.a, align 8, !tbaa !67
  %i.bl = and i32 %i.bk, 128
  %.not157 = icmp eq i32 %i.bl, 0
  br i1 %.not157, label %.thread233, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %i.g, align 8, !tbaa !426 ; 2 uses
  %.not158 = icmp ult ptr %.pre257, %i.bm
  br i1 %.not158, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bn = load i8, ptr %.pre257, align 1, !tbaa !15
  switch i8 %i.bn, label %bb.t [
    i8 126, label %.thread233
    i8 62, label %.thread233
    i8 61, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr i8, ptr %.pre257, i64 1   ; 2 uses
  %.not161 = icmp ult ptr %i.bo, %i.bm
  br i1 %.not161, label %bb.s, label %.thread233

bb.s:                                             ; preds = %bb.r
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !15
  %i.bq = icmp eq i8 %i.bp, 62
  br i1 %i.bq, label %bb.t, label %.thread233

bb.t:                                             ; preds = %bb.q, %bb.p, %bb.s
  %i.br = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !500
  %i.bt = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !570 ; 2 uses
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 8, !tbaa !570
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr i8, ptr %i.bs, i64 %i.bw
  store i8 61, ptr %i.bx, align 1, !tbaa !15
  %i.by = load i32, ptr %i.bt, align 8, !tbaa !570
  %i.bz = getelementptr i8, ptr %0, i64 140       ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !509 ; 2 uses
  %.not.i192 = icmp slt i32 %i.by, %i.ca
  br i1 %.not.i192, label %tokadd.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = shl i32 %i.ca, 1                        ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !509
  %i.cc = load ptr, ptr %i.br, align 8, !tbaa !500
  %i.cd = sext i32 %i.cb to i64
  %i.ce = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.cc, i64 noundef %i.cd, i64 noundef 1) #38
  store ptr %i.ce, ptr %i.br, align 8, !tbaa !500
  br label %tokadd.exit

.thread233:                                       ; preds = %bb.q, %bb.q, %parser_is_identchar.exit.thread..thread233_crit_edge, %bb.n, %bb.o, %bb.r, %bb.s
  %i.cf = phi ptr [ %.pre, %parser_is_identchar.exit.thread..thread233_crit_edge ], [ %i.aq, %bb.n ], [ %.pre257, %bb.o ], [ %.pre257, %bb.q ], [ %.pre257, %bb.q ], [ %.pre257, %bb.r ], [ %.pre257, %bb.s ] ; 2 uses
  %i.cg = load i32, ptr %i.h, align 8
  %i.ch = and i32 %i.cg, -9
  store i32 %i.ch, ptr %i.h, align 8
  %i.ci = getelementptr i8, ptr %i.cf, i64 -1     ; 3 uses
  store ptr %i.ci, ptr %i.f, align 8, !tbaa !188
  %i.cj = getelementptr i8, ptr %0, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !50
  %i.cl = icmp ugt ptr %i.ci, %i.ck
  br i1 %i.cl, label %bb.v, label %tokadd.exit

bb.v:                                             ; preds = %.thread233
  %i.cm = load i8, ptr %i.ci, align 1, !tbaa !15
  %i.cn = icmp eq i8 %i.cm, 10
  br i1 %i.cn, label %bb.w, label %tokadd.exit

bb.w:                                             ; preds = %bb.v
  %i.co = getelementptr i8, ptr %i.cf, i64 -2     ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !15
  %i.cq = icmp eq i8 %i.cp, 13
  br i1 %i.cq, label %bb.x, label %tokadd.exit

bb.x:                                             ; preds = %bb.w
  store ptr %i.co, ptr %i.f, align 8, !tbaa !188
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %parser_is_identchar.exit.thread, %bb.x, %bb.w, %bb.v, %.thread233, %bb.u, %bb.t, %bb.m, %bb.l
  %i.cr = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.t ], [ true, %parser_is_identchar.exit.thread ], [ true, %.thread233 ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ]
  %.0133 = phi i32 [ 307, %bb.u ], [ 308, %bb.m ], [ 308, %bb.l ], [ 307, %bb.t ], [ 311, %parser_is_identchar.exit.thread ], [ 311, %.thread233 ], [ 311, %bb.v ], [ 311, %bb.w ], [ 311, %bb.x ]
  %i.cs = getelementptr i8, ptr %0, i64 160       ; 6 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !500
  %i.cu = getelementptr i8, ptr %0, i64 136       ; 6 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !570
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr i8, ptr %i.ct, i64 %i.cw
  store i8 0, ptr %i.cx, align 1, !tbaa !15
  %i.cy = load i32, ptr %i.a, align 8, !tbaa !67  ; 5 uses
  %i.cz = and i32 %i.cy, 1032
  %i.da = icmp eq i32 %i.cz, 0
  %3 = icmp ne i32 %2, 0                          ; 2 uses
  %or.cond3 = or i1 %3, %i.da
  %i.db = and i32 %i.cy, 48
  %.not162 = icmp eq i32 %i.db, 0
  %or.cond = and i1 %.not162, %or.cond3
  br i1 %or.cond, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %tokadd.exit
  %i.dc = load ptr, ptr %i.f, align 8, !tbaa !188 ; 4 uses
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !426 ; 3 uses
  %.not163 = icmp ult ptr %i.dc, %i.dd
  br i1 %.not163, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !15
  %i.df = icmp eq i8 %i.de, 58
  br i1 %i.df, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.dg = getelementptr i8, ptr %i.dc, i64 1      ; 2 uses
  %.not164 = icmp ult ptr %i.dg, %i.dd
  br i1 %.not164, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !15
  %i.di = icmp eq i8 %i.dh, 58
  br i1 %i.di, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dj = load i32, ptr %i.h, align 8
  %i.dk = and i32 %i.dj, 32
  %.not.i194 = icmp eq i32 %i.dk, 0
  br i1 %.not.i194, label %parser_set_lex_state.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dl = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cy, i32 noundef 2064, i32 noundef 10371) ; 0 uses
  %.pre258 = load ptr, ptr %i.f, align 8, !tbaa !188
  %.pre259 = load ptr, ptr %i.g, align 8, !tbaa !426
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.ac, %bb.ad
  %i.dm = phi ptr [ %i.dd, %bb.ac ], [ %.pre259, %bb.ad ]
  %i.dn = phi ptr [ %i.dc, %bb.ac ], [ %.pre258, %bb.ad ] ; 2 uses
  store i32 2064, ptr %i.a, align 8, !tbaa !67
  %.not.i195 = icmp ult ptr %i.dn, %i.dm
  br i1 %.not.i195, label %bb.ae, label %.critedge.i196, !prof !527

bb.ae:                                            ; preds = %parser_set_lex_state.exit
  %i.do = load i32, ptr %i.h, align 8
  %i.dp = and i32 %i.do, 8
  %.not13.i202 = icmp eq i32 %i.dp, 0
  br i1 %.not13.i202, label %bb.af, label %.critedge.i196, !prof !527

bb.af:                                            ; preds = %bb.ae
  %i.dq = load ptr, ptr %i.i, align 8, !tbaa !528
  %i.dr = icmp ugt ptr %i.dq, inttoptr (i64 1 to ptr)
  br i1 %i.dr, label %.critedge.i196, label %bb.ag, !prof !205

.critedge.i196:                                   ; preds = %bb.af, %bb.ae, %parser_set_lex_state.exit
  %i.ds = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i197 = icmp eq i32 %i.ds, 0
  br i1 %.not14.i197, label %.critedge._crit_edge.i199, label %nextc0.exit203

.critedge._crit_edge.i199:                        ; preds = %.critedge.i196
  %.pre.i200 = load ptr, ptr %i.f, align 8, !tbaa !188
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge._crit_edge.i199, %bb.af
  %i.dt = phi ptr [ %.pre.i200, %.critedge._crit_edge.i199 ], [ %i.dn, %bb.af ] ; 3 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 1      ; 3 uses
  store ptr %i.du, ptr %i.f, align 8, !tbaa !188
  %i.dv = load i8, ptr %i.dt, align 1, !tbaa !15
  %i.dw = icmp eq i8 %i.dv, 13
  br i1 %i.dw, label %bb.ah, label %nextc0.exit203, !prof !205

bb.ah:                                            ; preds = %bb.ag
  %i.dx = load ptr, ptr %i.g, align 8, !tbaa !426
  %.not.i.i201 = icmp ult ptr %i.du, %i.dx
  br i1 %.not.i.i201, label %bb.ai, label %nextc0.exit203

bb.ai:                                            ; preds = %bb.ah
  %i.dy = load i8, ptr %i.du, align 1, !tbaa !15
  %i.dz = icmp eq i8 %i.dy, 10
  br i1 %i.dz, label %bb.aj, label %nextc0.exit203

bb.aj:                                            ; preds = %bb.ai
  %i.ea = getelementptr i8, ptr %i.dt, i64 2
  store ptr %i.ea, ptr %i.f, align 8, !tbaa !188
  br label %nextc0.exit203

nextc0.exit203:                                   ; preds = %.critedge.i196, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %i.eb = load ptr, ptr %i.cs, align 8, !tbaa !500
  %i.ec = load i32, ptr %i.cu, align 8, !tbaa !570
  %i.ed = sext i32 %i.ec to i64
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.ef = tail call i64 @rb_intern3(ptr noundef %i.eb, i64 noundef %i.ed, ptr noundef %i.ee) #31
  %i.eg = load ptr, ptr %0, align 8, !tbaa !62
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !15
  br label %.thread240

bb.ak:                                            ; preds = %tokadd.exit, %bb.y, %bb.z, %bb.ab
  %i.eh = getelementptr i8, ptr %0, i64 384
  %.val188 = load ptr, ptr %i.eh, align 8, !tbaa !423 ; 2 uses
  %.not165 = icmp eq ptr %.val188, null
  br i1 %.not165, label %reserved_word.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ei = getelementptr i8, ptr %0, i64 96
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !49
  %i.ek = getelementptr i8, ptr %0, i64 72
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !50
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = sub i64 %i.em, %i.en
  %i.ep = trunc i64 %i.eo to i32                  ; 2 uses
  %i.eq = load ptr, ptr %.val188, align 8, !tbaa !420 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !520 ; 2 uses
  %i.es = getelementptr i8, ptr %i.eq, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !521 ; 2 uses
  %i.eu = load i32, ptr %i.h, align 8
  %i.ev = and i32 %i.eu, 32
  %.not166 = icmp eq i32 %i.ev, 0
  br i1 %.not166, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ew = getelementptr i8, ptr %0, i64 196
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !29
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.861, i32 noundef %i.ex, i32 noundef %i.ep, i32 noundef %i.er, i32 noundef %i.et)
  %.pr.pre.pre263.pre = load i32, ptr %i.a, align 8, !tbaa !67
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pr.pre.pre263 = phi i32 [ %.pr.pre.pre263.pre, %bb.am ], [ %i.cy, %bb.al ] ; 8 uses
  %i.ey = getelementptr i8, ptr %0, i64 196
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !29
  %i.fa = icmp sle i32 %i.ez, %i.er
  %.not167 = icmp slt i32 %i.et, %i.ep
  %or.cond184 = select i1 %i.fa, i1 true, i1 %.not167
  %i.fb = and i32 %.pr.pre.pre263, 256
  %.not168 = icmp eq i32 %i.fb, 0
  %or.cond286 = select i1 %or.cond184, i1 true, i1 %.not168
  br i1 %or.cond286, label %reserved_word.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fc = load ptr, ptr %i.cs, align 8, !tbaa !500 ; 4 uses
  %i.fd = load i32, ptr %i.cu, align 8, !tbaa !570 ; 3 uses
  %i.fe = sext i32 %i.fd to i64                   ; 2 uses
  %i.ff = add nsw i64 %i.fe, -2
  %or.cond.i = icmp ult i64 %i.ff, 11
  br i1 %or.cond.i, label %bb.ap, label %reserved_word.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %switch.i.i = icmp ult i32 %i.fd, 3
  br i1 %switch.i.i, label %hash.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fg = getelementptr i8, ptr %i.fc, i64 2
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !15
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr i8, ptr @hash.asso_values, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !15
  %i.fl = zext i8 %i.fk to i32
  %i.fm = add nuw nsw i32 %i.fd, %i.fl
  br label %hash.exit.i

hash.exit.i:                                      ; preds = %bb.aq, %bb.ap
  %.0.i.i = phi i32 [ %i.fm, %bb.aq ], [ 2, %bb.ap ]
  %i.fn = load i8, ptr %i.fc, align 1, !tbaa !15  ; 2 uses
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr i8, ptr @hash.asso_values, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !15
  %i.fr = zext i8 %i.fq to i32
  %i.fs = add nuw nsw i32 %.0.i.i, %i.fr
  %i.ft = getelementptr i8, ptr %i.fc, i64 %i.fe
  %i.fu = getelementptr i8, ptr %i.ft, i64 -1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !15
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr i8, ptr @hash.asso_values, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !15
  %i.fz = zext i8 %i.fy to i32
  %i.ga = add nuw nsw i32 %i.fs, %i.fz            ; 3 uses
  %i.gb = icmp samesign ult i32 %i.ga, 51
  br i1 %i.gb, label %bb.ar, label %reserved_word.exit.thread

bb.ar:                                            ; preds = %hash.exit.i
  %i.gc = zext nneg i32 %i.ga to i64              ; 2 uses
  %i.gd = shl nuw nsw i64 1, %i.gc
  %i.ge = and i64 %i.gd, 1407374883553024
  %.not.i204 = icmp eq i64 %i.ge, 0
  br i1 %.not.i204, label %reserved_word.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gf = getelementptr [8 x i8], ptr @reserved_word.wordlist, i64 %i.gc
  %i.gg = load i16, ptr %i.gf, align 8, !tbaa !493
  %i.gh = sext i16 %i.gg to i64
  %i.gi = and i64 %i.gh, 4294967295
  %i.gj = getelementptr i8, ptr @stringpool_contents, i64 %i.gi ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !15
  %i.gl = icmp eq i8 %i.fn, %i.gk
  br i1 %i.gl, label %bb.at, label %reserved_word.exit.thread

bb.at:                                            ; preds = %bb.as
end_hunk_4
