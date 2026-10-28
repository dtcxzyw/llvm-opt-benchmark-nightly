Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/compiler?download=true
inline.NumInlined: 296
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@exprName:bb.a
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
  %i.af = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  store ptr @NameExpr__new.Vt, ptr %i.af, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 %i.ae, ptr %i.ag, align 8, !tbaa !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.k, ptr %i.ah, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i32 %.017, ptr %i.ai, align 8, !tbaa !22
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !192
  %i.ak = load i32, ptr %i.l, align 8, !tbaa !193
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [112 x i8], ptr %i.aj, i64 %i.al ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -72    ; 3 uses
  %i.ao = getelementptr i8, ptr %i.am, i64 -64    ; 3 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !195 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.am, i64 -60
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !220
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.e, label %Ctx__s_push.exit

bb.e:                                             ; preds = %bb.d
  %i.at = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.an) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.an, i32 noundef %i.at) #12
  %.pre.i = load i32, ptr %i.ao, align 8, !tbaa !195
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.d, %bb.e
  %i.au = phi i32 [ %.pre.i, %bb.e ], [ %i.ap, %bb.d ] ; 2 uses
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !194
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %i.af, ptr %i.ax, align 8, !tbaa !107
  %i.ay = add nsw i32 %i.au, 1
  store i32 %i.ay, ptr %i.ao, align 8, !tbaa !195
  br label %bb.f

