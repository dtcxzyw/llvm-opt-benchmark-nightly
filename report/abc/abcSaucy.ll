Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcSaucy?download=true
inline.NumInlined: 426
inline.NumDeleted: 115
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 36
begin_hunk_0_@select_smallest_max_connected_cell:bb.a
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.by
  store i32 0, ptr %i.bz, align 4, !tbaa !44
  %i.ca = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv85
  %i.cb = getelementptr i8, ptr %i.ca, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !44
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cd
  store i32 0, ptr %i.ce, align 4, !tbaa !44
  %indvars.iv.next86.3 = add nsw i64 %indvars.iv85, 4 ; 2 uses
  %exitcond89.not.3 = icmp eq i64 %indvars.iv.next86.3, %wide.trip.count88
  br i1 %exitcond89.not.3, label %.loopexit, label %._crit_edge.new, !llvm.loop !359

.loopexit:                                        ; preds = %.prol.loopexit, %._crit_edge.new, %._crit_edge.thread, %bb.c
  %.261 = phi i32 [ %.05974, %bb.c ], [ %.160100, %._crit_edge.thread ], [ %.160, %._crit_edge.new ], [ %.160, %.prol.loopexit ] ; 2 uses
  %.256 = phi i32 [ %.05476, %bb.c ], [ %.155101, %._crit_edge.thread ], [ %.155, %._crit_edge.new ], [ %.155, %.prol.loopexit ]
  %.2 = phi i32 [ %.05277, %bb.c ], [ %.153102, %._crit_edge.thread ], [ %.153, %._crit_edge.new ], [ %.153, %.prol.loopexit ]
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !44 ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %2
  br i1 %i.ch, label %bb.c, label %._crit_edge79, !llvm.loop !360

