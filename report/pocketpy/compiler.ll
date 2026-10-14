Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/compiler?download=true
inline.NumInlined: 296
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@EXPR_TUPLE_ALLOW_SLICE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.d, 1
  store i32 %i.l, ptr %i.c, align 8, !tbaa !186
  %i.m = tail call ptr %i.j(ptr noundef nonnull %0) #12, !inline_history !217 ; 2 uses
  %.not38.i = icmp eq ptr %i.m, null
  br i1 %.not38.i, label %.preheader.i, label %parse_expression.exit.thread

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %i.o = load i32, ptr %i.c, align 8, !tbaa !186  ; 3 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.p
  %i.r = load i32, ptr %i.q, align 8, !tbaa !191  ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !211
  %.not39.i = icmp ne i32 %i.v, 0
  %.not40.i = icmp ne i32 %i.r, 49
  %or.cond44.not.i = or i1 %1, %.not40.i
  %or.cond47.i = and i1 %.not39.i, %or.cond44.not.i
  br i1 %or.cond47.i, label %.critedge3.i, label %parse_expression.exit.thread56

.critedge3.i:                                     ; preds = %.preheader.i
  %i.w = add nsw i32 %i.o, 1
  store i32 %i.w, ptr %i.c, align 8, !tbaa !186
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !212  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %parse_expression.exit, label %bb.c

bb.c:                                             ; preds = %.critedge3.i
  %i.aa = tail call ptr %i.y(ptr noundef nonnull %0) #12, !inline_history !217 ; 2 uses
  %.not41.i = icmp eq ptr %i.aa, null
  br i1 %.not41.i, label %.preheader.i, label %parse_expression.exit.thread, !llvm.loop !2

parse_expression.exit:                            ; preds = %.critedge3.i, %bb.a
  %.lcssa53.sink.i = phi i64 [ %i.h, %bb.a ], [ %i.s, %.critedge3.i ]
  %.str.7.sink.i = phi ptr [ @.str.6, %bb.a ], [ @.str.7, %.critedge3.i ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %.lcssa53.sink.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.ad = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull %.str.7.sink.i, ptr noundef %i.ac), !inline_history !217 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %parse_expression.exit.parse_expression.exit.thread56_crit_edge, label %parse_expression.exit.thread

parse_expression.exit.parse_expression.exit.thread56_crit_edge: ; preds = %parse_expression.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %.pre89 = load i32, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  %.phi.trans.insert = sext i32 %.pre89 to i64
  %.phi.trans.insert90 = getelementptr inbounds [48 x i8], ptr %.pre, i64 %.phi.trans.insert
  %.pre91 = load i32, ptr %.phi.trans.insert90, align 8, !tbaa !191
  br label %parse_expression.exit.thread56

parse_expression.exit.thread56:                   ; preds = %.preheader.i, %parse_expression.exit.parse_expression.exit.thread56_crit_edge
  %i.ae = phi i32 [ %.pre91, %parse_expression.exit.parse_expression.exit.thread56_crit_edge ], [ %i.r, %.preheader.i ]
  %i.af = phi i32 [ %.pre89, %parse_expression.exit.parse_expression.exit.thread56_crit_edge ], [ %i.o, %.preheader.i ]
  %i.ag = phi ptr [ %.pre, %parse_expression.exit.parse_expression.exit.thread56_crit_edge ], [ %i.n, %.preheader.i ]
  %i.ah = icmp eq i32 %i.ae, 48
  br i1 %i.ah, label %bb.d, label %parse_expression.exit.thread

bb.d:                                             ; preds = %parse_expression.exit.thread56
  %i.ai = add nsw i32 %i.af, 1                    ; 3 uses
  store i32 %i.ai, ptr %i.c, align 8, !tbaa !186
  %.not33 = icmp eq i32 %i.ai, 0
  br i1 %.not33, label %parse_expression.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.g
  %.val36 = phi i32 [ %i.bo, %bb.g ], [ %i.ai, %bb.d ] ; 3 uses
  %.val = phi ptr [ %i.bl, %bb.g ], [ %i.ag, %bb.d ] ; 2 uses
  %.028 = phi i32 [ %i.bm, %bb.g ], [ 1, %bb.d ]  ; 2 uses
  %i.aj = sext i32 %.val36 to i64
  %i.ak = getelementptr inbounds [48 x i8], ptr %.val, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !191 ; 2 uses
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !210 ; 2 uses
  %.not.i37 = icmp ne ptr %i.ao, null
  %i.ap = icmp ne i32 %i.al, 49
  %spec.select.i = or i1 %1, %i.ap
  %or.cond = and i1 %.not.i37, %spec.select.i
  br i1 %or.cond, label %bb.e, label %.critedgesplit

bb.e:                                             ; preds = %.preheader
  %i.aq = add nsw i32 %.val36, 1
  store i32 %i.aq, ptr %i.c, align 8, !tbaa !186
  %i.ar = tail call ptr %i.ao(ptr noundef nonnull %0) #12, !inline_history !217 ; 2 uses
  %.not38.i45 = icmp eq ptr %i.ar, null
  br i1 %.not38.i45, label %.preheader.i46, label %parse_expression.exit.thread

.preheader.i46:                                   ; preds = %bb.e, %bb.f
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %i.at = load i32, ptr %i.c, align 8, !tbaa !186 ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [48 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !191 ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !211
  %.not39.i47 = icmp ne i32 %i.ba, 0
  %.not40.i48 = icmp ne i32 %i.aw, 49
  %or.cond44.not.i49 = or i1 %1, %.not40.i48
  %or.cond47.i50 = and i1 %.not39.i47, %or.cond44.not.i49
  br i1 %or.cond47.i50, label %.critedge3.i51, label %parse_expression.exit53.thread61

.critedge3.i51:                                   ; preds = %.preheader.i46
  %i.bb = add nsw i32 %i.at, 1
  store i32 %i.bb, ptr %i.c, align 8, !tbaa !186
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !212 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %parse_expression.exit53, label %bb.f

bb.f:                                             ; preds = %.critedge3.i51
  %i.bf = tail call ptr %i.bd(ptr noundef nonnull %0) #12, !inline_history !217 ; 2 uses
  %.not41.i52 = icmp eq ptr %i.bf, null
  br i1 %.not41.i52, label %.preheader.i46, label %parse_expression.exit.thread, !llvm.loop !2

parse_expression.exit53:                          ; preds = %.critedge3.i51
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %i.ax
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !67
  %i.bi = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.7, ptr noundef %i.bh), !inline_history !217 ; 2 uses
  %.not34 = icmp eq ptr %i.bi, null
  br i1 %.not34, label %parse_expression.exit53.parse_expression.exit53.thread61_crit_edge, label %parse_expression.exit.thread

