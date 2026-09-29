Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/turbojpeg?download=true
inline.NumInlined: 92
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 47
begin_hunk_0_@tj3Decompress8:bb.a
  %indvars.iv.next246.epil = add nuw nsw i64 %indvars.iv245.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !216

._crit_edge:                                      ; preds = %.lr.ph.split, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %middle.block, %.preheader236
  %i.gr = load i32, ptr %i.ew, align 4, !tbaa !142 ; 2 uses
  %.not211 = icmp eq i32 %i.gr, 0
  br i1 %.not211, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 1900
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !143 ; 2 uses
  %.not212 = icmp eq i32 %i.gt, 0
  br i1 %.not212, label %.preheader, label %.thread224

.preheader:                                       ; preds = %bb.ad
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 8, !tbaa !144 ; 2 uses
  %i.gw = load i32, ptr %i.ev, align 4, !tbaa !145 ; 2 uses
  %i.gx = icmp ult i32 %i.gv, %i.gw
  br i1 %i.gx, label %.lr.ph241, label %.thread228

bb.ae:                                            ; preds = %._crit_edge
  %i.gy = call i32 @jpeg_skip_scanlines(ptr noundef nonnull %i.e, i32 noundef %i.gr) #25 ; 4 uses
  %i.gz = load i32, ptr %i.ew, align 4, !tbaa !142 ; 2 uses
  %.not214 = icmp eq i32 %i.gy, %i.gz
  br i1 %.not214, label %..thread224_crit_edge, label %bb.af

..thread224_crit_edge:                            ; preds = %bb.ae
  %.phi.trans.insert251 = getelementptr inbounds nuw i8, ptr %0, i64 1900
  %.pre252 = load i32, ptr %.phi.trans.insert251, align 4, !tbaa !143
  br label %.thread224

bb.af:                                            ; preds = %bb.ae
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.hb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ha, i64 noundef 200, ptr noundef nonnull @.str.37, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, i32 noundef %i.gz, i32 noundef %i.gy) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !70
  %i.hc = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.hd = load i32, ptr %i.ew, align 4, !tbaa !142
  %i.he = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.hc, i64 noundef 200, ptr noundef nonnull @.str.37, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, i32 noundef %i.hd, i32 noundef %i.gy) #25 ; 0 uses
  br label %bb.ai

.thread224:                                       ; preds = %..thread224_crit_edge, %bb.ad
  %i.hf = phi i32 [ %.pre252, %..thread224_crit_edge ], [ %i.gt, %bb.ad ]
  %i.hg = phi i32 [ %i.gy, %..thread224_crit_edge ], [ 0, %bb.ad ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 1900 ; 3 uses
  %i.hj = load i32, ptr %i.hh, align 8, !tbaa !144 ; 2 uses
  %i.hk = add nsw i32 %i.hf, %i.hg                ; 3 uses
  %i.hl = icmp slt i32 %i.hj, %i.hk
  br i1 %i.hl, label %.lr.ph239, label %._crit_edge240

.lr.ph239:                                        ; preds = %.thread224, %.lr.ph239
  %i.hm = phi i32 [ %i.hx, %.lr.ph239 ], [ %i.hk, %.thread224 ]
  %i.hn = phi i32 [ %i.hv, %.lr.ph239 ], [ %i.hg, %.thread224 ]
  %i.ho = phi i32 [ %i.hu, %.lr.ph239 ], [ %i.hj, %.thread224 ] ; 2 uses
  %i.hp = sub i32 %i.ho, %i.hn
  %i.hq = zext i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.hq
  %i.hs = sub i32 %i.hm, %i.ho
  %i.ht = call i32 @jpeg_read_scanlines(ptr noundef nonnull %i.e, ptr noundef nonnull %i.hr, i32 noundef %i.hs) #25 ; 0 uses
  %i.hu = load i32, ptr %i.hh, align 8, !tbaa !144 ; 2 uses
  %i.hv = load i32, ptr %i.ew, align 4, !tbaa !142 ; 2 uses
  %i.hw = load i32, ptr %i.hi, align 4, !tbaa !143
  %i.hx = add nsw i32 %i.hw, %i.hv                ; 3 uses
  %i.hy = icmp slt i32 %i.hu, %i.hx
  br i1 %i.hy, label %.lr.ph239, label %._crit_edge240, !llvm.loop !217

._crit_edge240:                                   ; preds = %.lr.ph239, %.thread224
  %.lcssa = phi i32 [ %i.hk, %.thread224 ], [ %i.hx, %.lr.ph239 ] ; 2 uses
  %i.hz = load i32, ptr %i.ev, align 4, !tbaa !145 ; 2 uses
  %.not215 = icmp eq i32 %.lcssa, %i.hz
  br i1 %.not215, label %.thread228, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge240
  %i.ia = sub i32 %i.hz, %.lcssa
  %i.ib = call i32 @jpeg_skip_scanlines(ptr noundef nonnull %i.e, i32 noundef %i.ia) #25 ; 3 uses
  %i.ic = load i32, ptr %i.ev, align 4, !tbaa !145 ; 2 uses
  %i.id = load i32, ptr %i.ew, align 4, !tbaa !142
  %i.ie = load i32, ptr %i.hi, align 4, !tbaa !143
  %i.if = add i32 %i.ie, %i.id                    ; 2 uses
  %i.ig = sub i32 %i.ic, %i.if
  %.not216 = icmp eq i32 %i.ib, %i.ig
  br i1 %.not216, label %.thread228, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.ii = sub i32 %i.ic, %i.ib
  %i.ij = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ih, i64 noundef 200, ptr noundef nonnull @.str.38, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, i32 noundef %i.if, i32 noundef %i.ii) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !70
  %i.ik = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.il = load i32, ptr %i.ew, align 4, !tbaa !142
  %i.im = load i32, ptr %i.hi, align 4, !tbaa !143
  %i.in = add nsw i32 %i.im, %i.il
  %i.io = load i32, ptr %i.ev, align 4, !tbaa !145
  %i.ip = sub i32 %i.io, %i.ib
  %i.iq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ik, i64 noundef 200, ptr noundef nonnull @.str.38, ptr noundef nonnull @tj3Decompress8.FUNCTION_NAME, i32 noundef %i.in, i32 noundef %i.ip) #25 ; 0 uses
  br label %bb.ai

.lr.ph241:                                        ; preds = %.preheader, %.lr.ph241
  %i.ir = phi i32 [ %i.iy, %.lr.ph241 ], [ %i.gw, %.preheader ]
  %i.is = phi i32 [ %i.ix, %.lr.ph241 ], [ %i.gv, %.preheader ] ; 2 uses
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.it
  %i.iv = sub nuw i32 %i.ir, %i.is
  %i.iw = call i32 @jpeg_read_scanlines(ptr noundef nonnull %i.e, ptr noundef nonnull %i.iu, i32 noundef %i.iv) #25 ; 0 uses
  %i.ix = load i32, ptr %i.gu, align 8, !tbaa !144 ; 2 uses
  %i.iy = load i32, ptr %i.ev, align 4, !tbaa !145 ; 2 uses
  %i.iz = icmp ult i32 %i.ix, %i.iy
  br i1 %i.iz, label %.lr.ph241, label %.thread228, !llvm.loop !218

