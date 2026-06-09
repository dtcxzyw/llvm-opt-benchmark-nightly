inline.NumInlined: 82
inline.NumDeleted: 4
begin_hunk_0_@tjInitCompress:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1856
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 -1, i64 16, i1 false)
  store i32 8, ptr %i.f, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1860
  store i32 -1, ptr %i.g, align 4, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1892
  store i32 1, ptr %i.h, align 4, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1908
  store i32 1, ptr %i.i, align 4, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1912
  store i32 1, ptr %i.j, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1920
  store i64 4294967297, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1952
  store i32 2, ptr %i.l, align 8, !tbaa !53
  %i.m = tail call fastcc ptr @_tjInitCompress(ptr noundef %calloc.i)
  br label %tj3Init.exit

tj3Init.exit:                                     ; preds = %bb.b, %bb.c
  %.024.i = phi ptr [ null, %bb.b ], [ %i.m, %bb.c ]
  ret ptr %.024.i
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3SetICCProfile(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3SetICCProfile.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.f = load i32, ptr %i.e, align 8, !tbaa !64
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.j = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SetICCProfile.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.k = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SetICCProfile.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1960 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68   ; 2 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.q = load i64, ptr %i.p, align 8, !tbaa !90
  %i.r = icmp eq i64 %2, %i.q
  br i1 %i.r, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @free(ptr noundef %i.n) #25
  store ptr null, ptr %i.m, align 8, !tbaa !68
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !90
  %i.t = icmp ne ptr %1, null
  %i.u = icmp ne i64 %2, 0
  %or.cond = and i1 %i.t, %i.u
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.v = tail call noalias ptr @malloc(i64 noundef %2) #27 ; 3 uses
  store ptr %i.v, ptr %i.m, align 8, !tbaa !68
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.y = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SetICCProfile.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.z = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.aa = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.z, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SetICCProfile.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %1, i64 %2, i1 false)
  store i64 %2, ptr %i.s, align 8, !tbaa !90
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.i, %bb.j, %bb.g, %bb.f, %bb.b
  %.0 = phi i32 [ 0, %bb.f ], [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Compress8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 6 uses
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.f = load i32, ptr %i.e, align 8, !tbaa !64
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.k = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %1, null
  %i.n = icmp slt i32 %2, 1
  %or.cond = or i1 %i.m, %i.n
  %i.o = icmp slt i32 %3, 0
  %or.cond3 = or i1 %or.cond, %i.o
  %i.p = icmp slt i32 %4, 1
  %or.cond5 = or i1 %or.cond3, %i.p
  %i.q = icmp ugt i32 %5, 11
  %or.cond9 = or i1 %or.cond5, %i.q
  %i.r = icmp eq ptr %6, null
  %or.cond11 = or i1 %or.cond9, %i.r
  %i.s = icmp eq ptr %7, null
  %or.cond13 = or i1 %or.cond11, %i.s
  br i1 %or.cond13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.v = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !81
  %.not123 = icmp eq i32 %i.y, 0
  br i1 %.not123, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !73
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.32) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.ae = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ae, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.32) #25 ; 0 uses
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !74
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aj, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.33) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.al = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.al, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.33) #25 ; 0 uses
  br label %bb.w

bb.l:                                             ; preds = %bb.g, %bb.j
  %i.an = icmp eq i32 %3, 0
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = zext nneg i32 %5 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @tjPixelSize, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = mul nsw i32 %i.aq, %2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0111 = phi i32 [ %i.ar, %bb.m ], [ %3, %bb.l ]
  %i.as = zext nneg i32 %4 to i64                 ; 4 uses
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = call noalias ptr @malloc(i64 noundef %i.at) #27 ; 11 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ax = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aw, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.ay = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ay, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.bb = call i32 @_setjmp(ptr noundef nonnull %i.ba) #26
  %.not125 = icmp eq i32 %i.bb, 0
  br i1 %.not125, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.bc, align 8, !tbaa !91
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store i32 %4, ptr %i.bd, align 4, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i32 8, ptr %i.be, align 8, !tbaa !93
  %i.bf = load i32, ptr %i.x, align 8, !tbaa !81
  %.not126 = icmp eq i32 %i.bf, 0
  br i1 %.not126, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !7  ; 2 uses
  %i.bi = add i32 %i.bh, -2
  %or.cond132 = icmp ult i32 %i.bi, 7
  br i1 %or.cond132, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !93
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  call fastcc void @setCompDefaults(ptr noundef %0, i32 noundef %5)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1836
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %.not127 = icmp eq i32 %i.bk, 0                 ; 2 uses
  %spec.select = zext i1 %.not127 to i32
  call void @jpeg_mem_dest_tj(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %spec.select) #25
  call void @jpeg_start_compress(ptr noundef nonnull %0, i32 noundef 1) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !68 ; 2 uses
  %.not128 = icmp eq ptr %i.bm, null
  br i1 %.not128, label %.lr.ph, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !90 ; 2 uses
  %.not129 = icmp eq i64 %i.bo, 0
  br i1 %.not129, label %.lr.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = trunc i64 %i.bo to i32
  call void @jpeg_write_icc_profile(ptr noundef nonnull %0, ptr noundef nonnull %i.bm, i32 noundef %i.bp) #25
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.u, %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !71
  %.not130 = icmp eq i32 %i.br, 0
  %i.bs = sext i32 %.0111 to i64                  ; 7 uses
  br i1 %.not130, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %i.as, 3                    ; 3 uses
  %i.bt = add nsw i32 %4, -1
  %i.bu = icmp ult i32 %i.bt, 3
  br i1 %i.bu, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %i.as, 2147483644
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bv = zext nneg i32 %4 to i64                 ; 4 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader157, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.bv, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert155 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat156 = shufflevector <2 x i64> %broadcast.splatinsert155, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.bw = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.bx = add nsw <2 x i64> %broadcast.splat, %i.bw
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.by = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.bz = mul nsw <2 x i64> %i.bx, %broadcast.splat156
  %i.ca = mul nsw <2 x i64> %i.by, %broadcast.splat156
  %i.cb = getelementptr inbounds nuw i8, ptr %1, <2 x i64> %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %1, <2 x i64> %i.ca
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x ptr> %i.cb, ptr %i.cd, align 8, !tbaa !54
  store <2 x ptr> %i.cc, ptr %i.ce, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bv
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.preheader157