parse_expression.exit53.parse_expression.exit53.thread61_crit_edge: ; preds = %parse_expression.exit53
  %.pre94 = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %.pre95 = load i32, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  %.phi.trans.insert96 = sext i32 %.pre95 to i64
  %.phi.trans.insert97 = getelementptr inbounds [48 x i8], ptr %.pre94, i64 %.phi.trans.insert96
  %.pre98 = load i32, ptr %.phi.trans.insert97, align 8, !tbaa !191
  br label %parse_expression.exit53.thread61

parse_expression.exit53.thread61:                 ; preds = %.preheader.i46, %parse_expression.exit53.parse_expression.exit53.thread61_crit_edge
  %i.bj = phi i32 [ %.pre98, %parse_expression.exit53.parse_expression.exit53.thread61_crit_edge ], [ %i.aw, %.preheader.i46 ]
  %i.bk = phi i32 [ %.pre95, %parse_expression.exit53.parse_expression.exit53.thread61_crit_edge ], [ %i.at, %.preheader.i46 ] ; 2 uses
  %i.bl = phi ptr [ %.pre94, %parse_expression.exit53.parse_expression.exit53.thread61_crit_edge ], [ %i.as, %.preheader.i46 ] ; 3 uses
  %i.bm = add nuw nsw i32 %.028, 1                ; 3 uses
  %i.bn = icmp eq i32 %i.bj, 48
  br i1 %i.bn, label %bb.g, label %.critedgesplit

bb.g:                                             ; preds = %parse_expression.exit53.thread61
  %i.bo = add nsw i32 %i.bk, 1                    ; 3 uses
  store i32 %i.bo, ptr %i.c, align 8, !tbaa !186
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %..critedge_crit_edge, label %.preheader, !llvm.loop !294

..critedge_crit_edge:                             ; preds = %bb.g
  br label %.critedge, !llvm.loop !294