bb.f:                                             ; preds = %Ctx__s_push.exit, %bb.c
  %.0 = phi ptr [ %i.y, %bb.c ], [ null, %Ctx__s_push.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @exprLiteral(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 -28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !190
  %i.i = getelementptr i8, ptr %i.f, i64 -16
  %i.j = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  store ptr @LiteralExpr__new.Vt, ptr %i.j, align 8, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.h, ptr %i.k, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.i, ptr %i.l, align 8, !tbaa !83
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i8 0, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !192
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i32, ptr %i.p, align 8, !tbaa !193
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [112 x i8], ptr %i.o, i64 %i.r ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -72      ; 3 uses
  %i.u = getelementptr i8, ptr %i.s, i64 -64      ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !195  ; 2 uses
  %i.w = getelementptr i8, ptr %i.s, i64 -60
  %i.x = load i32, ptr %i.w, align 4, !tbaa !220
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %Ctx__s_push.exit

bb.b:                                             ; preds = %bb.a
  %i.z = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.t) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.t, i32 noundef %i.z) #12
  %.pre.i = load i32, ptr %i.u, align 8, !tbaa !195
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.a, %bb.b
  %i.aa = phi i32 [ %.pre.i, %bb.b ], [ %i.v, %bb.a ] ; 2 uses
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !194
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  store ptr %i.j, ptr %i.ad, align 8, !tbaa !107
  %i.ae = add nsw i32 %i.aa, 1
  store i32 %i.ae, ptr %i.u, align 8, !tbaa !195
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal ptr @exprFString(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [48 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !190
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread, %bb.a
  %i.k = phi i32 [ %.pre97, %.thread ], [ %i.d, %bb.a ] ; 3 uses
  %i.l = phi ptr [ %.pre, %.thread ], [ %i.b, %bb.a ] ; 4 uses
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %.thread ], [ 0, %bb.a ] ; 9 uses
  %.049 = phi i32 [ %.251, %.thread ], [ 0, %bb.a ] ; 4 uses
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [48 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 8, !tbaa !191  ; 2 uses
  %i.p = icmp eq i32 %i.o, 9
  br i1 %i.p, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.k, 1                      ; 2 uses
  store i32 %i.q, ptr %i.c, align 8, !tbaa !186
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %._crit_edge104, label %bb.d

._crit_edge104:                                   ; preds = %bb.c
  %.pre107 = load i32, ptr %i.l, align 8, !tbaa !191
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 6 uses
  store ptr @FStringExpr__new.ListExprVt, ptr %i.r, align 8, !tbaa !112
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.h, ptr %i.s, align 8, !tbaa !110
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  store i32 43, ptr %i.t, align 4, !tbaa !113
  %i.u = zext nneg i32 %.049 to i64
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #13 ; 4 uses
  %i.x = ptrtoaddr ptr %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.w, ptr %i.y, align 8, !tbaa !106
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i32 %.049, ptr %i.z, align 8, !tbaa !105
  %.not79 = icmp eq i32 %.049, 0
  %.pre98 = load ptr, ptr %i.i, align 8, !tbaa !192 ; 2 uses
  %.pre99 = load i32, ptr %i.j, align 8, !tbaa !193
  %.phi.trans.insert = sext i32 %.pre99 to i64    ; 2 uses
  %.phi.trans.insert101 = getelementptr [112 x i8], ptr %.pre98, i64 %.phi.trans.insert ; 3 uses
  br i1 %.not79, label %._crit_edge100, label %.lr.ph

._crit_edge100:                                   ; preds = %bb.d
  %.phi.trans.insert102 = getelementptr i8, ptr %.phi.trans.insert101, i64 -64
  %.pre103 = load i32, ptr %.phi.trans.insert102, align 8, !tbaa !195
  br label %bb.e

.lr.ph:                                           ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %.phi.trans.insert101, i64 -72
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !194 ; 3 uses
  %i.ac = getelementptr i8, ptr %.phi.trans.insert101, i64 -64 ; 2 uses
  %.promoted = load i32, ptr %i.ac, align 8, !tbaa !195
  %i.ad = sext i32 %.promoted to i64              ; 5 uses
  %min.iters.check = icmp ult i64 %indvars.iv88, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ae = ptrtoaddr ptr %i.ab to i64
  %i.af = shl nsw i64 %i.ad, 3
  %1 = add i64 %i.af, %i.ae
  %2 = shl i64 %indvars.iv88, 3
  %i.ag = add i64 %2, %i.x
  %i.ah = sub i64 %i.ag, %1
  %diff.check = icmp ugt i64 %i.ah, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv88, -4              ; 3 uses
  %i.ai = and i64 %indvars.iv88, 3
  %i.aj = sub i64 %i.ad, %n.vec                   ; 2 uses
  %i.ak = getelementptr [8 x i8], ptr %i.w, i64 %indvars.iv88
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = sub i64 %i.ad, %index
  %i.am = xor i64 %index, -1
  %i.an = getelementptr [8 x i8], ptr %i.ab, i64 %i.al ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -16
  %i.ap = getelementptr i8, ptr %i.an, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !107
  %wide.load169 = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !107
  %i.aq = getelementptr [8 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -8
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -24
  store <2 x ptr> %wide.load, ptr %i.ar, align 8, !tbaa !107
  store <2 x ptr> %wide.load169, ptr %i.as, align 8, !tbaa !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !297

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv88, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv92.ph = phi i64 [ %indvars.iv88, %vector.memcheck ], [ %indvars.iv88, %.lr.ph ], [ %i.ai, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.ad, %vector.memcheck ], [ %i.ad, %.lr.ph ], [ %i.aj, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.aj, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.au = trunc nsw i64 %indvars.iv.next.lcssa to i32 ; 2 uses
  store i32 %i.au, ptr %i.ac, align 8, !tbaa !195
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge100, %._crit_edge
  %i.av = phi i32 [ %.pre103, %._crit_edge100 ], [ %i.au, %._crit_edge ] ; 2 uses
  %i.aw = getelementptr [112 x i8], ptr %.pre98, i64 %.phi.trans.insert ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 -72    ; 3 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 -64    ; 2 uses
  %i.az = getelementptr i8, ptr %i.aw, i64 -60
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !220
  %i.bb = icmp eq i32 %i.av, %i.ba
  br i1 %i.bb, label %bb.f, label %Ctx__s_push.exit

bb.f:                                             ; preds = %bb.e
  %i.bc = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.ax) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.ax, i32 noundef %i.bc) #12
  %.pre.i = load i32, ptr %i.ay, align 8, !tbaa !195
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.e, %bb.f
  %i.bd = phi i32 [ %.pre.i, %bb.f ], [ %i.av, %bb.e ] ; 2 uses
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !194
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  store ptr %i.r, ptr %i.bg, align 8, !tbaa !107
  %i.bh = add nsw i32 %i.bd, 1
  store i32 %i.bh, ptr %i.ay, align 8, !tbaa !195
  br label %EXPR.exit.thread

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %scalar.ph ], [ %indvars.iv92.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, -1 ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !107
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next93
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !107
  %i.bm = icmp sgt i64 %indvars.iv92, 1
  br i1 %i.bm, label %scalar.ph, label %._crit_edge, !llvm.loop !298

bb.g:                                             ; preds = %._crit_edge104, %bb.b
  %i.bn = phi i32 [ %i.o, %bb.b ], [ %.pre107, %._crit_edge104 ] ; 2 uses
  %i.bo = phi i32 [ %i.k, %bb.b ], [ 0, %._crit_edge104 ] ; 3 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [48 x i8], ptr %i.l, i64 %i.bp ; 2 uses
  %i.br = icmp eq i32 %i.bn, 7
  br i1 %i.br, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bs = add nsw i32 %i.bo, 1                    ; 2 uses
  store i32 %i.bs, ptr %i.c, align 8, !tbaa !186
  %.not55 = icmp eq i32 %i.bs, 0
  br i1 %.not55, label %._crit_edge108, label %bb.i

._crit_edge108:                                   ; preds = %bb.h
  %.pre111 = load i32, ptr %i.l, align 8, !tbaa !191
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !190
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bw = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  store ptr @LiteralExpr__new.Vt, ptr %i.bw, align 8, !tbaa !88
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 %i.bu, ptr %i.bx, align 8, !tbaa !87
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !83
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i8 0, ptr %i.bz, align 8, !tbaa !86
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !192
  %i.cb = load i32, ptr %i.j, align 8, !tbaa !193
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr [112 x i8], ptr %i.ca, i64 %i.cc ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -72    ; 3 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 -64    ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !195 ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cd, i64 -60
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !220
  %i.cj = icmp eq i32 %i.cg, %i.ci
  br i1 %i.cj, label %bb.j, label %Ctx__s_push.exit59

bb.j:                                             ; preds = %bb.i
  %i.ck = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.ce) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.ce, i32 noundef %i.ck) #12
  %.pre.i58 = load i32, ptr %i.cf, align 8, !tbaa !195
  br label %Ctx__s_push.exit59