.thread228:                                       ; preds = %.lr.ph241, %.preheader, %bb.ag, %._crit_edge240
  %i.ja = call i32 @jpeg_finish_decompress(ptr noundef nonnull %i.e) #25 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af, %.thread, %bb.ac, %bb.i, %.thread228, %bb.ab, %bb.w, %bb.m, %bb.f, %bb.d
  %.0172 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %.thread ], [ null, %bb.m ], [ null, %bb.ab ], [ null, %bb.i ], [ %i.fd, %.thread228 ], [ %i.fd, %bb.ah ], [ %i.fd, %bb.af ], [ null, %bb.w ], [ %i.fd, %bb.ac ]
  %.6 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %.thread ], [ -1, %bb.m ], [ -1, %bb.ab ], [ -1, %bb.i ], [ 0, %.thread228 ], [ -1, %bb.ah ], [ -1, %bb.af ], [ -1, %bb.w ], [ -1, %bb.ac ]
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !119
  %i.jd = icmp sgt i32 %i.jc, 200
  br i1 %i.jd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void @jpeg_abort_decompress(ptr noundef nonnull %i.e) #25
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @free(ptr noundef %.0172) #25
  %i.je = load i32, ptr %i.f, align 8, !tbaa !69
  %.not218 = icmp eq i32 %i.je, 0
  %spec.select = select i1 %.not218, i32 %.6, i32 -1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.b
  %.0173 = phi i32 [ %spec.select, %bb.ak ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %.0173
}

