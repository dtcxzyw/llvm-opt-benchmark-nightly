inline.NumInlined: 98
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@PDFText_Open:bb.a

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.e
  %i.e = load i8, ptr @g_buffer, align 16, !tbaa !30
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %PDFPage_FlushBuffer.exit.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.g = tail call i32 @fputs(ptr noundef nonnull @g_buffer, ptr noundef %0) ; 0 uses
  br label %PDFPage_FlushBuffer.exit.i

PDFPage_FlushBuffer.exit.i:                       ; preds = %bb.f, %._crit_edge.i.i
  %.b.i.pr = load i1, ptr @g_TJ_pending, align 4
  store i1 true, ptr @g_page_has_text, align 4
  br i1 %.b.i.pr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %PDFPage_FlushBuffer.exit.i
  store i1 false, ptr @g_TJ_pending, align 4
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %PDFPage_FlushBuffer.exit.i.thread, %bb.g, %PDFPage_FlushBuffer.exit.i
  %.b3.i = load i1, ptr @g_ET_pending, align 4
  br i1 %.b3.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i1 false, ptr @g_ET_pending, align 4
  br label %PDFText_OpenBT.exit

bb.j:                                             ; preds = %bb.h
  tail call void @PDFPage_Write(ptr noundef %0, ptr noundef nonnull @.str.76)
  store i1 true, ptr @g_valid_text_matrix, align 4
  br label %PDFText_OpenBT.exit

PDFText_OpenBT.exit:                              ; preds = %bb.i, %bb.j
  %.b.i3 = load i1, ptr @g_TJ_pending, align 4
  br i1 %.b.i3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %PDFText_OpenBT.exit
  store i1 false, ptr @g_TJ_pending, align 4
  br label %PDFText_OpenString.exit

bb.l:                                             ; preds = %PDFText_OpenBT.exit
  tail call void @PDFPage_Write(ptr noundef %0, ptr noundef nonnull @.str.79)
  br label %PDFText_OpenString.exit

