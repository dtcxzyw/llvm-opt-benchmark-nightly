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
  %i.a = ptrtoint ptr %0 to i64
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull readonly align 1 %2, i64 noundef range(i64 1, 0) %i.ak, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.n, %bb.o
  %i.am = and i32 %6, 128
  %.not167 = icmp eq i32 %i.am, 0
  br i1 %.not167, label %bb.w, label %bb.p

bb.p:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.an = and i32 %6, 512
  %.not169 = icmp eq i32 %i.an, 0
  br i1 %.not169, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr i8, ptr %0, i64 %i.ak
  %i.ap = sub i64 %i.al, %i.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ao, i8 noundef -1, i64 noundef %i.ap, i1 noundef false) #23
  %.not27.i = icmp eq i64 %1, 0
  br i1 %.not27.i, label %bary_2comp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %bb.r
  %.023.i = phi i64 [ %i.as, %bb.r ], [ 0, %bb.q ] ; 5 uses
  %i.aq = getelementptr [4 x i8], ptr %0, i64 %.023.i
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7  ; 2 uses
  %.not.i210 = icmp eq i32 %i.ar, 0
  br i1 %.not.i210, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i
  %i.as = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.as, %1
  br i1 %exitcond.not.i, label %bary_2comp.exit, label %.lr.ph.i, !llvm.loop !55

bb.s:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr [4 x i8], ptr %0, i64 %.023.i
  %i.au = sub i32 0, %i.ar
  store i32 %i.au, ptr %i.at, align 4, !tbaa !7
  %.124.i = add i64 %.023.i, 1                    ; 4 uses
  %i.av = icmp ult i64 %.124.i, %1
  br i1 %i.av, label %.lr.ph26.i.preheader, label %bary_2comp.exit

.lr.ph26.i.preheader:                             ; preds = %bb.s
  %i.aw = xor i64 %.023.i, -1
  %i.ax = add i64 %1, %i.aw                       ; 3 uses
  %min.iters.check499 = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check499, label %.lr.ph26.i.preheader511, label %vector.ph500

vector.ph500:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec502 = and i64 %i.ax, -8                   ; 3 uses
  %i.ay = add i64 %.124.i, %n.vec502
  %i.az = getelementptr [4 x i8], ptr %0, i64 %.124.i
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph500
  %index504 = phi i64 [ 0, %vector.ph500 ], [ %index.next507, %vector.body503 ] ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.az, i64 %index504 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16     ; 2 uses
  %wide.load505.a = load <4 x i32>, ptr %i.ba, align 4, !tbaa !7
  %wide.load506 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !7
  %i.bc = xor <4 x i32> %wide.load505.a, splat (i32 -1)
  %i.bd = xor <4 x i32> %wide.load506, splat (i32 -1)
  store <4 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !7
  store <4 x i32> %i.bd, ptr %i.bb, align 4, !tbaa !7
end_hunk_0
begin_hunk_1_@bary_unpack_internal:bb.a
  %i.be = icmp eq i64 %index.next507, %n.vec502
  br i1 %i.be, label %middle.block508, label %vector.body503, !llvm.loop !194

middle.block508:                                  ; preds = %vector.body503
  %cmp.n509 = icmp eq i64 %i.ax, %n.vec502
  br i1 %cmp.n509, label %bary_2comp.exit, label %.lr.ph26.i.preheader511

.lr.ph26.i.preheader511:                          ; preds = %.lr.ph26.i.preheader, %middle.block508
  %.125.i.ph = phi i64 [ %.124.i, %.lr.ph26.i.preheader ], [ %i.ay, %middle.block508 ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader511, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader511 ] ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %0, i64 %.125.i ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = xor i32 %i.bg, -1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !7
  %.1.i = add nuw i64 %.125.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %.1.i, %1
  br i1 %exitcond31.not.i, label %bary_2comp.exit, label %.lr.ph26.i, !llvm.loop !195

