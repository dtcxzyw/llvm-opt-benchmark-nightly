inline.NumInlined: 1673
inline.NumDeleted: 268
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
define internal fastcc noundef ptr @rb_node_block_pass_new(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 {
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
define internal fastcc void @forwarding_arg_check(ptr nofree noundef captures(none) %0, i64 noundef range(i64 38, 135) %1, ptr noundef %2) unnamed_addr #0 {
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
define internal fastcc noundef ptr @rb_node_lvar_new(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
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
define internal fastcc noundef ptr @last_arg_append(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
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
define internal fastcc noundef ptr @rest_arg_append(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #0 {
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
  br i1 %or.cond856, label %switch.lookup, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bfk = and i32 %i.aiz, 904
  %i.bfl = icmp eq i32 %i.bfk, 0
  %or.cond7 = select i1 %i.bfl, i1 %3, i1 false
  br i1 %or.cond7, label %bb.mk, label %switch.lookup

bb.mk:                                            ; preds = %bb.mj
  %switch.tableidx = add nsw i32 %i.bex, -9       ; 2 uses
  %i.bfm = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond2967.a = select i1 %i.bfm, i1 %switch.lobit, i1 false
  br i1 %or.cond2967.a, label %switch.lookup, label %.sink.split.sink.split

bb.ml:                                            ; preds = %bb.mc
  %i.bfn = load ptr, ptr %0, align 8, !tbaa !62
  store i64 42, ptr %i.bfn, align 8, !tbaa !15
  %i.bfo = load i32, ptr %i.e, align 8
  %i.bfp = and i32 %i.bfo, 32
  %.not.i975 = icmp eq i32 %i.bfp, 0
  br i1 %.not.i975, label %parser_set_lex_state.exit976, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.bfq = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bfr = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bfq, i32 noundef 1, i32 noundef 10660) ; 0 uses
  br label %parser_set_lex_state.exit976

parser_set_lex_state.exit976:                     ; preds = %bb.ml, %bb.mm
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.mn:                                            ; preds = %bb.mc
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bew)
  %i.bfs = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.bft = and i32 %i.bfs, 48
  %i.bfu = icmp ne i32 %i.bft, 0
  %4 = icmp ne i32 %.0694, 0                      ; 2 uses
  %or.cond9 = select i1 %i.bfu, i1 %4, i1 false
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
  %i.bfv = and i32 %i.bfs, 577
  %.not835 = icmp ne i32 %i.bfv, 0
  %i.bfw = and i32 %i.bfs, 2064
  %i.bfx = icmp eq i32 %i.bfw, 2064
  %or.cond858 = or i1 %.not835, %i.bfx
  br i1 %or.cond858, label %switch.lookup, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.bfy = and i32 %i.aiz, 904
  %i.bfz = icmp eq i32 %i.bfy, 0
  %or.cond11 = select i1 %i.bfz, i1 %4, i1 false
  br i1 %or.cond11, label %bb.mr, label %switch.lookup

bb.mr:                                            ; preds = %bb.mq
  %switch.tableidx2961 = add nsw i32 %i.bew, -9   ; 2 uses
  %i.bga = icmp ult i32 %switch.tableidx2961, 24
  %switch.shifted2965 = lshr i32 8388639, %switch.tableidx2961
  %switch.lobit2966 = trunc i32 %switch.shifted2965 to i1
  %or.cond2968 = select i1 %i.bga, i1 %switch.lobit2966, i1 false
  br i1 %or.cond2968, label %switch.lookup, label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.mr, %bb.mk
  %.str.771.sink = phi ptr [ @.str.771, %bb.mk ], [ @.str.774, %bb.mr ]
  %.0689.ph.ph = phi i32 [ 134, %bb.mk ], [ 42, %bb.mr ]
  %i.bgb = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bgc = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bgb, i32 noundef %i.bgc, ptr noundef nonnull %.str.771.sink) #31
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.mo, %bb.mh
  %.str.772.sink = phi ptr [ @.str.770, %bb.mh ], [ @.str.773, %bb.mo ], [ @.str.772, %.sink.split.sink.split ]
  %.0689.ph = phi i32 [ 334, %bb.mh ], [ 333, %bb.mo ], [ %.0689.ph.ph, %.sink.split.sink.split ]
  %i.bgd = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bge = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bgd, i32 noundef %i.bge, ptr noundef nonnull %.str.772.sink) #31
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.mr, %bb.mk, %.sink.split, %bb.mq, %bb.mp, %bb.mj, %bb.mi
  %.0689 = phi i32 [ 134, %bb.mk ], [ 334, %bb.mi ], [ %.0689.ph, %.sink.split ], [ 134, %bb.mj ], [ 333, %bb.mp ], [ 42, %bb.mq ], [ 42, %bb.mr ]
  %i.bgf = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bgg = and i32 %i.bgf, 384
  %.not840 = icmp eq i32 %i.bgg, 0
  %i.bgh = select i1 %.not840, i32 1, i32 16      ; 2 uses
  %i.bgi = load i32, ptr %i.e, align 8
  %i.bgj = and i32 %i.bgi, 32
  %.not.i979 = icmp eq i32 %i.bgj, 0
  br i1 %.not.i979, label %parser_set_lex_state.exit980, label %bb.ms

bb.ms:                                            ; preds = %switch.lookup
  %i.bgk = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bgf, i32 noundef %i.bgh, i32 noundef 10675) ; 0 uses
  br label %parser_set_lex_state.exit980

parser_set_lex_state.exit980:                     ; preds = %switch.lookup, %bb.ms
  store i32 %i.bgh, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.mt:                                            ; preds = %bb.hw
  %i.bgl = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  %i.bgm = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.bgn = and i32 %i.bgm, 384
  %.not833 = icmp eq i32 %i.bgn, 0
  %i.bgo = load i32, ptr %i.e, align 8
  %i.bgp = and i32 %i.bgo, 32
  %.not.i983 = icmp eq i32 %i.bgp, 0              ; 2 uses
  br i1 %.not833, label %bb.mw, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  br i1 %.not.i983, label %parser_set_lex_state.exit982, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.bgq = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bgm, i32 noundef 16, i32 noundef 10681) ; 0 uses
  br label %parser_set_lex_state.exit982

parser_set_lex_state.exit982:                     ; preds = %bb.mu, %bb.mv
  store i32 16, ptr %i.aik, align 8, !tbaa !67
  switch i32 %i.bgl, label %bb.na [
    i32 64, label %pushback.exit1038
    i32 61, label %bb.my
    i32 126, label %bb.mz
  ]

bb.mw:                                            ; preds = %bb.mt
  br i1 %.not.i983, label %parser_set_lex_state.exit984, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.bgr = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bgm, i32 noundef 1, i32 noundef 10687) ; 0 uses
  br label %parser_set_lex_state.exit984

parser_set_lex_state.exit984:                     ; preds = %bb.mw, %bb.mx
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  switch i32 %i.bgl, label %bb.na [
    i32 61, label %bb.my
    i32 126, label %bb.mz
  ]

bb.my:                                            ; preds = %parser_set_lex_state.exit982, %parser_set_lex_state.exit984
  br label %pushback.exit1038

bb.mz:                                            ; preds = %parser_set_lex_state.exit982, %parser_set_lex_state.exit984
  br label %pushback.exit1038

bb.na:                                            ; preds = %parser_set_lex_state.exit982, %parser_set_lex_state.exit984
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bgl)
  br label %pushback.exit1038

bb.nb:                                            ; preds = %bb.hw
  %i.bgs = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bgt = icmp eq ptr %i.ajg, %i.bgs
  br i1 %i.bgt, label %bb.nc, label %word_match_p.exit.thread

bb.nc:                                            ; preds = %bb.nb
  %i.bgu = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.ajh, ptr noundef nonnull dereferenceable(6) @.str.29, i64 noundef 5) #35
  %.not.i985 = icmp eq i32 %i.bgu, 0
  br i1 %.not.i985, label %bb.nd, label %word_match_p.exit.thread

bb.nd:                                            ; preds = %bb.nc
  %i.bgv = getelementptr i8, ptr %i.ajg, i64 6    ; 2 uses
  %i.bgw = load ptr, ptr %i.ail, align 8, !tbaa !426 ; 2 uses
  %.not11.i = icmp ult ptr %i.bgv, %i.bgw
  br i1 %.not11.i, label %bb.ne, label %.critedge.i988.peel

bb.ne:                                            ; preds = %bb.nd
  %i.bgx = load i8, ptr %i.bgv, align 1, !tbaa !15
  switch i8 %i.bgx, label %word_match_p.exit.thread [
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

.critedge.i988.peel:                              ; preds = %bb.ne, %bb.ne, %bb.ne, %bb.ne, %bb.ne, %bb.ne, %bb.ne, %bb.ne, %bb.ne, %bb.nd
  store ptr %i.bgw, ptr %i.aih, align 8, !tbaa !188
  call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 353, i32 noundef 10705)
  %i.bgy = load ptr, ptr %i.ail, align 8, !tbaa !426
  store ptr %i.bgy, ptr %i.aih, align 8, !tbaa !188
  %i.bgz = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i989.peel = icmp eq i32 %i.bgz, 0
  br i1 %.not14.i989.peel, label %bb.nf, label %.thread1189

bb.nf:                                            ; preds = %.critedge.i988.peel
  %.pre.i992.peel = load ptr, ptr %i.aih, align 8, !tbaa !188 ; 7 uses
  %i.bha = getelementptr i8, ptr %.pre.i992.peel, i64 1 ; 7 uses
  store ptr %i.bha, ptr %i.aih, align 8, !tbaa !188
  %i.bhb = load i8, ptr %.pre.i992.peel, align 1, !tbaa !15
  switch i8 %i.bhb, label %.split704.peel [
    i8 13, label %bb.ni
    i8 61, label %sub_0.peel
  ], !prof !602

sub_0.peel:                                       ; preds = %bb.nf
  %i.bhc = load i8, ptr %i.bha, align 1
  %.not1659.peel.a = icmp eq i8 %i.bhc, 101
  br i1 %.not1659.peel.a, label %sub_1.peel, label %.split705.peel

sub_1.peel:                                       ; preds = %sub_0.peel
  %i.bhd = getelementptr i8, ptr %.pre.i992.peel, i64 2
  %i.bhe = load i8, ptr %i.bhd, align 1
  %.not1660.peel = icmp eq i8 %i.bhe, 110
  br i1 %.not1660.peel, label %.tail.peel, label %.split705.peel

.tail.peel:                                       ; preds = %sub_1.peel
  %i.bhf = getelementptr i8, ptr %.pre.i992.peel, i64 3
  %i.bhg = load i8, ptr %i.bhf, align 1
  %i.bhh = icmp eq i8 %i.bhg, 100
  br i1 %i.bhh, label %bb.ng, label %.split705.peel

bb.ng:                                            ; preds = %.tail.peel
  %i.bhi = getelementptr i8, ptr %.pre.i992.peel, i64 4 ; 2 uses
  %i.bhj = load ptr, ptr %i.ail, align 8, !tbaa !426 ; 11 uses
  %.not11.i999.peel = icmp ult ptr %i.bhi, %i.bhj
  br i1 %.not11.i999.peel, label %bb.nh, label %.loopexit1936

bb.nh:                                            ; preds = %bb.ng
  %i.bhk = load i8, ptr %i.bhi, align 1, !tbaa !15
  switch i8 %i.bhk, label %.split705.peel [
    i8 32, label %.loopexit1936
    i8 13, label %.loopexit1936
    i8 12, label %.loopexit1936
    i8 11, label %.loopexit1936
    i8 10, label %.loopexit1936
    i8 9, label %.loopexit1936
end_hunk_1
begin_hunk_2_@parser_yylex:bb.a
  %i.bhx = and i32 %i.bhw, 8
  %.not13.i994 = icmp eq i32 %i.bhx, 0
  br i1 %.not13.i994, label %bb.nl, label %.critedge.i988, !prof !527

bb.nl:                                            ; preds = %bb.nk
  %i.bhy = load ptr, ptr %i.aim, align 8, !tbaa !528
  %i.bhz = icmp ugt ptr %i.bhy, inttoptr (i64 1 to ptr)
  br i1 %i.bhz, label %.critedge.i988, label %bb.nm, !prof !205

.critedge.i988:                                   ; preds = %bb.nl, %bb.nk, %pushback.exit996
  %i.bia = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i989 = icmp eq i32 %i.bia, 0
  br i1 %.not14.i989, label %.critedge._crit_edge.i991, label %.thread1189

.critedge._crit_edge.i991:                        ; preds = %.critedge.i988
  %.pre.i992 = load ptr, ptr %i.aih, align 8, !tbaa !188
  br label %bb.nm

bb.nm:                                            ; preds = %.critedge._crit_edge.i991, %bb.nl
  %i.bib = phi ptr [ %.pre.i992, %.critedge._crit_edge.i991 ], [ %.pre1971.a, %bb.nl ] ; 11 uses
  %i.bic = getelementptr i8, ptr %i.bib, i64 1    ; 7 uses
  store ptr %i.bic, ptr %i.aih, align 8, !tbaa !188
  %i.bid = load i8, ptr %i.bib, align 1, !tbaa !15
  switch i8 %i.bid, label %.split704 [
    i8 13, label %bb.nn
    i8 61, label %sub_0
  ], !prof !602

bb.nn:                                            ; preds = %bb.nm
  %i.bie = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i.i993 = icmp ult ptr %i.bic, %i.bie
  br i1 %.not.i.i993, label %bb.no, label %.split704

bb.no:                                            ; preds = %bb.nn
  %i.bif = load i8, ptr %i.bic, align 1, !tbaa !15
  %i.big = icmp eq i8 %i.bif, 10
  %i.bih = getelementptr i8, ptr %i.bib, i64 2
  %spec.select2537 = select i1 %i.big, ptr %i.bih, ptr %i.bic
  br label %.split704

.thread1189:                                      ; preds = %.critedge.i988.peel, %.critedge.i988
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull @.str.775)
  br label %pushback.exit1038

.split704:                                        ; preds = %bb.no, %bb.nm, %bb.nn
  %i.bii = phi ptr [ %i.bic, %bb.nm ], [ %i.bic, %bb.nn ], [ %spec.select2537, %bb.no ] ; 3 uses
  %i.bij = load i32, ptr %i.e, align 8
  %i.bik = and i32 %i.bij, -9
  store i32 %i.bik, ptr %i.e, align 8
  %i.bil = getelementptr i8, ptr %i.bii, i64 -1   ; 3 uses
  store ptr %i.bil, ptr %i.aih, align 8, !tbaa !188
  %i.bim = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bin = icmp ugt ptr %i.bil, %i.bim
  br i1 %i.bin, label %bb.np, label %pushback.exit996.backedge

bb.np:                                            ; preds = %.split704
  %i.bio = load i8, ptr %i.bil, align 1, !tbaa !15
  %i.bip = icmp eq i8 %i.bio, 10
  br i1 %i.bip, label %bb.nq, label %pushback.exit996.backedge

bb.nq:                                            ; preds = %bb.np
  %i.biq = getelementptr i8, ptr %i.bii, i64 -2
  %i.bir = load i8, ptr %i.biq, align 1, !tbaa !15
  %i.bis = icmp eq i8 %i.bir, 13
  br i1 %i.bis, label %pushback.exit996.sink.split.split.loop.exit3666, label %pushback.exit996.backedge

sub_0:                                            ; preds = %bb.nm
  %i.bit = load i8, ptr %i.bic, align 1
  %.not1659.a = icmp eq i8 %i.bit, 101
  br i1 %.not1659.a, label %sub_1, label %.split705

sub_1:                                            ; preds = %sub_0
  %i.biu = getelementptr i8, ptr %i.bib, i64 2
  %i.biv = load i8, ptr %i.biu, align 1
  %.not1660 = icmp eq i8 %i.biv, 110
  br i1 %.not1660, label %.tail, label %.split705

.tail:                                            ; preds = %sub_1
  %i.biw = getelementptr i8, ptr %i.bib, i64 3
  %i.bix = load i8, ptr %i.biw, align 1
  %i.biy = icmp eq i8 %i.bix, 100
  br i1 %i.biy, label %bb.nr, label %.split705