.critedgesplit:                                   ; preds = %parse_expression.exit53.thread61, %.preheader
  %.ph = phi i32 [ %i.bk, %parse_expression.exit53.thread61 ], [ %.val36, %.preheader ]
  %.ph101 = phi ptr [ %i.bl, %parse_expression.exit53.thread61 ], [ %.val, %.preheader ]
  %.1.ph = phi i32 [ %i.bm, %parse_expression.exit53.thread61 ], [ %.028, %.preheader ]
  %i.bq = sext i32 %.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %i.br = phi i64 [ 0, %..critedge_crit_edge ], [ %i.bq, %.critedgesplit ]
  %i.bs = phi ptr [ %i.bl, %..critedge_crit_edge ], [ %.ph101, %.critedgesplit ]
  %.1 = phi i32 [ %i.bm, %..critedge_crit_edge ], [ %.1.ph, %.critedgesplit ] ; 5 uses
  %i.bt = getelementptr [48 x i8], ptr %i.bs, i64 %i.br
  %i.bu = getelementptr i8, ptr %i.bt, i64 -28
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !190
  %i.bw = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 6 uses
  store ptr @TupleExpr__new.TupleExprVt, ptr %i.bw, align 8, !tbaa !112
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %i.bv, ptr %i.bx, align 8, !tbaa !110
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  store i32 38, ptr %i.by, align 4, !tbaa !113
  %i.bz = sext i32 %.1 to i64
  %i.ca = shl nsw i64 %i.bz, 3
  %i.cb = tail call noalias ptr @malloc(i64 noundef %i.ca) #13 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !106
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i32 %.1, ptr %i.cd, align 8, !tbaa !105
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !192
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !193
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr [112 x i8], ptr %i.cf, i64 %i.ci ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -72    ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !194 ; 4 uses
  %i.cm = getelementptr i8, ptr %i.cj, i64 -64    ; 4 uses
  %.promoted = load i32, ptr %i.cm, align 8, !tbaa !195
  %i.cn = zext i32 %.1 to i64                     ; 4 uses
  %i.co = sext i32 %.promoted to i64              ; 5 uses
  %i.cp = add i32 %.1, -1                         ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cp, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.critedge
  %i.cs = ptrtoaddr ptr %i.cl to i64
  %i.ct = ptrtoaddr ptr %i.cb to i64
  %i.cu = shl nsw i64 %i.co, 3
  %2 = add i64 %i.cu, %i.cs
  %i.cv = add i32 %.1, -1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 3
  %i.cy = add i64 %i.cx, %i.ct
  %i.cz = sub i64 %2, %i.cy
  %i.da = add i64 %i.cz, -9
  %diff.check = icmp ult i64 %i.da, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, 8589934588              ; 4 uses
  %i.db = sub nsw i64 %i.co, %n.vec               ; 2 uses
  %i.dc = sub nsw i64 %i.cn, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dd = sub i64 %i.co, %index
  %i.de = xor i64 %index, -1
  %i.df = add i64 %i.de, %i.cn
  %i.dg = getelementptr [8 x i8], ptr %i.cl, i64 %i.dd ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 -16
  %i.di = getelementptr i8, ptr %i.dg, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !107
  %wide.load170 = load <2 x ptr>, ptr %i.di, align 8, !tbaa !107
  %i.dj = and i64 %i.df, 4294967295
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -24
  store <2 x ptr> %wide.load, ptr %i.dl, align 8, !tbaa !107
  store <2 x ptr> %wide.load170, ptr %i.dm, align 8, !tbaa !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !295

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.critedge, %middle.block
  %indvars.iv84.ph = phi i64 [ %i.co, %vector.memcheck ], [ %i.co, %.critedge ], [ %i.db, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.cn, %vector.memcheck ], [ %i.cn, %.critedge ], [ %i.dc, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next85.lcssa = phi i64 [ %i.db, %middle.block ], [ %indvars.iv.next85, %scalar.ph ]
  %i.do = trunc nsw i64 %indvars.iv.next85.lcssa to i32 ; 3 uses
  store i32 %i.do, ptr %i.cm, align 8, !tbaa !195
  %i.dp = getelementptr i8, ptr %i.cj, i64 -60
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !220
  %i.dr = icmp eq i32 %i.dq, %i.do
  br i1 %i.dr, label %bb.h, label %Ctx__s_push.exit

bb.h:                                             ; preds = %.loopexit
  %i.ds = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.ck) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.ck, i32 noundef %i.ds) #12
  %.pre.i = load i32, ptr %i.cm, align 8, !tbaa !195
  %.pre99 = load ptr, ptr %i.ck, align 8, !tbaa !194
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %.loopexit, %bb.h
  %i.dt = phi ptr [ %.pre99, %bb.h ], [ %i.cl, %.loopexit ]
  %i.du = phi i32 [ %.pre.i, %bb.h ], [ %i.do, %.loopexit ] ; 2 uses
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.dv
  store ptr %i.bw, ptr %i.dw, align 8, !tbaa !107
  %i.dx = add nsw i32 %i.du, 1
  store i32 %i.dx, ptr %i.cm, align 8, !tbaa !195
  br label %parse_expression.exit.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %scalar.ph ], [ %indvars.iv84.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %i.cl, i64 %indvars.iv84
  %i.dz = getelementptr i8, ptr %i.dy, i64 -8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !107
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, -1 ; 2 uses
  %i.eb = and i64 %indvars.iv.next, 4294967295
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.eb
  store ptr %i.ea, ptr %i.ec, align 8, !tbaa !107
  %i.ed = trunc nuw i64 %indvars.iv to i32
  %i.ee = icmp sgt i32 %i.ed, 1
  br i1 %i.ee, label %scalar.ph, label %.loopexit, !llvm.loop !296

parse_expression.exit.thread:                     ; preds = %bb.c, %bb.e, %parse_expression.exit53, %bb.f, %bb.b, %Ctx__s_push.exit, %bb.d, %parse_expression.exit.thread56, %parse_expression.exit
  %.130 = phi ptr [ %i.ad, %parse_expression.exit ], [ null, %bb.d ], [ null, %parse_expression.exit.thread56 ], [ null, %Ctx__s_push.exit ], [ %i.bi, %parse_expression.exit53 ], [ %i.m, %bb.b ], [ %i.bf, %bb.f ], [ %i.ar, %bb.e ], [ %i.aa, %bb.c ]
  ret ptr %.130
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parse_expression(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.e
  %i.g = load i32, ptr %i.f, align 8, !tbaa !191  ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !210  ; 2 uses
  %.not = icmp ne ptr %i.j, null
  %i.k = icmp ne i32 %i.g, 49
  %or.cond = or i1 %2, %i.k
  %or.cond42 = and i1 %.not, %or.cond
  br i1 %or.cond42, label %bb.b, label %.critedge.sink.split

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.d, 1
  store i32 %i.l, ptr %i.c, align 8, !tbaa !186
  %i.m = tail call ptr %i.j(ptr noundef nonnull %0) #12 ; 2 uses
  %.not38 = icmp eq ptr %i.m, null
  br i1 %.not38, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b, %bb.c
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.o = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [48 x i8], ptr %i.n, i64 %i.p
  %i.r = load i32, ptr %i.q, align 8, !tbaa !191  ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !211
  %.not39 = icmp uge i32 %i.v, %1
  %.not40 = icmp ne i32 %i.r, 49
  %or.cond44.not = or i1 %2, %.not40
  %or.cond47 = and i1 %.not39, %or.cond44.not
  br i1 %or.cond47, label %.critedge3, label %.critedge

.critedge3:                                       ; preds = %.preheader
  %i.w = add nsw i32 %i.o, 1
  store i32 %i.w, ptr %i.c, align 8, !tbaa !186
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !212  ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.critedge.sink.split, label %bb.c

bb.c:                                             ; preds = %.critedge3
  %i.aa = tail call ptr %i.y(ptr noundef nonnull %0) #12 ; 2 uses
  %.not41 = icmp eq ptr %i.aa, null
  br i1 %.not41, label %.preheader, label %.critedge, !llvm.loop !2

.critedge.sink.split:                             ; preds = %.critedge3, %bb.a
  %.lcssa53.sink = phi i64 [ %i.h, %bb.a ], [ %i.s, %.critedge3 ]
  %.str.7.sink = phi ptr [ @.str.6, %bb.a ], [ @.str.7, %.critedge3 ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %.lcssa53.sink
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.ad = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull %.str.7.sink, ptr noundef %i.ac)
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.preheader, %.critedge.sink.split, %bb.b
  %.3 = phi ptr [ %i.ad, %.critedge.sink.split ], [ %i.m, %bb.b ], [ null, %.preheader ], [ %i.aa, %bb.c ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @exprName(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !214
  %i.i = getelementptr i8, ptr %i.f, i64 -32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !215
  %i.k = tail call ptr @py_namev(ptr %i.h, i32 %i.j) #12 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val = load i32, ptr %i.l, align 8, !tbaa !193 ; 2 uses
  %i.m = icmp slt i32 %.val, 2
  %i.n = zext i1 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !192
  %i.q = sext i32 %.val to i64
  %i.r = getelementptr [112 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -48
  %i.t = tail call zeroext i1 @c11_smallmap_n2d__contains(ptr noundef %i.s, ptr noundef %i.k) #12
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %0, align 8, !tbaa !185
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.w = load i8, ptr %i.v, align 4, !tbaa !30, !range !31, !noundef !32
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.9)
  br label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.a
  %.017 = phi i32 [ %i.n, %bb.a ], [ 1, %bb.b ]
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !186
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [48 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !190
end_hunk_0
begin_hunk_1_@exprList:bb.a

bb.c:                                             ; preds = %bb.b
  %i.o = zext i32 %i.m to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !210  ; 2 uses
  %.not.i.i = icmp ne ptr %i.q, null
  %i.r = icmp ne i32 %i.m, 49
  %or.cond42.i.i = and i1 %i.r, %.not.i.i
  br i1 %or.cond42.i.i, label %bb.d, label %EXPR.exit

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %i.i, 1
  store i32 %i.s, ptr %i.c, align 8, !tbaa !186
  %i.t = tail call ptr %i.q(ptr noundef nonnull %0) #12, !inline_history !216 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.t, null
  br i1 %.not38.i.i, label %.preheader.i.i, label %EXPR.exit.thread

.preheader.i.i:                                   ; preds = %bb.d, %bb.e
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %i.v = load i32, ptr %i.c, align 8, !tbaa !186  ; 3 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [48 x i8], ptr %i.u, i64 %i.w
  %i.y = load i32, ptr %i.x, align 8, !tbaa !191  ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !211
  %.not39.i.i = icmp ne i32 %i.ac, 0
  %.not40.i.i = icmp ne i32 %i.y, 49
  %or.cond47.i.i = and i1 %.not40.i.i, %.not39.i.i
  br i1 %or.cond47.i.i, label %.critedge3.i.i, label %EXPR.exit.thread51

.critedge3.i.i:                                   ; preds = %.preheader.i.i
  %i.ad = add nsw i32 %i.v, 1
  store i32 %i.ad, ptr %i.c, align 8, !tbaa !186
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !212 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %EXPR.exit, label %bb.e

bb.e:                                             ; preds = %.critedge3.i.i
  %i.ah = tail call ptr %i.af(ptr noundef nonnull %0) #12, !inline_history !216 ; 2 uses
  %.not41.i.i = icmp eq ptr %i.ah, null
  br i1 %.not41.i.i, label %.preheader.i.i, label %EXPR.exit.thread, !llvm.loop !2

EXPR.exit:                                        ; preds = %.critedge3.i.i, %bb.c
  %.lcssa53.sink.i.i = phi i64 [ %i.o, %bb.c ], [ %i.z, %.critedge3.i.i ]
  %.str.7.sink.i.i = phi ptr [ @.str.6, %bb.c ], [ @.str.7, %.critedge3.i.i ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %.lcssa53.sink.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67
  %i.ak = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull %.str.7.sink.i.i, ptr noundef %i.aj), !inline_history !216 ; 2 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %EXPR.exit.EXPR.exit.thread51_crit_edge, label %EXPR.exit.thread

EXPR.exit.EXPR.exit.thread51_crit_edge:           ; preds = %EXPR.exit
  %.pre71.pre = load ptr, ptr %i.a, align 8, !tbaa !188
  %.pre72.pre = load i32, ptr %i.c, align 8, !tbaa !186
  br label %EXPR.exit.thread51

EXPR.exit.thread51:                               ; preds = %.preheader.i.i, %EXPR.exit.EXPR.exit.thread51_crit_edge
  %.pre72 = phi i32 [ %.pre72.pre, %EXPR.exit.EXPR.exit.thread51_crit_edge ], [ %i.v, %.preheader.i.i ] ; 4 uses
  %.pre71 = phi ptr [ %.pre71.pre, %EXPR.exit.EXPR.exit.thread51_crit_edge ], [ %i.u, %.preheader.i.i ] ; 6 uses
  %i.al = add nuw nsw i32 %.040, 1                ; 2 uses
  %i.am = icmp eq i32 %.040, 0
  br i1 %i.am, label %bb.f, label %bb.l

bb.f:                                             ; preds = %EXPR.exit.thread51
  %i.an = sext i32 %.pre72 to i64
  %i.ao = getelementptr inbounds [48 x i8], ptr %.pre71, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !191
  %i.aq = icmp eq i32 %i.ap, 79
  br i1 %i.aq, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.ar = add nsw i32 %.pre72, 1                  ; 2 uses
  store i32 %i.ar, ptr %i.c, align 8, !tbaa !186
  %.not44 = icmp eq i32 %i.ar, 0
  br i1 %.not44, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = tail call fastcc ptr @consume_comp(ptr noundef nonnull %0, i32 noundef 39, i32 noundef 79) ; 2 uses
  %.not46 = icmp eq ptr %i.as, null
  br i1 %.not46, label %bb.i, label %EXPR.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %i.au = load i32, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [48 x i8], ptr %i.at, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !191 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 42
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = add nsw i32 %i.au, 1                    ; 2 uses
  store i32 %i.az, ptr %i.c, align 8, !tbaa !186
  %.not47 = icmp eq i32 %i.az, 0
  br i1 %.not47, label %._crit_edge69, label %EXPR.exit.thread

._crit_edge69:                                    ; preds = %bb.j
  %.pre = load i32, ptr %i.at, align 8, !tbaa !191
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge69, %bb.i
  %i.ba = phi i32 [ %i.ax, %bb.i ], [ %.pre, %._crit_edge69 ]
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TokenSymbols, i64 336), align 8, !tbaa !67
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !67
  %i.bf = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.bb, ptr noundef %i.be)
  br label %EXPR.exit.thread

bb.l:                                             ; preds = %EXPR.exit.thread51, %bb.g, %bb.f
  %i.bg = phi i32 [ %.pre72, %EXPR.exit.thread51 ], [ 0, %bb.g ], [ %.pre72, %bb.f ] ; 3 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [48 x i8], ptr %.pre71, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !191 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 48
  br i1 %i.bk, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bl = add nsw i32 %i.bg, 1                    ; 3 uses
  store i32 %i.bl, ptr %i.c, align 8, !tbaa !186
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %..critedge_crit_edge, label %bb.b, !llvm.loop !304

..critedge_crit_edge:                             ; preds = %bb.m
  %.pre76 = load i32, ptr %.pre71, align 8, !tbaa !191
  br label %.critedge, !llvm.loop !304

.critedge:                                        ; preds = %bb.l, %..critedge_crit_edge
  %i.bn = phi i32 [ %.pre76, %..critedge_crit_edge ], [ %i.bj, %bb.l ]
  %i.bo = phi i32 [ 0, %..critedge_crit_edge ], [ %i.bg, %bb.l ] ; 2 uses
  %i.bp = icmp eq i32 %i.bn, 42
  br i1 %i.bp, label %.critedge.thread, label %._crit_edge88

.critedge.thread:                                 ; preds = %bb.b, %.critedge
  %.1100 = phi i32 [ %i.al, %.critedge ], [ %.040, %bb.b ] ; 5 uses
  %i.bq = phi ptr [ %.pre71, %.critedge ], [ %i.j, %bb.b ]
  %i.br = phi i32 [ %i.bo, %.critedge ], [ %i.i, %bb.b ]
  %i.bs = add nsw i32 %i.br, 1                    ; 2 uses
  store i32 %i.bs, ptr %i.c, align 8, !tbaa !186
  %.not48 = icmp eq i32 %i.bs, 0
  br i1 %.not48, label %._crit_edge88, label %bb.n

._crit_edge88:                                    ; preds = %.critedge.thread, %.critedge
  %i.bt = phi ptr [ %.pre71, %.critedge ], [ %i.bq, %.critedge.thread ]
  %i.bu = phi i32 [ %i.bo, %.critedge ], [ 0, %.critedge.thread ]
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TokenSymbols, i64 336), align 8, !tbaa !67
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [48 x i8], ptr %i.bt, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !191
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %i.bz
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !67
  %i.cc = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.bv, ptr noundef %i.cb)
  br label %EXPR.exit.thread

bb.n:                                             ; preds = %.critedge.thread
  %i.cd = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 6 uses
  store ptr @ListExpr__new.ListExprVt, ptr %i.cd, align 8, !tbaa !112
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.h, ptr %i.ce, align 8, !tbaa !110
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  store i32 39, ptr %i.cf, align 4, !tbaa !113
  %i.cg = sext i32 %.1100 to i64
  %i.ch = shl nsw i64 %i.cg, 3
  %i.ci = tail call noalias ptr @malloc(i64 noundef %i.ch) #13 ; 4 uses
  %i.cj = ptrtoaddr ptr %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !106
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i32 %.1100, ptr %i.cl, align 8, !tbaa !105
  %i.cm = icmp sgt i32 %.1100, 0
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !192 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !193
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr [112 x i8], ptr %i.co, i64 %i.cr ; 3 uses
  br i1 %i.cm, label %.lr.ph, label %._crit_edge77

._crit_edge77:                                    ; preds = %bb.n
  %.phi.trans.insert84 = getelementptr i8, ptr %i.cs, i64 -64
  %.pre85 = load i32, ptr %.phi.trans.insert84, align 8, !tbaa !195
  br label %bb.o

.lr.ph:                                           ; preds = %bb.n
  %i.ct = getelementptr i8, ptr %i.cs, i64 -72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !194 ; 3 uses
  %i.cv = getelementptr i8, ptr %i.cs, i64 -64    ; 2 uses
  %.promoted = load i32, ptr %i.cv, align 8, !tbaa !195
  %i.cw = sext i32 %.promoted to i64              ; 5 uses
  %i.cx = zext nneg i32 %.1100 to i64             ; 7 uses
  %min.iters.check = icmp ult i32 %.1100, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cy = ptrtoaddr ptr %i.cu to i64
  %i.cz = shl nsw i64 %i.cw, 3
  %1 = add i64 %i.cz, %i.cy
  %2 = shl nuw nsw i64 %i.cx, 3
  %i.da = add i64 %2, %i.cj
  %i.db = sub i64 %i.da, %1
  %diff.check = icmp ugt i64 %i.db, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cx, 2147483644              ; 3 uses
  %i.dc = and i64 %i.cx, 3
  %i.dd = sub nsw i64 %i.cw, %n.vec               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ci, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = sub i64 %i.cw, %index
  %i.df = xor i64 %index, -1
  %i.dg = getelementptr [8 x i8], ptr %i.cu, i64 %i.de ; 2 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 -16
  %i.di = getelementptr i8, ptr %i.dg, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !107
  %wide.load173 = load <2 x ptr>, ptr %i.di, align 8, !tbaa !107
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.df ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %gep, i64 -8
  %i.dk = getelementptr inbounds i8, ptr %gep, i64 -24
  store <2 x ptr> %wide.load, ptr %i.dj, align 8, !tbaa !107
  store <2 x ptr> %wide.load173, ptr %i.dk, align 8, !tbaa !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !305

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cx
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv64.ph = phi i64 [ %i.cx, %vector.memcheck ], [ %i.cx, %.lr.ph ], [ %i.dc, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph ], [ %i.dd, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.dd, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.dm = trunc nsw i64 %indvars.iv.next.lcssa to i32 ; 2 uses
  store i32 %i.dm, ptr %i.cv, align 8, !tbaa !195
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge77, %._crit_edge
  %i.dn = phi i32 [ %.pre85, %._crit_edge77 ], [ %i.dm, %._crit_edge ] ; 2 uses
  %i.do = getelementptr [112 x i8], ptr %i.co, i64 %i.cr ; 3 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 -72    ; 3 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 -64    ; 2 uses
  %i.dr = getelementptr i8, ptr %i.do, i64 -60
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !220
  %i.dt = icmp eq i32 %i.dn, %i.ds
  br i1 %i.dt, label %bb.p, label %Ctx__s_push.exit

bb.p:                                             ; preds = %bb.o
  %i.du = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.dp) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.dp, i32 noundef %i.du) #12
  %.pre.i = load i32, ptr %i.dq, align 8, !tbaa !195
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.o, %bb.p
  %i.dv = phi i32 [ %.pre.i, %bb.p ], [ %i.dn, %bb.o ] ; 2 uses
  %i.dw = load ptr, ptr %i.dp, align 8, !tbaa !194
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dx
  store ptr %i.cd, ptr %i.dy, align 8, !tbaa !107
  %i.dz = add nsw i32 %i.dv, 1
  store i32 %i.dz, ptr %i.dq, align 8, !tbaa !195
  br label %EXPR.exit.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %scalar.ph ], [ %indvars.iv64.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, -1 ; 2 uses
  %i.ea = getelementptr [8 x i8], ptr %i.cu, i64 %indvars.iv
  %i.eb = getelementptr i8, ptr %i.ea, i64 -8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !107
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next65
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !107
  %i.ee = icmp samesign ugt i64 %indvars.iv64, 1
  br i1 %i.ee, label %scalar.ph, label %._crit_edge, !llvm.loop !306

EXPR.exit.thread:                                 ; preds = %bb.d, %EXPR.exit, %bb.e, %bb.j, %bb.h, %Ctx__s_push.exit, %._crit_edge88, %bb.k
  %.041 = phi ptr [ null, %Ctx__s_push.exit ], [ %i.cc, %._crit_edge88 ], [ %i.bf, %bb.k ], [ %i.ah, %bb.e ], [ %i.as, %bb.h ], [ null, %bb.j ], [ %i.t, %bb.d ], [ %i.ak, %EXPR.exit ]
  ret ptr %.041
}

