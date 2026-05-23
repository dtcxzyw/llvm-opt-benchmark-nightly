inline.NumInlined: 999
inline.NumDeleted: 129
begin_hunk_0_@bary_pack:bb.a
  %or.cond15 = or i1 %i.lb, %i.lc
  br i1 %or.cond15, label %bb.bm, label %.preheader555

.preheader555:                                    ; preds = %bb.bl
  br i1 %i.b, label %.lr.ph580, label %.critedge17

bb.bm:                                            ; preds = %bb.bl
  %i.ld = shl nsw i32 %spec.select, 1
  br label %bb.bq

.lr.ph580:                                        ; preds = %.preheader555, %bb.bn
  %storemerge579 = phi ptr [ %i.lg, %bb.bn ], [ %1, %.preheader555 ] ; 3 uses
  %i.le = load i32, ptr %storemerge579, align 4, !tbaa !7
  %i.lf = icmp eq i32 %i.le, 0
  br i1 %i.lf, label %bb.bn, label %.critedge17

bb.bn:                                            ; preds = %.lr.ph580
  %i.lg = getelementptr i8, ptr %storemerge579, i64 4 ; 3 uses
  %i.lh = icmp ult ptr %i.lg, %.0476
  br i1 %i.lh, label %.lr.ph580, label %.critedge17, !llvm.loop !192

.critedge17:                                      ; preds = %.lr.ph580, %bb.bn, %.preheader555
  %storemerge.lcssa = phi ptr [ %1, %.preheader555 ], [ %i.lg, %bb.bn ], [ %storemerge579, %.lr.ph580 ] ; 2 uses
  %i.li = ptrtoint ptr %.0476 to i64
  %i.lj = ptrtoint ptr %storemerge.lcssa to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = icmp eq i64 %i.lk, 4
  br i1 %i.ll, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.critedge17
  %i.lm = load i32, ptr %storemerge.lcssa, align 4, !tbaa !7
  %i.ln = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.lm)
  %i.lo = icmp samesign ult i32 %i.ln, 2
  br i1 %i.lo, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.av, %bb.aw, %bb.bo, %.critedge17
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bj, %bb.bm, %bb.bp, %bb.bk, %bb.bo, %bb.aw, %bb.ay, %bb.au
  %.4261 = phi i32 [ %i.hq, %bb.au ], [ %0, %bb.ay ], [ -2, %bb.bp ], [ -1, %bb.bo ], [ -1, %bb.aw ], [ %i.ky, %bb.bj ], [ %i.ld, %bb.bm ], [ %spec.select, %bb.bk ] ; 3 uses
  %i.lp = and i32 %7, 128
  %i.lq = icmp ne i32 %i.lp, 0
  %i.lr = icmp slt i32 %.4261, 0
  %or.cond19 = select i1 %i.lq, i1 %i.lr, i1 false
  %i.ls = icmp ne i64 %4, 0
  %or.cond21 = and i1 %i.ls, %or.cond19
  br i1 %or.cond21, label %bb.br, label %.thread494