bb.nr:                                            ; preds = %.tail
  %i.biz = getelementptr i8, ptr %i.bib, i64 4    ; 2 uses
  %i.bja = load ptr, ptr %i.ail, align 8, !tbaa !426 ; 11 uses
  %.not11.i999 = icmp ult ptr %i.biz, %i.bja
  br i1 %.not11.i999, label %bb.ns, label %.loopexit1936

bb.ns:                                            ; preds = %bb.nr
  %i.bjb = load i8, ptr %i.biz, align 1, !tbaa !15
  switch i8 %i.bjb, label %.split705 [
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

.split705:                                        ; preds = %sub_1, %sub_0, %bb.ns, %.tail
  %i.bjc = load i32, ptr %i.e, align 8
  %i.bjd = and i32 %i.bjc, -9
  store i32 %i.bjd, ptr %i.e, align 8
  store ptr %i.bib, ptr %i.aih, align 8, !tbaa !188
  %i.bje = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bjf = icmp ugt ptr %i.bib, %i.bje
  br i1 %i.bjf, label %bb.nt, label %pushback.exit996.backedge

bb.nt:                                            ; preds = %.split705
  %i.bjg = load i8, ptr %i.bib, align 1, !tbaa !15
  %i.bjh = icmp eq i8 %i.bjg, 10
  br i1 %i.bjh, label %bb.nu, label %pushback.exit996.backedge

bb.nu:                                            ; preds = %bb.nt
  %i.bji = getelementptr i8, ptr %i.bib, i64 -1
  %i.bjj = load i8, ptr %i.bji, align 1, !tbaa !15
  %i.bjk = icmp eq i8 %i.bjj, 13
  br i1 %i.bjk, label %pushback.exit996.sink.split.split.loop.exit, label %pushback.exit996.backedge

pushback.exit996.backedge:                        ; preds = %bb.nu, %bb.nt, %.split705, %bb.nq, %bb.np, %.split704
  br label %pushback.exit996, !llvm.loop !603

pushback.exit996.sink.split.split.loop.exit:      ; preds = %bb.nu
  %i.bjl = getelementptr i8, ptr %i.bib, i64 -1
  br label %pushback.exit996.sink.split

pushback.exit996.sink.split.split.loop.exit3666:  ; preds = %bb.nq
  %i.bjm = getelementptr i8, ptr %i.bii, i64 -2
  br label %pushback.exit996.sink.split

pushback.exit996.sink.split:                      ; preds = %pushback.exit996.sink.split.split.loop.exit3666, %pushback.exit996.sink.split.split.loop.exit
  %.sink2538 = phi ptr [ %i.bjl, %pushback.exit996.sink.split.split.loop.exit ], [ %i.bjm, %pushback.exit996.sink.split.split.loop.exit3666 ]
  br label %pushback.exit996.sink.split3007, !llvm.loop !603

.loopexit1936:                                    ; preds = %bb.nr, %bb.ns, %bb.ns, %bb.ns, %bb.ns, %bb.ns, %bb.ns, %bb.ns, %bb.ns, %bb.ns, %bb.nh, %bb.nh, %bb.nh, %bb.nh, %bb.nh, %bb.nh, %bb.nh, %bb.nh, %bb.nh, %bb.ng
  %i.bjn = phi ptr [ %i.bhj, %bb.ng ], [ %i.bhj, %bb.nh ], [ %i.bhj, %bb.nh ], [ %i.bhj, %bb.nh ], [ %i.bhj, %bb.nh ], [ %i.bhj, %bb.nh ], [ %i.bhj, %bb.nh ], [ %i.bhj, %bb.nh ], [ %i.bhj, %bb.nh ], [ %i.bhj, %bb.nh ], [ %i.bja, %bb.ns ], [ %i.bja, %bb.ns ], [ %i.bja, %bb.ns ], [ %i.bja, %bb.ns ], [ %i.bja, %bb.ns ], [ %i.bja, %bb.ns ], [ %i.bja, %bb.ns ], [ %i.bja, %bb.ns ], [ %i.bja, %bb.ns ], [ %i.bja, %bb.nr ]
  store ptr %i.bjn, ptr %i.aih, align 8, !tbaa !188
  call fastcc void @parser_dispatch_scan_event(ptr noundef nonnull %0, i32 noundef 355, i32 noundef 10723)
  br label %.backedge

word_match_p.exit.thread:                         ; preds = %bb.ne, %bb.nc, %bb.nb
  %i.bjo = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bjp = and i32 %i.bjo, 384
  %.not829 = icmp eq i32 %i.bjp, 0
  %i.bjq = select i1 %.not829, i32 1, i32 16      ; 2 uses
  %i.bjr = load i32, ptr %i.e, align 8
  %i.bjs = and i32 %i.bjr, 32
  %.not.i1002 = icmp eq i32 %i.bjs, 0
  br i1 %.not.i1002, label %parser_set_lex_state.exit1003, label %bb.nv

bb.nv:                                            ; preds = %word_match_p.exit.thread
  %i.bjt = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bjo, i32 noundef %i.bjq, i32 noundef 10728) ; 0 uses
  br label %parser_set_lex_state.exit1003

parser_set_lex_state.exit1003:                    ; preds = %word_match_p.exit.thread, %bb.nv
  store i32 %i.bjq, ptr %i.aik, align 8, !tbaa !67
  %i.bju = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  switch i32 %i.bju, label %bb.nz [
    i32 61, label %bb.nw
    i32 126, label %pushback.exit1038
    i32 62, label %bb.ny
  ]

bb.nw:                                            ; preds = %parser_set_lex_state.exit1003
  %i.bjv = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.bjw = icmp eq i32 %i.bjv, 61
  br i1 %i.bjw, label %pushback.exit1038, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bjv)
  br label %pushback.exit1038

bb.ny:                                            ; preds = %parser_set_lex_state.exit1003
  br label %pushback.exit1038

bb.nz:                                            ; preds = %parser_set_lex_state.exit1003
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bju)
  br label %pushback.exit1038

bb.oa:                                            ; preds = %bb.hw
  %i.bjx = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  %i.bjy = icmp eq i32 %i.bjx, 60                 ; 2 uses
  %.pre1966.a = load i32, ptr %i.aik, align 8, !tbaa !67 ; 5 uses
  %i.bjz = and i32 %.pre1966.a, 782
  %or.cond859 = icmp eq i32 %i.bjz, 0
  %or.cond2539 = select i1 %i.bjy, i1 %or.cond859, i1 false
  br i1 %or.cond2539, label %bb.ob, label %bb.oe

bb.ob:                                            ; preds = %bb.oa
  %i.bka = and i32 %.pre1966.a, 48
  %.not823 = icmp eq i32 %i.bka, 0
  br i1 %.not823, label %bb.od, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.bkb = and i32 %.pre1966.a, 2048
  %i.bkc = icmp ne i32 %i.bkb, 0
  %5 = icmp ne i32 %.0694, 0
  %or.cond13 = select i1 %i.bkc, i1 true, i1 %5
  br i1 %or.cond13, label %bb.od, label %bb.oe

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %i.bkd = call fastcc i32 @heredoc_identifier(ptr noundef nonnull %0) ; 2 uses
  %.not824 = icmp eq i32 %i.bkd, 0
  %i.bke = call i32 @llvm.smax.i32(i32 %i.bkd, i32 0)
  br i1 %.not824, label %._crit_edge, label %pushback.exit1038

._crit_edge:                                      ; preds = %bb.od
  %.pre1965 = load i32, ptr %i.aik, align 8, !tbaa !67
  br label %bb.oe

bb.oe:                                            ; preds = %._crit_edge, %bb.oc, %bb.oa
  %i.bkf = phi i32 [ %.pre1965, %._crit_edge ], [ %.pre1966.a, %bb.oc ], [ %.pre1966.a, %bb.oa ] ; 4 uses
  %i.bkg = and i32 %i.bkf, 384
  %.not825 = icmp eq i32 %i.bkg, 0
  br i1 %.not825, label %bb.oh, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.bkh = load i32, ptr %i.e, align 8
  %i.bki = and i32 %i.bkh, 32
  %.not.i1004 = icmp eq i32 %i.bki, 0
  br i1 %.not.i1004, label %parser_set_lex_state.exit1005, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.bkj = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bkf, i32 noundef 16, i32 noundef 10755) ; 0 uses
  br label %parser_set_lex_state.exit1005

bb.oh:                                            ; preds = %bb.oe
  %i.bkk = and i32 %i.bkf, 512
  %.not826 = icmp eq i32 %i.bkk, 0
  %.pre1967 = load i32, ptr %i.e, align 8         ; 2 uses
  br i1 %.not826, label %bb.oj, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  %i.bkl = or i32 %.pre1967, 4                    ; 2 uses
  store i32 %i.bkl, ptr %i.e, align 8
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oi, %bb.oh
  %i.bkm = phi i32 [ %i.bkl, %bb.oi ], [ %.pre1967, %bb.oh ]
  %i.bkn = and i32 %i.bkm, 32
  %.not.i1006 = icmp eq i32 %i.bkn, 0
  br i1 %.not.i1006, label %parser_set_lex_state.exit1005, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.bko = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bkf, i32 noundef 1, i32 noundef 10760) ; 0 uses
  br label %parser_set_lex_state.exit1005

parser_set_lex_state.exit1005:                    ; preds = %bb.ok, %bb.oj, %bb.og, %bb.of
  %storemerge1261 = phi i32 [ 16, %bb.og ], [ 16, %bb.of ], [ 1, %bb.oj ], [ 1, %bb.ok ]
  store i32 %storemerge1261, ptr %i.aik, align 8, !tbaa !67
  %i.bkp = icmp eq i32 %i.bjx, 61
  br i1 %i.bkp, label %bb.ol, label %bb.on

bb.ol:                                            ; preds = %parser_set_lex_state.exit1005
  %i.bkq = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.bkr = icmp eq i32 %i.bkq, 62
  br i1 %i.bkr, label %pushback.exit1038, label %bb.om

bb.om:                                            ; preds = %bb.ol
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bkq)
  br label %pushback.exit1038

bb.on:                                            ; preds = %parser_set_lex_state.exit1005
  br i1 %i.bjy, label %bb.oo, label %bb.ou

bb.oo:                                            ; preds = %bb.on
  %i.bks = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 3 uses
  %i.bkt = icmp eq i32 %i.bks, 61
  br i1 %i.bkt, label %bb.op, label %bb.or

bb.op:                                            ; preds = %bb.oo
  %i.bku = load ptr, ptr %0, align 8, !tbaa !62
  store i64 136, ptr %i.bku, align 8, !tbaa !15
  %i.bkv = load i32, ptr %i.e, align 8
  %i.bkw = and i32 %i.bkv, 32
  %.not.i1008 = icmp eq i32 %i.bkw, 0
  br i1 %.not.i1008, label %parser_set_lex_state.exit1009, label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.bkx = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bky = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bkx, i32 noundef 1, i32 noundef 10772) ; 0 uses
  br label %parser_set_lex_state.exit1009

parser_set_lex_state.exit1009:                    ; preds = %bb.op, %bb.oq
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.or:                                            ; preds = %bb.oo
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bks)
  %i.bkz = and i32 %i.aiz, 904
  %i.bla = icmp eq i32 %i.bkz, 0
  %6 = icmp ne i32 %.0694, 0
  %or.cond15 = select i1 %i.bla, i1 %6, i1 false
  br i1 %or.cond15, label %bb.os, label %pushback.exit1038

bb.os:                                            ; preds = %bb.or
  %switch.tableidx2969 = add nsw i32 %i.bks, -9   ; 2 uses
  %i.blb = icmp ult i32 %switch.tableidx2969, 24
  %switch.shifted2972 = lshr i32 8388639, %switch.tableidx2969
  %switch.lobit2973 = trunc i32 %switch.shifted2972 to i1
  %or.cond2999.a = select i1 %i.blb, i1 %switch.lobit2973, i1 false
  br i1 %or.cond2999.a, label %pushback.exit1038, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.blc = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bld = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.blc, i32 noundef %i.bld, ptr noundef nonnull @.str.776) #31
  %i.ble = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.blf = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.ble, i32 noundef %i.blf, ptr noundef nonnull @.str.777) #31
  br label %pushback.exit1038

bb.ou:                                            ; preds = %bb.on
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bjx)
  br label %pushback.exit1038

bb.ov:                                            ; preds = %bb.hw
  %i.blg = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.blh = and i32 %i.blg, 384
  %.not820 = icmp eq i32 %i.blh, 0
  %i.bli = select i1 %.not820, i32 1, i32 16      ; 2 uses
  %i.blj = load i32, ptr %i.e, align 8
  %i.blk = and i32 %i.blj, 32
  %.not.i1011 = icmp eq i32 %i.blk, 0
  br i1 %.not.i1011, label %parser_set_lex_state.exit1012, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.bll = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.blg, i32 noundef %i.bli, i32 noundef 10782) ; 0 uses
  br label %parser_set_lex_state.exit1012

parser_set_lex_state.exit1012:                    ; preds = %bb.ov, %bb.ow
  store i32 %i.bli, ptr %i.aik, align 8, !tbaa !67
  %i.blm = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  switch i32 %i.blm, label %bb.pb [
    i32 61, label %pushback.exit1038
    i32 62, label %bb.ox
  ]

bb.ox:                                            ; preds = %parser_set_lex_state.exit1012
  %i.bln = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.blo = icmp eq i32 %i.bln, 61
  br i1 %i.blo, label %bb.oy, label %bb.pa

bb.oy:                                            ; preds = %bb.ox
  %i.blp = load ptr, ptr %0, align 8, !tbaa !62
  store i64 137, ptr %i.blp, align 8, !tbaa !15
  %i.blq = load i32, ptr %i.e, align 8
  %i.blr = and i32 %i.blq, 32
  %.not.i1013 = icmp eq i32 %i.blr, 0
  br i1 %.not.i1013, label %parser_set_lex_state.exit1014, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.bls = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.blt = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bls, i32 noundef 1, i32 noundef 10789) ; 0 uses
  br label %parser_set_lex_state.exit1014

parser_set_lex_state.exit1014:                    ; preds = %bb.oy, %bb.oz
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.pa:                                            ; preds = %bb.ox
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bln)
  br label %pushback.exit1038

bb.pb:                                            ; preds = %parser_set_lex_state.exit1012
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.blm)
  br label %pushback.exit1038

bb.pc:                                            ; preds = %bb.hw
  %i.blu = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.blv = and i32 %i.blu, 1032
  %i.blw = icmp eq i32 %i.blv, 0
  %7 = icmp ne i32 %.0697, 0
  %or.cond17 = select i1 %i.blw, i1 true, i1 %7
  %i.blx = and i32 %i.blu, 48
  %.not819 = icmp eq i32 %i.blx, 0
  %i.bly = select i1 %or.cond17, i1 %.not819, i1 false
  %i.blz = select i1 %i.bly, i32 2, i32 66
  %i.bma = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.bma, i64 16
  store i32 %i.blz, ptr %i.bmb, align 8, !tbaa !15
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bma, i64 24
  store i32 34, ptr %i.bmc, align 8, !tbaa !15
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bma, i64 20
  store i32 0, ptr %i.bmd, align 4, !tbaa !15
  store ptr %i.bma, ptr %i.g, align 8, !tbaa !178
  %i.bme = load ptr, ptr %i.aih, align 8, !tbaa !188
  %i.bmf = getelementptr i8, ptr %i.bme, i64 -1
  store ptr %i.bmf, ptr %i.aij, align 8, !tbaa !49
  br label %pushback.exit1038

bb.pd:                                            ; preds = %bb.hw
  %i.bmg = load i32, ptr %i.aik, align 8, !tbaa !67 ; 5 uses
  %i.bmh = and i32 %i.bmg, 128
  %.not816 = icmp eq i32 %i.bmh, 0
  br i1 %.not816, label %bb.pg, label %bb.pe

bb.pe:                                            ; preds = %bb.pd
  %i.bmi = load i32, ptr %i.e, align 8
  %i.bmj = and i32 %i.bmi, 32
  %.not.i1015 = icmp eq i32 %i.bmj, 0
  br i1 %.not.i1015, label %parser_set_lex_state.exit1016, label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.bmk = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmg, i32 noundef 8, i32 noundef 10806) ; 0 uses
  br label %parser_set_lex_state.exit1016