PDFText_OpenString.exit:                          ; preds = %bb.l, %bb.k, %Assert.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PDFText_Kern(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = sub nsw i32 0, %1
  %i.c = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %i.b) #18 ; 0 uses
  call void @PDFPage_Write(ptr noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PDFText_Close(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @g_page_contents_obj_num, align 4, !tbaa !4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %Assert.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @no_fpos, align 8, !tbaa !8 ; 2 uses
  %i.c = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef %i.b, ptr noundef %i.b) #18 ; 0 uses
  br label %Assert.exit

Assert.exit:                                      ; preds = %bb.a, %bb.b
  store i1 true, ptr @g_TJ_pending, align 4
  store i1 true, ptr @g_ET_pending, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PDFPage_Scale(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = fpext float %1 to double
  %i.c = fpext float %2 to double
  %i.d = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.b, double noundef %i.c) #18 ; 0 uses
  call void @PDFPage_Write(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.e = load float, ptr @g_page_h_scale_factor, align 4, !tbaa !31
  %i.f = fmul float %1, %i.e
  store float %i.f, ptr @g_page_h_scale_factor, align 4, !tbaa !31
  %i.g = load float, ptr @g_page_v_scale_factor, align 4, !tbaa !31
  %i.h = fmul float %2, %i.g
  store float %i.h, ptr @g_page_v_scale_factor, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PDFPage_Rotate(ptr nofree noundef captures(none) %0, float noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  %i.b = fpext float %1 to double                 ; 2 uses
  %i.c = tail call double @cos(double noundef %i.b) #18, !tbaa !4
  %i.d = fptrunc double %i.c to float
  %i.e = tail call double @sin(double noundef %i.b) #18, !tbaa !4
  %i.f = fptrunc double %i.e to float             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.g = fpext float %i.d to double               ; 2 uses
  %i.h = fpext float %i.f to double
  %i.i = fneg float %i.f
  %i.j = fpext float %i.i to double
  %i.k = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.g, double noundef %i.h, double noundef %i.j, double noundef %i.g) #18 ; 0 uses
  call void @PDFPage_Write(ptr noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local void @PDFPage_Translate(ptr nofree noundef captures(none) %0, float noundef %1, float noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = fpext float %1 to double
  %i.c = fpext float %2 to double
  %i.d = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %i.b, double noundef %i.c) #18 ; 0 uses
  call void @PDFPage_Write(ptr noundef %0, ptr noundef nonnull %i.a)
  %i.e = load i32, ptr @g_page_h_origin, align 4, !tbaa !4
  %i.f = sitofp i32 %i.e to float
  %i.g = fadd float %1, %i.f
  %i.h = fptosi float %i.g to i32
  store i32 %i.h, ptr @g_page_h_origin, align 4, !tbaa !4
  %i.i = load i32, ptr @g_page_v_origin, align 4, !tbaa !4
  %i.j = sitofp i32 %i.i to float
  %i.k = fadd float %2, %i.j
  %i.l = fptosi float %i.k to i32
  store i32 %i.l, ptr @g_page_v_origin, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @PDFPage_WriteGraphic(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.f = load i8, ptr %1, align 1, !tbaa !30
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr @g_expr_depth, align 4, !tbaa !4
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.i = call fastcc ptr @PDFPage_CollectExpr(ptr noundef nonnull %1, ptr noundef %i.b, ptr noundef %i.c)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !4
  %.not61 = icmp eq i32 %i.j, 0
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load float, ptr %i.c, align 4, !tbaa !31
  %i.l = fpext float %i.k to double
  %i.m = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %i.l) #18 ; 0 uses
  %i.n = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.idx = phi i64 [ %i.n, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.052 = phi ptr [ %i.i, %bb.e ], [ %1, %bb.b ]  ; 2 uses
  %.1.idx = phi i64 [ %.0.idx, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %i.o = load i32, ptr @g_link_depth, align 4, !tbaa !4
  %.not62 = icmp eq i32 %i.o, 0
  br i1 %.not62, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call fastcc ptr @PDFPage_CollectLink(ptr noundef %.052)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.153 = phi ptr [ %i.p, %bb.g ], [ %.052, %bb.f ] ; 2 uses
  %.2.ptr100 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1.idx ; 2 uses
  %i.q = load i8, ptr %.153, align 1, !tbaa !30
  %.not63101 = icmp eq i8 %i.q, 0
  br i1 %.not63101, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.an
  %.2.ptr104 = phi ptr [ %.2.ptr, %bb.an ], [ %.2.ptr100, %bb.h ] ; 7 uses
  %.2.idx103 = phi i64 [ %.4.idx, %bb.an ], [ %.1.idx, %bb.h ] ; 8 uses
  %.254102 = phi ptr [ %.5, %bb.an ], [ %.153, %bb.h ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.r = icmp sgt i64 %.2.idx103, 511
  br i1 %i.r, label %bb.i, label %Assert.exit

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr @no_fpos, align 8, !tbaa !8 ; 2 uses
  %i.t = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef %i.s, ptr noundef %i.s) #18 ; 0 uses
  br label %Assert.exit

Assert.exit:                                      ; preds = %.lr.ph, %bb.i
  %2 = load i8, ptr %.254102, align 1, !tbaa !30  ; 2 uses
  %i.u = icmp eq i8 %2, 95
  br i1 %i.u, label %bb.j, label %bb.am

bb.j:                                             ; preds = %Assert.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.254102, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !30
  %i.x = icmp eq i8 %i.w, 95
  br i1 %i.x, label %bb.k, label %bb.am

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.254102, i64 2 ; 40 uses
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = xor i32 2053731192, %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = xor i32 101, %i.ad
  %i.af = or i32 %i.aa, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %PDFKeyword_Find.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %i.y, align 1
  %i.ak = xor i32 2053731193, %i.aj
  %i.al = getelementptr i8, ptr %i.y, i64 4
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = xor i32 101, %i.an
  %i.ap = or i32 %i.ak, %i.ao
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %PDFKeyword_Find.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.y, align 1
  %i.au = xor i32 1918987640, %i.at
  %i.av = getelementptr i8, ptr %i.y, i64 4
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = xor i32 107, %i.ax
  %i.az = or i32 %i.au, %i.ay
  %i.ba = icmp ne i32 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %PDFKeyword_Find.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = load i32, ptr %i.y, align 1
  %i.be = xor i32 1918987641, %i.bd
  %i.bf = getelementptr i8, ptr %i.y, i64 4
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = zext i8 %i.bg to i32
  %i.bi = xor i32 107, %i.bh
  %i.bj = or i32 %i.be, %i.bi
  %i.bk = icmp ne i32 %i.bj, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %PDFKeyword_Find.exit, label %PDFKeyword_Find.exit.thread.preheader

PDFKeyword_Find.exit.thread.preheader:            ; preds = %bb.n
  %i.bn = load i64, ptr %i.y, align 1
  %i.bo = xor i64 8462109078513936748, %i.bn
  %i.bp = getelementptr i8, ptr %i.y, i64 6
  %i.bq = load i64, ptr %i.bp, align 1
  %i.br = xor i64 4340411646547752303, %i.bq
  %i.bs = or i64 %i.bo, %i.br
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %PDFKeyword_Find.exit81, label %PDFKeyword_Find.exit.thread.1

PDFKeyword_Find.exit:                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %indvars.iv.i.lcssa = phi i64 [ 0, %bb.k ], [ 1, %bb.l ], [ 2, %bb.m ], [ 3, %bb.n ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.254102, i64 7
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @g_graphics_vars, i64 %indvars.iv.i.lcssa
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.2.ptr104, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %i.by) #18 ; 0 uses
  %i.ca = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2.ptr104) #19
  %.2.add65 = add nuw nsw i64 %i.ca, %.2.idx103
  br label %bb.an

PDFKeyword_Find.exit.thread.1:                    ; preds = %PDFKeyword_Find.exit.thread.preheader
  %i.cb = load i128, ptr %i.y, align 1
  %i.cc = icmp ne i128 80066463372387984338505423107493095788, %i.cb
  %i.cd = zext i1 %i.cc to i32
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %PDFKeyword_Find.exit81, label %PDFKeyword_Find.exit.thread.2

PDFKeyword_Find.exit.thread.2:                    ; preds = %PDFKeyword_Find.exit.thread.1
  %i.cf = load i64, ptr %i.y, align 1
  %i.cg = xor i64 5283379181171665260, %i.cf
  %i.ch = getelementptr i8, ptr %i.y, i64 3
  %i.ci = load i64, ptr %i.ch, align 1
  %i.cj = xor i64 4340411526001549163, %i.ci
  %i.ck = or i64 %i.cg, %i.cj
  %i.cl = icmp ne i64 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %PDFKeyword_Find.exit81, label %PDFKeyword_Find.exit.thread.3

PDFKeyword_Find.exit.thread.3:                    ; preds = %PDFKeyword_Find.exit.thread.2
  %i.co = load i64, ptr %i.y, align 1
  %i.cp = xor i64 8241996746237831532, %i.co
  %i.cq = getelementptr i8, ptr %i.y, i64 6
  %i.cr = load i64, ptr %i.cq, align 1
  %i.cs = xor i64 4340411711005094497, %i.cr
  %i.ct = or i64 %i.cp, %i.cs
  %i.cu = icmp ne i64 %i.ct, 0
  %i.cv = zext i1 %i.cu to i32
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %PDFKeyword_Find.exit81, label %PDFKeyword_Find.exit.thread.4

PDFKeyword_Find.exit.thread.4:                    ; preds = %PDFKeyword_Find.exit.thread.3
  %i.cx = load i128, ptr %i.y, align 1
  %i.cy = xor i128 126870840899720350261268124680147855724, %i.cx
  %i.cz = getelementptr i8, ptr %i.y, i64 9
  %i.da = load i128, ptr %i.cz, align 1
  %i.db = xor i128 80066464011475729450069889891830821989, %i.da
  %i.dc = or i128 %i.cy, %i.db
  %i.dd = icmp ne i128 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %PDFKeyword_Find.exit81, label %PDFKeyword_Find.exit81.thread.preheader

PDFKeyword_Find.exit81.thread.preheader:          ; preds = %PDFKeyword_Find.exit.thread.4
  %i.dg = load i32, ptr %i.y, align 1
  %i.dh = xor i32 1752462689, %i.dg
  %i.di = getelementptr i8, ptr %i.y, i64 3
  %i.dj = load i32, ptr %i.di, align 1
  %i.dk = xor i32 1030909800, %i.dj
  %i.dl = or i32 %i.dh, %i.dk
  %i.dm = icmp ne i32 %i.dl, 0
  %i.dn = zext i1 %i.dm to i32
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %PDFKeyword_Find.exit87.jt0, label %PDFKeyword_Find.exit81.thread.1

PDFKeyword_Find.exit81:                           ; preds = %PDFKeyword_Find.exit.thread.4, %PDFKeyword_Find.exit.thread.3, %PDFKeyword_Find.exit.thread.2, %PDFKeyword_Find.exit.thread.1, %PDFKeyword_Find.exit.thread.preheader
  %i.dp = phi ptr [ @.str.113, %PDFKeyword_Find.exit.thread.preheader ], [ @.str.114, %PDFKeyword_Find.exit.thread.1 ], [ @.str.115, %PDFKeyword_Find.exit.thread.2 ], [ @.str.116, %PDFKeyword_Find.exit.thread.3 ], [ @.str.117, %PDFKeyword_Find.exit.thread.4 ]
  %indvars.iv.i76.lcssa = phi i32 [ 0, %PDFKeyword_Find.exit.thread.preheader ], [ 1, %PDFKeyword_Find.exit.thread.1 ], [ 2, %PDFKeyword_Find.exit.thread.2 ], [ 3, %PDFKeyword_Find.exit.thread.3 ], [ 4, %PDFKeyword_Find.exit.thread.4 ]
  %i.dq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dp) #19
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.dq
  %i.ds = tail call ptr @__ctype_b_loc() #20
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !47
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %PDFKeyword_Find.exit81
  %.355 = phi ptr [ %i.dr, %PDFKeyword_Find.exit81 ], [ %i.dz, %bb.o ] ; 3 uses
  %i.du = load i8, ptr %.355, align 1, !tbaa !30
  %i.dv = zext i8 %i.du to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dt, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !49
  %i.dy = and i16 %i.dx, 8192
  %.not75 = icmp eq i16 %i.dy, 0
  %i.dz = getelementptr inbounds nuw i8, ptr %.355, i64 1
  br i1 %.not75, label %bb.p, label %bb.o, !llvm.loop !51

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr @g_link_index, align 4, !tbaa !4
  %i.ea = load i32, ptr @g_link_depth, align 4, !tbaa !4
  %i.eb = add nsw i32 %i.ea, 1
  store i32 %i.eb, ptr @g_link_depth, align 4, !tbaa !4
  store i32 %indvars.iv.i76.lcssa, ptr @g_link_keyword, align 4, !tbaa !4
  %i.ec = call fastcc ptr @PDFPage_CollectLink(ptr noundef nonnull %.355)
  br label %bb.an

PDFKeyword_Find.exit81.thread.1:                  ; preds = %PDFKeyword_Find.exit81.thread.preheader
  %i.ed = load i32, ptr %i.y, align 1
  %i.ee = xor i32 1819568500, %i.ed
  %i.ef = getelementptr i8, ptr %i.y, i64 4
  %i.eg = load i16, ptr %i.ef, align 1
  %i.eh = zext i16 %i.eg to i32
  %i.ei = xor i32 15717, %i.eh
  %i.ej = or i32 %i.ee, %i.ei
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = zext i1 %i.ek to i32
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %PDFKeyword_Find.exit87.jt1, label %PDFKeyword_Find.exit81.thread.2

PDFKeyword_Find.exit81.thread.2:                  ; preds = %PDFKeyword_Find.exit81.thread.1
  %i.en = load i64, ptr %i.y, align 1
  %i.eo = icmp ne i64 4428273620839724403, %i.en
  %i.ep = zext i1 %i.eo to i32
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %PDFKeyword_Find.exit87.jt2, label %PDFKeyword_Find.exit81.thread.3

PDFKeyword_Find.exit81.thread.3:                  ; preds = %PDFKeyword_Find.exit81.thread.2
  %i.er = load i64, ptr %i.y, align 1
  %i.es = xor i64 8314896635104159083, %i.er
  %i.et = getelementptr i8, ptr %i.y, i64 8
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i64
  %i.ew = xor i64 61, %i.ev
  %i.ex = or i64 %i.es, %i.ew
  %i.ey = icmp ne i64 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %PDFKeyword_Find.exit87.jt3, label %PDFKeyword_Find.exit87.thread.preheader

end_hunk_0
begin_hunk_1_@PDFPage_WriteGraphic:bb.a

bb.w:                                             ; preds = %bb.v
  %i.ge = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.gf = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 48, i32 noundef 27, ptr noundef nonnull @.str.123, i32 noundef 2, ptr noundef %i.ge) #18 ; 0 uses
  br label %PDFPage_ProcessDocInfoKeyword.exit

bb.x:                                             ; preds = %bb.v
  %i.gg = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gc, ptr noundef nonnull readonly dereferenceable(1) %i.fp) #18 ; 0 uses
  br label %PDFPage_ProcessDocInfoKeyword.exit

bb.y:                                             ; preds = %PDFKeyword_Find.exit87.jt2
  call void @free(ptr noundef nonnull %i.fo) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %PDFKeyword_Find.exit87.jt2
  %i.gh = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fn) #19
  %i.gi = add i64 %i.gh, 1
  %i.gj = call noalias ptr @malloc(i64 noundef %i.gi) #17 ; 3 uses
  store ptr %i.gj, ptr @g_doc_subject, align 8, !tbaa !52
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gl = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.gm = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 47, i32 noundef 28, ptr noundef nonnull @.str.124, i32 noundef 2, ptr noundef %i.gl) #18 ; 0 uses
  br label %PDFPage_ProcessDocInfoKeyword.exit