.lr.ph.split.preheader157:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv138 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next139.3, %.lr.ph.split.us ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.3, %.lr.ph.split.us ]
  %i.cg = mul nsw i64 %indvars.iv138, %i.bs
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv138
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !54
  %indvars.iv.next139 = or disjoint i64 %indvars.iv138, 1 ; 2 uses
  %i.cj = mul nsw i64 %indvars.iv.next139, %i.bs
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next139
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !54
  %indvars.iv.next139.1 = or disjoint i64 %indvars.iv138, 2 ; 2 uses
  %i.cm = mul nsw i64 %indvars.iv.next139.1, %i.bs
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next139.1
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !54
  %indvars.iv.next139.2 = or disjoint i64 %indvars.iv138, 3 ; 2 uses
  %i.cp = mul nsw i64 %indvars.iv.next139.2, %i.bs
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next139.2
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !54
  %indvars.iv.next139.3 = add nuw nsw i64 %indvars.iv138, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !98

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv138.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next139.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv138.epil = phi i64 [ %indvars.iv.next139.epil, %.lr.ph.split.us.epil ], [ %indvars.iv138.epil.init, %.lr.ph.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.cs = mul nsw i64 %indvars.iv138.epil, %i.bs
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv138.epil
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !54
  %indvars.iv.next139.epil = add nuw nsw i64 %indvars.iv138.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.split.us.epil, !llvm.loop !99

.preheader:                                       ; preds = %.lr.ph.split, %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %middle.block
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !101 ; 2 uses
  %i.cx = load i32, ptr %i.bd, align 4, !tbaa !92 ; 2 uses
  %i.cy = icmp ult i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph135, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader157, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader157 ] ; 3 uses
  %i.cz = xor i64 %indvars.iv, -1
  %i.da = add nsw i64 %i.bv, %i.cz
  %i.db = mul nsw i64 %i.da, %i.bs
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.as
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split, !llvm.loop !102