parser_set_lex_state.exit1016:                    ; preds = %bb.pe, %bb.pf
  store i32 8, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.pg:                                            ; preds = %bb.pd
  %i.bml = and i32 %i.bmg, 256
  %.not817 = icmp eq i32 %i.bml, 0
  br i1 %.not817, label %bb.pm, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %.not818 = icmp eq i32 %.0697, 0
  %i.bmm = load i32, ptr %i.e, align 8
  %i.bmn = and i32 %i.bmm, 32
  %.not.i1019 = icmp eq i32 %i.bmn, 0             ; 2 uses
  br i1 %.not818, label %bb.pk, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  br i1 %.not.i1019, label %parser_set_lex_state.exit1018, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.bmo = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmg, i32 noundef 32, i32 noundef 10811) ; 0 uses
  br label %parser_set_lex_state.exit1018

parser_set_lex_state.exit1018:                    ; preds = %bb.pi, %bb.pj
  store i32 32, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.pk:                                            ; preds = %bb.ph
  br i1 %.not.i1019, label %parser_set_lex_state.exit1020, label %bb.pl

bb.pl:                                            ; preds = %bb.pk
  %i.bmp = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bmg, i32 noundef 16, i32 noundef 10813) ; 0 uses
  br label %parser_set_lex_state.exit1020

parser_set_lex_state.exit1020:                    ; preds = %bb.pk, %bb.pl
  store i32 16, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.pm:                                            ; preds = %bb.pg
  %i.bmq = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.bmq, i64 16
  store i32 2, ptr %i.bmr, align 8, !tbaa !15
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmq, i64 24
  store i32 96, ptr %i.bms, align 8, !tbaa !15
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bmq, i64 20
  store i32 0, ptr %i.bmt, align 4, !tbaa !15
  store ptr %i.bmq, ptr %i.g, align 8, !tbaa !178
  br label %pushback.exit1038

bb.pn:                                            ; preds = %bb.hw
  %i.bmu = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bmv = and i32 %i.bmu, 1032
  %i.bmw = icmp eq i32 %i.bmv, 0
  %8 = icmp ne i32 %.0697, 0
  %or.cond19 = select i1 %i.bmw, i1 true, i1 %8
  %i.bmx = and i32 %i.bmu, 48
  %.not815 = icmp eq i32 %i.bmx, 0
  %i.bmy = select i1 %or.cond19, i1 %.not815, i1 false
  %i.bmz = select i1 %i.bmy, i32 0, i32 64
  %i.bna = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bna, i64 16
  store i32 %i.bmz, ptr %i.bnb, align 8, !tbaa !15
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bna, i64 24
  store i32 39, ptr %i.bnc, align 8, !tbaa !15
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.bna, i64 20
  store i32 0, ptr %i.bnd, align 4, !tbaa !15
  store ptr %i.bna, ptr %i.g, align 8, !tbaa !178
  %i.bne = load ptr, ptr %i.aih, align 8, !tbaa !188
  %i.bnf = getelementptr i8, ptr %i.bne, i64 -1
  store ptr %i.bnf, ptr %i.aij, align 8, !tbaa !49
  br label %pushback.exit1038

bb.po:                                            ; preds = %bb.hw
  %i.bng = call fastcc i32 @parse_qmark(ptr noundef nonnull %0, i32 noundef %.0694)
  br label %pushback.exit1038

bb.pp:                                            ; preds = %bb.hw
  %i.bnh = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 4 uses
  switch i32 %i.bnh, label %bb.pz [
    i32 38, label %bb.pq
    i32 61, label %bb.pv
    i32 46, label %bb.px
  ]

bb.pq:                                            ; preds = %bb.pp
  %i.bni = load i32, ptr %i.e, align 8
  %i.bnj = and i32 %i.bni, 32
  %.not.i1021 = icmp eq i32 %i.bnj, 0
  br i1 %.not.i1021, label %parser_set_lex_state.exit1022, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.bnk = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bnl = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bnk, i32 noundef 1, i32 noundef 10830) ; 0 uses
  br label %parser_set_lex_state.exit1022

parser_set_lex_state.exit1022:                    ; preds = %bb.pq, %bb.pr
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  %i.bnm = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.bnn = icmp eq i32 %i.bnm, 61
  br i1 %i.bnn, label %bb.ps, label %bb.pu

bb.ps:                                            ; preds = %parser_set_lex_state.exit1022
  %i.bno = load ptr, ptr %0, align 8, !tbaa !62
  store i64 148, ptr %i.bno, align 8, !tbaa !15
  %i.bnp = load i32, ptr %i.e, align 8
  %i.bnq = and i32 %i.bnp, 32
  %.not.i1023 = icmp eq i32 %i.bnq, 0
  br i1 %.not.i1023, label %parser_set_lex_state.exit1024, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.bnr = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bns = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bnr, i32 noundef 1, i32 noundef 10833) ; 0 uses
  br label %parser_set_lex_state.exit1024

parser_set_lex_state.exit1024:                    ; preds = %bb.ps, %bb.pt
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.pu:                                            ; preds = %parser_set_lex_state.exit1022
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bnm)
  br label %pushback.exit1038

bb.pv:                                            ; preds = %bb.pp
  %i.bnt = load ptr, ptr %0, align 8, !tbaa !62
  store i64 38, ptr %i.bnt, align 8, !tbaa !15
  %i.bnu = load i32, ptr %i.e, align 8
  %i.bnv = and i32 %i.bnu, 32
  %.not.i1025 = icmp eq i32 %i.bnv, 0
  br i1 %.not.i1025, label %parser_set_lex_state.exit1026, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  %i.bnw = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bnx = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bnw, i32 noundef 1, i32 noundef 10841) ; 0 uses
  br label %parser_set_lex_state.exit1026

parser_set_lex_state.exit1026:                    ; preds = %bb.pv, %bb.pw
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.px:                                            ; preds = %bb.pp
  %i.bny = load ptr, ptr %0, align 8, !tbaa !62
  store i64 150, ptr %i.bny, align 8, !tbaa !15
  %i.bnz = load i32, ptr %i.e, align 8
  %i.boa = and i32 %i.bnz, 32
  %.not.i1027 = icmp eq i32 %i.boa, 0
  br i1 %.not.i1027, label %parser_set_lex_state.exit1028, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.bob = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.boc = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bob, i32 noundef 256, i32 noundef 10846) ; 0 uses
  br label %parser_set_lex_state.exit1028

parser_set_lex_state.exit1028:                    ; preds = %bb.px, %bb.py
  store i32 256, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.pz:                                            ; preds = %bb.pp
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bnh)
  %i.bod = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.boe = and i32 %i.bod, 48
  %i.bof = icmp ne i32 %i.boe, 0
  %9 = icmp ne i32 %.0694, 0                      ; 2 uses
  %or.cond21 = select i1 %i.bof, i1 %9, i1 false
  br i1 %or.cond21, label %bb.qa, label %bb.qf

bb.qa:                                            ; preds = %bb.pz
  switch i32 %i.bnh, label %is_identchar.exit.thread.sink.split [
    i32 32, label %bb.qf
    i32 13, label %bb.qf
    i32 12, label %bb.qf
    i32 11, label %bb.qf
    i32 10, label %bb.qf
    i32 9, label %bb.qf
    i32 58, label %bb.qb
  ]

bb.qb:                                            ; preds = %bb.qa
  %i.bog = load ptr, ptr %i.aih, align 8, !tbaa !188
  %i.boh = getelementptr i8, ptr %i.bog, i64 1    ; 3 uses
  %i.boi = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not810 = icmp ult ptr %i.boh, %i.boi
  br i1 %.not810, label %bb.qc, label %is_identchar.exit.thread.sink.split

bb.qc:                                            ; preds = %bb.qb
  %i.boj = load i8, ptr %i.boh, align 1, !tbaa !15 ; 2 uses
  switch i8 %i.boj, label %bb.qd [
    i8 34, label %is_identchar.exit.thread
    i8 39, label %is_identchar.exit.thread
  ]

bb.qd:                                            ; preds = %bb.qc
  %i.bok = load ptr, ptr %i.aiu, align 8, !tbaa !176 ; 2 uses
  %i.bol = zext i8 %i.boj to i32
  %i.bom = getelementptr i8, ptr %i.bok, i64 88
  %i.bon = load ptr, ptr %i.bom, align 8, !tbaa !604
  %i.boo = call i32 %i.bon(i32 noundef range(i32 -1, 256) %i.bol, i32 noundef 13, ptr noundef %i.bok) #31, !inline_history !605
  %.not.i1030 = icmp eq i32 %i.boo, 0
  br i1 %.not.i1030, label %bb.qe, label %is_identchar.exit.thread

bb.qe:                                            ; preds = %bb.qd
  %i.bop = load i8, ptr %i.boh, align 1, !tbaa !15 ; 2 uses
  %i.boq = icmp ne i8 %i.bop, 95
  %.not811 = icmp sgt i8 %i.bop, -1
  %or.cond = and i1 %i.boq, %.not811
  br i1 %or.cond, label %is_identchar.exit.thread.sink.split, label %is_identchar.exit.thread

bb.qf:                                            ; preds = %bb.qa, %bb.qa, %bb.qa, %bb.qa, %bb.qa, %bb.qa, %bb.pz
  %i.bor = and i32 %i.bod, 577
  %.not812 = icmp ne i32 %i.bor, 0
  %i.bos = and i32 %i.bod, 2064
  %i.bot = icmp eq i32 %i.bos, 2064
  %or.cond861 = or i1 %.not812, %i.bot
  br i1 %or.cond861, label %is_identchar.exit.thread, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.bou = and i32 %i.aiz, 904
  %i.bov = icmp eq i32 %i.bou, 0
  %or.cond25 = select i1 %i.bov, i1 %9, i1 false
  br i1 %or.cond25, label %bb.qh, label %is_identchar.exit.thread

bb.qh:                                            ; preds = %bb.qg
  %switch.tableidx2974 = add nsw i32 %i.bnh, -9   ; 2 uses
  %i.bow = icmp ult i32 %switch.tableidx2974, 24
  %switch.shifted2978 = lshr i32 8388639, %switch.tableidx2974
  %switch.lobit2979 = trunc i32 %switch.shifted2978 to i1
  %or.cond2980 = select i1 %i.bow, i1 %switch.lobit2979, i1 false
  br i1 %or.cond2980, label %is_identchar.exit.thread, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.box = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.boy = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.box, i32 noundef %i.boy, ptr noundef nonnull @.str.779) #31
  br label %is_identchar.exit.thread.sink.split

is_identchar.exit.thread.sink.split:              ; preds = %bb.qb, %bb.qa, %bb.qe, %bb.qi
  %.str.772.sink2542 = phi ptr [ @.str.772, %bb.qi ], [ @.str.778, %bb.qe ], [ @.str.778, %bb.qa ], [ @.str.778, %bb.qb ]
  %.1690.ph = phi i32 [ 38, %bb.qi ], [ 335, %bb.qe ], [ 335, %bb.qa ], [ 335, %bb.qb ]
  %i.boz = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bpa = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.boz, i32 noundef %i.bpa, ptr noundef nonnull %.str.772.sink2542) #31
  br label %is_identchar.exit.thread

is_identchar.exit.thread:                         ; preds = %bb.qh, %is_identchar.exit.thread.sink.split, %bb.qc, %bb.qd, %bb.qe, %bb.qc, %bb.qg, %bb.qf
  %.1690 = phi i32 [ 335, %bb.qd ], [ 335, %bb.qf ], [ 335, %bb.qc ], [ 335, %bb.qc ], [ 38, %bb.qg ], [ %.1690.ph, %is_identchar.exit.thread.sink.split ], [ 335, %bb.qe ], [ 38, %bb.qh ]
  %i.bpb = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bpc = and i32 %i.bpb, 384
  %.not814 = icmp eq i32 %i.bpc, 0
  %i.bpd = select i1 %.not814, i32 1, i32 16      ; 2 uses
  %i.bpe = load i32, ptr %i.e, align 8
  %i.bpf = and i32 %i.bpe, 32
  %.not.i1032 = icmp eq i32 %i.bpf, 0
  br i1 %.not.i1032, label %parser_set_lex_state.exit1033, label %bb.qj

bb.qj:                                            ; preds = %is_identchar.exit.thread
  %i.bpg = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bpb, i32 noundef %i.bpd, i32 noundef 10865) ; 0 uses
  br label %parser_set_lex_state.exit1033

parser_set_lex_state.exit1033:                    ; preds = %is_identchar.exit.thread, %bb.qj
  store i32 %i.bpd, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.qk:                                            ; preds = %bb.hw
  %i.bph = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  switch i32 %i.bph, label %bb.qw [
    i32 124, label %bb.ql
    i32 61, label %bb.qu
  ]

bb.ql:                                            ; preds = %bb.qk
  %i.bpi = load i32, ptr %i.e, align 8
  %i.bpj = and i32 %i.bpi, 32
  %.not.i1034 = icmp eq i32 %i.bpj, 0
  br i1 %.not.i1034, label %parser_set_lex_state.exit1035, label %bb.qm

bb.qm:                                            ; preds = %bb.ql
  %i.bpk = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bpl = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bpk, i32 noundef 1, i32 noundef 10870) ; 0 uses
  br label %parser_set_lex_state.exit1035

parser_set_lex_state.exit1035:                    ; preds = %bb.ql, %bb.qm
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  %i.bpm = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.bpn = icmp eq i32 %i.bpm, 61
  br i1 %i.bpn, label %bb.qn, label %bb.qp

bb.qn:                                            ; preds = %parser_set_lex_state.exit1035
  %i.bpo = load ptr, ptr %0, align 8, !tbaa !62
  store i64 149, ptr %i.bpo, align 8, !tbaa !15
  %i.bpp = load i32, ptr %i.e, align 8
  %i.bpq = and i32 %i.bpp, 32
  %.not.i1036 = icmp eq i32 %i.bpq, 0
  br i1 %.not.i1036, label %parser_set_lex_state.exit1037, label %bb.qo

bb.qo:                                            ; preds = %bb.qn
  %i.bpr = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bps = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bpr, i32 noundef 1, i32 noundef 10873) ; 0 uses
  br label %parser_set_lex_state.exit1037

parser_set_lex_state.exit1037:                    ; preds = %bb.qn, %bb.qo
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.qp:                                            ; preds = %parser_set_lex_state.exit1035
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bpm)
  %i.bpt = and i32 %i.aiz, 1
  %.not807 = icmp eq i32 %i.bpt, 0
  br i1 %.not807, label %pushback.exit1038, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.bpu = load i32, ptr %i.e, align 8
  %i.bpv = and i32 %i.bpu, -9
  store i32 %i.bpv, ptr %i.e, align 8
  %i.bpw = load ptr, ptr %i.aih, align 8, !tbaa !188 ; 2 uses
  %i.bpx = getelementptr i8, ptr %i.bpw, i64 -1   ; 3 uses
  store ptr %i.bpx, ptr %i.aih, align 8, !tbaa !188
  %i.bpy = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bpz = icmp ugt ptr %i.bpx, %i.bpy
  br i1 %i.bpz, label %bb.qr, label %pushback.exit1038

bb.qr:                                            ; preds = %bb.qq
  %i.bqa = load i8, ptr %i.bpx, align 1, !tbaa !15
  %i.bqb = icmp eq i8 %i.bqa, 10
  br i1 %i.bqb, label %bb.qs, label %pushback.exit1038

bb.qs:                                            ; preds = %bb.qr
  %i.bqc = getelementptr i8, ptr %i.bpw, i64 -2   ; 2 uses
  %i.bqd = load i8, ptr %i.bqc, align 1, !tbaa !15
  %i.bqe = icmp eq i8 %i.bqd, 13
  br i1 %i.bqe, label %bb.qt, label %pushback.exit1038

bb.qt:                                            ; preds = %bb.qs
  store ptr %i.bqc, ptr %i.aih, align 8, !tbaa !188
  br label %pushback.exit1038

bb.qu:                                            ; preds = %bb.qk
  %i.bqf = load ptr, ptr %0, align 8, !tbaa !62
  store i64 124, ptr %i.bqf, align 8, !tbaa !15
  %i.bqg = load i32, ptr %i.e, align 8
  %i.bqh = and i32 %i.bqg, 32
  %.not.i1039 = icmp eq i32 %i.bqh, 0
  br i1 %.not.i1039, label %parser_set_lex_state.exit1040, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.bqi = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bqj = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqi, i32 noundef 1, i32 noundef 10886) ; 0 uses
  br label %parser_set_lex_state.exit1040