._crit_edge79:                                    ; preds = %.loopexit, %.preheader
  %.059.lcssa = phi i32 [ -1, %.preheader ], [ %.261, %.loopexit ]
  %.not63 = icmp eq ptr %i.c, null
  br i1 %.not63, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge79
  tail call void @free(ptr noundef nonnull %i.c) #26
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge79, %bb.k
  ret i32 %.059.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @descend(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !44
  %i.f = add nsw i32 %i.e, %2                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !146
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.i, align 8, !tbaa !146
  %.val = load ptr, ptr %1, align 8, !tbaa !102   ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 8
  %.val39 = load ptr, ptr %i.l, align 8, !tbaa !103 ; 2 uses
  %i.m = sext i32 %3 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44   ; 2 uses
  %i.p = sext i32 %i.f to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44   ; 2 uses
  store i32 %i.r, ptr %i.n, align 4, !tbaa !44
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.s
  store i32 %3, ptr %i.t, align 4, !tbaa !44
  store i32 %i.o, ptr %i.q, align 4, !tbaa !44
  %i.u = sext i32 %i.o to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.val39, i64 %i.u
  store i32 %i.f, ptr %i.v, align 4, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.x = load i32, ptr %i.w, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !147
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !74
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ac
  store i32 %i.x, ptr %i.ad, align 4, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !76
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !148
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !74
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.aj
  store i32 %i.af, ptr %i.ak, align 4, !tbaa !44
  %i.al = load i32, ptr %i.aa, align 8, !tbaa !74
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !74
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !118
  %i.ap = tail call i32 %i.ao(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.f) #26 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.at = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !121
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !121
  %i.au = tail call fastcc range(i32 0, 2) i32 @refine(ptr noundef %0, ptr noundef nonnull %1)
  %.not = icmp eq i32 %i.au, 0
  br i1 %.not, label %double_check_OPP_isomorphism.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !143
  %.not32 = icmp eq i32 %i.aw, 0
  br i1 %.not32, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = tail call fastcc i32 @check_OPP_for_Boolean_matching(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not33 = icmp eq i32 %i.ax, 0
  br i1 %.not33, label %double_check_OPP_isomorphism.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.pr = load i32, ptr %i.av, align 8, !tbaa !143
  %.not34 = icmp eq i32 %.pr, 0
  br i1 %.not34, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = tail call fastcc i32 @check_OPP_for_Boolean_matching(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %.not35 = icmp eq i32 %i.ay, 0
  br i1 %.not35, label %double_check_OPP_isomorphism.exit, label %.thread

.thread:                                          ; preds = %bb.b, %bb.e, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !287
  %.not36 = icmp eq i32 %i.ba, 0
  br i1 %.not36, label %check_OPP_only_has_swaps.exit.thread, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bc = icmp eq ptr %1, %i.bb
  br i1 %i.bc, label %check_OPP_only_has_swaps.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 2 uses
  %i.be = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 4 uses
  store i32 0, ptr %i.bf, align 4, !tbaa !54
  store i32 16, ptr %i.be, align 8, !tbaa !258
  %i.bg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 4 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !58
  %i.bi = load i32, ptr %0, align 8, !tbaa !41
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.preheader.lr.ph.i, label %._crit_edge84.i

.preheader.lr.ph.i:                               ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.pre.i = load ptr, ptr %i.bk, align 8, !tbaa !101
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge82.i, %.preheader.lr.ph.i
  %.val45107.i = phi ptr [ %i.bd, %.preheader.lr.ph.i ], [ %.val45.i, %._crit_edge82.i ] ; 2 uses
  %.promoted76.i = phi ptr [ %i.bg, %.preheader.lr.ph.i ], [ %.val43.i, %._crit_edge82.i ]
  %.promoted73.i = phi i32 [ 16, %.preheader.lr.ph.i ], [ %.promoted73104.i, %._crit_edge82.i ] ; 2 uses
  %.promoted65.i = phi i32 [ 16, %.preheader.lr.ph.i ], [ %.promoted65101.i, %._crit_edge82.i ] ; 2 uses
  %i.bo = phi ptr [ %.pre.i, %.preheader.lr.ph.i ], [ %i.dq, %._crit_edge82.i ]
  %.083.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.du, %._crit_edge82.i ] ; 3 uses
  %i.bp = sext i32 %.083.i to i64                 ; 4 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !44
  %.not62.i = icmp slt i32 %i.br, 0
  br i1 %.not62.i, label %bb.x, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %Vec_IntPush.exit53.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %Vec_IntPush.exit53.i ], [ %i.bp, %.preheader.i ] ; 4 uses
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %Vec_IntPush.exit53.i ], [ 0, %.preheader.i ] ; 10 uses
  %storemerge6077.i = phi ptr [ %storemerge6078.i, %Vec_IntPush.exit53.i ], [ %.promoted76.i, %.preheader.i ] ; 6 uses
  %spec.select.sink.i5075.i = phi i32 [ %spec.select.sink.i5074.i, %Vec_IntPush.exit53.i ], [ %.promoted73.i, %.preheader.i ] ; 4 uses
  %storemerge69.i = phi ptr [ %storemerge70.i, %Vec_IntPush.exit53.i ], [ %.val45107.i, %.preheader.i ] ; 6 uses
  %spec.select.sink.i67.i = phi i32 [ %spec.select.sink.i66.i, %Vec_IntPush.exit53.i ], [ %.promoted65.i, %.preheader.i ] ; 4 uses
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !134
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !129
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv90.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !44
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !44
  %i.bz = trunc nsw i64 %indvars.iv88.i to i32    ; 2 uses
  %i.ca = icmp eq i32 %spec.select.sink.i67.i, %i.bz
  br i1 %i.ca, label %bb.h, label %Vec_IntPush.exit.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.cb = icmp samesign ult i64 %indvars.iv88.i, 16
  br i1 %i.cb, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.not9.i.i.i = icmp eq ptr %storemerge69.i, null
  br i1 %.not9.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge69.i, i64 noundef 64) #30
  br label %Vec_IntPush.exit.i

bb.k:                                             ; preds = %bb.i
  %i.cd = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit.i

bb.l:                                             ; preds = %bb.h
  %i.ce = icmp samesign ult i64 %indvars.iv88.i, 1073741823
  %i.cf = shl nuw nsw i32 %spec.select.sink.i67.i, 1
  %spec.select.i.i = select i1 %i.ce, i32 %i.cf, i32 2147483647 ; 4 uses
  %4 = zext nneg i32 %spec.select.i.i to i64
  %.not.i9.i.i = icmp samesign ult i64 %indvars.iv88.i, %4
  br i1 %.not.i9.i.i, label %bb.m, label %Vec_IntPush.exit.i

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i.i = icmp eq ptr %storemerge69.i, null
  %i.cg = zext nneg i32 %spec.select.i.i to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ci = tail call ptr @realloc(ptr noundef nonnull %storemerge69.i, i64 noundef %i.ch) #30
  br label %Vec_IntPush.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cj = tail call noalias ptr @malloc(i64 noundef %i.ch) #28
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %.lr.ph.i
  %storemerge70.i = phi ptr [ %storemerge69.i, %.lr.ph.i ], [ %storemerge69.i, %bb.l ], [ %i.cd, %bb.k ], [ %i.cc, %bb.j ], [ %i.ci, %bb.n ], [ %i.cj, %bb.o ] ; 3 uses
  %spec.select.sink.i66.i = phi i32 [ %spec.select.sink.i67.i, %.lr.ph.i ], [ %spec.select.sink.i67.i, %bb.l ], [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i.i, %bb.n ], [ %spec.select.i.i, %bb.o ] ; 2 uses
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %storemerge70.i, i64 %indvars.iv88.i
  store i32 %i.by, ptr %i.ck, align 4, !tbaa !44
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !133
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !123
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv90.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !44
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !44
  %i.cs = icmp eq i32 %spec.select.sink.i5075.i, %i.bz
  br i1 %i.cs, label %bb.p, label %Vec_IntPush.exit53.i