bb.br:                                            ; preds = %bb.bq
  %i.lt = and i32 %7, 3
  %i.lu = icmp eq i32 %i.lt, 1                    ; 3 uses
  %i.lv = add i64 %4, -1
  %i.lw = mul i64 %5, %i.lv                       ; 2 uses
  %i.lx = sub i64 0, %5
  %.035.i393 = select i1 %i.lu, i64 %i.lw, i64 0
  %.034.i394 = select i1 %i.lu, i64 %i.lx, i64 %5
  %.033.i395 = select i1 %i.lu, i64 0, i64 %i.lw
  %i.ly = trunc i64 %6 to i32
  %i.lz = and i32 %i.ly, 7                        ; 3 uses
  %i.ma = icmp ne i32 %i.lz, 0                    ; 3 uses
  %i.mb = lshr i64 %6, 3                          ; 2 uses
  %i.mc = sub i64 %5, %i.mb
  %i.md = sext i1 %i.ma to i64                    ; 2 uses
  %spec.select.i396 = add i64 %i.mc, %i.md        ; 4 uses
  %i.me = and i32 %7, 112
  %i.mf = icmp eq i32 %i.me, 16                   ; 2 uses
  %i.mg = add i64 %5, -1
  %.032.i397 = select i1 %i.mf, i64 %i.mg, i64 0
  %.0.i398 = select i1 %i.mf, i64 -1, i64 1       ; 3 uses
  %i.mh = sub nuw nsw i32 8, %i.lz
  %i.mi = lshr i32 255, %i.lz
  %i.mj = select i1 %i.ma, i32 %i.mi, i32 0       ; 2 uses
  %i.mk = getelementptr i8, ptr %3, i64 %.035.i393
  %i.ml = getelementptr i8, ptr %3, i64 %.033.i395
  %.not613 = icmp eq i64 %spec.select.i396, 0
  %i.mm = add i64 %5, %i.md
  %.neg = add nuw nsw i64 %i.mb, 1
  %xtraiter740 = and i64 %spec.select.i396, 1
  %i.mn = icmp eq i64 %i.mm, %.neg
  %unroll_iter = and i64 %spec.select.i396, -2
  %lcmp.mod741.not = icmp eq i64 %xtraiter740, 0
  %lcmp.mod744 = trunc i64 %spec.select.i396 to i1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %bb.br
  %.0262 = phi ptr [ %i.mk, %bb.br ], [ %i.nt, %bb.bu ] ; 3 uses
  %.0253 = phi i32 [ 1, %bb.br ], [ %.2, %bb.bu ] ; 3 uses
  %i.mo = getelementptr i8, ptr %.0262, i64 %.032.i397 ; 3 uses
  br i1 %.not613, label %._crit_edge589, label %.lr.ph588.preheader

.lr.ph588.preheader:                              ; preds = %bb.bs
  br i1 %i.mn, label %.lr.ph588.epil.preheader, label %.lr.ph588

.lr.ph588:                                        ; preds = %.lr.ph588.preheader, %.lr.ph588
  %.0586 = phi ptr [ %i.nc, %.lr.ph588 ], [ %i.mo, %.lr.ph588.preheader ] ; 3 uses
  %.1584 = phi i32 [ %i.nb, %.lr.ph588 ], [ %.0253, %.lr.ph588.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph588 ], [ 0, %.lr.ph588.preheader ]
  %i.mp = load i8, ptr %.0586, align 1, !tbaa !15
  %i.mq = xor i8 %i.mp, -1
  %i.mr = zext i8 %i.mq to i32
  %i.ms = add i32 %.1584, %i.mr                   ; 2 uses
  %i.mt = trunc i32 %i.ms to i8
  store i8 %i.mt, ptr %.0586, align 1, !tbaa !15
  %i.mu = ashr i32 %i.ms, 8
  %i.mv = getelementptr i8, ptr %.0586, i64 %.0.i398 ; 3 uses
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !15
  %i.mx = xor i8 %i.mw, -1
  %i.my = zext i8 %i.mx to i32
  %i.mz = add nsw i32 %i.mu, %i.my                ; 2 uses
  %i.na = trunc i32 %i.mz to i8
  store i8 %i.na, ptr %i.mv, align 1, !tbaa !15
  %i.nb = ashr i32 %i.mz, 8                       ; 3 uses
  %i.nc = getelementptr i8, ptr %i.mv, i64 %.0.i398 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge589.loopexit.unr-lcssa, label %.lr.ph588, !llvm.loop !193

._crit_edge589.loopexit.unr-lcssa:                ; preds = %.lr.ph588
  br i1 %lcmp.mod741.not, label %._crit_edge589, label %.lr.ph588.epil.preheader