bb.t:                                             ; preds = %bb.p
  %i.bi = getelementptr i8, ptr %2, i64 %i.ak
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %.not170 = icmp sgt i8 %i.bk, -1
  %i.bl = getelementptr i8, ptr %0, i64 %i.ak     ; 2 uses
  %i.bm = sub i64 %i.al, %i.ak                    ; 2 uses
  br i1 %.not170, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bl, i8 noundef -1, i64 noundef %i.bm, i1 noundef false) #23
  tail call fastcc void @bary_2comp(ptr noundef %0, i64 noundef %1)
  br label %bary_2comp.exit

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bl, i8 noundef 0, i64 noundef %i.bm, i1 noundef false) #23
  br label %bary_2comp.exit

bb.w:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.bn = getelementptr i8, ptr %0, i64 %i.ak
  %i.bo = sub i64 %i.al, %i.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bn, i8 noundef 0, i64 noundef %i.bo, i1 noundef false) #23
  %i.bp = and i32 %6, 512
  %.not168 = icmp eq i32 %i.bp, 0
  %i.bq = select i1 %.not168, i32 1, i32 -1
  br label %bary_2comp.exit

bb.x:                                             ; preds = %.thread
  %i.br = and i64 %4, 3
  %i.bs = or i64 %5, %i.br
  %or.cond193 = icmp eq i64 %i.bs, 0
  br i1 %or.cond193, label %bb.y, label %bb.al

bb.y:                                             ; preds = %bb.x
  %i.bt = lshr exact i64 %4, 2
  %i.bu = and i32 %6, 1
  %.not157 = icmp eq i32 %i.bu, 0
  %i.bv = and i32 %6, 64
  %.not158 = icmp eq i32 %i.bv, 0
  %i.bw = lshr i32 %6, 4
  %.lobit = and i32 %i.bw, 1
  %i.bx = select i1 %.not158, i32 %.lobit, i32 0  ; 3 uses
  %i.by = mul i64 %i.bt, %3                       ; 4 uses
  %i.bz = icmp ugt i64 %i.by, 4611686018427387903
  br i1 %i.bz, label %bb.z, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.z:                                             ; preds = %bb.y
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.by) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.y
  %.not.i211 = icmp eq i64 %i.by, 0
  br i1 %.not.i211, label %ruby_nonempty_memcpy.exit213, label %bb.aa

bb.aa:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ca = shl nuw i64 %i.by, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull readonly align 1 %2, i64 noundef range(i64 1, 0) %i.ca, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit213

ruby_nonempty_memcpy.exit213:                     ; preds = %rbimpl_size_mul_or_raise.exit, %bb.aa
  br i1 %.not157, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %ruby_nonempty_memcpy.exit213
  %.01112.i = getelementptr i8, ptr %i.b, i64 -4  ; 2 uses
  %i.cb = icmp ult ptr %0, %.01112.i
  br i1 %i.cb, label %.lr.ph.i214, label %bary_swap.exit

.lr.ph.i214:                                      ; preds = %bb.ab, %.lr.ph.i214
  %.01114.i = phi ptr [ %.011.i, %.lr.ph.i214 ], [ %.01112.i, %bb.ab ] ; 3 uses
  %.013.i = phi ptr [ %i.ce, %.lr.ph.i214 ], [ %0, %bb.ab ] ; 3 uses
  %i.cc = load i32, ptr %.013.i, align 4, !tbaa !7
  %i.cd = load i32, ptr %.01114.i, align 4, !tbaa !7
  store i32 %i.cd, ptr %.013.i, align 4, !tbaa !7
  store i32 %i.cc, ptr %.01114.i, align 4, !tbaa !7
  %i.ce = getelementptr i8, ptr %.013.i, i64 4    ; 2 uses
  %.011.i = getelementptr i8, ptr %.01114.i, i64 -4 ; 2 uses
  %i.cf = icmp ult ptr %i.ce, %.011.i
  br i1 %i.cf, label %.lr.ph.i214, label %bary_swap.exit, !llvm.loop !187

bary_swap.exit:                                   ; preds = %.lr.ph.i214, %bb.ab
  %cond194 = icmp eq i32 %i.bx, 0
  br i1 %cond194, label %bb.ac, label %bb.ad

.critedge:                                        ; preds = %ruby_nonempty_memcpy.exit213
  %cond195 = icmp eq i32 %i.bx, 0
  br i1 %cond195, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.critedge, %bary_swap.exit
  %.not372 = icmp eq i64 %3, 0
  br i1 %.not372, label %._crit_edge363, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %bb.ac
  %xtraiter537 = and i64 %3, 1
  %i.cg = icmp eq i64 %3, 1
  br i1 %i.cg, label %.lr.ph362.epil.preheader, label %.lr.ph362.preheader.new