; Function Attrs: nounwind uwtable
define internal ptr @exprSubscr(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !190
  %i.i = tail call fastcc ptr @EXPR_TUPLE_ALLOW_SLICE(ptr noundef %0, i1 noundef zeroext true) ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %i.k = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [48 x i8], ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 8, !tbaa !191  ; 2 uses
  %i.o = icmp eq i32 %i.n, 42
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %i.k, 1                      ; 2 uses
  store i32 %i.p, ptr %i.c, align 8, !tbaa !186
  %.not21 = icmp eq i32 %i.p, 0
  br i1 %.not21, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.c
  %.pre23 = load i32, ptr %i.j, align 8, !tbaa !191
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.q = phi i32 [ %i.n, %bb.b ], [ %.pre23, %._crit_edge ]
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TokenSymbols, i64 336), align 8, !tbaa !67
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !67
  %i.v = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.r, ptr noundef %i.u)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.w = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  store ptr @SubscrExpr__new.Vt, ptr %i.w, align 8, !tbaa !164
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.h, ptr %i.x, align 8, !tbaa !163
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !192
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !193
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr [112 x i8], ptr %i.aa, i64 %i.ad ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 -72    ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !194 ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 -64    ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !195 ; 3 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr %i.ag, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !107
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %i.am, ptr %i.an, align 8, !tbaa !162
  %i.ao = sext i32 %i.ai to i64
  %i.ap = getelementptr [8 x i8], ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !107
  %i.as = add nsw i32 %i.ai, -2                   ; 3 uses
  store i32 %i.as, ptr %i.ah, align 8, !tbaa !195
  store ptr %i.ar, ptr %i.y, align 8, !tbaa !161
  %i.at = getelementptr i8, ptr %i.ae, i64 -60
  %i.au = load i32, ptr %i.at, align 4, !tbaa !220
  %i.av = icmp eq i32 %i.as, %i.au
  br i1 %i.av, label %bb.f, label %Ctx__s_push.exit