.lr.ph588.epil.preheader:                         ; preds = %._crit_edge589.loopexit.unr-lcssa, %.lr.ph588.preheader
  %.0586.epil.init = phi ptr [ %i.mo, %.lr.ph588.preheader ], [ %i.nc, %._crit_edge589.loopexit.unr-lcssa ] ; 3 uses
  %.1584.epil.init = phi i32 [ %.0253, %.lr.ph588.preheader ], [ %i.nb, %._crit_edge589.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod744)
  %i.nd = load i8, ptr %.0586.epil.init, align 1, !tbaa !15
  %i.ne = xor i8 %i.nd, -1
  %i.nf = zext i8 %i.ne to i32
  %i.ng = add i32 %.1584.epil.init, %i.nf         ; 2 uses
  %i.nh = trunc i32 %i.ng to i8
  store i8 %i.nh, ptr %.0586.epil.init, align 1, !tbaa !15
  %i.ni = ashr i32 %i.ng, 8
  %i.nj = getelementptr i8, ptr %.0586.epil.init, i64 %.0.i398
  br label %._crit_edge589

._crit_edge589:                                   ; preds = %.lr.ph588.epil.preheader, %._crit_edge589.loopexit.unr-lcssa, %bb.bs
  %.1.lcssa = phi i32 [ %.0253, %bb.bs ], [ %i.nb, %._crit_edge589.loopexit.unr-lcssa ], [ %i.ni, %.lr.ph588.epil.preheader ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.mo, %bb.bs ], [ %i.nc, %._crit_edge589.loopexit.unr-lcssa ], [ %i.nj, %.lr.ph588.epil.preheader ] ; 2 uses
  br i1 %i.ma, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %._crit_edge589
  %i.nk = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.nl = zext i8 %i.nk to i32
  %i.nm = xor i32 %i.nl, -1
  %i.nn = and i32 %i.mj, %i.nm
  %i.no = add i32 %i.nn, %.1.lcssa                ; 2 uses
  %i.np = and i32 %i.no, %i.mj
  %i.nq = trunc nuw nsw i32 %i.np to i8
  store i8 %i.nq, ptr %.0.lcssa, align 1, !tbaa !15
  %i.nr = ashr i32 %i.no, %i.mh
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge589
  %.2 = phi i32 [ %i.nr, %bb.bt ], [ %.1.lcssa, %._crit_edge589 ]
  %i.ns = icmp eq ptr %.0262, %i.ml
  %i.nt = getelementptr i8, ptr %.0262, i64 %.034.i394
  br i1 %i.ns, label %.thread494, label %bb.bs

.thread494:                                       ; preds = %bb.bu, %.thread670, %bb.w, %bb.x, %bb.s, %bb.q, %.thread530, %bytes_2comp.exit.thread, %.thread526, %bb.o, %bb.m, %bb.k, %bb.bq, %bary_swap.exit383, %bb.e
  %.4 = phi i32 [ %.4261, %bb.bq ], [ 0, %bb.e ], [ %i.ao, %bb.m ], [ %spec.select357, %bary_swap.exit383 ], [ %i.ec, %.thread526 ], [ %i.aw, %bb.o ], [ %i.bh, %bb.q ], [ %i.aa, %bb.k ], [ %spec.select, %.thread530 ], [ %i.ed, %bytes_2comp.exit.thread ], [ %i.co, %bb.x ], [ -1, %bb.w ], [ %i.bw, %bb.s ], [ 0, %.thread670 ], [ %.4261, %bb.bu ]
  ret i32 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @validate_integer_pack_format(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef range(i32 1267, 2036) %4) unnamed_addr #0 {
bb.a:
  %i.a = xor i32 %4, -1
  %i.b = and i32 %3, %i.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.20) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %3, 3
  switch i32 %i.d, label %bb.g [
    i32 0, label %bb.d
    i32 3, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ugt i64 %0, 1
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.21) #25
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.g = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.22) #25
  unreachable