.lr.ph362.preheader.new:                          ; preds = %.lr.ph362.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph362

.lr.ph362:                                        ; preds = %bary_swap.exit220.1, %.lr.ph362.preheader.new
  %.0145360 = phi ptr [ %0, %.lr.ph362.preheader.new ], [ %i.cn, %bary_swap.exit220.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph362.preheader.new ], [ %niter.next.1, %bary_swap.exit220.1 ]
  %i.ch = getelementptr i8, ptr %.0145360, i64 %4 ; 4 uses
  %.01112.i215 = getelementptr i8, ptr %i.ch, i64 -4 ; 2 uses
  %i.ci = icmp ult ptr %.0145360, %.01112.i215
  br i1 %i.ci, label %.lr.ph.i216, label %bary_swap.exit220

.lr.ph.i216:                                      ; preds = %.lr.ph362, %.lr.ph.i216
  %.01114.i217 = phi ptr [ %.011.i219, %.lr.ph.i216 ], [ %.01112.i215, %.lr.ph362 ] ; 3 uses
  %.013.i218 = phi ptr [ %i.cl, %.lr.ph.i216 ], [ %.0145360, %.lr.ph362 ] ; 3 uses
  %i.cj = load i32, ptr %.013.i218, align 4, !tbaa !7
  %i.ck = load i32, ptr %.01114.i217, align 4, !tbaa !7
  store i32 %i.ck, ptr %.013.i218, align 4, !tbaa !7
  store i32 %i.cj, ptr %.01114.i217, align 4, !tbaa !7
  %i.cl = getelementptr i8, ptr %.013.i218, i64 4 ; 2 uses
  %.011.i219 = getelementptr i8, ptr %.01114.i217, i64 -4 ; 2 uses
  %i.cm = icmp ult ptr %i.cl, %.011.i219
  br i1 %i.cm, label %.lr.ph.i216, label %bary_swap.exit220, !llvm.loop !187

bary_swap.exit220:                                ; preds = %.lr.ph.i216, %.lr.ph362
  %i.cn = getelementptr i8, ptr %i.ch, i64 %4     ; 3 uses
  %.01112.i215.1 = getelementptr i8, ptr %i.cn, i64 -4 ; 2 uses
  %i.co = icmp ult ptr %i.ch, %.01112.i215.1
  br i1 %i.co, label %.lr.ph.i216.1, label %bary_swap.exit220.1

.lr.ph.i216.1:                                    ; preds = %bary_swap.exit220, %.lr.ph.i216.1
  %.01114.i217.1 = phi ptr [ %.011.i219.1, %.lr.ph.i216.1 ], [ %.01112.i215.1, %bary_swap.exit220 ] ; 3 uses
  %.013.i218.1 = phi ptr [ %i.cr, %.lr.ph.i216.1 ], [ %i.ch, %bary_swap.exit220 ] ; 3 uses
  %i.cp = load i32, ptr %.013.i218.1, align 4, !tbaa !7
  %i.cq = load i32, ptr %.01114.i217.1, align 4, !tbaa !7
  store i32 %i.cq, ptr %.013.i218.1, align 4, !tbaa !7
  store i32 %i.cp, ptr %.01114.i217.1, align 4, !tbaa !7
  %i.cr = getelementptr i8, ptr %.013.i218.1, i64 4 ; 2 uses
  %.011.i219.1 = getelementptr i8, ptr %.01114.i217.1, i64 -4 ; 2 uses
  %i.cs = icmp ult ptr %i.cr, %.011.i219.1
  br i1 %i.cs, label %.lr.ph.i216.1, label %bary_swap.exit220.1, !llvm.loop !187

bary_swap.exit220.1:                              ; preds = %.lr.ph.i216.1, %bary_swap.exit220
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge363.loopexit.unr-lcssa, label %.lr.ph362, !llvm.loop !196

