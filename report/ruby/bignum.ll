inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 183
begin_hunk_0_@bary_pack:bb.a
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
  %i.h = lshr i32 %3, 4
  %i.i = and i32 %i.h, 7
  switch i32 %i.i, label %bb.i [
    i32 0, label %bb.h
    i32 4, label %bb.j
    i32 2, label %bb.j
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.j = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.23) #25
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.24) #25
  unreachable

bb.j:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.m = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.25, i64 noundef 0) #25
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.n = icmp slt i64 %1, 0
  br i1 %i.n, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.o = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.26, i64 noundef %1) #25
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.p = lshr i64 %2, 3
  %.not31 = icmp samesign ugt i64 %1, %i.p
  br i1 %.not31, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.q = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.27, i64 noundef %2) #25
  unreachable

bb.p:                                             ; preds = %bb.n
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.r = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.28, i64 noundef %0, i64 noundef %1) #25
  unreachable

bb.r:                                             ; preds = %bb.p
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2, 2) i32 @bary_unpack_internal(ptr noundef %0, i64 noundef range(i64 -576460752303423487, 9223372036854775807) %1, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %8 = ptrtoaddr ptr %0 to i64
  %i.a = getelementptr [4 x i8], ptr %0, i64 %1   ; 9 uses
  %i.b = and i32 %6, 1024
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %5, 0                        ; 2 uses
  %i.d = icmp eq i64 %3, 1
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.b
  %.pre397 = and i32 %6, 112
  br label %.thread

bb.c:                                             ; preds = %bb.b
  %.not154 = icmp eq i64 %4, 1
  %i.e = and i32 %6, 112                          ; 4 uses
  %.not155 = icmp eq i32 %i.e, 64
  %or.cond182 = or i1 %.not154, %.not155
  br i1 %or.cond182, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %6, 16
  %i.g = icmp ne i32 %i.f, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi i1 [ %i.g, %bb.d ], [ false, %bb.c ] ; 2 uses
  switch i64 %4, label %.thread [
    i64 1, label %integer_unpack_single_bdigit.exit
    i64 2, label %bb.f
    i64 4, label %bb.g
  ]

integer_unpack_single_bdigit.exit:                ; preds = %bb.e
  %i.i = load i8, ptr %2, align 1, !tbaa !15      ; 2 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = and i32 %6, 128
  %.not.i = icmp eq i32 %i.k, 0                   ; 2 uses
  %i.l = and i32 %6, 512
  %.not18.i = icmp eq i32 %i.l, 0                 ; 2 uses
  %.not20.i = icmp sgt i8 %i.i, -1
  %or.cond311 = select i1 %.not18.i, i1 %.not20.i, i1 false ; 2 uses
  %i.m = sub nuw nsw i32 256, %i.j
  %or.cond311.sink = select i1 %.not.i, i1 %.not18.i, i1 %or.cond311
  %i.n = select i1 %.not.i, i1 true, i1 %or.cond311
  %.015.i = select i1 %i.n, i32 %i.j, i32 %i.m
  %spec.select317 = select i1 %or.cond311.sink, i32 1, i32 -1
  store i32 %.015.i, ptr %0, align 4, !tbaa !7
  br label %bary_2comp.exit

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %2 to i64
  %i.p = and i64 %i.o, 1
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %integer_unpack_single_bdigit.exit201, label %.thread

integer_unpack_single_bdigit.exit201:             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "align"(ptr %2, i64 2) ]
  %i.r = load i16, ptr %2, align 2, !tbaa !175    ; 2 uses
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.r)
  %spec.select = select i1 %i.h, i16 %i.s, i16 %i.r ; 2 uses
  %i.t = zext i16 %spec.select to i32             ; 2 uses
  %i.u = and i32 %6, 128
  %.not.i196 = icmp eq i32 %i.u, 0                ; 2 uses
  %i.v = and i32 %6, 512
  %.not18.i197 = icmp eq i32 %i.v, 0              ; 2 uses
  %.not20.i200 = icmp sgt i16 %spec.select, -1
  %or.cond313 = select i1 %.not18.i197, i1 %.not20.i200, i1 false ; 2 uses
  %i.w = sub nuw nsw i32 65536, %i.t
  %or.cond313.sink = select i1 %.not.i196, i1 %.not18.i197, i1 %or.cond313
  %i.x = select i1 %.not.i196, i1 true, i1 %or.cond313
  %.015.i198 = select i1 %i.x, i32 %i.t, i32 %i.w
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
  %i.y = load i32, ptr %2, align 4, !tbaa !7      ; 2 uses
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)
  %spec.select314 = select i1 %i.h, i32 %i.z, i32 %i.y ; 5 uses
  %i.aa = and i32 %6, 128
  %.not.i202 = icmp eq i32 %i.aa, 0
  %i.ab = and i32 %6, 512
  %.not18.i203 = icmp eq i32 %i.ab, 0             ; 2 uses
  br i1 %.not.i202, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  br i1 %.not18.i203, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp eq i32 %spec.select314, 0
  %i.ad = select i1 %i.ac, i32 -2, i32 -1
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %.not20.i206 = icmp sgt i32 %spec.select314, -1
  br i1 %.not20.i206, label %integer_unpack_single_bdigit.exit207, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.ph.i = phi i32 [ %i.ad, %bb.j ], [ -1, %bb.k ]
  %i.ae = sub i32 0, %spec.select314
  br label %integer_unpack_single_bdigit.exit207

bb.m:                                             ; preds = %bb.h
  %i.af = select i1 %.not18.i203, i32 1, i32 -1
  br label %integer_unpack_single_bdigit.exit207

integer_unpack_single_bdigit.exit207:             ; preds = %bb.k, %bb.l, %bb.m
  %.015.i204 = phi i32 [ %i.ae, %bb.l ], [ %spec.select314, %bb.m ], [ %spec.select314, %bb.k ]
  %.0.i205 = phi i32 [ %.ph.i, %bb.l ], [ %i.af, %bb.m ], [ 1, %bb.k ]
  store i32 %.015.i204, ptr %0, align 4, !tbaa !7
  br label %bary_2comp.exit

.thread:                                          ; preds = %..thread_crit_edge, %bb.f, %bb.g, %bb.e
  %.pre-phi = phi i32 [ %.pre397, %..thread_crit_edge ], [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %i.e, %bb.e ]
  %i.ag = and i32 %6, 3
  %i.ah = icmp eq i32 %i.ag, 2
  %.not156 = icmp ne i32 %.pre-phi, 16
  %i.ai = and i1 %i.ah, %.not156
  %or.cond190.not = and i1 %i.c, %i.ai
  br i1 %or.cond190.not, label %bb.n, label %bb.x

bb.n:                                             ; preds = %.thread
  %i.aj = mul i64 %4, %3                          ; 9 uses
  %i.ak = shl i64 %1, 2                           ; 3 uses
  %.not.i208 = icmp eq i64 %i.aj, 0
  br i1 %.not.i208, label %ruby_nonempty_memcpy.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull readonly align 1 %2, i64 noundef range(i64 1, 0) %i.aj, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.n, %bb.o
  %i.al = and i32 %6, 128
  %.not167 = icmp eq i32 %i.al, 0
  br i1 %.not167, label %bb.w, label %bb.p

bb.p:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.am = and i32 %6, 512
  %.not169 = icmp eq i32 %i.am, 0
  br i1 %.not169, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr i8, ptr %0, i64 %i.aj
  %i.ao = sub i64 %i.ak, %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.an, i8 noundef -1, i64 noundef %i.ao, i1 noundef false) #23
  %.not27.i = icmp eq i64 %1, 0
  br i1 %.not27.i, label %bary_2comp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.023.i = phi i64 [ %i.ar, %bb.r ], [ 0, %bb.q ] ; 5 uses
  %i.ap = getelementptr [4 x i8], ptr %0, i64 %.023.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7  ; 2 uses
  %.not.i210 = icmp eq i32 %i.aq, 0
  br i1 %.not.i210, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.ar = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ar, %1
  br i1 %exitcond.not.i, label %bary_2comp.exit, label %.lr.ph.i, !llvm.loop !55

bb.s:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr [4 x i8], ptr %0, i64 %.023.i
  %i.at = sub i32 0, %i.aq
  store i32 %i.at, ptr %i.as, align 4, !tbaa !7
  %.124.i = add i64 %.023.i, 1                    ; 4 uses
  %i.au = icmp ult i64 %.124.i, %1
  br i1 %i.au, label %.lr.ph26.i.preheader, label %bary_2comp.exit

.lr.ph26.i.preheader:                             ; preds = %bb.s
  %i.av = xor i64 %.023.i, -1
  %i.aw = add i64 %1, %i.av                       ; 3 uses
  %min.iters.check498 = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check498, label %.lr.ph26.i.preheader510, label %vector.ph499

vector.ph499:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec501 = and i64 %i.aw, -8                   ; 3 uses
  %i.ax = add i64 %.124.i, %n.vec501
  %i.ay = getelementptr [4 x i8], ptr %0, i64 %.124.i
  br label %vector.body502