; Function Attrs: nounwind uwtable
define internal void @my_progress_monitor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !147    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !219
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !220
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.g = load i32, ptr %i.f, align 4, !tbaa !221
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1840
  %i.k = load i32, ptr %i.j, align 8, !tbaa !82   ; 2 uses
  %i.l = icmp sgt i32 %i.g, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1556
  %i.n = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.m, i64 noundef 200, ptr noundef nonnull @.str.126, i32 noundef %i.k) #25 ; 0 uses
  %i.o = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !116
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1840
  %i.r = load i32, ptr %i.q, align 8, !tbaa !82
  %i.s = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 200, ptr noundef nonnull @.str.126, i32 noundef %i.r) #25 ; 0 uses
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !116
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1756
  store i32 1, ptr %i.u, align 4, !tbaa !70
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store i32 0, ptr %i.v, align 8, !tbaa !148
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  tail call void @longjmp(ptr noundef nonnull %i.w, i32 noundef 1) #28
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @jpeg_mem_src_tj(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare i32 @jpeg_read_header(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @jpeg_start_decompress(ptr noundef) local_unnamed_addr #7

declare void @jpeg_crop_scanline(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @jpeg_skip_scanlines(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @jpeg_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @jpeg_finish_decompress(ptr noundef) local_unnamed_addr #7

declare void @jpeg_abort_decompress(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define noalias noundef ptr @tj3LoadImage8(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3LoadImage8.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i32 0, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !70
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3LoadImage8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.g = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3LoadImage8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.39) ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.l = tail call ptr @__errno_location() #29    ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !54
  %i.n = tail call ptr @strerror(i32 noundef %i.m) #25
  %i.o = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str.40, ptr noundef nonnull @tj3LoadImage8.FUNCTION_NAME, ptr noundef nonnull @.str.41, ptr noundef %i.n) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.p = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.q = load i32, ptr %i.l, align 4, !tbaa !54
  %i.r = tail call ptr @strerror(i32 noundef %i.q) #25
  %i.s = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.p, i64 noundef 200, ptr noundef nonnull @.str.40, ptr noundef nonnull @tj3LoadImage8.FUNCTION_NAME, ptr noundef nonnull @.str.41, ptr noundef %i.r) #25 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = tail call fastcc ptr @_tj3LoadImageFromFileHandle8(ptr noundef %0, ptr noundef %i.i, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  %i.u = tail call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.023 = phi ptr [ null, %bb.b ], [ %i.t, %bb.g ], [ null, %bb.f ], [ null, %bb.d ]
  ret ptr %.023
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @_tj3LoadImageFromFileHandle8(ptr nofree noundef nonnull captures(address_is_null) initializes((1528, 1532), (1756, 1760)) %0, ptr noundef nonnull %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i32 0, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 9 uses
  store i32 0, ptr %i.d, align 4, !tbaa !70
  %.not = icmp ne ptr %2, null
  %i.e = icmp sgt i32 %3, 0
  %or.cond3.not178 = and i1 %.not, %i.e
  %i.f = icmp ne ptr %4, null
  %or.cond5 = and i1 %or.cond3.not178, %i.f
  %i.g = icmp ne ptr %5, null
  %or.cond7 = and i1 %or.cond5, %i.g
  br i1 %or.cond7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %5, align 4, !tbaa !54
  %i.i = add i32 %i.h, -12
  %or.cond = icmp ult i32 %i.i, -13
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.l = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle8.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %.thread199

bb.d:                                             ; preds = %bb.b
  %i.n = call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %3)
  %.not179 = icmp samesign ult i32 %i.n, 2
  br i1 %.not179, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle8.FUNCTION_NAME, ptr noundef nonnull @.str.127) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.q = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.q, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle8.FUNCTION_NAME, ptr noundef nonnull @.str.127) #25 ; 0 uses
  br label %.thread199

bb.f:                                             ; preds = %bb.d
  %calloc.i = call dereferenceable_or_null(1920) ptr @calloc(i64 1, i64 1920) ; 13 uses
  %i.s = icmp eq ptr %calloc.i, null
  br i1 %i.s, label %tj3InitVersion.exit.thread, label %tj3InitVersion.exit

tj3InitVersion.exit.thread:                       ; preds = %bb.f
  %i.t = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3InitVersion.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.at

tj3InitVersion.exit:                              ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.v, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1800
  %i.x = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1816
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  store i32 8, ptr %i.x, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1820
  store i32 -1, ptr %i.y, align 4, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1852
  store i32 1, ptr %i.z, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1868
  store i32 1, ptr %i.aa, align 4, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1872
  store i32 1, ptr %i.ab, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1880
  store i64 4294967297, ptr %i.ac, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1912
  store i32 2, ptr %i.ad, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1548
  store i32 3001000, ptr %i.ae, align 4, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1552
  store i32 7, ptr %i.af, align 8, !tbaa !57
  %i.ag = call fastcc ptr @_tjInitCompress(ptr noundef %calloc.i) ; 27 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.at, label %bb.g

bb.g:                                             ; preds = %tj3InitVersion.exit
  %i.ai = call i32 @getc(ptr noundef nonnull %1)  ; 5 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = call i32 @ungetc(i32 noundef %i.ai, ptr noundef nonnull %1)
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.an = call ptr @__errno_location() #29        ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !54
  %i.ap = call ptr @strerror(i32 noundef %i.ao) #25
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.am, i64 noundef 200, ptr noundef nonnull @.str.40, ptr noundef nonnull @_tj3LoadImageFromFileHandle8.FUNCTION_NAME, ptr noundef nonnull @.str.128, ptr noundef %i.ap) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.ar = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.as = load i32, ptr %i.an, align 4, !tbaa !54
  %i.at = call ptr @strerror(i32 noundef %i.as) #25
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ar, i64 noundef 200, ptr noundef nonnull @.str.40, ptr noundef nonnull @_tj3LoadImageFromFileHandle8.FUNCTION_NAME, ptr noundef nonnull @.str.128, ptr noundef %i.at) #25 ; 0 uses
  br label %.thread199

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 1320 ; 3 uses
  %i.aw = call i32 @_setjmp(ptr noundef nonnull %i.av) #26
  %.not180 = icmp eq i32 %i.aw, 0
  br i1 %.not180, label %bb.k, label %.thread199

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 3 uses
  store i32 8, ptr %i.ax, align 8, !tbaa !96
  %i.ay = load i32, ptr %5, align 4, !tbaa !54    ; 2 uses
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr @pf2cs, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink = phi i32 [ %i.bc, %bb.l ], [ 0, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 60 ; 2 uses
  store i32 %.sink, ptr %i.bd, align 4, !tbaa !149
  %i.be = icmp eq i32 %i.ai, 66                   ; 2 uses
  br i1 %i.be, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bf = call ptr @jinit_read_bmp(ptr noundef nonnull %i.ag, i32 noundef 0) #25 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bh, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle8.FUNCTION_NAME, ptr noundef nonnull @.str.130) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.bj = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bj, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle8.FUNCTION_NAME, ptr noundef nonnull @.str.130) #25 ; 0 uses
  br label %.thread199

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !74
  %.not181 = icmp eq i32 %i.bm, 0
  %i.bn = zext i1 %.not181 to i32
  br label %bb.ac

bb.q:                                             ; preds = %bb.m
  switch i32 %i.ai, label %bb.ab [
    i32 137, label %bb.r
    i32 80, label %bb.w
  ]

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !49 ; 2 uses
  %i.bq = add i32 %i.bp, -2
  %or.cond190 = icmp ult i32 %i.bq, 7
  br i1 %or.cond190, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.bp, ptr %i.ax, align 8, !tbaa !96
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.br = call ptr @jinit_read_png(ptr noundef nonnull %i.ag) #25 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bt, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle8.FUNCTION_NAME, ptr noundef nonnull @.str.131) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.bv = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bv, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle8.FUNCTION_NAME, ptr noundef nonnull @.str.131) #25 ; 0 uses
  br label %.thread199

bb.v:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !74
  br label %bb.ac

bb.w:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !49 ; 2 uses
  %i.cb = add i32 %i.ca, -2
  %or.cond191 = icmp ult i32 %i.cb, 7
  br i1 %or.cond191, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.ca, ptr %i.ax, align 8, !tbaa !96
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cc = call ptr @jinit_read_ppm(ptr noundef nonnull %i.ag) #25 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.z, label %bb.aa

end_hunk_0
begin_hunk_1_@tj3Decompress12:bb.a
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv250
  store ptr %i.fz, ptr %i.ga, align 8, !tbaa !176
  %indvars.iv.next251 = or disjoint i64 %indvars.iv250, 1 ; 2 uses
  %i.gb = mul nsw i64 %indvars.iv.next251, %i.fo
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.next251
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !176
  %indvars.iv.next251.1 = or disjoint i64 %indvars.iv250, 2 ; 2 uses
  %i.ge = mul nsw i64 %indvars.iv.next251.1, %i.fo
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ge
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.next251.1
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !176
  %indvars.iv.next251.2 = or disjoint i64 %indvars.iv250, 3 ; 2 uses
  %i.gh = mul nsw i64 %indvars.iv.next251.2, %i.fo
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.gh
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.next251.2
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !176
  %indvars.iv.next251.3 = add nuw nsw i64 %indvars.iv250, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !233

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader289, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader289 ] ; 3 uses
  %i.gk = xor i64 %indvars.iv, -1
  %i.gl = add nsw i64 %i.fc, %i.gk
  %i.gm = mul nsw i64 %i.gl, %i.fo
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv
  store ptr %i.gn, ptr %i.go, align 8, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count253
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !234

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv250.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next251.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod291 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod291)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv250.epil = phi i64 [ %indvars.iv.next251.epil, %.lr.ph.split.us.epil ], [ %indvars.iv250.epil.init, %.lr.ph.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.gp = mul nsw i64 %indvars.iv250.epil, %i.fo
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv250.epil
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !176
  %indvars.iv.next251.epil = add nuw nsw i64 %indvars.iv250.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.split.us.epil, !llvm.loop !235

._crit_edge:                                      ; preds = %.lr.ph.split, %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %middle.block, %.preheader241
  %i.gs = load i32, ptr %i.ex, align 4, !tbaa !142 ; 2 uses
  %.not215 = icmp eq i32 %i.gs, 0
  br i1 %.not215, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 1900
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !143 ; 2 uses
  %.not216 = icmp eq i32 %i.gu, 0
  br i1 %.not216, label %.preheader, label %.thread228

.preheader:                                       ; preds = %bb.af
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !144 ; 2 uses
  %i.gx = load i32, ptr %i.ew, align 4, !tbaa !145 ; 2 uses
  %i.gy = icmp ult i32 %i.gw, %i.gx
  br i1 %i.gy, label %.lr.ph246, label %.thread232

bb.ag:                                            ; preds = %._crit_edge
  %i.gz = call i32 @jpeg12_skip_scanlines(ptr noundef nonnull %i.e, i32 noundef %i.gs) #25 ; 4 uses
  %i.ha = load i32, ptr %i.ex, align 4, !tbaa !142 ; 2 uses
  %.not218 = icmp eq i32 %i.gz, %i.ha
  br i1 %.not218, label %..thread228_crit_edge, label %bb.ah

..thread228_crit_edge:                            ; preds = %bb.ag
  %.phi.trans.insert256 = getelementptr inbounds nuw i8, ptr %0, i64 1900
  %.pre257 = load i32, ptr %.phi.trans.insert256, align 4, !tbaa !143
  br label %.thread228

bb.ah:                                            ; preds = %bb.ag
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.hc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.hb, i64 noundef 200, ptr noundef nonnull @.str.37, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, i32 noundef %i.ha, i32 noundef %i.gz) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !70
  %i.hd = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.he = load i32, ptr %i.ex, align 4, !tbaa !142
  %i.hf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.hd, i64 noundef 200, ptr noundef nonnull @.str.37, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, i32 noundef %i.he, i32 noundef %i.gz) #25 ; 0 uses
  br label %bb.ak

