Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/turbojpeg?download=true
inline.NumInlined: 92
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 47
begin_hunk_0_@tjInitCompress:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1912
  store i32 2, ptr %i.l, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1548
  store i32 3001000, ptr %i.m, align 4, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1552
  store i32 7, ptr %i.n, align 8, !tbaa !56
  %i.o = tail call fastcc ptr @_tjInitCompress(ptr noundef %calloc.i)
  br label %tj3InitVersion.exit

tj3InitVersion.exit:                              ; preds = %bb.b, %bb.c
  %.034.i = phi ptr [ null, %bb.b ], [ %i.o, %bb.c ]
  ret ptr %.034.i
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
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.f = load i32, ptr %i.e, align 8, !tbaa !67
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.j = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SetICCProfile.FUNCTION_NAME, ptr noundef nonnull @.str.30) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.k = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SetICCProfile.FUNCTION_NAME, ptr noundef nonnull @.str.30) #25 ; 0 uses
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !70   ; 2 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.q = load i64, ptr %i.p, align 8, !tbaa !93
  %i.r = icmp eq i64 %2, %i.q
  br i1 %i.r, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @free(ptr noundef %i.n) #25
  store ptr null, ptr %i.m, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !93
  %i.t = icmp ne ptr %1, null
  %i.u = icmp ne i64 %2, 0
  %or.cond = and i1 %i.t, %i.u
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.v = tail call noalias ptr @malloc(i64 noundef %2) #27 ; 3 uses
  store ptr %i.v, ptr %i.m, align 8, !tbaa !70
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.y = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SetICCProfile.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.z = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.aa = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.z, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SetICCProfile.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %1, i64 %2, i1 false)
  store i64 %2, ptr %i.s, align 8, !tbaa !93
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.i, %bb.j, %bb.g, %bb.f, %bb.b
  %.027 = phi i32 [ 0, %bb.f ], [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.g ]
  ret i32 %.027
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Compress8(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 7 uses
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.f = load i32, ptr %i.e, align 8, !tbaa !67
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.30) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.k = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.30) #25 ; 0 uses
  br label %bb.x

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
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.v = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !83
  %.not128 = icmp eq i32 %i.y, 0
  br i1 %.not128, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !75
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.ae = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ae, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1804
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !76
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aj, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.32) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.al = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.al, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.32) #25 ; 0 uses
  br label %bb.x

bb.l:                                             ; preds = %bb.g, %bb.j
  %i.an = icmp eq i32 %3, 0
  %i.ao = zext nneg i32 %5 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @tjPixelSize, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !92
  %i.ar = mul nsw i32 %i.aq, %2                   ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = icmp slt i32 %3, %i.ar
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.at, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.av = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.av, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.x

bb.o:                                             ; preds = %bb.l, %bb.m
  %.0116 = phi i32 [ %3, %bb.m ], [ %i.ar, %bb.l ]
  %i.ax = zext nneg i32 %4 to i64                 ; 6 uses
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias ptr @malloc(i64 noundef %i.ay) #27 ; 11 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bb, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.bd = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bd, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress8.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.bg = call i32 @_setjmp(ptr noundef nonnull %i.bf) #26
  %.not130 = icmp eq i32 %i.bg, 0
  br i1 %.not130, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.bh, align 8, !tbaa !94
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store i32 %4, ptr %i.bi, align 4, !tbaa !95
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 8, ptr %i.bj, align 8, !tbaa !96
  %i.bk = load i32, ptr %i.x, align 8, !tbaa !83
  %.not131 = icmp eq i32 %i.bk, 0
  br i1 %.not131, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !49 ; 2 uses
  %i.bn = add i32 %i.bm, -2
  %or.cond137 = icmp ult i32 %i.bn, 7
  br i1 %or.cond137, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.bm, ptr %i.bj, align 8, !tbaa !96
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  call fastcc void @setCompDefaults(ptr noundef %0, i32 noundef %5, i32 noundef 0)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1796
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !74
  %.not132 = icmp eq i32 %i.bp, 0                 ; 2 uses
  %spec.select = zext i1 %.not132 to i32
  call void @jpeg_mem_dest_tj(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %spec.select) #25
  call void @jpeg_start_compress(ptr noundef nonnull %0, i32 noundef 1) #25
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !70 ; 2 uses
  %.not133 = icmp eq ptr %i.br, null
  br i1 %.not133, label %.lr.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !93 ; 2 uses
  %.not134 = icmp eq i64 %i.bt, 0
  br i1 %.not134, label %.lr.ph, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = trunc i64 %i.bt to i32
  call void @jpeg_write_icc_profile(ptr noundef nonnull %0, ptr noundef nonnull %i.br, i32 noundef %i.bu) #25
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.v, %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !73
  %.not135 = icmp eq i32 %i.bw, 0
  %i.bx = sext i32 %.0116 to i64                  ; 7 uses
  br i1 %.not135, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %i.ax, 3                    ; 3 uses
  %i.by = add nsw i32 %4, -1
  %i.bz = icmp ult i32 %i.by, 3
  br i1 %i.bz, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %i.ax, 2147483644
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ca = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.ax, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert160 = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat161 = shufflevector <2 x i64> %broadcast.splatinsert160, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.cb = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.cc = add nsw <2 x i64> %broadcast.splat, %i.cb
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.cd = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.ce = mul nsw <2 x i64> %i.cc, %broadcast.splat161
  %i.cf = mul nsw <2 x i64> %i.cd, %broadcast.splat161
  %wide.gep = getelementptr inbounds nuw i8, ptr %1, <2 x i64> %i.ce
  %wide.gep162 = getelementptr inbounds nuw i8, ptr %1, <2 x i64> %i.cf
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x ptr> %wide.gep, ptr %i.cg, align 8, !tbaa !57
  store <2 x ptr> %wide.gep162, ptr %i.ch, align 8, !tbaa !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ax
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.preheader163

.lr.ph.split.preheader163:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv143 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next144.3, %.lr.ph.split.us ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.3, %.lr.ph.split.us ]
  %i.cj = mul nsw i64 %indvars.iv143, %i.bx
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv143
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !57
  %indvars.iv.next144 = or disjoint i64 %indvars.iv143, 1 ; 2 uses
  %i.cm = mul nsw i64 %indvars.iv.next144, %i.bx
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next144
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !57
  %indvars.iv.next144.1 = or disjoint i64 %indvars.iv143, 2 ; 2 uses
  %i.cp = mul nsw i64 %indvars.iv.next144.1, %i.bx
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next144.1
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !57
  %indvars.iv.next144.2 = or disjoint i64 %indvars.iv143, 3 ; 2 uses
  %i.cs = mul nsw i64 %indvars.iv.next144.2, %i.bx
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next144.2
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !57
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !199

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv143.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next144.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod165 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv143.epil = phi i64 [ %indvars.iv.next144.epil, %.lr.ph.split.us.epil ], [ %indvars.iv143.epil.init, %.lr.ph.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.cv = mul nsw i64 %indvars.iv143.epil, %i.bx
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv143.epil
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !57
  %indvars.iv.next144.epil = add nuw nsw i64 %indvars.iv143.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.split.us.epil, !llvm.loop !200

.preheader:                                       ; preds = %.lr.ph.split, %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %middle.block
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !101 ; 2 uses
  %i.da = load i32, ptr %i.bi, align 4, !tbaa !95 ; 2 uses
  %i.db = icmp ult i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph140, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader163, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader163 ] ; 3 uses
  %i.dc = xor i64 %indvars.iv, -1
  %i.dd = add nsw i64 %i.ca, %i.dc
  %i.de = mul nsw i64 %i.dd, %i.bx
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 %i.de
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ax
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split, !llvm.loop !201

.lr.ph140:                                        ; preds = %.preheader, %.lr.ph140
  %i.dh = phi i32 [ %i.do, %.lr.ph140 ], [ %i.da, %.preheader ]
  %i.di = phi i32 [ %i.dn, %.lr.ph140 ], [ %i.cz, %.preheader ] ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.dj
  %i.dl = sub nuw i32 %i.dh, %i.di
  %i.dm = call i32 @jpeg_write_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %i.dk, i32 noundef %i.dl) #25 ; 0 uses
  %i.dn = load i32, ptr %i.cy, align 8, !tbaa !101 ; 2 uses
  %i.do = load i32, ptr %i.bi, align 4, !tbaa !95 ; 2 uses
  %i.dp = icmp ult i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph140, label %._crit_edge, !llvm.loop !202

._crit_edge:                                      ; preds = %.lr.ph140, %.preheader
  call void @jpeg_finish_compress(ptr noundef nonnull %0) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.q, %._crit_edge, %bb.p, %bb.n, %bb.k, %bb.i, %bb.f, %bb.d
  %i.dq = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.p ], [ true, %bb.i ], [ false, %._crit_edge ], [ true, %bb.n ], [ true, %bb.k ], [ true, %bb.q ]
  %.0112 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.p ], [ -1, %bb.i ], [ 0, %._crit_edge ], [ -1, %bb.n ], [ -1, %bb.k ], [ -1, %bb.q ]
  %.1 = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.p ], [ true, %bb.i ], [ %.not132, %._crit_edge ], [ true, %bb.n ], [ true, %bb.k ], [ true, %bb.q ]
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.p ], [ null, %bb.i ], [ %i.az, %._crit_edge ], [ null, %bb.n ], [ null, %bb.k ], [ %i.az, %bb.q ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !102 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 100
  %or.cond15 = and i1 %.1, %i.dt
  br i1 %or.cond15, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !103
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !105
  call void %i.dx(ptr noundef nonnull %0) #25
  %.pre = load i32, ptr %i.dr, align 4, !tbaa !102
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dy = phi i32 [ %.pre, %bb.y ], [ %i.ds, %bb.x ]
  %i.dz = icmp sgt i32 %i.dy, 100
  %or.cond17 = or i1 %i.dq, %i.dz
  br i1 %or.cond17, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @jpeg_abort_compress(ptr noundef nonnull %0) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @free(ptr noundef %.0) #25
  %i.ea = load i32, ptr %i.c, align 8, !tbaa !68
  %.not136 = icmp eq i32 %i.ea, 0
  %spec.select138 = select i1 %.not136, i32 %.0112, i32 -1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.b
  %.0115 = phi i32 [ %spec.select138, %bb.ab ], [ -1, %bb.b ]
  ret i32 %.0115
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setCompDefaults(ptr noundef nonnull initializes((56, 64)) %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i32 %2, 0                        ; 2 uses
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1820
  %i.c = load i32, ptr %i.b, align 4, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]   ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr @pf2cs, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.g, ptr %i.h, align 4, !tbaa !203
  %i.i = getelementptr inbounds [4 x i8], ptr @tjPixelSize, i64 %i.e
  %i.j = load i32, ptr %i.i, align 4, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.j, ptr %i.k, align 8, !tbaa !204
  tail call void @jpeg_set_defaults(ptr noundef nonnull %0) #25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.n = load <2 x i32>, ptr %i.l, align 4, !tbaa !92
  store <2 x i32> %i.n, ptr %i.m, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1868
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.q = load <2 x i32>, ptr %i.o, align 4, !tbaa !92
  %i.r = trunc <2 x i32> %i.q to <2 x i16>
  store <2 x i16> %i.r, ptr %i.p, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1876
  %i.t = load i32, ptr %i.s, align 4, !tbaa !87
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 294
  store i8 %i.u, ptr %i.v, align 2, !tbaa !205
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.x = load i32, ptr %i.w, align 8, !tbaa !88
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !206
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  store i64 %i.z, ptr %i.ac, align 8, !tbaa !108
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1848
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !83
  %i.af = icmp eq i32 %i.ae, 0
  %or.cond = or i1 %i.a, %i.af
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1852
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !84
  tail call void @jpeg_enable_lossless(ptr noundef nonnull %0, i32 noundef %i.ah, i32 noundef %i.aj) #25
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !75
  tail call void @jpeg_set_quality(ptr noundef nonnull %0, i32 noundef %i.al, i32 noundef 1) #25
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1828
  %i.an = load i32, ptr %i.am, align 4, !tbaa !78
  %.not = icmp ne i32 %i.an, 0
  %i.ao = zext i1 %.not to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !207
  %i.aq = icmp ult i32 %i.d, 5
  br i1 %i.aq, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1804
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !76
  %i.at = icmp eq i32 %i.as, 3
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = icmp eq i32 %1, 11
  %. = select i1 %i.au, i32 5, i32 3
  br label %bb.h

switch.lookup:                                    ; preds = %bb.e
  %i.av = zext nneg i32 %i.d to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.setCompDefaults, i64 %i.av
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %bb.g, %bb.f
  %.sink = phi i32 [ %switch.ext, %switch.lookup ], [ 1, %bb.f ], [ %., %bb.g ]
  tail call void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef %.sink) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !208
  %i.ay = icmp eq i32 %i.ax, 8
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !79
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !209
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1836
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !80
  %.not60 = icmp eq i32 %i.bd, 0
  br i1 %.not60, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @jpeg_simple_progression(ptr noundef nonnull %0) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !82
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !210
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1804
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !76
  %i.bj = sext i32 %i.bi to i64                   ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr @tjMCUWidth, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !92
  %i.bm = sdiv i32 %i.bl, 8                       ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !211 ; 11 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 %i.bm, ptr %i.bp, align 8, !tbaa !110
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 104
  store i32 1, ptr %i.bq, align 8, !tbaa !110
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 200
  store i32 1, ptr %i.br, align 8, !tbaa !110
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !212
  %i.bu = icmp sgt i32 %i.bt, 3
  br i1 %i.bu, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@tj3SaveImage8:bb.a
  br i1 %i.dm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z
  %.0130.fr = freeze i32 %.0130
  %.not165 = icmp eq i32 %.0130.fr, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %.0132, i64 48 ; 2 uses
  %i.do = mul nsw i32 %i.df, %3
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0132, i64 16 ; 2 uses
  br i1 %.not165, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.dr = phi i32 [ %i.dw, %.lr.ph.split.us ], [ %i.dk, %.lr.ph ]
  %.pn.in.us = mul i32 %i.dr, %.0136
  %.pn.us = zext i32 %.pn.in.us to i64
  %.0.us = getelementptr inbounds nuw i8, ptr %2, i64 %.pn.us
  %i.ds = load ptr, ptr %i.dn, align 8, !tbaa !226
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dt, ptr align 1 %.0.us, i64 %i.dp, i1 false)
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !173
  call void %i.du(ptr noundef nonnull %i.ae, ptr noundef nonnull %.0132, i32 noundef 1) #25
  %i.dv = load i32, ptr %i.di, align 8, !tbaa !144
  %i.dw = add i32 %i.dv, 1                        ; 3 uses
  store i32 %i.dw, ptr %i.di, align 8, !tbaa !144
  %i.dx = load i32, ptr %i.dj, align 4, !tbaa !145
  %i.dy = icmp ult i32 %i.dw, %i.dx
  br i1 %i.dy, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !225

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.dz = phi i32 [ %i.eg, %.lr.ph.split ], [ %i.dk, %.lr.ph ]
  %i.ea = xor i32 %i.dz, -1
  %i.eb = add i32 %5, %i.ea
  %.pn.in = mul i32 %i.eb, %.0136
  %.pn = zext i32 %.pn.in to i64
  %.0 = getelementptr inbounds nuw i8, ptr %2, i64 %.pn
  %i.ec = load ptr, ptr %i.dn, align 8, !tbaa !226
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr align 1 %.0, i64 %i.dp, i1 false)
  %i.ee = load ptr, ptr %i.dq, align 8, !tbaa !173
  call void %i.ee(ptr noundef nonnull %i.ae, ptr noundef nonnull %.0132, i32 noundef 1) #25
  %i.ef = load i32, ptr %i.di, align 8, !tbaa !144
  %i.eg = add i32 %i.ef, 1                        ; 3 uses
  store i32 %i.eg, ptr %i.di, align 8, !tbaa !144
  %i.eh = load i32, ptr %i.dj, align 4, !tbaa !145
  %i.ei = icmp ult i32 %i.eg, %i.eh
  br i1 %i.ei, label %.lr.ph.split, label %._crit_edge, !llvm.loop !225