Ctx__s_push.exit59:                               ; preds = %bb.i, %bb.j
  %i.cl = phi i32 [ %.pre.i58, %bb.j ], [ %i.cg, %bb.i ] ; 2 uses
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !194
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cm, i64 %i.cn
  store ptr %i.bw, ptr %i.co, align 8, !tbaa !107
  %i.cp = add nsw i32 %i.cl, 1
  store i32 %i.cp, ptr %i.cf, align 8, !tbaa !195
  br label %.thread

bb.k:                                             ; preds = %._crit_edge108, %bb.g
  %i.cq = phi i32 [ %i.bn, %bb.g ], [ %.pre111, %._crit_edge108 ] ; 2 uses
  %i.cr = phi i32 [ %i.bo, %bb.g ], [ 0, %._crit_edge108 ]
  %i.cs = zext i32 %i.cq to i64                   ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !210 ; 2 uses
  %.not.i.i = icmp ne ptr %i.cu, null
  %i.cv = icmp ne i32 %i.cq, 49
  %or.cond42.i.i = and i1 %i.cv, %.not.i.i
  br i1 %or.cond42.i.i, label %bb.l, label %EXPR.exit

bb.l:                                             ; preds = %bb.k
  %i.cw = add nsw i32 %i.cr, 1
  store i32 %i.cw, ptr %i.c, align 8, !tbaa !186
  %i.cx = tail call ptr %i.cu(ptr noundef nonnull %0) #12, !inline_history !216 ; 2 uses
  %.not38.i.i = icmp eq ptr %i.cx, null
  br i1 %.not38.i.i, label %.preheader.i.i, label %EXPR.exit.thread