.thread228:                                       ; preds = %..thread228_crit_edge, %bb.af
  %i.hg = phi i32 [ %.pre257, %..thread228_crit_edge ], [ %i.gu, %bb.af ]
  %i.hh = phi i32 [ %i.gz, %..thread228_crit_edge ], [ 0, %bb.af ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 1900 ; 3 uses
  %i.hk = load i32, ptr %i.hi, align 8, !tbaa !144 ; 2 uses
  %i.hl = add nsw i32 %i.hg, %i.hh                ; 3 uses
  %i.hm = icmp slt i32 %i.hk, %i.hl
  br i1 %i.hm, label %.lr.ph244, label %._crit_edge245

.lr.ph244:                                        ; preds = %.thread228, %.lr.ph244
  %i.hn = phi i32 [ %i.hy, %.lr.ph244 ], [ %i.hl, %.thread228 ]
  %i.ho = phi i32 [ %i.hw, %.lr.ph244 ], [ %i.hh, %.thread228 ]
  %i.hp = phi i32 [ %i.hv, %.lr.ph244 ], [ %i.hk, %.thread228 ] ; 2 uses
  %i.hq = sub i32 %i.hp, %i.ho
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.hr
  %i.ht = sub i32 %i.hn, %i.hp
  %i.hu = call i32 @jpeg12_read_scanlines(ptr noundef nonnull %i.e, ptr noundef nonnull %i.hs, i32 noundef %i.ht) #25 ; 0 uses
  %i.hv = load i32, ptr %i.hi, align 8, !tbaa !144 ; 2 uses
  %i.hw = load i32, ptr %i.ex, align 4, !tbaa !142 ; 2 uses
  %i.hx = load i32, ptr %i.hj, align 4, !tbaa !143
  %i.hy = add nsw i32 %i.hx, %i.hw                ; 3 uses
  %i.hz = icmp slt i32 %i.hv, %i.hy
  br i1 %i.hz, label %.lr.ph244, label %._crit_edge245, !llvm.loop !236

._crit_edge245:                                   ; preds = %.lr.ph244, %.thread228
  %.lcssa = phi i32 [ %i.hl, %.thread228 ], [ %i.hy, %.lr.ph244 ] ; 2 uses
  %i.ia = load i32, ptr %i.ew, align 4, !tbaa !145 ; 2 uses
  %.not219 = icmp eq i32 %.lcssa, %i.ia
  br i1 %.not219, label %.thread232, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge245
  %i.ib = sub i32 %i.ia, %.lcssa
  %i.ic = call i32 @jpeg12_skip_scanlines(ptr noundef nonnull %i.e, i32 noundef %i.ib) #25 ; 3 uses
  %i.id = load i32, ptr %i.ew, align 4, !tbaa !145 ; 2 uses
  %i.ie = load i32, ptr %i.ex, align 4, !tbaa !142
  %i.if = load i32, ptr %i.hj, align 4, !tbaa !143
  %i.ig = add i32 %i.if, %i.ie                    ; 2 uses
  %i.ih = sub i32 %i.id, %i.ig
  %.not220 = icmp eq i32 %i.ic, %i.ih
  br i1 %.not220, label %.thread232, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.ij = sub i32 %i.id, %i.ic
  %i.ik = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ii, i64 noundef 200, ptr noundef nonnull @.str.38, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, i32 noundef %i.ig, i32 noundef %i.ij) #25 ; 0 uses
  store i32 1, ptr %i.g, align 4, !tbaa !70
  %i.il = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.im = load i32, ptr %i.ex, align 4, !tbaa !142
  %i.in = load i32, ptr %i.hj, align 4, !tbaa !143
  %i.io = add nsw i32 %i.in, %i.im
  %i.ip = load i32, ptr %i.ew, align 4, !tbaa !145
  %i.iq = sub i32 %i.ip, %i.ic
  %i.ir = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.il, i64 noundef 200, ptr noundef nonnull @.str.38, ptr noundef nonnull @tj3Decompress12.FUNCTION_NAME, i32 noundef %i.io, i32 noundef %i.iq) #25 ; 0 uses
  br label %bb.ak

.lr.ph246:                                        ; preds = %.preheader, %.lr.ph246
  %i.is = phi i32 [ %i.iz, %.lr.ph246 ], [ %i.gx, %.preheader ]
  %i.it = phi i32 [ %i.iy, %.lr.ph246 ], [ %i.gw, %.preheader ] ; 2 uses
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.iu
  %i.iw = sub nuw i32 %i.is, %i.it
  %i.ix = call i32 @jpeg12_read_scanlines(ptr noundef nonnull %i.e, ptr noundef nonnull %i.iv, i32 noundef %i.iw) #25 ; 0 uses
  %i.iy = load i32, ptr %i.gv, align 8, !tbaa !144 ; 2 uses
  %i.iz = load i32, ptr %i.ew, align 4, !tbaa !145 ; 2 uses
  %i.ja = icmp ult i32 %i.iy, %i.iz
  br i1 %i.ja, label %.lr.ph246, label %.thread232, !llvm.loop !237

.thread232:                                       ; preds = %.lr.ph246, %.preheader, %bb.ai, %._crit_edge245
  %i.jb = call i32 @jpeg_finish_decompress(ptr noundef nonnull %i.e) #25 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %.thread, %bb.ae, %bb.i, %.thread232, %bb.ad, %bb.y, %bb.o, %bb.f, %bb.d
  %.0175 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %.thread ], [ null, %bb.o ], [ null, %bb.ad ], [ null, %bb.i ], [ %i.fe, %.thread232 ], [ %i.fe, %bb.aj ], [ %i.fe, %bb.ah ], [ null, %bb.y ], [ %i.fe, %bb.ae ]
  %.6 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %.thread ], [ -1, %bb.o ], [ -1, %bb.ad ], [ -1, %bb.i ], [ 0, %.thread232 ], [ -1, %bb.aj ], [ -1, %bb.ah ], [ -1, %bb.y ], [ -1, %bb.ae ]
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !119
  %i.je = icmp sgt i32 %i.jd, 200
  br i1 %i.je, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @jpeg_abort_decompress(ptr noundef nonnull %i.e) #25
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @free(ptr noundef %.0175) #25
  %i.jf = load i32, ptr %i.f, align 8, !tbaa !69
  %.not222 = icmp eq i32 %i.jf, 0
  %spec.select = select i1 %.not222, i32 %.6, i32 -1
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.b
  %.0176 = phi i32 [ %spec.select, %bb.am ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %.0176
}

declare void @jpeg12_crop_scanline(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare i32 @jpeg12_skip_scanlines(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @jpeg12_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define noalias noundef ptr @tj3LoadImage12(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3LoadImage12.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i32 0, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !70
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3LoadImage12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.g = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3LoadImage12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.39) ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.l = tail call ptr @__errno_location() #29    ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !54
  %i.n = tail call ptr @strerror(i32 noundef %i.m) #25
  %i.o = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str.40, ptr noundef nonnull @tj3LoadImage12.FUNCTION_NAME, ptr noundef nonnull @.str.41, ptr noundef %i.n) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.p = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.q = load i32, ptr %i.l, align 4, !tbaa !54
  %i.r = tail call ptr @strerror(i32 noundef %i.q) #25
  %i.s = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.p, i64 noundef 200, ptr noundef nonnull @.str.40, ptr noundef nonnull @tj3LoadImage12.FUNCTION_NAME, ptr noundef nonnull @.str.41, ptr noundef %i.r) #25 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = tail call fastcc ptr @_tj3LoadImageFromFileHandle12(ptr noundef %0, ptr noundef %i.i, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  %i.u = tail call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.023 = phi ptr [ null, %bb.b ], [ %i.t, %bb.g ], [ null, %bb.f ], [ null, %bb.d ]
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @_tj3LoadImageFromFileHandle12(ptr nofree noundef nonnull captures(address_is_null) initializes((1528, 1532), (1756, 1760)) %0, ptr noundef nonnull %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i32 0, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 9 uses
  store i32 0, ptr %i.d, align 4, !tbaa !70
  %.not = icmp ne ptr %2, null
  %i.e = icmp sgt i32 %3, 0
  %or.cond3.not178 = and i1 %.not, %i.e
  %i.f = icmp ne ptr %4, null
  %or.cond5 = and i1 %or.cond3.not178, %i.f
  %i.g = icmp ne ptr %5, null
  %or.cond7 = and i1 %or.cond5, %i.g
  br i1 %or.cond7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %5, align 4, !tbaa !54
  %i.i = add i32 %i.h, -12
  %or.cond = icmp ult i32 %i.i, -13
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.l = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle12.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %.thread199

bb.d:                                             ; preds = %bb.b
  %i.n = call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %3)
  %.not179 = icmp samesign ult i32 %i.n, 2
  br i1 %.not179, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle12.FUNCTION_NAME, ptr noundef nonnull @.str.127) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.q = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.q, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle12.FUNCTION_NAME, ptr noundef nonnull @.str.127) #25 ; 0 uses
  br label %.thread199