parser_set_lex_state.exit1040:                    ; preds = %bb.qu, %bb.qv
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.qw:                                            ; preds = %bb.qk
  %i.bqk = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bql = and i32 %i.bqk, 384
  %.not806 = icmp eq i32 %i.bql, 0
  %i.bqm = select i1 %.not806, i32 1025, i32 16   ; 2 uses
  %i.bqn = load i32, ptr %i.e, align 8
  %i.bqo = and i32 %i.bqn, 32
  %.not.i1041 = icmp eq i32 %i.bqo, 0
  br i1 %.not.i1041, label %parser_set_lex_state.exit1042, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  %i.bqp = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqk, i32 noundef %i.bqm, i32 noundef 10889) ; 0 uses
  br label %parser_set_lex_state.exit1042

parser_set_lex_state.exit1042:                    ; preds = %bb.qw, %bb.qx
  store i32 %i.bqm, ptr %i.aik, align 8, !tbaa !67
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bph)
  br label %pushback.exit1038

bb.qy:                                            ; preds = %bb.hw
  %i.bqq = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 8 uses
  %i.bqr = load i32, ptr %i.aik, align 8, !tbaa !67 ; 6 uses
  %i.bqs = and i32 %i.bqr, 384
  %.not800 = icmp eq i32 %i.bqs, 0
  br i1 %.not800, label %bb.rc, label %bb.qz

bb.qz:                                            ; preds = %bb.qy
  %i.bqt = load i32, ptr %i.e, align 8
  %i.bqu = and i32 %i.bqt, 32
  %.not.i1043 = icmp eq i32 %i.bqu, 0
  br i1 %.not.i1043, label %parser_set_lex_state.exit1044, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.bqv = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqr, i32 noundef 16, i32 noundef 10896) ; 0 uses
  br label %parser_set_lex_state.exit1044

parser_set_lex_state.exit1044:                    ; preds = %bb.qz, %bb.ra
  store i32 16, ptr %i.aik, align 8, !tbaa !67
  %i.bqw = icmp eq i32 %i.bqq, 64
  br i1 %i.bqw, label %pushback.exit1038, label %bb.rb

bb.rb:                                            ; preds = %parser_set_lex_state.exit1044
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bqq)
  br label %pushback.exit1038

bb.rc:                                            ; preds = %bb.qy
  %i.bqx = icmp eq i32 %i.bqq, 61
  br i1 %i.bqx, label %bb.rd, label %bb.rf

bb.rd:                                            ; preds = %bb.rc
  %i.bqy = load ptr, ptr %0, align 8, !tbaa !62
  store i64 43, ptr %i.bqy, align 8, !tbaa !15
  %i.bqz = load i32, ptr %i.e, align 8
  %i.bra = and i32 %i.bqz, 32
  %.not.i1045 = icmp eq i32 %i.bra, 0
  br i1 %.not.i1045, label %parser_set_lex_state.exit1046, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.brb = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.brc = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.brb, i32 noundef 1, i32 noundef 10905) ; 0 uses
  br label %parser_set_lex_state.exit1046

parser_set_lex_state.exit1046:                    ; preds = %bb.rd, %bb.re
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.rf:                                            ; preds = %bb.rc
  %i.brd = and i32 %i.bqr, 577
  %.not801 = icmp ne i32 %i.brd, 0
  %i.bre = and i32 %i.bqr, 2064
  %i.brf = icmp eq i32 %i.bre, 2064
  %or.cond863 = or i1 %.not801, %i.brf
  br i1 %or.cond863, label %bb.rj, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  %i.brg = and i32 %i.bqr, 48
  %i.brh = icmp ne i32 %i.brg, 0
  %10 = icmp ne i32 %.0694, 0                     ; 2 uses
  %or.cond27 = select i1 %i.brh, i1 %10, i1 false
  br i1 %or.cond27, label %bb.rh, label %bb.rm

bb.rh:                                            ; preds = %bb.rg
  switch i32 %i.bqq, label %bb.ri [
    i32 32, label %bb.rm
    i32 13, label %bb.rm
    i32 12, label %bb.rm
    i32 11, label %bb.rm
    i32 10, label %bb.rm
    i32 9, label %bb.rm
  ]

bb.ri:                                            ; preds = %bb.rh
  %i.bri = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.brj = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bri, i32 noundef %i.brj, ptr noundef nonnull @.str.843, i32 noundef 43) #31
  br label %bb.rj

bb.rj:                                            ; preds = %bb.ri, %bb.rf
  %i.brk = load i32, ptr %i.e, align 8
  %i.brl = and i32 %i.brk, 32
  %.not.i1048 = icmp eq i32 %i.brl, 0
  br i1 %.not.i1048, label %parser_set_lex_state.exit1049, label %bb.rk

bb.rk:                                            ; preds = %bb.rj
  %i.brm = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.brn = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.brm, i32 noundef 1, i32 noundef 10909) ; 0 uses
  br label %parser_set_lex_state.exit1049

parser_set_lex_state.exit1049:                    ; preds = %bb.rj, %bb.rk
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bqq)
  %i.bro = add nsw i32 %i.bqq, -58
  %or.cond1274 = icmp ult i32 %i.bro, -10
  br i1 %or.cond1274, label %pushback.exit1038, label %bb.rl

bb.rl:                                            ; preds = %parser_set_lex_state.exit1049
  %i.brp = call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef 43)
  br label %pushback.exit1038

bb.rm:                                            ; preds = %bb.rh, %bb.rh, %bb.rh, %bb.rh, %bb.rh, %bb.rh, %bb.rg
  %i.brq = load i32, ptr %i.e, align 8
  %i.brr = and i32 %i.brq, 32
  %.not.i1050 = icmp eq i32 %i.brr, 0
  br i1 %.not.i1050, label %parser_set_lex_state.exit1051, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.brs = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bqr, i32 noundef 1, i32 noundef 10916) ; 0 uses
  br label %parser_set_lex_state.exit1051

parser_set_lex_state.exit1051:                    ; preds = %bb.rm, %bb.rn
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bqq)
  %i.brt = and i32 %i.aiz, 904
  %i.bru = icmp eq i32 %i.brt, 0
  %or.cond29 = select i1 %i.bru, i1 %10, i1 false
  br i1 %or.cond29, label %bb.ro, label %pushback.exit1038

bb.ro:                                            ; preds = %parser_set_lex_state.exit1051
  %switch.tableidx2981 = add nsw i32 %i.bqq, -9   ; 2 uses
  %i.brv = icmp ult i32 %switch.tableidx2981, 24
  %switch.shifted2985 = lshr i32 8388639, %switch.tableidx2981
  %switch.lobit2986 = trunc i32 %switch.shifted2985 to i1
  %or.cond3000.a = select i1 %i.brv, i1 %switch.lobit2986, i1 false
  br i1 %or.cond3000.a, label %pushback.exit1038, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.brw = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.brx = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.brw, i32 noundef %i.brx, ptr noundef nonnull @.str.780) #31
  %i.bry = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.brz = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bry, i32 noundef %i.brz, ptr noundef nonnull @.str.781) #31
  br label %pushback.exit1038

bb.rq:                                            ; preds = %bb.hw
  %i.bsa = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 8 uses
  %i.bsb = load i32, ptr %i.aik, align 8, !tbaa !67 ; 7 uses
  %i.bsc = and i32 %i.bsb, 384
  %.not794 = icmp eq i32 %i.bsc, 0
  br i1 %.not794, label %bb.ru, label %bb.rr

bb.rr:                                            ; preds = %bb.rq
  %i.bsd = load i32, ptr %i.e, align 8
  %i.bse = and i32 %i.bsd, 32
  %.not.i1053 = icmp eq i32 %i.bse, 0
  br i1 %.not.i1053, label %parser_set_lex_state.exit1054, label %bb.rs

bb.rs:                                            ; preds = %bb.rr
  %i.bsf = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bsb, i32 noundef 16, i32 noundef 10923) ; 0 uses
  br label %parser_set_lex_state.exit1054

parser_set_lex_state.exit1054:                    ; preds = %bb.rr, %bb.rs
  store i32 16, ptr %i.aik, align 8, !tbaa !67
  %i.bsg = icmp eq i32 %i.bsa, 64
  br i1 %i.bsg, label %pushback.exit1038, label %bb.rt

bb.rt:                                            ; preds = %parser_set_lex_state.exit1054
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bsa)
  br label %pushback.exit1038

bb.ru:                                            ; preds = %bb.rq
  switch i32 %i.bsa, label %bb.rz [
    i32 61, label %bb.rv
    i32 62, label %bb.rx
  ]

bb.rv:                                            ; preds = %bb.ru
  %i.bsh = load ptr, ptr %0, align 8, !tbaa !62
  store i64 45, ptr %i.bsh, align 8, !tbaa !15
  %i.bsi = load i32, ptr %i.e, align 8
  %i.bsj = and i32 %i.bsi, 32
  %.not.i1055 = icmp eq i32 %i.bsj, 0
  br i1 %.not.i1055, label %parser_set_lex_state.exit1056, label %bb.rw

bb.rw:                                            ; preds = %bb.rv
  %i.bsk = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bsl = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bsk, i32 noundef 1, i32 noundef 10932) ; 0 uses
  br label %parser_set_lex_state.exit1056

parser_set_lex_state.exit1056:                    ; preds = %bb.rv, %bb.rw
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.rx:                                            ; preds = %bb.ru
  %i.bsm = load i32, ptr %i.e, align 8
  %i.bsn = and i32 %i.bsm, 32
  %.not.i1057 = icmp eq i32 %i.bsn, 0
  br i1 %.not.i1057, label %parser_set_lex_state.exit1058, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.bso = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bsb, i32 noundef 8, i32 noundef 10936) ; 0 uses
  br label %parser_set_lex_state.exit1058

parser_set_lex_state.exit1058:                    ; preds = %bb.rx, %bb.ry
  store i32 8, ptr %i.aik, align 8, !tbaa !67
  %i.bsp = getelementptr i8, ptr %0, i64 112      ; 2 uses
  %i.bsq = load i32, ptr %i.bsp, align 8, !tbaa !164
  %i.bsr = load ptr, ptr %0, align 8, !tbaa !62
  store i32 %i.bsq, ptr %i.bsr, align 8, !tbaa !15
  %i.bss = getelementptr i8, ptr %0, i64 108
  %i.bst = load i32, ptr %i.bss, align 4, !tbaa !181
  store i32 %i.bst, ptr %i.bsp, align 8, !tbaa !164
  br label %pushback.exit1038

bb.rz:                                            ; preds = %bb.ru
  %i.bsu = and i32 %i.bsb, 577
  %.not795 = icmp ne i32 %i.bsu, 0
  %i.bsv = and i32 %i.bsb, 2064
  %i.bsw = icmp eq i32 %i.bsv, 2064
  %or.cond865 = or i1 %.not795, %i.bsw
  br i1 %or.cond865, label %bb.sd, label %bb.sa

bb.sa:                                            ; preds = %bb.rz
  %i.bsx = and i32 %i.bsb, 48
  %i.bsy = icmp ne i32 %i.bsx, 0
  %11 = icmp ne i32 %.0694, 0                     ; 2 uses
  %or.cond31 = select i1 %i.bsy, i1 %11, i1 false
  br i1 %or.cond31, label %bb.sb, label %bb.sf

bb.sb:                                            ; preds = %bb.sa
  switch i32 %i.bsa, label %bb.sc [
    i32 32, label %bb.sf
    i32 13, label %bb.sf
    i32 12, label %bb.sf
    i32 11, label %bb.sf
    i32 10, label %bb.sf
    i32 9, label %bb.sf
  ]

bb.sc:                                            ; preds = %bb.sb
  %i.bsz = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bta = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bsz, i32 noundef %i.bta, ptr noundef nonnull @.str.843, i32 noundef 45) #31
  br label %bb.sd

bb.sd:                                            ; preds = %bb.sc, %bb.rz
  %i.btb = load i32, ptr %i.e, align 8
  %i.btc = and i32 %i.btb, 32
  %.not.i1060 = icmp eq i32 %i.btc, 0
  br i1 %.not.i1060, label %parser_set_lex_state.exit1061, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.btd = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bte = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.btd, i32 noundef 1, i32 noundef 10942) ; 0 uses
  br label %parser_set_lex_state.exit1061

parser_set_lex_state.exit1061:                    ; preds = %bb.sd, %bb.se
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bsa)
  %i.btf = add nsw i32 %i.bsa, -58
  %or.cond1276 = icmp ult i32 %i.btf, -10
  %spec.select1278 = select i1 %or.cond1276, i32 133, i32 360
  br label %pushback.exit1038

bb.sf:                                            ; preds = %bb.sb, %bb.sb, %bb.sb, %bb.sb, %bb.sb, %bb.sb, %bb.sa
  %i.btg = load i32, ptr %i.e, align 8
  %i.bth = and i32 %i.btg, 32
  %.not.i1062 = icmp eq i32 %i.bth, 0
  br i1 %.not.i1062, label %parser_set_lex_state.exit1063, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.bti = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bsb, i32 noundef 1, i32 noundef 10949) ; 0 uses
  br label %parser_set_lex_state.exit1063

parser_set_lex_state.exit1063:                    ; preds = %bb.sf, %bb.sg
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.bsa)
  %i.btj = and i32 %i.aiz, 904
  %i.btk = icmp eq i32 %i.btj, 0
  %or.cond33 = select i1 %i.btk, i1 %11, i1 false
  br i1 %or.cond33, label %bb.sh, label %pushback.exit1038

bb.sh:                                            ; preds = %parser_set_lex_state.exit1063
  %switch.tableidx2987 = add nsw i32 %i.bsa, -9   ; 2 uses
  %i.btl = icmp ult i32 %switch.tableidx2987, 24
  %switch.shifted2991 = lshr i32 8388639, %switch.tableidx2987
  %switch.lobit2992 = trunc i32 %switch.shifted2991 to i1
  %or.cond3001.a = select i1 %i.btl, i1 %switch.lobit2992, i1 false
  br i1 %or.cond3001.a, label %pushback.exit1038, label %bb.si

bb.si:                                            ; preds = %bb.sh
  %i.btm = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.btn = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.btm, i32 noundef %i.btn, ptr noundef nonnull @.str.782) #31
  %i.bto = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.btp = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.bto, i32 noundef %i.btp, ptr noundef nonnull @.str.781) #31
  br label %pushback.exit1038

bb.sj:                                            ; preds = %bb.hw
  %i.btq = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.btr = load i32, ptr %i.e, align 8
  %i.bts = and i32 %i.btr, 32
  %.not.i1065 = icmp eq i32 %i.bts, 0
  br i1 %.not.i1065, label %parser_set_lex_state.exit1066, label %bb.sk

bb.sk:                                            ; preds = %bb.sj
  %i.btt = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.btq, i32 noundef 1, i32 noundef 10955) ; 0 uses
  %.pre1964 = load ptr, ptr %i.aih, align 8, !tbaa !188
  br label %parser_set_lex_state.exit1066

parser_set_lex_state.exit1066:                    ; preds = %bb.sj, %bb.sk
  %i.btu = phi ptr [ %i.ajh, %bb.sj ], [ %.pre1964, %bb.sk ] ; 2 uses
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  %i.btv = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i1067 = icmp ult ptr %i.btu, %i.btv
  br i1 %.not.i1067, label %bb.sl, label %.critedge.i1068, !prof !527

bb.sl:                                            ; preds = %parser_set_lex_state.exit1066
  %i.btw = load i32, ptr %i.e, align 8
  %i.btx = and i32 %i.btw, 8
  %.not13.i1074 = icmp eq i32 %i.btx, 0
  br i1 %.not13.i1074, label %bb.sm, label %.critedge.i1068, !prof !527

bb.sm:                                            ; preds = %bb.sl
  %i.bty = load ptr, ptr %i.aim, align 8, !tbaa !528
  %i.btz = icmp ugt ptr %i.bty, inttoptr (i64 1 to ptr)
  br i1 %i.btz, label %.critedge.i1068, label %bb.sn, !prof !205