bb.g:                                             ; preds = %bb.c, %bb.d
  %5 = and i32 %3, 112
  %6 = sub i32 %5, 0                              ; 2 uses
  %7 = call i32 @llvm.fshl.i32(i32 %6, i32 %6, i32 28)
  switch i32 %7, label %bb.i [
    i32 0, label %bb.h
    i32 4, label %bb.j
    i32 2, label %bb.j
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.h = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.23) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.i = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.24) #25
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.j = icmp eq i64 %1, 0
  br i1 %i.j, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.25, i64 noundef 0) #25
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.l = icmp slt i64 %1, 0
  br i1 %i.l, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.m = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.26, i64 noundef %1) #25
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.n = lshr i64 %2, 3
  %.not31 = icmp samesign ugt i64 %1, %i.n
  br i1 %.not31, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.27, i64 noundef %2) #25
  unreachable

bb.p:                                             ; preds = %bb.n
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.28, i64 noundef %0, i64 noundef %1) #25
  unreachable

bb.r:                                             ; preds = %bb.p
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2, 2) i32 @bary_unpack_internal(ptr noundef %0, i64 noundef range(i64 -576460752303423487, 9223372036854775807) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.b = getelementptr [4 x i8], ptr %0, i64 %1   ; 9 uses
  %i.c = and i32 %6, 1024
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %5, 0                        ; 2 uses
  %i.e = icmp eq i64 %3, 1
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.c, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.b
  %.pre397 = and i32 %6, 112
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %.not154 = icmp eq i64 %4, 1
  %i.f = and i32 %6, 112                          ; 4 uses
  %.not155 = icmp eq i32 %i.f, 64
  %or.cond182 = or i1 %.not154, %.not155
  br i1 %or.cond182, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %6, 16
  %i.h = icmp ne i32 %i.g, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi i1 [ %i.h, %bb.d ], [ false, %bb.c ] ; 2 uses
  switch i64 %4, label %.thread [
    i64 1, label %integer_unpack_single_bdigit.exit
    i64 2, label %bb.f
    i64 4, label %bb.g
  ]

integer_unpack_single_bdigit.exit:                ; preds = %bb.e
  %i.j = load i8, ptr %2, align 1, !tbaa !15      ; 2 uses
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = and i32 %6, 128
  %.not.i = icmp eq i32 %i.l, 0                   ; 2 uses
  %i.m = and i32 %6, 512
  %.not18.i = icmp eq i32 %i.m, 0                 ; 2 uses
  %.not20.i = icmp sgt i8 %i.j, -1
  %or.cond311 = select i1 %.not18.i, i1 %.not20.i, i1 false ; 2 uses
  %i.n = sub nuw nsw i32 256, %i.k
  %or.cond311.sink = select i1 %.not.i, i1 %.not18.i, i1 %or.cond311
  %i.o = select i1 %.not.i, i1 true, i1 %or.cond311
  %.015.i = select i1 %i.o, i32 %i.k, i32 %i.n
  %spec.select317 = select i1 %or.cond311.sink, i32 1, i32 -1
  store i32 %.015.i, ptr %0, align 4, !tbaa !7
  br label %bary_2comp.exit

bb.f:                                             ; preds = %bb.e
  %i.p = ptrtoint ptr %2 to i64
  %i.q = and i64 %i.p, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %integer_unpack_single_bdigit.exit201, label %.thread

integer_unpack_single_bdigit.exit201:             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 2) ]
  %i.s = load i16, ptr %2, align 2, !tbaa !175    ; 2 uses
  %i.t = tail call i16 @llvm.bswap.i16(i16 %i.s)
  %spec.select = select i1 %i.i, i16 %i.t, i16 %i.s ; 2 uses
  %i.u = zext i16 %spec.select to i32             ; 2 uses
  %i.v = and i32 %6, 128
  %.not.i196 = icmp eq i32 %i.v, 0                ; 2 uses
  %i.w = and i32 %6, 512
  %.not18.i197 = icmp eq i32 %i.w, 0              ; 2 uses
  %.not20.i200 = icmp sgt i16 %spec.select, -1
  %or.cond313 = select i1 %.not18.i197, i1 %.not20.i200, i1 false ; 2 uses
  %i.x = sub nuw nsw i32 65536, %i.u
  %or.cond313.sink = select i1 %.not.i196, i1 %.not18.i197, i1 %or.cond313
  %i.y = select i1 %.not.i196, i1 true, i1 %or.cond313
  %.015.i198 = select i1 %i.y, i32 %i.u, i32 %i.x
  %spec.select319 = select i1 %or.cond313.sink, i32 1, i32 -1
  store i32 %.015.i198, ptr %0, align 4, !tbaa !7
  br label %bary_2comp.exit