bb.ab:                                            ; preds = %bb.z
  %i.gn = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gj, ptr noundef nonnull readonly dereferenceable(1) %i.fn) #18 ; 0 uses
  br label %PDFPage_ProcessDocInfoKeyword.exit

bb.ac:                                            ; preds = %PDFKeyword_Find.exit87.jt3
  call void @free(ptr noundef nonnull %i.fm) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %PDFKeyword_Find.exit87.jt3
  %i.go = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fl) #19
  %i.gp = add i64 %i.go, 1
  %i.gq = call noalias ptr @malloc(i64 noundef %i.gp) #17 ; 3 uses
  store ptr %i.gq, ptr @g_doc_keywords, align 8, !tbaa !52
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gs = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.gt = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 48, i32 noundef 29, ptr noundef nonnull @.str.125, i32 noundef 2, ptr noundef %i.gs) #18 ; 0 uses
  br label %PDFPage_ProcessDocInfoKeyword.exit

bb.af:                                            ; preds = %bb.ad
  %i.gu = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.gq, ptr noundef nonnull readonly dereferenceable(1) %i.fl) #18 ; 0 uses
  br label %PDFPage_ProcessDocInfoKeyword.exit

PDFPage_ProcessDocInfoKeyword.exit:               ; preds = %bb.s, %bb.t, %bb.w, %bb.x, %bb.aa, %bb.ab, %bb.ae, %bb.af
  %i.gv = phi ptr [ %i.fr, %bb.s ], [ %i.fr, %bb.t ], [ %i.fp, %bb.w ], [ %i.fp, %bb.x ], [ %i.fn, %bb.aa ], [ %i.fn, %bb.ab ], [ %i.fl, %bb.ae ], [ %i.fl, %bb.af ] ; 2 uses
  %i.gw = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.gv) #19
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw
  br label %bb.an