.critedge.i1068:                                  ; preds = %bb.sm, %bb.sl, %parser_set_lex_state.exit1066
  %i.bua = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i1069 = icmp eq i32 %i.bua, 0
  br i1 %.not14.i1069, label %.critedge._crit_edge.i1071, label %pushback.exit1088

.critedge._crit_edge.i1071:                       ; preds = %.critedge.i1068
  %.pre.i1072 = load ptr, ptr %i.aih, align 8, !tbaa !188
  br label %bb.sn

bb.sn:                                            ; preds = %.critedge._crit_edge.i1071, %bb.sm
  %i.bub = phi ptr [ %.pre.i1072, %.critedge._crit_edge.i1071 ], [ %i.btu, %bb.sm ] ; 3 uses
  %i.buc = getelementptr i8, ptr %i.bub, i64 1    ; 8 uses
  store ptr %i.buc, ptr %i.aih, align 8, !tbaa !188
  %i.bud = load i8, ptr %i.bub, align 1, !tbaa !15 ; 3 uses
  %i.bue = icmp eq i8 %i.bud, 13
  br i1 %i.bue, label %bb.so, label %nextc0.exit1075, !prof !205

bb.so:                                            ; preds = %bb.sn
  %i.buf = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i.i1073 = icmp ult ptr %i.buc, %i.buf
  br i1 %.not.i.i1073, label %bb.sp, label %.thread1203

bb.sp:                                            ; preds = %bb.so
  %i.bug = load i8, ptr %i.buc, align 1, !tbaa !15
  %i.buh = icmp eq i8 %i.bug, 10                  ; 2 uses
  %i.bui = getelementptr i8, ptr %i.bub, i64 2
  %spec.select2543.a = select i1 %i.buh, ptr %i.bui, ptr %i.buc
  %spec.select2544.a = select i1 %i.buh, i32 10, i32 13
  br label %.thread1203

nextc0.exit1075:                                  ; preds = %bb.sn
  %i.buj = zext i8 %i.bud to i32
  %i.buk = icmp eq i8 %i.bud, 46
  br i1 %i.buk, label %bb.sq, label %.thread1203

bb.sq:                                            ; preds = %nextc0.exit1075
  %i.bul = and i32 %i.btq, 577
  %.not787.le = icmp ne i32 %i.bul, 0
  %i.bum = and i32 %i.btq, 2064
  %i.bun = icmp eq i32 %i.bum, 2064
  %i.buo = or i1 %.not787.le, %i.bun              ; 2 uses
  %i.bup = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i1076 = icmp ult ptr %i.buc, %i.bup
  br i1 %.not.i1076, label %bb.sr, label %.critedge.i1077, !prof !527

bb.sr:                                            ; preds = %bb.sq
  %i.buq = load i32, ptr %i.e, align 8
  %i.bur = and i32 %i.buq, 8
  %.not13.i1083 = icmp eq i32 %i.bur, 0
  br i1 %.not13.i1083, label %bb.ss, label %.critedge.i1077, !prof !527

bb.ss:                                            ; preds = %bb.sr
  %i.bus = load ptr, ptr %i.aim, align 8, !tbaa !528
  %i.but = icmp ugt ptr %i.bus, inttoptr (i64 1 to ptr)
  br i1 %i.but, label %.critedge.i1077, label %bb.st, !prof !205

.critedge.i1077:                                  ; preds = %bb.ss, %bb.sr, %bb.sq
  %i.buu = call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i1078 = icmp eq i32 %i.buu, 0
  br i1 %.not14.i1078, label %.critedge._crit_edge.i1080, label %pushback.exit1087

.critedge._crit_edge.i1080:                       ; preds = %.critedge.i1077
  %.pre.i1081 = load ptr, ptr %i.aih, align 8, !tbaa !188
  br label %bb.st

bb.st:                                            ; preds = %.critedge._crit_edge.i1080, %bb.ss
  %i.buv = phi ptr [ %.pre.i1081, %.critedge._crit_edge.i1080 ], [ %i.buc, %bb.ss ] ; 3 uses
  %i.buw = getelementptr i8, ptr %i.buv, i64 1    ; 6 uses
  store ptr %i.buw, ptr %i.aih, align 8, !tbaa !188
  %i.bux = load i8, ptr %i.buv, align 1, !tbaa !15
  switch i8 %i.bux, label %.thread1198 [
    i8 13, label %bb.su
    i8 46, label %bb.sw
  ], !prof !602

bb.su:                                            ; preds = %bb.st
  %i.buy = load ptr, ptr %i.ail, align 8, !tbaa !426
  %.not.i.i1082 = icmp ult ptr %i.buw, %i.buy
  br i1 %.not.i.i1082, label %bb.sv, label %.thread1198

bb.sv:                                            ; preds = %bb.su
  %i.buz = load i8, ptr %i.buw, align 1, !tbaa !15
  %i.bva = icmp eq i8 %i.buz, 10
  %i.bvb = getelementptr i8, ptr %i.buv, i64 2
  %spec.select2545 = select i1 %i.bva, ptr %i.bvb, ptr %i.buw
  br label %.thread1198

bb.sw:                                            ; preds = %bb.st
  %i.bvc = load i16, ptr %i.aix, align 8
  %i.bvd = and i16 %i.bvc, 4
  %.not791 = icmp eq i16 %i.bvd, 0
  br i1 %.not791, label %bb.sx, label %bb.sy

bb.sx:                                            ; preds = %bb.sw
  %i.bve = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.bvf = and i32 %i.bve, 1032
  %i.bvg = icmp eq i32 %i.bvf, 0
  %12 = icmp ne i32 %.0697, 0
  %or.cond35 = select i1 %i.bvg, i1 true, i1 %12
  %i.bvh = and i32 %i.bve, 48
  %.not792 = icmp eq i32 %i.bvh, 0
  %or.cond866 = and i1 %.not792, %or.cond35
  br i1 %or.cond866, label %bb.ta, label %bb.sy

bb.sy:                                            ; preds = %bb.sx, %bb.sw
  %i.bvi = load i32, ptr %i.e, align 8
  %i.bvj = and i32 %i.bvi, 32
  %.not.i1085 = icmp eq i32 %i.bvj, 0
  br i1 %.not.i1085, label %parser_set_lex_state.exit1086, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  %i.bvk = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bvl = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bvk, i32 noundef 4, i32 noundef 10959) ; 0 uses
  br label %parser_set_lex_state.exit1086

parser_set_lex_state.exit1086:                    ; preds = %bb.sy, %bb.sz
  store i32 4, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.ta:                                            ; preds = %bb.sx
  %i.bvm = getelementptr i8, ptr %0, i64 108
  %i.bvn = load i32, ptr %i.bvm, align 4, !tbaa !181
  %i.bvo = icmp eq i32 %i.bvn, 0
  br i1 %i.bvo, label %bb.tb, label %bb.td

bb.tb:                                            ; preds = %bb.ta
  %i.bvp = call fastcc i32 @looking_at_eol_p(ptr noundef nonnull %0)
  %.not793 = icmp eq i32 %i.bvp, 0
  br i1 %.not793, label %bb.td, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.bvq = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.bvr = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warn(ptr noundef %i.bvq, i32 noundef %i.bvr, ptr noundef nonnull @.str.783) #31
  br label %bb.td

bb.td:                                            ; preds = %bb.tc, %bb.tb, %bb.ta
  %i.bvs = select i1 %i.buo, i32 131, i32 129
  br label %pushback.exit1038

.thread1198:                                      ; preds = %bb.sv, %bb.st, %bb.su
  %i.bvt = phi ptr [ %i.buw, %bb.st ], [ %i.buw, %bb.su ], [ %spec.select2545, %bb.sv ] ; 2 uses
  %i.bvu = load i32, ptr %i.e, align 8
  %i.bvv = and i32 %i.bvu, -9
  store i32 %i.bvv, ptr %i.e, align 8
  %i.bvw = getelementptr i8, ptr %i.bvt, i64 -1   ; 3 uses
  store ptr %i.bvw, ptr %i.aih, align 8, !tbaa !188
  %i.bvx = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bvy = icmp ugt ptr %i.bvw, %i.bvx
  br i1 %i.bvy, label %bb.te, label %pushback.exit1087

bb.te:                                            ; preds = %.thread1198
  %i.bvz = load i8, ptr %i.bvw, align 1, !tbaa !15
  %i.bwa = icmp eq i8 %i.bvz, 10
  br i1 %i.bwa, label %bb.tf, label %pushback.exit1087

bb.tf:                                            ; preds = %bb.te
  %i.bwb = getelementptr i8, ptr %i.bvt, i64 -2   ; 2 uses
  %i.bwc = load i8, ptr %i.bwb, align 1, !tbaa !15
  %i.bwd = icmp eq i8 %i.bwc, 13
  br i1 %i.bwd, label %bb.tg, label %pushback.exit1087

bb.tg:                                            ; preds = %bb.tf
  store ptr %i.bwb, ptr %i.aih, align 8, !tbaa !188
  br label %pushback.exit1087

pushback.exit1087:                                ; preds = %.critedge.i1077, %.thread1198, %bb.te, %bb.tf, %bb.tg
  %i.bwe = select i1 %i.buo, i32 130, i32 128
  br label %pushback.exit1038

.thread1203:                                      ; preds = %bb.sp, %bb.so, %nextc0.exit1075
  %i.bwf = phi ptr [ %i.buc, %nextc0.exit1075 ], [ %i.buc, %bb.so ], [ %spec.select2543.a, %bb.sp ] ; 2 uses
  %.011.i107011951205 = phi i32 [ %i.buj, %nextc0.exit1075 ], [ 13, %bb.so ], [ %spec.select2544.a, %bb.sp ]
  %i.bwg = load i32, ptr %i.e, align 8
  %i.bwh = and i32 %i.bwg, -9
  store i32 %i.bwh, ptr %i.e, align 8
  %i.bwi = getelementptr i8, ptr %i.bwf, i64 -1   ; 6 uses
  store ptr %i.bwi, ptr %i.aih, align 8, !tbaa !188
  %i.bwj = load ptr, ptr %i.ain, align 8, !tbaa !50 ; 2 uses
  %i.bwk = icmp ugt ptr %i.bwi, %i.bwj
  br i1 %i.bwk, label %bb.th, label %bb.tk

bb.th:                                            ; preds = %.thread1203
  %i.bwl = load i8, ptr %i.bwi, align 1, !tbaa !15
  %i.bwm = icmp eq i8 %i.bwl, 10
  br i1 %i.bwm, label %bb.ti, label %bb.tk

bb.ti:                                            ; preds = %bb.th
  %i.bwn = getelementptr i8, ptr %i.bwf, i64 -2   ; 3 uses
  %i.bwo = load i8, ptr %i.bwn, align 1, !tbaa !15
  %i.bwp = icmp eq i8 %i.bwo, 13
  br i1 %i.bwp, label %bb.tj, label %bb.tk

bb.tj:                                            ; preds = %bb.ti
  store ptr %i.bwn, ptr %i.aih, align 8, !tbaa !188
  br label %bb.tk

bb.tk:                                            ; preds = %bb.tj, %.thread1203, %bb.th, %bb.ti
  %i.bwq = phi ptr [ %i.bwn, %bb.tj ], [ %i.bwi, %.thread1203 ], [ %i.bwi, %bb.th ], [ %i.bwi, %bb.ti ] ; 2 uses
  %i.bwr = add nsw i32 %.011.i107011951205, -58
  %i.bws = icmp ult i32 %i.bwr, -10
  br i1 %i.bws, label %pushback.exit1088, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  %i.bwt = getelementptr i8, ptr %i.bwq, i64 -1
  %i.bwu = icmp ugt ptr %i.bwt, %i.bwj
  br i1 %i.bwu, label %bb.tm, label %.critedge

bb.tm:                                            ; preds = %bb.tl
  %i.bwv = getelementptr i8, ptr %i.bwq, i64 -2
  %i.bww = load i8, ptr %i.bwv, align 1, !tbaa !15
  %i.bwx = sext i8 %i.bww to i32
  %i.bwy = add nsw i32 %i.bwx, -58
  %i.bwz = icmp ult i32 %i.bwy, -10
  %i.bxa = call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef 46) ; 0 uses
  br i1 %i.bwz, label %bb.tp, label %bb.tn

bb.tn:                                            ; preds = %bb.tm
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.bxb = load i32, ptr %i.aio, align 4, !tbaa !29 ; 4 uses
  %i.bxc = load ptr, ptr %i.aij, align 8, !tbaa !49
  %i.bxd = load ptr, ptr %i.ain, align 8, !tbaa !50
  %i.bxe = ptrtoint ptr %i.bxc to i64
  %i.bxf = ptrtoint ptr %i.bxd to i64             ; 2 uses
  %i.bxg = sub i64 %i.bxe, %i.bxf
  %i.bxh = trunc i64 %i.bxg to i32
  %i.bxi = load ptr, ptr %i.aih, align 8, !tbaa !188
  %i.bxj = ptrtoint ptr %i.bxi to i64
  %i.bxk = sub i64 %i.bxj, %i.bxf
  %i.bxl = trunc i64 %i.bxk to i32
  store i32 %i.bxb, ptr %1, align 4, !tbaa !51
  store i32 %i.bxh, ptr %i.aip, align 4, !tbaa !54
  store i32 %i.bxb, ptr %i.aiq, align 4, !tbaa !55
  store i32 %i.bxl, ptr %i.air, align 4, !tbaa !56
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.784)
  %i.bxm = load i32, ptr %i.aio, align 4, !tbaa !29
  %i.bxn = icmp eq i32 %i.bxb, %i.bxm
  br i1 %i.bxn, label %bb.to, label %parser_yyerror0.exit

bb.to:                                            ; preds = %bb.tn
  %i.bxo = load ptr, ptr %i.ais, align 8, !tbaa !189
  %i.bxp = load i64, ptr %i.ait, align 8, !tbaa !190
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.bxp, ptr noundef nonnull readonly %1, i32 noundef %i.bxb, ptr noundef %i.bxo)
  br label %parser_yyerror0.exit

parser_yyerror0.exit:                             ; preds = %bb.tn, %bb.to
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.tq

.critedge:                                        ; preds = %bb.tl
  %i.bxq = call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef 46) ; 0 uses
  br label %bb.tp

bb.tp:                                            ; preds = %.critedge, %bb.tm
  call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef @.str.785)
  br label %bb.tq

bb.tq:                                            ; preds = %bb.tp, %parser_yyerror0.exit
  %i.bxr = load i32, ptr %i.e, align 8
  %i.bxs = and i32 %i.bxr, 32
  %.not.i1089 = icmp eq i32 %i.bxs, 0
  br i1 %.not.i1089, label %bb.tt, label %bb.tr

bb.tr:                                            ; preds = %bb.tq
  %i.bxt = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bxu = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bxt, i32 noundef 2, i32 noundef 10980) ; 0 uses
  br label %bb.tt

pushback.exit1088:                                ; preds = %.critedge.i1068, %bb.tk
  %i.bxv = load ptr, ptr %0, align 8, !tbaa !62
  store i64 46, ptr %i.bxv, align 8, !tbaa !15
  %i.bxw = load i32, ptr %i.e, align 8
  %i.bxx = and i32 %i.bxw, 32
  %.not.i1091 = icmp eq i32 %i.bxx, 0
  br i1 %.not.i1091, label %parser_set_lex_state.exit1092, label %bb.ts

bb.ts:                                            ; preds = %pushback.exit1088
  %i.bxy = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bxz = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bxy, i32 noundef 256, i32 noundef 10985) ; 0 uses
  br label %parser_set_lex_state.exit1092

parser_set_lex_state.exit1092:                    ; preds = %pushback.exit1088, %bb.ts
  store i32 256, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.tt:                                            ; preds = %bb.tr, %bb.tq
  store i32 2, ptr %i.aik, align 8, !tbaa !67
  %i.bya = load ptr, ptr %i.aih, align 8, !tbaa !188
  store ptr %i.bya, ptr %i.aij, align 8, !tbaa !49
  br label %.backedge

bb.tu:                                            ; preds = %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw
  %i.byb = call fastcc i32 @parse_numeric(ptr noundef nonnull %0, i32 noundef %i.ajj)
  br label %pushback.exit1038

