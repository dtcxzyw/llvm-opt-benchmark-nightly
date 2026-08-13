inline.NumInlined: 17
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@write_image:bb.a
  %i.k = load i32, ptr %i.j, align 4, !tbaa !72
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = load float, ptr %i.a, align 4, !tbaa !73
  %i.o = load float, ptr %i.b, align 4, !tbaa !73
  %i.p = tail call ptr @dt_pdf_start(ptr noundef %1, float noundef %i.n, float noundef %i.o, float noundef %i.h, i32 noundef %i.m) #14 ; 3 uses
  %.not170.not = icmp eq ptr %i.p, null
  br i1 %.not170.not, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !74
  %.not171 = icmp eq i8 %i.r, 0
  %i.s = select i1 %.not171, ptr null, ptr %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.s, ptr %i.t, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.p, ptr %i.u, align 8, !tbaa !79
  %i.v = tail call noalias ptr @g_strdup(ptr noundef %1) #14
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 440
  store ptr %i.v, ptr %i.w, align 8, !tbaa !80
  %i.x = load float, ptr %i.c, align 4, !tbaa !73
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 472
  store float %i.x, ptr %i.y, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.25, ptr noundef %1) #14
  %i.z = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #14
  tail call void (ptr, ...) @dt_control_log(ptr noundef %i.z, ptr noundef %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread184

bb.e:                                             ; preds = %.thread, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !82
  %.not172 = icmp eq i32 %i.ab, 0
  br i1 %.not172, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !83
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.af = tail call ptr @dt_colorspaces_get_output_profile(i32 noundef %7, i32 noundef %3, ptr noundef %4) #14 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %.0147193 = load ptr, ptr %i.ag, align 8, !tbaa !84 ; 2 uses
  %.not173194 = icmp eq ptr %.0147193, null
  br i1 %.not173194, label %.loopexit192.thread, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.0147195, i64 8
  %.0147 = load ptr, ptr %i.ah, align 8, !tbaa !84 ; 2 uses
  %.not173 = icmp eq ptr %.0147, null
  br i1 %.not173, label %.loopexit192.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.0147195 = phi ptr [ %.0147, %bb.h ], [ %.0147193, %bb.g ] ; 2 uses
  %i.ai = load ptr, ptr %.0147195, align 8, !tbaa !85 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !87
  %.not174 = icmp eq ptr %i.aj, %i.af
  br i1 %.not174, label %.loopexit192, label %bb.h

.loopexit192:                                     ; preds = %.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !90 ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.loopexit192.thread, label %bb.n

.loopexit192.thread:                              ; preds = %bb.h, %bb.g, %.loopexit192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 1032 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !91
  %i.ap = call i32 @cmsSaveProfileToMem(ptr noundef %i.ao, ptr noundef null, ptr noundef nonnull %i.d) #14 ; 0 uses
  %i.aq = load i32, ptr %i.d, align 4, !tbaa !58  ; 2 uses
  %.not175 = icmp eq i32 %i.aq, 0
  br i1 %.not175, label %bb.m, label %bb.i

bb.i:                                             ; preds = %.loopexit192.thread
  %i.ar = zext i32 %i.aq to i64
  %i.as = call noalias ptr @malloc(i64 noundef %i.ar) #15 ; 4 uses
  %.not176 = icmp eq ptr %i.as, null
  br i1 %.not176, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !91
  %i.au = call i32 @cmsSaveProfileToMem(ptr noundef %i.at, ptr noundef nonnull %i.as, ptr noundef nonnull %i.d) #14 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !79
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !58
  %i.ay = zext i32 %i.ax to i64
  %i.az = call i32 @dt_pdf_add_icc_from_data(ptr noundef %i.aw, ptr noundef nonnull %i.as, i64 noundef %i.ay) #14
  call void @free(ptr noundef nonnull %i.as) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3146 = phi i32 [ %i.az, %bb.j ], [ 0, %bb.i ] ; 3 uses
  %i.ba = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15 ; 4 uses
  %.not177 = icmp eq ptr %i.ba, null
  br i1 %.not177, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.af, ptr %i.ba, align 8, !tbaa !87
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i32 %.3146, ptr %i.bb, align 8, !tbaa !90
  %i.bc = load ptr, ptr %i.ag, align 8, !tbaa !93
  %i.bd = call ptr @g_list_append(ptr noundef %i.bc, ptr noundef nonnull %i.ba) #14
  store ptr %i.bd, ptr %i.ag, align 8, !tbaa !93
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.loopexit192.thread
  %.4 = phi i32 [ 0, %.loopexit192.thread ], [ %.3146, %bb.l ], [ %.3146, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  br label %bb.n

bb.n:                                             ; preds = %.loopexit192, %bb.m, %bb.f, %bb.e
  %.6 = phi i32 [ 0, %bb.e ], [ 0, %bb.f ], [ %.4, %bb.m ], [ %i.al, %.loopexit192 ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !83
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %.thread184

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !94
  %i.bj = icmp eq i32 %i.bi, 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !95 ; 2 uses
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul nsw i64 %i.bm, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !96
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul i64 %i.bn, %i.bq
  %i.bs = call ptr @dt_alloc_aligned(i64 noundef %i.br) #14 ; 5 uses
  %.not179 = icmp eq ptr %i.bs, null
  br i1 %.not179, label %.thread184, label %.preheader187

.preheader187:                                    ; preds = %bb.p
  %i.bt = load i32, ptr %i.bo, align 4, !tbaa !96 ; 4 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader187
  %i.bv = load i32, ptr %i.bk, align 8, !tbaa !95 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge208
  %i.bx = phi i32 [ %i.ca, %._crit_edge208 ], [ %i.bt, %.preheader.lr.ph ]
  %i.by = phi i32 [ %i.cb, %._crit_edge208 ], [ %i.bv, %.preheader.lr.ph ] ; 2 uses
  %.0157213 = phi i32 [ %i.cc, %._crit_edge208 ], [ 0, %.preheader.lr.ph ]
  %.0158212 = phi ptr [ %.1159.lcssa, %._crit_edge208 ], [ %i.bs, %.preheader.lr.ph ] ; 2 uses
  %.0160211 = phi ptr [ %.1161.lcssa, %._crit_edge208 ], [ %2, %.preheader.lr.ph ] ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.lr.ph207, label %._crit_edge208

._crit_edge208.loopexit:                          ; preds = %.lr.ph207
  %.pre = load i32, ptr %i.bo, align 4, !tbaa !96
  br label %._crit_edge208

._crit_edge208:                                   ; preds = %._crit_edge208.loopexit, %.preheader
  %i.ca = phi i32 [ %i.bx, %.preheader ], [ %.pre, %._crit_edge208.loopexit ] ; 3 uses
  %i.cb = phi i32 [ %i.by, %.preheader ], [ %i.ch, %._crit_edge208.loopexit ]
  %.1161.lcssa = phi ptr [ %.0160211, %.preheader ], [ %i.cf, %._crit_edge208.loopexit ]
  %.1159.lcssa = phi ptr [ %.0158212, %.preheader ], [ %i.cg, %._crit_edge208.loopexit ]
  %i.cc = add nuw nsw i32 %.0157213, 1            ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %i.ca
  br i1 %i.cd, label %.preheader, label %.loopexit, !llvm.loop !97

.lr.ph207:                                        ; preds = %.preheader, %.lr.ph207
  %.0156206 = phi i32 [ %i.ce, %.lr.ph207 ], [ 0, %.preheader ]
  %.1159205 = phi ptr [ %i.cg, %.lr.ph207 ], [ %.0158212, %.preheader ] ; 2 uses
  %.1161204 = phi ptr [ %i.cf, %.lr.ph207 ], [ %.0160211, %.preheader ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.1159205, ptr noundef nonnull align 1 dereferenceable(3) %.1161204, i64 3, i1 false)
  %i.ce = add nuw nsw i32 %.0156206, 1            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1161204, i64 4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1159205, i64 3 ; 2 uses
  %i.ch = load i32, ptr %i.bk, align 8, !tbaa !95 ; 2 uses
  %i.ci = icmp slt i32 %i.ce, %i.ch
  br i1 %i.ci, label %.lr.ph207, label %._crit_edge208.loopexit

bb.q:                                             ; preds = %bb.o
  %i.cj = mul nsw i32 %i.bl, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !96
  %i.cm = mul nsw i32 %i.cj, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 1
  %i.cp = call ptr @dt_alloc_aligned(i64 noundef %i.co) #14 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cp, i64 64) ]
  %.not178 = icmp eq ptr %i.cp, null
  br i1 %.not178, label %.thread184, label %.preheader190

.preheader190:                                    ; preds = %bb.q
  %i.cq = load i32, ptr %i.ck, align 4, !tbaa !96 ; 6 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.preheader189.lr.ph, label %.loopexit

.preheader189.lr.ph:                              ; preds = %.preheader190
  %i.cs = load i32, ptr %i.bk, align 8, !tbaa !95 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.preheader189.preheader.a, label %.loopexit

.preheader189.preheader.a:                        ; preds = %.preheader189.lr.ph
  %i.cu = zext nneg i32 %i.cs to i64              ; 2 uses
  %12 = zext nneg i32 %i.cq to i64                ; 2 uses
  %i.cv = mul nuw nsw i64 %i.cu, %12              ; 9 uses
  %min.epilog.iters.check.a = icmp samesign ult i64 %i.cv, 5
  br i1 %min.epilog.iters.check.a, label %.preheader188.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader189.preheader.a
  %13 = mul nuw nsw i64 %i.cu, %12                ; 2 uses
  %14 = mul i64 %13, 6
  %i.cw = getelementptr i8, ptr %i.cp, i64 %14
  %15 = shl i64 %13, 3
  %i.cx = getelementptr i8, ptr %2, i64 %15
  %scevgep275 = getelementptr i8, ptr %i.cx, i64 -2
  %bound0 = icmp ult ptr %i.cp, %scevgep275
  %bound1 = icmp ult ptr %2, %i.cw
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader188.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check270 = icmp samesign ult i64 %i.cv, 17
  br i1 %min.iters.check270, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %16 = and i64 %i.cv, 15                         ; 2 uses
  %17 = icmp eq i64 %16, 0
  %18 = select i1 %17, i64 16, i64 %16            ; 2 uses
  %n.vec = sub nsw i64 %i.cv, %18                 ; 5 uses
  %19 = mul i64 %n.vec, 6
  %i.cy = getelementptr i8, ptr %i.cp, i64 %19
  %20 = shl i64 %n.vec, 3
  %i.cz = getelementptr i8, ptr %2, i64 %20
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.da = mul i64 %index, 6
  %next.gep = getelementptr i8, ptr %i.cp, i64 %i.da
  %i.db = shl i64 %index, 3
  %next.gep277.a = getelementptr i8, ptr %2, i64 %i.db
  %wide.vec = load <64 x i16>, ptr %next.gep277.a, align 2, !tbaa !99, !alias.scope !101 ; 2 uses
  %i.dc = call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %wide.vec)
  %i.dd = shufflevector <64 x i16> %i.dc, <64 x i16> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 34, i32 38, i32 42, i32 46, i32 50, i32 54, i32 58, i32 62>
  %i.de = call <64 x i16> @llvm.bswap.v64i16(<64 x i16> %wide.vec)
  %i.df = shufflevector <64 x i16> %i.de, <64 x i16> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 32, i32 36, i32 40, i32 44, i32 48, i32 52, i32 56, i32 60, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 33, i32 37, i32 41, i32 45, i32 49, i32 53, i32 57, i32 61>
  %i.dg = shufflevector <16 x i16> %i.dd, <16 x i16> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i16> %i.df, <32 x i16> %i.dg, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  store <48 x i16> %interleaved.vec, ptr %next.gep, align 32, !tbaa !99, !alias.scope !104, !noalias !101
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dh = icmp eq i64 %index.next, %n.vec
  br i1 %i.dh, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !106

vec.epilog.iter.check:                            ; preds = %vector.body
  %min.epilog.iters.check = icmp samesign ult i64 %18, 5
  br i1 %min.epilog.iters.check, label %.preheader188.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %21 = and i64 %i.cv, 3                          ; 2 uses
  %22 = icmp eq i64 %21, 0
  %23 = select i1 %22, i64 4, i64 %21
  %n.vec275 = sub nsw i64 %i.cv, %23              ; 4 uses
  %24 = mul i64 %n.vec275, 6
  %i.di = getelementptr i8, ptr %i.cp, i64 %24
  %25 = shl i64 %n.vec275, 3
  %i.dj = getelementptr i8, ptr %2, i64 %25
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index283 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next291, %vec.epilog.vector.body ] ; 3 uses
  %i.dk = mul i64 %index283, 6
  %next.gep284 = getelementptr i8, ptr %i.cp, i64 %i.dk
  %i.dl = shl i64 %index283, 3
  %next.gep285 = getelementptr i8, ptr %2, i64 %i.dl
  %wide.vec286 = load <16 x i16>, ptr %next.gep285, align 2, !tbaa !99, !alias.scope !101
  %i.dm = call <16 x i16> @llvm.bswap.v16i16(<16 x i16> %wide.vec286)
  %interleaved.vec290 = shufflevector <16 x i16> %i.dm, <16 x i16> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 12, i32 13, i32 14>
  store <12 x i16> %interleaved.vec290, ptr %next.gep284, align 2, !tbaa !99, !alias.scope !104, !noalias !101
  %index.next291 = add nuw i64 %index283, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next291, %n.vec275
  br i1 %i.dn, label %.preheader188.preheader, label %vec.epilog.vector.body, !llvm.loop !110

.preheader188.preheader:                          ; preds = %vec.epilog.vector.body, %vector.memcheck, %.preheader189.preheader.a, %vec.epilog.iter.check
  %indvar204.ph = phi i64 [ 0, %.preheader189.preheader.a ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec275, %vec.epilog.vector.body ] ; 4 uses
  %.1153198.ph = phi ptr [ %i.cp, %.preheader189.preheader.a ], [ %i.cp, %vector.memcheck ], [ %i.cy, %vec.epilog.iter.check ], [ %i.di, %vec.epilog.vector.body ] ; 2 uses
  %.1155197.ph = phi ptr [ %2, %.preheader189.preheader.a ], [ %2, %vector.memcheck ], [ %i.cz, %vec.epilog.iter.check ], [ %i.dj, %vec.epilog.vector.body ] ; 2 uses
  %26 = sub i64 %i.cv, %indvar204.ph
  %xtraiter = and i64 %26, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader188.prol.loopexit, label %.preheader188.prol

.preheader188.prol:                               ; preds = %.preheader188.preheader, %.preheader188.prol
  %indvar204.prol = phi i64 [ %indvar.next205.prol, %.preheader188.prol ], [ %indvar204.ph, %.preheader188.preheader ]
  %.1153198.prol = phi ptr [ %i.dv, %.preheader188.prol ], [ %.1153198.ph, %.preheader188.preheader ] ; 4 uses
  %.1155197.prol = phi ptr [ %27, %.preheader188.prol ], [ %.1155197.ph, %.preheader188.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader188.prol ], [ 0, %.preheader188.preheader ]
  %i.do = load i16, ptr %.1155197.prol, align 2, !tbaa !99
  %rev.prol = call i16 @llvm.bswap.i16(i16 %i.do)
  store i16 %rev.prol, ptr %.1153198.prol, align 2, !tbaa !99
  %i.dp = getelementptr inbounds nuw i8, ptr %.1155197.prol, i64 2
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !99
  %rev.1.prol = call i16 @llvm.bswap.i16(i16 %i.dq)
  %i.dr = getelementptr inbounds nuw i8, ptr %.1153198.prol, i64 2
  store i16 %rev.1.prol, ptr %i.dr, align 2, !tbaa !99
  %i.ds = getelementptr inbounds nuw i8, ptr %.1155197.prol, i64 4
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !99
  %rev.2.prol = call i16 @llvm.bswap.i16(i16 %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %.1153198.prol, i64 4
  store i16 %rev.2.prol, ptr %i.du, align 2, !tbaa !99
  %27 = getelementptr inbounds nuw i8, ptr %.1155197.prol, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.1153198.prol, i64 6 ; 2 uses
  %indvar.next205.prol = add nuw nsw i64 %indvar204.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader188.prol.loopexit, label %.preheader188.prol, !llvm.loop !111

.preheader188.prol.loopexit:                      ; preds = %.preheader188.prol, %.preheader188.preheader
  %indvar204.unr = phi i64 [ %indvar204.ph, %.preheader188.preheader ], [ %indvar.next205.prol, %.preheader188.prol ]
  %.1153198.unr = phi ptr [ %.1153198.ph, %.preheader188.preheader ], [ %i.dv, %.preheader188.prol ]
  %.1155197.unr = phi ptr [ %.1155197.ph, %.preheader188.preheader ], [ %27, %.preheader188.prol ]
  %28 = sub i64 %indvar204.ph, %i.cv
  %i.dw = icmp ugt i64 %28, -4
  br i1 %i.dw, label %.loopexit, label %.preheader188

.preheader188:                                    ; preds = %.preheader188.prol.loopexit, %.preheader188
  %indvar204 = phi i64 [ %indvar.next205.3, %.preheader188 ], [ %indvar204.unr, %.preheader188.prol.loopexit ]
  %.1153198 = phi ptr [ %i.ff, %.preheader188 ], [ %.1153198.unr, %.preheader188.prol.loopexit ] ; 13 uses
  %.1155197 = phi ptr [ %29, %.preheader188 ], [ %.1155197.unr, %.preheader188.prol.loopexit ] ; 13 uses
  %i.dx = load i16, ptr %.1155197, align 2, !tbaa !99
  %rev = call i16 @llvm.bswap.i16(i16 %i.dx)
  store i16 %rev, ptr %.1153198, align 2, !tbaa !99
  %i.dy = getelementptr inbounds nuw i8, ptr %.1155197, i64 2
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !99
  %rev.1 = call i16 @llvm.bswap.i16(i16 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %.1153198, i64 2
  store i16 %rev.1, ptr %i.ea, align 2, !tbaa !99
  %i.eb = getelementptr inbounds nuw i8, ptr %.1155197, i64 4
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !99
  %rev.2 = call i16 @llvm.bswap.i16(i16 %i.ec)
  %i.ed = getelementptr inbounds nuw i8, ptr %.1153198, i64 4
  store i16 %rev.2, ptr %i.ed, align 2, !tbaa !99
  %i.ee = getelementptr inbounds nuw i8, ptr %.1155197, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %.1153198, i64 6
  %i.eg = load i16, ptr %i.ee, align 2, !tbaa !99
  %rev.1303 = call i16 @llvm.bswap.i16(i16 %i.eg)
  store i16 %rev.1303, ptr %i.ef, align 2, !tbaa !99
  %i.eh = getelementptr inbounds nuw i8, ptr %.1155197, i64 10
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !99
  %rev.1.1 = call i16 @llvm.bswap.i16(i16 %i.ei)
  %i.ej = getelementptr inbounds nuw i8, ptr %.1153198, i64 8
  store i16 %rev.1.1, ptr %i.ej, align 2, !tbaa !99
  %i.ek = getelementptr inbounds nuw i8, ptr %.1155197, i64 12
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !99
  %rev.2.1 = call i16 @llvm.bswap.i16(i16 %i.el)
  %i.em = getelementptr inbounds nuw i8, ptr %.1153198, i64 10
  store i16 %rev.2.1, ptr %i.em, align 2, !tbaa !99
  %i.en = getelementptr inbounds nuw i8, ptr %.1155197, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %.1153198, i64 12
  %i.ep = load i16, ptr %i.en, align 2, !tbaa !99
  %rev.2304 = call i16 @llvm.bswap.i16(i16 %i.ep)
  store i16 %rev.2304, ptr %i.eo, align 2, !tbaa !99
  %i.eq = getelementptr inbounds nuw i8, ptr %.1155197, i64 18
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !99
  %rev.1.2 = call i16 @llvm.bswap.i16(i16 %i.er)
  %i.es = getelementptr inbounds nuw i8, ptr %.1153198, i64 14
  store i16 %rev.1.2, ptr %i.es, align 2, !tbaa !99
  %i.et = getelementptr inbounds nuw i8, ptr %.1155197, i64 20
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !99
  %rev.2.2 = call i16 @llvm.bswap.i16(i16 %i.eu)
  %i.ev = getelementptr inbounds nuw i8, ptr %.1153198, i64 16
  store i16 %rev.2.2, ptr %i.ev, align 2, !tbaa !99
  %i.ew = getelementptr inbounds nuw i8, ptr %.1155197, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %.1153198, i64 18
  %i.ey = load i16, ptr %i.ew, align 2, !tbaa !99
  %rev.3 = call i16 @llvm.bswap.i16(i16 %i.ey)
  store i16 %rev.3, ptr %i.ex, align 2, !tbaa !99
  %i.ez = getelementptr inbounds nuw i8, ptr %.1155197, i64 26
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !99
  %rev.1.3 = call i16 @llvm.bswap.i16(i16 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %.1153198, i64 20
  store i16 %rev.1.3, ptr %i.fb, align 2, !tbaa !99
  %i.fc = getelementptr inbounds nuw i8, ptr %.1155197, i64 28
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !99
  %rev.2.3 = call i16 @llvm.bswap.i16(i16 %i.fd)
  %i.fe = getelementptr inbounds nuw i8, ptr %.1153198, i64 22
  store i16 %rev.2.3, ptr %i.fe, align 2, !tbaa !99
  %29 = getelementptr inbounds nuw i8, ptr %.1155197, i64 32
  %i.ff = getelementptr inbounds nuw i8, ptr %.1153198, i64 24
  %indvar.next205.3 = add nuw nsw i64 %indvar204, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvar.next205.3, %i.cv
  br i1 %exitcond.not.3, label %.loopexit, label %.preheader188, !llvm.loop !113

.loopexit:                                        ; preds = %.preheader188.prol.loopexit, %.preheader188, %._crit_edge208, %.preheader.lr.ph, %.preheader190, %.preheader189.lr.ph, %.preheader187
  %30 = phi i32 [ %i.bt, %.preheader187 ], [ %i.bt, %.preheader.lr.ph ], [ %i.cq, %.preheader190 ], [ %i.cq, %.preheader189.lr.ph ], [ %i.ca, %._crit_edge208 ], [ %i.cq, %.preheader188 ], [ %i.cq, %.preheader188.prol.loopexit ]
  %.0148 = phi ptr [ %i.bs, %.preheader187 ], [ %i.bs, %.preheader.lr.ph ], [ %i.cp, %.preheader190 ], [ %i.cp, %.preheader189.lr.ph ], [ %i.bs, %._crit_edge208 ], [ %i.cp, %.preheader188 ], [ %i.cp, %.preheader188.prol.loopexit ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !79
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !114
  %i.fk = load i32, ptr %i.bh, align 8, !tbaa !94
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.fm = load float, ptr %i.fl, align 8, !tbaa !81
  %i.fn = call ptr @dt_pdf_add_image(ptr noundef %i.fh, ptr noundef nonnull %.0148, i32 noundef %i.fj, i32 noundef %30, i32 noundef %i.fk, i32 noundef %.6, float noundef %i.fm) #14
  call void @free(ptr noundef nonnull %.0148) #14
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !115
  %i.fq = call ptr @g_list_append(ptr noundef %i.fp, ptr noundef %i.fn) #14 ; 2 uses
  store ptr %i.fq, ptr %i.fo, align 8, !tbaa !115
  %i.fr = icmp eq i32 %8, %9
  br i1 %i.fr, label %bb.r, label %.thread184

bb.r:                                             ; preds = %.loopexit
  %i.fs = call i32 @g_list_length(ptr noundef %i.fq) #14 ; 4 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = shl nsw i64 %i.ft, 3
  %i.fv = call noalias ptr @malloc(i64 noundef %i.fu) #15 ; 4 uses
  %i.fw = load i32, ptr %i.be, align 8, !tbaa !83 ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 2
  %i.fy = icmp ne i32 %i.fw, 0
  %i.fz = insertelement <2 x i1> poison, i1 %i.fy, i64 0
  %i.ga = insertelement <2 x i1> %i.fz, i1 %i.fx, i64 1
  %.0214 = load ptr, ptr %i.fo, align 8, !tbaa !84 ; 2 uses
  %.not181215 = icmp eq ptr %.0214, null
  br i1 %.not181215, label %._crit_edge220, label %.lr.ph219

.lr.ph219:                                        ; preds = %bb.r
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.gc = zext <2 x i1> %i.ga to <2 x i32>
  br label %bb.s

._crit_edge220:                                   ; preds = %bb.s, %bb.r
  %i.gd = load ptr, ptr %i.fg, align 8, !tbaa !79
  call void @dt_pdf_finish(ptr noundef %i.gd, ptr noundef %i.fv, i32 noundef %i.fs) #14
  %i.ge = load ptr, ptr %i.fo, align 8, !tbaa !115
  call void @g_list_free_full(ptr noundef %i.ge, ptr noundef nonnull @free) #14
  %i.gf = icmp sgt i32 %i.fs, 0
  br i1 %i.gf, label %.lr.ph223.preheader, label %._crit_edge224

.lr.ph223.preheader:                              ; preds = %._crit_edge220
  %wide.trip.count = zext nneg i32 %i.fs to i64
  br label %.lr.ph223

bb.s:                                             ; preds = %.lr.ph219, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph219 ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %.0217 = phi ptr [ %.0214, %.lr.ph219 ], [ %.0, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.gg = load ptr, ptr %.0217, align 8, !tbaa !85 ; 3 uses
  store ptr %i.gg, ptr %i.e, align 8, !tbaa !116
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 52
  store <2 x i32> %i.gc, ptr %i.gh, align 4, !tbaa !58
  %i.gi = load i32, ptr %i.gb, align 4, !tbaa !118
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  store i32 %i.gi, ptr %i.gj, align 8, !tbaa !119
  %i.gk = load ptr, ptr %i.fg, align 8, !tbaa !79
  %i.gl = call ptr @dt_pdf_add_page(ptr noundef %i.gk, ptr noundef nonnull %i.e, i32 noundef 1) #14
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv
  store ptr %i.gl, ptr %i.gm, align 8, !tbaa !121
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %i.gn = getelementptr inbounds nuw i8, ptr %.0217, i64 8
  %.0 = load ptr, ptr %i.gn, align 8, !tbaa !84   ; 2 uses
  %.not181 = icmp eq ptr %.0, null
  br i1 %.not181, label %._crit_edge220, label %bb.s

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %.lr.ph223
  %indvars.iv235 = phi i64 [ 0, %.lr.ph223.preheader ], [ %indvars.iv.next236, %.lr.ph223 ] ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv235
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !121
  call void @free(ptr noundef %i.gp) #14
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 2 uses
  %exitcond238.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count
  br i1 %exitcond238.not, label %._crit_edge224, label %.lr.ph223

._crit_edge224:                                   ; preds = %.lr.ph223, %._crit_edge220
  call void @free(ptr noundef %i.fv) #14
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !80
  call void @g_free(ptr noundef %i.gr) #14
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !93
  call void @g_list_free_full(ptr noundef %i.gt, ptr noundef nonnull @free) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gq, i8 0, i64 32, i1 false)
  br label %.thread184

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread184

.thread184:                                       ; preds = %bb.q, %bb.p, %bb.n, %bb.d, %._crit_edge224, %.loopexit, %.critedge
  %.3 = phi i32 [ 1, %.critedge ], [ 1, %bb.d ], [ 1, %bb.q ], [ 0, %._crit_edge224 ], [ 0, %.loopexit ], [ 1, %bb.n ], [ 1, %bb.p ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_paper_size(ptr noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.e = call i32 @dt_pdf_parse_paper_size(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.74, ptr noundef nonnull %i.d) #14
  %i.f = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.75, i32 noundef 5) #14
  call void (ptr, ...) @dt_control_log(ptr noundef %i.f) #14
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.h = call i32 @dt_pdf_parse_length(ptr noundef nonnull %i.g, ptr noundef nonnull %i.c) #14
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.76, ptr noundef nonnull %i.g) #14
  %i.i = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.77, i32 noundef 5) #14
  call void (ptr, ...) @dt_control_log(ptr noundef %i.i) #14
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !73
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 340
  %i.k = load i32, ptr %i.j, align 4, !tbaa !123
  %i.l = icmp eq i32 %i.k, 1
  %i.m = load float, ptr %i.a, align 4, !tbaa !73 ; 7 uses
  %i.n = load float, ptr %i.b, align 4, !tbaa !73 ; 7 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = fcmp reassoc nsz arcp contract afn ogt float %i.m, %i.n
  %i.p = select reassoc nsz arcp contract afn i1 %i.o, float %i.m, float %i.n
  %i.q = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.n
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.n
  %i.s = select reassoc nsz arcp contract afn i1 %i.r, float %i.m, float %i.n
  %i.t = fcmp reassoc nsz arcp contract afn ogt float %i.m, %i.n
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink25 = phi i1 [ %i.t, %bb.g ], [ %i.q, %bb.f ]
  %.sink = phi float [ %i.s, %bb.g ], [ %i.p, %bb.f ]
  %i.u = select reassoc nsz arcp contract afn i1 %.sink25, float %i.m, float %i.n
  store float %.sink, ptr %1, align 4, !tbaa !73
  store float %i.u, ptr %2, align 4, !tbaa !73
  %i.v = load float, ptr %i.c, align 4, !tbaa !73
  store float %i.v, ptr %3, align 4, !tbaa !73
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %.0 = phi i32 [ 0, %bb.h ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare ptr @dt_pdf_start(ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @dt_colorspaces_get_output_profile(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cmsSaveProfileToMem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

declare i32 @dt_pdf_add_icc_from_data(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #6

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

declare ptr @dt_pdf_add_image(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #3

declare i32 @g_list_length(ptr noundef) local_unnamed_addr #3

declare ptr @dt_pdf_add_page(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

end_hunk_0