.lr.ph135:                                        ; preds = %.preheader, %.lr.ph135
  %i.de = phi i32 [ %i.dl, %.lr.ph135 ], [ %i.cx, %.preheader ]
  %i.df = phi i32 [ %i.dk, %.lr.ph135 ], [ %i.cw, %.preheader ] ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dg
  %i.di = sub nuw i32 %i.de, %i.df
  %i.dj = call i32 @jpeg_write_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %i.dh, i32 noundef %i.di) #25 ; 0 uses
  %i.dk = load i32, ptr %i.cv, align 4, !tbaa !101 ; 2 uses
  %i.dl = load i32, ptr %i.bd, align 4, !tbaa !92 ; 2 uses
  %i.dm = icmp ult i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph135, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %.lr.ph135, %.preheader
  call void @jpeg_finish_compress(ptr noundef nonnull %0) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.p, %._crit_edge, %bb.o, %bb.k, %bb.i, %bb.f, %bb.d
  %i.dn = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ true, %bb.i ], [ false, %._crit_edge ], [ true, %bb.k ], [ true, %bb.p ]
  %.0108 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.o ], [ -1, %bb.i ], [ 0, %._crit_edge ], [ -1, %bb.k ], [ -1, %bb.p ]
  %.1 = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ true, %bb.i ], [ %.not127, %._crit_edge ], [ true, %bb.k ], [ true, %bb.p ]
  %.0106 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.o ], [ null, %bb.i ], [ %i.au, %._crit_edge ], [ null, %bb.k ], [ %i.au, %bb.p ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !104 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 100
  %or.cond15 = and i1 %.1, %i.dq
  br i1 %or.cond15, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !106
  call void %i.du(ptr noundef nonnull %0) #25
  %.pre = load i32, ptr %i.do, align 4, !tbaa !104
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dv = phi i32 [ %.pre, %bb.x ], [ %i.dp, %bb.w ]
  %i.dw = icmp sgt i32 %i.dv, 100
  %or.cond17 = or i1 %i.dn, %i.dw
  br i1 %or.cond17, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @jpeg_abort_compress(ptr noundef nonnull %0) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @free(ptr noundef %.0106) #25
  %i.dx = load i32, ptr %i.c, align 8, !tbaa !66
  %.not131 = icmp eq i32 %i.dx, 0
  %spec.select133 = select i1 %.not131, i32 %.0108, i32 -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.b
  %.0 = phi i32 [ %spec.select133, %bb.aa ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setCompDefaults(ptr noundef nonnull initializes((56, 64)) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.b = load i32, ptr %i.a, align 4, !tbaa !74   ; 2 uses
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr @pf2cs, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.e, ptr %i.f, align 4, !tbaa !108
  %i.g = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.c
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.h, ptr %i.i, align 8, !tbaa !109
  tail call void @jpeg_set_defaults(ptr noundef nonnull %0) #25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1900
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.l = load <2 x i32>, ptr %i.j, align 4, !tbaa !3
  store <2 x i32> %i.l, ptr %i.k, align 4, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.o = load <2 x i32>, ptr %i.m, align 4, !tbaa !3
  %i.p = trunc <2 x i32> %i.o to <2 x i16>
  store <2 x i16> %i.p, ptr %i.n, align 4, !tbaa !110
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1916
  %i.r = load i32, ptr %i.q, align 4, !tbaa !85
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 330
  store i8 %i.s, ptr %i.t, align 2, !tbaa !111
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1944
  %i.v = load i32, ptr %i.u, align 8, !tbaa !86
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !112
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  store i64 %i.x, ptr %i.aa, align 8, !tbaa !113
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !81
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1892
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !82
  tail call void @jpeg_enable_lossless(ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef %i.ag) #25
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !73
  tail call void @jpeg_set_quality(ptr noundef nonnull %0, i32 noundef %i.ai, i32 noundef 1) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !76
  %.not59 = icmp ne i32 %i.ak, 0
  %i.al = zext i1 %.not59 to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %i.al, ptr %i.am, align 8, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !49 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 5
  br i1 %i.ap, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aq = icmp eq i32 %i.b, 3
  br i1 %i.aq, label %bb.f, label %bb.e
end_hunk_0
begin_hunk_1_@tj3SaveImage8:bb.a
  %i.cl = mul nsw i32 %i.ck, %3
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0102 = phi i32 [ %i.cl, %bb.r ], [ %4, %bb.q ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aa, i64 752 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aa, i64 724 ; 3 uses
  %i.co = load i32, ptr %i.cm, align 8, !tbaa !160 ; 3 uses
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !161
  %i.cq = icmp ult i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %.0101, i64 40 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @tjPixelSize, i64 %i.aq
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = mul nsw i32 %i.ct, %3
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0101, i64 8 ; 2 uses
  %.099.fr = freeze i1 %.099
  br i1 %.099.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.cx = phi i32 [ %i.dc, %.lr.ph.split.us ], [ %i.co, %.lr.ph ]
  %.pn.in.us = mul i32 %i.cx, %.0102
  %.pn.us = zext i32 %.pn.in.us to i64
  %.0.us = getelementptr inbounds nuw i8, ptr %2, i64 %.pn.us
  %i.cy = load ptr, ptr %i.cr, align 8, !tbaa !194
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %.0.us, i64 %i.cv, i1 false)
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !195
  call void %i.da(ptr noundef nonnull %i.ac, ptr noundef nonnull %.0101, i32 noundef 1) #25
  %i.db = load i32, ptr %i.cm, align 8, !tbaa !160
  %i.dc = add i32 %i.db, 1                        ; 3 uses
  store i32 %i.dc, ptr %i.cm, align 8, !tbaa !160
  %i.dd = load i32, ptr %i.cn, align 4, !tbaa !161
  %i.de = icmp ult i32 %i.dc, %i.dd
  br i1 %i.de, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !196

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.df = phi i32 [ %i.dm, %.lr.ph.split ], [ %i.co, %.lr.ph ]
  %i.dg = xor i32 %i.df, -1
  %i.dh = add i32 %5, %i.dg
  %.pn.in = mul i32 %i.dh, %.0102
  %.pn = zext i32 %.pn.in to i64
  %.0 = getelementptr inbounds nuw i8, ptr %2, i64 %.pn
  %i.di = load ptr, ptr %i.cr, align 8, !tbaa !194
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !54
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %.0, i64 %i.cv, i1 false)
  %i.dk = load ptr, ptr %i.cw, align 8, !tbaa !195
  call void %i.dk(ptr noundef nonnull %i.ac, ptr noundef nonnull %.0101, i32 noundef 1) #25
  %i.dl = load i32, ptr %i.cm, align 8, !tbaa !160
  %i.dm = add i32 %i.dl, 1                        ; 3 uses
  store i32 %i.dm, ptr %i.cm, align 8, !tbaa !160
  %i.dn = load i32, ptr %i.cn, align 4, !tbaa !161
  %i.do = icmp ult i32 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph.split, label %._crit_edge, !llvm.loop !196

.thread.sink.split:                               ; preds = %bb.o, %bb.k
  %.str.52.sink152 = phi ptr [ @.str.52, %bb.k ], [ @.str.53, %bb.o ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.dq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dp, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SaveImage8.FUNCTION_NAME, ptr noundef nonnull %.str.52.sink152) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.dr = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ds = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dr, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SaveImage8.FUNCTION_NAME, ptr noundef nonnull %.str.52.sink152) #25 ; 0 uses
  br label %.thread

.thread134:                                       ; preds = %bb.d, %bb.g
  %.0103.ph = phi ptr [ %i.aa, %bb.g ], [ null, %bb.d ]
  call void @tj3Destroy(ptr noundef %.0103.ph)
  br label %bb.t

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.s
  %i.dt = getelementptr inbounds nuw i8, ptr %.0101, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !197
  call void %i.du(ptr noundef nonnull %i.ac, ptr noundef nonnull %.0101) #25
  br label %.thread

.thread:                                          ; preds = %bb.h, %.thread.sink.split, %._crit_edge
  %.0104131 = phi i32 [ 0, %._crit_edge ], [ -1, %.thread.sink.split ], [ -1, %bb.h ]
  call void @tj3Destroy(ptr noundef nonnull %i.aa)
  %i.dv = call i32 @fclose(ptr noundef nonnull %i.ad) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %.thread134, %tj3Init.exit.thread, %.thread, %tj3Init.exit, %bb.b
  %.098 = phi i32 [ -1, %tj3Init.exit ], [ -1, %bb.b ], [ %.0104131, %.thread ], [ -1, %.thread134 ], [ -1, %tj3Init.exit.thread ]
  ret i32 %.098
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

declare ptr @jinit_write_bmp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare ptr @jinit_write_ppm(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Compress12(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 6 uses
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.f = load i32, ptr %i.e, align 8, !tbaa !64
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.k = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %1, null
  %i.n = icmp slt i32 %2, 1
  %or.cond = or i1 %i.m, %i.n
  %i.o = icmp slt i32 %3, 0
  %or.cond3 = or i1 %or.cond, %i.o
  %i.p = icmp slt i32 %4, 1
  %or.cond5 = or i1 %or.cond3, %i.p
  %i.q = icmp ugt i32 %5, 11
  %or.cond9 = or i1 %or.cond5, %i.q
  %i.r = icmp eq ptr %6, null
  %or.cond11 = or i1 %or.cond9, %i.r
  %i.s = icmp eq ptr %7, null
  %or.cond13 = or i1 %or.cond11, %i.s
  br i1 %or.cond13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.v = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !81
  %.not123 = icmp eq i32 %i.y, 0
  br i1 %.not123, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !73
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.32) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.ae = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ae, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.32) #25 ; 0 uses
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !74
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aj, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.33) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.al = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.al, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.33) #25 ; 0 uses
  br label %bb.w

