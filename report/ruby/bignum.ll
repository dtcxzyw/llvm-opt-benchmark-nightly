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
  %8 = ptrtoaddr ptr %0 to i64                    ; 4 uses
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
  %min.iters.check499 = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check499, label %.lr.ph26.i.preheader511, label %vector.ph500

vector.ph500:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec502 = and i64 %i.aw, -8                   ; 3 uses
  %i.ax = add i64 %.124.i, %n.vec502
  %i.ay = getelementptr [4 x i8], ptr %0, i64 %.124.i
  br label %vector.body503

vector.body503:                                   ; preds = %vector.body503, %vector.ph500
  %index504 = phi i64 [ 0, %vector.ph500 ], [ %index.next507, %vector.body503 ] ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %index504 ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16     ; 2 uses
  %wide.load505 = load <4 x i32>, ptr %i.az, align 4, !tbaa !7
  %wide.load506 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !7
  %i.bb = xor <4 x i32> %wide.load505, splat (i32 -1)
  %i.bc = xor <4 x i32> %wide.load506, splat (i32 -1)
  store <4 x i32> %i.bb, ptr %i.az, align 4, !tbaa !7
  store <4 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !7
end_hunk_0
begin_hunk_1_@bary_unpack_internal:bb.a
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.ek = xor i32 %i.ej, -1
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !7
  %.1.i229 = add nuw i64 %.125.i228, 1            ; 2 uses
  %exitcond31.not.i230 = icmp eq i64 %.1.i229, %1
  br i1 %exitcond31.not.i230, label %bary_2comp.exit, label %.lr.ph26.i227, !llvm.loop !200

bb.ai:                                            ; preds = %bb.ae
  %i.el = getelementptr i8, ptr %i.a, i64 -4
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %.not165 = icmp sgt i32 %i.em, -1
  br i1 %.not165, label %bary_2comp.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @bary_2comp(ptr noundef nonnull %0, i64 noundef %1)
  br label %bary_2comp.exit

bb.ak:                                            ; preds = %.loopexit
  %i.en = select i1 %.not163, i32 1, i32 -1
  br label %bary_2comp.exit

bb.al:                                            ; preds = %bb.x, %bb.a
  %.not315 = icmp eq i64 %1, 0                    ; 4 uses
  br i1 %.not315, label %.loopexit326, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eo = and i32 %6, 3
  %i.ep = icmp eq i32 %i.eo, 1                    ; 3 uses
  %i.eq = add i64 %3, -1
  %i.er = mul i64 %4, %i.eq                       ; 2 uses
  %i.es = sub i64 0, %4
  %.035.i = select i1 %i.ep, i64 %i.er, i64 0
  %.034.i = select i1 %i.ep, i64 %i.es, i64 %4
  %.033.i = select i1 %i.ep, i64 0, i64 %i.er
  %i.et = trunc i64 %5 to i32
  %i.eu = and i32 %i.et, 7                        ; 3 uses
  %i.ev = icmp ne i32 %i.eu, 0                    ; 3 uses
  %i.ew = lshr i64 %5, 3
  %i.ex = sub i64 %4, %i.ew
  %i.ey = sext i1 %i.ev to i64
  %spec.select.i = add i64 %i.ex, %i.ey           ; 2 uses
  %i.ez = and i32 %6, 112
  %i.fa = icmp eq i32 %i.ez, 16                   ; 2 uses
  %i.fb = add i64 %4, -1
  %.032.i = select i1 %i.fa, i64 %i.fb, i64 0
  %.0.i233 = select i1 %i.fa, i64 -1, i64 1
  %i.fc = getelementptr i8, ptr %2, i64 %.035.i
  %i.fd = getelementptr i8, ptr %2, i64 %.033.i
  %.not371 = icmp eq i64 %spec.select.i, 0
  %i.fe = lshr i32 255, %i.eu
  %i.ff = select i1 %i.ev, i32 %i.fe, i32 0
  %invariant.op = sub i32 8, %i.eu
  br label %bb.an