bb.f:                                             ; preds = %bb.e
  %i.aw = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.af) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.af, i32 noundef %i.aw) #12
  %.pre.i = load i32, ptr %i.ah, align 8, !tbaa !195
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !194
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.e, %bb.f
  %i.ax = phi ptr [ %.pre, %bb.f ], [ %i.ag, %bb.e ]
  %i.ay = phi i32 [ %.pre.i, %bb.f ], [ %i.as, %bb.e ] ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.az
  store ptr %i.w, ptr %i.ba, align 8, !tbaa !107
  %i.bb = add nsw i32 %i.ay, 1
  store i32 %i.bb, ptr %i.ah, align 8, !tbaa !195
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %Ctx__s_push.exit, %bb.d
  %.0 = phi ptr [ %i.v, %bb.d ], [ null, %Ctx__s_push.exit ], [ %i.i, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @exprMap(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !190
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b
end_hunk_1
begin_hunk_2_@exprMap:bb.a
  %i.ch = load ptr, ptr %i.i, align 8, !tbaa !192
  %i.ci = load i32, ptr %i.j, align 8, !tbaa !193
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr [112 x i8], ptr %i.ch, i64 %i.cj ; 3 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -72    ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !194 ; 3 uses
  %i.cn = getelementptr i8, ptr %i.ck, i64 -64    ; 4 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !195 ; 3 uses
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr [8 x i8], ptr %i.cm, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !107
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !223
  %i.cu = sext i32 %i.co to i64
  %i.cv = getelementptr [8 x i8], ptr %i.cm, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 -16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !107
  %i.cy = add nsw i32 %i.co, -2                   ; 3 uses
  store i32 %i.cy, ptr %i.cn, align 8, !tbaa !195
  store ptr %i.cx, ptr %i.cg, align 8, !tbaa !224
  %i.cz = getelementptr i8, ptr %i.ck, i64 -60
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !220
  %i.db = icmp eq i32 %i.cy, %i.da
  br i1 %i.db, label %bb.k, label %Ctx__s_push.exit

bb.k:                                             ; preds = %EXPR.exit100.thread110
  %i.dc = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.cl) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.cl, i32 noundef %i.dc) #12
  %.pre.i = load i32, ptr %i.cn, align 8, !tbaa !195
  %.pre153 = load ptr, ptr %i.cl, align 8, !tbaa !194
  %.pre158.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !188
  %.pre159.pre.pre = load i32, ptr %i.c, align 8, !tbaa !186
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %EXPR.exit100.thread110, %bb.k
  %.pre159.pre = phi i32 [ %.pre159.pre.pre, %bb.k ], [ %i.bz, %EXPR.exit100.thread110 ]
  %.pre158.pre = phi ptr [ %.pre158.pre.pre, %bb.k ], [ %i.ca, %EXPR.exit100.thread110 ]
  %i.dd = phi ptr [ %.pre153, %bb.k ], [ %i.cm, %EXPR.exit100.thread110 ]
  %i.de = phi i32 [ %.pre.i, %bb.k ], [ %i.cy, %EXPR.exit100.thread110 ] ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.dd, i64 %i.df
  store ptr %i.ce, ptr %i.dg, align 8, !tbaa !107
  %i.dh = add nsw i32 %i.de, 1
  store i32 %i.dh, ptr %i.cn, align 8, !tbaa !195
  br label %bb.l