vector.body502:                                   ; preds = %vector.body502, %vector.ph499
  %index503 = phi i64 [ 0, %vector.ph499 ], [ %index.next506, %vector.body502 ] ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %index503 ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16     ; 2 uses
  %wide.load504 = load <4 x i32>, ptr %i.az, align 4, !tbaa !7
  %wide.load505 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !7
  %i.bb = xor <4 x i32> %wide.load504, splat (i32 -1)
  %i.bc = xor <4 x i32> %wide.load505, splat (i32 -1)
  store <4 x i32> %i.bb, ptr %i.az, align 4, !tbaa !7
  store <4 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !7
end_hunk_0
begin_hunk_1_@bary_unpack_internal:bb.a
  %i.bd = icmp eq i64 %index.next506, %n.vec501
  br i1 %i.bd, label %middle.block507, label %vector.body502, !llvm.loop !194

middle.block507:                                  ; preds = %vector.body502
  %cmp.n508 = icmp eq i64 %i.aw, %n.vec501
  br i1 %cmp.n508, label %bary_2comp.exit, label %.lr.ph26.i.preheader510

.lr.ph26.i.preheader510:                          ; preds = %.lr.ph26.i.preheader, %middle.block507
  %.125.i.ph = phi i64 [ %.124.i, %.lr.ph26.i.preheader ], [ %i.ax, %middle.block507 ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader510, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader510 ] ; 2 uses
  %i.be = getelementptr [4 x i8], ptr %0, i64 %.125.i ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = xor i32 %i.bf, -1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !7
  %.1.i = add nuw i64 %.125.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %.1.i, %1
  br i1 %exitcond31.not.i, label %bary_2comp.exit, label %.lr.ph26.i, !llvm.loop !195

bb.t:                                             ; preds = %bb.p
  %i.bh = getelementptr i8, ptr %2, i64 %i.aj
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15
  %.not170 = icmp sgt i8 %i.bj, -1
  %i.bk = getelementptr i8, ptr %0, i64 %i.aj     ; 2 uses
  %i.bl = sub i64 %i.ak, %i.aj                    ; 2 uses
  br i1 %.not170, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bk, i8 noundef -1, i64 noundef %i.bl, i1 noundef false) #23
  tail call fastcc void @bary_2comp(ptr noundef %0, i64 noundef %1)
  br label %bary_2comp.exit

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bk, i8 noundef 0, i64 noundef %i.bl, i1 noundef false) #23
  br label %bary_2comp.exit

bb.w:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.bm = getelementptr i8, ptr %0, i64 %i.aj
  %i.bn = sub i64 %i.ak, %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bm, i8 noundef 0, i64 noundef %i.bn, i1 noundef false) #23
  %i.bo = and i32 %6, 512
  %.not168 = icmp eq i32 %i.bo, 0
  %i.bp = select i1 %.not168, i32 1, i32 -1
  br label %bary_2comp.exit

bb.x:                                             ; preds = %.thread
  %i.bq = and i64 %4, 3
  %i.br = or i64 %5, %i.bq
  %or.cond193 = icmp eq i64 %i.br, 0
  br i1 %or.cond193, label %bb.y, label %bb.al

bb.y:                                             ; preds = %bb.x
  %i.bs = lshr exact i64 %4, 2
  %i.bt = and i32 %6, 1
  %.not157 = icmp eq i32 %i.bt, 0
  %i.bu = and i32 %6, 64
  %.not158 = icmp eq i32 %i.bu, 0
  %i.bv = lshr i32 %6, 4
  %.lobit = and i32 %i.bv, 1
  %i.bw = select i1 %.not158, i32 %.lobit, i32 0  ; 3 uses
  %i.bx = mul i64 %i.bs, %3                       ; 4 uses
  %i.by = icmp ugt i64 %i.bx, 4611686018427387903
  br i1 %i.by, label %bb.z, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.z:                                             ; preds = %bb.y
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.bx) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.y
  %.not.i211 = icmp eq i64 %i.bx, 0
  br i1 %.not.i211, label %ruby_nonempty_memcpy.exit213, label %bb.aa

bb.aa:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  %i.bz = shl nuw i64 %i.bx, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull readonly align 1 %2, i64 noundef range(i64 1, 0) %i.bz, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit213

ruby_nonempty_memcpy.exit213:                     ; preds = %rbimpl_size_mul_or_raise.exit, %bb.aa
  br i1 %.not157, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %ruby_nonempty_memcpy.exit213
  %.01112.i = getelementptr i8, ptr %i.a, i64 -4  ; 2 uses
  %i.ca = icmp ult ptr %0, %.01112.i
  br i1 %i.ca, label %.lr.ph.i214, label %bary_swap.exit

.lr.ph.i214:                                      ; preds = %bb.ab, %.lr.ph.i214
  %.01114.i = phi ptr [ %.011.i, %.lr.ph.i214 ], [ %.01112.i, %bb.ab ] ; 3 uses
  %.013.i = phi ptr [ %i.cd, %.lr.ph.i214 ], [ %0, %bb.ab ] ; 3 uses
  %i.cb = load i32, ptr %.013.i, align 4, !tbaa !7
  %i.cc = load i32, ptr %.01114.i, align 4, !tbaa !7
  store i32 %i.cc, ptr %.013.i, align 4, !tbaa !7
  store i32 %i.cb, ptr %.01114.i, align 4, !tbaa !7
  %i.cd = getelementptr i8, ptr %.013.i, i64 4    ; 2 uses
  %.011.i = getelementptr i8, ptr %.01114.i, i64 -4 ; 2 uses
  %i.ce = icmp ult ptr %i.cd, %.011.i
  br i1 %i.ce, label %.lr.ph.i214, label %bary_swap.exit, !llvm.loop !187

bary_swap.exit:                                   ; preds = %.lr.ph.i214, %bb.ab
  %cond194 = icmp eq i32 %i.bw, 0
  br i1 %cond194, label %bb.ac, label %bb.ad

.critedge:                                        ; preds = %ruby_nonempty_memcpy.exit213
  %cond195 = icmp eq i32 %i.bw, 0
  br i1 %cond195, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.critedge, %bary_swap.exit
  %.not372 = icmp eq i64 %3, 0
  br i1 %.not372, label %._crit_edge363, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %bb.ac
  %xtraiter536 = and i64 %3, 1
  %i.cf = icmp eq i64 %3, 1
  br i1 %i.cf, label %.lr.ph362.epil.preheader, label %.lr.ph362.preheader.new

.lr.ph362.preheader.new:                          ; preds = %.lr.ph362.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph362

.lr.ph362:                                        ; preds = %bary_swap.exit220.1, %.lr.ph362.preheader.new
  %.0145360 = phi ptr [ %0, %.lr.ph362.preheader.new ], [ %i.cm, %bary_swap.exit220.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph362.preheader.new ], [ %niter.next.1, %bary_swap.exit220.1 ]
  %i.cg = getelementptr i8, ptr %.0145360, i64 %4 ; 4 uses
  %.01112.i215 = getelementptr i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.ch = icmp ult ptr %.0145360, %.01112.i215
  br i1 %i.ch, label %.lr.ph.i216, label %bary_swap.exit220

.lr.ph.i216:                                      ; preds = %.lr.ph362, %.lr.ph.i216
  %.01114.i217 = phi ptr [ %.011.i219, %.lr.ph.i216 ], [ %.01112.i215, %.lr.ph362 ] ; 3 uses
  %.013.i218 = phi ptr [ %i.ck, %.lr.ph.i216 ], [ %.0145360, %.lr.ph362 ] ; 3 uses
  %i.ci = load i32, ptr %.013.i218, align 4, !tbaa !7
  %i.cj = load i32, ptr %.01114.i217, align 4, !tbaa !7
  store i32 %i.cj, ptr %.013.i218, align 4, !tbaa !7
  store i32 %i.ci, ptr %.01114.i217, align 4, !tbaa !7
  %i.ck = getelementptr i8, ptr %.013.i218, i64 4 ; 2 uses
  %.011.i219 = getelementptr i8, ptr %.01114.i217, i64 -4 ; 2 uses
  %i.cl = icmp ult ptr %i.ck, %.011.i219
  br i1 %i.cl, label %.lr.ph.i216, label %bary_swap.exit220, !llvm.loop !187

bary_swap.exit220:                                ; preds = %.lr.ph.i216, %.lr.ph362
  %i.cm = getelementptr i8, ptr %i.cg, i64 %4     ; 3 uses
  %.01112.i215.1 = getelementptr i8, ptr %i.cm, i64 -4 ; 2 uses
  %i.cn = icmp ult ptr %i.cg, %.01112.i215.1
  br i1 %i.cn, label %.lr.ph.i216.1, label %bary_swap.exit220.1