.thread172.sink.split:                            ; preds = %bb.y, %bb.v, %bb.t, %bb.p, %bb.k
  %.str.45.sink202 = phi ptr [ @.str.47, %bb.p ], [ @.str.2, %bb.t ], [ @.str.48, %bb.v ], [ @.str.45, %bb.k ], [ @.str.1, %bb.y ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.ek = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ej, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SaveImage8.FUNCTION_NAME, ptr noundef nonnull %.str.45.sink202) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.el = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.em = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.el, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SaveImage8.FUNCTION_NAME, ptr noundef nonnull %.str.45.sink202) #25 ; 0 uses
  br label %.thread172

.thread180:                                       ; preds = %bb.d, %bb.g
  %.0133.ph = phi ptr [ %i.ac, %bb.g ], [ null, %bb.d ]
  call void @tj3Destroy(ptr noundef %.0133.ph)
  br label %bb.aa

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.z
  %i.en = getelementptr inbounds nuw i8, ptr %.0132, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !174
  call void %i.eo(ptr noundef nonnull %i.ae, ptr noundef nonnull %.0132) #25
  br label %.thread172

.thread172:                                       ; preds = %bb.h, %.thread172.sink.split, %._crit_edge
  %.2177 = phi i32 [ 0, %._crit_edge ], [ -1, %.thread172.sink.split ], [ -1, %bb.h ]
  call void @tj3Destroy(ptr noundef nonnull %i.ac)
  %i.ep = call i32 @fclose(ptr noundef nonnull %i.af) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.thread180, %tj3InitVersion.exit.thread, %.thread172, %tj3InitVersion.exit, %bb.b
  %.0135 = phi i32 [ -1, %tj3InitVersion.exit ], [ -1, %bb.b ], [ %.2177, %.thread172 ], [ -1, %.thread180 ], [ -1, %tj3InitVersion.exit.thread ]
  ret i32 %.0135
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

declare ptr @jinit_write_bmp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare ptr @jinit_write_png(ptr noundef) local_unnamed_addr #7

declare ptr @jinit_write_ppm(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Compress12(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 7 uses
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.f = load i32, ptr %i.e, align 8, !tbaa !67
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.30) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.k = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.30) #25 ; 0 uses
  br label %bb.x

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
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.v = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !83
  %.not128 = icmp eq i32 %i.y, 0
  br i1 %.not128, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !75
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.ae = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ae, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1804
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !76
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aj, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.32) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.al = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.al, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.32) #25 ; 0 uses
  br label %bb.x

bb.l:                                             ; preds = %bb.g, %bb.j
  %i.an = icmp eq i32 %3, 0
  %i.ao = zext nneg i32 %5 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @tjPixelSize, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !92
  %i.ar = mul nsw i32 %i.aq, %2                   ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = icmp slt i32 %3, %i.ar
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.at, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.av = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.av, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.x

bb.o:                                             ; preds = %bb.l, %bb.m
  %.0116 = phi i32 [ %3, %bb.m ], [ %i.ar, %bb.l ]
  %i.ax = zext nneg i32 %4 to i64                 ; 6 uses
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias ptr @malloc(i64 noundef %i.ay) #27 ; 11 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bb, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.bd = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bd, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress12.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.bg = call i32 @_setjmp(ptr noundef nonnull %i.bf) #26
  %.not130 = icmp eq i32 %i.bg, 0
  br i1 %.not130, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.bh, align 8, !tbaa !94
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store i32 %4, ptr %i.bi, align 4, !tbaa !95
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 12, ptr %i.bj, align 8, !tbaa !96
  %i.bk = load i32, ptr %i.x, align 8, !tbaa !83
  %.not131 = icmp eq i32 %i.bk, 0
  br i1 %.not131, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !49 ; 2 uses
  %i.bn = add i32 %i.bm, -9
  %or.cond137 = icmp ult i32 %i.bn, 4
  br i1 %or.cond137, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.bm, ptr %i.bj, align 8, !tbaa !96
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  call fastcc void @setCompDefaults(ptr noundef %0, i32 noundef %5, i32 noundef 0)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1796
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !74
  %.not132 = icmp eq i32 %i.bp, 0                 ; 2 uses
  %spec.select = zext i1 %.not132 to i32
  call void @jpeg_mem_dest_tj(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %spec.select) #25
  call void @jpeg_start_compress(ptr noundef nonnull %0, i32 noundef 1) #25
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !70 ; 2 uses
  %.not133 = icmp eq ptr %i.br, null
  br i1 %.not133, label %.lr.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !93 ; 2 uses
  %.not134 = icmp eq i64 %i.bt, 0
  br i1 %.not134, label %.lr.ph, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = trunc i64 %i.bt to i32
  call void @jpeg_write_icc_profile(ptr noundef nonnull %0, ptr noundef nonnull %i.br, i32 noundef %i.bu) #25
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.v, %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !73
  %.not135 = icmp eq i32 %i.bw, 0
  %i.bx = sext i32 %.0116 to i64                  ; 7 uses
  br i1 %.not135, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %i.ax, 3                    ; 3 uses
  %i.by = add nsw i32 %4, -1
  %i.bz = icmp ult i32 %i.by, 3
  br i1 %i.bz, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %i.ax, 2147483644
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ca = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.ax, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert160 = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat161 = shufflevector <2 x i64> %broadcast.splatinsert160, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.cb = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.cc = add nsw <2 x i64> %broadcast.splat, %i.cb
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.cd = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.ce = mul nsw <2 x i64> %i.cc, %broadcast.splat161
  %i.cf = mul nsw <2 x i64> %i.cd, %broadcast.splat161
  %wide.gep = getelementptr inbounds nuw [2 x i8], ptr %1, <2 x i64> %i.ce
  %wide.gep162 = getelementptr inbounds nuw [2 x i8], ptr %1, <2 x i64> %i.cf
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x ptr> %wide.gep, ptr %i.cg, align 8, !tbaa !176
  store <2 x ptr> %wide.gep162, ptr %i.ch, align 8, !tbaa !176
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !227

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ax
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.preheader163

.lr.ph.split.preheader163:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv143 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next144.3, %.lr.ph.split.us ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.3, %.lr.ph.split.us ]
  %i.cj = mul nsw i64 %indvars.iv143, %i.bx
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv143
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !176
  %indvars.iv.next144 = or disjoint i64 %indvars.iv143, 1 ; 2 uses
  %i.cm = mul nsw i64 %indvars.iv.next144, %i.bx
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next144
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !176
  %indvars.iv.next144.1 = or disjoint i64 %indvars.iv143, 2 ; 2 uses
  %i.cp = mul nsw i64 %indvars.iv.next144.1, %i.bx
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next144.1
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !176
  %indvars.iv.next144.2 = or disjoint i64 %indvars.iv143, 3 ; 2 uses
  %i.cs = mul nsw i64 %indvars.iv.next144.2, %i.bx
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next144.2
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !176
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !228

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv143.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next144.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod165 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv143.epil = phi i64 [ %indvars.iv.next144.epil, %.lr.ph.split.us.epil ], [ %indvars.iv143.epil.init, %.lr.ph.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.cv = mul nsw i64 %indvars.iv143.epil, %i.bx
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv143.epil
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !176
  %indvars.iv.next144.epil = add nuw nsw i64 %indvars.iv143.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.split.us.epil, !llvm.loop !229

.preheader:                                       ; preds = %.lr.ph.split, %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %middle.block
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !101 ; 2 uses
  %i.da = load i32, ptr %i.bi, align 4, !tbaa !95 ; 2 uses
  %i.db = icmp ult i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph140, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader163, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader163 ] ; 3 uses
  %i.dc = xor i64 %indvars.iv, -1
  %i.dd = add nsw i64 %i.ca, %i.dc
  %i.de = mul nsw i64 %i.dd, %i.bx
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.de
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ax
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split, !llvm.loop !230

.lr.ph140:                                        ; preds = %.preheader, %.lr.ph140
  %i.dh = phi i32 [ %i.do, %.lr.ph140 ], [ %i.da, %.preheader ]
  %i.di = phi i32 [ %i.dn, %.lr.ph140 ], [ %i.cz, %.preheader ] ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.dj
  %i.dl = sub nuw i32 %i.dh, %i.di
  %i.dm = call i32 @jpeg12_write_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %i.dk, i32 noundef %i.dl) #25 ; 0 uses
  %i.dn = load i32, ptr %i.cy, align 8, !tbaa !101 ; 2 uses
  %i.do = load i32, ptr %i.bi, align 4, !tbaa !95 ; 2 uses
  %i.dp = icmp ult i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph140, label %._crit_edge, !llvm.loop !231