bb.l:                                             ; preds = %Ctx__s_push.exit, %EXPR.exit.thread105
  %.pre159 = phi i32 [ %.pre159.pre, %Ctx__s_push.exit ], [ %i.ao, %EXPR.exit.thread105 ] ; 4 uses
  %.pre158 = phi ptr [ %.pre158.pre, %Ctx__s_push.exit ], [ %i.ap, %EXPR.exit.thread105 ] ; 6 uses
  %i.di = add nuw nsw i32 %.072, 1                ; 2 uses
  %i.dj = icmp eq i32 %.072, 0
  br i1 %i.dj, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.dk = sext i32 %.pre159 to i64
  %i.dl = getelementptr inbounds [48 x i8], ptr %.pre158, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !191
  %i.dn = icmp eq i32 %i.dm, 79
  br i1 %i.dn, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.do = add nsw i32 %.pre159, 1                 ; 2 uses
  store i32 %i.do, ptr %i.c, align 8, !tbaa !186
  %.not81 = icmp eq i32 %i.do, 0
  br i1 %.not81, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dp = tail call fastcc ptr @consume_comp(ptr noundef nonnull %0, i32 noundef 40, i32 noundef 80) ; 2 uses
  %.not84 = icmp eq ptr %i.dp, null
  br i1 %.not84, label %bb.r, label %EXPR.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.dq = tail call fastcc ptr @consume_comp(ptr noundef nonnull %0, i32 noundef 41, i32 noundef 81) ; 2 uses
  %.not83 = icmp eq ptr %i.dq, null
  br i1 %.not83, label %bb.r, label %EXPR.exit.thread

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %i.ds = load i32, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [48 x i8], ptr %i.dr, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !191 ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 44
  br i1 %i.dw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dx = add nsw i32 %i.ds, 1                    ; 2 uses
  store i32 %i.dx, ptr %i.c, align 8, !tbaa !186
  %.not85 = icmp eq i32 %i.dx, 0
  br i1 %.not85, label %._crit_edge154, label %EXPR.exit.thread

