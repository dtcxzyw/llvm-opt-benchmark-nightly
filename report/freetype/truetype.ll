Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/truetype?download=true
inline.NumInlined: 310
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@tt_done_blend:bb.a
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.as) #21
  store ptr null, ptr %i.ak, align 8, !tbaa !375
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !376 ; 2 uses
  %.not80 = icmp eq ptr %i.au, null
  br i1 %.not80, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @tt_var_done_item_variation_store(ptr noundef nonnull %0, ptr noundef nonnull %i.au)
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !376 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !85  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !343
  tail call void @ft_mem_free(ptr noundef %i.aw, ptr noundef %i.ay) #21
  store ptr null, ptr %i.ax, align 8, !tbaa !343
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !344
  tail call void @ft_mem_free(ptr noundef %i.aw, ptr noundef %i.ba) #21
  store ptr null, ptr %i.az, align 8, !tbaa !344
  %i.bb = load ptr, ptr %i.at, align 8, !tbaa !376
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.bb) #21
  store ptr null, ptr %i.at, align 8, !tbaa !376
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !377 ; 2 uses
  %.not81 = icmp eq ptr %i.bd, null
  br i1 %.not81, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  tail call void @tt_var_done_item_variation_store(ptr noundef nonnull %0, ptr noundef nonnull %i.be)
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !377
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !380
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.bh) #21
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !377 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr null, ptr %i.bj, align 8, !tbaa !380
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.bi) #21
  store ptr null, ptr %i.bc, align 8, !tbaa !377
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !381
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.bl) #21
  store ptr null, ptr %i.bk, align 8, !tbaa !381
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !382
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.bn) #21
  store ptr null, ptr %i.bm, align 8, !tbaa !382
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !383
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.bp) #21
  store ptr null, ptr %i.bo, align 8, !tbaa !383
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef nonnull %i.d) #21
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tt_set_mm_blend(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i8 noundef zeroext range(i8 0, 2) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %struct.GX_GVar_Head_, align 8      ; 11 uses
  %i.c = alloca i32, align 4                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 0, ptr %i.c, align 4, !tbaa !152
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !144  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1201 ; 2 uses
  store i8 0, ptr %i.h, align 1, !tbaa !321
  %.not215 = icmp eq i32 %1, 0
  br i1 %.not215, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !707

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.j = load i64, ptr %i.i, align 8, !tbaa !185
  %.not133 = icmp eq i64 %i.j, 0
  br i1 %.not133, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  store i8 1, ptr %i.h, align 1, !tbaa !321
  %i.k = tail call i32 @TT_Get_MM_Var(ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !152
  %.not135 = icmp eq i32 %i.k, 0
  br i1 %.not135, label %._crit_edge257, label %.loopexit

._crit_edge257:                                   ; preds = %bb.d
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !95
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge257, %bb.a
  %i.l = phi ptr [ %.pre, %._crit_edge257 ], [ %i.g, %bb.a ] ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !324  ; 6 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !328
  %spec.select = tail call i32 @llvm.umin.i32(i32 %1, i32 %i.o) ; 14 uses
  %.not216 = icmp eq i32 %spec.select, 0          ; 2 uses
  br i1 %.not216, label %._crit_edge187, label %.lr.ph186.preheader

.lr.ph186.preheader:                              ; preds = %bb.e
  %wide.trip.count233 = zext i32 %spec.select to i64
  br label %.lr.ph186

bb.f:                                             ; preds = %.lr.ph186
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %._crit_edge187, label %.lr.ph186, !llvm.loop !708

.lr.ph186:                                        ; preds = %.lr.ph186.preheader, %bb.f
  %indvars.iv230 = phi i64 [ 0, %.lr.ph186.preheader ], [ %indvars.iv.next231, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv230
  %i.q = load i64, ptr %i.p, align 8, !tbaa !185
  %i.r = add i64 %i.q, -65537
  %or.cond155 = icmp ult i64 %i.r, -131073
  br i1 %or.cond155, label %.loopexit.sink.split, label %bb.f

._crit_edge187:                                   ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.t = load i8, ptr %i.s, align 8, !tbaa !729
  %.not136 = icmp eq i8 %i.t, 0
  br i1 %.not136, label %bb.g, label %bb.ab

bb.g:                                             ; preds = %._crit_edge187
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 136 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !383
  %.not137 = icmp eq ptr %i.v, null
  br i1 %.not137, label %bb.h, label %bb.ab

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !86   ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !90   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !323
  %i.ac = call i32 %i.ab(ptr noundef nonnull %0, i64 noundef 1735811442, ptr noundef %i.x, ptr noundef nonnull %i.b) #21, !inline_history !709 ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.i, label %ft_var_load_gvar.exit

bb.i:                                             ; preds = %bb.h
  %i.ad = call i64 @FT_Stream_Pos(ptr noundef nonnull %i.x) #21 ; 3 uses
  %i.ae = call i32 @FT_Stream_ReadFields(ptr noundef nonnull %i.x, ptr noundef nonnull @ft_var_load_gvar.gvar_fields, ptr noundef nonnull %4) #21 ; 2 uses
  %.not116.i = icmp eq i32 %i.ae, 0
  br i1 %.not116.i, label %bb.j, label %ft_var_load_gvar.exit

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %4, align 8, !tbaa !731
  %.not117.i = icmp eq i64 %i.af, 65536
  br i1 %.not117.i, label %bb.k, label %ft_var_load_gvar.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !732 ; 2 uses
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !324
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !328
  %i.ak = trunc i32 %i.aj to i16
  %.not118.i = icmp eq i16 %i.ah, %i.ak
  br i1 %.not118.i, label %bb.l, label %ft_var_load_gvar.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 6 uses
  %i.am = load i16, ptr %i.al, align 2, !tbaa !733
  %i.an = zext i16 %i.am to i64
  %i.ao = zext i16 %i.ah to i64
  %i.ap = mul nuw nsw i64 %i.an, %i.ao
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !185 ; 3 uses
  %i.ar = lshr i64 %i.aq, 1
  %i.as = icmp samesign ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %ft_var_load_gvar.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.au = load i16, ptr %i.at, align 8, !tbaa !734
  %i.av = zext i16 %i.au to i64
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 26 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !735
  %i.az = and i16 %i.ay, 1
  %.not119.i = icmp eq i16 %i.az, 0
  %i.ba = select i1 %.not119.i, i64 1, i64 2
  %i.bb = shl nuw nsw i64 %i.aw, %i.ba            ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, %i.aq
  br i1 %i.bc, label %ft_var_load_gvar.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  store i64 %i.aq, ptr %i.bd, align 8, !tbaa !736
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !737
  %i.bg = add i64 %i.bf, %i.ad                    ; 6 uses
  %i.bh = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %i.x, i64 noundef %i.bb) #21 ; 3 uses
  store i32 %i.bh, ptr %i.a, align 4, !tbaa !152
  %.not120.i = icmp eq i32 %i.bh, 0
  br i1 %.not120.i, label %bb.o, label %ft_var_load_gvar.exit

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !345 ; 4 uses
  %i.bk = load i16, ptr %i.at, align 8, !tbaa !734
  %i.bl = zext i16 %i.bk to i64
  %i.bm = add nuw nsw i64 %i.bl, 1
  %i.bn = call ptr @ft_mem_qrealloc(ptr noundef %i.z, i64 noundef 8, i64 noundef 0, i64 noundef %i.bm, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 7 uses
  store ptr %i.bn, ptr %i.u, align 8, !tbaa !383
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !152
  %.not121.i = icmp eq i32 %i.bo, 0
  br i1 %.not121.i, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.bp = load i16, ptr %i.ax, align 2, !tbaa !735
  %i.bq = and i16 %i.bp, 1
  %.not122.i = icmp eq i16 %i.bq, 0
  %i.br = load i64, ptr %i.b, align 8, !tbaa !185
  %i.bs = add i64 %i.br, %i.ad                    ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !384
  %i.bv = load ptr, ptr %i.bi, align 8, !tbaa !345
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx                    ; 2 uses
  %i.bz = load i16, ptr %i.at, align 8, !tbaa !734 ; 5 uses
  %i.ca = zext i16 %i.bz to i64                   ; 2 uses
  br i1 %.not122.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = shl nuw nsw i64 %i.ca, 2
  %i.cc = icmp slt i64 %i.by, %i.cb
  br i1 %i.cc, label %bb.r, label %.preheader142.i.preheader

.preheader142.i.preheader:                        ; preds = %bb.q
  %5 = zext i16 %i.bz to i32                      ; 3 uses
  %6 = add nuw nsw i32 %5, 1                      ; 2 uses
  %wide.trip.count.i = zext nneg i32 %6 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.cd = icmp eq i16 %i.bz, 0
  br i1 %i.cd, label %.preheader142.i.epil.preheader, label %.preheader142.i.preheader.new

.preheader142.i.preheader.new:                    ; preds = %.preheader142.i.preheader
  %unroll_iter = and i64 %wide.trip.count.i, 131070
  br label %.preheader142.i

.preheader142.i:                                  ; preds = %.preheader142.i, %.preheader142.i.preheader.new
  %indvars.iv.i = phi i64 [ 0, %.preheader142.i.preheader.new ], [ %indvars.iv.next.i.1, %.preheader142.i ] ; 3 uses
  %.0100146.i = phi i64 [ 0, %.preheader142.i.preheader.new ], [ %spec.store.select.i.1, %.preheader142.i ]
  %.0102145.i = phi ptr [ %i.bj, %.preheader142.i.preheader.new ], [ %i.ck, %.preheader142.i ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader142.i.preheader.new ], [ %niter.next.1, %.preheader142.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0102145.i, i64 4
  %i.cf = load i32, ptr %.0102145.i, align 1
  %i.cg = call i32 @llvm.bswap.i32(i32 %i.cf)
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add i64 %i.bg, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i
  %spec.store.select.i = call i64 @llvm.umax.i64(i64 %.0100146.i, i64 %i.ci) ; 2 uses
  %spec.store.select138.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %spec.store.select.i)
  store i64 %spec.store.select138.i, ptr %i.cj, align 8, !tbaa !185
  %i.ck = getelementptr inbounds nuw i8, ptr %.0102145.i, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ce, align 1
  %i.cm = call i32 @llvm.bswap.i32(i32 %i.cl)
  %i.cn = zext i32 %i.cm to i64
  %i.co = add i64 %i.bg, %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %spec.store.select.i.1 = call i64 @llvm.umax.i64(i64 %spec.store.select.i, i64 %i.co) ; 3 uses
  %spec.store.select138.i.1 = call i64 @llvm.umin.i64(i64 %i.bs, i64 %spec.store.select.i.1)
  store i64 %spec.store.select138.i.1, ptr %i.cq, align 8, !tbaa !185
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.i.loopexit350.unr-lcssa, label %.preheader142.i, !llvm.loop !710

bb.r:                                             ; preds = %bb.q
  store i32 8, ptr %i.a, align 4, !tbaa !152
  br label %bb.z

bb.s:                                             ; preds = %bb.p
  %i.cr = shl nuw nsw i64 %i.ca, 1
  %i.cs = icmp slt i64 %i.by, %i.cr
  br i1 %i.cs, label %bb.t, label %.preheader141.i.preheader

.preheader141.i.preheader:                        ; preds = %bb.s
  %7 = zext i16 %i.bz to i32                      ; 3 uses
  %8 = add nuw nsw i32 %7, 1                      ; 2 uses
  %wide.trip.count163.i = zext nneg i32 %8 to i64 ; 2 uses
  %xtraiter355 = and i64 %wide.trip.count163.i, 1
  %i.ct = icmp eq i16 %i.bz, 0
  br i1 %i.ct, label %.preheader141.i.epil.preheader, label %.preheader141.i.preheader.new

.preheader141.i.preheader.new:                    ; preds = %.preheader141.i.preheader
  %unroll_iter356 = and i64 %wide.trip.count163.i, 131070
  br label %.preheader141.i

.preheader141.i:                                  ; preds = %.preheader141.i, %.preheader141.i.preheader.new
  %indvars.iv160.i = phi i64 [ 0, %.preheader141.i.preheader.new ], [ %indvars.iv.next161.i.1, %.preheader141.i ] ; 3 uses
  %.0149.i = phi i64 [ 0, %.preheader141.i.preheader.new ], [ %spec.store.select136.i.1, %.preheader141.i ]
  %.1103148.i = phi ptr [ %i.bj, %.preheader141.i.preheader.new ], [ %i.df, %.preheader141.i ] ; 5 uses
  %niter357 = phi i64 [ 0, %.preheader141.i.preheader.new ], [ %niter357.next.1, %.preheader141.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.1103148.i, i64 2
  %i.cv = load i8, ptr %.1103148.i, align 1, !tbaa !186
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.1103148.i, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !186
  %i.cz = zext i8 %i.cy to i64
  %i.da = shl nuw nsw i64 %i.cw, 9
  %i.db = shl nuw nsw i64 %i.cz, 1
  %i.dc = or disjoint i64 %i.db, %i.da
  %i.dd = add i64 %i.dc, %i.bg
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv160.i
  %spec.store.select136.i = call i64 @llvm.umax.i64(i64 %.0149.i, i64 %i.dd) ; 2 uses
  %spec.store.select139.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %spec.store.select136.i)
  store i64 %spec.store.select139.i, ptr %i.de, align 8, !tbaa !185
  %i.df = getelementptr inbounds nuw i8, ptr %.1103148.i, i64 4 ; 2 uses
  %i.dg = load i8, ptr %i.cu, align 1, !tbaa !186
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %.1103148.i, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !186
  %i.dk = zext i8 %i.dj to i64
  %i.dl = shl nuw nsw i64 %i.dh, 9
  %i.dm = shl nuw nsw i64 %i.dk, 1
  %i.dn = or disjoint i64 %i.dm, %i.dl
  %i.do = add i64 %i.dn, %i.bg
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv160.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %spec.store.select136.i.1 = call i64 @llvm.umax.i64(i64 %spec.store.select136.i, i64 %i.do) ; 3 uses
  %spec.store.select139.i.1 = call i64 @llvm.umin.i64(i64 %i.bs, i64 %spec.store.select136.i.1)
  store i64 %spec.store.select139.i.1, ptr %i.dq, align 8, !tbaa !185
  %indvars.iv.next161.i.1 = add nuw nsw i64 %indvars.iv160.i, 2 ; 2 uses
  %niter357.next.1 = add i64 %niter357, 2         ; 2 uses
  %niter357.ncmp.1 = icmp eq i64 %niter357.next.1, %unroll_iter356
  br i1 %niter357.ncmp.1, label %.thread.i.loopexit.unr-lcssa, label %.preheader141.i, !llvm.loop !711

bb.t:                                             ; preds = %bb.s
  store i32 8, ptr %i.a, align 4, !tbaa !152
  br label %bb.z

.thread.i.loopexit.unr-lcssa:                     ; preds = %.preheader141.i
  %lcmp.mod354.not.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod354.not.not, label %.thread.i, label %.preheader141.i.epil.preheader

.preheader141.i.epil.preheader:                   ; preds = %.thread.i.loopexit.unr-lcssa, %.preheader141.i.preheader
  %indvars.iv160.i.epil.init = phi i64 [ 0, %.preheader141.i.preheader ], [ %indvars.iv.next161.i.1, %.thread.i.loopexit.unr-lcssa ]
  %.0149.i.epil.init = phi i64 [ 0, %.preheader141.i.preheader ], [ %spec.store.select136.i.1, %.thread.i.loopexit.unr-lcssa ]
  %.1103148.i.epil.init = phi ptr [ %i.bj, %.preheader141.i.preheader ], [ %i.df, %.thread.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod355 = trunc i32 %8 to i1
  call void @llvm.assume(i1 %lcmp.mod355)
  %i.dr = load i8, ptr %.1103148.i.epil.init, align 1, !tbaa !186
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %.1103148.i.epil.init, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !186
  %i.dv = zext i8 %i.du to i64
  %i.dw = shl nuw nsw i64 %i.ds, 9
  %i.dx = shl nuw nsw i64 %i.dv, 1
  %i.dy = or disjoint i64 %i.dx, %i.dw
  %i.dz = add i64 %i.dy, %i.bg
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv160.i.epil.init
  %spec.store.select136.i.epil = call i64 @llvm.umax.i64(i64 %.0149.i.epil.init, i64 %i.dz)
  %spec.store.select139.i.epil = call i64 @llvm.umin.i64(i64 %i.bs, i64 %spec.store.select136.i.epil)
  store i64 %spec.store.select139.i.epil, ptr %i.ea, align 8, !tbaa !185
  br label %.thread.i

.thread.i.loopexit350.unr-lcssa:                  ; preds = %.preheader142.i
  %lcmp.mod.not.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not.not, label %.thread.i, label %.preheader142.i.epil.preheader

.preheader142.i.epil.preheader:                   ; preds = %.thread.i.loopexit350.unr-lcssa, %.preheader142.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader142.i.preheader ], [ %indvars.iv.next.i.1, %.thread.i.loopexit350.unr-lcssa ]
  %.0100146.i.epil.init = phi i64 [ 0, %.preheader142.i.preheader ], [ %spec.store.select.i.1, %.thread.i.loopexit350.unr-lcssa ]
  %.0102145.i.epil.init = phi ptr [ %i.bj, %.preheader142.i.preheader ], [ %i.ck, %.thread.i.loopexit350.unr-lcssa ]
  %lcmp.mod352 = trunc i32 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod352)
  %i.eb = load i32, ptr %.0102145.i.epil.init, align 1
  %i.ec = call i32 @llvm.bswap.i32(i32 %i.eb)
  %i.ed = zext i32 %i.ec to i64
  %i.ee = add i64 %i.bg, %i.ed
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i.epil.init
  %spec.store.select.i.epil = call i64 @llvm.umax.i64(i64 %.0100146.i.epil.init, i64 %i.ee)
  %spec.store.select138.i.epil = call i64 @llvm.umin.i64(i64 %i.bs, i64 %spec.store.select.i.epil)
  store i64 %spec.store.select138.i.epil, ptr %i.ef, align 8, !tbaa !185
  br label %.thread.i

.thread.i:                                        ; preds = %.preheader142.i.epil.preheader, %.thread.i.loopexit350.unr-lcssa, %.preheader141.i.epil.preheader, %.thread.i.loopexit.unr-lcssa
  %.pre-phi.i = phi i32 [ %7, %.preheader141.i.epil.preheader ], [ %7, %.thread.i.loopexit.unr-lcssa ], [ %5, %.thread.i.loopexit350.unr-lcssa ], [ %5, %.preheader142.i.epil.preheader ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i32 %.pre-phi.i, ptr %i.eg, align 8, !tbaa !385
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.x) #21
  %i.eh = load i16, ptr %i.al, align 2, !tbaa !733
  %.not127.i = icmp eq i16 %i.eh, 0
  br i1 %.not127.i, label %ft_var_load_gvar.exitthread-pre-split, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !738
  %i.ek = add i64 %i.ej, %i.ad
  %i.el = call i32 @FT_Stream_Seek(ptr noundef nonnull %i.x, i64 noundef %i.ek) #21 ; 2 uses
  store i32 %i.el, ptr %i.a, align 4, !tbaa !152
  %.not128.i = icmp eq i32 %i.el, 0
  br i1 %.not128.i, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.em = load i16, ptr %i.al, align 2, !tbaa !733
  %i.en = zext i16 %i.em to i64
  %i.eo = load i16, ptr %i.ag, align 8, !tbaa !732
  %i.ep = zext i16 %i.eo to i64
  %i.eq = shl nuw nsw i64 %i.en, 1
  %i.er = mul nuw nsw i64 %i.eq, %i.ep
  %i.es = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %i.x, i64 noundef %i.er) #21 ; 2 uses
  store i32 %i.es, ptr %i.a, align 4, !tbaa !152
  %.not129.i = icmp eq i32 %i.es, 0
  br i1 %.not129.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.et = load ptr, ptr %i.bi, align 8, !tbaa !345
  %i.eu = load i16, ptr %i.ag, align 8, !tbaa !732
  %i.ev = zext i16 %i.eu to i64
  %i.ew = load i16, ptr %i.al, align 2, !tbaa !733
  %i.ex = zext i16 %i.ew to i64
  %i.ey = mul nuw nsw i64 %i.ex, %i.ev
  %i.ez = call ptr @ft_mem_qrealloc(ptr noundef %i.z, i64 noundef 8, i64 noundef 0, i64 noundef %i.ey, ptr noundef null, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !382
  %i.fb = load i32, ptr %i.a, align 4, !tbaa !152
  %.not130.i = icmp eq i32 %i.fb, 0
  br i1 %.not130.i, label %.preheader140.i, label %bb.y

.preheader140.i:                                  ; preds = %bb.w
  %i.fc = load i16, ptr %i.al, align 2, !tbaa !733 ; 3 uses
  %.not156.i = icmp eq i16 %i.fc, 0
  br i1 %.not156.i, label %._crit_edge154.split.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader140.i
  %i.fd = load i16, ptr %i.ag, align 8, !tbaa !732 ; 4 uses
  %.not157.i = icmp eq i16 %i.fd, 0
  br i1 %.not157.i, label %._crit_edge154.split.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.fe = zext i16 %i.fd to i64                   ; 3 uses
  %wide.trip.count173.i = zext i16 %i.fc to i64
  %xtraiter358 = and i64 %i.fe, 1
  %i.ff = icmp eq i16 %i.fd, 1
  %unroll_iter362 = and i64 %i.fe, 65534
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  %lcmp.mod361 = trunc i16 %i.fd to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv170.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next171.i, %._crit_edge.i ] ; 2 uses
  %.2153.i = phi ptr [ %i.et, %.preheader.preheader.i ], [ %.lcssa349, %._crit_edge.i ] ; 2 uses
  %i.fg = mul nuw nsw i64 %indvars.iv170.i, %i.fe
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fg ; 3 uses
  br i1 %i.ff, label %.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 3 uses
  %.3151.i = phi ptr [ %i.ft, %.preheader.i.new ], [ %.2153.i, %.preheader.i ] ; 5 uses
  %niter363 = phi i64 [ %niter363.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.3151.i, i64 2
  %i.fj = load i8, ptr %.3151.i, align 1, !tbaa !186
  %i.fk = zext i8 %i.fj to i16
  %i.fl = shl nuw i16 %i.fk, 8
  %i.fm = getelementptr inbounds nuw i8, ptr %.3151.i, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !186
  %i.fo = zext i8 %i.fn to i16
  %i.fp = or disjoint i16 %i.fl, %i.fo
  %i.fq = sext i16 %i.fp to i64
  %i.fr = shl nsw i64 %i.fq, 2
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv165.i
  store i64 %i.fr, ptr %i.fs, align 8, !tbaa !185
  %i.ft = getelementptr inbounds nuw i8, ptr %.3151.i, i64 4 ; 3 uses
  %i.fu = load i8, ptr %i.fi, align 1, !tbaa !186
  %i.fv = zext i8 %i.fu to i16
  %i.fw = shl nuw i16 %i.fv, 8
  %i.fx = getelementptr inbounds nuw i8, ptr %.3151.i, i64 3
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !186
  %i.fz = zext i8 %i.fy to i16
  %i.ga = or disjoint i16 %i.fw, %i.fz
  %i.gb = sext i16 %i.ga to i64
  %i.gc = shl nsw i64 %i.gb, 2
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv165.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %i.gc, ptr %i.ge, align 8, !tbaa !185
  %indvars.iv.next166.i.1 = add nuw nsw i64 %indvars.iv165.i, 2 ; 2 uses
  %niter363.next.1 = add i64 %niter363, 2         ; 2 uses
  %niter363.ncmp.1 = icmp eq i64 %niter363.next.1, %unroll_iter362
  br i1 %niter363.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !712

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod359.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %indvars.iv165.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next166.i.1, %._crit_edge.i.unr-lcssa ]
  %.3151.i.epil.init = phi ptr [ %.2153.i, %.preheader.i ], [ %i.ft, %._crit_edge.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod361)
  %i.gf = getelementptr inbounds nuw i8, ptr %.3151.i.epil.init, i64 2
  %i.gg = load i8, ptr %.3151.i.epil.init, align 1, !tbaa !186
  %i.gh = zext i8 %i.gg to i16
  %i.gi = shl nuw i16 %i.gh, 8
  %i.gj = getelementptr inbounds nuw i8, ptr %.3151.i.epil.init, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !186
  %i.gl = zext i8 %i.gk to i16
  %i.gm = or disjoint i16 %i.gi, %i.gl
  %i.gn = sext i16 %i.gm to i64
  %i.go = shl nsw i64 %i.gn, 2
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv165.i.epil.init
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !185
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa349 = phi ptr [ %i.ft, %._crit_edge.i.unr-lcssa ], [ %i.gf, %.epil.preheader ]
  %indvars.iv.next171.i = add nuw nsw i64 %indvars.iv170.i, 1 ; 2 uses
  %exitcond174.not.i = icmp eq i64 %indvars.iv.next171.i, %wide.trip.count173.i
  br i1 %exitcond174.not.i, label %._crit_edge154.split.i, label %.preheader.i, !llvm.loop !713

._crit_edge154.split.i:                           ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %.preheader140.i
  %i.gq = zext i16 %i.fc to i64
  %i.gr = call ptr @ft_mem_realloc(ptr noundef %i.z, i64 noundef 8, i64 noundef 0, i64 noundef %i.gq, ptr noundef null, ptr noundef nonnull %i.a) #21
  %i.gs = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  store ptr %i.gr, ptr %i.gs, align 8, !tbaa !381
  %i.gt = load i32, ptr %i.a, align 4, !tbaa !152
  %.not131.i = icmp eq i32 %i.gt, 0
  br i1 %.not131.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge154.split.i
  %i.gu = load i16, ptr %i.al, align 2, !tbaa !733
  %i.gv = zext i16 %i.gu to i32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i32 %i.gv, ptr %i.gw, align 8, !tbaa !386
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.x) #21
  br label %ft_var_load_gvar.exitthread-pre-split