bb.f:                                             ; preds = %bb.d
  %calloc.i = call dereferenceable_or_null(1920) ptr @calloc(i64 1, i64 1920) ; 13 uses
  %i.s = icmp eq ptr %calloc.i, null
  br i1 %i.s, label %tj3InitVersion.exit.thread, label %tj3InitVersion.exit

tj3InitVersion.exit.thread:                       ; preds = %bb.f
  %i.t = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3InitVersion.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.at

tj3InitVersion.exit:                              ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.v, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1800
  %i.x = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1816
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  store i32 8, ptr %i.x, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1820
  store i32 -1, ptr %i.y, align 4, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1852
  store i32 1, ptr %i.z, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1868
  store i32 1, ptr %i.aa, align 4, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1872
  store i32 1, ptr %i.ab, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1880
  store i64 4294967297, ptr %i.ac, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1912
  store i32 2, ptr %i.ad, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1548
  store i32 3001000, ptr %i.ae, align 4, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1552
  store i32 7, ptr %i.af, align 8, !tbaa !57
  %i.ag = call fastcc ptr @_tjInitCompress(ptr noundef %calloc.i) ; 27 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.at, label %bb.g

bb.g:                                             ; preds = %tj3InitVersion.exit
  %i.ai = call i32 @getc(ptr noundef nonnull %1)  ; 5 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = call i32 @ungetc(i32 noundef %i.ai, ptr noundef nonnull %1)
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.an = call ptr @__errno_location() #29        ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !54
  %i.ap = call ptr @strerror(i32 noundef %i.ao) #25
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.am, i64 noundef 200, ptr noundef nonnull @.str.40, ptr noundef nonnull @_tj3LoadImageFromFileHandle12.FUNCTION_NAME, ptr noundef nonnull @.str.128, ptr noundef %i.ap) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.ar = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.as = load i32, ptr %i.an, align 4, !tbaa !54
  %i.at = call ptr @strerror(i32 noundef %i.as) #25
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ar, i64 noundef 200, ptr noundef nonnull @.str.40, ptr noundef nonnull @_tj3LoadImageFromFileHandle12.FUNCTION_NAME, ptr noundef nonnull @.str.128, ptr noundef %i.at) #25 ; 0 uses
  br label %.thread199

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 1320 ; 3 uses
  %i.aw = call i32 @_setjmp(ptr noundef nonnull %i.av) #26
  %.not180 = icmp eq i32 %i.aw, 0
  br i1 %.not180, label %bb.k, label %.thread199

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 3 uses
  store i32 12, ptr %i.ax, align 8, !tbaa !96
  %i.ay = load i32, ptr %5, align 4, !tbaa !54    ; 2 uses
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr @pf2cs, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink = phi i32 [ %i.bc, %bb.l ], [ 0, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 60 ; 2 uses
  store i32 %.sink, ptr %i.bd, align 4, !tbaa !149
  %i.be = icmp eq i32 %i.ai, 66                   ; 2 uses
  br i1 %i.be, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bf = call ptr @jinit_read_bmp(ptr noundef nonnull %i.ag, i32 noundef 0) #25 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bh, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle12.FUNCTION_NAME, ptr noundef nonnull @.str.130) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.bj = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bj, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle12.FUNCTION_NAME, ptr noundef nonnull @.str.130) #25 ; 0 uses
  br label %.thread199

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !74
  %.not181 = icmp eq i32 %i.bm, 0
  %i.bn = zext i1 %.not181 to i32
  br label %bb.ac

bb.q:                                             ; preds = %bb.m
  switch i32 %i.ai, label %bb.ab [
    i32 137, label %bb.r
    i32 80, label %bb.w
  ]

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !49 ; 2 uses
  %i.bq = add i32 %i.bp, -9
  %or.cond190 = icmp ult i32 %i.bq, 4
  br i1 %or.cond190, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.bp, ptr %i.ax, align 8, !tbaa !96
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.br = call ptr @j12init_read_png(ptr noundef nonnull %i.ag) #25 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bt, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle12.FUNCTION_NAME, ptr noundef nonnull @.str.131) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.bv = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bv, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle12.FUNCTION_NAME, ptr noundef nonnull @.str.131) #25 ; 0 uses
  br label %.thread199

bb.v:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !74
  br label %bb.ac

bb.w:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !49 ; 2 uses
  %i.cb = add i32 %i.ca, -9
  %or.cond191 = icmp ult i32 %i.cb, 4
  br i1 %or.cond191, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.ca, ptr %i.ax, align 8, !tbaa !96
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cc = call ptr @j12init_read_ppm(ptr noundef nonnull %i.ag) #25 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.z, label %bb.aa

end_hunk_1
begin_hunk_2_@tj3Decompress16:bb.a
  %i.do = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.dp = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.do, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.n, %bb.o
  %.099 = phi i32 [ %4, %bb.o ], [ %i.dk, %bb.n ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 660 ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !145 ; 5 uses
  %i.ds = sext i32 %i.dr to i64                   ; 3 uses
  %i.dt = shl nsw i64 %i.ds, 3
  %i.du = call noalias ptr @malloc(i64 noundef %i.dt) #27 ; 11 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.dx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dw, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.e, align 4, !tbaa !70
  %i.dy = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.dz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dy, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3Decompress16.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ea = call i32 @_setjmp(ptr noundef nonnull %i.aj) #26
  %.not116 = icmp eq i32 %i.ea, 0
  br i1 %.not116, label %.preheader124, label %bb.t

.preheader124:                                    ; preds = %bb.s
  %i.eb = icmp sgt i32 %i.dr, 0
  br i1 %i.eb, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.preheader124
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !74
  %.not117 = icmp eq i32 %i.ed, 0
  %i.ee = sext i32 %.099 to i64                   ; 7 uses
  %wide.trip.count132 = zext nneg i32 %i.dr to i64 ; 5 uses
  br i1 %.not117, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %xtraiter = and i64 %wide.trip.count132, 3      ; 3 uses
  %i.ef = icmp ult i32 %i.dr, 4
  br i1 %i.ef, label %.lr.ph.split.us.epil.preheader, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.preheader
  %unroll_iter = and i64 %wide.trip.count132, 2147483644
  br label %.lr.ph.split.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check = icmp ult i32 %i.dr, 4
  br i1 %min.iters.check, label %.lr.ph.split.preheader149, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %wide.trip.count132, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ds, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert146 = insertelement <2 x i64> poison, i64 %i.ee, i64 0
  %broadcast.splat147 = shufflevector <2 x i64> %broadcast.splatinsert146, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.eg = xor <2 x i64> %vec.ind, splat (i64 -1)
  %i.eh = add nsw <2 x i64> %broadcast.splat, %i.eg
  %reass.sub = sub <2 x i64> %broadcast.splat, %vec.ind
  %i.ei = add <2 x i64> %reass.sub, splat (i64 -3)
  %i.ej = mul nsw <2 x i64> %i.eh, %broadcast.splat147
  %i.ek = mul nsw <2 x i64> %i.ei, %broadcast.splat147
  %wide.gep = getelementptr inbounds nuw [2 x i8], ptr %3, <2 x i64> %i.ej
  %wide.gep148 = getelementptr inbounds nuw [2 x i8], ptr %3, <2 x i64> %i.ek
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x ptr> %wide.gep, ptr %i.el, align 8, !tbaa !176
  store <2 x ptr> %wide.gep148, ptr %i.em, align 8, !tbaa !176
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count132
  br i1 %cmp.n, label %.preheader, label %.lr.ph.split.preheader149

.lr.ph.split.preheader149:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %indvars.iv129 = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %indvars.iv.next130.3, %.lr.ph.split.us ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.preheader.new ], [ %niter.next.3, %.lr.ph.split.us ]
  %i.eo = mul nsw i64 %indvars.iv129, %i.ee
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv129
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !176
  %indvars.iv.next130 = or disjoint i64 %indvars.iv129, 1 ; 2 uses
  %i.er = mul nsw i64 %indvars.iv.next130, %i.ee
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next130
  store ptr %i.es, ptr %i.et, align 8, !tbaa !176
  %indvars.iv.next130.1 = or disjoint i64 %indvars.iv129, 2 ; 2 uses
  %i.eu = mul nsw i64 %indvars.iv.next130.1, %i.ee
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.eu
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next130.1
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !176
  %indvars.iv.next130.2 = or disjoint i64 %indvars.iv129, 3 ; 2 uses
  %i.ex = mul nsw i64 %indvars.iv.next130.2, %i.ee
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ex
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next130.2
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !176
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !249

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph.split.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv129.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next130.3, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod151 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod151)
  br label %.lr.ph.split.us.epil