.lr.ph.i216.1:                                    ; preds = %bary_swap.exit220, %.lr.ph.i216.1
  %.01114.i217.1 = phi ptr [ %.011.i219.1, %.lr.ph.i216.1 ], [ %.01112.i215.1, %bary_swap.exit220 ] ; 3 uses
  %.013.i218.1 = phi ptr [ %i.cq, %.lr.ph.i216.1 ], [ %i.cg, %bary_swap.exit220 ] ; 3 uses
  %i.co = load i32, ptr %.013.i218.1, align 4, !tbaa !7
  %i.cp = load i32, ptr %.01114.i217.1, align 4, !tbaa !7
  store i32 %i.cp, ptr %.013.i218.1, align 4, !tbaa !7
  store i32 %i.co, ptr %.01114.i217.1, align 4, !tbaa !7
  %i.cq = getelementptr i8, ptr %.013.i218.1, i64 4 ; 2 uses
  %.011.i219.1 = getelementptr i8, ptr %.01114.i217.1, i64 -4 ; 2 uses
  %i.cr = icmp ult ptr %i.cq, %.011.i219.1
  br i1 %i.cr, label %.lr.ph.i216.1, label %bary_swap.exit220.1, !llvm.loop !187

bary_swap.exit220.1:                              ; preds = %.lr.ph.i216.1, %bary_swap.exit220
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge363.loopexit.unr-lcssa, label %.lr.ph362, !llvm.loop !196

._crit_edge363.loopexit.unr-lcssa:                ; preds = %bary_swap.exit220.1
  %lcmp.mod537.not = icmp eq i64 %xtraiter536, 0
  br i1 %lcmp.mod537.not, label %._crit_edge363, label %.lr.ph362.epil.preheader

.lr.ph362.epil.preheader:                         ; preds = %._crit_edge363.loopexit.unr-lcssa, %.lr.ph362.preheader
  %.0145360.epil.init = phi ptr [ %0, %.lr.ph362.preheader ], [ %i.cm, %._crit_edge363.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod538 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod538)
  %i.cs = getelementptr i8, ptr %.0145360.epil.init, i64 %4
  %.01112.i215.epil = getelementptr i8, ptr %i.cs, i64 -4 ; 2 uses
  %i.ct = icmp ult ptr %.0145360.epil.init, %.01112.i215.epil
  br i1 %i.ct, label %.lr.ph.i216.epil, label %._crit_edge363

.lr.ph.i216.epil:                                 ; preds = %.lr.ph362.epil.preheader, %.lr.ph.i216.epil
  %.01114.i217.epil = phi ptr [ %.011.i219.epil, %.lr.ph.i216.epil ], [ %.01112.i215.epil, %.lr.ph362.epil.preheader ] ; 3 uses
  %.013.i218.epil = phi ptr [ %i.cw, %.lr.ph.i216.epil ], [ %.0145360.epil.init, %.lr.ph362.epil.preheader ] ; 3 uses
  %i.cu = load i32, ptr %.013.i218.epil, align 4, !tbaa !7
  %i.cv = load i32, ptr %.01114.i217.epil, align 4, !tbaa !7
  store i32 %i.cv, ptr %.013.i218.epil, align 4, !tbaa !7
  store i32 %i.cu, ptr %.01114.i217.epil, align 4, !tbaa !7
  %i.cw = getelementptr i8, ptr %.013.i218.epil, i64 4 ; 2 uses
  %.011.i219.epil = getelementptr i8, ptr %.01114.i217.epil, i64 -4 ; 2 uses
  %i.cx = icmp ult ptr %i.cw, %.011.i219.epil
  br i1 %i.cx, label %.lr.ph.i216.epil, label %._crit_edge363, !llvm.loop !187

._crit_edge363:                                   ; preds = %._crit_edge363.loopexit.unr-lcssa, %.lr.ph.i216.epil, %.lr.ph362.epil.preheader, %bb.ac
  %.not161 = icmp ne i32 %i.bw, 0
  %i.cy = icmp ult ptr %0, %i.a
  %or.cond370 = and i1 %.not161, %i.cy
  br i1 %or.cond370, label %.lr.ph366.preheader, label %.loopexit

bb.ad:                                            ; preds = %bary_swap.exit
  %.old369 = icmp ult ptr %0, %i.a
  br i1 %.old369, label %.lr.ph366.preheader, label %.loopexit

.lr.ph366.preheader:                              ; preds = %bb.ad, %._crit_edge363
  %9 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %i.cz = shl i64 %1, 2
  %i.da = add i64 %i.cz, %9
  %i.db = add i64 %9, 4
  %i.dc = tail call i64 @llvm.umax.i64(i64 %i.da, i64 %i.db)
  %i.dd = xor i64 %9, -1
  %i.de = add i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = lshr i64 %i.de, 2
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check472 = icmp ult i64 %i.de, 28
  br i1 %min.iters.check472, label %.lr.ph366.preheader520, label %vector.ph473

vector.ph473:                                     ; preds = %.lr.ph366.preheader
  %n.vec475 = and i64 %i.dg, 9223372036854775800  ; 3 uses
  %i.dh = shl i64 %n.vec475, 2
  %i.di = getelementptr i8, ptr %0, i64 %i.dh
  br label %vector.body476

vector.body476:                                   ; preds = %vector.body476, %vector.ph473
  %index477 = phi i64 [ 0, %vector.ph473 ], [ %index.next480, %vector.body476 ] ; 2 uses
  %i.dj = shl i64 %index477, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.dj ; 3 uses
  %i.dk = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load478 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load479 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !7
  %i.dl = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load478)
  %i.dm = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load479)
  store <4 x i32> %i.dl, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %i.dm, ptr %i.dk, align 4, !tbaa !7
  %index.next480 = add nuw i64 %index477, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next480, %n.vec475
  br i1 %i.dn, label %middle.block481, label %vector.body476, !llvm.loop !197

middle.block481:                                  ; preds = %vector.body476
  %cmp.n482 = icmp eq i64 %i.dg, %n.vec475
  br i1 %cmp.n482, label %.loopexit, label %.lr.ph366.preheader520

.lr.ph366.preheader520:                           ; preds = %.lr.ph366.preheader, %middle.block481
  %.0144364.ph = phi ptr [ %0, %.lr.ph366.preheader ], [ %i.di, %middle.block481 ]
  br label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph366.preheader520, %.lr.ph366
  %.0144364 = phi ptr [ %i.dq, %.lr.ph366 ], [ %.0144364.ph, %.lr.ph366.preheader520 ] ; 3 uses
  %i.do = load i32, ptr %.0144364, align 4, !tbaa !7
  %i.dp = tail call noundef i32 @llvm.bswap.i32(i32 %i.do)
  store i32 %i.dp, ptr %.0144364, align 4, !tbaa !7
  %i.dq = getelementptr i8, ptr %.0144364, i64 4  ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.a
  br i1 %i.dr, label %.lr.ph366, label %.loopexit, !llvm.loop !198

.loopexit:                                        ; preds = %.lr.ph366, %middle.block481, %bb.ad, %.critedge, %._crit_edge363
  %i.ds = and i32 %6, 128
  %.not162 = icmp eq i32 %i.ds, 0
  %i.dt = and i32 %6, 512
  %.not163 = icmp eq i32 %i.dt, 0                 ; 2 uses
  br i1 %.not162, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %.loopexit
  br i1 %.not163, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not27.i221 = icmp eq i64 %1, 0
  br i1 %.not27.i221, label %bary_2comp.exit, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.af, %bb.ag
  %.023.i223 = phi i64 [ %i.dw, %bb.ag ], [ 0, %bb.af ] ; 5 uses
  %i.du = getelementptr [4 x i8], ptr %0, i64 %.023.i223
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7  ; 2 uses
  %.not.i224 = icmp eq i32 %i.dv, 0
  br i1 %.not.i224, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i222
  %i.dw = add nuw i64 %.023.i223, 1               ; 2 uses
  %exitcond.not.i231 = icmp eq i64 %i.dw, %1
  br i1 %exitcond.not.i231, label %bary_2comp.exit, label %.lr.ph.i222, !llvm.loop !55

bb.ah:                                            ; preds = %.lr.ph.i222
  %i.dx = getelementptr [4 x i8], ptr %0, i64 %.023.i223
  %i.dy = sub i32 0, %i.dv
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !7
  %.124.i225 = add i64 %.023.i223, 1              ; 4 uses
  %i.dz = icmp ult i64 %.124.i225, %1
  br i1 %i.dz, label %.lr.ph26.i227.preheader, label %bary_2comp.exit

.lr.ph26.i227.preheader:                          ; preds = %bb.ah
  %i.ea = xor i64 %.023.i223, -1
  %i.eb = add i64 %1, %i.ea                       ; 3 uses
  %min.iters.check485 = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check485, label %.lr.ph26.i227.preheader514, label %vector.ph486

vector.ph486:                                     ; preds = %.lr.ph26.i227.preheader
  %n.vec488 = and i64 %i.eb, -8                   ; 3 uses
  %i.ec = add i64 %.124.i225, %n.vec488
  %i.ed = getelementptr [4 x i8], ptr %0, i64 %.124.i225
  br label %vector.body489