._crit_edge154:                                   ; preds = %bb.s
  %.pre157 = load i32, ptr %i.dr, align 8, !tbaa !191
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge154, %bb.r
  %i.dy = phi i32 [ %i.dv, %bb.r ], [ %.pre157, %._crit_edge154 ]
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TokenSymbols, i64 352), align 8, !tbaa !67
  %i.ea = zext i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !67
  %i.ed = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.dz, ptr noundef %i.ec)
  br label %EXPR.exit.thread

bb.u:                                             ; preds = %bb.l, %bb.n, %bb.m
  %i.ee = phi i32 [ %.pre159, %bb.l ], [ 0, %bb.n ], [ %.pre159, %bb.m ] ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [48 x i8], ptr %.pre158, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !191 ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 48
  br i1 %i.ei, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.ej = add nsw i32 %i.ee, 1                    ; 3 uses
  store i32 %i.ej, ptr %i.c, align 8, !tbaa !186
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %..critedge_crit_edge, label %bb.b, !llvm.loop !307

..critedge_crit_edge:                             ; preds = %bb.v
  %.pre167 = load i32, ptr %.pre158, align 8, !tbaa !191
  br label %.critedge, !llvm.loop !307

.critedge:                                        ; preds = %bb.u, %..critedge_crit_edge
  %i.el = phi i32 [ %.pre167, %..critedge_crit_edge ], [ %i.eh, %bb.u ]
  %i.em = phi i32 [ 0, %..critedge_crit_edge ], [ %i.ee, %bb.u ] ; 2 uses
  %i.en = icmp eq i32 %i.el, 44
  br i1 %i.en, label %.critedge.thread, label %._crit_edge182

.critedge.thread:                                 ; preds = %bb.b, %.critedge
  %.1205 = phi i32 [ %i.di, %.critedge ], [ %.072, %bb.b ] ; 6 uses
  %.2204 = phi i8 [ %spec.select, %.critedge ], [ %.073, %bb.b ]
  %i.eo = phi ptr [ %.pre158, %.critedge ], [ %i.l, %bb.b ]
  %i.ep = phi i32 [ %i.em, %.critedge ], [ %i.k, %bb.b ]
  %i.eq = add nsw i32 %i.ep, 1                    ; 2 uses
  store i32 %i.eq, ptr %i.c, align 8, !tbaa !186
  %.not86 = icmp eq i32 %i.eq, 0
  br i1 %.not86, label %._crit_edge182, label %bb.w

._crit_edge182:                                   ; preds = %.critedge.thread, %.critedge
  %i.er = phi ptr [ %.pre158, %.critedge ], [ %i.eo, %.critedge.thread ]
  %i.es = phi i32 [ %i.em, %.critedge ], [ 0, %.critedge.thread ]
  %i.et = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TokenSymbols, i64 352), align 8, !tbaa !67
  %i.eu = sext i32 %i.es to i64
  %i.ev = getelementptr inbounds [48 x i8], ptr %i.er, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !191
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !67
  %i.fa = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.et, ptr noundef %i.ez)
  br label %EXPR.exit.thread

bb.w:                                             ; preds = %.critedge.thread
  %i.fb = icmp eq i32 %.1205, 0
  %i.fc = trunc nuw i8 %.2204 to i1
  %or.cond = select i1 %i.fb, i1 true, i1 %i.fc   ; 2 uses
  %i.fd = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  %i.fg = sext i32 %.1205 to i64
  %i.fh = shl nsw i64 %i.fg, 3
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %DictExpr__new.DictExprVt.SetExpr__new.SetExprVt = select i1 %or.cond, ptr @DictExpr__new.DictExprVt, ptr @SetExpr__new.SetExprVt
  %. = select i1 %or.cond, i32 40, i32 41
  store ptr %DictExpr__new.DictExprVt.SetExpr__new.SetExprVt, ptr %i.fd, align 8, !tbaa !112
  store i32 %i.h, ptr %i.fe, align 8, !tbaa !110
  store i32 %., ptr %i.ff, align 4, !tbaa !113
  %i.fk = tail call noalias ptr @malloc(i64 noundef %i.fh) #13 ; 4 uses
  %i.fl = ptrtoaddr ptr %i.fk to i64
  store ptr %i.fk, ptr %i.fi, align 8, !tbaa !106
  store i32 %.1205, ptr %i.fj, align 8, !tbaa !105
  %i.fm = icmp sgt i32 %.1205, 0
  %.pre168 = load ptr, ptr %i.i, align 8, !tbaa !192 ; 2 uses
  %.pre169 = load i32, ptr %i.j, align 8, !tbaa !193
  %i.fn = sext i32 %.pre169 to i64                ; 2 uses
  %i.fo = getelementptr [112 x i8], ptr %.pre168, i64 %i.fn ; 3 uses
  br i1 %i.fm, label %.lr.ph, label %._crit_edge170

._crit_edge170:                                   ; preds = %bb.w
  %.phi.trans.insert173 = getelementptr i8, ptr %i.fo, i64 -64
  %.pre174 = load i32, ptr %.phi.trans.insert173, align 8, !tbaa !195
  br label %bb.x