bb.tv:                                            ; preds = %bb.hw
  %i.byc = getelementptr i8, ptr %0, i64 120      ; 2 uses
  %i.byd = load i64, ptr %i.byc, align 8, !tbaa !111
  %i.bye = lshr i64 %i.byd, 1                     ; 2 uses
  store i64 %i.bye, ptr %i.byc, align 8, !tbaa !111
  %i.byf = load i32, ptr %i.e, align 8
  %i.byg = and i32 %i.byf, 32
  %.not785 = icmp eq i32 %i.byg, 0
  br i1 %.not785, label %.thread2178, label %bb.tw

.thread2178:                                      ; preds = %bb.tv
  %i.byh = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.byi = load i64, ptr %i.byh, align 8, !tbaa !121
  %i.byj = lshr i64 %i.byi, 1
  store i64 %i.byj, ptr %i.byh, align 8, !tbaa !121
  br label %parser_set_lex_state.exit1094

bb.tw:                                            ; preds = %bb.tv
  call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bye, ptr noundef nonnull @.str.13, i32 noundef 10994)
  %.pre1962.a = load i32, ptr %i.e, align 8
  %.pre1973.a = and i32 %.pre1962.a, 32
  %i.byk = icmp eq i32 %.pre1973.a, 0
  %i.byl = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.bym = load i64, ptr %i.byl, align 8, !tbaa !121
  %i.byn = lshr i64 %i.bym, 1                     ; 2 uses
  store i64 %i.byn, ptr %i.byl, align 8, !tbaa !121
  br i1 %i.byk, label %parser_set_lex_state.exit1094, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.byn, ptr noundef nonnull @.str.16, i32 noundef 10995)
  %.pre1963 = load i32, ptr %i.e, align 8
  %.pre1974 = and i32 %.pre1963, 32
  %i.byo = icmp eq i32 %.pre1974, 0
  br i1 %i.byo, label %parser_set_lex_state.exit1094, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  %i.byp = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.byq = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.byp, i32 noundef 8, i32 noundef 10996) ; 0 uses
  br label %parser_set_lex_state.exit1094

parser_set_lex_state.exit1094:                    ; preds = %.thread2178, %bb.tw, %bb.tx, %bb.ty
  store i32 8, ptr %i.aik, align 8, !tbaa !67
  %i.byr = getelementptr i8, ptr %0, i64 108      ; 2 uses
  %i.bys = load i32, ptr %i.byr, align 4, !tbaa !181
  %i.byt = add i32 %i.bys, -1
  store i32 %i.byt, ptr %i.byr, align 4, !tbaa !181
  br label %pushback.exit1038

bb.tz:                                            ; preds = %bb.hw
  %i.byu = getelementptr i8, ptr %0, i64 120      ; 2 uses
  %i.byv = load i64, ptr %i.byu, align 8, !tbaa !111
  %i.byw = lshr i64 %i.byv, 1                     ; 2 uses
  store i64 %i.byw, ptr %i.byu, align 8, !tbaa !111
  %i.byx = load i32, ptr %i.e, align 8
  %i.byy = and i32 %i.byx, 32
  %.not783 = icmp eq i32 %i.byy, 0
  br i1 %.not783, label %.thread2182, label %bb.ua

.thread2182:                                      ; preds = %bb.tz
  %i.byz = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.bza = load i64, ptr %i.byz, align 8, !tbaa !121
  %i.bzb = lshr i64 %i.bza, 1
  store i64 %i.bzb, ptr %i.byz, align 8, !tbaa !121
  br label %parser_set_lex_state.exit1096

bb.ua:                                            ; preds = %bb.tz
  call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.byw, ptr noundef nonnull @.str.13, i32 noundef 11001)
  %.pre1960.a = load i32, ptr %i.e, align 8
  %.pre1976 = and i32 %.pre1960.a, 32
  %i.bzc = icmp eq i32 %.pre1976, 0
  %i.bzd = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.bze = load i64, ptr %i.bzd, align 8, !tbaa !121
  %i.bzf = lshr i64 %i.bze, 1                     ; 2 uses
  store i64 %i.bzf, ptr %i.bzd, align 8, !tbaa !121
  br i1 %i.bzc, label %parser_set_lex_state.exit1096, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bzf, ptr noundef nonnull @.str.16, i32 noundef 11002)
  %.pre1961 = load i32, ptr %i.e, align 8
  %.pre1978 = and i32 %.pre1961, 32
  %i.bzg = icmp eq i32 %.pre1978, 0
  br i1 %i.bzg, label %parser_set_lex_state.exit1096, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  %i.bzh = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.bzi = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.bzh, i32 noundef 2, i32 noundef 11003) ; 0 uses
  br label %parser_set_lex_state.exit1096

parser_set_lex_state.exit1096:                    ; preds = %.thread2182, %bb.ua, %bb.ub, %bb.uc
  store i32 2, ptr %i.aik, align 8, !tbaa !67
  %i.bzj = getelementptr i8, ptr %0, i64 108      ; 2 uses
  %i.bzk = load i32, ptr %i.bzj, align 4, !tbaa !181
  %i.bzl = add i32 %i.bzk, -1
  store i32 %i.bzl, ptr %i.bzj, align 4, !tbaa !181
  br label %pushback.exit1038

bb.ud:                                            ; preds = %bb.hw
  %i.bzm = getelementptr i8, ptr %0, i64 116      ; 2 uses
  %i.bzn = load i32, ptr %i.bzm, align 4, !tbaa !179 ; 2 uses
  %i.bzo = add i32 %i.bzn, -1
  store i32 %i.bzo, ptr %i.bzm, align 4, !tbaa !179
  %.not780 = icmp eq i32 %i.bzn, 0
  br i1 %.not780, label %pushback.exit1038, label %bb.ue

bb.ue:                                            ; preds = %bb.ud
  %i.bzp = getelementptr i8, ptr %0, i64 120      ; 2 uses
  %i.bzq = load i64, ptr %i.bzp, align 8, !tbaa !111
  %i.bzr = lshr i64 %i.bzq, 1                     ; 2 uses
  store i64 %i.bzr, ptr %i.bzp, align 8, !tbaa !111
  %i.bzs = load i32, ptr %i.e, align 8
  %i.bzt = and i32 %i.bzs, 32
  %.not781 = icmp eq i32 %i.bzt, 0
  br i1 %.not781, label %.thread2187, label %bb.uf

.thread2187:                                      ; preds = %bb.ue
  %i.bzu = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.bzv = load i64, ptr %i.bzu, align 8, !tbaa !121
  %i.bzw = lshr i64 %i.bzv, 1
  store i64 %i.bzw, ptr %i.bzu, align 8, !tbaa !121
  br label %parser_set_lex_state.exit1098

bb.uf:                                            ; preds = %bb.ue
  call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.bzr, ptr noundef nonnull @.str.13, i32 noundef 11010)
  %.pre1958.a = load i32, ptr %i.e, align 8
  %.pre1980 = and i32 %.pre1958.a, 32
  %i.bzx = icmp eq i32 %.pre1980, 0
  %i.bzy = getelementptr i8, ptr %0, i64 128      ; 2 uses
  %i.bzz = load i64, ptr %i.bzy, align 8, !tbaa !121
  %i.caa = lshr i64 %i.bzz, 1                     ; 2 uses
  store i64 %i.caa, ptr %i.bzy, align 8, !tbaa !121
  br i1 %i.bzx, label %parser_set_lex_state.exit1098, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  call void @rb_parser_show_bitstack(ptr noundef nonnull %0, i64 noundef %i.caa, ptr noundef nonnull @.str.16, i32 noundef 11011)
  %.pre1959 = load i32, ptr %i.e, align 8
  %.pre1982 = and i32 %.pre1959, 32
  %i.cab = icmp eq i32 %.pre1982, 0
  br i1 %i.cab, label %parser_set_lex_state.exit1098, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.cac = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cad = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cac, i32 noundef 2, i32 noundef 11012) ; 0 uses
  br label %parser_set_lex_state.exit1098

parser_set_lex_state.exit1098:                    ; preds = %.thread2187, %bb.uf, %bb.ug, %bb.uh
  store i32 2, ptr %i.aik, align 8, !tbaa !67
  %i.cae = getelementptr i8, ptr %0, i64 108      ; 2 uses
  %i.caf = load i32, ptr %i.cae, align 4, !tbaa !181
  %i.cag = add i32 %i.caf, -1
  store i32 %i.cag, ptr %i.cae, align 4, !tbaa !181
  br label %pushback.exit1038

bb.ui:                                            ; preds = %bb.hw
  %i.cah = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 5 uses
  %i.cai = icmp eq i32 %i.cah, 58
  %i.caj = load i32, ptr %i.aik, align 8, !tbaa !67 ; 5 uses
  br i1 %i.cai, label %bb.uj, label %bb.up

bb.uj:                                            ; preds = %bb.ui
  %i.cak = and i32 %i.caj, 577
  %.not778 = icmp ne i32 %i.cak, 0
  %i.cal = and i32 %i.caj, 2064
  %i.cam = icmp eq i32 %i.cal, 2064
  %or.cond868 = or i1 %.not778, %i.cam
  br i1 %or.cond868, label %bb.ul, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.can = and i32 %i.caj, 48
  %i.cao = icmp ne i32 %i.can, 0
  %13 = icmp ne i32 %.0694, 0
  %or.cond37 = select i1 %i.cao, i1 %13, i1 false
  br i1 %or.cond37, label %bb.ul, label %bb.un

bb.ul:                                            ; preds = %bb.uk, %bb.uj
  %i.cap = load i32, ptr %i.e, align 8
  %i.caq = and i32 %i.cap, 32
  %.not.i1099 = icmp eq i32 %i.caq, 0
  br i1 %.not.i1099, label %parser_set_lex_state.exit1100, label %bb.um

bb.um:                                            ; preds = %bb.ul
  %i.car = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.caj, i32 noundef 1, i32 noundef 11020) ; 0 uses
  br label %parser_set_lex_state.exit1100

parser_set_lex_state.exit1100:                    ; preds = %bb.ul, %bb.um
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.un:                                            ; preds = %bb.uk
  %i.cas = load ptr, ptr %0, align 8, !tbaa !62
  store i64 147, ptr %i.cas, align 8, !tbaa !15
  %i.cat = load i32, ptr %i.e, align 8
  %i.cau = and i32 %i.cat, 32
  %.not.i1101 = icmp eq i32 %i.cau, 0
  br i1 %.not.i1101, label %parser_set_lex_state.exit1102, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.cav = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.caw = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cav, i32 noundef 256, i32 noundef 11024) ; 0 uses
  br label %parser_set_lex_state.exit1102

parser_set_lex_state.exit1102:                    ; preds = %bb.un, %bb.uo
  store i32 256, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.up:                                            ; preds = %bb.ui
  %i.cax = and i32 %i.caj, 14
  %.not776 = icmp eq i32 %i.cax, 0
  br i1 %.not776, label %bb.uq, label %bb.ur

bb.uq:                                            ; preds = %bb.up
  switch i32 %i.cah, label %bb.uy [
    i32 35, label %bb.ur
    i32 32, label %bb.ur
    i32 13, label %bb.ur
    i32 12, label %bb.ur
    i32 11, label %bb.ur
    i32 10, label %bb.ur
    i32 9, label %bb.ur
    i32 39, label %bb.uw
    i32 34, label %bb.ux
  ]

bb.ur:                                            ; preds = %bb.uq, %bb.uq, %bb.uq, %bb.uq, %bb.uq, %bb.uq, %bb.uq, %bb.up
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cah)
  %i.cay = and i32 %i.aiz, 904
  %i.caz = icmp eq i32 %i.cay, 0
  %14 = icmp ne i32 %.0694, 0
  %or.cond41 = select i1 %i.caz, i1 %14, i1 false
  br i1 %or.cond41, label %bb.us, label %bb.uu

bb.us:                                            ; preds = %bb.ur
  switch i32 %i.cah, label %bb.ut [
    i32 32, label %bb.uu
    i32 13, label %bb.uu
    i32 12, label %bb.uu
    i32 11, label %bb.uu
    i32 10, label %bb.uu
    i32 9, label %bb.uu
  ]

bb.ut:                                            ; preds = %bb.us
  %i.cba = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.cbb = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.cba, i32 noundef %i.cbb, ptr noundef nonnull @.str.786) #31
  %i.cbc = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.cbd = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.cbc, i32 noundef %i.cbd, ptr noundef nonnull @.str.787) #31
  br label %bb.uu

bb.uu:                                            ; preds = %bb.us, %bb.us, %bb.us, %bb.us, %bb.us, %bb.us, %bb.ut, %bb.ur
  %i.cbe = load i32, ptr %i.e, align 8
  %i.cbf = and i32 %i.cbe, 32
  %.not.i1105 = icmp eq i32 %i.cbf, 0
  br i1 %.not.i1105, label %parser_set_lex_state.exit1106, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.cbg = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cbh = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cbg, i32 noundef 1, i32 noundef 11030) ; 0 uses
  br label %parser_set_lex_state.exit1106

parser_set_lex_state.exit1106:                    ; preds = %bb.uu, %bb.uv
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.uw:                                            ; preds = %bb.uq
  %i.cbi = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cbj = getelementptr inbounds nuw i8, ptr %i.cbi, i64 16
  store i32 16, ptr %i.cbj, align 8, !tbaa !15
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cbi, i64 24
  store i32 39, ptr %i.cbk, align 8, !tbaa !15
  %i.cbl = getelementptr inbounds nuw i8, ptr %i.cbi, i64 20
  store i32 0, ptr %i.cbl, align 4, !tbaa !15
  store ptr %i.cbi, ptr %i.g, align 8, !tbaa !178
  br label %bb.uz

bb.ux:                                            ; preds = %bb.uq
  %i.cbm = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.cbm, i64 16
  store i32 18, ptr %i.cbn, align 8, !tbaa !15
  %i.cbo = getelementptr inbounds nuw i8, ptr %i.cbm, i64 24
  store i32 34, ptr %i.cbo, align 8, !tbaa !15
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbm, i64 20
  store i32 0, ptr %i.cbp, align 4, !tbaa !15
  store ptr %i.cbm, ptr %i.g, align 8, !tbaa !178
  br label %bb.uz

bb.uy:                                            ; preds = %bb.uq
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cah)
  br label %bb.uz

bb.uz:                                            ; preds = %bb.uy, %bb.ux, %bb.uw
  %i.cbq = load i32, ptr %i.e, align 8
  %i.cbr = and i32 %i.cbq, 32
  %.not.i1107 = icmp eq i32 %i.cbr, 0
  br i1 %.not.i1107, label %parser_set_lex_state.exit1108, label %bb.va

bb.va:                                            ; preds = %bb.uz
  %i.cbs = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cbt = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cbs, i32 noundef 128, i32 noundef 11044) ; 0 uses
  br label %parser_set_lex_state.exit1108

parser_set_lex_state.exit1108:                    ; preds = %bb.uz, %bb.va
  store i32 128, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.vb:                                            ; preds = %bb.hw
  %i.cbu = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.cbv = and i32 %i.cbu, 577
  %.not772 = icmp ne i32 %i.cbv, 0
  %i.cbw = and i32 %i.cbu, 2064
  %i.cbx = icmp eq i32 %i.cbw, 2064
  %or.cond870 = or i1 %.not772, %i.cbx
  br i1 %or.cond870, label %bb.vc, label %bb.vd

bb.vc:                                            ; preds = %bb.vb
  %i.cby = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cby, i64 16
  store i32 7, ptr %i.cbz, align 8, !tbaa !15
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cby, i64 24
  store i32 47, ptr %i.cca, align 8, !tbaa !15
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cby, i64 20
  store i32 0, ptr %i.ccb, align 4, !tbaa !15
  store ptr %i.cby, ptr %i.g, align 8, !tbaa !178
  br label %pushback.exit1038

bb.vd:                                            ; preds = %bb.vb
  %i.ccc = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 4 uses
  %i.ccd = icmp eq i32 %i.ccc, 61
  br i1 %i.ccd, label %bb.ve, label %bb.vg

bb.ve:                                            ; preds = %bb.vd
  %i.cce = load ptr, ptr %0, align 8, !tbaa !62
  store i64 47, ptr %i.cce, align 8, !tbaa !15
  %i.ccf = load i32, ptr %i.e, align 8
  %i.ccg = and i32 %i.ccf, 32
  %.not.i1109 = icmp eq i32 %i.ccg, 0
  br i1 %.not.i1109, label %parser_set_lex_state.exit1110, label %bb.vf