bb.l:                                             ; preds = %bb.g, %bb.j
  %i.an = icmp eq i32 %3, 0
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = zext nneg i32 %5 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @tjPixelSize, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = mul nsw i32 %i.aq, %2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0111 = phi i32 [ %i.ar, %bb.m ], [ %3, %bb.l ]
  %i.as = zext nneg i32 %4 to i64                 ; 4 uses
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = call noalias ptr @malloc(i64 noundef %i.at) #27 ; 11 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ax = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aw, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.ay = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ay, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.bb = call i32 @_setjmp(ptr noundef nonnull %i.ba) #26
  %.not125 = icmp eq i32 %i.bb, 0
  br i1 %.not125, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.bc, align 8, !tbaa !91
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store i32 %4, ptr %i.bd, align 4, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i32 12, ptr %i.be, align 8, !tbaa !93
  %i.bf = load i32, ptr %i.x, align 8, !tbaa !81
  %.not126 = icmp eq i32 %i.bf, 0
  br i1 %.not126, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !7  ; 2 uses
  %i.bi = add i32 %i.bh, -9
  %or.cond132 = icmp ult i32 %i.bi, 4
  br i1 %or.cond132, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !93
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  call fastcc void @setCompDefaults(ptr noundef %0, i32 noundef %5)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1836
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %.not127 = icmp eq i32 %i.bk, 0                 ; 2 uses
  %spec.select = zext i1 %.not127 to i32
  call void @jpeg_mem_dest_tj(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %spec.select) #25
  call void @jpeg_start_compress(ptr noundef nonnull %0, i32 noundef 1) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !68 ; 2 uses
  %.not128 = icmp eq ptr %i.bm, null
  br i1 %.not128, label %.lr.ph, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !90 ; 2 uses
  %.not129 = icmp eq i64 %i.bo, 0
  br i1 %.not129, label %.lr.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = trunc i64 %i.bo to i32
  call void @jpeg_write_icc_profile(ptr noundef nonnull %0, ptr noundef nonnull %i.bm, i32 noundef %i.bp) #25
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.u, %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !71
  %.not130 = icmp eq i32 %i.br, 0
  %i.bs = sext i32 %.0111 to i64                  ; 7 uses
  br i1 %.not130, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %i.as, 3                    ; 3 uses
  %i.bt = add nsw i32 %4, -1
  %i.bu = icmp ult i32 %i.bt, 3
  br i1 %i.bu, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %i.as, 2147483644
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bv = zext nneg i32 %4 to i64                 ; 4 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader157, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.bv, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert155 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat156 = shufflevector <2 x i64> %broadcast.splatinsert155, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.bw = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.bx = add nsw <2 x i64> %broadcast.splat, %i.bw
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.by = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.bz = mul nsw <2 x i64> %i.bx, %broadcast.splat156
  %i.ca = mul nsw <2 x i64> %i.by, %broadcast.splat156
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %1, <2 x i64> %i.bz
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %1, <2 x i64> %i.ca
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x ptr> %i.cb, ptr %i.cd, align 8, !tbaa !198
  store <2 x ptr> %i.cc, ptr %i.ce, align 8, !tbaa !198
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !200

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bv
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.preheader157