vector.body489:                                   ; preds = %vector.body489, %vector.ph486
  %index490 = phi i64 [ 0, %vector.ph486 ], [ %index.next493, %vector.body489 ] ; 2 uses
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %index490 ; 3 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 16     ; 2 uses
  %wide.load491 = load <4 x i32>, ptr %i.ee, align 4, !tbaa !7
  %wide.load492 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !7
  %i.eg = xor <4 x i32> %wide.load491, splat (i32 -1)
  %i.eh = xor <4 x i32> %wide.load492, splat (i32 -1)
  store <4 x i32> %i.eg, ptr %i.ee, align 4, !tbaa !7
  store <4 x i32> %i.eh, ptr %i.ef, align 4, !tbaa !7
  %index.next493 = add nuw i64 %index490, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next493, %n.vec488
  br i1 %i.ei, label %middle.block494, label %vector.body489, !llvm.loop !199

middle.block494:                                  ; preds = %vector.body489
  %cmp.n495 = icmp eq i64 %i.eb, %n.vec488
  br i1 %cmp.n495, label %bary_2comp.exit, label %.lr.ph26.i227.preheader514

.lr.ph26.i227.preheader514:                       ; preds = %.lr.ph26.i227.preheader, %middle.block494
  %.125.i228.ph = phi i64 [ %.124.i225, %.lr.ph26.i227.preheader ], [ %i.ec, %middle.block494 ]
  br label %.lr.ph26.i227

.lr.ph26.i227:                                    ; preds = %.lr.ph26.i227.preheader514, %.lr.ph26.i227
  %.125.i228 = phi i64 [ %.1.i229, %.lr.ph26.i227 ], [ %.125.i228.ph, %.lr.ph26.i227.preheader514 ] ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %0, i64 %.125.i228 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7
  %i.el = xor i32 %i.ek, -1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !7
  %.1.i229 = add nuw i64 %.125.i228, 1            ; 2 uses
  %exitcond31.not.i230 = icmp eq i64 %.1.i229, %1
  br i1 %exitcond31.not.i230, label %bary_2comp.exit, label %.lr.ph26.i227, !llvm.loop !200

bb.ai:                                            ; preds = %bb.ae
  %i.em = getelementptr i8, ptr %i.a, i64 -4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7
  %.not165 = icmp sgt i32 %i.en, -1
  br i1 %.not165, label %bary_2comp.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @bary_2comp(ptr noundef nonnull %0, i64 noundef %1)
  br label %bary_2comp.exit

bb.ak:                                            ; preds = %.loopexit
  %i.eo = select i1 %.not163, i32 1, i32 -1
  br label %bary_2comp.exit

bb.al:                                            ; preds = %bb.x, %bb.a
  %.not315 = icmp eq i64 %1, 0                    ; 4 uses
  br i1 %.not315, label %.loopexit326, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ep = and i32 %6, 3
  %i.eq = icmp eq i32 %i.ep, 1                    ; 3 uses
  %i.er = add i64 %3, -1
  %i.es = mul i64 %4, %i.er                       ; 2 uses
  %i.et = sub i64 0, %4
  %.035.i = select i1 %i.eq, i64 %i.es, i64 0
  %.034.i = select i1 %i.eq, i64 %i.et, i64 %4
  %.033.i = select i1 %i.eq, i64 0, i64 %i.es
  %i.eu = trunc i64 %5 to i32
  %i.ev = and i32 %i.eu, 7                        ; 3 uses
  %i.ew = icmp ne i32 %i.ev, 0                    ; 3 uses
  %i.ex = lshr i64 %5, 3
  %i.ey = sub i64 %4, %i.ex
  %i.ez = sext i1 %i.ew to i64
  %spec.select.i = add i64 %i.ey, %i.ez           ; 2 uses
  %i.fa = and i32 %6, 112
  %i.fb = icmp eq i32 %i.fa, 16                   ; 2 uses
  %i.fc = add i64 %4, -1
  %.032.i = select i1 %i.fb, i64 %i.fc, i64 0
  %.0.i233 = select i1 %i.fb, i64 -1, i64 1
  %i.fd = getelementptr i8, ptr %2, i64 %.035.i
  %i.fe = getelementptr i8, ptr %2, i64 %.033.i
  %.not371 = icmp eq i64 %spec.select.i, 0
  %i.ff = lshr i32 255, %i.ev
  %i.fg = select i1 %i.ew, i32 %i.ff, i32 0
  %invariant.op = sub i32 8, %i.ev
  br label %bb.an