bb.vf:                                            ; preds = %bb.ve
  %i.cch = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cci = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cch, i32 noundef 1, i32 noundef 11054) ; 0 uses
  br label %parser_set_lex_state.exit1110

parser_set_lex_state.exit1110:                    ; preds = %bb.ve, %bb.vf
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.vg:                                            ; preds = %bb.vd
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.ccc)
  %i.ccj = load i32, ptr %i.aik, align 8, !tbaa !67 ; 3 uses
  %i.cck = and i32 %i.ccj, 48
  %i.ccl = icmp ne i32 %i.cck, 0
  %15 = icmp ne i32 %.0694, 0                     ; 2 uses
  %or.cond43 = select i1 %i.ccl, i1 %15, i1 false
  br i1 %or.cond43, label %bb.vh, label %bb.vj

bb.vh:                                            ; preds = %bb.vg
  switch i32 %i.ccc, label %bb.vi [
    i32 32, label %bb.vj
    i32 13, label %bb.vj
    i32 12, label %bb.vj
    i32 11, label %bb.vj
    i32 10, label %bb.vj
    i32 9, label %bb.vj
  ]

bb.vi:                                            ; preds = %bb.vh
  %i.ccm = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.ccn = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.ccm, i32 noundef %i.ccn, ptr noundef nonnull @.str.842, i32 noundef 47) #31
  %i.cco = call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.cco, i64 16
  store i32 7, ptr %i.ccp, align 8, !tbaa !15
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.cco, i64 24
  store i32 47, ptr %i.ccq, align 8, !tbaa !15
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.cco, i64 20
  store i32 0, ptr %i.ccr, align 4, !tbaa !15
  store ptr %i.cco, ptr %i.g, align 8, !tbaa !178
  br label %pushback.exit1038

bb.vj:                                            ; preds = %bb.vh, %bb.vh, %bb.vh, %bb.vh, %bb.vh, %bb.vh, %bb.vg
  %i.ccs = and i32 %i.ccj, 384
  %.not774 = icmp eq i32 %i.ccs, 0
  %i.cct = select i1 %.not774, i32 1, i32 16      ; 2 uses
  %i.ccu = load i32, ptr %i.e, align 8
  %i.ccv = and i32 %i.ccu, 32
  %.not.i1112 = icmp eq i32 %i.ccv, 0
  br i1 %.not.i1112, label %parser_set_lex_state.exit1113, label %bb.vk

bb.vk:                                            ; preds = %bb.vj
  %i.ccw = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ccj, i32 noundef %i.cct, i32 noundef 11063) ; 0 uses
  br label %parser_set_lex_state.exit1113

parser_set_lex_state.exit1113:                    ; preds = %bb.vj, %bb.vk
  store i32 %i.cct, ptr %i.aik, align 8, !tbaa !67
  %i.ccx = and i32 %i.aiz, 904
  %i.ccy = icmp eq i32 %i.ccx, 0
  %or.cond45 = select i1 %i.ccy, i1 %15, i1 false
  br i1 %or.cond45, label %bb.vl, label %pushback.exit1038

bb.vl:                                            ; preds = %parser_set_lex_state.exit1113
  %switch.tableidx2993 = add nsw i32 %i.ccc, -9   ; 2 uses
  %i.ccz = icmp ult i32 %switch.tableidx2993, 24
  %switch.shifted2997 = lshr i32 8388639, %switch.tableidx2993
  %switch.lobit2998 = trunc i32 %switch.shifted2997 to i1
  %or.cond3002 = select i1 %i.ccz, i1 %switch.lobit2998, i1 false
  br i1 %or.cond3002, label %pushback.exit1038, label %bb.vm

bb.vm:                                            ; preds = %bb.vl
  %i.cda = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.cdb = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.cda, i32 noundef %i.cdb, ptr noundef nonnull @.str.788) #31
  %i.cdc = load ptr, ptr %i.aiw, align 8, !tbaa !86
  %i.cdd = load i32, ptr %i.aio, align 4, !tbaa !29
  call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.cdc, i32 noundef %i.cdd, ptr noundef nonnull @.str.789) #31
  br label %pushback.exit1038

bb.vn:                                            ; preds = %bb.hw
  %i.cde = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %i.cdf = icmp eq i32 %i.cde, 61
  br i1 %i.cdf, label %bb.vo, label %bb.vq

bb.vo:                                            ; preds = %bb.vn
  %i.cdg = load ptr, ptr %0, align 8, !tbaa !62
  store i64 94, ptr %i.cdg, align 8, !tbaa !15
  %i.cdh = load i32, ptr %i.e, align 8
  %i.cdi = and i32 %i.cdh, 32
  %.not.i1115 = icmp eq i32 %i.cdi, 0
  br i1 %.not.i1115, label %parser_set_lex_state.exit1116, label %bb.vp

bb.vp:                                            ; preds = %bb.vo
  %i.cdj = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cdk = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdj, i32 noundef 1, i32 noundef 11069) ; 0 uses
  br label %parser_set_lex_state.exit1116

parser_set_lex_state.exit1116:                    ; preds = %bb.vo, %bb.vp
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.vq:                                            ; preds = %bb.vn
  %i.cdl = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.cdm = and i32 %i.cdl, 384
  %.not771 = icmp eq i32 %i.cdm, 0
  %i.cdn = select i1 %.not771, i32 1, i32 16      ; 2 uses
  %i.cdo = load i32, ptr %i.e, align 8
  %i.cdp = and i32 %i.cdo, 32
  %.not.i1117 = icmp eq i32 %i.cdp, 0
  br i1 %.not.i1117, label %parser_set_lex_state.exit1118, label %bb.vr

bb.vr:                                            ; preds = %bb.vq
  %i.cdq = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdl, i32 noundef %i.cdn, i32 noundef 11072) ; 0 uses
  br label %parser_set_lex_state.exit1118

parser_set_lex_state.exit1118:                    ; preds = %bb.vq, %bb.vr
  store i32 %i.cdn, ptr %i.aik, align 8, !tbaa !67
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.cde)
  br label %pushback.exit1038

bb.vs:                                            ; preds = %bb.hw
  %i.cdr = load i32, ptr %i.e, align 8            ; 2 uses
  %i.cds = and i32 %i.cdr, 32
  %.not.i1119 = icmp eq i32 %i.cds, 0
  br i1 %.not.i1119, label %parser_set_lex_state.exit1120, label %bb.vt

bb.vt:                                            ; preds = %bb.vs
  %i.cdt = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cdu = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdt, i32 noundef 1, i32 noundef 11077) ; 0 uses
  %.pre1957 = load i32, ptr %i.e, align 8
  br label %parser_set_lex_state.exit1120

parser_set_lex_state.exit1120:                    ; preds = %bb.vs, %bb.vt
  %i.cdv = phi i32 [ %i.cdr, %bb.vs ], [ %.pre1957, %bb.vt ]
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  %i.cdw = or i32 %i.cdv, 4
  store i32 %i.cdw, ptr %i.e, align 8
  br label %pushback.exit1038

bb.vu:                                            ; preds = %bb.hw
  %i.cdx = load i32, ptr %i.e, align 8
  %i.cdy = and i32 %i.cdx, 32
  %.not.i1121 = icmp eq i32 %i.cdy, 0
  br i1 %.not.i1121, label %parser_set_lex_state.exit1122, label %bb.vv

bb.vv:                                            ; preds = %bb.vu
  %i.cdz = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.cea = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.cdz, i32 noundef 1025, i32 noundef 11082) ; 0 uses
  br label %parser_set_lex_state.exit1122

parser_set_lex_state.exit1122:                    ; preds = %bb.vu, %bb.vv
  store i32 1025, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.vw:                                            ; preds = %bb.hw
  %i.ceb = load i32, ptr %i.aik, align 8, !tbaa !67 ; 2 uses
  %i.cec = and i32 %i.ceb, 384
  %.not769 = icmp eq i32 %i.cec, 0
  br i1 %.not769, label %bb.wb, label %bb.vx

bb.vx:                                            ; preds = %bb.vw
  %i.ced = call fastcc i32 @nextc0(ptr noundef nonnull %0, i32 noundef 1) ; 2 uses
  %.not770 = icmp eq i32 %i.ced, 64
  br i1 %.not770, label %bb.vz, label %bb.vy

bb.vy:                                            ; preds = %bb.vx
  call fastcc void @pushback(ptr noundef nonnull %0, i32 noundef %i.ced)
  br label %bb.vz

bb.vz:                                            ; preds = %bb.vy, %bb.vx
  %i.cee = load i32, ptr %i.e, align 8
  %i.cef = and i32 %i.cee, 32
  %.not.i1123 = icmp eq i32 %i.cef, 0
  br i1 %.not.i1123, label %parser_set_lex_state.exit1124, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  %i.ceg = load i32, ptr %i.aik, align 8, !tbaa !67
  %i.ceh = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ceg, i32 noundef 16, i32 noundef 11090) ; 0 uses
  br label %parser_set_lex_state.exit1124

parser_set_lex_state.exit1124:                    ; preds = %bb.vz, %bb.wa
  store i32 16, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.wb:                                            ; preds = %bb.vw
  %i.cei = load i32, ptr %i.e, align 8
  %i.cej = and i32 %i.cei, 32
  %.not.i1125 = icmp eq i32 %i.cej, 0
  br i1 %.not.i1125, label %parser_set_lex_state.exit1126, label %bb.wc

bb.wc:                                            ; preds = %bb.wb
  %i.cek = call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.ceb, i32 noundef 1, i32 noundef 11093) ; 0 uses
  br label %parser_set_lex_state.exit1126

parser_set_lex_state.exit1126:                    ; preds = %bb.wb, %bb.wc
  store i32 1, ptr %i.aik, align 8, !tbaa !67
  br label %pushback.exit1038

bb.wd:                                            ; preds = %bb.hw
  %i.cel = load i32, ptr %i.aik, align 8, !tbaa !67 ; 5 uses
  %i.cem = and i32 %i.cel, 577
  %.not763 = icmp ne i32 %i.cem, 0
  %i.cen = and i32 %i.cel, 2064
  %i.ceo = icmp eq i32 %i.cen, 2064
  %or.cond872 = or i1 %.not763, %i.ceo
  br i1 %or.cond872, label %bb.wj, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %.not764 = icmp eq i32 %.0694, 0
  br i1 %.not764, label %bb.wj, label %bb.wf

bb.wf:                                            ; preds = %bb.we
  %i.cep = and i32 %i.cel, 48
  %.not765 = icmp ne i32 %i.cep, 0
  %i.ceq = and i32 %i.cel, 1026
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
  br label %switch.lookup

bb.ad:                                            ; preds = %bb.ab
  %i.dh = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 0, ptr %i.di, align 8, !tbaa !15
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i32 %.2, ptr %i.dj, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store i32 %.0, ptr %i.dk, align 4, !tbaa !15
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !178
  br label %switch.lookup

bb.ae:                                            ; preds = %bb.ab
  %i.dl = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i32 16394, ptr %i.dm, align 8, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i32 %.2, ptr %i.dn, align 8, !tbaa !15
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  store i32 %.0, ptr %i.do, align 4, !tbaa !15
  store ptr %i.dl, ptr %i.a, align 8, !tbaa !178
  br label %switch.lookup

bb.af:                                            ; preds = %bb.ab
  %i.dp = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i32 16392, ptr %i.dq, align 8, !tbaa !15
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store i32 %.2, ptr %i.dr, align 8, !tbaa !15
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  store i32 %.0, ptr %i.ds, align 4, !tbaa !15
  store ptr %i.dp, ptr %i.a, align 8, !tbaa !178
  br label %switch.lookup

bb.ag:                                            ; preds = %bb.ab
  %i.dt = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i32 16394, ptr %i.du, align 8, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i32 %.2, ptr %i.dv, align 8, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  store i32 %.0, ptr %i.dw, align 4, !tbaa !15
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !178
  br label %switch.lookup

bb.ah:                                            ; preds = %bb.ab
  %i.dx = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i32 16392, ptr %i.dy, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  store i32 %.2, ptr %i.dz, align 8, !tbaa !15
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 20
  store i32 %.0, ptr %i.ea, align 4, !tbaa !15
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !178
  br label %switch.lookup

bb.ai:                                            ; preds = %bb.ab
  %i.eb = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store i32 2, ptr %i.ec, align 8, !tbaa !15
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  store i32 %.2, ptr %i.ed, align 8, !tbaa !15
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store i32 %.0, ptr %i.ee, align 4, !tbaa !15
  store ptr %i.eb, ptr %i.a, align 8, !tbaa !178
  br label %switch.lookup

bb.aj:                                            ; preds = %bb.ab
  %i.ef = tail call noalias nonnull dereferenceable(40) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 40) #33 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i32 7, ptr %i.eg, align 8, !tbaa !15
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store i32 %.2, ptr %i.eh, align 8, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  store i32 %.0, ptr %i.ei, align 4, !tbaa !15
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !178
  br label %switch.lookup

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
  br label %switch.lookup

bb.am:                                            ; preds = %bb.ab
  tail call fastcc void @parser_yyerror0(ptr noundef %0, ptr noundef @.str.849)
  br label %switch.lookup

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
  br label %switch.lookup

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
  br i1 %or.cond5, label %bb.bd, label %switch.lookup

bb.bd:                                            ; preds = %pushback.exit130
  %switch.tableidx = add i32 %.011.i119139, -9    ; 2 uses
  %i.gq = icmp ult i32 %switch.tableidx, 24
  %switch.shifted = lshr i32 8388639, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond162 = select i1 %i.gq, i1 %switch.lobit, i1 false
  br i1 %or.cond162, label %switch.lookup, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gr = getelementptr i8, ptr %0, i64 200       ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !86
  %i.gt = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.gs, i32 noundef %i.gu, ptr noundef nonnull @.str.851) #31
  %i.gv = load ptr, ptr %i.gr, align 8, !tbaa !86
  %i.gw = load i32, ptr %i.gt, align 4, !tbaa !29
  tail call void (ptr, i32, ptr, ...) @rb_compile_warning(ptr noundef %i.gv, i32 noundef %i.gw, ptr noundef nonnull @.str.852) #31
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.bd, %parser_precise_mbclen.exit.thread, %pushback.exit130, %bb.be, %parser_set_lex_state.exit126, %bb.am, %parser_set_lex_state.exit, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %nextc0.exit.thread134, %parser_yyerror0.exit
  %.093 = phi i32 [ 0, %nextc0.exit.thread134 ], [ 0, %parser_precise_mbclen.exit.thread ], [ 0, %parser_yyerror0.exit ], [ 0, %bb.am ], [ 338, %bb.ac ], [ 338, %bb.ad ], [ 341, %bb.ae ], [ 342, %bb.af ], [ 343, %bb.ag ], [ 344, %bb.ah ], [ 339, %bb.ai ], [ 340, %bb.aj ], [ 337, %parser_set_lex_state.exit ], [ 326, %parser_set_lex_state.exit126 ], [ 37, %bb.be ], [ 37, %pushback.exit130 ], [ 37, %bb.bd ]
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

bb.o:                                             ; preds = %bb.n
end_hunk_3
begin_hunk_4_@parse_ident:bb.a
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
  %i.aq = add nsw i32 %.011.i, 1                  ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 31)
  switch i32 %i.ar, label %parser_is_identchar.exit.thread..thread233_crit_edge [
    i32 32, label %bb.j
    i32 17, label %bb.j
    i32 31, label %parser_is_identchar.exit.thread._crit_edge
    i32 0, label %tokadd.exit
  ]

parser_is_identchar.exit.thread._crit_edge:       ; preds = %parser_is_identchar.exit.thread
  %.pre257.pre = load ptr, ptr %i.f, align 8, !tbaa !188
  br label %bb.o

parser_is_identchar.exit.thread..thread233_crit_edge: ; preds = %parser_is_identchar.exit.thread
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !188
  br label %.thread233