.lr.ph.split.preheader157:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv138 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next139.3, %.lr.ph.split.us ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.3, %.lr.ph.split.us ]
  %i.cg = mul nsw i64 %indvars.iv138, %i.bs
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv138
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !198
  %indvars.iv.next139 = or disjoint i64 %indvars.iv138, 1 ; 2 uses
  %i.cj = mul nsw i64 %indvars.iv.next139, %i.bs
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next139
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !198
  %indvars.iv.next139.1 = or disjoint i64 %indvars.iv138, 2 ; 2 uses
  %i.cm = mul nsw i64 %indvars.iv.next139.1, %i.bs
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next139.1
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !198
  %indvars.iv.next139.2 = or disjoint i64 %indvars.iv138, 3 ; 2 uses
  %i.cp = mul nsw i64 %indvars.iv.next139.2, %i.bs
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next139.2
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !198
  %indvars.iv.next139.3 = add nuw nsw i64 %indvars.iv138, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !201

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv138.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next139.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv138.epil = phi i64 [ %indvars.iv.next139.epil, %.lr.ph.split.us.epil ], [ %indvars.iv138.epil.init, %.lr.ph.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.cs = mul nsw i64 %indvars.iv138.epil, %i.bs
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv138.epil
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !198
  %indvars.iv.next139.epil = add nuw nsw i64 %indvars.iv138.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.split.us.epil, !llvm.loop !202

.preheader:                                       ; preds = %.lr.ph.split, %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %middle.block
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !101 ; 2 uses
  %i.cx = load i32, ptr %i.bd, align 4, !tbaa !92 ; 2 uses
  %i.cy = icmp ult i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph135, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader157, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader157 ] ; 3 uses
  %i.cz = xor i64 %indvars.iv, -1
  %i.da = add nsw i64 %i.bv, %i.cz
  %i.db = mul nsw i64 %i.da, %i.bs
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !198
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.as
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split, !llvm.loop !203

.lr.ph135:                                        ; preds = %.preheader, %.lr.ph135
  %i.de = phi i32 [ %i.dl, %.lr.ph135 ], [ %i.cx, %.preheader ]
  %i.df = phi i32 [ %i.dk, %.lr.ph135 ], [ %i.cw, %.preheader ] ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dg
  %i.di = sub nuw i32 %i.de, %i.df
  %i.dj = call i32 @jpeg12_write_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %i.dh, i32 noundef %i.di) #25 ; 0 uses
  %i.dk = load i32, ptr %i.cv, align 4, !tbaa !101 ; 2 uses
  %i.dl = load i32, ptr %i.bd, align 4, !tbaa !92 ; 2 uses
  %i.dm = icmp ult i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph135, label %._crit_edge, !llvm.loop !204

._crit_edge:                                      ; preds = %.lr.ph135, %.preheader
  call void @jpeg_finish_compress(ptr noundef nonnull %0) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.p, %._crit_edge, %bb.o, %bb.k, %bb.i, %bb.f, %bb.d
  %i.dn = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ true, %bb.i ], [ false, %._crit_edge ], [ true, %bb.k ], [ true, %bb.p ]
  %.0108 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.o ], [ -1, %bb.i ], [ 0, %._crit_edge ], [ -1, %bb.k ], [ -1, %bb.p ]
  %.1 = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ true, %bb.i ], [ %.not127, %._crit_edge ], [ true, %bb.k ], [ true, %bb.p ]
  %.0106 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.o ], [ null, %bb.i ], [ %i.au, %._crit_edge ], [ null, %bb.k ], [ %i.au, %bb.p ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !104 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 100
  %or.cond15 = and i1 %.1, %i.dq
  br i1 %or.cond15, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !106
  call void %i.du(ptr noundef nonnull %0) #25
  %.pre = load i32, ptr %i.do, align 4, !tbaa !104
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dv = phi i32 [ %.pre, %bb.x ], [ %i.dp, %bb.w ]
  %i.dw = icmp sgt i32 %i.dv, 100
  %or.cond17 = or i1 %i.dn, %i.dw
  br i1 %or.cond17, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @jpeg_abort_compress(ptr noundef nonnull %0) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @free(ptr noundef %.0106) #25
  %i.dx = load i32, ptr %i.c, align 8, !tbaa !66
  %.not131 = icmp eq i32 %i.dx, 0
  %spec.select133 = select i1 %.not131, i32 %.0108, i32 -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.b
  %.0 = phi i32 [ %spec.select133, %bb.aa ], [ -1, %bb.b ]
  ret i32 %.0
}