._crit_edge:                                      ; preds = %.lr.ph140, %.preheader
  call void @jpeg_finish_compress(ptr noundef nonnull %0) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.q, %._crit_edge, %bb.p, %bb.n, %bb.k, %bb.i, %bb.f, %bb.d
  %i.dq = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.p ], [ true, %bb.i ], [ false, %._crit_edge ], [ true, %bb.n ], [ true, %bb.k ], [ true, %bb.q ]
  %.0112 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.p ], [ -1, %bb.i ], [ 0, %._crit_edge ], [ -1, %bb.n ], [ -1, %bb.k ], [ -1, %bb.q ]
  %.1 = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.p ], [ true, %bb.i ], [ %.not132, %._crit_edge ], [ true, %bb.n ], [ true, %bb.k ], [ true, %bb.q ]
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.p ], [ null, %bb.i ], [ %i.az, %._crit_edge ], [ null, %bb.n ], [ null, %bb.k ], [ %i.az, %bb.q ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !102 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 100
  %or.cond15 = and i1 %.1, %i.dt
  br i1 %or.cond15, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !103
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !105
  call void %i.dx(ptr noundef nonnull %0) #25
  %.pre = load i32, ptr %i.dr, align 4, !tbaa !102
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dy = phi i32 [ %.pre, %bb.y ], [ %i.ds, %bb.x ]
  %i.dz = icmp sgt i32 %i.dy, 100
  %or.cond17 = or i1 %i.dq, %i.dz
  br i1 %or.cond17, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @jpeg_abort_compress(ptr noundef nonnull %0) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @free(ptr noundef %.0) #25
  %i.ea = load i32, ptr %i.c, align 8, !tbaa !68
  %.not136 = icmp eq i32 %i.ea, 0
  %spec.select138 = select i1 %.not136, i32 %.0112, i32 -1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.b
  %.0115 = phi i32 [ %spec.select138, %bb.ab ], [ -1, %bb.b ]
  ret i32 %.0115
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
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  store i32 0, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 10 uses
  store i32 0, ptr %i.g, align 4, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.i = load i32, ptr %i.h, align 8, !tbaa !67
  %i.j = and i32 %i.i, 2
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.33) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !69
  %i.n = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.33) #25 ; 0 uses
  br label %bb.ak

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
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !69
  %i.x = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.ak

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !81
  %.not201 = icmp eq i32 %i.aa, 0
  br i1 %.not201, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr @my_progress_monitor, ptr %6, align 8, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %0, ptr %i.ac, align 8, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi ptr [ %6, %bb.h ], [ null, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %.sink, ptr %i.ad, align 8, !tbaa !117
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !88
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !118
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !108
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.am = call i32 @_setjmp(ptr noundef nonnull %i.al) #26
  %.not202 = icmp eq i32 %i.am, 0
  br i1 %.not202, label %bb.j, label %bb.ak

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !119
  %i.ap = icmp slt i32 %i.ao, 202
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @jpeg_mem_src_tj(ptr noundef nonnull %i.e, ptr noundef nonnull %1, i64 noundef %2) #25
  %i.aq = call i32 @jpeg_read_header(ptr noundef nonnull %i.e, i32 noundef 1) #25 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = call fastcc i32 @getSubsamp(ptr noundef nonnull %0)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1804
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !76
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.au = load i32, ptr %i.at, align 8, !tbaa !120 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1808
  store i32 %i.au, ptr %i.av, align 8, !tbaa !90
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !121 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1812
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !91
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !122 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1816
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !123
  %switch.tableidx = add i32 %i.bd, -1            ; 2 uses
  %i.be = icmp ult i32 %switch.tableidx, 5
  br i1 %i.be, label %switch.lookup, label %setDecompParameters.exit

switch.lookup:                                    ; preds = %bb.l
  %i.bf = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.tj3DecompressToYUV8, i64 %i.bf
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %setDecompParameters.exit

setDecompParameters.exit:                         ; preds = %bb.l, %switch.lookup
  %.sink.i = phi i32 [ %switch.ext, %switch.lookup ], [ -1, %bb.l ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1820
  store i32 %.sink.i, ptr %i.bg, align 4, !tbaa !50
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !124
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1836
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !80
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 836
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !125
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1844
end_hunk_1
begin_hunk_2_@tj3SaveImage12:bb.a
bb.z:                                             ; preds = %bb.x, %bb.y
  %.0136 = phi i32 [ %4, %bb.y ], [ %i.dg, %bb.x ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 688 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ac, i64 660 ; 3 uses
  %i.dk = load i32, ptr %i.di, align 8, !tbaa !144 ; 3 uses
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !145
  %i.dm = icmp ult i32 %i.dk, %i.dl
  br i1 %i.dm, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.z
  %.0130.fr = freeze i32 %.0130
  %.not165 = icmp eq i32 %.0130.fr, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %.0132, i64 56 ; 2 uses
  %i.do = mul nsw i32 %i.df, %3
  %i.dp = sext i32 %i.do to i64
  %i.dq = shl nsw i64 %i.dp, 1                    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0132, i64 16 ; 2 uses
  br i1 %.not165, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %i.ds = phi i32 [ %i.dx, %.lr.ph.split.us ], [ %i.dk, %.lr.ph ]
  %.pn.in.us = mul i32 %i.ds, %.0136
  %.pn.us = zext i32 %.pn.in.us to i64
  %.0.us = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.pn.us
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !242
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !176
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.du, ptr align 2 %.0.us, i64 %i.dq, i1 false)
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !173
  call void %i.dv(ptr noundef nonnull %i.ae, ptr noundef nonnull %.0132, i32 noundef 1) #25
  %i.dw = load i32, ptr %i.di, align 8, !tbaa !144
  %i.dx = add i32 %i.dw, 1                        ; 3 uses
  store i32 %i.dx, ptr %i.di, align 8, !tbaa !144
  %i.dy = load i32, ptr %i.dj, align 4, !tbaa !145
  %i.dz = icmp ult i32 %i.dx, %i.dy
  br i1 %i.dz, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !241

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %i.ea = phi i32 [ %i.eh, %.lr.ph.split ], [ %i.dk, %.lr.ph ]
  %i.eb = xor i32 %i.ea, -1
  %i.ec = add i32 %5, %i.eb
  %.pn.in = mul i32 %i.ec, %.0136
  %.pn = zext i32 %.pn.in to i64
  %.0 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.pn
  %i.ed = load ptr, ptr %i.dn, align 8, !tbaa !242
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !176
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ee, ptr align 2 %.0, i64 %i.dq, i1 false)
  %i.ef = load ptr, ptr %i.dr, align 8, !tbaa !173
  call void %i.ef(ptr noundef nonnull %i.ae, ptr noundef nonnull %.0132, i32 noundef 1) #25
  %i.eg = load i32, ptr %i.di, align 8, !tbaa !144
  %i.eh = add i32 %i.eg, 1                        ; 3 uses
  store i32 %i.eh, ptr %i.di, align 8, !tbaa !144
  %i.ei = load i32, ptr %i.dj, align 4, !tbaa !145
  %i.ej = icmp ult i32 %i.eh, %i.ei
  br i1 %i.ej, label %.lr.ph.split, label %._crit_edge, !llvm.loop !241

.thread172.sink.split:                            ; preds = %bb.y, %bb.v, %bb.t, %bb.p, %bb.k
  %.str.45.sink202 = phi ptr [ @.str.47, %bb.p ], [ @.str.2, %bb.t ], [ @.str.48, %bb.v ], [ @.str.45, %bb.k ], [ @.str.1, %bb.y ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.el = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ek, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SaveImage12.FUNCTION_NAME, ptr noundef nonnull %.str.45.sink202) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.em = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.en = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.em, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3SaveImage12.FUNCTION_NAME, ptr noundef nonnull %.str.45.sink202) #25 ; 0 uses
  br label %.thread172

.thread180:                                       ; preds = %bb.d, %bb.g
  %.0133.ph = phi ptr [ %i.ac, %bb.g ], [ null, %bb.d ]
  call void @tj3Destroy(ptr noundef %.0133.ph)
  br label %bb.aa

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.z
  %i.eo = getelementptr inbounds nuw i8, ptr %.0132, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !174
  call void %i.ep(ptr noundef nonnull %i.ae, ptr noundef nonnull %.0132) #25
  br label %.thread172

.thread172:                                       ; preds = %bb.h, %.thread172.sink.split, %._crit_edge
  %.2177 = phi i32 [ 0, %._crit_edge ], [ -1, %.thread172.sink.split ], [ -1, %bb.h ]
  call void @tj3Destroy(ptr noundef nonnull %i.ac)
  %i.eq = call i32 @fclose(ptr noundef nonnull %i.af) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.thread180, %tj3InitVersion.exit.thread, %.thread172, %tj3InitVersion.exit, %bb.b
  %.0135 = phi i32 [ -1, %tj3InitVersion.exit ], [ -1, %bb.b ], [ %.2177, %.thread172 ], [ -1, %.thread180 ], [ -1, %tj3InitVersion.exit.thread ]
  ret i32 %.0135
}

declare ptr @j12init_write_png(ptr noundef) local_unnamed_addr #7

declare ptr @j12init_write_ppm(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Compress16(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 7 uses
  store i32 0, ptr %i.d, align 4, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.f = load i32, ptr %i.e, align 8, !tbaa !67
  %i.g = and i32 %i.f, 1
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.30) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.k = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.30) #25 ; 0 uses
  br label %bb.x

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
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.v = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !83
  %.not128 = icmp eq i32 %i.y, 0
  br i1 %.not128, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !75
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.ae = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.af = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ae, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.31) #25 ; 0 uses
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1804
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !76
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.ak = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aj, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.32) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.al = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.am = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.al, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.32) #25 ; 0 uses
  br label %bb.x

bb.l:                                             ; preds = %bb.g, %bb.j
  %i.an = icmp eq i32 %3, 0
  %i.ao = zext nneg i32 %5 to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @tjPixelSize, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !92
  %i.ar = mul nsw i32 %i.aq, %2                   ; 2 uses
  br i1 %i.an, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = icmp slt i32 %3, %i.ar
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.at, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.av = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.av, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.x

bb.o:                                             ; preds = %bb.l, %bb.m
  %.0116 = phi i32 [ %3, %bb.m ], [ %i.ar, %bb.l ]
  %i.ax = zext nneg i32 %4 to i64                 ; 6 uses
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = call noalias ptr @malloc(i64 noundef %i.ay) #27 ; 11 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bb, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.bd = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bd, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Compress16.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.bg = call i32 @_setjmp(ptr noundef nonnull %i.bf) #26
  %.not130 = icmp eq i32 %i.bg, 0
  br i1 %.not130, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %2, ptr %i.bh, align 8, !tbaa !94
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store i32 %4, ptr %i.bi, align 4, !tbaa !95
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i32 16, ptr %i.bj, align 8, !tbaa !96
  %i.bk = load i32, ptr %i.x, align 8, !tbaa !83
  %.not131 = icmp eq i32 %i.bk, 0
  br i1 %.not131, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !49 ; 2 uses
  %i.bn = add i32 %i.bm, -13
  %or.cond137 = icmp ult i32 %i.bn, 4
  br i1 %or.cond137, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 %i.bm, ptr %i.bj, align 8, !tbaa !96
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  call fastcc void @setCompDefaults(ptr noundef %0, i32 noundef %5, i32 noundef 0)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1796
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !74
  %.not132 = icmp eq i32 %i.bp, 0                 ; 2 uses
  %spec.select = zext i1 %.not132 to i32
  call void @jpeg_mem_dest_tj(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %spec.select) #25
  call void @jpeg_start_compress(ptr noundef nonnull %0, i32 noundef 1) #25
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !70 ; 2 uses
  %.not133 = icmp eq ptr %i.br, null
  br i1 %.not133, label %.lr.ph, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !93 ; 2 uses
  %.not134 = icmp eq i64 %i.bt, 0
  br i1 %.not134, label %.lr.ph, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = trunc i64 %i.bt to i32
  call void @jpeg_write_icc_profile(ptr noundef nonnull %0, ptr noundef nonnull %i.br, i32 noundef %i.bu) #25
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.v, %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !73
  %.not135 = icmp eq i32 %i.bw, 0
  %i.bx = sext i32 %.0116 to i64                  ; 7 uses
  br i1 %.not135, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %i.ax, 3                    ; 3 uses
  %i.by = add nsw i32 %4, -1
  %i.bz = icmp ult i32 %i.by, 3
  br i1 %i.bz, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %i.ax, 2147483644
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ca = zext nneg i32 %4 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.ax, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert160 = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat161 = shufflevector <2 x i64> %broadcast.splatinsert160, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.cb = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.cc = add nsw <2 x i64> %broadcast.splat, %i.cb
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.cd = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.ce = mul nsw <2 x i64> %i.cc, %broadcast.splat161
  %i.cf = mul nsw <2 x i64> %i.cd, %broadcast.splat161
  %wide.gep = getelementptr inbounds nuw [2 x i8], ptr %1, <2 x i64> %i.ce
  %wide.gep162 = getelementptr inbounds nuw [2 x i8], ptr %1, <2 x i64> %i.cf
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x ptr> %wide.gep, ptr %i.cg, align 8, !tbaa !176
  store <2 x ptr> %wide.gep162, ptr %i.ch, align 8, !tbaa !176
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ax
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.preheader163

.lr.ph.split.preheader163:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv143 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next144.3, %.lr.ph.split.us ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.3, %.lr.ph.split.us ]
  %i.cj = mul nsw i64 %indvars.iv143, %i.bx
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv143
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !176
  %indvars.iv.next144 = or disjoint i64 %indvars.iv143, 1 ; 2 uses
  %i.cm = mul nsw i64 %indvars.iv.next144, %i.bx
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cm
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next144
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !176
  %indvars.iv.next144.1 = or disjoint i64 %indvars.iv143, 2 ; 2 uses
  %i.cp = mul nsw i64 %indvars.iv.next144.1, %i.bx
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cp
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next144.1
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !176
  %indvars.iv.next144.2 = or disjoint i64 %indvars.iv143, 3 ; 2 uses
  %i.cs = mul nsw i64 %indvars.iv.next144.2, %i.bx
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next144.2
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !176
  %indvars.iv.next144.3 = add nuw nsw i64 %indvars.iv143, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !244

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv143.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next144.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod165 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod165)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv143.epil = phi i64 [ %indvars.iv.next144.epil, %.lr.ph.split.us.epil ], [ %indvars.iv143.epil.init, %.lr.ph.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.cv = mul nsw i64 %indvars.iv143.epil, %i.bx
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv143.epil
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !176
  %indvars.iv.next144.epil = add nuw nsw i64 %indvars.iv143.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.split.us.epil, !llvm.loop !245

.preheader:                                       ; preds = %.lr.ph.split, %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %middle.block
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !101 ; 2 uses
  %i.da = load i32, ptr %i.bi, align 4, !tbaa !95 ; 2 uses
  %i.db = icmp ult i32 %i.cz, %i.da
  br i1 %i.db, label %.lr.ph140, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader163, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader163 ] ; 3 uses
  %i.dc = xor i64 %indvars.iv, -1
  %i.dd = add nsw i64 %i.ca, %i.dc
  %i.de = mul nsw i64 %i.dd, %i.bx
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.de
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ax
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split, !llvm.loop !246

.lr.ph140:                                        ; preds = %.preheader, %.lr.ph140
  %i.dh = phi i32 [ %i.do, %.lr.ph140 ], [ %i.da, %.preheader ]
  %i.di = phi i32 [ %i.dn, %.lr.ph140 ], [ %i.cz, %.preheader ] ; 2 uses
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.dj
  %i.dl = sub nuw i32 %i.dh, %i.di
  %i.dm = call i32 @jpeg16_write_scanlines(ptr noundef nonnull %0, ptr noundef nonnull %i.dk, i32 noundef %i.dl) #25 ; 0 uses
  %i.dn = load i32, ptr %i.cy, align 8, !tbaa !101 ; 2 uses
  %i.do = load i32, ptr %i.bi, align 4, !tbaa !95 ; 2 uses
  %i.dp = icmp ult i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph140, label %._crit_edge, !llvm.loop !247