.lr.ph.split.us.epil:                             ; preds = %.lr.ph.split.us.epil, %.lr.ph.split.us.epil.preheader
  %indvars.iv129.epil = phi i64 [ %indvars.iv.next130.epil, %.lr.ph.split.us.epil ], [ %indvars.iv129.epil.init, %.lr.ph.split.us.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.split.us.epil ], [ 0, %.lr.ph.split.us.epil.preheader ]
  %i.fa = mul nsw i64 %indvars.iv129.epil, %i.ee
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv129.epil
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !176
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.split.us.epil, !llvm.loop !250

.preheader:                                       ; preds = %.lr.ph.split, %.preheader.loopexit.unr-lcssa, %.lr.ph.split.us.epil, %middle.block, %.preheader124
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !144 ; 2 uses
  %i.ff = load i32, ptr %i.dq, align 4, !tbaa !145 ; 2 uses
  %i.fg = icmp ult i32 %i.fe, %i.ff
  br i1 %i.fg, label %.lr.ph126, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader149, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader149 ] ; 3 uses
  %i.fh = xor i64 %indvars.iv, -1
  %i.fi = add nsw i64 %i.ds, %i.fh
  %i.fj = mul nsw i64 %i.fi, %i.ee
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count132
  br i1 %exitcond.not, label %.preheader, label %.lr.ph.split, !llvm.loop !251

.lr.ph126:                                        ; preds = %.preheader, %.lr.ph126
  %i.fm = phi i32 [ %i.ft, %.lr.ph126 ], [ %i.ff, %.preheader ]
  %i.fn = phi i32 [ %i.fs, %.lr.ph126 ], [ %i.fe, %.preheader ] ; 2 uses
  %i.fo = zext i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fo
  %i.fq = sub nuw i32 %i.fm, %i.fn
  %i.fr = call i32 @jpeg16_read_scanlines(ptr noundef nonnull %i.c, ptr noundef nonnull %i.fp, i32 noundef %i.fq) #25 ; 0 uses
  %i.fs = load i32, ptr %i.fd, align 8, !tbaa !144 ; 2 uses
  %i.ft = load i32, ptr %i.dq, align 4, !tbaa !145 ; 2 uses
  %i.fu = icmp ult i32 %i.fs, %i.ft
  br i1 %i.fu, label %.lr.ph126, label %._crit_edge, !llvm.loop !252

._crit_edge:                                      ; preds = %.lr.ph126, %.preheader
  %i.fv = call i32 @jpeg_finish_decompress(ptr noundef nonnull %i.c) #25 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.i, %._crit_edge, %bb.r, %bb.p, %bb.m, %bb.f, %bb.d
  %.097 = phi ptr [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.p ], [ null, %bb.m ], [ null, %bb.r ], [ null, %bb.i ], [ %i.du, %._crit_edge ], [ %i.du, %bb.s ]
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.p ], [ -1, %bb.m ], [ -1, %bb.r ], [ -1, %bb.i ], [ 0, %._crit_edge ], [ -1, %bb.s ]
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !119
  %i.fy = icmp sgt i32 %i.fx, 200
  br i1 %i.fy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @jpeg_abort_decompress(ptr noundef nonnull %i.c) #25
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @free(ptr noundef %.097) #25
  %i.fz = load i32, ptr %i.d, align 8, !tbaa !69
  %.not118 = icmp eq i32 %i.fz, 0
  %spec.select = select i1 %.not118, i32 %.0, i32 -1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.b
  %.098 = phi i32 [ %spec.select, %bb.v ], [ -1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %.098
}

