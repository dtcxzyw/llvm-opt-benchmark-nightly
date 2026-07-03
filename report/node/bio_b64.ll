loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@b64_write:bb.a
  br i1 %.not155, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.bl = icmp eq i32 %.0129220, 0
  %i.bm = select i1 %i.bl, i32 -1, i32 %.0129220
  br label %.loopexit

bb.am:                                            ; preds = %bb.ak
  %i.bn = load i32, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  %i.bo = icmp slt i32 %i.bn, 1503
  br i1 %i.bo, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 405) #8
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.bp = load i32, ptr %i.k, align 4, !tbaa !14
  %.not156 = icmp slt i32 %i.bn, %i.bp
  br i1 %.not156, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 406) #8
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.bq = add nuw nsw i32 %.0129220, %i.aj
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ac, %bb.aj, %bb.aq
  %i.br = phi i32 [ %i.ax, %bb.ac ], [ %i.bf, %bb.aj ], [ %i.bn, %bb.aq ]
  %.1130 = phi i32 [ %i.av, %bb.ac ], [ %i.bi, %bb.aj ], [ %i.bq, %bb.aq ] ; 4 uses
  %.2 = phi i32 [ %spec.select, %bb.ac ], [ %i.be, %bb.aj ], [ %i.aj, %bb.aq ] ; 2 uses
  %i.bs = sub nsw i32 %.0132219, %.2              ; 2 uses
  %i.bt = zext nneg i32 %.2 to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.0127221, i64 %i.bt
  store i32 0, ptr %i.k, align 4, !tbaa !14
  br label %bb.as

bb.as:                                            ; preds = %bb.az, %bb.ar
  %i.bv = phi i32 [ 0, %bb.ar ], [ %i.ce, %bb.az ]
  %.3 = phi i32 [ %i.br, %bb.ar ], [ %i.cg, %bb.az ] ; 4 uses
  %i.bw = icmp sgt i32 %.3, 0
  br i1 %i.bw, label %bb.at, label %bb.bb

bb.at:                                            ; preds = %bb.as
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds i8, ptr %i.ag, i64 %i.bx
  %i.bz = tail call i32 @BIO_write(ptr noundef %i.b, ptr noundef nonnull %i.by, i32 noundef %.3) #7 ; 5 uses
  %i.ca = icmp slt i32 %i.bz, 1
  br i1 %i.ca, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @BIO_copy_next_retry(ptr noundef %0) #7
  %i.cb = icmp eq i32 %.1130, 0
  %i.cc = select i1 %i.cb, i32 %i.bz, i32 %.1130
  br label %.loopexit

bb.av:                                            ; preds = %bb.at
  %.not159 = icmp samesign ugt i32 %i.bz, %.3
  br i1 %.not159, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, i32 noundef 420) #8
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.cd = load i32, ptr %i.k, align 4, !tbaa !14
  %i.ce = add nsw i32 %i.cd, %i.bz                ; 4 uses
  store i32 %i.ce, ptr %i.k, align 4, !tbaa !14
  %i.cf = icmp slt i32 %i.ce, 1503
  br i1 %i.cf, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, i32 noundef 423) #8
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.cg = sub nsw i32 %.3, %i.bz
  %i.ch = load i32, ptr %i.a, align 8, !tbaa !13
  %.not160 = icmp slt i32 %i.ch, %i.ce
  br i1 %.not160, label %bb.ba, label %bb.as, !llvm.loop !19

bb.ba:                                            ; preds = %bb.az
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 424) #8
  unreachable

bb.bb:                                            ; preds = %bb.as
  store i32 0, ptr %i.a, align 8, !tbaa !13
  store i32 0, ptr %i.k, align 4, !tbaa !14
  %i.ci = icmp sgt i32 %i.bs, 0
  br i1 %i.ci, label %bb.t, label %.loopexit, !llvm.loop !20