.preheader.i.i:                                   ; preds = %bb.l, %bb.m
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %i.cz = load i32, ptr %i.c, align 8, !tbaa !186 ; 3 uses
  %i.da = sext i32 %i.cz to i64                   ; 2 uses
  %i.db = getelementptr inbounds [48 x i8], ptr %i.cy, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !191 ; 3 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw [24 x i8], ptr @rules, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !211
  %.not39.i.i = icmp ne i32 %i.dg, 0
  %.not40.i.i = icmp ne i32 %i.dc, 49
  %or.cond47.i.i = and i1 %.not40.i.i, %.not39.i.i
  br i1 %or.cond47.i.i, label %.critedge3.i.i, label %EXPR.exit.thread65

.critedge3.i.i:                                   ; preds = %.preheader.i.i
  %i.dh = add nsw i32 %i.cz, 1
  store i32 %i.dh, ptr %i.c, align 8, !tbaa !186
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !212 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %EXPR.exit, label %bb.m

bb.m:                                             ; preds = %.critedge3.i.i
  %i.dl = tail call ptr %i.dj(ptr noundef nonnull %0) #12, !inline_history !216 ; 2 uses
  %.not41.i.i = icmp eq ptr %i.dl, null
  br i1 %.not41.i.i, label %.preheader.i.i, label %EXPR.exit.thread, !llvm.loop !2

EXPR.exit:                                        ; preds = %.critedge3.i.i, %bb.k
  %.lcssa53.sink.i.i = phi i64 [ %i.cs, %bb.k ], [ %i.dd, %.critedge3.i.i ]
  %.str.7.sink.i.i = phi ptr [ @.str.6, %bb.k ], [ @.str.7, %.critedge3.i.i ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %.lcssa53.sink.i.i
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !67
  %i.do = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull %.str.7.sink.i.i, ptr noundef %i.dn), !inline_history !216 ; 2 uses
  %.not56 = icmp eq ptr %i.do, null
  br i1 %.not56, label %EXPR.exit.EXPR.exit.thread65_crit_edge, label %EXPR.exit.thread

EXPR.exit.EXPR.exit.thread65_crit_edge:           ; preds = %EXPR.exit
  %.pre112 = load ptr, ptr %i.a, align 8, !tbaa !188 ; 2 uses
  %.pre113 = load i32, ptr %i.c, align 8, !tbaa !186 ; 2 uses
  %.phi.trans.insert114 = sext i32 %.pre113 to i64 ; 2 uses
  %.phi.trans.insert115 = getelementptr inbounds [48 x i8], ptr %.pre112, i64 %.phi.trans.insert114
end_hunk_0
begin_hunk_1_@consume_comp:bb.a
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !118
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.k
  %i.bx = phi i32 [ %i.bv, %bb.k ], [ %i.bq, %bb.j ] ; 4 uses
  %i.by = getelementptr [112 x i8], ptr %i.bi, i64 %i.bl ; 3 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -64    ; 3 uses
  %i.ca = sext i32 %i.bx to i64
  %i.cb = getelementptr [8 x i8], ptr %i.bo, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !107
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !117
  %i.cf = sext i32 %i.bx to i64
  %i.cg = getelementptr [8 x i8], ptr %i.bo, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 -16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !107
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !116
  %i.ck = sext i32 %i.bx to i64
  %i.cl = getelementptr [8 x i8], ptr %i.bo, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !107
  %i.co = add nsw i32 %i.bx, -3                   ; 3 uses
  store i32 %i.co, ptr %i.bz, align 8, !tbaa !195
  store ptr %i.cn, ptr %i.bf, align 8, !tbaa !115
  %i.cp = getelementptr i8, ptr %i.by, i64 -60
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !220
  %i.cr = icmp eq i32 %i.co, %i.cq
  br i1 %i.cr, label %bb.l, label %Ctx__s_push.exit