declare i32 @jpeg16_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define noalias noundef ptr @tj3LoadImage16(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.b = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 200, ptr noundef nonnull @.str.5, ptr noundef nonnull @tj3LoadImage16.FUNCTION_NAME) #25 ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i32 0, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 3 uses
  store i32 0, ptr %i.d, align 4, !tbaa !70
  %.not28 = icmp eq ptr %1, null
  br i1 %.not28, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.f = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3LoadImage16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.g = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.h = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3LoadImage16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.39) ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.l = tail call ptr @__errno_location() #29    ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !54
  %i.n = tail call ptr @strerror(i32 noundef %i.m) #25
  %i.o = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 200, ptr noundef nonnull @.str.40, ptr noundef nonnull @tj3LoadImage16.FUNCTION_NAME, ptr noundef nonnull @.str.41, ptr noundef %i.n) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.p = tail call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.q = load i32, ptr %i.l, align 4, !tbaa !54
  %i.r = tail call ptr @strerror(i32 noundef %i.q) #25
  %i.s = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.p, i64 noundef 200, ptr noundef nonnull @.str.40, ptr noundef nonnull @tj3LoadImage16.FUNCTION_NAME, ptr noundef nonnull @.str.41, ptr noundef %i.r) #25 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = tail call fastcc ptr @_tj3LoadImageFromFileHandle16(ptr noundef %0, ptr noundef %i.i, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  %i.u = tail call i32 @fclose(ptr noundef nonnull %i.i) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.023 = phi ptr [ null, %bb.b ], [ %i.t, %bb.g ], [ null, %bb.f ], [ null, %bb.d ]
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define internal fastcc noalias noundef ptr @_tj3LoadImageFromFileHandle16(ptr nofree noundef nonnull captures(address_is_null) initializes((1528, 1532), (1756, 1760)) %0, ptr noundef nonnull %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr nofree noundef captures(address_is_null) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1528
  store i32 0, ptr %i.c, align 8, !tbaa !69
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1756 ; 9 uses
  store i32 0, ptr %i.d, align 4, !tbaa !70
  %.not = icmp ne ptr %2, null
  %i.e = icmp sgt i32 %3, 0
  %or.cond3.not178 = and i1 %.not, %i.e
  %i.f = icmp ne ptr %4, null
  %or.cond5 = and i1 %or.cond3.not178, %i.f
  %i.g = icmp ne ptr %5, null
  %or.cond7 = and i1 %or.cond5, %i.g
  br i1 %or.cond7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %5, align 4, !tbaa !54
  %i.i = add i32 %i.h, -12
  %or.cond = icmp ult i32 %i.i, -13
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.k = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.j, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.l = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.m = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle16.FUNCTION_NAME, ptr noundef nonnull @.str.1) #25 ; 0 uses
  br label %.thread199

bb.d:                                             ; preds = %bb.b
  %i.n = call range(i32 1, 32) i32 @llvm.ctpop.i32(i32 %3)
  %.not179 = icmp samesign ult i32 %i.n, 2
  br i1 %.not179, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.o, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle16.FUNCTION_NAME, ptr noundef nonnull @.str.127) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.q = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.q, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle16.FUNCTION_NAME, ptr noundef nonnull @.str.127) #25 ; 0 uses
  br label %.thread199

bb.f:                                             ; preds = %bb.d
  %calloc.i = call dereferenceable_or_null(1920) ptr @calloc(i64 1, i64 1920) ; 13 uses
  %i.s = icmp eq ptr %calloc.i, null
  br i1 %i.s, label %tj3InitVersion.exit.thread, label %tj3InitVersion.exit

tj3InitVersion.exit.thread:                       ; preds = %bb.f
  %i.t = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tj3InitVersion.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %bb.at

tj3InitVersion.exit:                              ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.v, ptr noundef nonnull align 1 dereferenceable(9) @.str.3, i64 9, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1800
  %i.x = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1816
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 -1, i64 16, i1 false)
  store i32 8, ptr %i.x, align 8, !tbaa !49
  %i.y = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1820
  store i32 -1, ptr %i.y, align 4, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1852
  store i32 1, ptr %i.z, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1868
  store i32 1, ptr %i.aa, align 4, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1872
  store i32 1, ptr %i.ab, align 8, !tbaa !53
  %i.ac = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1880
  store i64 4294967297, ptr %i.ac, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1912
  store i32 2, ptr %i.ad, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1548
  store i32 3001000, ptr %i.ae, align 4, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1552
  store i32 7, ptr %i.af, align 8, !tbaa !57
  %i.ag = call fastcc ptr @_tjInitCompress(ptr noundef %calloc.i) ; 27 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.at, label %bb.g

bb.g:                                             ; preds = %tj3InitVersion.exit
  %i.ai = call i32 @getc(ptr noundef nonnull %1)  ; 5 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = call i32 @ungetc(i32 noundef %i.ai, ptr noundef nonnull %1)
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.an = call ptr @__errno_location() #29        ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !54
  %i.ap = call ptr @strerror(i32 noundef %i.ao) #25
  %i.aq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.am, i64 noundef 200, ptr noundef nonnull @.str.40, ptr noundef nonnull @_tj3LoadImageFromFileHandle16.FUNCTION_NAME, ptr noundef nonnull @.str.128, ptr noundef %i.ap) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.ar = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.as = load i32, ptr %i.an, align 4, !tbaa !54
  %i.at = call ptr @strerror(i32 noundef %i.as) #25
  %i.au = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ar, i64 noundef 200, ptr noundef nonnull @.str.40, ptr noundef nonnull @_tj3LoadImageFromFileHandle16.FUNCTION_NAME, ptr noundef nonnull @.str.128, ptr noundef %i.at) #25 ; 0 uses
  br label %.thread199

bb.j:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 1320 ; 3 uses
  %i.aw = call i32 @_setjmp(ptr noundef nonnull %i.av) #26
  %.not180 = icmp eq i32 %i.aw, 0
  br i1 %.not180, label %bb.k, label %.thread199

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 72 ; 3 uses
  store i32 16, ptr %i.ax, align 8, !tbaa !96
  %i.ay = load i32, ptr %5, align 4, !tbaa !54    ; 2 uses
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr @pf2cs, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.sink = phi i32 [ %i.bc, %bb.l ], [ 0, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ag, i64 60 ; 2 uses
  store i32 %.sink, ptr %i.bd, align 4, !tbaa !149
  %i.be = icmp eq i32 %i.ai, 66                   ; 2 uses
  br i1 %i.be, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bf = call ptr @jinit_read_bmp(ptr noundef nonnull %i.ag, i32 noundef 0) #25 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bh, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle16.FUNCTION_NAME, ptr noundef nonnull @.str.130) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.bj = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bj, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle16.FUNCTION_NAME, ptr noundef nonnull @.str.130) #25 ; 0 uses
  br label %.thread199

bb.p:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !74
  %.not181 = icmp eq i32 %i.bm, 0
  %i.bn = zext i1 %.not181 to i32
  br label %bb.ac

bb.q:                                             ; preds = %bb.m
  switch i32 %i.ai, label %bb.ab [
    i32 137, label %bb.r
    i32 80, label %bb.w
  ]

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !49 ; 2 uses
  %i.bq = add i32 %i.bp, -13
  %or.cond190 = icmp ult i32 %i.bq, 4
  br i1 %or.cond190, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.bp, ptr %i.ax, align 8, !tbaa !96
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.br = call ptr @j16init_read_png(ptr noundef nonnull %i.ag) #25 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bt, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle16.FUNCTION_NAME, ptr noundef nonnull @.str.131) #25 ; 0 uses
  store i32 1, ptr %i.d, align 4, !tbaa !70
  %i.bv = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bv, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @_tj3LoadImageFromFileHandle16.FUNCTION_NAME, ptr noundef nonnull @.str.131) #25 ; 0 uses
  br label %.thread199

bb.v:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !74
  br label %bb.ac

bb.w:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !49 ; 2 uses
  %i.cb = add i32 %i.ca, -13
  %or.cond191 = icmp ult i32 %i.cb, 4
  br i1 %or.cond191, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.ca, ptr %i.ax, align 8, !tbaa !96
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cc = call ptr @j16init_read_ppm(ptr noundef nonnull %i.ag) #25 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.z, label %bb.aa