.loopexit:                                        ; preds = %bb.bb, %bb.x, %bb.ae, %._crit_edge, %bb.a, %bb.au, %bb.al, %bb.m
  %.0 = phi i32 [ %i.bm, %bb.al ], [ %i.x, %bb.m ], [ 0, %bb.a ], [ 0, %._crit_edge ], [ %i.cc, %bb.au ], [ %i.bc, %bb.ae ], [ %.1130, %bb.bb ], [ %i.av, %bb.x ]
  ret i32 %.0
}

declare i32 @bread_conv(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @b64_read(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @BIO_get_data(ptr noundef %0) #7 ; 27 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = tail call ptr @BIO_next(ptr noundef %0) #7 ; 3 uses
  %i.f = icmp eq ptr %i.c, null
  %i.g = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @BIO_clear_flags(ptr noundef %0, i32 noundef 15) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !9
  %.not = icmp eq i32 %i.i, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.h, align 8, !tbaa !9
  store i32 0, ptr %i.c, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  tail call void @EVP_DecodeInit(ptr noundef %i.m) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = load i32, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !14   ; 4 uses
  %.not202 = icmp slt i32 %i.n, %i.q
  br i1 %.not202, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 141) #8
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = sub nsw i32 %i.n, %i.q
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %2) ; 6 uses
  %i.s = add nsw i32 %spec.select, %i.q
  %i.t = icmp slt i32 %i.s, 1502
  br i1 %i.t, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @OPENSSL_die(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 145) #8
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.v = sext i32 %i.q to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.x = sext i32 %spec.select to i64             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 1 %i.w, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x ; 2 uses
  %i.z = sub nsw i32 %2, %spec.select             ; 2 uses
  %i.aa = load i32, ptr %i.p, align 4, !tbaa !14
  %i.ab = add nsw i32 %i.aa, %spec.select         ; 2 uses
  store i32 %i.ab, ptr %i.p, align 4, !tbaa !14
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !13
  %i.ad = icmp eq i32 %i.ac, %i.ab
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.c, align 8, !tbaa !13
  store i32 0, ptr %i.p, align 4, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.e
  %.0172 = phi i32 [ %spec.select, %bb.k ], [ %spec.select, %bb.j ], [ 0, %bb.e ] ; 2 uses
  %.0168 = phi i32 [ %i.z, %bb.k ], [ %i.z, %bb.j ], [ %2, %bb.e ] ; 2 uses
  %.0163 = phi ptr [ %i.y, %bb.k ], [ %i.y, %bb.j ], [ %1, %bb.e ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !21
  %spec.select216 = tail call i32 @llvm.smin.i32(i32 %i.af, i32 0) ; 2 uses
  %i.ag = icmp sgt i32 %.0168, 0
  br i1 %i.ag, label %.lr.ph262, label %.thread226

.lr.ph262:                                        ; preds = %bb.l
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 1542 ; 18 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  %3 = add i64 %i.d, 1542
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph262, %select.unfold
  %.1164259 = phi ptr [ %.0163, %.lr.ph262 ], [ %.2, %select.unfold ] ; 4 uses
  %.0165258 = phi i32 [ %spec.select216, %.lr.ph262 ], [ %.4, %select.unfold ] ; 2 uses
  %.1169257 = phi i32 [ %.0168, %.lr.ph262 ], [ %.2170, %select.unfold ] ; 4 uses
  %.1173255 = phi i32 [ %.0172, %.lr.ph262 ], [ %.2174, %select.unfold ] ; 7 uses
  %i.an = load i32, ptr %i.ae, align 8, !tbaa !21
  %i.ao = icmp slt i32 %i.an, 1
  br i1 %i.ao, label %.thread226, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load i32, ptr %i.ah, align 8, !tbaa !15 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %.ptr, i64 %i.aq
  %i.as = sub nsw i32 1024, %i.ap
  %i.at = call i32 @BIO_read(ptr noundef %i.e, ptr noundef nonnull %i.ar, i32 noundef %i.as) #7 ; 5 uses
  %i.au = icmp sgt i32 %i.at, 0                   ; 3 uses
  br i1 %i.au, label %._crit_edge293, label %bb.o

._crit_edge293:                                   ; preds = %bb.n
  %.pre294 = load i32, ptr %i.ah, align 8, !tbaa !15
  br label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.av = call i32 @BIO_test_flags(ptr noundef %i.e, i32 noundef 8) #7
  %.not203 = icmp eq i32 %i.av, 0
  %.pre292 = load i32, ptr %i.ah, align 8, !tbaa !15 ; 3 uses
  br i1 %.not203, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aw = icmp eq i32 %.pre292, 0
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ay = call i32 @EVP_DecodeFinal(ptr noundef %i.ax, ptr noundef null, ptr noundef nonnull %i.a) #7
  %.inv = icmp sgt i32 %i.ay, -1
  %spec.select217 = select i1 %.inv, i32 %i.at, i32 -1
  %i.az = load ptr, ptr %i.ai, align 8, !tbaa !16
  call void @EVP_DecodeInit(ptr noundef %i.az) #7
  %.pre.pre = load i32, ptr %i.ah, align 8, !tbaa !15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pre = phi i32 [ %.pre.pre, %bb.q ], [ %.pre292, %bb.p ]
  %.2167 = phi i32 [ %spec.select217, %bb.q ], [ %i.at, %bb.p ] ; 2 uses
  store i32 %.2167, ptr %i.ae, align 8, !tbaa !21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.ba = phi i32 [ %.pre292, %bb.o ], [ %.pre, %bb.r ] ; 2 uses
  %.3 = phi i32 [ %i.at, %bb.o ], [ %.2167, %bb.r ] ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.thread226, label %bb.t

bb.t:                                             ; preds = %._crit_edge293, %bb.s
  %i.bc = phi i32 [ %.pre294, %._crit_edge293 ], [ %i.ba, %bb.s ] ; 3 uses
  %.1179 = phi i32 [ %i.at, %._crit_edge293 ], [ 0, %bb.s ] ; 3 uses
  %.4 = phi i32 [ %.0165258, %._crit_edge293 ], [ %.3, %bb.s ] ; 3 uses
  %i.bd = add nsw i32 %i.bc, %.1179               ; 9 uses
  store i32 %i.bd, ptr %i.ah, align 8, !tbaa !15
  %i.be = load i32, ptr %i.aj, align 4, !tbaa !22
  %.not204 = icmp eq i32 %i.be, 0
  br i1 %.not204, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = call i32 @BIO_test_flags(ptr noundef %0, i32 noundef -1) #7
  %i.bg = and i32 %i.bf, 256
  %.not205 = icmp eq i32 %i.bg, 0
  br i1 %.not205, label %bb.v, label %.sink.split

bb.v:                                             ; preds = %bb.u
  %.pr = load i32, ptr %i.aj, align 4, !tbaa !22
  %.not206 = icmp eq i32 %.pr, 0
  br i1 %.not206, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.a, align 4, !tbaa !5
  %i.bh = icmp sgt i32 %i.bd, 0
  br i1 %i.bh, label %.lr.ph.preheader, label %.thread330

.lr.ph.preheader:                                 ; preds = %bb.w
  %i.bi = add i32 %i.bc, -1
  %i.bj = add i32 %i.bi, %.1179
  %i.bk = zext i32 %i.bj to i64
  %i.bl = add nuw nsw i64 %i.bk, 1543             ; 2 uses
  %i.bm = add i32 %i.bc, 1542
  %i.bn = add i32 %i.bm, %.1179
  %wide.trip.count = zext i32 %i.bn to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ac
  %.0161.ptr248 = phi ptr [ %.0161.ptr, %bb.ac ], [ %.ptr, %.lr.ph.preheader ] ; 9 uses
  %.0160.ptr247 = phi ptr [ %.0160.ptr, %bb.ac ], [ %.ptr, %.lr.ph.preheader ]
  %.0160.idx246 = phi i64 [ %.0160.add, %bb.ac ], [ 1542, %.lr.ph.preheader ]
  %.0161.idx245 = phi i64 [ %.1162.idx, %bb.ac ], [ 1542, %.lr.ph.preheader ] ; 4 uses
  %.0160.add = add nuw nsw i64 %.0160.idx246, 1   ; 6 uses
  %i.bo = load i8, ptr %.0160.ptr247, align 1, !tbaa !23
  %.not207 = icmp eq i8 %i.bo, 10
  br i1 %.not207, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %.lr.ph
  %i.bp = load i32, ptr %i.ak, align 4, !tbaa !24
  %.not208 = icmp eq i32 %i.bp, 0
  br i1 %.not208, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.ak, align 4, !tbaa !24
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.bq = load ptr, ptr %i.ai, align 8, !tbaa !16
  %gepdiff211 = sub nsw i64 %.0160.add, %.0161.idx245
  %i.br = trunc i64 %gepdiff211 to i32
  %i.bs = call i32 @EVP_DecodeUpdate(ptr noundef %i.bq, ptr noundef nonnull %i.al, ptr noundef nonnull %i.a, ptr noundef nonnull %.0161.ptr248, i32 noundef %i.br) #7
  %i.bt = load ptr, ptr %i.ai, align 8, !tbaa !16
  call void @EVP_DecodeInit(ptr noundef %i.bt) #7
  %i.bu = icmp slt i32 %i.bs, 1
  %i.bv = load i32, ptr %i.a, align 4
  %i.bw = icmp eq i32 %i.bv, 0
  %or.cond3 = select i1 %i.bu, i1 %i.bw, i1 false
  br i1 %or.cond3, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.0161.ptr248351.le = ptrtoaddr ptr %.0161.ptr248 to i64
  store i32 0, ptr %i.aj, align 4, !tbaa !22
  %.not209 = icmp eq i64 %.0161.idx245, 1542
  br i1 %.not209, label %.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bx = trunc i64 %.0161.idx245 to i32
  %.neg232 = add nuw i32 %i.bd, 1542
  %i.by = sub i32 %.neg232, %i.bx                 ; 9 uses
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %iter.check367.a, label %.sink.split

iter.check367.a:                                  ; preds = %bb.ab
  %wide.trip.count285 = zext nneg i32 %i.by to i64 ; 8 uses
  %min.iters.check353 = icmp ult i32 %i.by, 4
  %i.ca = sub i64 %3, %.0161.ptr248351.le
  %diff.check352 = icmp ult i64 %i.ca, 32
  %or.cond383 = select i1 %min.iters.check353, i1 true, i1 %diff.check352
  br i1 %or.cond383, label %.lr.ph252.preheader, label %vector.main.loop.iter.check354

vector.main.loop.iter.check354:                   ; preds = %iter.check367.a
  %min.iters.check355 = icmp ult i32 %i.by, 32
  br i1 %min.iters.check355, label %vec.epilog.ph371, label %vector.ph356

vector.ph356:                                     ; preds = %vector.main.loop.iter.check354
  %n.mod.vf357 = and i64 %wide.trip.count285, 28
  %n.vec358 = and i64 %wide.trip.count285, 2147483616 ; 4 uses
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph356
  %index360 = phi i64 [ 0, %vector.ph356 ], [ %index.next363, %vector.body359 ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0161.ptr248, i64 %index360 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load361 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !23
  %wide.load362 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !23
  %i.cd = getelementptr inbounds nuw i8, ptr %.ptr, i64 %index360 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <16 x i8> %wide.load361, ptr %i.cd, align 1, !tbaa !23
  store <16 x i8> %wide.load362, ptr %i.ce, align 1, !tbaa !23
  %index.next363 = add nuw i64 %index360, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next363, %n.vec358
  br i1 %i.cf, label %middle.block364, label %vector.body359, !llvm.loop !25

middle.block364:                                  ; preds = %vector.body359
  %cmp.n365 = icmp eq i64 %n.vec358, %wide.trip.count285
  br i1 %cmp.n365, label %.sink.split, label %vec.epilog.iter.check369

vec.epilog.iter.check369:                         ; preds = %middle.block364
  %min.epilog.iters.check370 = icmp eq i64 %n.mod.vf357, 0
  br i1 %min.epilog.iters.check370, label %.lr.ph252.preheader, label %vec.epilog.ph371, !prof !28

vec.epilog.ph371:                                 ; preds = %vector.main.loop.iter.check354, %vec.epilog.iter.check369
  %vec.epilog.resume.val366 = phi i64 [ %n.vec358, %vec.epilog.iter.check369 ], [ 0, %vector.main.loop.iter.check354 ]
  %n.vec373 = and i64 %wide.trip.count285, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body374

vec.epilog.vector.body374:                        ; preds = %vec.epilog.vector.body374, %vec.epilog.ph371
  %index375 = phi i64 [ %vec.epilog.resume.val366, %vec.epilog.ph371 ], [ %index.next377, %vec.epilog.vector.body374 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0161.ptr248, i64 %index375
  %wide.load376 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %.ptr, i64 %index375
  store <4 x i8> %wide.load376, ptr %i.ch, align 1, !tbaa !23
  %index.next377 = add nuw i64 %index375, 4       ; 2 uses
  %i.ci = icmp eq i64 %index.next377, %n.vec373
  br i1 %i.ci, label %vec.epilog.middle.block378, label %vec.epilog.vector.body374, !llvm.loop !29

vec.epilog.middle.block378:                       ; preds = %vec.epilog.vector.body374
  %cmp.n379 = icmp eq i64 %n.vec373, %wide.trip.count285
  br i1 %cmp.n379, label %.sink.split, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %iter.check367.a, %vec.epilog.iter.check369, %vec.epilog.middle.block378
  %indvars.iv.ph = phi i64 [ 0, %iter.check367.a ], [ %n.vec358, %vec.epilog.iter.check369 ], [ %n.vec373, %vec.epilog.middle.block378 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count285, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph252.prol.loopexit, label %.lr.ph252.prol

.lr.ph252.prol:                                   ; preds = %.lr.ph252.preheader, %.lr.ph252.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph252.prol ], [ %indvars.iv.ph, %.lr.ph252.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph252.prol ], [ 0, %.lr.ph252.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0161.ptr248, i64 %indvars.iv.prol
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !23
  %i.cl = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.prol
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !23
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph252.prol.loopexit, label %.lr.ph252.prol, !llvm.loop !30

.lr.ph252.prol.loopexit:                          ; preds = %.lr.ph252.prol, %.lr.ph252.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph252.preheader ], [ %indvars.iv.next.prol, %.lr.ph252.prol ]
  %i.cm = sub nsw i64 %indvars.iv.ph, %wide.trip.count285
  %i.cn = icmp ugt i64 %i.cm, -4
  br i1 %i.cn, label %.sink.split, label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.prol.loopexit, %.lr.ph252
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph252 ], [ %indvars.iv.unr, %.lr.ph252.prol.loopexit ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0161.ptr248, i64 %indvars.iv
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !23
  %i.cq = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0161.ptr248, i64 %indvars.iv.next
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0161.ptr248, i64 %indvars.iv.next.1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next.1
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !23
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0161.ptr248, i64 %indvars.iv.next.2
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next.2
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !23
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond286.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count285
  br i1 %exitcond286.not.3, label %.sink.split, label %.lr.ph252, !llvm.loop !32

bb.ac:                                            ; preds = %bb.z, %.lr.ph, %bb.y
  %.1162.idx = phi i64 [ %.0161.idx245, %.lr.ph ], [ %.0160.add, %bb.y ], [ %.0160.add, %bb.z ] ; 6 uses
  %.0160.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0160.add
  %.0161.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.1162.idx ; 8 uses
  %exitcond.not = icmp eq i64 %.0160.add, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !33

.loopexit:                                        ; preds = %bb.ac
  %.pr220.pre = load i32, ptr %i.aj, align 4, !tbaa !22
  %i.da = icmp eq i32 %.pr220.pre, 0
  br i1 %i.da, label %.sink.split, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  %i.db = icmp samesign eq i64 %.1162.idx, 1542
  br i1 %i.db, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.dc = icmp eq i32 %i.bd, 1024
  br i1 %i.dc, label %bb.af, label %.thread330

bb.af:                                            ; preds = %bb.ae
  store i32 1, ptr %i.ak, align 4, !tbaa !24
  br label %.thread330.sink.split

bb.ag:                                            ; preds = %bb.ad
  %.not213 = icmp eq i64 %.1162.idx, %i.bl
  br i1 %.not213, label %.thread330.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %gepdiff = sub i64 %i.bl, %.1162.idx            ; 6 uses
  %i.dd = trunc i64 %gepdiff to i32               ; 6 uses
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %iter.check, label %.thread330.sink.split

iter.check:                                       ; preds = %bb.ah
  %wide.trip.count290 = and i64 %gepdiff, 2147483647 ; 6 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count290, 4
  %i.df = add i64 %.1162.idx, -1511
  %diff.check = icmp ult i64 %i.df, 32
  %or.cond384 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond384, label %.lr.ph254.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check342 = icmp samesign ult i64 %wide.trip.count290, 32
  br i1 %min.iters.check342, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %gepdiff, 28
  %n.vec = and i64 %gepdiff, 2147483616           ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0161.ptr, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %wide.load = load <16 x i8>, ptr %i.dg, align 1, !tbaa !23
  %wide.load343 = load <16 x i8>, ptr %i.dh, align 1, !tbaa !23
  %i.di = getelementptr inbounds nuw i8, ptr %.ptr, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store <16 x i8> %wide.load, ptr %i.di, align 1, !tbaa !23
  store <16 x i8> %wide.load343, ptr %i.dj, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count290, %n.vec
  br i1 %cmp.n, label %.thread330.sink.split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph254.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec345 = and i64 %gepdiff, 2147483644        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index346 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next348, %vec.epilog.vector.body ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0161.ptr, i64 %index346
  %wide.load347 = load <4 x i8>, ptr %i.dl, align 1, !tbaa !23
  %i.dm = getelementptr inbounds nuw i8, ptr %.ptr, i64 %index346
  store <4 x i8> %wide.load347, ptr %i.dm, align 1, !tbaa !23
  %index.next348 = add nuw i64 %index346, 4       ; 2 uses
  %i.dn = icmp eq i64 %index.next348, %n.vec345
  br i1 %i.dn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n349 = icmp eq i64 %wide.trip.count290, %n.vec345
  br i1 %cmp.n349, label %.thread330.sink.split, label %.lr.ph254.preheader

.lr.ph254.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv287.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec345, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter391 = and i64 %gepdiff, 3              ; 2 uses
  %lcmp.mod392.not = icmp eq i64 %xtraiter391, 0
  br i1 %lcmp.mod392.not, label %.lr.ph254.prol.loopexit, label %.lr.ph254.prol

.lr.ph254.prol:                                   ; preds = %.lr.ph254.preheader, %.lr.ph254.prol
  %indvars.iv287.prol = phi i64 [ %indvars.iv.next288.prol, %.lr.ph254.prol ], [ %indvars.iv287.ph, %.lr.ph254.preheader ] ; 3 uses
  %prol.iter393 = phi i64 [ %prol.iter393.next, %.lr.ph254.prol ], [ 0, %.lr.ph254.preheader ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0161.ptr, i64 %indvars.iv287.prol
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !23
  %i.dq = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv287.prol
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !23
  %indvars.iv.next288.prol = add nuw nsw i64 %indvars.iv287.prol, 1 ; 2 uses
  %prol.iter393.next = add i64 %prol.iter393, 1   ; 2 uses
  %prol.iter393.cmp.not = icmp eq i64 %prol.iter393.next, %xtraiter391
  br i1 %prol.iter393.cmp.not, label %.lr.ph254.prol.loopexit, label %.lr.ph254.prol, !llvm.loop !36

.lr.ph254.prol.loopexit:                          ; preds = %.lr.ph254.prol, %.lr.ph254.preheader
  %indvars.iv287.unr = phi i64 [ %indvars.iv287.ph, %.lr.ph254.preheader ], [ %indvars.iv.next288.prol, %.lr.ph254.prol ]
  %i.dr = sub nsw i64 %indvars.iv287.ph, %wide.trip.count290
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %.thread330.sink.split, label %.lr.ph254

.lr.ph254:                                        ; preds = %.lr.ph254.prol.loopexit, %.lr.ph254
  %indvars.iv287 = phi i64 [ %indvars.iv.next288.3, %.lr.ph254 ], [ %indvars.iv287.unr, %.lr.ph254.prol.loopexit ] ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0161.ptr, i64 %indvars.iv287
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !23
  %i.dv = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv287
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !23
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.0161.ptr, i64 %indvars.iv.next288
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !23
  %i.dy = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next288
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !23
  %indvars.iv.next288.1 = add nuw nsw i64 %indvars.iv287, 2 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0161.ptr, i64 %indvars.iv.next288.1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !23
  %i.eb = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next288.1
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !23
  %indvars.iv.next288.2 = add nuw nsw i64 %indvars.iv287, 3 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0161.ptr, i64 %indvars.iv.next288.2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !23
  %i.ee = getelementptr inbounds nuw i8, ptr %.ptr, i64 %indvars.iv.next288.2
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !23
  %indvars.iv.next288.3 = add nuw nsw i64 %indvars.iv287, 4 ; 2 uses
  %exitcond291.not.3 = icmp eq i64 %indvars.iv.next288.3, %wide.trip.count290
  br i1 %exitcond291.not.3, label %.thread330.sink.split, label %.lr.ph254, !llvm.loop !37

.thread330.sink.split:                            ; preds = %.lr.ph254.prol.loopexit, %.lr.ph254, %middle.block, %vec.epilog.middle.block, %bb.ag, %bb.ah, %bb.af
  %.sink = phi i32 [ 0, %bb.af ], [ %i.dd, %bb.ah ], [ 0, %bb.ag ], [ %i.dd, %middle.block ], [ %i.dd, %vec.epilog.middle.block ], [ %i.dd, %.lr.ph254 ], [ %i.dd, %.lr.ph254.prol.loopexit ]
  store i32 %.sink, ptr %i.ah, align 8, !tbaa !15
  br label %.thread330

.thread330:                                       ; preds = %.thread330.sink.split, %bb.w, %bb.ae
  br i1 %i.au, label %select.unfold, label %..thread226.loopexit_crit_edge271, !llvm.loop !38

.thread:                                          ; preds = %bb.t, %bb.v
  %i.ef = icmp slt i32 %i.bd, 1024
  %or.cond5 = and i1 %i.au, %i.ef
  br i1 %or.cond5, label %select.unfold, label %bb.ai, !llvm.loop !38

.sink.split:                                      ; preds = %.lr.ph252.prol.loopexit, %.lr.ph252, %middle.block364, %vec.epilog.middle.block378, %.loopexit, %bb.aa, %bb.ab, %bb.u
  %.3181.ph = phi i32 [ %i.bd, %bb.u ], [ %i.bd, %.loopexit ], [ %i.bd, %bb.aa ], [ %i.by, %bb.ab ], [ %i.by, %middle.block364 ], [ %i.by, %vec.epilog.middle.block378 ], [ %i.by, %.lr.ph252 ], [ %i.by, %.lr.ph252.prol.loopexit ]
  store i32 0, ptr %i.ah, align 8, !tbaa !15
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %.thread
  %.3181 = phi i32 [ %i.bd, %.thread ], [ %.3181.ph, %.sink.split ]
  %i.eg = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.eh = call i32 @EVP_DecodeUpdate(ptr noundef %i.eg, ptr noundef nonnull %i.al, ptr noundef nonnull %i.c, ptr noundef nonnull %.ptr, i32 noundef %.3181) #7 ; 3 uses
  store i32 0, ptr %i.ah, align 8, !tbaa !15
  store i32 %i.eh, ptr %i.ae, align 8, !tbaa !21
  store i32 0, ptr %i.am, align 4, !tbaa !14
  %i.ei = icmp slt i32 %i.eh, 0
  br i1 %i.ei, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ej = load i32, ptr %i.aj, align 4, !tbaa !22
  %.not215 = icmp eq i32 %i.ej, 0
  %i.ek = select i1 %.not215, i32 %i.eh, i32 0
  store i32 0, ptr %i.c, align 8, !tbaa !13
  br label %.thread226

bb.ak:                                            ; preds = %bb.ai
  %i.el = load i32, ptr %i.c, align 8, !tbaa !13
  %.1169. = call i32 @llvm.smin.i32(i32 %i.el, i32 %.1169257) ; 5 uses
  %i.em = sext i32 %.1169. to i64                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1164259, ptr nonnull align 8 %i.al, i64 %i.em, i1 false)
  %i.en = add nsw i32 %.1169., %.1173255
  store i32 %.1169., ptr %i.am, align 4, !tbaa !14
  %i.eo = load i32, ptr %i.c, align 8, !tbaa !13
  %i.ep = icmp eq i32 %.1169., %i.eo
  br i1 %i.ep, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.c, align 8, !tbaa !13
  store i32 0, ptr %i.am, align 4, !tbaa !14
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.eq = sub nsw i32 %.1169257, %.1169.
  %i.er = getelementptr inbounds i8, ptr %.1164259, i64 %i.em
  br label %select.unfold

select.unfold:                                    ; preds = %.thread330, %.thread, %bb.am
  %.2174 = phi i32 [ %i.en, %bb.am ], [ %.1173255, %.thread ], [ %.1173255, %.thread330 ] ; 2 uses
  %.2170 = phi i32 [ %i.eq, %bb.am ], [ %.1169257, %.thread ], [ %.1169257, %.thread330 ] ; 2 uses
  %.2 = phi ptr [ %i.er, %bb.am ], [ %.1164259, %.thread ], [ %.1164259, %.thread330 ]
  %i.es = icmp sgt i32 %.2170, 0
  br i1 %i.es, label %bb.m, label %.thread226

..thread226.loopexit_crit_edge271:                ; preds = %.thread330
  br label %.thread226, !llvm.loop !38

.thread226:                                       ; preds = %select.unfold, %bb.s, %bb.m, %bb.l, %..thread226.loopexit_crit_edge271, %bb.aj
  %.1173240 = phi i32 [ %.1173255, %bb.aj ], [ %.0172, %bb.l ], [ %.1173255, %..thread226.loopexit_crit_edge271 ], [ %.2174, %select.unfold ], [ %.1173255, %bb.s ], [ %.1173255, %bb.m ] ; 2 uses
  %.6 = phi i32 [ %i.ek, %bb.aj ], [ %spec.select216, %bb.l ], [ %.4, %..thread226.loopexit_crit_edge271 ], [ %.4, %select.unfold ], [ %.3, %bb.s ], [ %.0165258, %bb.m ]
  call void @BIO_copy_next_retry(ptr noundef %0) #7
  %i.et = icmp eq i32 %.1173240, 0
  %i.eu = select i1 %i.et, i32 %.6, i32 %.1173240
  br label %bb.an

bb.an:                                            ; preds = %bb.b, %bb.a, %.thread226
  %.0159 = phi i32 [ %i.eu, %.thread226 ], [ 0, %bb.a ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0159
}

; Function Attrs: nounwind uwtable
define internal i32 @b64_puts(ptr noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i32 @b64_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.b)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal i64 @b64_ctrl(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr noundef %3) #2 {
bb.a:
  %i.a = tail call ptr @BIO_get_data(ptr noundef %0) #7 ; 20 uses
  %i.b = tail call ptr @BIO_next(ptr noundef %0) #7 ; 8 uses
  %i.c = icmp eq ptr %i.a, null
  %i.d = icmp eq ptr %i.b, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.aa, label %bb.b
end_hunk_0