PDFKeyword_Find.exit87.thread.1:                  ; preds = %PDFKeyword_Find.exit87.thread.preheader
  %i.gy = load i16, ptr %i.y, align 1
  %i.gz = xor i16 30067, %i.gy
  %i.ha = getelementptr i8, ptr %i.y, i64 2
  %i.hb = load i8, ptr %i.ha, align 1
  %i.hc = zext i8 %i.hb to i16
  %i.hd = xor i16 98, %i.hc
  %i.he = or i16 %i.gz, %i.hd
  %i.hf = icmp ne i16 %i.he, 0
  %i.hg = zext i1 %i.hf to i32
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %PDFKeyword_Find.exit94, label %PDFKeyword_Find.exit87.thread.2

PDFKeyword_Find.exit87.thread.2:                  ; preds = %PDFKeyword_Find.exit87.thread.1
  %i.hi = load i16, ptr %i.y, align 1
  %i.hj = xor i16 30061, %i.hi
  %i.hk = getelementptr i8, ptr %i.y, i64 2
  %i.hl = load i8, ptr %i.hk, align 1
  %i.hm = zext i8 %i.hl to i16
  %i.hn = xor i16 108, %i.hm
  %i.ho = or i16 %i.hj, %i.hn
  %i.hp = icmp ne i16 %i.ho, 0
  %i.hq = zext i1 %i.hp to i32
  %i.hr = icmp eq i32 %i.hq, 0
  br i1 %i.hr, label %PDFKeyword_Find.exit94, label %PDFKeyword_Find.exit87.thread.3