declare i32 @jpeg12_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Decompress12(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.my_progress_mgr, align 8    ; 6 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 9 uses
  store i32 0, ptr %i.g, align 4, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.i = load i32, ptr %i.h, align 8, !tbaa !64
  %i.j = and i32 %i.i, 2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.n = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  br label %bb.ah

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq ptr %1, null
  %i.q = icmp eq i64 %2, 0
  %or.cond = or i1 %i.p, %i.q
  %i.r = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.r
  %i.s = or i32 %5, %4
  %i.t = icmp slt i32 %i.s, 0
  %or.cond7 = or i1 %or.cond3, %i.t
  %i.u = icmp sgt i32 %5, 11
  %or.cond9 = or i1 %i.u, %or.cond7
  br i1 %or.cond9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !67
  %i.x = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.ah

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !79
  %.not193 = icmp eq i32 %i.aa, 0
  br i1 %.not193, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr @my_progress_monitor, ptr %6, align 8, !tbaa !124
end_hunk_1
begin_hunk_2_@tj3SaveImage12:bb.a
  call void %i.ch(ptr noundef nonnull %i.ac) #25
  %i.ci = icmp eq i32 %4, 0
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @tjPixelSize, i64 %i.aq
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = mul nsw i32 %i.ck, %3
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0102 = phi i32 [ %i.cl, %bb.r ], [ %4, %bb.q ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aa, i64 752 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aa, i64 724 ; 3 uses
  %i.co = load i32, ptr %i.cm, align 8, !tbaa !160 ; 3 uses
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !161
  %i.cq = icmp ult i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %.0101, i64 48 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @tjPixelSize, i64 %i.aq
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = mul nsw i32 %i.ct, %3
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 1                    ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0101, i64 8 ; 2 uses
  %.099.fr = freeze i1 %.099
  br i1 %.099.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.cy = phi i32 [ %i.dd, %.lr.ph.split.us ], [ %i.co, %.lr.ph ]
  %.pn.in.us = mul i32 %i.cy, %.0102
  %.pn.us = zext i32 %.pn.in.us to i64
  %.0.us = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.pn.us
  %i.cz = load ptr, ptr %i.cr, align 8, !tbaa !214
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !198
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.da, ptr align 2 %.0.us, i64 %i.cw, i1 false)
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !195
  call void %i.db(ptr noundef nonnull %i.ac, ptr noundef nonnull %.0101, i32 noundef 1) #25
  %i.dc = load i32, ptr %i.cm, align 8, !tbaa !160
  %i.dd = add i32 %i.dc, 1                        ; 3 uses
  store i32 %i.dd, ptr %i.cm, align 8, !tbaa !160
  %i.de = load i32, ptr %i.cn, align 4, !tbaa !161
  %i.df = icmp ult i32 %i.dd, %i.de
  br i1 %i.df, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !215

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.dg = phi i32 [ %i.dn, %.lr.ph.split ], [ %i.co, %.lr.ph ]
  %i.dh = xor i32 %i.dg, -1
  %i.di = add i32 %5, %i.dh
  %.pn.in = mul i32 %i.di, %.0102
  %.pn = zext i32 %.pn.in to i64
  %.0 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.pn
  %i.dj = load ptr, ptr %i.cr, align 8, !tbaa !214
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !198
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.dk, ptr align 2 %.0, i64 %i.cw, i1 false)
  %i.dl = load ptr, ptr %i.cx, align 8, !tbaa !195
  call void %i.dl(ptr noundef nonnull %i.ac, ptr noundef nonnull %.0101, i32 noundef 1) #25
  %i.dm = load i32, ptr %i.cm, align 8, !tbaa !160
  %i.dn = add i32 %i.dm, 1                        ; 3 uses
  store i32 %i.dn, ptr %i.cm, align 8, !tbaa !160
  %i.do = load i32, ptr %i.cn, align 4, !tbaa !161
  %i.dp = icmp ult i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph.split, label %._crit_edge, !llvm.loop !215

.thread.sink.split:                               ; preds = %bb.o, %bb.k
  %.str.52.sink152 = phi ptr [ @.str.52, %bb.k ], [ @.str.53, %bb.o ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.dr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dq, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SaveImage12.FUNCTION_NAME, ptr noundef nonnull %.str.52.sink152) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.ds = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.dt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ds, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SaveImage12.FUNCTION_NAME, ptr noundef nonnull %.str.52.sink152) #25 ; 0 uses
  br label %.thread

.thread134:                                       ; preds = %bb.d, %bb.g
  %.0103.ph = phi ptr [ %i.aa, %bb.g ], [ null, %bb.d ]
  call void @tj3Destroy(ptr noundef %.0103.ph)
  br label %bb.t

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.s
  %i.du = getelementptr inbounds nuw i8, ptr %.0101, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !197
  call void %i.dv(ptr noundef nonnull %i.ac, ptr noundef nonnull %.0101) #25
  br label %.thread

.thread:                                          ; preds = %bb.h, %.thread.sink.split, %._crit_edge
  %.0104131 = phi i32 [ 0, %._crit_edge ], [ -1, %.thread.sink.split ], [ -1, %bb.h ]
  call void @tj3Destroy(ptr noundef nonnull %i.aa)
  %i.dw = call i32 @fclose(ptr noundef nonnull %i.ad) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %.thread134, %tj3Init.exit.thread, %.thread, %tj3Init.exit, %bb.b
  %.098 = phi i32 [ -1, %tj3Init.exit ], [ -1, %bb.b ], [ %.0104131, %.thread ], [ -1, %.thread134 ], [ -1, %tj3Init.exit.thread ]
  ret i32 %.098
}