._crit_edge363.loopexit.unr-lcssa:                ; preds = %bary_swap.exit220.1
  %lcmp.mod538.not = icmp eq i64 %xtraiter537, 0
  br i1 %lcmp.mod538.not, label %._crit_edge363, label %.lr.ph362.epil.preheader

.lr.ph362.epil.preheader:                         ; preds = %._crit_edge363.loopexit.unr-lcssa, %.lr.ph362.preheader
  %.0145360.epil.init = phi ptr [ %0, %.lr.ph362.preheader ], [ %i.cn, %._crit_edge363.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod539 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod539)
  %i.ct = getelementptr i8, ptr %.0145360.epil.init, i64 %4
  %.01112.i215.epil = getelementptr i8, ptr %i.ct, i64 -4 ; 2 uses
  %i.cu = icmp ult ptr %.0145360.epil.init, %.01112.i215.epil
  br i1 %i.cu, label %.lr.ph.i216.epil, label %._crit_edge363

.lr.ph.i216.epil:                                 ; preds = %.lr.ph362.epil.preheader, %.lr.ph.i216.epil
  %.01114.i217.epil = phi ptr [ %.011.i219.epil, %.lr.ph.i216.epil ], [ %.01112.i215.epil, %.lr.ph362.epil.preheader ] ; 3 uses
  %.013.i218.epil = phi ptr [ %i.cx, %.lr.ph.i216.epil ], [ %.0145360.epil.init, %.lr.ph362.epil.preheader ] ; 3 uses
  %i.cv = load i32, ptr %.013.i218.epil, align 4, !tbaa !7
  %i.cw = load i32, ptr %.01114.i217.epil, align 4, !tbaa !7
  store i32 %i.cw, ptr %.013.i218.epil, align 4, !tbaa !7
  store i32 %i.cv, ptr %.01114.i217.epil, align 4, !tbaa !7
  %i.cx = getelementptr i8, ptr %.013.i218.epil, i64 4 ; 2 uses
  %.011.i219.epil = getelementptr i8, ptr %.01114.i217.epil, i64 -4 ; 2 uses
  %i.cy = icmp ult ptr %i.cx, %.011.i219.epil
  br i1 %i.cy, label %.lr.ph.i216.epil, label %._crit_edge363, !llvm.loop !187

._crit_edge363:                                   ; preds = %._crit_edge363.loopexit.unr-lcssa, %.lr.ph.i216.epil, %.lr.ph362.epil.preheader, %bb.ac
  %.not161 = icmp ne i32 %i.bx, 0
  %i.cz = icmp ult ptr %0, %i.b
  %or.cond370 = and i1 %.not161, %i.cz
  br i1 %or.cond370, label %.lr.ph366.preheader, label %.loopexit

bb.ad:                                            ; preds = %bary_swap.exit
  %.old369 = icmp ult ptr %0, %i.b
  br i1 %.old369, label %.lr.ph366.preheader, label %.loopexit

.lr.ph366.preheader:                              ; preds = %bb.ad, %._crit_edge363
  %8 = ptrtoint ptr %0 to i64                     ; 3 uses
  %i.da = shl i64 %1, 2
  %i.db = add i64 %i.da, %8
  %i.dc = add i64 %8, 4
  %umax471 = tail call i64 @llvm.umax.i64(i64 %i.db, i64 %i.dc)
  %i.dd = xor i64 %8, -1
  %i.de = add i64 %umax471, %i.dd                 ; 2 uses
  %i.df = lshr i64 %i.de, 2
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check473 = icmp ult i64 %i.de, 28
  br i1 %min.iters.check473, label %.lr.ph366.preheader521, label %vector.ph474

vector.ph474:                                     ; preds = %.lr.ph366.preheader
  %n.vec476 = and i64 %i.dg, 9223372036854775800  ; 3 uses
  %i.dh = shl i64 %n.vec476, 2
  %i.di = getelementptr i8, ptr %0, i64 %i.dh
  br label %vector.body477

vector.body477:                                   ; preds = %vector.body477, %vector.ph474
  %index478 = phi i64 [ 0, %vector.ph474 ], [ %index.next481, %vector.body477 ] ; 2 uses
  %i.dj = shl i64 %index478, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.dj ; 3 uses
  %i.dk = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load479.a = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load480 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !7
  %i.dl = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load479.a)
  %i.dm = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load480)
  store <4 x i32> %i.dl, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %i.dm, ptr %i.dk, align 4, !tbaa !7
  %index.next481 = add nuw i64 %index478, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next481, %n.vec476
  br i1 %i.dn, label %middle.block482, label %vector.body477, !llvm.loop !197