PDFKeyword_Find.exit87.thread.3:                  ; preds = %PDFKeyword_Find.exit87.thread.2
  %i.hs = load i16, ptr %i.y, align 1
  %i.ht = xor i16 26980, %i.hs
  %i.hu = getelementptr i8, ptr %i.y, i64 2
  %i.hv = load i8, ptr %i.hu, align 1
  %i.hw = zext i8 %i.hv to i16
  %i.hx = xor i16 118, %i.hw
  %i.hy = or i16 %i.ht, %i.hx
  %i.hz = icmp ne i16 %i.hy, 0
  %i.ia = zext i1 %i.hz to i32
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %PDFKeyword_Find.exit94, label %PDFKeyword_Find.exit87.thread.4

PDFKeyword_Find.exit87.thread.4:                  ; preds = %PDFKeyword_Find.exit87.thread.3
  %i.ic = load i16, ptr %i.y, align 1
  %i.id = xor i16 26995, %i.ic
  %i.ie = getelementptr i8, ptr %i.y, i64 2
  %i.if = load i8, ptr %i.ie, align 1
  %i.ig = zext i8 %i.if to i16
  %i.ih = xor i16 110, %i.ig
  %i.ii = or i16 %i.id, %i.ih
  %i.ij = icmp ne i16 %i.ii, 0
  %i.ik = zext i1 %i.ij to i32
  %i.il = icmp eq i32 %i.ik, 0
  br i1 %i.il, label %PDFKeyword_Find.exit94, label %PDFKeyword_Find.exit87.thread.5

PDFKeyword_Find.exit87.thread.5:                  ; preds = %PDFKeyword_Find.exit87.thread.4
  %i.im = load i16, ptr %i.y, align 1
  %i.in = xor i16 28515, %i.im
  %i.io = getelementptr i8, ptr %i.y, i64 2
  %i.ip = load i8, ptr %i.io, align 1
  %i.iq = zext i8 %i.ip to i16
  %i.ir = xor i16 115, %i.iq
  %i.is = or i16 %i.in, %i.ir
  %i.it = icmp ne i16 %i.is, 0
  %i.iu = zext i1 %i.it to i32
  %i.iv = icmp eq i32 %i.iu, 0
  br i1 %i.iv, label %PDFKeyword_Find.exit94, label %PDFKeyword_Find.exit87.thread.6

PDFKeyword_Find.exit87.thread.6:                  ; preds = %PDFKeyword_Find.exit87.thread.5
  %i.iw = load i32, ptr %i.y, align 1
  %i.ix = icmp ne i32 1801677168, %i.iw
  %i.iy = zext i1 %i.ix to i32
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %PDFKeyword_Find.exit94, label %PDFKeyword_Find.exit94.thread