bb.l:                                             ; preds = %._crit_edge
  %i.cs = getelementptr i8, ptr %i.by, i64 -72    ; 3 uses
  %i.ct = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.cs) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.cs, i32 noundef %i.ct) #12
  %.pre.i = load i32, ptr %i.bz, align 8, !tbaa !195
  %.pre68 = load ptr, ptr %i.cs, align 8, !tbaa !194
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %._crit_edge, %bb.l
  %i.cu = phi ptr [ %.pre68, %bb.l ], [ %i.bo, %._crit_edge ]
  %i.cv = phi i32 [ %.pre.i, %bb.l ], [ %i.co, %._crit_edge ] ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cw
  store ptr %i.bb, ptr %i.cx, align 8, !tbaa !107
  %i.cy = add nsw i32 %i.cv, 1
  store i32 %i.cy, ptr %i.bz, align 8, !tbaa !195
  br label %parse_expression.exit.thread

parse_expression.exit.thread:                     ; preds = %bb.g, %bb.f, %bb.i, %parse_expression.exit, %bb.a, %Ctx__s_push.exit, %bb.d
  %.036 = phi ptr [ %i.v, %bb.d ], [ %i.i, %bb.a ], [ %i.av, %parse_expression.exit ], [ null, %Ctx__s_push.exit ], [ %i.ba, %bb.i ], [ %i.ae, %bb.f ], [ %i.as, %bb.g ]
  ret ptr %.036
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @EXPR_VARS(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !188
  %.pre67 = load i32, ptr %i.b, align 8, !tbaa !186
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.e = phi i32 [ %i.bd, %bb.f ], [ %.pre67, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %i.at, %bb.f ], [ %.pre, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.a ] ; 6 uses
  %.036 = phi i32 [ %i.az, %bb.f ], [ 0, %bb.a ]  ; 3 uses
  %i.g = sext i32 %i.e to i64
  %i.h = getelementptr inbounds [48 x i8], ptr %i.f, i64 %i.g ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !191  ; 2 uses
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %bb.c, label %split

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %i.e, 1                      ; 2 uses
  store i32 %i.k, ptr %i.b, align 8, !tbaa !186
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre72 = load i32, ptr %i.f, align 8, !tbaa !191
  br label %split

split:                                            ; preds = %bb.b, %._crit_edge
  %i.l = phi i32 [ %.pre72, %._crit_edge ], [ %i.i, %bb.b ]
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @TokenSymbols, i64 24), align 8, !tbaa !67
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @TokenSymbols, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.q = tail call ptr (ptr, ptr, ...) @SyntaxError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4, ptr noundef %i.m, ptr noundef %i.p)
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !214
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !215
  %i.v = tail call ptr @py_namev(ptr %i.s, i32 %i.u) #12
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !188  ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !186  ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr [48 x i8], ptr %i.w, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !190
  %.val = load i32, ptr %i.c, align 8, !tbaa !193 ; 2 uses
  %i.ac = icmp slt i32 %.val, 2
  %i.ad = zext i1 %i.ac to i32
  %i.ae = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 5 uses
  store ptr @NameExpr__new.Vt, ptr %i.ae, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.ab, ptr %i.af, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.v, ptr %i.ag, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i32 %i.ad, ptr %i.ah, align 8, !tbaa !22
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !192
  %i.aj = sext i32 %.val to i64
  %i.ak = getelementptr [112 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 -72    ; 3 uses
  %i.am = getelementptr i8, ptr %i.ak, i64 -64    ; 3 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !195 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.ak, i64 -60
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !220
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %bb.e, label %Ctx__s_push.exit

bb.e:                                             ; preds = %bb.d
  %i.ar = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.al) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.al, i32 noundef %i.ar) #12
  %.pre.i = load i32, ptr %i.am, align 8, !tbaa !195
  %.pre68 = load ptr, ptr %i.a, align 8, !tbaa !188
  %.pre69 = load i32, ptr %i.b, align 8, !tbaa !186 ; 2 uses
  %.pre73 = sext i32 %.pre69 to i64
  br label %Ctx__s_push.exit