middle.block482:                                  ; preds = %vector.body477
  %cmp.n483 = icmp eq i64 %i.dg, %n.vec476
  br i1 %cmp.n483, label %.loopexit, label %.lr.ph366.preheader521

.lr.ph366.preheader521:                           ; preds = %.lr.ph366.preheader, %middle.block482
  %.0144364.ph = phi ptr [ %0, %.lr.ph366.preheader ], [ %i.di, %middle.block482 ]
  br label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph366.preheader521, %.lr.ph366
  %.0144364 = phi ptr [ %i.dq, %.lr.ph366 ], [ %.0144364.ph, %.lr.ph366.preheader521 ] ; 3 uses
  %i.do = load i32, ptr %.0144364, align 4, !tbaa !7
  %i.dp = tail call noundef i32 @llvm.bswap.i32(i32 %i.do)
  store i32 %i.dp, ptr %.0144364, align 4, !tbaa !7
  %i.dq = getelementptr i8, ptr %.0144364, i64 4  ; 2 uses
  %i.dr = icmp ult ptr %i.dq, %i.b
  br i1 %i.dr, label %.lr.ph366, label %.loopexit, !llvm.loop !198

.loopexit:                                        ; preds = %.lr.ph366, %middle.block482, %bb.ad, %.critedge, %._crit_edge363
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
  %min.iters.check486 = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check486, label %.lr.ph26.i227.preheader515, label %vector.ph487

vector.ph487:                                     ; preds = %.lr.ph26.i227.preheader
  %n.vec489 = and i64 %i.eb, -8                   ; 3 uses
  %i.ec = add i64 %.124.i225, %n.vec489
  %i.ed = getelementptr [4 x i8], ptr %0, i64 %.124.i225
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph487
  %index491 = phi i64 [ 0, %vector.ph487 ], [ %index.next494, %vector.body490 ] ; 2 uses
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %index491 ; 3 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 16     ; 2 uses
  %wide.load492.a = load <4 x i32>, ptr %i.ee, align 4, !tbaa !7
  %wide.load493 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !7
  %i.eg = xor <4 x i32> %wide.load492.a, splat (i32 -1)
  %i.eh = xor <4 x i32> %wide.load493, splat (i32 -1)
  store <4 x i32> %i.eg, ptr %i.ee, align 4, !tbaa !7
  store <4 x i32> %i.eh, ptr %i.ef, align 4, !tbaa !7
  %index.next494 = add nuw i64 %index491, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next494, %n.vec489
  br i1 %i.ei, label %middle.block495, label %vector.body490, !llvm.loop !199

middle.block495:                                  ; preds = %vector.body490
  %cmp.n496 = icmp eq i64 %i.eb, %n.vec489
  br i1 %cmp.n496, label %bary_2comp.exit, label %.lr.ph26.i227.preheader515

.lr.ph26.i227.preheader515:                       ; preds = %.lr.ph26.i227.preheader, %middle.block495
  %.125.i228.ph = phi i64 [ %.124.i225, %.lr.ph26.i227.preheader ], [ %i.ec, %middle.block495 ]
  br label %.lr.ph26.i227

.lr.ph26.i227:                                    ; preds = %.lr.ph26.i227.preheader515, %.lr.ph26.i227
  %.125.i228 = phi i64 [ %.1.i229, %.lr.ph26.i227 ], [ %.125.i228.ph, %.lr.ph26.i227.preheader515 ] ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %0, i64 %.125.i228 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7
  %i.el = xor i32 %i.ek, -1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !7
  %.1.i229 = add nuw i64 %.125.i228, 1            ; 2 uses
  %exitcond31.not.i230 = icmp eq i64 %.1.i229, %1
  br i1 %exitcond31.not.i230, label %bary_2comp.exit, label %.lr.ph26.i227, !llvm.loop !200

bb.ai:                                            ; preds = %bb.ae
  %i.em = getelementptr i8, ptr %i.b, i64 -4
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

end_hunk_1