bb.p:                                             ; preds = %Vec_IntPush.exit.i
  %i.ct = icmp samesign ult i64 %indvars.iv88.i, 16
  br i1 %i.ct, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %.not9.i.i51.i = icmp eq ptr %storemerge6077.i, null
  br i1 %.not9.i.i51.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge6077.i, i64 noundef 64) #30
  br label %Vec_IntPush.exit53.i

bb.s:                                             ; preds = %bb.q
  %i.cv = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #28
  br label %Vec_IntPush.exit53.i

bb.t:                                             ; preds = %bb.p
  %i.cw = icmp samesign ult i64 %indvars.iv88.i, 1073741823
  %i.cx = shl nuw nsw i32 %spec.select.sink.i5075.i, 1
  %spec.select.i46.i = select i1 %i.cw, i32 %i.cx, i32 2147483647 ; 4 uses
  %5 = zext nneg i32 %spec.select.i46.i to i64
  %.not.i9.i47.i = icmp samesign ult i64 %indvars.iv88.i, %5
  br i1 %.not.i9.i47.i, label %bb.u, label %Vec_IntPush.exit53.i

bb.u:                                             ; preds = %bb.t
  %.not9.i10.i48.i = icmp eq ptr %storemerge6077.i, null
  %i.cy = zext nneg i32 %spec.select.i46.i to i64
  %i.cz = shl nuw nsw i64 %i.cy, 2                ; 2 uses
  br i1 %.not9.i10.i48.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = tail call ptr @realloc(ptr noundef nonnull %storemerge6077.i, i64 noundef %i.cz) #30
  br label %Vec_IntPush.exit53.i

bb.w:                                             ; preds = %bb.u
  %i.db = tail call noalias ptr @malloc(i64 noundef %i.cz) #28
  br label %Vec_IntPush.exit53.i