declare ptr @j12init_write_ppm(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Compress16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 6 uses
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.f = load i32, ptr %i.e, align 8, !tbaa !64
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.k = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.m = icmp eq ptr %1, null
  %i.n = icmp slt i32 %2, 1
  %or.cond = or i1 %i.m, %i.n
  %i.o = icmp slt i32 %3, 0
  %or.cond3 = or i1 %or.cond, %i.o
  %i.p = icmp slt i32 %4, 1
  %or.cond5 = or i1 %or.cond3, %i.p
  %i.q = icmp ugt i32 %5, 11
  %or.cond9 = or i1 %or.cond5, %i.q
  %i.r = icmp eq ptr %6, null
  %or.cond11 = or i1 %or.cond9, %i.r
  %i.s = icmp eq ptr %7, null
  %or.cond13 = or i1 %or.cond11, %i.s
  br i1 %or.cond13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.v = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !81
  %.not123 = icmp eq i32 %i.y, 0
  br i1 %.not123, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !73
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.32) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.ae = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ae, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.32) #25 ; 0 uses
  br label %bb.w

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !74
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aj, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.33) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.al = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.al, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.33) #25 ; 0 uses
  br label %bb.w

bb.l:                                             ; preds = %bb.g, %bb.j
  %i.an = icmp eq i32 %3, 0
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = zext nneg i32 %5 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @tjPixelSize, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.ar = mul nsw i32 %i.aq, %2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0111 = phi i32 [ %i.ar, %bb.m ], [ %3, %bb.l ]
  %i.as = zext nneg i32 %4 to i64                 ; 4 uses
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = call noalias ptr @malloc(i64 noundef %i.at) #27 ; 11 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.ax = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aw, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !67
  %i.ay = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ay, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1408
  %i.bb = call i32 @_setjmp(ptr noundef nonnull %i.ba) #26
  %.not125 = icmp eq i32 %i.bb, 0
  br i1 %.not125, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.bc, align 8, !tbaa !91
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store i32 %4, ptr %i.bd, align 4, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i32 16, ptr %i.be, align 8, !tbaa !93
  %i.bf = load i32, ptr %i.x, align 8, !tbaa !81
  %.not126 = icmp eq i32 %i.bf, 0
  br i1 %.not126, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !7  ; 2 uses
  %i.bi = add i32 %i.bh, -13
  %or.cond132 = icmp ult i32 %i.bi, 4
  br i1 %or.cond132, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.bh, ptr %i.be, align 8, !tbaa !93
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  call fastcc void @setCompDefaults(ptr noundef %0, i32 noundef %5)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1836
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72
  %.not127 = icmp eq i32 %i.bk, 0                 ; 2 uses
  %spec.select = zext i1 %.not127 to i32
  call void @jpeg_mem_dest_tj(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %spec.select) #25
  call void @jpeg_start_compress(ptr noundef nonnull %0, i32 noundef 1) #25
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !68 ; 2 uses
  %.not128 = icmp eq ptr %i.bm, null
  br i1 %.not128, label %.lr.ph, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1976
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !90 ; 2 uses
  %.not129 = icmp eq i64 %i.bo, 0
  br i1 %.not129, label %.lr.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = trunc i64 %i.bo to i32
  call void @jpeg_write_icc_profile(ptr noundef nonnull %0, ptr noundef nonnull %i.bm, i32 noundef %i.bp) #25
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %bb.u, %bb.v
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !71
  %.not130 = icmp eq i32 %i.br, 0
  %i.bs = sext i32 %.0111 to i64                  ; 7 uses
  br i1 %.not130, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %i.as, 3                    ; 3 uses
  %i.bt = add nsw i32 %4, -1
  %i.bu = icmp ult i32 %i.bt, 3
  br i1 %i.bu, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %i.as, 2147483644
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bv = zext nneg i32 %4 to i64                 ; 4 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader157, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.bv, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert155 = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat156 = shufflevector <2 x i64> %broadcast.splatinsert155, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.bw = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.bx = add nsw <2 x i64> %broadcast.splat, %i.bw
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.by = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.bz = mul nsw <2 x i64> %i.bx, %broadcast.splat156
  %i.ca = mul nsw <2 x i64> %i.by, %broadcast.splat156
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %1, <2 x i64> %i.bz
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %1, <2 x i64> %i.ca
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x ptr> %i.cb, ptr %i.cd, align 8, !tbaa !198
  store <2 x ptr> %i.cc, ptr %i.ce, align 8, !tbaa !198
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bv
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.preheader157