bb.g:                                             ; preds = %bb.e
  %.old = ptrtoint ptr %2 to i64
  %.old183 = and i64 %.old, 3
  %.old184 = icmp eq i64 %.old183, 0
  br i1 %.old184, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 4) ]
  %i.z = load i32, ptr %2, align 4, !tbaa !7      ; 2 uses
  %i.aa = tail call i32 @llvm.bswap.i32(i32 %i.z)
  %spec.select314 = select i1 %i.i, i32 %i.aa, i32 %i.z ; 5 uses
  %i.ab = and i32 %6, 128
  %.not.i202 = icmp eq i32 %i.ab, 0
  %i.ac = and i32 %6, 512
  %.not18.i203 = icmp eq i32 %i.ac, 0             ; 2 uses
  br i1 %.not.i202, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not18.i203, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp eq i32 %spec.select314, 0
  %i.ae = select i1 %i.ad, i32 -2, i32 -1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %.not20.i206 = icmp sgt i32 %spec.select314, -1
  br i1 %.not20.i206, label %integer_unpack_single_bdigit.exit207, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.ph.i = phi i32 [ %i.ae, %bb.j ], [ -1, %bb.k ]
  %i.af = sub i32 0, %spec.select314
  br label %integer_unpack_single_bdigit.exit207

bb.m:                                             ; preds = %bb.h
  %i.ag = select i1 %.not18.i203, i32 1, i32 -1
  br label %integer_unpack_single_bdigit.exit207

integer_unpack_single_bdigit.exit207:             ; preds = %bb.k, %bb.l, %bb.m
  %.015.i204 = phi i32 [ %i.af, %bb.l ], [ %spec.select314, %bb.m ], [ %spec.select314, %bb.k ]
  %.0.i205 = phi i32 [ %.ph.i, %bb.l ], [ %i.ag, %bb.m ], [ 1, %bb.k ]
  store i32 %.015.i204, ptr %0, align 4, !tbaa !7
  br label %bary_2comp.exit

.thread:                                          ; preds = %..thread_crit_edge, %bb.f, %bb.g, %bb.e
  %.pre-phi = phi i32 [ %.pre397, %..thread_crit_edge ], [ %i.f, %bb.f ], [ %i.f, %bb.g ], [ %i.f, %bb.e ]
  %i.ah = and i32 %6, 3
  %i.ai = icmp eq i32 %i.ah, 2
  %.not156 = icmp ne i32 %.pre-phi, 16
  %i.aj = and i1 %i.ai, %.not156
  %or.cond190.not = and i1 %i.d, %i.aj
  br i1 %or.cond190.not, label %bb.n, label %bb.x

bb.n:                                             ; preds = %.thread
  %i.ak = mul i64 %4, %3                          ; 9 uses
  %i.al = shl i64 %1, 2                           ; 3 uses
  %.not.i208 = icmp eq i64 %i.ak, 0
  br i1 %.not.i208, label %ruby_nonempty_memcpy.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_0