PDFKeyword_Find.exit94.thread:                    ; preds = %PDFKeyword_Find.exit87.thread.6
  %i.ja = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.jb = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 48, i32 noundef 37, ptr noundef nonnull @.str.20, i32 noundef 2, ptr noundef %i.ja) #18 ; 0 uses
  %.ptr67 = getelementptr inbounds nuw i8, ptr %.2.ptr104, i64 1
  store i8 95, ptr %.2.ptr104, align 1, !tbaa !30
  %.add = add nuw nsw i64 %.2.idx103, 2
  store i8 95, ptr %.ptr67, align 1, !tbaa !30
  br label %bb.an

PDFKeyword_Find.exit94:                           ; preds = %PDFKeyword_Find.exit87.thread.6, %PDFKeyword_Find.exit87.thread.5, %PDFKeyword_Find.exit87.thread.4, %PDFKeyword_Find.exit87.thread.3, %PDFKeyword_Find.exit87.thread.2, %PDFKeyword_Find.exit87.thread.1, %PDFKeyword_Find.exit87.thread.preheader
  %i.jc = phi ptr [ @.str.126, %PDFKeyword_Find.exit87.thread.preheader ], [ @.str.127, %PDFKeyword_Find.exit87.thread.1 ], [ @.str.128, %PDFKeyword_Find.exit87.thread.2 ], [ @.str.129, %PDFKeyword_Find.exit87.thread.3 ], [ @.str.130, %PDFKeyword_Find.exit87.thread.4 ], [ @.str.131, %PDFKeyword_Find.exit87.thread.5 ], [ @.str.132, %PDFKeyword_Find.exit87.thread.6 ] ; 2 uses
  %i.jd = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @g_expr, ptr noundef nonnull dereferenceable(1) %i.jc) #18 ; 0 uses
  %i.je = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jc) #19
  %i.jf = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.je
  %i.jg = tail call ptr @__ctype_b_loc() #20
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !47
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %PDFKeyword_Find.exit94
  %.456 = phi ptr [ %i.jf, %PDFKeyword_Find.exit94 ], [ %i.jn, %bb.ag ] ; 2 uses
  %i.ji = load i8, ptr %.456, align 1, !tbaa !30  ; 2 uses
  %i.jj = zext i8 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.jh, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !49
  %i.jm = and i16 %i.jl, 8192
  %.not72 = icmp eq i16 %i.jm, 0
  %i.jn = getelementptr inbounds nuw i8, ptr %.456, i64 1 ; 2 uses
  br i1 %.not72, label %bb.ah, label %bb.ag, !llvm.loop !53