bb.an:                                            ; preds = %integer_unpack_push_bits.exit238, %bb.am
  %.0291 = phi ptr [ %0, %bb.am ], [ %.2293, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0286 = phi i64 [ 0, %bb.am ], [ %.2288, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0283 = phi i32 [ 0, %bb.am ], [ %.2285, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0138 = phi ptr [ %i.fd, %bb.am ], [ %i.hg, %integer_unpack_push_bits.exit238 ] ; 3 uses
  %i.fh = getelementptr i8, ptr %.0138, i64 %.032.i ; 2 uses
  br i1 %.not371, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an, %integer_unpack_push_bits.exit
  %.0351 = phi ptr [ %i.go, %integer_unpack_push_bits.exit ], [ %i.fh, %bb.an ] ; 2 uses
  %.0136350 = phi i64 [ %i.gp, %integer_unpack_push_bits.exit ], [ 0, %bb.an ]
  %.1284349 = phi i32 [ %.4, %integer_unpack_push_bits.exit ], [ %.0283, %bb.an ] ; 3 uses
  %.1287348 = phi i64 [ %.3289, %integer_unpack_push_bits.exit ], [ %.0286, %bb.an ]
  %.1292347 = phi ptr [ %.5296, %integer_unpack_push_bits.exit ], [ %.0291, %bb.an ] ; 3 uses
  %i.fi = load i8, ptr %.0351, align 1, !tbaa !15
  %i.fj = zext i8 %i.fi to i64
  %i.fk = zext nneg i32 %.1284349 to i64
  %i.fl = shl i64 %i.fj, %i.fk
  %i.fm = or i64 %i.fl, %.1287348                 ; 3 uses
  %i.fn = add i32 %.1284349, 8                    ; 4 uses
  %i.fo = icmp sgt i32 %i.fn, 31
  br i1 %i.fo, label %.lr.ph.i234.preheader, label %integer_unpack_push_bits.exit

.lr.ph.i234.preheader:                            ; preds = %.lr.ph
  %i.fp = add nsw i32 %.1284349, -24              ; 2 uses
  %i.fq = lshr i32 %i.fp, 5
  %i.fr = add nuw nsw i32 %i.fq, 1
  %xtraiter = and i32 %i.fr, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol

.lr.ph.i234.prol:                                 ; preds = %.lr.ph.i234.preheader, %.lr.ph.i234.prol
  %.3.prol = phi i32 [ %i.fx, %.lr.ph.i234.prol ], [ %i.fn, %.lr.ph.i234.preheader ]
  %i.fs = phi ptr [ %i.fv, %.lr.ph.i234.prol ], [ %.1292347, %.lr.ph.i234.preheader ] ; 2 uses
  %i.ft = phi i64 [ %i.fw, %.lr.ph.i234.prol ], [ %i.fm, %.lr.ph.i234.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i234.prol ], [ 0, %.lr.ph.i234.preheader ]
  %i.fu = trunc i64 %i.ft to i32
  %i.fv = getelementptr i8, ptr %i.fs, i64 4      ; 3 uses
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !7
  %i.fw = lshr i64 %i.ft, 32                      ; 3 uses
  %i.fx = add nsw i32 %.3.prol, -32               ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol, !llvm.loop !201

.lr.ph.i234.prol.loopexit:                        ; preds = %.lr.ph.i234.prol, %.lr.ph.i234.preheader
  %.3.unr = phi i32 [ %i.fn, %.lr.ph.i234.preheader ], [ %i.fx, %.lr.ph.i234.prol ]
  %.unr = phi ptr [ %.1292347, %.lr.ph.i234.preheader ], [ %i.fv, %.lr.ph.i234.prol ]
  %.unr535 = phi i64 [ %i.fm, %.lr.ph.i234.preheader ], [ %i.fw, %.lr.ph.i234.prol ]
  %.lcssa530.unr = phi ptr [ poison, %.lr.ph.i234.preheader ], [ %i.fv, %.lr.ph.i234.prol ]
  %.lcssa529.unr = phi i64 [ poison, %.lr.ph.i234.preheader ], [ %i.fw, %.lr.ph.i234.prol ]
  %.lcssa528.unr = phi i32 [ poison, %.lr.ph.i234.preheader ], [ %i.fx, %.lr.ph.i234.prol ]
  %i.fy = icmp ult i32 %i.fp, 224
  br i1 %i.fy, label %integer_unpack_push_bits.exit, label %.lr.ph.i234

.lr.ph.i234:                                      ; preds = %.lr.ph.i234.prol.loopexit, %.lr.ph.i234
  %.3 = phi i32 [ %i.gm, %.lr.ph.i234 ], [ %.3.unr, %.lr.ph.i234.prol.loopexit ] ; 2 uses
  %i.fz = phi ptr [ %i.gl, %.lr.ph.i234 ], [ %.unr, %.lr.ph.i234.prol.loopexit ] ; 9 uses
  %i.ga = phi i64 [ 0, %.lr.ph.i234 ], [ %.unr535, %.lr.ph.i234.prol.loopexit ] ; 2 uses
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = getelementptr i8, ptr %i.fz, i64 4
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !7
  %i.gd = lshr i64 %i.ga, 32
  %i.ge = trunc nuw i64 %i.gd to i32
  %i.gf = getelementptr i8, ptr %i.fz, i64 8
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !7
  %i.gg = getelementptr i8, ptr %i.fz, i64 12
  store i32 0, ptr %i.gf, align 4, !tbaa !7
  %i.gh = getelementptr i8, ptr %i.fz, i64 16
  store i32 0, ptr %i.gg, align 4, !tbaa !7
  %i.gi = getelementptr i8, ptr %i.fz, i64 20
  store i32 0, ptr %i.gh, align 4, !tbaa !7
  %i.gj = getelementptr i8, ptr %i.fz, i64 24
  store i32 0, ptr %i.gi, align 4, !tbaa !7
  %i.gk = getelementptr i8, ptr %i.fz, i64 28
  store i32 0, ptr %i.gj, align 4, !tbaa !7
  %i.gl = getelementptr i8, ptr %i.fz, i64 32     ; 2 uses
  store i32 0, ptr %i.gk, align 4, !tbaa !7
  %i.gm = add nsw i32 %.3, -256                   ; 2 uses
  %i.gn = icmp sgt i32 %.3, 287
  br i1 %i.gn, label %.lr.ph.i234, label %integer_unpack_push_bits.exit, !llvm.loop !202

integer_unpack_push_bits.exit:                    ; preds = %.lr.ph.i234.prol.loopexit, %.lr.ph.i234, %.lr.ph
  %.5296 = phi ptr [ %.1292347, %.lr.ph ], [ %.lcssa530.unr, %.lr.ph.i234.prol.loopexit ], [ %i.gl, %.lr.ph.i234 ] ; 2 uses
  %.3289 = phi i64 [ %i.fm, %.lr.ph ], [ %.lcssa529.unr, %.lr.ph.i234.prol.loopexit ], [ 0, %.lr.ph.i234 ] ; 2 uses
  %.4 = phi i32 [ %i.fn, %.lr.ph ], [ %.lcssa528.unr, %.lr.ph.i234.prol.loopexit ], [ %i.gm, %.lr.ph.i234 ] ; 2 uses
  %i.go = getelementptr i8, ptr %.0351, i64 %.0.i233 ; 2 uses
  %i.gp = add nuw i64 %.0136350, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gp, %spec.select.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !203

._crit_edge:                                      ; preds = %integer_unpack_push_bits.exit, %bb.an
  %.1292.lcssa = phi ptr [ %.0291, %bb.an ], [ %.5296, %integer_unpack_push_bits.exit ] ; 3 uses
  %.1287.lcssa = phi i64 [ %.0286, %bb.an ], [ %.3289, %integer_unpack_push_bits.exit ] ; 2 uses
  %.1284.lcssa = phi i32 [ %.0283, %bb.an ], [ %.4, %integer_unpack_push_bits.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.fh, %bb.an ], [ %i.go, %integer_unpack_push_bits.exit ]
  br i1 %i.ew, label %bb.ao, label %integer_unpack_push_bits.exit238

bb.ao:                                            ; preds = %._crit_edge
  %i.gq = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.gr = zext i8 %i.gq to i32
  %i.gs = and i32 %i.fg, %i.gr
  %i.gt = zext nneg i32 %i.gs to i64
  %i.gu = zext nneg i32 %.1284.lcssa to i64
  %i.gv = shl i64 %i.gt, %i.gu
  %i.gw = or i64 %i.gv, %.1287.lcssa              ; 2 uses
  %.reass = add i32 %.1284.lcssa, %invariant.op   ; 3 uses
  %i.gx = icmp sgt i32 %.reass, 31
  br i1 %i.gx, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238

.lr.ph.i235:                                      ; preds = %bb.ao, %.lr.ph.i235
  %.5 = phi i32 [ %i.hd, %.lr.ph.i235 ], [ %.reass, %bb.ao ] ; 2 uses
  %i.gy = phi ptr [ %i.hb, %.lr.ph.i235 ], [ %.1292.lcssa, %bb.ao ] ; 2 uses
  %i.gz = phi i64 [ %i.hc, %.lr.ph.i235 ], [ %i.gw, %bb.ao ] ; 2 uses
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = getelementptr i8, ptr %i.gy, i64 4      ; 2 uses
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !7
  %i.hc = lshr i64 %i.gz, 32                      ; 2 uses
  %i.hd = add nsw i32 %.5, -32                    ; 2 uses
  %i.he = icmp samesign ugt i32 %.5, 63
  br i1 %i.he, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238, !llvm.loop !202

integer_unpack_push_bits.exit238:                 ; preds = %.lr.ph.i235, %bb.ao, %._crit_edge
  %.2293 = phi ptr [ %.1292.lcssa, %._crit_edge ], [ %.1292.lcssa, %bb.ao ], [ %i.hb, %.lr.ph.i235 ] ; 4 uses
  %.2288 = phi i64 [ %.1287.lcssa, %._crit_edge ], [ %i.gw, %bb.ao ], [ %i.hc, %.lr.ph.i235 ] ; 3 uses
  %.2285 = phi i32 [ %.1284.lcssa, %._crit_edge ], [ %.reass, %bb.ao ], [ %i.hd, %.lr.ph.i235 ]
  %i.hf = icmp eq ptr %.0138, %i.fe
  %i.hg = getelementptr i8, ptr %.0138, i64 %.034.i
  br i1 %i.hf, label %bb.ap, label %bb.an

bb.ap:                                            ; preds = %integer_unpack_push_bits.exit238
  %.not173 = icmp eq i64 %.2288, 0
  br i1 %.not173, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hh = trunc i64 %.2288 to i32
  %i.hi = getelementptr i8, ptr %.2293, i64 4
  store i32 %i.hh, ptr %.2293, align 4, !tbaa !7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.3294 = phi ptr [ %.2293, %bb.ap ], [ %i.hi, %bb.aq ] ; 3 uses
  %i.hj = icmp ult ptr %.3294, %i.a
  br i1 %i.hj, label %.lr.ph357.preheader, label %.loopexit326

.lr.ph357.preheader:                              ; preds = %bb.ar
  %.3294394 = ptrtoaddr ptr %.3294 to i64         ; 2 uses
  %i.hk = shl i64 %1, 2
  %i.hl = add i64 %i.hk, %8
  %i.hm = add i64 %.3294394, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.hl, i64 %i.hm)
  %i.hn = xor i64 %.3294394, -1
  %i.ho = add i64 %umax, %i.hn
  %i.hp = and i64 %i.ho, -4
  %i.hq = add i64 %i.hp, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.3294, i8 0, i64 %i.hq, i1 false), !tbaa !7
  br label %.loopexit326

.loopexit326:                                     ; preds = %.lr.ph357.preheader, %bb.ar, %bb.al
  %i.hr = and i32 %6, 128
  %.not174 = icmp eq i32 %i.hr, 0
  br i1 %.not174, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.loopexit326
  %i.hs = and i32 %6, 512
  %.not175 = icmp eq i32 %i.hs, 0
  %i.ht = select i1 %.not175, i32 1, i32 -1
  br label %bary_2comp.exit

bb.at:                                            ; preds = %.loopexit326
  %.not176 = icmp eq i32 %7, 0
  %i.hu = and i32 %6, 512
  %.not177 = icmp eq i32 %i.hu, 0                 ; 2 uses
  br i1 %.not176, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hv = getelementptr i8, ptr %i.a, i64 -4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !7  ; 2 uses
  br i1 %.not177, label %bb.av, label %._crit_edge396

bb.av:                                            ; preds = %bb.au
  %i.hx = sub i32 31, %7
  %i.hy = lshr i32 %i.hw, %i.hx
  %.not181 = icmp eq i32 %i.hy, 0
  br i1 %.not181, label %bary_2comp.exit, label %._crit_edge396

._crit_edge396:                                   ; preds = %bb.au, %bb.av
  %i.hz = sub i32 32, %7
  %i.ia = shl nsw i32 -1, %i.hz
  %i.ib = getelementptr i8, ptr %i.a, i64 -4
  %i.ic = or i32 %i.hw, %i.ia
  store i32 %i.ic, ptr %i.ib, align 4, !tbaa !7
  br label %bary_zero_p.exit

bb.aw:                                            ; preds = %bb.at
  br i1 %.not177, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not315, label %bary_2comp.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ax, %bb.ay
  %.0.i239 = phi i64 [ %i.id, %bb.ay ], [ %1, %bb.ax ]
  %i.id = add i64 %.0.i239, -1                    ; 3 uses
  %i.ie = getelementptr [4 x i8], ptr %0, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !7
  %.not.i240 = icmp eq i32 %i.if, 0
  br i1 %.not.i240, label %bb.ay, label %bary_zero_p.exit

bb.ay:                                            ; preds = %.preheader.i
  %.not7.i = icmp eq i64 %i.id, 0
  br i1 %.not7.i, label %bary_2comp.exit, label %.preheader.i, !llvm.loop !158

bb.az:                                            ; preds = %bb.aw
  br i1 %.not315, label %bary_2comp.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ig = getelementptr i8, ptr %i.a, i64 -4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !7
  %.not178 = icmp sgt i32 %i.ih, -1
  br i1 %.not178, label %bary_2comp.exit, label %.lr.ph.i242.preheader

bary_zero_p.exit:                                 ; preds = %.preheader.i, %._crit_edge396
  br i1 %.not315, label %bary_2comp.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %bary_zero_p.exit, %bb.ba
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph.i242.preheader, %bb.bb
  %.023.i243 = phi i64 [ %i.ik, %bb.bb ], [ 0, %.lr.ph.i242.preheader ] ; 5 uses
  %i.ii = getelementptr [4 x i8], ptr %0, i64 %.023.i243
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !7  ; 2 uses
  %.not.i244 = icmp eq i32 %i.ij, 0
  br i1 %.not.i244, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i242
  %i.ik = add nuw i64 %.023.i243, 1               ; 2 uses
  %exitcond.not.i251 = icmp eq i64 %i.ik, %1
  br i1 %exitcond.not.i251, label %bary_2comp.exit, label %.lr.ph.i242, !llvm.loop !55

bb.bc:                                            ; preds = %.lr.ph.i242
  %i.il = getelementptr [4 x i8], ptr %0, i64 %.023.i243
  %i.im = sub i32 0, %i.ij
  store i32 %i.im, ptr %i.il, align 4, !tbaa !7
  %.124.i245 = add i64 %.023.i243, 1              ; 4 uses
  %i.in = icmp ult i64 %.124.i245, %1
  br i1 %i.in, label %.lr.ph26.i247.preheader, label %bary_2comp.exit

.lr.ph26.i247.preheader:                          ; preds = %bb.bc
  %i.io = xor i64 %.023.i243, -1
  %i.ip = add i64 %1, %i.io                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ip, 8
  br i1 %min.iters.check, label %.lr.ph26.i247.preheader521, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i247.preheader
  %n.vec = and i64 %i.ip, -8                      ; 3 uses
  %i.iq = add i64 %.124.i245, %n.vec
  %i.ir = getelementptr [4 x i8], ptr %0, i64 %.124.i245
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.is = getelementptr [4 x i8], ptr %i.ir, i64 %index ; 3 uses
  %i.it = getelementptr i8, ptr %i.is, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.is, align 4, !tbaa !7
  %wide.load470 = load <4 x i32>, ptr %i.it, align 4, !tbaa !7
  %i.iu = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.iv = xor <4 x i32> %wide.load470, splat (i32 -1)
  store <4 x i32> %i.iu, ptr %i.is, align 4, !tbaa !7
  store <4 x i32> %i.iv, ptr %i.it, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iw = icmp eq i64 %index.next, %n.vec
  br i1 %i.iw, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ip, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit, label %.lr.ph26.i247.preheader521

.lr.ph26.i247.preheader521:                       ; preds = %.lr.ph26.i247.preheader, %middle.block
  %.125.i248.ph = phi i64 [ %.124.i245, %.lr.ph26.i247.preheader ], [ %i.iq, %middle.block ]
  br label %.lr.ph26.i247

.lr.ph26.i247:                                    ; preds = %.lr.ph26.i247.preheader521, %.lr.ph26.i247
  %.125.i248 = phi i64 [ %.1.i249, %.lr.ph26.i247 ], [ %.125.i248.ph, %.lr.ph26.i247.preheader521 ] ; 2 uses
  %i.ix = getelementptr [4 x i8], ptr %0, i64 %.125.i248 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !7
  %i.iz = xor i32 %i.iy, -1
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !7
  %.1.i249 = add nuw i64 %.125.i248, 1            ; 2 uses
  %exitcond31.not.i250 = icmp eq i64 %.1.i249, %1
  br i1 %exitcond31.not.i250, label %bary_2comp.exit, label %.lr.ph26.i247, !llvm.loop !205

bary_2comp.exit:                                  ; preds = %bb.ay, %bb.bb, %.lr.ph26.i247, %bb.ag, %.lr.ph26.i227, %bb.r, %.lr.ph26.i, %middle.block, %middle.block494, %middle.block507, %bb.ba, %bb.az, %bb.ax, %bb.av, %bb.bc, %bb.af, %bb.ah, %bb.q, %bb.s, %integer_unpack_single_bdigit.exit, %integer_unpack_single_bdigit.exit201, %integer_unpack_single_bdigit.exit207, %bb.as, %bary_zero_p.exit, %bb.ak, %bb.aj, %bb.ai, %bb.w, %bb.u, %bb.v
  %.1 = phi i32 [ 1, %bb.ai ], [ %i.ht, %bb.as ], [ %i.bp, %bb.w ], [ %.0.i205, %integer_unpack_single_bdigit.exit207 ], [ -1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.az ], [ -1, %bb.aj ], [ %i.eo, %bb.ak ], [ -1, %middle.block494 ], [ -1, %bary_zero_p.exit ], [ %spec.select317, %integer_unpack_single_bdigit.exit ], [ %spec.select319, %integer_unpack_single_bdigit.exit201 ], [ -2, %bb.ag ], [ -2, %bb.q ], [ -1, %bb.s ], [ -1, %bb.bb ], [ -2, %bb.af ], [ -1, %bb.ah ], [ -1, %middle.block507 ], [ -2, %bb.r ], [ -1, %bb.bc ], [ -1, %middle.block ], [ 1, %bb.av ], [ -2, %bb.ax ], [ 1, %bb.ba ], [ -1, %.lr.ph26.i247 ], [ -1, %.lr.ph26.i ], [ -1, %.lr.ph26.i227 ], [ -2, %bb.ay ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_cstr_to_inum(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %. = select i1 %.not, ptr %i.a, ptr null
  %i.b = call i64 @rb_int_parse_cstr(ptr noundef nonnull %0, i64 noundef -1, ptr noundef %., ptr noundef null, i32 noundef %1, i32 noundef 7) ; 2 uses
  %i.c = icmp ne i64 %i.b, 4                      ; 2 uses
  %brmerge = or i1 %.not, %i.c
  br i1 %brmerge, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @rb_invalid_str(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %.mux = select i1 %i.c, i64 %i.b, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %.mux
}

; Function Attrs: noreturn
declare void @rb_invalid_str(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_int_parse_cstr(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.c = icmp ne ptr %2, null                     ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %str2big_scan_digits.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not197 = icmp eq i64 %1, 0
  %i.d = and i32 %5, 1
  %.not198 = icmp eq i32 %i.d, 0
  %or.cond216 = or i1 %.not197, %.not198
  br i1 %or.cond216, label %bb.g, label %.preheader289

.preheader289:                                    ; preds = %bb.b
  %i.e = load i8, ptr %0, align 1, !tbaa !15      ; 3 uses
  %i.f = sext i8 %i.e to i32
  %i.g = icmp ne i8 %i.e, 32
  %i.h = add nsw i32 %i.f, -14
  %i.i = icmp ult i32 %i.h, -5
  %narrow.i.not311 = select i1 %i.g, i1 %i.i, i1 false
end_hunk_1
begin_hunk_2_@rb_int_parse_cstr:bb.a
  %i.u = add i64 %.0252.lcssa, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %._crit_edge, %bb.b
  %.1253 = phi i64 [ %1, %bb.b ], [ %.0252.lcssa, %._crit_edge ], [ %i.s, %bb.d ], [ %i.u, %bb.f ] ; 28 uses
  %.not287 = phi i64 [ 8192, %bb.b ], [ 8192, %._crit_edge ], [ 8192, %bb.d ], [ 0, %bb.f ]
  %.not212 = phi i1 [ false, %bb.b ], [ false, %._crit_edge ], [ false, %bb.d ], [ true, %bb.f ]
  %.1165 = phi i32 [ 1, %bb.b ], [ 1, %._crit_edge ], [ 1, %bb.d ], [ 0, %bb.f ] ; 3 uses
  %.2 = phi ptr [ %0, %bb.b ], [ %.0157.lcssa, %._crit_edge ], [ %i.r, %bb.d ], [ %i.t, %bb.f ] ; 36 uses
  %i.v = icmp slt i32 %4, 1
  br i1 %i.v, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.w = load i8, ptr %.2, align 1, !tbaa !15
  %i.x = icmp eq i8 %i.w, 48
  %i.y = icmp sgt i64 %.1253, 1
  %or.cond7 = and i1 %i.x, %i.y
  br i1 %or.cond7, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %.2, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15
  switch i8 %i.aa, label %.thread [
    i8 120, label %bb.j
    i8 88, label %bb.j
    i8 98, label %bb.l
    i8 66, label %bb.l
    i8 111, label %bb.n
    i8 79, label %bb.n
    i8 100, label %bb.p
    i8 68, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %or.cond9 = icmp samesign ult i64 %.1253, 3
  br i1 %or.cond9, label %str2big_scan_digits.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %.2, i64 2
  %i.ac = add nsw i64 %.1253, -2
  br label %.thread

bb.l:                                             ; preds = %bb.i, %bb.i
  %or.cond11 = icmp samesign ult i64 %.1253, 3
  br i1 %or.cond11, label %str2big_scan_digits.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = getelementptr i8, ptr %.2, i64 2
  %i.ae = add nsw i64 %.1253, -2
  br label %.thread

bb.n:                                             ; preds = %bb.i, %bb.i
  %or.cond13 = icmp samesign ult i64 %.1253, 3
  br i1 %or.cond13, label %str2big_scan_digits.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr i8, ptr %.2, i64 2
  %i.ag = add nsw i64 %.1253, -2
  br label %.thread

bb.p:                                             ; preds = %bb.i, %bb.i
  %or.cond15 = icmp samesign ult i64 %.1253, 3
  br i1 %or.cond15, label %str2big_scan_digits.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = getelementptr i8, ptr %.2, i64 2
  %i.ai = add nsw i64 %.1253, -2
  br label %.thread

bb.r:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %4, -1
  %i.ak = sub i32 0, %4
  %spec.select222 = select i1 %i.aj, i32 %i.ak, i32 10
  br label %bb.ak

bb.s:                                             ; preds = %bb.g
  %i.al = icmp eq i64 %.1253, 1
  %i.am = and i32 %5, 4
  %.not200 = icmp eq i32 %i.am, 0
  %or.cond217 = or i1 %.not200, %i.al
  br i1 %or.cond217, label %bb.ak, label %bb.t

bb.t:                                             ; preds = %bb.s
  switch i32 %4, label %bb.ak [
    i32 2, label %bb.u
    i32 8, label %bb.y
    i32 10, label %bb.ac
    i32 16, label %bb.ag
  ]

bb.u:                                             ; preds = %bb.t
  %i.an = load i8, ptr %.2, align 1, !tbaa !15
  %i.ao = icmp eq i8 %i.an, 48
  br i1 %i.ao, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.ap = getelementptr i8, ptr %.2, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !15
  switch i8 %i.aq, label %.thread [
    i8 98, label %bb.w
    i8 66, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.ar = icmp eq i64 %.1253, 2
  br i1 %i.ar, label %str2big_scan_digits.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = getelementptr i8, ptr %.2, i64 2
  %i.at = add i64 %.1253, -2
  br label %.thread

bb.y:                                             ; preds = %bb.t
  %i.au = load i8, ptr %.2, align 1, !tbaa !15
  %i.av = icmp eq i8 %i.au, 48
  br i1 %i.av, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.aw = getelementptr i8, ptr %.2, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !15
  switch i8 %i.ax, label %.thread [
    i8 111, label %bb.aa
    i8 79, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.ay = icmp eq i64 %.1253, 2
  br i1 %i.ay, label %str2big_scan_digits.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.az = getelementptr i8, ptr %.2, i64 2
  %i.ba = add i64 %.1253, -2
  br label %.thread

bb.ac:                                            ; preds = %bb.t
  %i.bb = load i8, ptr %.2, align 1, !tbaa !15
  %i.bc = icmp eq i8 %i.bb, 48
  br i1 %i.bc, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.bd = getelementptr i8, ptr %.2, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  switch i8 %i.be, label %.thread [
    i8 100, label %bb.ae
    i8 68, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.bf = icmp eq i64 %.1253, 2
  br i1 %i.bf, label %str2big_scan_digits.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bg = getelementptr i8, ptr %.2, i64 2
  %i.bh = add i64 %.1253, -2
  br label %.thread

bb.ag:                                            ; preds = %bb.t
  %i.bi = load i8, ptr %.2, align 1, !tbaa !15
  %i.bj = icmp eq i8 %i.bi, 48
  br i1 %i.bj, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.bk = getelementptr i8, ptr %.2, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15
  switch i8 %i.bl, label %.thread [
    i8 120, label %bb.ai
    i8 88, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.bm = icmp eq i64 %.1253, 2
  br i1 %i.bm, label %str2big_scan_digits.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bn = getelementptr i8, ptr %.2, i64 2
  %i.bo = add i64 %.1253, -2
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.o, %bb.q, %bb.i, %bb.x, %bb.v, %bb.u, %bb.ab, %bb.z, %bb.y, %bb.af, %bb.ad, %bb.ac, %bb.aj, %bb.ah, %bb.ag
  %.2254.ph = phi i64 [ %.1253, %bb.ag ], [ %i.bo, %bb.aj ], [ %.1253, %bb.ah ], [ %.1253, %bb.ac ], [ %i.bh, %bb.af ], [ %.1253, %bb.ad ], [ %.1253, %bb.y ], [ %i.ba, %bb.ab ], [ %.1253, %bb.z ], [ %.1253, %bb.u ], [ %i.at, %bb.x ], [ %.1253, %bb.v ], [ %i.ai, %bb.q ], [ %i.ag, %bb.o ], [ %i.ae, %bb.m ], [ %i.ac, %bb.k ], [ %.1253, %bb.i ]
  %.0161.ph = phi i32 [ 16, %bb.ag ], [ 16, %bb.aj ], [ 16, %bb.ah ], [ 10, %bb.ac ], [ 10, %bb.af ], [ 10, %bb.ad ], [ 8, %bb.y ], [ 8, %bb.ab ], [ 8, %bb.z ], [ 2, %bb.u ], [ 2, %bb.x ], [ 2, %bb.v ], [ 10, %bb.q ], [ 8, %bb.o ], [ 2, %bb.m ], [ 16, %bb.k ], [ 8, %bb.i ] ; 2 uses
  %.3.ph = phi ptr [ %.2, %bb.ag ], [ %i.bn, %bb.aj ], [ %.2, %bb.ah ], [ %.2, %bb.ac ], [ %i.bg, %bb.af ], [ %.2, %bb.ad ], [ %.2, %bb.y ], [ %i.az, %bb.ab ], [ %.2, %bb.z ], [ %.2, %bb.u ], [ %i.as, %bb.x ], [ %.2, %bb.v ], [ %i.ah, %bb.q ], [ %i.af, %bb.o ], [ %i.ad, %bb.m ], [ %i.ab, %bb.k ], [ %.2, %bb.i ]
  %i.bp = add nsw i32 %.0161.ph, -2
  br label %bb.am

bb.ak:                                            ; preds = %bb.r, %bb.t, %bb.s
  %.0161 = phi i32 [ %spec.select222, %bb.r ], [ %4, %bb.t ], [ %4, %bb.s ] ; 3 uses
  %i.bq = add i32 %.0161, -2                      ; 2 uses
  %i.br = icmp ugt i32 %i.bq, 34
  br i1 %i.br, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call fastcc void @invalid_radix(i32 noundef %.0161) #28
  unreachable

bb.am:                                            ; preds = %.thread, %bb.ak
  %i.bs = phi i32 [ %i.bp, %.thread ], [ %i.bq, %bb.ak ]
  %.3263 = phi ptr [ %.3.ph, %.thread ], [ %.2, %bb.ak ] ; 7 uses
  %.0161262 = phi i32 [ %.0161.ph, %.thread ], [ %.0161, %bb.ak ] ; 7 uses
  %.2254261 = phi i64 [ %.2254.ph, %.thread ], [ %.1253, %bb.ak ] ; 6 uses
  %.not202 = icmp eq i64 %.2254261, 0
  br i1 %.not202, label %str2big_scan_digits.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %6 = ptrtoint ptr %.3263 to i64                 ; 2 uses
  %i.bt = ptrtoint ptr %0 to i64
  %i.bu = sub i64 %6, %i.bt                       ; 3 uses
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !11
  %i.bv = load i8, ptr %.3263, align 1, !tbaa !15
  %i.bw = icmp eq i8 %i.bv, 48
  %i.bx = icmp ne i64 %.2254261, 1
  %or.cond25 = and i1 %i.bx, %i.bw
  br i1 %or.cond25, label %bb.ao, label %bb.aw

bb.ao:                                            ; preds = %bb.an
  %i.by = icmp slt i64 %.2254261, 0
  %i.bz = getelementptr i8, ptr %.3263, i64 %.2254261
  %i.ca = select i1 %i.by, ptr null, ptr %i.bz    ; 3 uses
  %i.cb = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.cc = add i64 %i.bu, 1                        ; 2 uses
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !11
  %i.cd = and i32 %5, 2
  %i.ce = icmp eq i32 %i.cd, 0
  %scevgep341.a = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %i.cb
  %i.cf = sub i64 %i.cb, %6
  %scevgep342 = getelementptr i8, ptr %.3263, i64 %i.cf
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %bb.ao
  %i.cg = phi i64 [ %i.cc, %bb.ao ], [ %i.cm, %bb.as ] ; 4 uses
  %.0162 = phi i32 [ 0, %bb.ao ], [ %.1163, %bb.as ]
  %.4 = phi ptr [ %.3263, %bb.ao ], [ %i.ch, %bb.as ] ; 3 uses
  %i.ch = getelementptr i8, ptr %.4, i64 1        ; 4 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !15  ; 5 uses
  %cond223 = icmp eq i8 %i.ci, 48
  br i1 %cond223, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cj = icmp ne i8 %i.ci, 95
  %.not280 = or i1 %i.ce, %i.cj
  %i.ck = icmp ne i32 %.0162, 0
  %or.cond219 = or i1 %i.ck, %.not280
  br i1 %or.cond219, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.cl = add i64 %i.cg, 1                        ; 2 uses
  store i64 %i.cl, ptr %i.b, align 8, !tbaa !11
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.cm = phi i64 [ %i.cg, %bb.aq ], [ %i.cl, %bb.ar ] ; 2 uses
  %.1163 = phi i32 [ 1, %bb.aq ], [ 0, %bb.ar ]
  %i.cn = icmp eq ptr %i.ch, %i.ca
  br i1 %i.cn, label %.thread264, label %bb.ap, !llvm.loop !207

bb.at:                                            ; preds = %bb.aq
  %.not203 = icmp eq i8 %i.ci, 0
  br i1 %.not203, label %bb.au, label %.thread264

.thread264:                                       ; preds = %bb.as, %bb.at
  %i.co = phi i64 [ %i.cg, %bb.at ], [ %i.cm, %bb.as ]
  %.4335 = phi ptr [ %.4, %bb.at ], [ %scevgep341.a, %bb.as ]
  %i.cp = phi ptr [ %i.ch, %bb.at ], [ %scevgep342, %bb.as ]
  %i.cq = sext i8 %i.ci to i32
  %i.cr = icmp ne i8 %i.ci, 32
  %i.cs = add nsw i32 %i.cq, -14
  %i.ct = icmp ult i32 %i.cs, -5
  %narrow.i224.not = select i1 %i.cr, i1 %i.ct, i1 false
  %spec.select318 = select i1 %narrow.i224.not, ptr %i.cp, ptr %.4335
  br label %bb.au

bb.au:                                            ; preds = %.thread264, %bb.at
  %i.cu = phi i64 [ %i.co, %.thread264 ], [ %i.cg, %bb.at ] ; 2 uses
  %.5 = phi ptr [ %spec.select318, %.thread264 ], [ %.4, %bb.at ] ; 3 uses
  %.not205 = icmp eq ptr %i.ca, null
  br i1 %.not205, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cv = ptrtoint ptr %.5 to i64
  %i.cw = sub i64 %i.cb, %i.cv
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.an
  %i.cx = phi i64 [ %i.cu, %bb.au ], [ %i.cu, %bb.av ], [ %i.bu, %bb.an ] ; 2 uses
  %.3255 = phi i64 [ %.2254261, %bb.au ], [ %i.cw, %bb.av ], [ %.2254261, %bb.an ] ; 5 uses
  %.6 = phi ptr [ %.5, %bb.au ], [ %.5, %bb.av ], [ %.3263, %bb.an ] ; 16 uses
  %i.cy = load i8, ptr %.6, align 1, !tbaa !15
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !15  ; 2 uses
  %i.dc = icmp sgt i8 %i.db, -1
  %i.dd = sext i8 %i.db to i32
  %.not206 = icmp sgt i32 %.0161262, %i.dd
  %or.cond220 = and i1 %i.dc, %.not206
  br i1 %or.cond220, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.de = icmp ne i64 %i.cx, 0
  %or.cond27 = select i1 %i.c, i1 %i.de, i1 false
  %spec.select = select i1 %or.cond27, i64 1, i64 4
  br label %str2big_scan_digits.exit.thread

bb.ay:                                            ; preds = %bb.aw
  %.not207 = icmp eq ptr %3, null                 ; 3 uses
  br i1 %.not207, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i64 %i.cx, ptr %3, align 8, !tbaa !11
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.df = call i64 @ruby_scan_digits(ptr noundef nonnull %.6, i64 noundef %.3255, i32 noundef %.0161262, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #23 ; 4 uses
  %i.dg = load i32, ptr %i.a, align 4, !tbaa !7
  %.not208 = icmp eq i32 %i.dg, 0
  br i1 %.not208, label %bb.bb, label %bb.bo

bb.bb:                                            ; preds = %bb.ba
  %i.dh = load i64, ptr %i.b, align 8, !tbaa !11  ; 3 uses
  %i.di = getelementptr i8, ptr %.6, i64 %i.dh    ; 5 uses
  %.not209 = icmp eq i64 %i.dh, 0                 ; 2 uses
  br i1 %.not209, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !15
  %i.dk = icmp ne i8 %i.dj, 95
  %i.dl = and i32 %5, 2
  %.not210 = icmp eq i32 %i.dl, 0
  %or.cond221 = or i1 %.not210, %i.dk
  br i1 %or.cond221, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  br i1 %i.c, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store ptr %i.di, ptr %2, align 8, !tbaa !208
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %.not207, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dm = load i64, ptr %3, align 8, !tbaa !11
  %i.dn = add i64 %i.dm, %i.dh
  store i64 %i.dn, ptr %3, align 8, !tbaa !11
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.c, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not209, label %bignorm.exit, label %.preheader

.preheader:                                       ; preds = %bb.bi
  %i.do = icmp slt i64 %.3255, 0
  %i.dp = getelementptr i8, ptr %.6, i64 %.3255   ; 2 uses
  br i1 %i.do, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %.not284420 = icmp ult ptr %i.di, %i.dp
  br i1 %.not284420, label %.lr.ph422, label %.loopexit

.preheader.split.us:                              ; preds = %.preheader, %bb.bj
  %.0160.us = phi ptr [ %i.dw, %bb.bj ], [ %i.di, %.preheader ] ; 2 uses
  %i.dq = load i8, ptr %.0160.us, align 1, !tbaa !15 ; 3 uses
  %i.dr = icmp eq i8 %i.dq, 0
  br i1 %i.dr, label %.loopexit, label %bb.bj

bb.bj:                                            ; preds = %.preheader.split.us
  %i.ds = sext i8 %i.dq to i32
  %i.dt = icmp ne i8 %i.dq, 32
  %i.du = add nsw i32 %i.ds, -14
  %i.dv = icmp ult i32 %i.du, -5
  %narrow.i225.not.us = select i1 %i.dt, i1 %i.dv, i1 false
  %i.dw = getelementptr i8, ptr %.0160.us, i64 1
  br i1 %narrow.i225.not.us, label %bignorm.exit, label %.preheader.split.us, !llvm.loop !210

.preheader.split:                                 ; preds = %.lr.ph422
  %i.dx = getelementptr i8, ptr %.0160421, i64 1  ; 2 uses
  %.not284 = icmp ult ptr %i.dx, %i.dp
  br i1 %.not284, label %.lr.ph422, label %.loopexit, !llvm.loop !210

.lr.ph422:                                        ; preds = %.preheader.split.preheader, %.preheader.split
  %.0160421 = phi ptr [ %i.dx, %.preheader.split ], [ %i.di, %.preheader.split.preheader ] ; 2 uses
  %i.dy = load i8, ptr %.0160421, align 1, !tbaa !15 ; 2 uses
  %i.dz = sext i8 %i.dy to i32
  %i.ea = icmp ne i8 %i.dy, 32
  %i.eb = add nsw i32 %i.dz, -14
  %i.ec = icmp ult i32 %i.eb, -5
  %narrow.i225.not = select i1 %i.ea, i1 %i.ec, i1 false
  br i1 %narrow.i225.not, label %bignorm.exit, label %.preheader.split, !llvm.loop !210

.loopexit:                                        ; preds = %.preheader.split, %.preheader.split.us, %.preheader.split.preheader, %bb.bh
  %i.ed = icmp ult i64 %i.df, 4611686018427387904
  br i1 %i.ed, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %.loopexit
  br i1 %.not212, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ee = shl nuw nsw i64 %i.df, 1
  %i.ef = or disjoint i64 %i.ee, 1
  br label %bignorm.exit

bb.bm:                                            ; preds = %bb.bk
  %.neg = mul nsw i64 %i.df, -2
  %i.eg = or disjoint i64 %.neg, 1
  br label %bignorm.exit

bb.bn:                                            ; preds = %.loopexit
  %i.eh = call i64 @rb_uint2big(i64 noundef %i.df) ; 2 uses
  %i.ei = inttoptr i64 %i.eh to ptr               ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !13
  %i.ek = and i64 %i.ej, -8193
  %.sink.i = or disjoint i64 %i.ek, %.not287
  store i64 %.sink.i, ptr %i.ei, align 8, !tbaa !13
  %i.el = call fastcc i64 @bignorm(i64 noundef %i.eh)
  br label %bignorm.exit

bb.bo:                                            ; preds = %bb.bc, %bb.ba
  %.not.i = icmp eq i64 %.3255, 0
  br i1 %.not.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i64 0, ptr %i.b, align 8, !tbaa !11
  br label %str2big_scan_digits.exit
end_hunk_2