end_hunk_2
begin_hunk_3_@tjTransform:bb.a
  %i.ae = lshr i32 %7, 8
  %.lobit24.i = and i32 %i.ae, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1824
  store i32 %.lobit24.i, ptr %i.af, align 8, !tbaa !78
  %i.ag = lshr i32 %7, 10
  %.lobit25.i = and i32 %i.ag, 1                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1796 ; 3 uses
  store i32 %.lobit25.i, ptr %i.ah, align 4, !tbaa !75
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !76
  %i.ak = icmp slt i32 %i.aj, 96
  %i.al = and i32 %7, 4096
  %.not27.i = icmp eq i32 %i.al, 0
  %or.cond.i = and i1 %.not27.i, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1828
  %. = zext i1 %or.cond.i to i32
  store i32 %., ptr %i.am, align 4, !tbaa !79
  %i.an = lshr i32 %7, 13
  %.lobit28.i = and i32 %i.an, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1532
  store i32 %.lobit28.i, ptr %i.ao, align 4, !tbaa !73
  %i.ap = lshr i32 %7, 14
  %.lobit29.i = and i32 %i.ap, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1836
  store i32 %.lobit29.i, ptr %i.aq, align 4, !tbaa !81
  %i.ar = and i32 %7, 32768
  %.not30.i = icmp eq i32 %i.ar, 0
  br i1 %.not30.i, label %processFlags.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1840
  store i32 500, ptr %i.as, align 8, !tbaa !82
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
  %i.bc = load i32, ptr %i.ah, align 4, !tbaa !75
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %5, i64 %i.aw, i1 false), !tbaa !59
  br label %.lr.ph82.preheader

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1556
  %i.bf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.be, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjTransform.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  store i32 1, ptr %i.h, align 4, !tbaa !70
  %i.bg = call align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @errStr)
  %i.bh = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bg, i64 noundef 200, ptr noundef nonnull @.str, ptr noundef nonnull @tjTransform.FUNCTION_NAME, ptr noundef nonnull @.str.2) #25 ; 0 uses
  br label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %bb.w
  %.pr = load i32, ptr %i.ah, align 4, !tbaa !75
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bi = phi i32 [ %.pr, %.lr.ph.splitthread-pre-split ], [ 1, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !59
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv ; 2 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !59
  %.not74 = icmp eq i32 %i.bi, 0
  br i1 %.not74, label %bb.w, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.bm = load i32, ptr %i.az, align 8, !tbaa !164
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.bn = load i32, ptr %i.ba, align 4, !tbaa !165
  store i32 %i.bn, ptr %i.b, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 %.062, ptr %i.c, align 4, !tbaa !54
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %6, i64 %indvars.iv
  %i.bp = call fastcc i32 @getTransformedSpecs(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.bo, ptr noundef nonnull @tjTransform.FUNCTION_NAME)
  %i.bq = icmp eq i32 %i.bp, -1
  br i1 %i.bq, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = load i32, ptr %i.a, align 4, !tbaa !54  ; 2 uses
  %i.bs = load i32, ptr %i.b, align 4, !tbaa !54  ; 2 uses
  %i.bt = load i32, ptr %i.c, align 4, !tbaa !54  ; 3 uses
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
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !54 ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr @tjMCUHeight, i64 %i.ca
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !54 ; 3 uses
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
  store i64 %.0.i, ptr %i.bl, align 8, !tbaa !59
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %i.ax, i64 %i.aw, i1 false), !tbaa !59
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
  %i.db = load i32, ptr %i.g, align 8, !tbaa !69
  %.not75 = icmp eq i32 %i.db, 0
  %spec.select = select i1 %.not75, i32 %.3, i32 -1
  call void @free(ptr noundef %.061) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.b
  %.066 = phi i32 [ %spec.select, %bb.y ], [ -1, %bb.b ]
  ret i32 %.066
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @tjLoadImage(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 {
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
  store i64 4294967297, ptr %i.k, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1912
  store i32 2, ptr %i.l, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1548
  store i32 3001000, ptr %i.m, align 4, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1552
  store i32 7, ptr %i.n, align 8, !tbaa !57
  %i.o = tail call fastcc ptr @_tjInitCompress(ptr noundef %calloc.i) ; 11 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.b

bb.b:                                             ; preds = %tj3InitVersion.exit
  %i.q = lshr i32 %5, 1
  %.lobit.i = and i32 %i.q, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1792
  store i32 %.lobit.i, ptr %i.r, align 8, !tbaa !74
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
  store i32 %.lobit24.i, ptr %i.x, align 8, !tbaa !78
  %i.y = lshr i32 %5, 10
  %.lobit25.i = and i32 %i.y, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1796
  store i32 %.lobit25.i, ptr %i.z, align 4, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 1800
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !76
  %i.ac = icmp slt i32 %i.ab, 96
  %i.ad = and i32 %5, 4096
  %.not27.i = icmp eq i32 %i.ad, 0
  %or.cond.i = and i1 %.not27.i, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 1828
  %. = zext i1 %or.cond.i to i32
  store i32 %., ptr %i.ae, align 4, !tbaa !79
  %i.af = lshr i32 %5, 13
  %.lobit28.i = and i32 %i.af, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 1532
  store i32 %.lobit28.i, ptr %i.ag, align 4, !tbaa !73
  %i.ah = lshr i32 %5, 14
  %.lobit29.i = and i32 %i.ah, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 1836
  store i32 %.lobit29.i, ptr %i.ai, align 4, !tbaa !81
  %i.aj = and i32 %5, 32768
  %.not30.i = icmp eq i32 %i.aj, 0
  br i1 %.not30.i, label %processFlags.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 1840
  store i32 500, ptr %i.ak, align 8, !tbaa !82
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
  store i64 4294967297, ptr %i.k, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1912
  store i32 2, ptr %i.l, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1548
  store i32 3001000, ptr %i.m, align 4, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 1552
  store i32 7, ptr %i.n, align 8, !tbaa !57
  %i.o = tail call fastcc ptr @_tjInitDecompress(ptr noundef %calloc.i) ; 10 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.b

bb.b:                                             ; preds = %tj3InitVersion.exit
  %i.q = lshr i32 %6, 1
  %.lobit.i = and i32 %i.q, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1792
  store i32 %.lobit.i, ptr %i.r, align 8, !tbaa !74
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
  store i32 %.lobit24.i, ptr %i.x, align 8, !tbaa !78
  %i.y = lshr i32 %6, 10
  %.lobit25.i = and i32 %i.y, 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 1796
  store i32 %.lobit25.i, ptr %i.z, align 4, !tbaa !75
  %i.aa = lshr i32 %6, 11
  %.lobit26.i = and i32 %i.aa, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 1828
  store i32 %.lobit26.i, ptr %i.ab, align 4, !tbaa !79
  %i.ac = lshr i32 %6, 13
  %.lobit28.i = and i32 %i.ac, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 1532
  store i32 %.lobit28.i, ptr %i.ad, align 4, !tbaa !73
  %i.ae = lshr i32 %6, 14
  %.lobit29.i = and i32 %i.ae, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 1836
  store i32 %.lobit29.i, ptr %i.af, align 4, !tbaa !81
  %i.ag = and i32 %6, 32768
  %.not30.i = icmp eq i32 %i.ag, 0
  br i1 %.not30.i, label %processFlags.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 1840
  store i32 500, ptr %i.ah, align 8, !tbaa !82
  br label %processFlags.exit

processFlags.exit:                                ; preds = %bb.e, %bb.f
end_hunk_3