Ctx__s_push.exit:                                 ; preds = %bb.d, %bb.e
  %.pre-phi = phi i64 [ %i.y, %bb.d ], [ %.pre73, %bb.e ]
  %i.as = phi i32 [ %i.x, %bb.d ], [ %.pre69, %bb.e ] ; 2 uses
  %i.at = phi ptr [ %i.w, %bb.d ], [ %.pre68, %bb.e ] ; 3 uses
  %i.au = phi i32 [ %i.an, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !194
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.aw
  store ptr %i.ae, ptr %i.ax, align 8, !tbaa !107
  %i.ay = add nsw i32 %i.au, 1
  store i32 %i.ay, ptr %i.am, align 8, !tbaa !195
  %i.az = add nuw nsw i32 %.036, 1                ; 3 uses
  %i.ba = getelementptr inbounds [48 x i8], ptr %i.at, i64 %.pre-phi
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !191
  %i.bc = icmp eq i32 %i.bb, 48
  br i1 %i.bc, label %bb.f, label %.critedge

bb.f:                                             ; preds = %Ctx__s_push.exit
  %i.bd = add nsw i32 %i.as, 1                    ; 3 uses
  store i32 %i.bd, ptr %i.b, align 8, !tbaa !186
  %i.be = icmp eq i32 %i.bd, 0
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br i1 %i.be, label %.critedge, label %bb.b, !llvm.loop !315

.critedge:                                        ; preds = %Ctx__s_push.exit, %bb.f
  %i.bf = phi i32 [ %i.as, %Ctx__s_push.exit ], [ 0, %bb.f ]
  %.not39 = icmp eq i32 %.036, 0
  br i1 %.not39, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [48 x i8], ptr %i.at, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -28
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !190
  %i.bk = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #13 ; 6 uses
  store ptr @TupleExpr__new.TupleExprVt, ptr %i.bk, align 8, !tbaa !112
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %i.bj, ptr %i.bl, align 8, !tbaa !110
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 28
  store i32 38, ptr %i.bm, align 4, !tbaa !113
  %i.bn = zext nneg i32 %i.az to i64              ; 3 uses
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = tail call noalias ptr @malloc(i64 noundef %i.bo) #13 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 %i.az, ptr %i.br, align 8, !tbaa !105
  %i.bs = load ptr, ptr %i.d, align 8, !tbaa !192
  %i.bt = load i32, ptr %i.c, align 8, !tbaa !193
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [112 x i8], ptr %i.bs, i64 %i.bu ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -72    ; 4 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !194 ; 4 uses
  %i.by = getelementptr i8, ptr %i.bv, i64 -64    ; 4 uses
  %.promoted = load i32, ptr %i.by, align 8, !tbaa !195
  %i.bz = sext i32 %.promoted to i64              ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.036, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.g
  %i.ca = ptrtoaddr ptr %i.bx to i64
  %i.cb = ptrtoaddr ptr %i.bp to i64
  %i.cc = shl nsw i64 %i.bz, 3
  %1 = add i64 %i.cc, %i.ca
  %2 = shl i64 %indvars.iv, 3
  %i.cd = add i64 %2, %i.cb
  %reass.sub = sub i64 %1, %i.cd
  %3 = add i64 %reass.sub, -9
  %diff.check = icmp ult i64 %3, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bn, 2147483644              ; 4 uses
  %i.ce = sub nsw i64 %i.bz, %n.vec               ; 2 uses
  %i.cf = sub i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cg = sub i64 %i.bz, %index
  %i.ch = sub i64 %indvars.iv, %index
  %i.ci = getelementptr [8 x i8], ptr %i.bx, i64 %i.cg ; 2 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 -16
  %i.ck = getelementptr i8, ptr %i.ci, i64 -32
  %wide.load = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !107
  %wide.load99 = load <2 x ptr>, ptr %i.ck, align 8, !tbaa !107
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ch ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -8
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 -24
  store <2 x ptr> %wide.load, ptr %i.cm, align 8, !tbaa !107
  store <2 x ptr> %wide.load99, ptr %i.cn, align 8, !tbaa !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !316

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bn
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.g, %middle.block
  %indvars.iv62.ph = phi i64 [ %i.bz, %vector.memcheck ], [ %i.bz, %bb.g ], [ %i.ce, %middle.block ]
  %indvars.iv60.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %bb.g ], [ %i.cf, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next63.lcssa = phi i64 [ %i.ce, %middle.block ], [ %indvars.iv.next63, %scalar.ph ]
  %i.cp = trunc nsw i64 %indvars.iv.next63.lcssa to i32 ; 3 uses
  store i32 %i.cp, ptr %i.by, align 8, !tbaa !195
  %i.cq = getelementptr i8, ptr %i.bv, i64 -60
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !220
  %i.cs = icmp eq i32 %i.cr, %i.cp
  br i1 %i.cs, label %bb.h, label %Ctx__s_push.exit41

bb.h:                                             ; preds = %.loopexit
  %i.ct = tail call i32 @c11_vector__nextcap(ptr noundef nonnull %i.bw) #12
  tail call void @c11_vector__reserve(ptr noundef nonnull %i.bw, i32 noundef %i.ct) #12
  %.pre.i40 = load i32, ptr %i.by, align 8, !tbaa !195
  %.pre70 = load ptr, ptr %i.bw, align 8, !tbaa !194
  br label %Ctx__s_push.exit41

Ctx__s_push.exit41:                               ; preds = %.loopexit, %bb.h
  %i.cu = phi ptr [ %.pre70, %bb.h ], [ %i.bx, %.loopexit ]
  %i.cv = phi i32 [ %.pre.i40, %bb.h ], [ %i.cp, %.loopexit ] ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cw
  store ptr %i.bk, ptr %i.cx, align 8, !tbaa !107
  %i.cy = add nsw i32 %i.cv, 1
  store i32 %i.cy, ptr %i.by, align 8, !tbaa !195
  br label %bb.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %scalar.ph ], [ %indvars.iv62.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %scalar.ph ], [ %indvars.iv60.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cz = getelementptr [8 x i8], ptr %i.bx, i64 %indvars.iv62
  %i.da = getelementptr i8, ptr %i.cz, i64 -8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !107
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, -1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv60
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !107
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, -1
  %i.dd = icmp sgt i64 %indvars.iv60, 0
  br i1 %i.dd, label %scalar.ph, label %.loopexit, !llvm.loop !317

bb.i:                                             ; preds = %.critedge, %Ctx__s_push.exit41, %split
  %.035 = phi ptr [ %i.q, %split ], [ null, %Ctx__s_push.exit41 ], [ null, %.critedge ]
  ret ptr %.035
}