._crit_edge:                                      ; preds = %.lr.ph140, %.preheader
  call void @jpeg_finish_compress(ptr noundef nonnull %0) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.q, %._crit_edge, %bb.p, %bb.n, %bb.k, %bb.i, %bb.f, %bb.d
  %i.dq = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.p ], [ true, %bb.i ], [ false, %._crit_edge ], [ true, %bb.n ], [ true, %bb.k ], [ true, %bb.q ]
  %.0112 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.p ], [ -1, %bb.i ], [ 0, %._crit_edge ], [ -1, %bb.n ], [ -1, %bb.k ], [ -1, %bb.q ]
  %.1 = phi i1 [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.p ], [ true, %bb.i ], [ %.not132, %._crit_edge ], [ true, %bb.n ], [ true, %bb.k ], [ true, %bb.q ]
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.p ], [ null, %bb.i ], [ %i.az, %._crit_edge ], [ null, %bb.n ], [ null, %bb.k ], [ %i.az, %bb.q ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !102 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 100
  %or.cond15 = and i1 %.1, %i.dt
  br i1 %or.cond15, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !103
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !105
  call void %i.dx(ptr noundef nonnull %0) #25
  %.pre = load i32, ptr %i.dr, align 4, !tbaa !102
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dy = phi i32 [ %.pre, %bb.y ], [ %i.ds, %bb.x ]
  %i.dz = icmp sgt i32 %i.dy, 100
  %or.cond17 = or i1 %i.dq, %i.dz
  br i1 %or.cond17, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @jpeg_abort_compress(ptr noundef nonnull %0) #25
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @free(ptr noundef %.0) #25
  %i.ea = load i32, ptr %i.c, align 8, !tbaa !68
  %.not136 = icmp eq i32 %i.ea, 0
  %spec.select138 = select i1 %.not136, i32 %.0112, i32 -1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.b
  %.0115 = phi i32 [ %spec.select138, %bb.ab ], [ -1, %bb.b ]
  ret i32 %.0115
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
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 6 uses
  store i32 0, ptr %i.e, align 4, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.g = load i32, ptr %i.f, align 8, !tbaa !67
  %i.h = and i32 %i.g, 2
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.33) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.l = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.33) #25 ; 0 uses
  br label %bb.t

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
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.v = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.y = load i32, ptr %i.x, align 8, !tbaa !81
  %.not111 = icmp eq i32 %i.y, 0
  br i1 %.not111, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store ptr @my_progress_monitor, ptr %6, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %0, ptr %i.aa, align 8, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi ptr [ %6, %bb.h ], [ null, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %.sink, ptr %i.ab, align 8, !tbaa !117
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !88
  %i.ae = sext i32 %i.ad to i64
  %i.af = shl nsw i64 %i.ae, 20
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !118
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store i64 %i.af, ptr %i.ai, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.ak = call i32 @_setjmp(ptr noundef nonnull %i.aj) #26
  %.not112 = icmp eq i32 %i.ak, 0
  br i1 %.not112, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.am = load i32, ptr %i.al, align 4, !tbaa !119
  %i.an = icmp slt i32 %i.am, 202
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @jpeg_mem_src_tj(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef %2) #25
  %i.ao = call i32 @jpeg_read_header(ptr noundef nonnull %i.c, i32 noundef 1) #25 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = call fastcc i32 @getSubsamp(ptr noundef nonnull %0)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1804
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !76
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !120 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1808
  store i32 %i.as, ptr %i.at, align 8, !tbaa !90
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.av = load i32, ptr %i.au, align 4, !tbaa !121 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1812
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !91
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !122
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1816
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !49
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !123
  %switch.tableidx = add i32 %i.bb, -1            ; 2 uses
  %i.bc = icmp ult i32 %switch.tableidx, 5
  br i1 %i.bc, label %switch.lookup, label %setDecompParameters.exit

switch.lookup:                                    ; preds = %bb.l
  %i.bd = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.tj3DecompressToYUV8, i64 %i.bd
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %setDecompParameters.exit

setDecompParameters.exit:                         ; preds = %bb.l, %switch.lookup
  %.sink.i = phi i32 [ %switch.ext, %switch.lookup ], [ -1, %bb.l ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1820
  store i32 %.sink.i, ptr %i.be, align 4, !tbaa !50
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !124
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1836
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !80
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 836
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !125
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1844
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !82
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1064
end_hunk_2
begin_hunk_3_@getTransformedSpecs:bb.a
  %i.ad = and i32 %i.y, 4
  %.not124 = icmp eq i32 %i.ad, 0
  br i1 %.not124, label %bb.z, label %bb.m

bb.m:                                             ; preds = %getDstSubsamp.exit
  %i.ae = load i32, ptr %4, align 8, !tbaa !192   ; 5 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !193 ; 5 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !194 ; 3 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !195 ; 3 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.aq = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ap, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.57) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !69
  %i.ar = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.as = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ar, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.57) #25 ; 0 uses
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.at = icmp eq i32 %.015.i, -1
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.av = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.au, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.54) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !69
  %i.aw = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ax = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aw, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.54) #25 ; 0 uses
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.ay = zext nneg i32 %.015.i to i64            ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !92 ; 3 uses
  %i.bb = srem i32 %i.ae, %i.ba
  %.not125 = icmp eq i32 %i.bb, 0
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr @tjMCUHeight, i64 %i.ay
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !92 ; 3 uses
  br i1 %.not125, label %bb.u, label %._crit_edge

bb.u:                                             ; preds = %bb.t
  %i.be = srem i32 %i.ah, %i.bd
  %.not126 = icmp eq i32 %i.be, 0
  br i1 %.not126, label %bb.v, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t, %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bg = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bf, i64 noundef 200, ptr noundef nonnull @.str.70, ptr noundef %5, i32 noundef %i.ba, i32 noundef %i.bd) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !69
  %i.bh = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bi = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bh, i64 noundef 200, ptr noundef nonnull @.str.70, ptr noundef %5, i32 noundef %i.ba, i32 noundef %i.bd) #25 ; 0 uses
  br label %.thread

bb.v:                                             ; preds = %bb.u
  %.not127 = icmp samesign ult i32 %i.ae, %.0102
  %.not128 = icmp samesign ult i32 %i.ah, %.0101
  %or.cond130 = select i1 %.not127, i1 %.not128, i1 false
  br i1 %or.cond130, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bk = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bj, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.138) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !69
  %i.bl = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bm = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bl, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.138) #25 ; 0 uses
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.bn = icmp eq i32 %i.ak, 0
  %i.bo = sub nuw nsw i32 %.0102, %i.ae
  %i.bp = select i1 %i.bn, i32 %i.bo, i32 %i.ak   ; 2 uses
  %i.bq = icmp eq i32 %i.an, 0
  %i.br = sub nuw nsw i32 %.0101, %i.ah
  %spec.select = select i1 %i.bq, i32 %i.br, i32 %i.an ; 2 uses
  %i.bs = add nuw nsw i32 %i.bp, %i.ae
  %i.bt = icmp samesign ugt i32 %i.bs, %.0102
  %i.bu = add nuw nsw i32 %spec.select, %i.ah
  %i.bv = icmp samesign ugt i32 %i.bu, %.0101
  %or.cond136 = select i1 %i.bt, i1 true, i1 %i.bv
  br i1 %or.cond136, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bx = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bw, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.138) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !69
  %i.by = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bz = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.by, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef %5, ptr noundef nonnull @.str.138) #25 ; 0 uses
  br label %.thread

bb.z:                                             ; preds = %bb.x, %getDstSubsamp.exit
  %.2104 = phi i32 [ %.0102, %getDstSubsamp.exit ], [ %i.bp, %bb.x ]
  %.2 = phi i32 [ %.0101, %getDstSubsamp.exit ], [ %spec.select, %bb.x ]
  store i32 %.2104, ptr %1, align 4, !tbaa !92
  store i32 %.2, ptr %2, align 4, !tbaa !92
  store i32 %.015.i, ptr %3, align 4, !tbaa !92
  br label %.thread

.thread:                                          ; preds = %bb.y, %bb.w, %._crit_edge, %bb.s, %bb.q, %bb.b, %bb.h, %bb.z
  %.2107 = phi i32 [ -1, %bb.b ], [ -1, %bb.h ], [ 0, %bb.z ], [ -1, %bb.q ], [ -1, %bb.s ], [ -1, %._crit_edge ], [ -1, %bb.w ], [ -1, %bb.y ]
  ret i32 %.2107
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tj3Transform(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.my_progress_mgr, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3Transform.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.bv

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 11 uses
  store i32 0, ptr %i.e, align 4, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.g = load i32, ptr %i.f, align 8, !tbaa !67
  %i.h = and i32 %i.g, 3
  %or.cond351.not = icmp eq i32 %i.h, 3
  br i1 %or.cond351.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.j = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.66) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.k = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.66) #25 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.m = insertelement <4 x ptr> poison, ptr %1, i64 0
  %i.n = insertelement <4 x ptr> %i.m, ptr %4, i64 1
  %i.o = insertelement <4 x ptr> %i.n, ptr %5, i64 2
  %i.p = insertelement <4 x ptr> %i.o, ptr %6, i64 3
  %i.q = icmp eq <4 x ptr> %i.p, splat (ptr null)
  %i.r = icmp eq i64 %2, 0
  %i.s = icmp slt i32 %3, 1
  %i.t = bitcast <4 x i1> %i.q to i4
  %i.u = icmp ne i4 %i.t, 0
  %op.rdx = or i1 %i.u, %i.s
  %op.rdx459 = or i1 %op.rdx, %i.r
  br i1 %op.rdx459, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.v, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.x = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.y = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.x, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !81
  %.not315 = icmp eq i32 %i.aa, 0
  br i1 %.not315, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  store ptr @my_progress_monitor, ptr %7, align 8, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %0, ptr %i.ac, align 8, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sink = phi ptr [ %7, %bb.h ], [ null, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 536
  store ptr %.sink, ptr %i.ad, align 8, !tbaa !117
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !88
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 20
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !118
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  store i64 %i.ah, ptr %i.ak, align 8, !tbaa !108
  %i.al = zext nneg i32 %3 to i64                 ; 4 uses
  %i.am = mul nuw nsw i64 %i.al, 120
  %calloc = call ptr @calloc(i64 1, i64 %i.am)    ; 13 uses
  %i.an = icmp eq ptr %calloc, null
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.ap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ao, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.aq = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.aq, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.at = call i32 @_setjmp(ptr noundef nonnull %i.as) #26
  %.not316 = icmp eq i32 %i.at, 0
  br i1 %.not316, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !119
  %i.aw = icmp slt i32 %i.av, 202
  br i1 %i.aw, label %bb.m, label %.lr.ph

bb.m:                                             ; preds = %bb.l
  call void @jpeg_mem_src_tj(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i64 noundef %2) #25
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.not343 = icmp ne i32 %3, 1
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aa ] ; 3 uses
  %.0290379 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.aa ]
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !191 ; 3 uses
  %or.cond352 = icmp ugt i32 %i.az, 7
  br i1 %or.cond352, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ba, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.67) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.bc = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bd = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bc, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.67) #25 ; 0 uses
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %i.be = zext nneg i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @xformtypes, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !92
  %i.bh = getelementptr inbounds nuw [120 x i8], ptr %calloc, i64 %indvars.iv ; 14 uses
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !376
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !190 ; 5 uses
  %i.bk = and i32 %i.bj, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !377
  %i.bm = lshr i32 %i.bj, 1
  %.lobit = and i32 %i.bm, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 %.lobit, ptr %i.bn, align 8, !tbaa !378
  %i.bo = lshr i32 %i.bj, 3
  %.lobit340 = and i32 %i.bo, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 %.lobit340, ptr %i.bp, align 4, !tbaa !379
  %i.bq = lshr i32 %i.bj, 2
  %.lobit342 = and i32 %i.bq, 1                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 %.lobit342, ptr %i.br, align 8, !tbaa !380
  %i.bs = icmp eq i32 %i.az, 1
  %or.cond371 = and i1 %.not343, %i.bs
  %spec.select451 = zext i1 %or.cond371 to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  store i32 %spec.select451, ptr %i.bt, align 4, !tbaa !381
  %.not344 = icmp eq i32 %.lobit342, 0
  br i1 %.not344, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = load i32, ptr %i.ax, align 8, !tbaa !192 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !193 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !194 ; 3 uses
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !195 ; 3 uses
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.cg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.cf, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.57) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.ch = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ci = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ch, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.57) #25 ; 0 uses
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i32 %i.bu, ptr %i.cj, align 8, !tbaa !382
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  store i32 1, ptr %i.ck, align 4, !tbaa !383
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store i32 %i.bx, ptr %i.cl, align 8, !tbaa !384
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bh, i64 52
  store i32 1, ptr %i.cm, align 4, !tbaa !385
  %.not345 = icmp eq i32 %i.ca, 0
  br i1 %.not345, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 28
  store i32 1, ptr %i.cn, align 4, !tbaa !386
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 %i.ca, ptr %i.co, align 8, !tbaa !387
  %.not346 = icmp eq i32 %i.cd, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  br i1 %.not346, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %i.cd, ptr %i.cp, align 8, !tbaa !388
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 36
  store i32 1, ptr %i.cq, align 4, !tbaa !389
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store i32 0, ptr %i.cp, align 8, !tbaa !388
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.p
  %i.cr = and i32 %i.bj, 64
  %.not347 = icmp eq i32 %i.cr, 0
  %spec.select = select i1 %.not347, i32 1, i32 %.0290379 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.al
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !367

._crit_edge:                                      ; preds = %bb.aa
  %.not317 = icmp eq i32 %spec.select, 0
  br i1 %.not317, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !54
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge, %bb.ab
  %i.cu = phi i32 [ %i.ct, %bb.ab ], [ 0, %._crit_edge ]
  call void @jcopy_markers_setup(ptr noundef nonnull %i.c, i32 noundef %i.cu) #25
  %i.cv = load i32, ptr %i.au, align 4, !tbaa !119
  %i.cw = icmp slt i32 %i.cv, 202
  br i1 %i.cw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cx = call i32 @jpeg_read_header(ptr noundef nonnull %i.c, i32 noundef 1) #25 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1908
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !89 ; 2 uses
  %.not318 = icmp eq i32 %i.cz, 0
  br i1 %.not318, label %.lr.ph382.preheader, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.db = load i32, ptr %i.da, align 8, !tbaa !164
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !165
  %i.df = zext i32 %i.de to i64
  %i.dg = mul nuw i64 %i.df, %i.dc
  %i.dh = sext i32 %i.cz to i64
  %i.di = icmp ugt i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.ag, label %.lr.ph382.preheader

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.dk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dj, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.dl = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.dm = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dl, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.34) #25 ; 0 uses
  br label %.thread

.lr.ph382.preheader:                              ; preds = %bb.ae, %bb.af
  %i.dn = call fastcc i32 @getSubsamp(ptr noundef %0)
  br label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.preheader, %bb.ar
  %indvars.iv409 = phi i64 [ 0, %.lr.ph382.preheader ], [ %indvars.iv.next410, %bb.ar ] ; 3 uses
  %i.do = getelementptr inbounds nuw [120 x i8], ptr %calloc, i64 %indvars.iv409 ; 2 uses
  %i.dp = call i32 @jtransform_request_workspace(ptr noundef nonnull %i.c, ptr noundef nonnull %i.do) #25
  %.not333 = icmp eq i32 %i.dp, 0
  br i1 %.not333, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph382
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.dr = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dq, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.68) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.ds = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.dt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ds, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.68) #25 ; 0 uses
  br label %.thread