bb.an:                                            ; preds = %integer_unpack_push_bits.exit238, %bb.am
  %.0291 = phi ptr [ %0, %bb.am ], [ %.2293, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0286 = phi i64 [ 0, %bb.am ], [ %.2288, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0283 = phi i32 [ 0, %bb.am ], [ %.2285, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0138 = phi ptr [ %i.fc, %bb.am ], [ %i.hf, %integer_unpack_push_bits.exit238 ] ; 3 uses
  %i.fg = getelementptr i8, ptr %.0138, i64 %.032.i ; 2 uses
  br i1 %.not371, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an, %integer_unpack_push_bits.exit
  %.0351 = phi ptr [ %i.gn, %integer_unpack_push_bits.exit ], [ %i.fg, %bb.an ] ; 2 uses
  %.0136350 = phi i64 [ %i.go, %integer_unpack_push_bits.exit ], [ 0, %bb.an ]
  %.1284349 = phi i32 [ %.4, %integer_unpack_push_bits.exit ], [ %.0283, %bb.an ] ; 3 uses
  %.1287348 = phi i64 [ %.3289, %integer_unpack_push_bits.exit ], [ %.0286, %bb.an ]
  %.1292347 = phi ptr [ %.5296, %integer_unpack_push_bits.exit ], [ %.0291, %bb.an ] ; 3 uses
  %i.fh = load i8, ptr %.0351, align 1, !tbaa !15
  %i.fi = zext i8 %i.fh to i64
  %i.fj = zext nneg i32 %.1284349 to i64
  %i.fk = shl i64 %i.fi, %i.fj
  %i.fl = or i64 %i.fk, %.1287348                 ; 3 uses
  %i.fm = add i32 %.1284349, 8                    ; 4 uses
  %i.fn = icmp sgt i32 %i.fm, 31
  br i1 %i.fn, label %.lr.ph.i234.preheader, label %integer_unpack_push_bits.exit

.lr.ph.i234.preheader:                            ; preds = %.lr.ph
  %i.fo = add nsw i32 %.1284349, -24              ; 2 uses
  %i.fp = lshr i32 %i.fo, 5
  %i.fq = add nuw nsw i32 %i.fp, 1
  %xtraiter = and i32 %i.fq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol

.lr.ph.i234.prol:                                 ; preds = %.lr.ph.i234.preheader, %.lr.ph.i234.prol
  %.3.prol = phi i32 [ %i.fw, %.lr.ph.i234.prol ], [ %i.fm, %.lr.ph.i234.preheader ]
  %i.fr = phi ptr [ %i.fu, %.lr.ph.i234.prol ], [ %.1292347, %.lr.ph.i234.preheader ] ; 2 uses
  %i.fs = phi i64 [ %i.fv, %.lr.ph.i234.prol ], [ %i.fl, %.lr.ph.i234.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i234.prol ], [ 0, %.lr.ph.i234.preheader ]
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = getelementptr i8, ptr %i.fr, i64 4      ; 3 uses
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !7
  %i.fv = lshr i64 %i.fs, 32                      ; 3 uses
  %i.fw = add nsw i32 %.3.prol, -32               ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol, !llvm.loop !201

.lr.ph.i234.prol.loopexit:                        ; preds = %.lr.ph.i234.prol, %.lr.ph.i234.preheader
  %.3.unr = phi i32 [ %i.fm, %.lr.ph.i234.preheader ], [ %i.fw, %.lr.ph.i234.prol ]
  %.unr = phi ptr [ %.1292347, %.lr.ph.i234.preheader ], [ %i.fu, %.lr.ph.i234.prol ]
  %.unr536 = phi i64 [ %i.fl, %.lr.ph.i234.preheader ], [ %i.fv, %.lr.ph.i234.prol ]
  %.lcssa531.unr = phi ptr [ poison, %.lr.ph.i234.preheader ], [ %i.fu, %.lr.ph.i234.prol ]
  %.lcssa530.unr = phi i64 [ poison, %.lr.ph.i234.preheader ], [ %i.fv, %.lr.ph.i234.prol ]
  %.lcssa529.unr = phi i32 [ poison, %.lr.ph.i234.preheader ], [ %i.fw, %.lr.ph.i234.prol ]
  %i.fx = icmp ult i32 %i.fo, 224
  br i1 %i.fx, label %integer_unpack_push_bits.exit, label %.lr.ph.i234

.lr.ph.i234:                                      ; preds = %.lr.ph.i234.prol.loopexit, %.lr.ph.i234
  %.3 = phi i32 [ %i.gl, %.lr.ph.i234 ], [ %.3.unr, %.lr.ph.i234.prol.loopexit ] ; 2 uses
  %i.fy = phi ptr [ %i.gk, %.lr.ph.i234 ], [ %.unr, %.lr.ph.i234.prol.loopexit ] ; 9 uses
  %i.fz = phi i64 [ 0, %.lr.ph.i234 ], [ %.unr536, %.lr.ph.i234.prol.loopexit ] ; 2 uses
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = getelementptr i8, ptr %i.fy, i64 4
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !7
  %i.gc = lshr i64 %i.fz, 32
  %i.gd = trunc nuw i64 %i.gc to i32
  %i.ge = getelementptr i8, ptr %i.fy, i64 8
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !7
  %i.gf = getelementptr i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.ge, align 4, !tbaa !7
  %i.gg = getelementptr i8, ptr %i.fy, i64 16
  store i32 0, ptr %i.gf, align 4, !tbaa !7
  %i.gh = getelementptr i8, ptr %i.fy, i64 20
  store i32 0, ptr %i.gg, align 4, !tbaa !7
  %i.gi = getelementptr i8, ptr %i.fy, i64 24
  store i32 0, ptr %i.gh, align 4, !tbaa !7
  %i.gj = getelementptr i8, ptr %i.fy, i64 28
  store i32 0, ptr %i.gi, align 4, !tbaa !7
  %i.gk = getelementptr i8, ptr %i.fy, i64 32     ; 2 uses
  store i32 0, ptr %i.gj, align 4, !tbaa !7
  %i.gl = add nsw i32 %.3, -256                   ; 2 uses
  %i.gm = icmp sgt i32 %.3, 287
  br i1 %i.gm, label %.lr.ph.i234, label %integer_unpack_push_bits.exit, !llvm.loop !202

integer_unpack_push_bits.exit:                    ; preds = %.lr.ph.i234.prol.loopexit, %.lr.ph.i234, %.lr.ph
  %.5296 = phi ptr [ %.1292347, %.lr.ph ], [ %.lcssa531.unr, %.lr.ph.i234.prol.loopexit ], [ %i.gk, %.lr.ph.i234 ] ; 2 uses
  %.3289 = phi i64 [ %i.fl, %.lr.ph ], [ %.lcssa530.unr, %.lr.ph.i234.prol.loopexit ], [ 0, %.lr.ph.i234 ] ; 2 uses
  %.4 = phi i32 [ %i.fm, %.lr.ph ], [ %.lcssa529.unr, %.lr.ph.i234.prol.loopexit ], [ %i.gl, %.lr.ph.i234 ] ; 2 uses
  %i.gn = getelementptr i8, ptr %.0351, i64 %.0.i233 ; 2 uses
  %i.go = add nuw i64 %.0136350, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.go, %spec.select.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !203

._crit_edge:                                      ; preds = %integer_unpack_push_bits.exit, %bb.an
  %.1292.lcssa = phi ptr [ %.0291, %bb.an ], [ %.5296, %integer_unpack_push_bits.exit ] ; 3 uses
  %.1287.lcssa = phi i64 [ %.0286, %bb.an ], [ %.3289, %integer_unpack_push_bits.exit ] ; 2 uses
  %.1284.lcssa = phi i32 [ %.0283, %bb.an ], [ %.4, %integer_unpack_push_bits.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.fg, %bb.an ], [ %i.gn, %integer_unpack_push_bits.exit ]
  br i1 %i.ev, label %bb.ao, label %integer_unpack_push_bits.exit238

bb.ao:                                            ; preds = %._crit_edge
  %i.gp = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.gq = zext i8 %i.gp to i32
  %i.gr = and i32 %i.ff, %i.gq
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = zext nneg i32 %.1284.lcssa to i64
  %i.gu = shl i64 %i.gs, %i.gt
  %i.gv = or i64 %i.gu, %.1287.lcssa              ; 2 uses
  %.reass = add i32 %.1284.lcssa, %invariant.op   ; 3 uses
  %i.gw = icmp sgt i32 %.reass, 31
  br i1 %i.gw, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238

.lr.ph.i235:                                      ; preds = %bb.ao, %.lr.ph.i235
  %.5 = phi i32 [ %i.hc, %.lr.ph.i235 ], [ %.reass, %bb.ao ] ; 2 uses
  %i.gx = phi ptr [ %i.ha, %.lr.ph.i235 ], [ %.1292.lcssa, %bb.ao ] ; 2 uses
  %i.gy = phi i64 [ %i.hb, %.lr.ph.i235 ], [ %i.gv, %bb.ao ] ; 2 uses
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = getelementptr i8, ptr %i.gx, i64 4      ; 2 uses
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !7
  %i.hb = lshr i64 %i.gy, 32                      ; 2 uses
  %i.hc = add nsw i32 %.5, -32                    ; 2 uses
  %i.hd = icmp samesign ugt i32 %.5, 63
  br i1 %i.hd, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238, !llvm.loop !202

integer_unpack_push_bits.exit238:                 ; preds = %.lr.ph.i235, %bb.ao, %._crit_edge
  %.2293 = phi ptr [ %.1292.lcssa, %._crit_edge ], [ %.1292.lcssa, %bb.ao ], [ %i.ha, %.lr.ph.i235 ] ; 4 uses
  %.2288 = phi i64 [ %.1287.lcssa, %._crit_edge ], [ %i.gv, %bb.ao ], [ %i.hb, %.lr.ph.i235 ] ; 3 uses
  %.2285 = phi i32 [ %.1284.lcssa, %._crit_edge ], [ %.reass, %bb.ao ], [ %i.hc, %.lr.ph.i235 ]
  %i.he = icmp eq ptr %.0138, %i.fd
  %i.hf = getelementptr i8, ptr %.0138, i64 %.034.i
  br i1 %i.he, label %bb.ap, label %bb.an

bb.ap:                                            ; preds = %integer_unpack_push_bits.exit238
  %.not173 = icmp eq i64 %.2288, 0
  br i1 %.not173, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hg = trunc i64 %.2288 to i32
  %i.hh = getelementptr i8, ptr %.2293, i64 4
  store i32 %i.hg, ptr %.2293, align 4, !tbaa !7
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.3294 = phi ptr [ %.2293, %bb.ap ], [ %i.hh, %bb.aq ] ; 3 uses
  %i.hi = icmp ult ptr %.3294, %i.a
  br i1 %i.hi, label %.lr.ph357.preheader, label %.loopexit326

.lr.ph357.preheader:                              ; preds = %bb.ar
  %.3294394 = ptrtoaddr ptr %.3294 to i64         ; 2 uses
  %i.hj = shl i64 %1, 2
  %i.hk = add i64 %i.hj, %8
  %i.hl = add i64 %.3294394, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.hk, i64 %i.hl)
  %i.hm = xor i64 %.3294394, -1
  %i.hn = add i64 %umax, %i.hm
  %i.ho = and i64 %i.hn, -4
  %i.hp = add i64 %i.ho, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.3294, i8 0, i64 %i.hp, i1 false), !tbaa !7
  br label %.loopexit326

.loopexit326:                                     ; preds = %.lr.ph357.preheader, %bb.ar, %bb.al
  %i.hq = and i32 %6, 128
  %.not174 = icmp eq i32 %i.hq, 0
  br i1 %.not174, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.loopexit326
  %i.hr = and i32 %6, 512
  %.not175 = icmp eq i32 %i.hr, 0
  %i.hs = select i1 %.not175, i32 1, i32 -1
  br label %bary_2comp.exit

bb.at:                                            ; preds = %.loopexit326
  %.not176 = icmp eq i32 %7, 0
  %i.ht = and i32 %6, 512
  %.not177 = icmp eq i32 %i.ht, 0                 ; 2 uses
  br i1 %.not176, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hu = getelementptr i8, ptr %i.a, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !7  ; 2 uses
  br i1 %.not177, label %bb.av, label %._crit_edge396

bb.av:                                            ; preds = %bb.au
  %i.hw = sub i32 31, %7
  %i.hx = lshr i32 %i.hv, %i.hw
  %.not181 = icmp eq i32 %i.hx, 0
  br i1 %.not181, label %bary_2comp.exit, label %._crit_edge396

._crit_edge396:                                   ; preds = %bb.au, %bb.av
  %i.hy = sub i32 32, %7
  %i.hz = shl nsw i32 -1, %i.hy
  %i.ia = getelementptr i8, ptr %i.a, i64 -4
  %i.ib = or i32 %i.hv, %i.hz
  store i32 %i.ib, ptr %i.ia, align 4, !tbaa !7
  br label %bary_zero_p.exit

bb.aw:                                            ; preds = %bb.at
  br i1 %.not177, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not315, label %bary_2comp.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ax, %bb.ay
  %.0.i239 = phi i64 [ %i.ic, %bb.ay ], [ %1, %bb.ax ]
  %i.ic = add i64 %.0.i239, -1                    ; 3 uses
  %i.id = getelementptr [4 x i8], ptr %0, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !7
  %.not.i240 = icmp eq i32 %i.ie, 0
  br i1 %.not.i240, label %bb.ay, label %bary_zero_p.exit

bb.ay:                                            ; preds = %.preheader.i
  %.not7.i = icmp eq i64 %i.ic, 0
  br i1 %.not7.i, label %bary_2comp.exit, label %.preheader.i, !llvm.loop !158

bb.az:                                            ; preds = %bb.aw
  br i1 %.not315, label %bary_2comp.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.if = getelementptr i8, ptr %i.a, i64 -4
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !7
  %.not178 = icmp sgt i32 %i.ig, -1
  br i1 %.not178, label %bary_2comp.exit, label %.lr.ph.i242.preheader

bary_zero_p.exit:                                 ; preds = %.preheader.i, %._crit_edge396
  br i1 %.not315, label %bary_2comp.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %bary_zero_p.exit, %bb.ba
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph.i242.preheader, %bb.bb
  %.023.i243 = phi i64 [ %i.ij, %bb.bb ], [ 0, %.lr.ph.i242.preheader ] ; 5 uses
  %i.ih = getelementptr [4 x i8], ptr %0, i64 %.023.i243
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !7  ; 2 uses
  %.not.i244 = icmp eq i32 %i.ii, 0
  br i1 %.not.i244, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.i242
  %i.ij = add nuw i64 %.023.i243, 1               ; 2 uses
  %exitcond.not.i251 = icmp eq i64 %i.ij, %1
  br i1 %exitcond.not.i251, label %bary_2comp.exit, label %.lr.ph.i242, !llvm.loop !55

bb.bc:                                            ; preds = %.lr.ph.i242
  %i.ik = getelementptr [4 x i8], ptr %0, i64 %.023.i243
  %i.il = sub i32 0, %i.ii
  store i32 %i.il, ptr %i.ik, align 4, !tbaa !7
  %.124.i245 = add i64 %.023.i243, 1              ; 4 uses
  %i.im = icmp ult i64 %.124.i245, %1
  br i1 %i.im, label %.lr.ph26.i247.preheader, label %bary_2comp.exit

.lr.ph26.i247.preheader:                          ; preds = %bb.bc
  %i.in = xor i64 %.023.i243, -1
  %i.io = add i64 %1, %i.in                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.io, 8
  br i1 %min.iters.check, label %.lr.ph26.i247.preheader522, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i247.preheader
  %n.vec = and i64 %i.io, -8                      ; 3 uses
  %i.ip = add i64 %.124.i245, %n.vec
  %i.iq = getelementptr [4 x i8], ptr %0, i64 %.124.i245
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ir = getelementptr [4 x i8], ptr %i.iq, i64 %index ; 3 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ir, align 4, !tbaa !7
  %wide.load470 = load <4 x i32>, ptr %i.is, align 4, !tbaa !7
  %i.it = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.iu = xor <4 x i32> %wide.load470, splat (i32 -1)
  store <4 x i32> %i.it, ptr %i.ir, align 4, !tbaa !7
  store <4 x i32> %i.iu, ptr %i.is, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iv = icmp eq i64 %index.next, %n.vec
  br i1 %i.iv, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.io, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit, label %.lr.ph26.i247.preheader522

.lr.ph26.i247.preheader522:                       ; preds = %.lr.ph26.i247.preheader, %middle.block
  %.125.i248.ph = phi i64 [ %.124.i245, %.lr.ph26.i247.preheader ], [ %i.ip, %middle.block ]
  br label %.lr.ph26.i247

.lr.ph26.i247:                                    ; preds = %.lr.ph26.i247.preheader522, %.lr.ph26.i247
  %.125.i248 = phi i64 [ %.1.i249, %.lr.ph26.i247 ], [ %.125.i248.ph, %.lr.ph26.i247.preheader522 ] ; 2 uses
  %i.iw = getelementptr [4 x i8], ptr %0, i64 %.125.i248 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !7
  %i.iy = xor i32 %i.ix, -1
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !7
  %.1.i249 = add nuw i64 %.125.i248, 1            ; 2 uses
  %exitcond31.not.i250 = icmp eq i64 %.1.i249, %1
  br i1 %exitcond31.not.i250, label %bary_2comp.exit, label %.lr.ph26.i247, !llvm.loop !205

bary_2comp.exit:                                  ; preds = %bb.ay, %bb.bb, %.lr.ph26.i247, %bb.ag, %.lr.ph26.i227, %bb.r, %.lr.ph26.i, %middle.block, %middle.block495, %middle.block508, %bb.ba, %bb.az, %bb.ax, %bb.av, %bb.bc, %bb.af, %bb.ah, %bb.q, %bb.s, %integer_unpack_single_bdigit.exit, %integer_unpack_single_bdigit.exit201, %integer_unpack_single_bdigit.exit207, %bb.as, %bary_zero_p.exit, %bb.ak, %bb.aj, %bb.ai, %bb.w, %bb.u, %bb.v
  %.1 = phi i32 [ 1, %bb.ai ], [ %i.hs, %bb.as ], [ %i.bp, %bb.w ], [ %.0.i205, %integer_unpack_single_bdigit.exit207 ], [ -1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.az ], [ -1, %bb.aj ], [ %i.en, %bb.ak ], [ -1, %middle.block495 ], [ -1, %bary_zero_p.exit ], [ %spec.select317, %integer_unpack_single_bdigit.exit ], [ %spec.select319, %integer_unpack_single_bdigit.exit201 ], [ -2, %bb.ag ], [ -2, %bb.q ], [ -1, %bb.s ], [ -1, %bb.bb ], [ -2, %bb.af ], [ -1, %bb.ah ], [ -1, %middle.block508 ], [ -2, %bb.r ], [ -1, %bb.bc ], [ -1, %middle.block ], [ 1, %bb.av ], [ -2, %bb.ax ], [ 1, %bb.ba ], [ -1, %.lr.ph26.i247 ], [ -1, %.lr.ph26.i ], [ -1, %.lr.ph26.i227 ], [ -2, %bb.ay ]
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
  %i.ca = select i1 %i.by, ptr null, ptr %i.bz    ; 4 uses
  %7 = ptrtoaddr ptr %i.ca to i64                 ; 2 uses
  %i.cb = add i64 %i.bu, 1                        ; 2 uses
  store i64 %i.cb, ptr %i.b, align 8, !tbaa !11
  %i.cc = and i32 %5, 2
  %i.cd = icmp eq i32 %i.cc, 0
  %scevgep341.a = getelementptr i8, ptr inttoptr (i64 -1 to ptr), i64 %7
  %i.ce = sub i64 %7, %6
  %scevgep342 = getelementptr i8, ptr %.3263, i64 %i.ce
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %bb.ao
  %i.cf = phi i64 [ %i.cb, %bb.ao ], [ %i.cl, %bb.as ] ; 4 uses
  %.0162 = phi i32 [ 0, %bb.ao ], [ %.1163, %bb.as ]
  %.4 = phi ptr [ %.3263, %bb.ao ], [ %i.cg, %bb.as ] ; 3 uses
  %i.cg = getelementptr i8, ptr %.4, i64 1        ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !15  ; 5 uses
  %cond223 = icmp eq i8 %i.ch, 48
  br i1 %cond223, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ci = icmp ne i8 %i.ch, 95
  %.not280 = or i1 %i.cd, %i.ci
  %i.cj = icmp ne i32 %.0162, 0
  %or.cond219 = or i1 %i.cj, %.not280
  br i1 %or.cond219, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  store i64 %i.ck, ptr %i.b, align 8, !tbaa !11
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.cl = phi i64 [ %i.cf, %bb.aq ], [ %i.ck, %bb.ar ] ; 2 uses
  %.1163 = phi i32 [ 1, %bb.aq ], [ 0, %bb.ar ]
  %i.cm = icmp eq ptr %i.cg, %i.ca
  br i1 %i.cm, label %.thread264, label %bb.ap, !llvm.loop !207

bb.at:                                            ; preds = %bb.aq
  %.not203 = icmp eq i8 %i.ch, 0
  br i1 %.not203, label %bb.au, label %.thread264

.thread264:                                       ; preds = %bb.as, %bb.at
  %i.cn = phi i64 [ %i.cf, %bb.at ], [ %i.cl, %bb.as ]
  %.4335 = phi ptr [ %.4, %bb.at ], [ %scevgep341.a, %bb.as ]
  %i.co = phi ptr [ %i.cg, %bb.at ], [ %scevgep342, %bb.as ]
  %i.cp = sext i8 %i.ch to i32
  %i.cq = icmp ne i8 %i.ch, 32
  %i.cr = add nsw i32 %i.cp, -14
  %i.cs = icmp ult i32 %i.cr, -5
  %narrow.i224.not = select i1 %i.cq, i1 %i.cs, i1 false
  %spec.select318 = select i1 %narrow.i224.not, ptr %i.co, ptr %.4335
  br label %bb.au

bb.au:                                            ; preds = %.thread264, %bb.at
  %i.ct = phi i64 [ %i.cn, %.thread264 ], [ %i.cf, %bb.at ] ; 2 uses
  %.5 = phi ptr [ %spec.select318, %.thread264 ], [ %.4, %bb.at ] ; 3 uses
  %.not205 = icmp eq ptr %i.ca, null
  br i1 %.not205, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %8 = ptrtoint ptr %i.ca to i64
  %i.cu = ptrtoint ptr %.5 to i64
  %i.cv = sub i64 %8, %i.cu
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.an
  %i.cw = phi i64 [ %i.ct, %bb.au ], [ %i.ct, %bb.av ], [ %i.bu, %bb.an ] ; 2 uses
  %.3255 = phi i64 [ %.2254261, %bb.au ], [ %i.cv, %bb.av ], [ %.2254261, %bb.an ] ; 5 uses
  %.6 = phi ptr [ %.5, %bb.au ], [ %.5, %bb.av ], [ %.3263, %bb.an ] ; 16 uses
  %i.cx = load i8, ptr %.6, align 1, !tbaa !15
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !15  ; 2 uses
  %i.db = icmp sgt i8 %i.da, -1
  %i.dc = sext i8 %i.da to i32
  %.not206 = icmp sgt i32 %.0161262, %i.dc
  %or.cond220 = and i1 %i.db, %.not206
  br i1 %or.cond220, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dd = icmp ne i64 %i.cw, 0
  %or.cond27 = select i1 %i.c, i1 %i.dd, i1 false
  %spec.select = select i1 %or.cond27, i64 1, i64 4
  br label %str2big_scan_digits.exit.thread

bb.ay:                                            ; preds = %bb.aw
  %.not207 = icmp eq ptr %3, null                 ; 3 uses
  br i1 %.not207, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i64 %i.cw, ptr %3, align 8, !tbaa !11
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.de = call i64 @ruby_scan_digits(ptr noundef nonnull %.6, i64 noundef %.3255, i32 noundef %.0161262, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #23 ; 4 uses
  %i.df = load i32, ptr %i.a, align 4, !tbaa !7
  %.not208 = icmp eq i32 %i.df, 0
  br i1 %.not208, label %bb.bb, label %bb.bo

bb.bb:                                            ; preds = %bb.ba
  %i.dg = load i64, ptr %i.b, align 8, !tbaa !11  ; 3 uses
  %i.dh = getelementptr i8, ptr %.6, i64 %i.dg    ; 5 uses
  %.not209 = icmp eq i64 %i.dg, 0                 ; 2 uses
  br i1 %.not209, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !15
  %i.dj = icmp ne i8 %i.di, 95
  %i.dk = and i32 %5, 2
  %.not210 = icmp eq i32 %i.dk, 0
  %or.cond221 = or i1 %.not210, %i.dj
  br i1 %or.cond221, label %bb.bd, label %bb.bo

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  br i1 %i.c, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store ptr %i.dh, ptr %2, align 8, !tbaa !208
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %.not207, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dl = load i64, ptr %3, align 8, !tbaa !11
  %i.dm = add i64 %i.dl, %i.dg
  store i64 %i.dm, ptr %3, align 8, !tbaa !11
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  br i1 %i.c, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br i1 %.not209, label %bignorm.exit, label %.preheader

.preheader:                                       ; preds = %bb.bi
  %i.dn = icmp slt i64 %.3255, 0
  %i.do = getelementptr i8, ptr %.6, i64 %.3255   ; 2 uses
  br i1 %i.dn, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %.not284420 = icmp ult ptr %i.dh, %i.do
  br i1 %.not284420, label %.lr.ph422, label %.loopexit

.preheader.split.us:                              ; preds = %.preheader, %bb.bj
  %.0160.us = phi ptr [ %i.dv, %bb.bj ], [ %i.dh, %.preheader ] ; 2 uses
  %i.dp = load i8, ptr %.0160.us, align 1, !tbaa !15 ; 3 uses
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %.loopexit, label %bb.bj

bb.bj:                                            ; preds = %.preheader.split.us
  %i.dr = sext i8 %i.dp to i32
  %i.ds = icmp ne i8 %i.dp, 32
  %i.dt = add nsw i32 %i.dr, -14
  %i.du = icmp ult i32 %i.dt, -5
  %narrow.i225.not.us = select i1 %i.ds, i1 %i.du, i1 false
  %i.dv = getelementptr i8, ptr %.0160.us, i64 1
  br i1 %narrow.i225.not.us, label %bignorm.exit, label %.preheader.split.us, !llvm.loop !210

.preheader.split:                                 ; preds = %.lr.ph422
  %i.dw = getelementptr i8, ptr %.0160421, i64 1  ; 2 uses
  %.not284 = icmp ult ptr %i.dw, %i.do
  br i1 %.not284, label %.lr.ph422, label %.loopexit, !llvm.loop !210

.lr.ph422:                                        ; preds = %.preheader.split.preheader, %.preheader.split
  %.0160421 = phi ptr [ %i.dw, %.preheader.split ], [ %i.dh, %.preheader.split.preheader ] ; 2 uses
  %i.dx = load i8, ptr %.0160421, align 1, !tbaa !15 ; 2 uses
  %i.dy = sext i8 %i.dx to i32
  %i.dz = icmp ne i8 %i.dx, 32
  %i.ea = add nsw i32 %i.dy, -14
  %i.eb = icmp ult i32 %i.ea, -5
  %narrow.i225.not = select i1 %i.dz, i1 %i.eb, i1 false
  br i1 %narrow.i225.not, label %bignorm.exit, label %.preheader.split, !llvm.loop !210

.loopexit:                                        ; preds = %.preheader.split, %.preheader.split.us, %.preheader.split.preheader, %bb.bh
  %i.ec = icmp ult i64 %i.de, 4611686018427387904
  br i1 %i.ec, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %.loopexit
  br i1 %.not212, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ed = shl nuw nsw i64 %i.de, 1
  %i.ee = or disjoint i64 %i.ed, 1
  br label %bignorm.exit

bb.bm:                                            ; preds = %bb.bk
  %.neg = mul nsw i64 %i.de, -2
  %i.ef = or disjoint i64 %.neg, 1
  br label %bignorm.exit

bb.bn:                                            ; preds = %.loopexit
  %i.eg = call i64 @rb_uint2big(i64 noundef %i.de) ; 2 uses
  %i.eh = inttoptr i64 %i.eg to ptr               ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !13
  %i.ej = and i64 %i.ei, -8193
  %.sink.i = or disjoint i64 %i.ej, %.not287
  store i64 %.sink.i, ptr %i.eh, align 8, !tbaa !13
  %i.ek = call fastcc i64 @bignorm(i64 noundef %i.eg)
  br label %bignorm.exit

bb.bo:                                            ; preds = %bb.bc, %bb.ba
  %.not.i = icmp eq i64 %.3255, 0
  br i1 %.not.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i64 0, ptr %i.b, align 8, !tbaa !11
  br label %str2big_scan_digits.exit

bb.bq:                                            ; preds = %bb.bo
  br i1 %i.c, label %.preheader428, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.el = load i8, ptr %.6, align 1, !tbaa !15
  %i.em = icmp eq i8 %i.el, 95
  br i1 %i.em, label %str2big_scan_digits.exit.thread.thread, label %.preheader428

.preheader428:                                    ; preds = %bb.br, %bb.bq
  br label %.outer

.outer:                                           ; preds = %.preheader428, %bb.by
  %.051.i.ph = phi ptr [ %.6, %.preheader428 ], [ %i.eo, %bb.by ]
  %.048.i.ph = phi i8 [ 0, %.preheader428 ], [ %.149.i, %bb.by ]
  %.045.i.ph = phi i64 [ 0, %.preheader428 ], [ %.146.i, %bb.by ]
  %.041.i.ph = phi ptr [ %.6, %.preheader428 ], [ %.142.i, %bb.by ]
  %.0.i.ph = phi i64 [ %.3255, %.preheader428 ], [ %i.ew, %bb.by ] ; 4 uses
  %i.en = icmp sgt i64 %.0.i.ph, 0
  br label %bb.bs

bb.bs:                                            ; preds = %.outer, %bb.bx
  %.051.i = phi ptr [ %i.eo, %bb.bx ], [ %.051.i.ph, %.outer ] ; 3 uses
  %.048.i = phi i8 [ %.149.i, %bb.bx ], [ %.048.i.ph, %.outer ] ; 3 uses
  %.045.i = phi i64 [ %.146.i, %bb.bx ], [ %.045.i.ph, %.outer ] ; 5 uses
  %.041.i = phi ptr [ %.142.i, %bb.bx ], [ %.041.i.ph, %.outer ] ; 4 uses
  %i.eo = getelementptr i8, ptr %.051.i, i64 1    ; 3 uses
  %i.ep = load i8, ptr %.051.i, align 1, !tbaa !15 ; 4 uses
  switch i8 %i.ep, label %bb.bv [
    i8 0, label %.loopexit429
    i8 95, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs
  %.not64.i = icmp eq i8 %.048.i, 0
  br i1 %.not64.i, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.c, label %.thread9.i, label %str2big_scan_digits.exit.thread.thread

bb.bv:                                            ; preds = %bb.bs
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr i8, ptr @ruby_digit36_to_number_table, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !15  ; 2 uses
  %i.et = icmp sgt i8 %i.es, -1
  %i.eu = sext i8 %i.es to i32
  %.not63.i = icmp sgt i32 %.0161262, %i.eu
  %or.cond71.i = and i1 %i.et, %.not63.i
  br i1 %or.cond71.i, label %bb.bw, label %.loopexit429

bb.bw:                                            ; preds = %bb.bv
  %i.ev = add i64 %.045.i, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
end_hunk_2