; Function Attrs: nounwind uwtable
define internal void @DictItemExpr__emit_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  tail call void %i.d(ptr noundef nonnull %i.b, ptr noundef %1) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !223  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48
  tail call void %i.h(ptr noundef nonnull %i.f, ptr noundef %1) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @DictItemExpr__dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.e(ptr noundef nonnull %i.b) #12
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !224
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  tail call void @free(ptr noundef %i.f) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !223  ; 4 uses
  %.not15 = icmp eq ptr %i.h, null
  br i1 %.not15, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52   ; 2 uses
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.k(ptr noundef nonnull %i.h) #12
  %.pre17 = load ptr, ptr %i.g, align 8, !tbaa !223
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi ptr [ %.pre17, %bb.g ], [ %i.h, %bb.f ]
  tail call void @free(ptr noundef %i.l) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NamedExpr__emit_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  tail call void %i.d(ptr noundef nonnull %i.b, ptr noundef %1) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !227
  %i.g = tail call fastcc i32 @Ctx__emit_(ptr noundef %1, i32 noundef 2, i16 noundef zeroext 0, i32 noundef %i.f) ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !229  ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call zeroext i1 %i.l(ptr noundef nonnull %i.i, ptr noundef %1) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @NamedExpr__dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !229  ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %.not14 = icmp eq ptr %i.e, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.e(ptr noundef nonnull %i.b) #12
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !229
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  tail call void @free(ptr noundef %i.f) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
end_hunk_1