.lr.ph.split.preheader157:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv138 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next139.3, %.lr.ph.split.us ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.3, %.lr.ph.split.us ]
  %i.cg = mul nsw i64 %indvars.iv138, %i.bs
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv138
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !198
  %indvars.iv.next139 = or disjoint i64 %indvars.iv138, 1 ; 2 uses
  %i.cj = mul nsw i64 %indvars.iv.next139, %i.bs
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next139
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !198
  %indvars.iv.next139.1 = or disjoint i64 %indvars.iv138, 2 ; 2 uses
  %i.cm = mul nsw i64 %indvars.iv.next139.1, %i.bs
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next139.1
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !198
  %indvars.iv.next139.2 = or disjoint i64 %indvars.iv138, 3 ; 2 uses
  %i.cp = mul nsw i64 %indvars.iv.next139.2, %i.bs
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next139.2
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !198
  %indvars.iv.next139.3 = add nuw nsw i64 %indvars.iv138, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !217

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv138.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next139.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv138.epil = phi i64 [ %indvars.iv.next139.epil, %.lr.ph.split.us.epil ], [ %indvars.iv138.epil.init, %.lr.ph.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.cs = mul nsw i64 %indvars.iv138.epil, %i.bs
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv138.epil
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !198
  %indvars.iv.next139.epil = add nuw nsw i64 %indvars.iv138.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.split.us.epil, !llvm.loop !218

.preheader:                                       ; preds = %.lr.ph.split, %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %middle.block
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !101 ; 2 uses
  %i.cx = load i32, ptr %i.bd, align 4, !tbaa !92 ; 2 uses
  %i.cy = icmp ult i32 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph135, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader157, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader157 ] ; 3 uses
  %i.cz = xor i64 %indvars.iv, -1
  %i.da = add nsw i64 %i.bv, %i.cz
  %i.db = mul nsw i64 %i.da, %i.bs
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !198
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.as
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split, !llvm.loop !219

.lr.ph135:                                        ; preds = %.preheader, %.lr.ph135
  %i.de = phi i32 [ %i.dl, %.lr.ph135 ], [ %i.cx, %.preheader ]
  %i.df = phi i32 [ %i.dk, %.lr.ph135 ], [ %i.cw, %.preheader ] ; 2 uses
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.dg
  %i.di = sub nuw i32 %i.de, %i.df
  %i.dj = call i32 @jpeg16_write_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %i.dh, i32 noundef %i.di) #25 ; 0 uses
  %i.dk = load i32, ptr %i.cv, align 4, !tbaa !101 ; 2 uses
  %i.dl = load i32, ptr %i.bd, align 4, !tbaa !92 ; 2 uses
  %i.dm = icmp ult i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph135, label %._crit_edge, !llvm.loop !220

._crit_edge:                                      ; preds = %.lr.ph135, %.preheader
  call void @jpeg_finish_compress(ptr noundef nonnull %0) #25
  br label %bb.w

bb.w:                                             ; preds = %bb.p, %._crit_edge, %bb.o, %bb.k, %bb.i, %bb.f, %bb.d
  %i.dn = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ true, %bb.i ], [ false, %._crit_edge ], [ true, %bb.k ], [ true, %bb.p ]
  %.0108 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.o ], [ -1, %bb.i ], [ 0, %._crit_edge ], [ -1, %bb.k ], [ -1, %bb.p ]
  %.1 = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.o ], [ true, %bb.i ], [ %.not127, %._crit_edge ], [ true, %bb.k ], [ true, %bb.p ]
  %.0106 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.o ], [ null, %bb.i ], [ %i.au, %._crit_edge ], [ null, %bb.k ], [ %i.au, %bb.p ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !104 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 100
  %or.cond15 = and i1 %.1, %i.dq
  br i1 %or.cond15, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !105
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !106
  call void %i.du(ptr noundef nonnull %0) #25
  %.pre = load i32, ptr %i.do, align 4, !tbaa !104
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dv = phi i32 [ %.pre, %bb.x ], [ %i.dp, %bb.w ]
  %i.dw = icmp sgt i32 %i.dv, 100
  %or.cond17 = or i1 %i.dn, %i.dw
  br i1 %or.cond17, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @jpeg_abort_compress(ptr noundef nonnull %0) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  call void @free(ptr noundef %.0106) #25
  %i.dx = load i32, ptr %i.c, align 8, !tbaa !66
  %.not131 = icmp eq i32 %i.dx, 0
  %spec.select133 = select i1 %.not131, i32 %.0108, i32 -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.b
  %.0 = phi i32 [ %spec.select133, %bb.aa ], [ -1, %bb.b ]
  ret i32 %.0
}

declare i32 @jpeg16_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Decompress16(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.my_progress_mgr, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !66
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1828 ; 5 uses
  store i32 0, ptr %i.e, align 4, !tbaa !67
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1624
  %i.g = load i32, ptr %i.f, align 8, !tbaa !64
  %i.h = and i32 %i.g, 2
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !67
  %i.l = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq ptr %1, null
  %i.o = icmp eq i64 %2, 0
  %or.cond = or i1 %i.n, %i.o
  %i.p = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.p
  %i.q = or i32 %5, %4
  %i.r = icmp slt i32 %i.q, 0
  %or.cond7 = or i1 %or.cond3, %i.r
  %i.s = icmp sgt i32 %5, 11
  %or.cond9 = or i1 %i.s, %or.cond7
  br i1 %or.cond9, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1628
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !67
  %i.v = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1880
  %i.y = load i32, ptr %i.x, align 8, !tbaa !79
  %.not106 = icmp eq i32 %i.y, 0
  br i1 %.not106, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store ptr @my_progress_monitor, ptr %6, align 8, !tbaa !124
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %0, ptr %i.aa, align 8, !tbaa !128
end_hunk_2