bb.ah:                                            ; preds = %bb.ag
  %.not73 = icmp eq i8 %i.ji, 40
  br i1 %.not73, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jo = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.jp = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 48, i32 noundef 36, ptr noundef nonnull @.str.18, i32 noundef 1, ptr noundef %i.jo) #18 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) @g_expr)
  %endptr = getelementptr inbounds i8, ptr @g_expr, i64 %strlen
  store i16 40, ptr %endptr, align 1
  %i.jq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @g_expr) #19
  %i.jr = trunc i64 %i.jq to i32
  store i32 %i.jr, ptr @g_expr_index, align 4, !tbaa !4
  %i.js = load i32, ptr @g_expr_depth, align 4, !tbaa !4
  %i.jt = add nsw i32 %i.js, 1
  store i32 %i.jt, ptr @g_expr_depth, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.ju = call fastcc ptr @PDFPage_CollectExpr(ptr noundef nonnull %i.jn, ptr noundef %i.e, ptr noundef %i.d)
  %i.jv = load i32, ptr %i.e, align 4, !tbaa !4
  %.not74 = icmp eq i32 %i.jv, 0
  br i1 %.not74, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jw = load float, ptr %i.d, align 4, !tbaa !31
  %i.jx = fpext float %i.jw to double
  %i.jy = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %.2.ptr104, ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %i.jx) #18 ; 0 uses
  %i.jz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.2.ptr104) #19
  %.2.add66 = add nuw nsw i64 %i.jz, %.2.idx103
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.3.idx = phi i64 [ %.2.add66, %bb.ak ], [ %.2.idx103, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.an

bb.am:                                            ; preds = %bb.j, %Assert.exit
  %i.ka = getelementptr inbounds nuw i8, ptr %.254102, i64 1
  %.2.add = add nuw nsw i64 %.2.idx103, 1
  store i8 %2, ptr %.2.ptr104, align 1, !tbaa !30
  br label %bb.an

bb.an:                                            ; preds = %PDFKeyword_Find.exit, %PDFPage_ProcessDocInfoKeyword.exit, %PDFKeyword_Find.exit94.thread, %bb.al, %bb.p, %bb.am
  %.5 = phi ptr [ %i.bw, %PDFKeyword_Find.exit ], [ %i.ec, %bb.p ], [ %i.gx, %PDFPage_ProcessDocInfoKeyword.exit ], [ %i.ju, %bb.al ], [ %i.y, %PDFKeyword_Find.exit94.thread ], [ %i.ka, %bb.am ] ; 2 uses
  %.4.idx = phi i64 [ %.2.add65, %PDFKeyword_Find.exit ], [ %.2.idx103, %bb.p ], [ %.2.idx103, %PDFPage_ProcessDocInfoKeyword.exit ], [ %.3.idx, %bb.al ], [ %.add, %PDFKeyword_Find.exit94.thread ], [ %.2.add, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %.2.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.4.idx ; 2 uses
  %i.kb = load i8, ptr %.5, align 1, !tbaa !30
  %.not63 = icmp eq i8 %i.kb, 0
  br i1 %.not63, label %._crit_edge, label %.lr.ph, !llvm.loop !54

._crit_edge:                                      ; preds = %bb.an, %bb.h
  %.2.ptr.lcssa = phi ptr [ %.2.ptr100, %bb.h ], [ %.2.ptr, %bb.an ]
  store i8 0, ptr %.2.ptr.lcssa, align 1, !tbaa !30
  %.b.i = load i1, ptr @g_in_buffering_mode, align 4
  br i1 %.b.i, label %bb.ao, label %PDFPage_FlushBuffer.exit

bb.ao:                                            ; preds = %._crit_edge
  store i1 false, ptr @g_in_buffering_mode, align 4
  %.pr.i = load ptr, ptr @g_qsave_marking_stack, align 8, !tbaa !33 ; 2 uses
  %.not3.i = icmp eq ptr %.pr.i, null
  br i1 %.not3.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ao, %.lr.ph.i
  %i.kc = phi ptr [ %i.kd, %.lr.ph.i ], [ %.pr.i, %bb.ao ] ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !35 ; 3 uses
  store ptr %i.kd, ptr @g_qsave_marking_stack, align 8, !tbaa !33
  call void @free(ptr noundef nonnull %i.kc) #18
  %.not.i95 = icmp eq ptr %i.kd, null
  br i1 %.not.i95, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !37

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.ao
  %i.ke = load i8, ptr @g_buffer, align 16, !tbaa !30
  %i.kf = icmp eq i8 %i.ke, 0
  br i1 %i.kf, label %PDFPage_FlushBuffer.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge.i
  %i.kg = call i32 @fputs(ptr noundef nonnull @g_buffer, ptr noundef %0) ; 0 uses
  br label %PDFPage_FlushBuffer.exit

PDFPage_FlushBuffer.exit:                         ; preds = %._crit_edge, %._crit_edge.i, %bb.ap
  call void @PDFPage_Write(ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %PDFPage_FlushBuffer.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @PDFPage_CollectExpr(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1, ptr noundef nonnull %2) unnamed_addr #1 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !4
  %i.a = load i8, ptr %0, align 1, !tbaa !30      ; 2 uses
  %.not13 = icmp eq i8 %i.a, 0
  br i1 %.not13, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre16 = load i32, ptr @g_expr_index, align 4, !tbaa !4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %i.b = phi i32 [ %i.y, %bb.g ], [ %.pre16, %.lr.ph.preheader ] ; 2 uses
  %i.c = phi i8 [ %i.z, %bb.g ], [ %i.a, %.lr.ph.preheader ]
  %.0814 = phi ptr [ %i.i, %bb.g ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %i.d = icmp ugt i32 %i.b, 511
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.f = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 48, i32 noundef 34, ptr noundef nonnull @.str.80, i32 noundef 1, ptr noundef %i.e) #18 ; 0 uses
  %.pr = load i8, ptr %.0814, align 1, !tbaa !30
  %.pre17 = load i32, ptr @g_expr_index, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.g = phi i32 [ %.pre17, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.h = phi i8 [ %.pr, %bb.b ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0814, i64 1 ; 4 uses
  %i.j = add nsw i32 %i.g, 1                      ; 4 uses
  store i32 %i.j, ptr @g_expr_index, align 4, !tbaa !4
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds i8, ptr @g_expr, i64 %i.k
  store i8 %i.h, ptr %i.l, align 1, !tbaa !30
  switch i8 %i.h, label %bb.g [
    i8 40, label %bb.d
    i8 41, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr @g_expr_depth, align 4, !tbaa !4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr @g_expr_depth, align 4, !tbaa !4
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.o = load i32, ptr @g_expr_depth, align 4, !tbaa !4 ; 2 uses
  %.not11 = icmp eq i32 %i.o, 0
  br i1 %.not11, label %bb.f, label %Assert.exit

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @no_fpos, align 8, !tbaa !8 ; 2 uses
  %i.q = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef %i.p, ptr noundef %i.p) #18 ; 0 uses
  %.pre = load i32, ptr @g_expr_index, align 4, !tbaa !4
  %.pre18 = load i32, ptr @g_expr_depth, align 4, !tbaa !4
  br label %Assert.exit

Assert.exit:                                      ; preds = %bb.e, %bb.f
  %i.r = phi i32 [ %i.o, %bb.e ], [ %.pre18, %bb.f ]
  %i.s = phi i32 [ %i.j, %bb.e ], [ %.pre, %bb.f ] ; 2 uses
  %i.t = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.t, ptr @g_expr_depth, align 4, !tbaa !4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.thread, label %bb.g

.thread:                                          ; preds = %Assert.exit
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds i8, ptr @g_expr, i64 %i.v
  store i8 0, ptr %i.w, align 1, !tbaa !30
  %i.x = tail call fastcc ptr @PDFPage_EvalExpr(ptr noundef nonnull @g_expr, ptr noundef %2) ; 0 uses
  store i32 1, ptr %1, align 4, !tbaa !4
  br label %.loopexit

bb.g:                                             ; preds = %bb.d, %Assert.exit, %bb.c
  %i.y = phi i32 [ %i.j, %bb.d ], [ %i.s, %Assert.exit ], [ %i.j, %bb.c ]
  %i.z = load i8, ptr %i.i, align 1, !tbaa !30    ; 2 uses
  %.not = icmp eq i8 %i.z, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.g, %bb.a, %.thread
  %.1 = phi ptr [ %i.i, %.thread ], [ %0, %bb.a ], [ %i.i, %bb.g ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @PDFPage_CollectLink(ptr nofree noundef readonly captures(ret: address, provenance) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !30      ; 2 uses
  %.not19 = icmp eq i8 %i.a, 0
  br i1 %.not19, label %.loopexit15, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load i32, ptr @g_link_index, align 4, !tbaa !4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %i.b = phi i32 [ %i.hj, %bb.ab ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.c = phi i8 [ %i.hi, %bb.ab ], [ %i.a, %.lr.ph.preheader ]
  %.01020 = phi ptr [ %.2, %bb.ab ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %i.d = icmp ugt i32 %i.b, 511
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.e = load ptr, ptr @no_fpos, align 8, !tbaa !8
  %i.f = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 48, i32 noundef 35, ptr noundef nonnull @.str.94, i32 noundef 1, ptr noundef %i.e) #18 ; 0 uses
  %.pr = load i8, ptr %.01020, align 1, !tbaa !30
  %.pre24 = load i32, ptr @g_link_index, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.g = phi i32 [ %.pre24, %bb.b ], [ %i.b, %.lr.ph ] ; 3 uses
  %i.h = phi i8 [ %.pr, %bb.b ], [ %i.c, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.01020, i64 1 ; 6 uses
  %i.j = add nsw i32 %i.g, 1                      ; 5 uses
  store i32 %i.j, ptr @g_link_index, align 4, !tbaa !4
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds i8, ptr @g_link, i64 %i.k
  store i8 %i.h, ptr %i.l, align 1, !tbaa !30
  switch i8 %i.h, label %thread-pre-split [
    i8 60, label %bb.d
    i8 62, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.i, align 1, !tbaa !30    ; 2 uses
  %i.n = icmp eq i8 %i.m, 60
  br i1 %i.n, label %bb.e, label %bb.ab

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.01020, i64 2
  %i.p = add nsw i32 %i.g, 2                      ; 2 uses
  store i32 %i.p, ptr @g_link_index, align 4, !tbaa !4
  %i.q = sext i32 %i.j to i64
  %i.r = getelementptr inbounds i8, ptr @g_link, i64 %i.q
  store i8 60, ptr %i.r, align 1, !tbaa !30
  %i.s = load i32, ptr @g_link_depth, align 4, !tbaa !4
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr @g_link_depth, align 4, !tbaa !4
  br label %thread-pre-split

bb.f:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.i, align 1, !tbaa !30    ; 2 uses
  %i.v = icmp eq i8 %i.u, 62
  br i1 %i.v, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr @g_link_depth, align 4, !tbaa !4 ; 2 uses
  %.not14 = icmp eq i32 %i.w, 0
  br i1 %.not14, label %bb.h, label %Assert.exit

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr @no_fpos, align 8, !tbaa !8 ; 2 uses
  %i.y = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.75, i32 noundef 0, ptr noundef %i.x, ptr noundef %i.x) #18 ; 0 uses
  %.pre25 = load i32, ptr @g_link_depth, align 4, !tbaa !4
  br label %Assert.exit

Assert.exit:                                      ; preds = %bb.g, %bb.h
  %i.z = phi i32 [ %i.w, %bb.g ], [ %.pre25, %bb.h ]
end_hunk_1