Vec_IntPush.exit53.i:                             ; preds = %bb.w, %bb.v, %bb.t, %bb.s, %bb.r, %Vec_IntPush.exit.i
  %storemerge6078.i = phi ptr [ %storemerge6077.i, %Vec_IntPush.exit.i ], [ %storemerge6077.i, %bb.t ], [ %i.cv, %bb.s ], [ %i.cu, %bb.r ], [ %i.da, %bb.v ], [ %i.db, %bb.w ] ; 3 uses
  %spec.select.sink.i5074.i = phi i32 [ %spec.select.sink.i5075.i, %Vec_IntPush.exit.i ], [ %spec.select.sink.i5075.i, %bb.t ], [ 16, %bb.s ], [ 16, %bb.r ], [ %spec.select.i46.i, %bb.v ], [ %spec.select.i46.i, %bb.w ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %storemerge6078.i, i64 %indvars.iv88.i
  store i32 %i.cr, ptr %i.dc, align 4, !tbaa !44
  %indvars.iv.next91.i = add nsw i64 %indvars.iv90.i, 1
  %i.dd = load ptr, ptr %i.bk, align 8, !tbaa !101
  %i.de = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.bp
  %i.df = load i32, ptr %i.de, align 4, !tbaa !44
  %i.dg = add nsw i32 %i.df, %.083.i
  %i.dh = sext i32 %i.dg to i64
  %.not.not.i = icmp slt i64 %indvars.iv90.i, %i.dh
  br i1 %.not.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !361

._crit_edge.i:                                    ; preds = %Vec_IntPush.exit53.i
  %i.di = trunc nsw i64 %indvars.iv.next89.i to i32 ; 2 uses
  store i32 %i.di, ptr %i.bf, align 4, !tbaa !54
  store i32 %spec.select.sink.i5074.i, ptr %i.be, align 8
  store ptr %storemerge6078.i, ptr %i.bh, align 8
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge.i, %.preheader.i
  %.val45.i = phi ptr [ %storemerge70.i, %._crit_edge.i ], [ %.val45107.i, %.preheader.i ] ; 5 uses
  %.val44.i = phi i32 [ %i.di, %._crit_edge.i ], [ 0, %.preheader.i ] ; 3 uses
  %.promoted73104.i = phi i32 [ %spec.select.sink.i5074.i, %._crit_edge.i ], [ %.promoted73.i, %.preheader.i ]
  %.promoted65101.i = phi i32 [ %spec.select.sink.i66.i, %._crit_edge.i ], [ %.promoted65.i, %.preheader.i ]
  %i.dj = sext i32 %.val44.i to i64
  tail call void @qsort(ptr noundef %.val45.i, i64 noundef %i.dj, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompareUnsigned) #26
  %.val42.i = load i32, ptr %i.bf, align 4, !tbaa !54
  %.val43.i = load ptr, ptr %i.bh, align 8, !tbaa !58 ; 5 uses
  %i.dk = sext i32 %.val42.i to i64
  tail call void @qsort(ptr noundef %.val43.i, i64 noundef %i.dk, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompareUnsigned) #26
  %i.dl = icmp sgt i32 %.val44.i, 0
  br i1 %i.dl, label %.lr.ph81.preheader.i, label %._crit_edge82.i

.lr.ph81.preheader.i:                             ; preds = %bb.x
  %wide.trip.count.i = zext nneg i32 %.val44.i to i64
  br label %.lr.ph81.i

bb.y:                                             ; preds = %.lr.ph81.i
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next98.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge82.i, label %.lr.ph81.i, !llvm.loop !362

.lr.ph81.i:                                       ; preds = %bb.y, %.lr.ph81.preheader.i
  %indvars.iv97.i = phi i64 [ 0, %.lr.ph81.preheader.i ], [ %indvars.iv.next98.i, %bb.y ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.val45.i, i64 %indvars.iv97.i
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !44
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val43.i, i64 %indvars.iv97.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !44
  %.not39.i = icmp eq i32 %i.dn, %i.dp
  br i1 %.not39.i, label %bb.y, label %Vec_IntFree.exit55.i

Vec_IntFree.exit55.i:                             ; preds = %.lr.ph81.i
  tail call void @free(ptr noundef nonnull %.val45.i) #26
  tail call void @free(ptr noundef nonnull %.val43.i) #26
  tail call void @free(ptr noundef nonnull %i.be) #26
  br label %double_check_OPP_isomorphism.exit

._crit_edge82.i:                                  ; preds = %bb.y, %bb.x
  store i32 0, ptr %i.bf, align 4, !tbaa !54
  %i.dq = load ptr, ptr %i.bk, align 8, !tbaa !101 ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.bp
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !44
  %i.dt = add i32 %.083.i, 1
  %i.du = add i32 %i.dt, %i.ds                    ; 2 uses
  %i.dv = load i32, ptr %0, align 8, !tbaa !41
  %i.dw = icmp slt i32 %i.du, %i.dv
  br i1 %i.dw, label %.preheader.i, label %._crit_edge84.i, !llvm.loop !363

._crit_edge84.i:                                  ; preds = %._crit_edge82.i, %bb.g
  %i.dx = phi ptr [ %i.bg, %bb.g ], [ %.val43.i, %._crit_edge82.i ]
  %i.dy = phi ptr [ %i.bd, %bb.g ], [ %.val45.i, %._crit_edge82.i ] ; 2 uses
  %.not.i56.i = icmp eq ptr %i.dy, null
  br i1 %.not.i56.i, label %Vec_IntFree.exit57.i, label %bb.z

bb.z:                                             ; preds = %._crit_edge84.i
  tail call void @free(ptr noundef nonnull %i.dy) #26
  %.pre109.i = load ptr, ptr %i.bh, align 8, !tbaa !58
  br label %Vec_IntFree.exit57.i

Vec_IntFree.exit57.i:                             ; preds = %bb.z, %._crit_edge84.i
  %i.dz = phi ptr [ %i.dx, %._crit_edge84.i ], [ %.pre109.i, %bb.z ] ; 2 uses
  %.not.i58.i = icmp eq ptr %i.dz, null
  br i1 %.not.i58.i, label %check_OPP_only_has_swaps.exit.thread.sink.split, label %check_OPP_only_has_swaps.exit

check_OPP_only_has_swaps.exit:                    ; preds = %Vec_IntFree.exit57.i
  tail call void @free(ptr noundef nonnull %i.dz) #26
  br label %check_OPP_only_has_swaps.exit.thread.sink.split

check_OPP_only_has_swaps.exit.thread.sink.split:  ; preds = %Vec_IntFree.exit57.i, %check_OPP_only_has_swaps.exit
  tail call void @free(ptr noundef nonnull %i.be) #26
  br label %check_OPP_only_has_swaps.exit.thread

check_OPP_only_has_swaps.exit.thread:             ; preds = %check_OPP_only_has_swaps.exit.thread.sink.split, %bb.f, %.thread
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eb = icmp eq ptr %1, %i.ea
  br i1 %i.eb, label %double_check_OPP_isomorphism.exit, label %bb.aa

bb.aa:                                            ; preds = %check_OPP_only_has_swaps.exit.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !100
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !126
  %i.eg = load i32, ptr %i.aa, align 8, !tbaa !74
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr [4 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !44
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ep = sext i32 %i.ed to i64
  %i.eq = sext i32 %i.ek to i64                   ; 2 uses
  %indvars.iv.next151.i104 = add nsw i64 %i.ep, -1 ; 2 uses
  %i.er = icmp sgt i64 %indvars.iv.next151.i104, %i.eq
  br i1 %i.er, label %.lr.ph.preheader, label %double_check_OPP_isomorphism.exit

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.es = load ptr, ptr %1, align 8, !tbaa !102   ; 2 uses
  %i.et = load ptr, ptr %i.el, align 8, !tbaa !141
  %i.eu = load ptr, ptr %i.ar, align 8, !tbaa !190 ; 4 uses
  %i.ev = load ptr, ptr %i.ea, align 8, !tbaa !123 ; 2 uses
  br label %.lr.ph

bb.ab:                                            ; preds = %._crit_edge124.i
  %indvars.iv.next151.i = add nsw i64 %indvars.iv.next151.i105, -1 ; 2 uses
  %i.ew = icmp sgt i64 %indvars.iv.next151.i, %i.eq
  br i1 %i.ew, label %.lr.ph, label %double_check_OPP_isomorphism.exit, !llvm.loop !364

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ab
  %indvars.iv.next151.i105 = phi i64 [ %indvars.iv.next151.i, %bb.ab ], [ %indvars.iv.next151.i104, %.lr.ph.preheader ] ; 3 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.et, i64 %indvars.iv.next151.i105
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !44
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !44
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.eu, i64 %i.fc ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !44 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fd, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !44 ; 2 uses
  %i.fh = icmp slt i32 %i.fe, %i.fg
  br i1 %i.fh, label %.lr.ph.i41, label %._crit_edge.i40

.lr.ph.i41:                                       ; preds = %.lr.ph
  %i.fi = load ptr, ptr %i.em, align 8, !tbaa !111 ; 5 uses
  %i.fj = load ptr, ptr %i.as, align 8, !tbaa !191 ; 5 uses
  %i.fk = sext i32 %i.fe to i64                   ; 4 uses
  %wide.trip.count.i42 = sext i32 %i.fg to i64    ; 2 uses
  %i.fl = sub nsw i64 %wide.trip.count.i42, %i.fk ; 2 uses
  %xtraiter = and i64 %i.fl, 3                    ; 3 uses
  %i.fm = sub nsw i64 %i.fk, %wide.trip.count.i42
  %i.fn = icmp ugt i64 %i.fm, -4
  br i1 %i.fn, label %.epil.preheader, label %.lr.ph.i41.new

.lr.ph.i41.new:                                   ; preds = %.lr.ph.i41
  %unroll_iter = and i64 %i.fl, -4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i41.new
  %indvars.iv.i43 = phi i64 [ %i.fk, %.lr.ph.i41.new ], [ %indvars.iv.next.i44.3, %bb.ac ] ; 5 uses
  %.083101.i = phi i32 [ 0, %.lr.ph.i41.new ], [ %i.gs, %bb.ac ]
  %.087100.i = phi i32 [ 0, %.lr.ph.i41.new ], [ %i.gr, %bb.ac ]
  %niter = phi i64 [ 0, %.lr.ph.i41.new ], [ %niter.next.3, %bb.ac ]
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fj, i64 %indvars.iv.i43
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !44
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !44 ; 2 uses
  %i.ft = add nsw i32 %i.fs, %.087100.i
  %i.fu = xor i32 %i.fs, %.083101.i
  %i.fv = getelementptr [4 x i8], ptr %i.fj, i64 %indvars.iv.i43
  %i.fw = getelementptr i8, ptr %i.fv, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !44
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !44 ; 2 uses
  %i.gb = add nsw i32 %i.ga, %i.ft
  %i.gc = xor i32 %i.ga, %i.fu
  %i.gd = getelementptr [4 x i8], ptr %i.fj, i64 %indvars.iv.i43
  %i.ge = getelementptr i8, ptr %i.gd, i64 8
end_hunk_0