bb.j:                                             ; preds = %parser_is_identchar.exit.thread, %parser_is_identchar.exit.thread
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !188 ; 4 uses
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !426
  %.not156 = icmp ult ptr %i.as, %i.at
  br i1 %.not156, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load i8, ptr %i.as, align 1, !tbaa !15
  %i.av = icmp eq i8 %i.au, 61
  br i1 %i.av, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aw = trunc nuw nsw i32 %.011.i to i8
  %i.ax = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !500
  %i.az = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !570 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !570
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr i8, ptr %i.ay, i64 %i.bc
  store i8 %i.aw, ptr %i.bd, align 1, !tbaa !15
  %i.be = load i32, ptr %i.az, align 8, !tbaa !570
  %i.bf = getelementptr i8, ptr %0, i64 140       ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !509 ; 2 uses
  %.not.i191 = icmp slt i32 %i.be, %i.bg
  br i1 %.not.i191, label %tokadd.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = shl i32 %i.bg, 1                        ; 2 uses
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !509
  %i.bi = load ptr, ptr %i.ax, align 8, !tbaa !500
  %i.bj = sext i32 %i.bh to i64
  %i.bk = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.bi, i64 noundef %i.bj, i64 noundef 1) #38
  store ptr %i.bk, ptr %i.ax, align 8, !tbaa !500
  br label %tokadd.exit

bb.n:                                             ; preds = %bb.k
  %i.bl = icmp eq i32 %.011.i, 61
  br i1 %i.bl, label %bb.o, label %.thread233

bb.o:                                             ; preds = %parser_is_identchar.exit.thread._crit_edge, %bb.n
  %.pre257 = phi ptr [ %.pre257.pre, %parser_is_identchar.exit.thread._crit_edge ], [ %i.as, %bb.n ] ; 8 uses
  %i.bm = load i32, ptr %i.a, align 8, !tbaa !67
  %i.bn = and i32 %i.bm, 128
  %.not157 = icmp eq i32 %i.bn, 0
  br i1 %.not157, label %.thread233, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.g, align 8, !tbaa !426 ; 2 uses
  %.not158 = icmp ult ptr %.pre257, %i.bo
  br i1 %.not158, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bp = load i8, ptr %.pre257, align 1, !tbaa !15
  switch i8 %i.bp, label %bb.t [
    i8 126, label %.thread233
    i8 62, label %.thread233
    i8 61, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr i8, ptr %.pre257, i64 1   ; 2 uses
  %.not161 = icmp ult ptr %i.bq, %i.bo
  br i1 %.not161, label %bb.s, label %.thread233

bb.s:                                             ; preds = %bb.r
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !15
  %i.bs = icmp eq i8 %i.br, 62
  br i1 %i.bs, label %bb.t, label %.thread233

bb.t:                                             ; preds = %bb.q, %bb.p, %bb.s
  %i.bt = getelementptr i8, ptr %0, i64 160       ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !500
  %i.bv = getelementptr i8, ptr %0, i64 136       ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !570 ; 2 uses
  %i.bx = add i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !570
  %i.by = sext i32 %i.bw to i64
  %i.bz = getelementptr i8, ptr %i.bu, i64 %i.by
  store i8 61, ptr %i.bz, align 1, !tbaa !15
  %i.ca = load i32, ptr %i.bv, align 8, !tbaa !570
  %i.cb = getelementptr i8, ptr %0, i64 140       ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !509 ; 2 uses
  %.not.i192 = icmp slt i32 %i.ca, %i.cc
  br i1 %.not.i192, label %tokadd.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = shl i32 %i.cc, 1                        ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !509
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !500
  %i.cf = sext i32 %i.cd to i64
  %i.cg = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.ce, i64 noundef %i.cf, i64 noundef 1) #38
  store ptr %i.cg, ptr %i.bt, align 8, !tbaa !500
  br label %tokadd.exit

.thread233:                                       ; preds = %bb.q, %bb.q, %parser_is_identchar.exit.thread..thread233_crit_edge, %bb.n, %bb.o, %bb.r, %bb.s
  %i.ch = phi ptr [ %.pre, %parser_is_identchar.exit.thread..thread233_crit_edge ], [ %i.as, %bb.n ], [ %.pre257, %bb.o ], [ %.pre257, %bb.q ], [ %.pre257, %bb.q ], [ %.pre257, %bb.r ], [ %.pre257, %bb.s ] ; 2 uses
  %i.ci = load i32, ptr %i.h, align 8
  %i.cj = and i32 %i.ci, -9
  store i32 %i.cj, ptr %i.h, align 8
  %i.ck = getelementptr i8, ptr %i.ch, i64 -1     ; 3 uses
  store ptr %i.ck, ptr %i.f, align 8, !tbaa !188
  %i.cl = getelementptr i8, ptr %0, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !50
  %i.cn = icmp ugt ptr %i.ck, %i.cm
  br i1 %i.cn, label %bb.v, label %tokadd.exit

bb.v:                                             ; preds = %.thread233
  %i.co = load i8, ptr %i.ck, align 1, !tbaa !15
  %i.cp = icmp eq i8 %i.co, 10
  br i1 %i.cp, label %bb.w, label %tokadd.exit

bb.w:                                             ; preds = %bb.v
  %i.cq = getelementptr i8, ptr %i.ch, i64 -2     ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !15
  %i.cs = icmp eq i8 %i.cr, 13
  br i1 %i.cs, label %bb.x, label %tokadd.exit

bb.x:                                             ; preds = %bb.w
  store ptr %i.cq, ptr %i.f, align 8, !tbaa !188
  br label %tokadd.exit

tokadd.exit:                                      ; preds = %parser_is_identchar.exit.thread, %bb.x, %bb.w, %bb.v, %.thread233, %bb.u, %bb.t, %bb.m, %bb.l
  %i.ct = phi i1 [ false, %bb.u ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.t ], [ true, %parser_is_identchar.exit.thread ], [ true, %.thread233 ], [ true, %bb.v ], [ true, %bb.w ], [ true, %bb.x ]
  %.0133 = phi i32 [ 307, %bb.u ], [ 308, %bb.m ], [ 308, %bb.l ], [ 307, %bb.t ], [ 311, %parser_is_identchar.exit.thread ], [ 311, %.thread233 ], [ 311, %bb.v ], [ 311, %bb.w ], [ 311, %bb.x ]
  %i.cu = getelementptr i8, ptr %0, i64 160       ; 6 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !500
  %i.cw = getelementptr i8, ptr %0, i64 136       ; 6 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !570
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr i8, ptr %i.cv, i64 %i.cy
  store i8 0, ptr %i.cz, align 1, !tbaa !15
  %i.da = load i32, ptr %i.a, align 8, !tbaa !67  ; 5 uses
  %i.db = and i32 %i.da, 1032
  %i.dc = icmp eq i32 %i.db, 0
  %3 = icmp ne i32 %2, 0                          ; 2 uses
  %or.cond3 = or i1 %3, %i.dc
  %i.dd = and i32 %i.da, 48
  %.not162 = icmp eq i32 %i.dd, 0
  %or.cond = and i1 %.not162, %or.cond3
  br i1 %or.cond, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %tokadd.exit
  %i.de = load ptr, ptr %i.f, align 8, !tbaa !188 ; 4 uses
  %i.df = load ptr, ptr %i.g, align 8, !tbaa !426 ; 3 uses
  %.not163 = icmp ult ptr %i.de, %i.df
  br i1 %.not163, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !15
  %i.dh = icmp eq i8 %i.dg, 58
  br i1 %i.dh, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.di = getelementptr i8, ptr %i.de, i64 1      ; 2 uses
  %.not164 = icmp ult ptr %i.di, %i.df
  br i1 %.not164, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15
  %i.dk = icmp eq i8 %i.dj, 58
  br i1 %i.dk, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dl = load i32, ptr %i.h, align 8
  %i.dm = and i32 %i.dl, 32
  %.not.i194 = icmp eq i32 %i.dm, 0
  br i1 %.not.i194, label %parser_set_lex_state.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = tail call i32 @rb_parser_trace_lex_state(ptr noundef nonnull %0, i32 noundef %i.da, i32 noundef 2064, i32 noundef 10371) ; 0 uses
  %.pre258 = load ptr, ptr %i.f, align 8, !tbaa !188
  %.pre259 = load ptr, ptr %i.g, align 8, !tbaa !426
  br label %parser_set_lex_state.exit

parser_set_lex_state.exit:                        ; preds = %bb.ac, %bb.ad
  %i.do = phi ptr [ %i.df, %bb.ac ], [ %.pre259, %bb.ad ]
  %i.dp = phi ptr [ %i.de, %bb.ac ], [ %.pre258, %bb.ad ] ; 2 uses
  store i32 2064, ptr %i.a, align 8, !tbaa !67
  %.not.i195 = icmp ult ptr %i.dp, %i.do
  br i1 %.not.i195, label %bb.ae, label %.critedge.i196, !prof !527

bb.ae:                                            ; preds = %parser_set_lex_state.exit
  %i.dq = load i32, ptr %i.h, align 8
  %i.dr = and i32 %i.dq, 8
  %.not13.i202 = icmp eq i32 %i.dr, 0
  br i1 %.not13.i202, label %bb.af, label %.critedge.i196, !prof !527

bb.af:                                            ; preds = %bb.ae
  %i.ds = load ptr, ptr %i.i, align 8, !tbaa !528
  %i.dt = icmp ugt ptr %i.ds, inttoptr (i64 1 to ptr)
  br i1 %i.dt, label %.critedge.i196, label %bb.ag, !prof !205

.critedge.i196:                                   ; preds = %bb.af, %bb.ae, %parser_set_lex_state.exit
  %i.du = tail call fastcc i32 @nextline(ptr noundef nonnull %0, i32 noundef 1)
  %.not14.i197 = icmp eq i32 %i.du, 0
  br i1 %.not14.i197, label %.critedge._crit_edge.i199, label %nextc0.exit203

.critedge._crit_edge.i199:                        ; preds = %.critedge.i196
  %.pre.i200 = load ptr, ptr %i.f, align 8, !tbaa !188
  br label %bb.ag

bb.ag:                                            ; preds = %.critedge._crit_edge.i199, %bb.af
  %i.dv = phi ptr [ %.pre.i200, %.critedge._crit_edge.i199 ], [ %i.dp, %bb.af ] ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 1      ; 3 uses
  store ptr %i.dw, ptr %i.f, align 8, !tbaa !188
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !15
  %i.dy = icmp eq i8 %i.dx, 13
  br i1 %i.dy, label %bb.ah, label %nextc0.exit203, !prof !205

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !426
  %.not.i.i201 = icmp ult ptr %i.dw, %i.dz
  br i1 %.not.i.i201, label %bb.ai, label %nextc0.exit203

bb.ai:                                            ; preds = %bb.ah
  %i.ea = load i8, ptr %i.dw, align 1, !tbaa !15
  %i.eb = icmp eq i8 %i.ea, 10
  br i1 %i.eb, label %bb.aj, label %nextc0.exit203

bb.aj:                                            ; preds = %bb.ai
  %i.ec = getelementptr i8, ptr %i.dv, i64 2
  store ptr %i.ec, ptr %i.f, align 8, !tbaa !188
  br label %nextc0.exit203

nextc0.exit203:                                   ; preds = %.critedge.i196, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %i.ed = load ptr, ptr %i.cu, align 8, !tbaa !500
  %i.ee = load i32, ptr %i.cw, align 8, !tbaa !570
  %i.ef = sext i32 %i.ee to i64
  %i.eg = load ptr, ptr %i.j, align 8, !tbaa !176
  %i.eh = tail call i64 @rb_intern3(ptr noundef %i.ed, i64 noundef %i.ef, ptr noundef %i.eg) #31
  %i.ei = load ptr, ptr %0, align 8, !tbaa !62
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !15
  br label %.thread240

bb.ak:                                            ; preds = %tokadd.exit, %bb.y, %bb.z, %bb.ab
  %i.ej = getelementptr i8, ptr %0, i64 384
  %.val188 = load ptr, ptr %i.ej, align 8, !tbaa !423 ; 2 uses
  %.not165 = icmp eq ptr %.val188, null
  br i1 %.not165, label %reserved_word.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ek = getelementptr i8, ptr %0, i64 96
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !49
  %i.em = getelementptr i8, ptr %0, i64 72
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !50
  %i.eo = ptrtoint ptr %i.el to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = trunc i64 %i.eq to i32                  ; 2 uses
  %i.es = load ptr, ptr %.val188, align 8, !tbaa !420 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !520 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.es, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !521 ; 2 uses
  %i.ew = load i32, ptr %i.h, align 8
  %i.ex = and i32 %i.ew, 32
  %.not166 = icmp eq i32 %i.ex, 0
  br i1 %.not166, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ey = getelementptr i8, ptr %0, i64 196
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !29
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.861, i32 noundef %i.ez, i32 noundef %i.er, i32 noundef %i.et, i32 noundef %i.ev)
  %.pr.pre.pre263.pre = load i32, ptr %i.a, align 8, !tbaa !67
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pr.pre.pre263 = phi i32 [ %.pr.pre.pre263.pre, %bb.am ], [ %i.da, %bb.al ] ; 8 uses
  %i.fa = getelementptr i8, ptr %0, i64 196
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !29
  %i.fc = icmp sle i32 %i.fb, %i.et
  %.not167 = icmp slt i32 %i.ev, %i.er
  %or.cond184 = select i1 %i.fc, i1 true, i1 %.not167
  %i.fd = and i32 %.pr.pre.pre263, 256
  %.not168 = icmp eq i32 %i.fd, 0
  %or.cond286 = select i1 %or.cond184, i1 true, i1 %.not168
  br i1 %or.cond286, label %reserved_word.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fe = load ptr, ptr %i.cu, align 8, !tbaa !500 ; 4 uses
  %i.ff = load i32, ptr %i.cw, align 8, !tbaa !570 ; 3 uses
  %i.fg = sext i32 %i.ff to i64                   ; 2 uses
  %i.fh = add nsw i64 %i.fg, -2
  %or.cond.i = icmp ult i64 %i.fh, 11
  br i1 %or.cond.i, label %bb.ap, label %reserved_word.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %switch.i.i = icmp ult i32 %i.ff, 3
  br i1 %switch.i.i, label %hash.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fi = getelementptr i8, ptr %i.fe, i64 2
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !15
  %i.fk = zext i8 %i.fj to i64
  %i.fl = getelementptr i8, ptr @hash.asso_values, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !15
  %i.fn = zext i8 %i.fm to i32
  %i.fo = add nuw nsw i32 %i.ff, %i.fn
  br label %hash.exit.i

hash.exit.i:                                      ; preds = %bb.aq, %bb.ap
  %.0.i.i = phi i32 [ %i.fo, %bb.aq ], [ 2, %bb.ap ]
  %i.fp = load i8, ptr %i.fe, align 1, !tbaa !15  ; 2 uses
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr i8, ptr @hash.asso_values, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !15
  %i.ft = zext i8 %i.fs to i32
  %i.fu = add nuw nsw i32 %.0.i.i, %i.ft
  %i.fv = getelementptr i8, ptr %i.fe, i64 %i.fg
  %i.fw = getelementptr i8, ptr %i.fv, i64 -1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !15
  %i.fy = zext i8 %i.fx to i64
  %i.fz = getelementptr i8, ptr @hash.asso_values, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !15
  %i.gb = zext i8 %i.ga to i32
  %i.gc = add nuw nsw i32 %i.fu, %i.gb            ; 3 uses
  %i.gd = icmp samesign ult i32 %i.gc, 51
  br i1 %i.gd, label %bb.ar, label %reserved_word.exit.thread

bb.ar:                                            ; preds = %hash.exit.i
  %i.ge = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.gf = shl nuw nsw i64 1, %i.ge
  %i.gg = and i64 %i.gf, 1407374883553024
  %.not.i204 = icmp eq i64 %i.gg, 0
  br i1 %.not.i204, label %reserved_word.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gh = getelementptr [8 x i8], ptr @reserved_word.wordlist, i64 %i.ge
  %i.gi = load i16, ptr %i.gh, align 8, !tbaa !493
  %i.gj = sext i16 %i.gi to i64
  %i.gk = and i64 %i.gj, 4294967295
  %i.gl = getelementptr i8, ptr @stringpool_contents, i64 %i.gk ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !15
  %i.gn = icmp eq i8 %i.fp, %i.gm
  br i1 %i.gn, label %bb.at, label %reserved_word.exit.thread

bb.at:                                            ; preds = %bb.as
end_hunk_4