bb.ai:                                            ; preds = %.lr.ph382
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !380
  %.not334 = icmp eq i32 %i.dv, 0
  br i1 %.not334, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv409 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 20
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !190
  %i.dz = and i32 %i.dy, 8
  %.not19.i = icmp eq i32 %i.dz, 0
  %i.ea = select i1 %.not19.i, i32 %i.dn, i32 3   ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !191
  switch i32 %i.ec, label %getDstSubsamp.exit [
    i32 3, label %bb.ak
    i32 4, label %bb.ak
    i32 5, label %bb.ak
    i32 7, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj
  switch i32 %i.ea, label %getDstSubsamp.exit.thread.fold.split [
    i32 1, label %getDstSubsamp.exit.thread
    i32 4, label %bb.al
    i32 5, label %bb.am
    i32 6, label %bb.an
    i32 7, label %bb.ao
    i32 8, label %switch.edge.i
    i32 -1, label %bb.ap
  ]

bb.al:                                            ; preds = %bb.ak
  br label %getDstSubsamp.exit.thread

bb.am:                                            ; preds = %bb.ak
  br label %getDstSubsamp.exit.thread

bb.an:                                            ; preds = %bb.ak
  br label %getDstSubsamp.exit.thread

bb.ao:                                            ; preds = %bb.ak
  br label %getDstSubsamp.exit.thread

switch.edge.i:                                    ; preds = %bb.ak
  br label %getDstSubsamp.exit.thread

getDstSubsamp.exit:                               ; preds = %bb.aj
  %i.ed = icmp eq i32 %i.ea, -1
  br i1 %i.ed, label %bb.ap, label %getDstSubsamp.exit.thread.fold.split

bb.ap:                                            ; preds = %bb.ak, %getDstSubsamp.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.ef = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ee, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.69) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.eg = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.eh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.eg, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.69) #25 ; 0 uses
  br label %.thread

getDstSubsamp.exit.thread.fold.split:             ; preds = %bb.ak, %getDstSubsamp.exit
  %i.ei = sext i32 %i.ea to i64
  br label %getDstSubsamp.exit.thread

getDstSubsamp.exit.thread:                        ; preds = %bb.ak, %getDstSubsamp.exit.thread.fold.split, %switch.edge.i, %bb.ao, %bb.an, %bb.am, %bb.al
  %.015.i357 = phi i64 [ 1, %bb.al ], [ 7, %switch.edge.i ], [ 4, %bb.ak ], [ 8, %bb.ao ], [ 5, %bb.an ], [ 6, %bb.am ], [ %i.ei, %getDstSubsamp.exit.thread.fold.split ] ; 3 uses
  %i.ej = load i32, ptr %i.dw, align 8, !tbaa !192
  %i.ek = getelementptr inbounds [4 x i8], ptr @tjMCUWidth, i64 %.015.i357
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !92 ; 3 uses
  %i.em = srem i32 %i.ej, %i.el
  %.not335 = icmp eq i32 %i.em, 0
  br i1 %.not335, label %bb.aq, label %getDstSubsamp.exit.thread._crit_edge

getDstSubsamp.exit.thread._crit_edge:             ; preds = %getDstSubsamp.exit.thread
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr @tjMCUHeight, i64 %.015.i357
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !92
  br label %split

bb.aq:                                            ; preds = %getDstSubsamp.exit.thread
  %i.en = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !193
  %i.ep = getelementptr inbounds [4 x i8], ptr @tjMCUHeight, i64 %.015.i357
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !92 ; 2 uses
  %i.er = srem i32 %i.eo, %i.eq
  %.not336 = icmp eq i32 %i.er, 0
  br i1 %.not336, label %bb.ar, label %split

split:                                            ; preds = %bb.aq, %getDstSubsamp.exit.thread._crit_edge
  %i.es = phi i32 [ %.pre, %getDstSubsamp.exit.thread._crit_edge ], [ %i.eq, %bb.aq ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.eu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.et, i64 noundef 200, ptr noundef nonnull @.str.70, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, i32 noundef %i.el, i32 noundef %i.es) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.ev = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ew = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ev, i64 noundef 200, ptr noundef nonnull @.str.70, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, i32 noundef %i.el, i32 noundef %i.es) #25 ; 0 uses
  br label %.thread

bb.ar:                                            ; preds = %bb.aq, %bb.ai
  %indvars.iv.next410 = add nuw nsw i64 %indvars.iv409, 1 ; 2 uses
  %exitcond413.not = icmp eq i64 %indvars.iv.next410, %i.al
  br i1 %exitcond413.not, label %.lr.ph402, label %.lr.ph382, !llvm.loop !368

.lr.ph402:                                        ; preds = %bb.ar
  %i.ex = call ptr @jpeg_read_coefficients(ptr noundef nonnull %i.c) #25 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 1796
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1836
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1844
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph402, %bb.bo
  %indvars.iv420 = phi i64 [ 0, %.lr.ph402 ], [ %indvars.iv.next421, %bb.bo ] ; 6 uses
  %.0287400 = phi i32 [ 1, %.lr.ph402 ], [ %spec.select353, %bb.bo ]
  %i.fl = load i32, ptr %i.ey, align 4, !tbaa !74
  %.not319 = icmp eq i32 %i.fl, 0
  %spec.select353 = select i1 %.not319, i32 %.0287400, i32 0 ; 4 uses
  %i.fm = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv420 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 20 ; 5 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !190
  %i.fp = and i32 %i.fo, 16
  %.not320 = icmp eq i32 %i.fp, 0
  br i1 %.not320, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv420
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv420
  call void @jpeg_mem_dest_tj(ptr noundef nonnull %0, ptr noundef %i.fq, ptr noundef %i.fr, i32 noundef %spec.select353) #25
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  call void @jpeg_copy_critical_parameters(ptr noundef nonnull %i.c, ptr noundef nonnull %0) #25
  %i.fs = getelementptr inbounds nuw [120 x i8], ptr %calloc, i64 %indvars.iv420 ; 2 uses
  %i.ft = call ptr @jtransform_adjust_parameters(ptr noundef nonnull %i.c, ptr noundef nonnull %0, ptr noundef %i.ex, ptr noundef nonnull %i.fs) #25 ; 2 uses
  %i.fu = load i32, ptr %i.ez, align 8, !tbaa !79
  %.not321 = icmp eq i32 %i.fu, 0
  br i1 %.not321, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fv = load i32, ptr %i.fn, align 4, !tbaa !190
  %i.fw = and i32 %i.fv, 256
  %.not322 = icmp eq i32 %i.fw, 0
  br i1 %.not322, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  store i32 1, ptr %i.fa, align 8, !tbaa !390
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fx = load i32, ptr %i.fb, align 4, !tbaa !80
  %.not323 = icmp eq i32 %i.fx, 0
  br i1 %.not323, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fy = load i32, ptr %i.fn, align 4, !tbaa !190 ; 2 uses
  %i.fz = and i32 %i.fy, 32
  %.not324 = icmp eq i32 %i.fz, 0
  br i1 %.not324, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  call void @jpeg_simple_progression(ptr noundef nonnull %0) #25
  %.pre427.pre.pre = load i32, ptr %i.fn, align 4, !tbaa !190
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pre427.pre = phi i32 [ %.pre427.pre.pre, %bb.az ], [ %i.fy, %bb.ay ] ; 3 uses
  %i.ga = load i32, ptr %i.fc, align 4, !tbaa !82
  %.not325 = icmp eq i32 %i.ga, 0
  %i.gb = and i32 %.pre427.pre, 128
  %.not326 = icmp eq i32 %i.gb, 0
  %or.cond452 = select i1 %.not325, i1 %.not326, i1 false
  br i1 %or.cond452, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i32 1, ptr %i.fd, align 4, !tbaa !391
  store i32 0, ptr %i.fa, align 8, !tbaa !390
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.gc = load <2 x i32>, ptr %i.fe, align 4, !tbaa !92
  store <2 x i32> %i.gc, ptr %i.ff, align 8, !tbaa !92
  %i.gd = and i32 %.pre427.pre, 16
  %.not327 = icmp eq i32 %i.gd, 0
  br i1 %.not327, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.ge = and i32 %.pre427.pre, 64
  %.not328 = icmp eq i32 %i.ge, 0
  br i1 %.not328, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gf = load i32, ptr %i.fg, align 8, !tbaa !54
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %i.gg = phi i32 [ %i.gf, %bb.be ], [ 0, %bb.bd ] ; 2 uses
  call void @jpeg_write_coefficients(ptr noundef nonnull %0, ptr noundef %i.ft) #25
  call void @jcopy_markers_execute(ptr noundef nonnull %i.c, ptr noundef nonnull %0, i32 noundef %i.gg) #25
  %i.gh = load ptr, ptr %i.fh, align 8, !tbaa !70 ; 2 uses
  %.not329 = icmp eq ptr %i.gh, null
  br i1 %.not329, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gi = load i64, ptr %i.fi, align 8, !tbaa !93
  %.fr = freeze i64 %i.gi                         ; 2 uses
  %.not372 = icmp eq i64 %.fr, 0
  br i1 %.not372, label %bb.bj, label %switch.early.test

switch.early.test:                                ; preds = %bb.bg
  switch i32 %i.gg, label %bb.bh [
    i32 4, label %bb.bj
    i32 2, label %bb.bj
  ]

bb.bh:                                            ; preds = %switch.early.test
  %i.gj = trunc i64 %.fr to i32
  call void @jpeg_write_icc_profile(ptr noundef nonnull %0, ptr noundef nonnull %i.gh, i32 noundef %i.gj) #25
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bc
  call void @jinit_c_master_control(ptr noundef nonnull %0, i32 noundef 1) #25
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %bb.bh, %bb.bg, %switch.early.test, %switch.early.test, %bb.bi
  call void @jtransform_execute_transform(ptr noundef nonnull %i.c, ptr noundef nonnull %0, ptr noundef %i.ex, ptr noundef nonnull %i.fs) #25
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fm, i64 32 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !392
  %.not330 = icmp eq ptr %i.gl, null
  br i1 %.not330, label %.thread368, label %.preheader

.preheader:                                       ; preds = %bb.bj
  %i.gm = load i32, ptr %i.fj, align 4, !tbaa !178 ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph397.preheader, label %.thread368

.lr.ph397.preheader:                              ; preds = %.preheader
  %i.go = trunc nuw nsw i64 %indvars.iv420 to i32
  br label %.lr.ph397

.lr.ph397:                                        ; preds = %.lr.ph397.preheader, %._crit_edge395
  %i.gp = phi i32 [ %i.gm, %.lr.ph397.preheader ], [ %i.hu, %._crit_edge395 ]
  %indvars.iv417 = phi i64 [ 0, %.lr.ph397.preheader ], [ %indvars.iv.next418, %._crit_edge395 ] ; 4 uses
  %i.gq = load ptr, ptr %i.fk, align 8, !tbaa !179
  %i.gr = getelementptr inbounds nuw [96 x i8], ptr %i.gq, i64 %indvars.iv417 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 28
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !181
  %i.gu = shl i32 %i.gt, 3
  %.sroa.6.8.insert.ext = zext i32 %i.gu to i64   ; 2 uses
  %.sroa.6.12.insert.insert = or disjoint i64 %.sroa.6.8.insert.ext, 34359738368
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 32 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !182 ; 2 uses
  %i.gx = shl i32 %i.gw, 3
  %.sroa.4.12.insert.ext = zext i32 %i.gx to i64
  %.sroa.4.12.insert.shift = shl nuw i64 %.sroa.4.12.insert.ext, 32
  %.sroa.4.12.insert.insert = or disjoint i64 %.sroa.4.12.insert.shift, %.sroa.6.8.insert.ext
  %.not405 = icmp eq i32 %i.gw, 0
  br i1 %.not405, label %._crit_edge395, label %.lr.ph394

.lr.ph394:                                        ; preds = %.lr.ph397
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %indvars.iv417
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 12 ; 3 uses
  %.pre428 = load i32, ptr %i.gz, align 4, !tbaa !111
  %i.ha = trunc nuw nsw i64 %indvars.iv417 to i32
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph394, %._crit_edge389
  %i.hb = phi i32 [ %.pre428, %.lr.ph394 ], [ %i.hq, %._crit_edge389 ]
  %.sroa.015.sroa.4.0392 = phi i32 [ 0, %.lr.ph394 ], [ %.sroa.015.sroa.4.1.lcssa, %._crit_edge389 ] ; 2 uses
  %.0391 = phi i32 [ 0, %.lr.ph394 ], [ %i.hr, %._crit_edge389 ] ; 2 uses
  %i.hc = load ptr, ptr %i.ai, align 8, !tbaa !118
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 64
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !393
  %i.hf = load ptr, ptr %i.gy, align 8, !tbaa !395
  %i.hg = call ptr %i.he(ptr noundef nonnull %i.c, ptr noundef %i.hf, i32 noundef %.0391, i32 noundef %i.hb, i32 noundef 1) #25
  %i.hh = load i32, ptr %i.gz, align 4, !tbaa !111 ; 2 uses
  %.not331384 = icmp sgt i32 %i.hh, 0
  br i1 %.not331384, label %.lr.ph388, label %._crit_edge389

.lr.ph388:                                        ; preds = %bb.bk, %bb.bl
  %indvars.iv414 = phi i64 [ %indvars.iv.next415, %bb.bl ], [ 0, %bb.bk ] ; 2 uses
  %.sroa.015.sroa.4.1386 = phi i32 [ %i.hn, %bb.bl ], [ %.sroa.015.sroa.4.0392, %bb.bk ] ; 2 uses
  %i.hi = load ptr, ptr %i.gk, align 8, !tbaa !392
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv414
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !176
  %.sroa.015.sroa.4.0.insert.ext = zext i32 %.sroa.015.sroa.4.1386 to i64
  %.sroa.015.sroa.4.0.insert.shift = shl nuw i64 %.sroa.015.sroa.4.0.insert.ext, 32
  %i.hl = call i32 %i.hi(ptr noundef %i.hk, i64 %.sroa.015.sroa.4.0.insert.shift, i64 %.sroa.6.12.insert.insert, i64 0, i64 %.sroa.4.12.insert.insert, i32 noundef %i.ha, i32 noundef %i.go, ptr noundef %i.fm) #25
  %i.hm = icmp eq i32 %i.hl, -1
  br i1 %i.hm, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph388
  %i.hn = add nsw i32 %.sroa.015.sroa.4.1386, 8   ; 2 uses
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %i.ho = load i32, ptr %i.gz, align 4, !tbaa !111 ; 2 uses
  %i.hp = sext i32 %i.ho to i64
  %.not331 = icmp slt i64 %indvars.iv.next415, %i.hp
  br i1 %.not331, label %.lr.ph388, label %._crit_edge389, !llvm.loop !369