bb.y:                                             ; preds = %._crit_edge154.split.i, %bb.w, %bb.o
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.x) #21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v, %bb.u, %bb.t, %bb.r
  %i.gx = load ptr, ptr %i.u, align 8, !tbaa !383
  call void @ft_mem_free(ptr noundef %i.z, ptr noundef %i.gx) #21
  store ptr null, ptr %i.u, align 8, !tbaa !383
  %i.gy = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  store i32 0, ptr %i.gy, align 8, !tbaa !385
  br label %ft_var_load_gvar.exitthread-pre-split

ft_var_load_gvar.exitthread-pre-split:            ; preds = %bb.z, %bb.x, %.thread.i
  %.pr166 = load i32, ptr %i.a, align 4, !tbaa !152
  br label %ft_var_load_gvar.exit

ft_var_load_gvar.exit.thread:                     ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.loopexit.sink.split

ft_var_load_gvar.exit:                            ; preds = %ft_var_load_gvar.exitthread-pre-split, %bb.h, %bb.i, %bb.n
  %i.gz = phi i32 [ %.pr166, %ft_var_load_gvar.exitthread-pre-split ], [ %i.ac, %bb.h ], [ %i.ae, %bb.i ], [ %i.bh, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  store i32 %i.gz, ptr %i.c, align 4, !tbaa !152
  switch i32 %i.gz, label %.loopexit [
    i32 142, label %bb.aa
    i32 0, label %bb.aa
  ]

bb.aa:                                            ; preds = %ft_var_load_gvar.exit, %ft_var_load_gvar.exit
  store i32 0, ptr %i.c, align 4, !tbaa !152
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.g, %._crit_edge187
  %i.ha = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !320
  %.not138.not = icmp eq ptr %i.hb, null          ; 2 uses
  br i1 %.not138.not, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.hc = load i32, ptr %i.n, align 8, !tbaa !328
  %i.hd = zext i32 %i.hc to i64
  %i.he = call ptr @ft_mem_realloc(ptr noundef %i.e, i64 noundef 8, i64 noundef 0, i64 noundef %i.hd, ptr noundef null, ptr noundef nonnull %i.c) #21
  store ptr %i.he, ptr %i.ha, align 8, !tbaa !320
  %i.hf = load i32, ptr %i.c, align 4, !tbaa !152
  %.not139 = icmp eq i32 %i.hf, 0
  br i1 %.not139, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hg = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !318 ; 8 uses
end_hunk_0
begin_hunk_1_@compute_glyph_metrics:bb.a
bb.o:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !422
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !429 ; 2 uses
  %.not86 = icmp eq ptr %i.ca, null
  br i1 %.not86, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 0, ptr %3, align 8, !tbaa !431
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %.067, ptr %i.cb, align 8, !tbaa !432
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %.166, ptr %i.cc, align 8, !tbaa !433
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !424
  %i.cf = call i32 %i.ca(ptr noundef %i.ce, i32 noundef %1, i8 noundef zeroext 1, ptr noundef nonnull %3) #21 ; 2 uses
  %.not87 = icmp eq i32 %i.cf, 0
  br i1 %.not87, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cg = load i64, ptr %i.cb, align 8, !tbaa !432
  %i.ch = load i64, ptr %i.cc, align 8, !tbaa !433
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.n
  %.269.ph = phi i64 [ %.067, %bb.n ], [ %.067, %bb.o ], [ %i.cg, %bb.q ] ; 2 uses
  %.3.ph = phi i64 [ %.166, %bb.n ], [ %.166, %bb.o ], [ %i.ch, %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i64 %.3.ph, ptr %i.ci, align 8, !tbaa !148
  %i.cj = load i64, ptr %i.f, align 8, !tbaa !139
  %i.ck = and i64 %i.cj, 1
  %.not88 = icmp eq i64 %i.ck, 0
  br i1 %.not88, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cl = mul i64 %.269.ph, %.071                 ; 2 uses
  %i.cm = ashr i64 %i.cl, 63
  %i.cn = add i64 %i.cl, 32768
  %i.co = add i64 %i.cn, %i.cm
  %i.cp = ashr i64 %i.co, 16
  %i.cq = mul i64 %.3.ph, %.071                   ; 2 uses
  %i.cr = ashr i64 %i.cq, 63
  %i.cs = add i64 %i.cq, 32768
  %i.ct = add i64 %i.cs, %i.cr
  %i.cu = ashr i64 %i.ct, 16
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.v

bb.u:                                             ; preds = %bb.r, %bb.s
  %.370 = phi i64 [ %.269.ph, %bb.r ], [ %i.cp, %bb.s ]
  %.4 = phi i64 [ %.3.ph, %bb.r ], [ %i.cu, %bb.s ]
  %i.cv = load i64, ptr %i.x, align 8, !tbaa !121
  %i.cw = load i64, ptr %i.an, align 8, !tbaa !123
  %.neg = sdiv i64 %i.cw, -2
  %i.cx = add i64 %.neg, %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !124
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i64 %.370, ptr %i.cz, align 8, !tbaa !125
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 %.4, ptr %i.da, align 8, !tbaa !126
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.db = phi i32 [ 0, %bb.u ], [ %i.cf, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i32 %i.db
}

declare hidden void @FT_GlyphLoader_Rewind(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @tt_size_done_bytecode(ptr nofree noundef captures(none) initializes((336, 340)) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !150
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !85   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 16 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.g) #21
  store ptr null, ptr %i.f, align 8, !tbaa !176
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 680 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !166
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.i) #21
  store ptr null, ptr %i.h, align 8, !tbaa !166
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !159  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 728
  store i16 0, ptr %i.l, align 8, !tbaa !822
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 730
  store i16 0, ptr %i.m, align 2, !tbaa !823
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 648
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !456
  tail call void @ft_mem_free(ptr noundef %i.k, ptr noundef %i.o) #21
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 640
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 808 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !301
  tail call void @ft_mem_free(ptr noundef %i.k, ptr noundef %i.r) #21
  store ptr null, ptr %i.q, align 8, !tbaa !301
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 800
  store i16 0, ptr %i.s, align 8, !tbaa !302
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 720
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !161
  tail call void @ft_mem_free(ptr noundef %i.k, ptr noundef %i.u) #21
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 664 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !192
  tail call void @ft_mem_free(ptr noundef %i.k, ptr noundef %i.x) #21
  store ptr null, ptr %i.w, align 8, !tbaa !192
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 656
  store i32 0, ptr %i.y, align 8, !tbaa !193
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @ft_mem_free(ptr noundef %i.k, ptr noundef nonnull %i.e) #21
  store ptr null, ptr %i.d, align 8, !tbaa !162
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !177
  tail call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.ab) #21
  store ptr null, ptr %i.aa, align 8, !tbaa !177
  store i16 0, ptr %i.z, align 8, !tbaa !178
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 338
  store i16 0, ptr %i.ac, align 2, !tbaa !179
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @TT_Run_Context(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !tbaa.struct !200
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !tbaa.struct !200
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !tbaa.struct !200
  %i.e = load i16, ptr %i.b, align 8, !tbaa !209  ; 3 uses
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.h = load i64, ptr %i.g, align 8, !tbaa !175  ; 4 uses
  %i.i = add i64 %i.h, %i.f
  %i.j = shl i64 %i.i, 1
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.j, i64 30) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.l = load i16, ptr %i.k, align 8, !tbaa !824
  %i.m = zext i16 %i.l to i64
  %i.n = icmp ult i64 %spec.select, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = trunc nuw i64 %spec.select to i16
  store i16 %i.o, ptr %i.k, align 8, !tbaa !824
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 960
  store i64 0, ptr %i.p, align 8, !tbaa !284
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i64 0, ptr %i.q, align 8, !tbaa !271
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i16 %i.e, 5
  %i.s = mul nuw nsw i64 %i.f, 10
  %i.t = select i1 %i.r, i64 50, i64 %i.s
  %i.u = icmp ult i64 %i.h, 500
  %i.v = udiv i64 %i.h, 10
  %i.w = select i1 %i.u, i64 50, i64 %i.v
  %i.x = add nuw nsw i64 %i.t, %i.w
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = mul i64 %i.h, 22
  %i.z = add i64 %i.y, 300
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ %i.z, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  store i64 %.sink, ptr %i.aa, align 8, !tbaa !285
  %i.ab = load ptr, ptr %0, align 8, !tbaa !189
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !457
  %i.ae = mul i64 %i.ad, 100                      ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %.sink, i64 %i.ae)
  store i64 %spec.store.select, ptr %i.aa, align 8, !tbaa !285
  %spec.select58 = tail call i64 @llvm.umin.i64(i64 %.sink, i64 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 984
  store i64 %spec.select58, ptr %i.af, align 8, !tbaa !272
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !825
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 370
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !826
  %.not55 = icmp eq i16 %i.ah, %i.aj
  br i1 %.not55, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %Current_Ppem_Stretched.sink = phi ptr [ @Current_Ppem, %bb.g ], [ @Current_Ppem_Stretched, %bb.f ]
  %Read_CVT_Stretched.sink = phi ptr [ @Read_CVT, %bb.g ], [ @Read_CVT_Stretched, %bb.f ]
  %Write_CVT_Stretched.sink = phi ptr [ @Write_CVT, %bb.g ], [ @Write_CVT_Stretched, %bb.f ]
  %Move_CVT_Stretched.sink = phi ptr [ @Move_CVT, %bb.g ], [ @Move_CVT_Stretched, %bb.f ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 912
  store ptr %Current_Ppem_Stretched.sink, ptr %i.ak, align 8, !tbaa !304
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr %Read_CVT_Stretched.sink, ptr %i.al, align 8, !tbaa !300
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 928
  store ptr %Write_CVT_Stretched.sink, ptr %i.am, align 8, !tbaa !303
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 936
  store ptr %Move_CVT_Stretched.sink, ptr %i.an, align 8, !tbaa !307
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 216
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.ao, ptr noundef nonnull align 8 dereferenceable(120) %i.ap, i64 120, i1 false), !tbaa.struct !187
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 848
  store ptr @Round_To_Grid, ptr %i.aq, align 8, !tbaa !265
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.as = load i16, ptr %i.ar, align 8, !tbaa !242 ; 2 uses
  %i.at = sext i16 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 482
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !243 ; 2 uses
  %i.ax = sext i16 %i.aw to i64
  %i.ay = load <2 x i16>, ptr %i.au, align 4, !tbaa !128 ; 3 uses
  %i.az = extractelement <2 x i16> %i.ay, i64 0   ; 2 uses
  %i.ba = sext i16 %i.az to i64                   ; 2 uses
  %i.bb = mul nsw i64 %i.ba, %i.at
  %i.bc = extractelement <2 x i16> %i.ay, i64 1   ; 2 uses
  %i.bd = sext i16 %i.bc to i64                   ; 2 uses
  %i.be = mul nsw i64 %i.bd, %i.ax
  %i.bf = add nsw i64 %i.bb, 8192
  %i.bg = add nsw i64 %i.bf, %i.be
  %i.bh = ashr i64 %i.bg, 14                      ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 16381
  br i1 %i.bi, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = add nsw i64 %i.bh, 1023
  %or.cond.i = icmp ult i64 %i.bj, 2047
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br label %.critedge.i

bb.k:                                             ; preds = %bb.i
  %i.bl = shl nsw i64 %i.ba, 16
  %i.bm = sdiv i64 %i.bl, %i.bh
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 856
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !248
  %i.bo = shl nsw i64 %i.bd, 16
  %i.bp = sdiv i64 %i.bo, %i.bh
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 864
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !249
  br label %.critedge.i

bb.l:                                             ; preds = %bb.h
  %i.br = sext <2 x i16> %i.ay to <2 x i32>
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.bt = shl nsw <2 x i32> %i.br, splat (i32 2)
  %i.bu = sext <2 x i32> %i.bt to <2 x i64>
  store <2 x i64> %i.bu, ptr %i.bs, align 8, !tbaa !185
  %i.bv = icmp eq i16 %i.az, 16384
  br i1 %i.bv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = icmp eq i16 %i.bc, 16384
  br i1 %i.bw, label %bb.n, label %.critedge.i

.critedge.i:                                      ; preds = %bb.m, %bb.k, %bb.j
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i, %bb.m, %bb.l
  %Direct_Move_Y.sink.i = phi ptr [ @Direct_Move_X, %bb.l ], [ @Direct_Move, %.critedge.i ], [ @Direct_Move_Y, %bb.m ]
  %Direct_Move_Orig_Y.sink.i = phi ptr [ @Direct_Move_Orig_X, %bb.l ], [ @Direct_Move_Orig, %.critedge.i ], [ @Direct_Move_Orig_Y, %bb.m ]
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 896
  store ptr %Direct_Move_Y.sink.i, ptr %i.bx, align 8, !tbaa !250
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %Direct_Move_Orig_Y.sink.i, ptr %i.by, align 8, !tbaa !251
  %i.bz = icmp eq i16 %i.as, 16384
  br i1 %i.bz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr @Project_x, ptr %i.ca, align 8, !tbaa !252
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.cb = icmp eq i16 %i.aw, 16384
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  br i1 %i.cb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr @Project_y, ptr %i.cc, align 8, !tbaa !252
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store ptr @Project, ptr %i.cc, align 8, !tbaa !252
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !244
  %i.cf = icmp eq i16 %i.ce, 16384
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 880
  store ptr @Project_x, ptr %i.cg, align 8, !tbaa !253
  br label %Compute_Funcs.exit

bb.u:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 478
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !245
  %i.cj = icmp eq i16 %i.ci, 16384
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr @Project_y, ptr %i.ck, align 8, !tbaa !253
  br label %Compute_Funcs.exit

bb.w:                                             ; preds = %bb.u
  store ptr @Dual_Project, ptr %i.ck, align 8, !tbaa !253
  br label %Compute_Funcs.exit

Compute_Funcs.exit:                               ; preds = %bb.t, %bb.v, %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.cl, align 8, !tbaa !254
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 948 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !215
  %i.co = and i32 %i.cn, -4
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !215
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.cp, align 8, !tbaa !240
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 712
  store i32 0, ptr %i.cq, align 8, !tbaa !267
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 840
  store i8 0, ptr %i.cr, align 8, !tbaa !319
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !158
  %i.cu = tail call i32 %i.ct(ptr noundef nonnull %0) #21
  ret i32 %i.cu
}

; Function Attrs: nounwind uwtable
define internal range(i64 -140737488355328, 140737488355328) i64 @Current_Ppem_Stretched(ptr nofree noundef captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = load i16, ptr %i.a, align 8, !tbaa !311
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !254  ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %Current_Ratio.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 482
  %i.g = load i16, ptr %i.f, align 2, !tbaa !243  ; 2 uses
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr %i.c, align 8, !tbaa !458
  br label %.sink.split.i

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.k = load i16, ptr %i.j, align 8, !tbaa !242  ; 2 uses
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.n = load i64, ptr %i.m, align 8, !tbaa !459
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.c, align 8, !tbaa !458
  %i.p = sext i16 %i.k to i64
  %i.q = mul i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr i64 %i.q, 63
  %i.s = add i64 %i.q, 8192
  %i.t = add i64 %i.s, %i.r
end_hunk_1