.lr.ph:                                           ; preds = %bb.w
  %i.fp = getelementptr i8, ptr %i.fo, i64 -72
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !194 ; 3 uses
  %i.fr = getelementptr i8, ptr %i.fo, i64 -64    ; 2 uses
  %.promoted = load i32, ptr %i.fr, align 8, !tbaa !195
  %i.fs = sext i32 %.promoted to i64              ; 5 uses
  %i.ft = zext nneg i32 %.1205 to i64             ; 7 uses
  %min.iters.check = icmp ult i32 %.1205, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.fu = ptrtoaddr ptr %i.fq to i64
  %i.fv = shl nsw i64 %i.fs, 3
  %1 = add i64 %i.fv, %i.fu
  %2 = shl nuw nsw i64 %i.ft, 3
  %i.fw = add i64 %2, %i.fl
  %i.fx = sub i64 %i.fw, %1
  %diff.check = icmp ugt i64 %i.fx, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ft, 2147483644              ; 3 uses
  %i.fy = and i64 %i.ft, 3
  %i.fz = sub nsw i64 %i.fs, %n.vec               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.fk, i64 %i.ft
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ga = sub i64 %i.fs, %index
  %i.gb = xor i64 %index, -1
  %i.gc = getelementptr [8 x i8], ptr %i.fq, i64 %i.ga ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 -16
  %i.ge = getelementptr i8, ptr %i.gc, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.gd, align 8, !tbaa !107
  %wide.load392 = load <2 x ptr>, ptr %i.ge, align 8, !tbaa !107
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.gb ; 2 uses
  %i.gf = getelementptr inbounds i8, ptr %gep, i64 -8
  %i.gg = getelementptr inbounds i8, ptr %gep, i64 -24
  store <2 x ptr> %wide.load, ptr %i.gf, align 8, !tbaa !107
  store <2 x ptr> %wide.load392, ptr %i.gg, align 8, !tbaa !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ft
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv143.ph = phi i64 [ %i.ft, %vector.memcheck ], [ %i.ft, %.lr.ph ], [ %i.fy, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.fs, %vector.memcheck ], [ %i.fs, %.lr.ph ], [ %i.fz, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.fz, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.gi = trunc nsw i64 %indvars.iv.next.lcssa to i32 ; 2 uses
  store i32 %i.gi, ptr %i.fr, align 8, !tbaa !195
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge170, %._crit_edge
  %i.gj = phi i32 [ %.pre174, %._crit_edge170 ], [ %i.gi, %._crit_edge ] ; 2 uses
  %i.gk = getelementptr [112 x i8], ptr %.pre168, i64 %i.fn ; 3 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 -72    ; 3 uses
  %i.gm = getelementptr i8, ptr %i.gk, i64 -64    ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gk, i64 -60
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !220
  %i.gp = icmp eq i32 %i.gj, %i.go
  br i1 %i.gp, label %bb.y, label %Ctx__s_push.exit102

bb.y:                                             ; preds = %bb.x
  %i.gq = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.gl) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.gl, i32 noundef %i.gq) #12
  %.pre.i101 = load i32, ptr %i.gm, align 8, !tbaa !195
  br label %Ctx__s_push.exit102

Ctx__s_push.exit102:                              ; preds = %bb.x, %bb.y
  %i.gr = phi i32 [ %.pre.i101, %bb.y ], [ %i.gj, %bb.x ] ; 2 uses
  %i.gs = load ptr, ptr %i.gl, align 8, !tbaa !194
  %i.gt = sext i32 %i.gr to i64
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gt
  store ptr %i.fd, ptr %i.gu, align 8, !tbaa !107
  %i.gv = add nsw i32 %i.gr, 1
  store i32 %i.gv, ptr %i.gm, align 8, !tbaa !195
  br label %EXPR.exit.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %scalar.ph ], [ %indvars.iv143.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, -1 ; 2 uses
  %i.gw = getelementptr [8 x i8], ptr %i.fq, i64 %indvars.iv
  %i.gx = getelementptr i8, ptr %i.gw, i64 -8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !107
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next144
  store ptr %i.gy, ptr %i.gz, align 8, !tbaa !107
  %i.ha = icmp samesign ugt i64 %indvars.iv143, 1
  br i1 %i.ha, label %scalar.ph, label %._crit_edge, !llvm.loop !309

EXPR.exit.thread:                                 ; preds = %bb.i, %bb.d, %EXPR.exit100, %EXPR.exit, %bb.e, %bb.j, %bb.s, %bb.q, %bb.p, %Ctx__s_push.exit102, %._crit_edge182, %bb.t, %split
  %.071 = phi ptr [ null, %Ctx__s_push.exit102 ], [ %i.fa, %._crit_edge182 ], [ %i.ay, %split ], [ %i.bv, %bb.j ], [ %i.aj, %bb.e ], [ %i.dq, %bb.q ], [ %i.ed, %bb.t ], [ %i.dp, %bb.p ], [ null, %bb.s ], [ %i.bh, %bb.i ], [ %i.v, %bb.d ], [ %i.by, %EXPR.exit100 ], [ %i.am, %EXPR.exit ]
  ret ptr %.071
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @exprAttrib(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !191  ; 2 uses
  %i.h = icmp eq i32 %i.g, 3
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.i, ptr %i.c, align 8, !tbaa !186
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b
  %.pre20 = load i32, ptr %i.b, align 8, !tbaa !191
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.j = phi i32 [ %i.g, %bb.a ], [ %.pre20, %._crit_edge ]
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TokenSymbols, i64 24), align 8, !tbaa !67
  %i.l = zext i32 %i.j to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !67
  %i.o = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.k, ptr noundef %i.n)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !214
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !215
  %i.t = tail call ptr @py_namev(ptr %i.q, i32 %i.s) #12
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.v = load i32, ptr %i.c, align 8, !tbaa !186
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [48 x i8], ptr %i.u, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -28
  %i.z = load i32, ptr %i.y, align 4, !tbaa !190
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !192
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !193
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr [112 x i8], ptr %i.ab, i64 %i.ae ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 -72    ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !194 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 -64    ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !195 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !107
  %i.ao = add nsw i32 %i.aj, -1                   ; 3 uses
  store i32 %i.ao, ptr %i.ai, align 8, !tbaa !195
  %i.ap = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  store ptr @AttribExpr__new.Vt, ptr %i.ap, align 8, !tbaa !171
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 %i.z, ptr %i.aq, align 8, !tbaa !170
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !166
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.t, ptr %i.as, align 8, !tbaa !169
  %i.at = getelementptr i8, ptr %i.af, i64 -60
  %i.au = load i32, ptr %i.at, align 4, !tbaa !220
  %i.av = icmp eq i32 %i.ao, %i.au
  br i1 %i.av, label %bb.e, label %Ctx__s_push.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.ag) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.ag, i32 noundef %i.aw) #12
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !195
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !194
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.d, %bb.e
  %i.ax = phi ptr [ %.pre, %bb.e ], [ %i.ah, %bb.d ]
  %i.ay = phi i32 [ %.pre.i, %bb.e ], [ %i.ao, %bb.d ] ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.az
  store ptr %i.ap, ptr %i.ba, align 8, !tbaa !107
  %i.bb = add nsw i32 %i.ay, 1
  store i32 %i.bb, ptr %i.ai, align 8, !tbaa !195
  br label %bb.f

bb.f:                                             ; preds = %Ctx__s_push.exit, %bb.c
  %.0 = phi ptr [ null, %Ctx__s_push.exit ], [ %i.o, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @exprLiteral0(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -48
  %i.h = getelementptr i8, ptr %i.f, i64 -28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !190
  %i.j = load i32, ptr %i.g, align 8, !tbaa !191
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #13 ; 4 uses
  store ptr @Literal0Expr__new.Vt, ptr %i.k, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.i, ptr %i.l, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
end_hunk_2