._crit_edge389:                                   ; preds = %bb.bl, %bb.bk
  %i.hq = phi i32 [ %i.hh, %bb.bk ], [ %i.ho, %bb.bl ] ; 2 uses
  %.sroa.015.sroa.4.1.lcssa = phi i32 [ %.sroa.015.sroa.4.0392, %bb.bk ], [ %i.hn, %bb.bl ]
  %i.hr = add i32 %i.hq, %.0391                   ; 2 uses
  %i.hs = load i32, ptr %i.gv, align 8, !tbaa !182
  %i.ht = icmp ult i32 %i.hr, %i.hs
  br i1 %i.ht, label %bb.bk, label %._crit_edge395.loopexit, !llvm.loop !370

._crit_edge395.loopexit:                          ; preds = %._crit_edge389
  %.pre429 = load i32, ptr %i.fj, align 4, !tbaa !178
  br label %._crit_edge395

._crit_edge395:                                   ; preds = %._crit_edge395.loopexit, %.lr.ph397
  %i.hu = phi i32 [ %.pre429, %._crit_edge395.loopexit ], [ %i.gp, %.lr.ph397 ] ; 2 uses
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1 ; 2 uses
  %i.hv = sext i32 %i.hu to i64
  %i.hw = icmp slt i64 %indvars.iv.next418, %i.hv
  br i1 %i.hw, label %.lr.ph397, label %.thread368, !llvm.loop !371

bb.bm:                                            ; preds = %.lr.ph388
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.hy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.hx, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.71) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !69
  %i.hz = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.ia = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.hz, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Transform.FUNCTION_NAME, ptr noundef nonnull @.str.71) #25 ; 0 uses
  br label %.thread

.thread368:                                       ; preds = %._crit_edge395, %.preheader, %bb.bj
  %i.ib = load i32, ptr %i.fn, align 4, !tbaa !190
  %i.ic = and i32 %i.ib, 16
  %.not332 = icmp eq i32 %i.ic, 0
  br i1 %.not332, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.thread368
  call void @jpeg_finish_compress(ptr noundef nonnull %0) #25
  br label %bb.bo

bb.bo:                                            ; preds = %.thread368, %bb.bn
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %exitcond424.not = icmp eq i64 %indvars.iv.next421, %i.al
  br i1 %exitcond424.not, label %._crit_edge403, label %bb.as, !llvm.loop !372

._crit_edge403:                                   ; preds = %bb.bo
  %i.id = call i32 @jpeg_finish_decompress(ptr noundef nonnull %i.c) #25 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %split, %bb.ap, %bb.bm, %bb.k, %._crit_edge403, %bb.ah, %bb.ag, %bb.u, %bb.o, %bb.j, %bb.f, %bb.d
  %.10 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.j ], [ 0, %._crit_edge403 ], [ -1, %bb.o ], [ -1, %bb.u ], [ -1, %bb.ag ], [ -1, %bb.k ], [ -1, %bb.ah ], [ -1, %bb.bm ], [ -1, %bb.ap ], [ -1, %split ]
  %.0295 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.j ], [ %calloc, %._crit_edge403 ], [ %calloc, %bb.o ], [ %calloc, %bb.u ], [ %calloc, %bb.ag ], [ %calloc, %bb.k ], [ %calloc, %bb.ah ], [ %calloc, %bb.bm ], [ %calloc, %bb.ap ], [ %calloc, %split ]
  %.2289 = phi i32 [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.j ], [ %spec.select353, %._crit_edge403 ], [ 1, %bb.o ], [ 1, %bb.u ], [ 1, %bb.ag ], [ 1, %bb.k ], [ 1, %bb.ah ], [ %spec.select353, %bb.bm ], [ 1, %bb.ap ], [ 1, %split ]
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !102
  %i.ig = icmp sgt i32 %i.if, 100
  br i1 %i.ig, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %.thread
  %.not348 = icmp eq i32 %.2289, 0
  br i1 %.not348, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !103
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !105
  call void %i.ik(ptr noundef nonnull %0) #25
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  call void @jpeg_abort_compress(ptr noundef nonnull %0) #25
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.thread
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.im = load i32, ptr %i.il, align 4, !tbaa !119
  %i.in = icmp sgt i32 %i.im, 200
  br i1 %i.in, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @jpeg_abort_decompress(ptr noundef nonnull %i.c) #25
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  call void @free(ptr noundef %.0295) #25
  %i.io = load i32, ptr %i.d, align 8, !tbaa !68
  %.not349 = icmp eq i32 %i.io, 0
  %spec.select355 = select i1 %.not349, i32 %.10, i32 -1
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.b
  %.0300 = phi i32 [ %spec.select355, %bb.bu ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret i32 %.0300
}

declare void @jcopy_markers_setup(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @getSubsamp(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.b = load i32, ptr %i.a, align 8, !tbaa !184  ; 15 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 580
  %i.e = load i32, ptr %i.d, align 4, !tbaa !399
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %.loopexit113, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = add nsw i32 %i.b, -1                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1552
  %i.i = load i32, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph131, label %.loopexit113

.lr.ph131:                                        ; preds = %bb.c
  %i.k = icmp eq i32 %i.b, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 580 ; 3 uses
  %i.m = icmp eq i32 %i.b, 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.o = icmp sgt i32 %i.b, 1
  %i.p = icmp slt i32 %i.b, 2
  %wide.trip.count221 = zext nneg i32 %i.i to i64
  %exitcond.peel154.not = icmp eq i32 %i.b, 3
  %exitcond169.peel178.not = icmp eq i32 %i.b, 3
  %wide.trip.count192 = zext i32 %i.b to i64      ; 2 uses
  %exitcond193.peel.not = icmp eq i32 %i.b, 2
  %exitcond193.peel202.not = icmp eq i32 %i.b, 3
  %wide.trip.count216 = zext nneg i32 %i.b to i64
  %xtraiter = and i64 %wide.trip.count192, 1
  %i.q = icmp eq i32 %i.b, 5                      ; 0 uses
  %i.r = and i64 %wide.trip.count192, 2147483646
  %i.s = add nsw i64 %i.r, -6
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod242 = trunc i32 %i.b to i1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph131, %.loopexit
  %indvars.iv218 = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next219, %.loopexit ] ; 7 uses
  %.099128 = phi i32 [ -1, %.lr.ph131 ], [ %.6, %.loopexit ] ; 4 uses
  %i.t = icmp eq i64 %indvars.iv218, 3
  br i1 %i.t, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.l, align 4, !tbaa !399
  %i.v = and i32 %i.u, -2
  %switch = icmp eq i32 %i.v, 4
  %or.cond111 = and i1 %i.m, %switch
  br i1 %or.cond111, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !185  ; 23 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !110  ; 6 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %indvars.iv218
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !92
  %i.ab = sdiv i32 %i.aa, 8                       ; 7 uses
  %i.ac = icmp eq i32 %i.y, %i.ab
  %i.ad = trunc nuw nsw i64 %indvars.iv218 to i32 ; 3 uses
  br i1 %i.ac, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !111 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @tjMCUHeight, i64 %indvars.iv218
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !92
  %i.ai = sdiv i32 %i.ah, 8
  %i.aj = icmp eq i32 %i.af, %i.ai
  br i1 %i.aj, label %.lr.ph, label %bb.p

.lr.ph:                                           ; preds = %bb.h
  %i.ak = load i32, ptr %i.l, align 4, !tbaa !399 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 5
  %i.am = icmp eq i32 %i.ak, 4                    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !110
  %i.ap = icmp eq i32 %i.ao, 1                    ; 2 uses
  br i1 %i.al, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %i.ap, label %bb.i, label %.lr.ph.split.peel.next

bb.i:                                             ; preds = %.lr.ph.split.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 108
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !111
  %i.as = icmp eq i32 %i.ar, 1
  %i.at = zext i1 %i.as to i32
  br label %.lr.ph.split.peel.next

.lr.ph.split.peel.next:                           ; preds = %.lr.ph.split.preheader, %bb.i
  %.193.peel = phi i32 [ 0, %.lr.ph.split.preheader ], [ %i.at, %bb.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.av = load i32, ptr %i.au, align 8, !tbaa !110
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.peel.next
  %i.ax = getelementptr inbounds nuw i8, ptr %i.w, i64 204
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !111
  %i.az = icmp eq i32 %i.ay, 1
  %i.ba = zext i1 %i.az to i32
  %spec.select.peel151 = add nuw nsw i32 %.193.peel, %i.ba
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.peel.next
  %.193.peel152 = phi i32 [ %.193.peel, %.lr.ph.split.peel.next ], [ %spec.select.peel151, %bb.j ] ; 3 uses
  br i1 %exitcond.peel154.not, label %._crit_edge, label %.lr.ph.split.peel.next146

.lr.ph.split.peel.next146:                        ; preds = %bb.k
  %spec.select139.peel158 = select i1 %i.am, i32 %i.y, i32 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !110
  %i.bd = icmp eq i32 %i.bc, %spec.select139.peel158
  br i1 %i.bd, label %bb.l, label %._crit_edge

bb.l:                                             ; preds = %.lr.ph.split.peel.next146
  %spec.select140.peel159 = select i1 %i.am, i32 %i.af, i32 1
  br label %._crit_edge.sink.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %i.ap, label %bb.m, label %.lr.ph.split.us.peel.next

bb.m:                                             ; preds = %.lr.ph.split.us.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 108
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !111
  %i.bg = icmp eq i32 %i.bf, 1
  %i.bh = zext i1 %i.bg to i32
  br label %.lr.ph.split.us.peel.next

.lr.ph.split.us.peel.next:                        ; preds = %.lr.ph.split.us.preheader, %bb.m
  %.193.us.peel = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.bh, %bb.m ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 200
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !110
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.n, label %bb.o
end_hunk_3
begin_hunk_4_@getSubsamp:bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !111
  %i.dx = icmp eq i32 %i.dw, %i.ab
  %i.dy = zext i1 %i.dx to i32
  %spec.select108.epil = add nsw i32 %.088117.epil.init, %i.dy
  br label %._crit_edge120

._crit_edge120:                                   ; preds = %._crit_edge120.loopexit.unr-lcssa, %bb.ab, %.peel.next203.epil.preheader, %bb.x, %bb.t, %bb.v, %bb.r
  %.088.lcssa = phi i32 [ 0, %bb.r ], [ %.189.peel209, %bb.x ], [ %.189.peel, %bb.t ], [ %.189.peel200, %bb.v ], [ %.189.1, %._crit_edge120.loopexit.unr-lcssa ], [ %.088117.epil.init, %.peel.next203.epil.preheader ], [ %spec.select108.epil, %bb.ab ]
  %i.dz = icmp eq i32 %.088.lcssa, %i.g
  br i1 %i.dz, label %.loopexit113, label %._crit_edge230

._crit_edge230:                                   ; preds = %bb.p, %._crit_edge120, %bb.q
  %i.ea = phi i32 [ %i.bz, %bb.p ], [ 2, %._crit_edge120 ], [ 2, %bb.q ] ; 2 uses
  %i.eb = mul nsw i32 %i.ea, %i.y
  %i.ec = icmp sgt i32 %i.eb, 3
  %i.ed = icmp ne i64 %indvars.iv218, 0
  %or.cond10.not143 = or i1 %i.ed, %i.ec
  %brmerge = or i1 %or.cond10.not143, %i.p
  br i1 %brmerge, label %.loopexit, label %.lr.ph124

bb.ac:                                            ; preds = %bb.ae
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count216
  br i1 %exitcond217.not, label %.loopexit, label %.lr.ph124, !llvm.loop !397

.lr.ph124:                                        ; preds = %._crit_edge230, %bb.ac
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %bb.ac ], [ 1, %._crit_edge230 ] ; 2 uses
  %.0123 = phi i32 [ %.1, %bb.ac ], [ 0, %._crit_edge230 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [96 x i8], ptr %i.w, i64 %indvars.iv213 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !110
  %i.eh = icmp eq i32 %i.eg, %i.y
  br i1 %i.eh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph124
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !111
  %i.ek = icmp eq i32 %i.ej, %i.ea
  %i.el = zext i1 %i.ek to i32
  %spec.select110 = add nsw i32 %.0123, %i.el
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph124
  %.1 = phi i32 [ %.0123, %.lr.ph124 ], [ %spec.select110, %bb.ad ] ; 2 uses
  %i.em = icmp eq i32 %.1, %i.g
  br i1 %i.em, label %.loopexit, label %bb.ac

.loopexit:                                        ; preds = %bb.ae, %bb.ac, %._crit_edge230, %bb.f, %bb.d
  %.6 = phi i32 [ %.099128, %bb.d ], [ %.099128, %bb.f ], [ %.099128, %._crit_edge230 ], [ 0, %bb.ae ], [ %.099128, %bb.ac ] ; 2 uses
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count221
  br i1 %exitcond222.not, label %.loopexit113, label %bb.d, !llvm.loop !398

.loopexit113:                                     ; preds = %.loopexit, %._crit_edge, %._crit_edge120, %bb.c, %bb.b
  %.0102 = phi i32 [ 3, %bb.b ], [ -1, %bb.c ], [ %.6, %.loopexit ], [ %i.ad, %._crit_edge ], [ %i.ad, %._crit_edge120 ]
  ret i32 %.0102
}

declare i32 @jtransform_request_workspace(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @jpeg_read_coefficients(ptr noundef) local_unnamed_addr #7

declare void @jpeg_copy_critical_parameters(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @jtransform_adjust_parameters(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @jpeg_simple_progression(ptr noundef) local_unnamed_addr #7

declare void @jpeg_write_coefficients(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @jcopy_markers_execute(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @jtransform_execute_transform(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tjTransform(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef captures(address_is_null) %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.e = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tjTransform.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1528 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 4 uses
  store i32 0, ptr %i.h, align 4, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.j = load i32, ptr %i.i, align 8, !tbaa !67
  %i.k = and i32 %i.j, 2
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.m, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjTransform.FUNCTION_NAME, ptr noundef nonnull @.str.33) #25 ; 0 uses
  store i32 1, ptr %i.h, align 4, !tbaa !69
  %i.o = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjTransform.FUNCTION_NAME, ptr noundef nonnull @.str.33) #25 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.q = icmp slt i32 %3, 1
  %i.r = icmp eq ptr %5, null
  %or.cond = or i1 %i.q, %i.r
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.t = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjTransform.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.h, align 4, !tbaa !69
  %i.u = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.u, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjTransform.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.x = call i32 @_setjmp(ptr noundef nonnull %i.w) #26
  %.not72 = icmp eq i32 %i.x, 0
  br i1 %.not72, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.y = lshr i32 %7, 1
  %.lobit.i = and i32 %i.y, 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1792
  store i32 %.lobit.i, ptr %i.z, align 8, !tbaa !73
  %i.aa = and i32 %7, 8
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.i, label %.sink.split.i

bb.i:                                             ; preds = %bb.h
  %i.ab = and i32 %7, 16
  %.not22.i = icmp eq i32 %i.ab, 0
  br i1 %.not22.i, label %bb.j, label %.sink.split.i

bb.j:                                             ; preds = %bb.i
  %i.ac = and i32 %7, 32
  %.not23.i = icmp eq i32 %i.ac, 0
  br i1 %.not23.i, label %bb.k, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.j, %bb.i, %bb.h
  %.str.136.sink.i = phi ptr [ @.str.134, %bb.h ], [ @.str.136, %bb.i ], [ @.str.137, %bb.j ]
  %i.ad = call i32 @setenv(ptr noundef nonnull %.str.136.sink.i, ptr noundef nonnull @.str.135, i32 noundef 1) #25 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.j
  %i.ae = lshr i32 %7, 8
  %.lobit24.i = and i32 %i.ae, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1824
  store i32 %.lobit24.i, ptr %i.af, align 8, !tbaa !77
  %i.ag = lshr i32 %7, 10
  %.lobit25.i = and i32 %i.ag, 1                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1796 ; 3 uses
  store i32 %.lobit25.i, ptr %i.ah, align 4, !tbaa !74
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !75
  %i.ak = icmp slt i32 %i.aj, 96
  %i.al = and i32 %7, 4096
  %.not27.i = icmp eq i32 %i.al, 0
  %or.cond.i = and i1 %.not27.i, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1828
  %. = zext i1 %or.cond.i to i32
  store i32 %., ptr %i.am, align 4, !tbaa !78
  %i.an = lshr i32 %7, 13
  %.lobit28.i = and i32 %i.an, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1532
  store i32 %.lobit28.i, ptr %i.ao, align 4, !tbaa !72
  %i.ap = lshr i32 %7, 14
  %.lobit29.i = and i32 %i.ap, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1836
  store i32 %.lobit29.i, ptr %i.aq, align 4, !tbaa !80
  %i.ar = and i32 %7, 32768
  %.not30.i = icmp eq i32 %i.ar, 0
  br i1 %.not30.i, label %processFlags.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1840
  store i32 500, ptr %i.as, align 8, !tbaa !81
  br label %processFlags.exit

processFlags.exit:                                ; preds = %bb.k, %bb.l
  %.not73 = icmp eq i32 %.lobit25.i, 0
  br i1 %.not73, label %bb.n, label %bb.m

bb.m:                                             ; preds = %processFlags.exit
  call void @jpeg_mem_src_tj(ptr noundef nonnull %i.f, ptr noundef %1, i64 noundef %2) #25
  %i.at = call i32 @jpeg_read_header(ptr noundef nonnull %i.f, i32 noundef 1) #25 ; 0 uses
  %i.au = call fastcc i32 @getSubsamp(ptr noundef %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %processFlags.exit
  %.062 = phi i32 [ %i.au, %bb.m ], [ -1, %processFlags.exit ]
  %i.av = zext nneg i32 %3 to i64                 ; 2 uses
  %i.aw = shl nuw nsw i64 %i.av, 3                ; 3 uses
  %i.ax = call noalias ptr @malloc(i64 noundef %i.aw) #27 ; 7 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.o, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.bb = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bc = load i32, ptr %i.ah, align 4, !tbaa !74
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %5, i64 %i.aw, i1 false), !tbaa !58
  br label %.lr.ph82.preheader

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.be, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjTransform.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.h, align 4, !tbaa !69
  %i.bg = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bg, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjTransform.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %bb.w
  %.pr = load i32, ptr %i.ah, align 4, !tbaa !74
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bi = phi i32 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 1, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !58
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !58
  %.not74 = icmp eq i32 %i.bi, 0
  br i1 %.not74, label %bb.w, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bm = load i32, ptr %i.az, align 8, !tbaa !164
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bn = load i32, ptr %i.ba, align 4, !tbaa !165
  store i32 %i.bn, ptr %i.b, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 %.062, ptr %i.c, align 4, !tbaa !92
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv
  %i.bp = call fastcc i32 @getTransformedSpecs(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.bo, ptr noundef nonnull @tjTransform.FUNCTION_NAME)
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = load i32, ptr %i.a, align 4, !tbaa !92  ; 2 uses
  %i.bs = load i32, ptr %i.b, align 4, !tbaa !92  ; 2 uses
  %i.bt = load i32, ptr %i.c, align 4, !tbaa !92  ; 3 uses
  %i.bu = icmp slt i32 %i.br, 1
  %i.bv = icmp slt i32 %i.bs, 1
  %or.cond.i76 = or i1 %i.bu, %i.bv
  %i.bw = add i32 %i.bt, -9
  %i.bx = icmp ult i32 %i.bw, -10
  %or.cond5.i = or i1 %or.cond.i76, %i.bx
  br i1 %or.cond5.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bb, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3JPEGBufSize.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.bz = icmp eq i32 %i.bt, -1
  %spec.store.select.i = select i1 %i.bz, i32 0, i32 %i.bt ; 2 uses
  %i.ca = zext nneg i32 %spec.store.select.i to i64 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr @tjMCUWidth, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !92 ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @tjMCUHeight, i64 %i.ca
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !92 ; 3 uses
  %i.cf = icmp eq i32 %spec.store.select.i, 3
  br i1 %i.cf, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = mul nsw i32 %i.ce, %i.cc
  %i.ch = sdiv i32 256, %i.cg
  %narrow.i = add nsw i32 %i.ch, 2
  %i.ci = sext i32 %narrow.i to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cj = phi i64 [ %i.ci, %bb.t ], [ 2, %bb.s ]
  %i.ck = add nsw i32 %i.br, -1
  %i.cl = add i32 %i.ck, %i.cc
  %i.cm = sub i32 0, %i.cc
  %i.cn = and i32 %i.cl, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = add nsw i32 %i.bs, -1
  %i.cq = add i32 %i.cp, %i.ce
  %i.cr = sub i32 0, %i.ce
  %i.cs = and i32 %i.cq, %i.cr
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.ct, %i.co
  %i.cv = mul i64 %i.cu, %i.cj
  %i.cw = add i64 %i.cv, 2048
  br label %.thread

.thread:                                          ; preds = %bb.u, %bb.r
  %.0.i = phi i64 [ 0, %bb.r ], [ %i.cw, %bb.u ]
  store i64 %.0.i, ptr %i.bl, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.w:                                             ; preds = %.thread, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.av
  br i1 %exitcond.not, label %.lr.ph82.preheader, label %.lr.ph.splitthread-pre-split, !llvm.loop !401

.lr.ph82.preheader:                               ; preds = %bb.w, %.lr.ph.split.us.preheader
  %i.cx = call i32 @tj3Transform(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %i.ax, ptr noundef %6)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %i.ax, i64 %i.aw, i1 false), !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph82.preheader, %bb.v, %bb.g, %bb.o, %bb.f, %bb.d
  %.3 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.o ], [ -1, %bb.v ], [ %i.cx, %.lr.ph82.preheader ]
  %.061 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.o ], [ %i.ax, %bb.v ], [ %i.ax, %.lr.ph82.preheader ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !119
  %i.da = icmp sgt i32 %i.cz, 200
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.loopexit
  call void @jpeg_abort_decompress(ptr noundef nonnull %i.f) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.loopexit
  %i.db = load i32, ptr %i.g, align 8, !tbaa !68
  %.not75 = icmp eq i32 %i.db, 0
  %spec.select = select i1 %.not75, i32 %.3, i32 -1
  call void @free(ptr noundef %.061) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.b
  %.066 = phi i32 [ %spec.select, %bb.y ], [ -1, %bb.b ]
  ret i32 %.066
}

; Function Attrs: nounwind uwtable
define noundef ptr @tjLoadImage(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(1920) ptr @calloc(i64 1, i64 1920) ; 13 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %tj3InitVersion.exit.thread, label %tj3InitVersion.exit

tj3InitVersion.exit.thread:                       ; preds = %bb.a
  %i.b = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.c = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3InitVersion.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.g

tj3InitVersion.exit:                              ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1556
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1800
  %i.f = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 -1, i64 16, i1 false)
  store i32 8, ptr %i.f, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1820
  store i32 -1, ptr %i.g, align 4, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1852
  store i32 1, ptr %i.h, align 4, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1868
  store i32 1, ptr %i.i, align 4, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1872
  store i32 1, ptr %i.j, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1880
  store i64 4294967297, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1912
  store i32 2, ptr %i.l, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1548
  store i32 3001000, ptr %i.m, align 4, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1552
  store i32 7, ptr %i.n, align 8, !tbaa !56
  %i.o = tail call fastcc ptr @_tjInitCompress(ptr noundef %calloc.i) ; 11 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.b

bb.b:                                             ; preds = %tj3InitVersion.exit
  %i.q = lshr i32 %5, 1
  %.lobit.i = and i32 %i.q, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1792
  store i32 %.lobit.i, ptr %i.r, align 8, !tbaa !73
  %i.s = and i32 %5, 8
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %5, 16
  %.not22.i = icmp eq i32 %i.t, 0
  br i1 %.not22.i, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.u = and i32 %5, 32
  %.not23.i = icmp eq i32 %i.u, 0
  br i1 %.not23.i, label %bb.e, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  %.str.136.sink.i = phi ptr [ @.str.134, %bb.b ], [ @.str.136, %bb.c ], [ @.str.137, %bb.d ]
  %i.v = tail call i32 @setenv(ptr noundef nonnull %.str.136.sink.i, ptr noundef nonnull @.str.135, i32 noundef 1) #25 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split.i, %bb.d
  %i.w = lshr i32 %5, 8
  %.lobit24.i = and i32 %i.w, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 1824
  store i32 %.lobit24.i, ptr %i.x, align 8, !tbaa !77
  %i.y = lshr i32 %5, 10
  %.lobit25.i = and i32 %i.y, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1796
  store i32 %.lobit25.i, ptr %i.z, align 4, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 1800
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !75
  %i.ac = icmp slt i32 %i.ab, 96
  %i.ad = and i32 %5, 4096
  %.not27.i = icmp eq i32 %i.ad, 0
  %or.cond.i = and i1 %.not27.i, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 1828
  %. = zext i1 %or.cond.i to i32
  store i32 %., ptr %i.ae, align 4, !tbaa !78
  %i.af = lshr i32 %5, 13
  %.lobit28.i = and i32 %i.af, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 1532
  store i32 %.lobit28.i, ptr %i.ag, align 4, !tbaa !72
  %i.ah = lshr i32 %5, 14
  %.lobit29.i = and i32 %i.ah, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 1836
  store i32 %.lobit29.i, ptr %i.ai, align 4, !tbaa !80
  %i.aj = and i32 %5, 32768
  %.not30.i = icmp eq i32 %i.aj, 0
  br i1 %.not30.i, label %processFlags.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 1840
  store i32 500, ptr %i.ak, align 8, !tbaa !81
  br label %processFlags.exit

processFlags.exit:                                ; preds = %bb.e, %bb.f
  %i.al = tail call ptr @tj3LoadImage8(ptr noundef nonnull %i.o, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  tail call void @tj3Destroy(ptr noundef nonnull %i.o)
  br label %bb.g

bb.g:                                             ; preds = %tj3InitVersion.exit.thread, %tj3InitVersion.exit, %processFlags.exit
  %.0 = phi ptr [ %i.al, %processFlags.exit ], [ null, %tj3InitVersion.exit ], [ null, %tj3InitVersion.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @tjSaveImage(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(1920) ptr @calloc(i64 1, i64 1920) ; 13 uses
  %i.a = icmp eq ptr %calloc.i, null
  br i1 %i.a, label %tj3InitVersion.exit.thread, label %tj3InitVersion.exit

tj3InitVersion.exit.thread:                       ; preds = %bb.a
  %i.b = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.c = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3InitVersion.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.g

tj3InitVersion.exit:                              ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1556
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.d, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1800
  %i.f = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 -1, i64 16, i1 false)
  store i32 8, ptr %i.f, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1820
  store i32 -1, ptr %i.g, align 4, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1852
  store i32 1, ptr %i.h, align 4, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1868
  store i32 1, ptr %i.i, align 4, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1872
  store i32 1, ptr %i.j, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1880
  store i64 4294967297, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1912
  store i32 2, ptr %i.l, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1548
  store i32 3001000, ptr %i.m, align 4, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1552
  store i32 7, ptr %i.n, align 8, !tbaa !56
  %i.o = tail call fastcc ptr @_tjInitDecompress(ptr noundef %calloc.i) ; 10 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.b

bb.b:                                             ; preds = %tj3InitVersion.exit
  %i.q = lshr i32 %6, 1
  %.lobit.i = and i32 %i.q, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1792
  store i32 %.lobit.i, ptr %i.r, align 8, !tbaa !73
  %i.s = and i32 %6, 8
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %6, 16
  %.not22.i = icmp eq i32 %i.t, 0
  br i1 %.not22.i, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.u = and i32 %6, 32
  %.not23.i = icmp eq i32 %i.u, 0
  br i1 %.not23.i, label %bb.e, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  %.str.136.sink.i = phi ptr [ @.str.134, %bb.b ], [ @.str.136, %bb.c ], [ @.str.137, %bb.d ]
  %i.v = tail call i32 @setenv(ptr noundef nonnull %.str.136.sink.i, ptr noundef nonnull @.str.135, i32 noundef 1) #25 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.sink.split.i, %bb.d
  %i.w = lshr i32 %6, 8
  %.lobit24.i = and i32 %i.w, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 1824
  store i32 %.lobit24.i, ptr %i.x, align 8, !tbaa !77
  %i.y = lshr i32 %6, 10
  %.lobit25.i = and i32 %i.y, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1796
  store i32 %.lobit25.i, ptr %i.z, align 4, !tbaa !74
  %i.aa = lshr i32 %6, 11
  %.lobit26.i = and i32 %i.aa, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 1828
  store i32 %.lobit26.i, ptr %i.ab, align 4, !tbaa !78
  %i.ac = lshr i32 %6, 13
  %.lobit28.i = and i32 %i.ac, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 1532
  store i32 %.lobit28.i, ptr %i.ad, align 4, !tbaa !72
  %i.ae = lshr i32 %6, 14
  %.lobit29.i = and i32 %i.ae, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 1836
  store i32 %.lobit29.i, ptr %i.af, align 4, !tbaa !80
  %i.ag = and i32 %6, 32768
  %.not30.i = icmp eq i32 %i.ag, 0
  br i1 %.not30.i, label %processFlags.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 1840
  store i32 500, ptr %i.ah, align 8, !tbaa !81
  br label %processFlags.exit

processFlags.exit:                                ; preds = %bb.e, %bb.f
  %i.ai = tail call i32 @tj3SaveImage8(ptr noundef nonnull %i.o, ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  tail call void @tj3Destroy(ptr noundef nonnull %i.o)
  br label %bb.g

bb.g:                                             ; preds = %tj3InitVersion.exit.thread, %tj3InitVersion.exit, %processFlags.exit
  %.0 = phi i32 [ %i.ai, %processFlags.exit ], [ -1, %tj3InitVersion.exit ], [ -1, %tj3InitVersion.exit.thread ]
  ret i32 %.0
}

declare ptr @jpeg_std_error(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind uwtable
define internal void @my_error_exit(ptr noundef %0) #20 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !147    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !403
  tail call void %i.c(ptr noundef nonnull %0) #25
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @longjmp(ptr noundef nonnull %i.d, i32 noundef 1) #28
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @my_output_message(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !147    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !404  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1756
  store i32 1, ptr %i.d, align 4, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !405
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1556
  tail call void %i.f(ptr noundef nonnull %0, ptr noundef nonnull %i.g) #25
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !405
  %i.j = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  tail call void %i.i(ptr noundef nonnull %0, ptr noundef nonnull %i.j) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @my_emit_message(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !147    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !406
  tail call void %i.c(ptr noundef nonnull %0, i32 noundef %1) #25
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i32 1, ptr %i.e, align 8, !tbaa !148
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 380
  %i.g = load i32, ptr %i.f, align 4, !tbaa !407
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @longjmp(ptr noundef nonnull %i.h, i32 noundef 1) #28
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @jpeg_CreateCompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @longjmp(ptr noundef, i32 noundef) local_unnamed_addr #21

declare void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #7

declare void @jpeg_enable_lossless(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @jpeg_set_quality(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @jpeg_set_colorspace(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @jinit_read_bmp(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @jinit_read_png(ptr noundef) local_unnamed_addr #7

declare ptr @jinit_read_ppm(ptr noundef) local_unnamed_addr #7

declare ptr @j12init_read_png(ptr noundef) local_unnamed_addr #7

declare ptr @j12init_read_ppm(ptr noundef) local_unnamed_addr #7

declare ptr @j16init_read_png(ptr noundef) local_unnamed_addr #7

declare ptr @j16init_read_ppm(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @setenv(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #15

declare void @jpeg_CreateDecompress(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

declare ptr @jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #22

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { nounwind returns_twice }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(none) }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS14jpeg_error_mgr", !8, i64 0}
!10 = !{!"p1 _ZTS15jpeg_memory_mgr", !8, i64 0}
!11 = !{!"p1 _ZTS17jpeg_progress_mgr", !8, i64 0}
!12 = !{!"p1 _ZTS20jpeg_destination_mgr", !8, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!"short", !4, i64 0}
!15 = !{!"p1 _ZTS16jpeg_comp_master", !8, i64 0}
!16 = !{!"p1 _ZTS22jpeg_c_main_controller", !8, i64 0}
!17 = !{!"p1 _ZTS22jpeg_c_prep_controller", !8, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_coef_controller", !8, i64 0}
!19 = !{!"p1 _ZTS18jpeg_marker_writer", !8, i64 0}
!20 = !{!"p1 _ZTS20jpeg_color_converter", !8, i64 0}
!21 = !{!"p1 _ZTS16jpeg_downsampler", !8, i64 0}
!22 = !{!"p1 _ZTS16jpeg_forward_dct", !8, i64 0}
!23 = !{!"p1 _ZTS20jpeg_entropy_encoder", !8, i64 0}
!24 = !{!"jpeg_compress_struct", !9, i64 0, !10, i64 8, !11, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !12, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !13, i64 64, !5, i64 72, !5, i64 76, !5, i64 80, !8, i64 88, !4, i64 96, !4, i64 128, !4, i64 160, !4, i64 192, !4, i64 208, !4, i64 224, !5, i64 240, !8, i64 248, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !4, i64 292, !4, i64 293, !4, i64 294, !14, i64 296, !14, i64 298, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !4, i64 328, !5, i64 360, !5, i64 364, !5, i64 368, !4, i64 372, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !15, i64 432, !16, i64 440, !17, i64 448, !18, i64 456, !19, i64 464, !20, i64 472, !21, i64 480, !22, i64 488, !23, i64 496, !8, i64 504, !5, i64 512}
!25 = !{!"p1 _ZTS15jpeg_source_mgr", !8, i64 0}
!26 = !{!"any p2 pointer", !8, i64 0}
!27 = !{!"p2 omnipotent char", !26, i64 0}
!28 = !{!"p1 int", !8, i64 0}
!29 = !{!"p1 _ZTS18jpeg_marker_struct", !8, i64 0}
!30 = !{!"p1 omnipotent char", !8, i64 0}
!31 = !{!"p1 _ZTS18jpeg_decomp_master", !8, i64 0}
!32 = !{!"p1 _ZTS22jpeg_d_main_controller", !8, i64 0}
!33 = !{!"p1 _ZTS22jpeg_d_coef_controller", !8, i64 0}
!34 = !{!"p1 _ZTS22jpeg_d_post_controller", !8, i64 0}
!35 = !{!"p1 _ZTS21jpeg_input_controller", !8, i64 0}
!36 = !{!"p1 _ZTS18jpeg_marker_reader", !8, i64 0}
!37 = !{!"p1 _ZTS20jpeg_entropy_decoder", !8, i64 0}
!38 = !{!"p1 _ZTS16jpeg_inverse_dct", !8, i64 0}
!39 = !{!"p1 _ZTS14jpeg_upsampler", !8, i64 0}
!40 = !{!"p1 _ZTS22jpeg_color_deconverter", !8, i64 0}
!41 = !{!"p1 _ZTS20jpeg_color_quantizer", !8, i64 0}
!42 = !{!"jpeg_decompress_struct", !9, i64 0, !10, i64 8, !11, i64 16, !8, i64 24, !5, i64 32, !5, i64 36, !25, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !13, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !27, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !28, i64 192, !4, i64 200, !4, i64 232, !4, i64 264, !5, i64 296, !8, i64 304, !5, i64 312, !5, i64 316, !4, i64 320, !4, i64 336, !4, i64 352, !5, i64 368, !5, i64 372, !4, i64 376, !4, i64 377, !4, i64 378, !14, i64 380, !14, i64 382, !5, i64 384, !4, i64 388, !5, i64 392, !29, i64 400, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !30, i64 424, !5, i64 432, !4, i64 440, !5, i64 472, !5, i64 476, !5, i64 480, !4, i64 484, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !31, i64 544, !32, i64 552, !33, i64 560, !34, i64 568, !35, i64 576, !36, i64 584, !37, i64 592, !38, i64 600, !39, i64 608, !40, i64 616, !41, i64 624}
!43 = !{!"long", !4, i64 0}
!44 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !5, i64 40, !4, i64 44, !5, i64 124, !43, i64 128, !27, i64 136, !5, i64 144, !27, i64 152, !5, i64 160, !5, i64 164}
!45 = !{!"my_error_mgr", !44, i64 0, !4, i64 168, !8, i64 368, !5, i64 376, !5, i64 380, !8, i64 384}
!46 = !{!"", !5, i64 0, !5, i64 4}
!47 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12}
!48 = !{!"_tjinstance", !24, i64 0, !42, i64 520, !45, i64 1152, !5, i64 1544, !5, i64 1548, !5, i64 1552, !4, i64 1556, !5, i64 1756, !30, i64 1760, !30, i64 1768, !43, i64 1776, !43, i64 1784, !5, i64 1792, !5, i64 1796, !5, i64 1800, !5, i64 1804, !5, i64 1808, !5, i64 1812, !5, i64 1816, !5, i64 1820, !5, i64 1824, !5, i64 1828, !5, i64 1832, !5, i64 1836, !5, i64 1840, !5, i64 1844, !5, i64 1848, !5, i64 1852, !5, i64 1856, !5, i64 1860, !5, i64 1864, !5, i64 1868, !5, i64 1872, !5, i64 1876, !46, i64 1880, !47, i64 1888, !5, i64 1904, !5, i64 1908, !5, i64 1912}
!49 = !{!48, !5, i64 1816}
!50 = !{!48, !5, i64 1820}
!51 = !{!48, !5, i64 1852}
!52 = !{!48, !5, i64 1868}
!53 = !{!48, !5, i64 1872}
!54 = !{!48, !5, i64 1912}
!55 = !{!48, !5, i64 1548}
!56 = !{!48, !5, i64 1552}
!57 = !{!30, !30, i64 0}
!58 = !{!43, !43, i64 0}
!59 = !{!48, !8, i64 1152}
!60 = !{!48, !8, i64 1168}
!61 = !{!48, !8, i64 1160}
!62 = !{!48, !8, i64 1520}
!63 = !{!48, !27, i64 1304}
!64 = !{!48, !5, i64 1312}
!65 = !{!48, !5, i64 1316}
!66 = !{!48, !8, i64 1536}
!67 = !{!48, !5, i64 1544}
!68 = !{!48, !5, i64 1528}
!69 = !{!48, !5, i64 1756}
!70 = !{!48, !30, i64 1760}
!71 = !{!48, !30, i64 1768}
!72 = !{!48, !5, i64 1532}
!73 = !{!48, !5, i64 1792}
!74 = !{!48, !5, i64 1796}
!75 = !{!48, !5, i64 1800}
!76 = !{!48, !5, i64 1804}
!77 = !{!48, !5, i64 1824}
!78 = !{!48, !5, i64 1828}
!79 = !{!48, !5, i64 1832}
!80 = !{!48, !5, i64 1836}
!81 = !{!48, !5, i64 1840}
!82 = !{!48, !5, i64 1844}
!83 = !{!48, !5, i64 1848}
!84 = !{!48, !5, i64 1856}
!85 = !{!48, !5, i64 1860}
!86 = !{!48, !5, i64 1864}
!87 = !{!48, !5, i64 1876}
!88 = !{!48, !5, i64 1904}
!89 = !{!48, !5, i64 1908}
!90 = !{!48, !5, i64 1808}
!91 = !{!48, !5, i64 1812}
!92 = !{!5, !5, i64 0}
!93 = !{!48, !43, i64 1776}
!94 = !{!24, !5, i64 48}
!95 = !{!24, !5, i64 52}
!96 = !{!24, !5, i64 72}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = !{!"llvm.loop.unroll.runtime.disable"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!24, !5, i64 304}
!102 = !{!24, !5, i64 36}
!103 = !{!24, !12, i64 40}
!104 = !{!"jpeg_destination_mgr", !30, i64 0, !43, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!105 = !{!104, !8, i64 32}
!106 = !{!14, !14, i64 0}
!107 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !43, i64 88, !43, i64 96}
!108 = !{!107, !43, i64 88}
!109 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !8, i64 80, !8, i64 88}
!110 = !{!109, !5, i64 8}
!111 = !{!109, !5, i64 12}
!112 = !{!"jpeg_progress_mgr", !8, i64 0, !43, i64 8, !43, i64 16, !5, i64 24, !5, i64 28}
!113 = !{!"p1 _ZTS11_tjinstance", !8, i64 0}
!114 = !{!"my_progress_mgr", !112, i64 0, !113, i64 32}
!115 = !{!114, !8, i64 0}
!116 = !{!114, !113, i64 32}
!117 = !{!42, !11, i64 16}
!118 = !{!42, !10, i64 8}
!119 = !{!42, !5, i64 36}
!120 = !{!48, !5, i64 568}
!121 = !{!48, !5, i64 572}
!122 = !{!48, !5, i64 816}
!123 = !{!48, !5, i64 580}
!124 = !{!48, !5, i64 832}
!125 = !{!48, !5, i64 836}
!126 = !{!48, !31, i64 1064}
!127 = !{!"jpeg_decomp_master", !8, i64 0, !8, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !4, i64 32, !4, i64 72, !5, i64 112, !5, i64 116, !29, i64 120, !5, i64 128, !5, i64 132, !5, i64 136}
!128 = !{!127, !5, i64 20}
!129 = !{!48, !5, i64 1044}
!130 = !{!48, !5, i64 1056}
!131 = !{!48, !4, i64 898}
!132 = !{!48, !5, i64 584}
!133 = !{!48, !5, i64 1880}
!134 = !{!48, !5, i64 1884}
!135 = !{!42, !5, i64 100}
!136 = !{!48, !5, i64 616}
!137 = !{!42, !5, i64 68}
!138 = !{!42, !5, i64 72}
!139 = !{!48, !5, i64 1888}
!140 = !{!48, !5, i64 1896}
!141 = !{!42, !5, i64 136}
!142 = !{!48, !5, i64 1892}
!143 = !{!48, !5, i64 1900}
!144 = !{!42, !5, i64 168}
!145 = !{!42, !5, i64 140}
!146 = !{!"jpeg_common_struct", !9, i64 0, !10, i64 8, !11, i64 16, !8, i64 24, !5, i64 32, !5, i64 36}
!147 = !{!146, !9, i64 0}
!148 = !{!45, !5, i64 376}
!149 = !{!24, !5, i64 60}
!150 = !{!24, !10, i64 8}
!151 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!152 = !{!"p2 short", !26, i64 0}
!153 = !{!"cjpeg_source_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !151, i64 32, !27, i64 40, !152, i64 48, !152, i64 56, !5, i64 64, !5, i64 68}
!154 = !{!153, !151, i64 32}
!155 = !{!153, !5, i64 68}
!156 = !{!153, !8, i64 0}
!157 = !{!24, !14, i64 296}
!158 = !{!24, !14, i64 298}
end_hunk_4
