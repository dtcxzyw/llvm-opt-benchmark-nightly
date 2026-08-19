inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 183
begin_hunk_0_@bary_pack:bb.a
  %i.mf = and i32 %7, 112
  %i.mg = icmp eq i32 %i.mf, 16                   ; 2 uses
  %i.mh = add i64 %5, -1
  %.032.i397 = select i1 %i.mg, i64 %i.mh, i64 0
  %.0.i398 = select i1 %i.mg, i64 -1, i64 1       ; 3 uses
  %i.mi = sub nuw nsw i32 8, %i.ma
  %i.mj = lshr i32 255, %i.ma
  %i.mk = select i1 %i.mb, i32 %i.mj, i32 0       ; 2 uses
  %i.ml = getelementptr i8, ptr %3, i64 %.035.i393
  %i.mm = getelementptr i8, ptr %3, i64 %.033.i395
  %.not613 = icmp eq i64 %spec.select.i396, 0
  %i.mn = add i64 %5, %i.me
  %.neg = add nuw nsw i64 %i.mc, 1
  %xtraiter737 = and i64 %spec.select.i396, 1
  %i.mo = icmp eq i64 %i.mn, %.neg
  %unroll_iter = and i64 %spec.select.i396, -2
  %lcmp.mod738.not = icmp eq i64 %xtraiter737, 0
  %lcmp.mod741 = trunc i64 %spec.select.i396 to i1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %bb.br
  %.0254 = phi ptr [ %i.ml, %bb.br ], [ %i.nu, %bb.bu ] ; 3 uses
  %.0253 = phi i32 [ 1, %bb.br ], [ %.2, %bb.bu ] ; 3 uses
  %i.mp = getelementptr i8, ptr %.0254, i64 %.032.i397 ; 3 uses
  br i1 %.not613, label %._crit_edge589, label %.lr.ph588.preheader

.lr.ph588.preheader:                              ; preds = %bb.bs
  br i1 %i.mo, label %.lr.ph588.epil.preheader, label %.lr.ph588

.lr.ph588:                                        ; preds = %.lr.ph588.preheader, %.lr.ph588
  %.0586 = phi ptr [ %i.nd, %.lr.ph588 ], [ %i.mp, %.lr.ph588.preheader ] ; 3 uses
  %.1584 = phi i32 [ %i.nc, %.lr.ph588 ], [ %.0253, %.lr.ph588.preheader ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph588 ], [ 0, %.lr.ph588.preheader ]
  %i.mq = load i8, ptr %.0586, align 1, !tbaa !15
  %i.mr = xor i8 %i.mq, -1
  %i.ms = zext i8 %i.mr to i32
  %i.mt = add i32 %.1584, %i.ms                   ; 2 uses
  %i.mu = trunc i32 %i.mt to i8
  store i8 %i.mu, ptr %.0586, align 1, !tbaa !15
  %i.mv = ashr i32 %i.mt, 8
  %i.mw = getelementptr i8, ptr %.0586, i64 %.0.i398 ; 3 uses
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !15
  %i.my = xor i8 %i.mx, -1
  %i.mz = zext i8 %i.my to i32
  %i.na = add nsw i32 %i.mv, %i.mz                ; 2 uses
  %i.nb = trunc i32 %i.na to i8
  store i8 %i.nb, ptr %i.mw, align 1, !tbaa !15
  %i.nc = ashr i32 %i.na, 8                       ; 3 uses
  %i.nd = getelementptr i8, ptr %i.mw, i64 %.0.i398 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge589.loopexit.unr-lcssa, label %.lr.ph588, !llvm.loop !193

._crit_edge589.loopexit.unr-lcssa:                ; preds = %.lr.ph588
  br i1 %lcmp.mod738.not, label %._crit_edge589, label %.lr.ph588.epil.preheader

.lr.ph588.epil.preheader:                         ; preds = %._crit_edge589.loopexit.unr-lcssa, %.lr.ph588.preheader
  %.0586.epil.init = phi ptr [ %i.mp, %.lr.ph588.preheader ], [ %i.nd, %._crit_edge589.loopexit.unr-lcssa ] ; 3 uses
  %.1584.epil.init = phi i32 [ %.0253, %.lr.ph588.preheader ], [ %i.nc, %._crit_edge589.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod741)
  %i.ne = load i8, ptr %.0586.epil.init, align 1, !tbaa !15
  %i.nf = xor i8 %i.ne, -1
  %i.ng = zext i8 %i.nf to i32
  %i.nh = add i32 %.1584.epil.init, %i.ng         ; 2 uses
  %i.ni = trunc i32 %i.nh to i8
  store i8 %i.ni, ptr %.0586.epil.init, align 1, !tbaa !15
  %i.nj = ashr i32 %i.nh, 8
  %i.nk = getelementptr i8, ptr %.0586.epil.init, i64 %.0.i398
  br label %._crit_edge589

._crit_edge589:                                   ; preds = %.lr.ph588.epil.preheader, %._crit_edge589.loopexit.unr-lcssa, %bb.bs
  %.1.lcssa = phi i32 [ %.0253, %bb.bs ], [ %i.nc, %._crit_edge589.loopexit.unr-lcssa ], [ %i.nj, %.lr.ph588.epil.preheader ] ; 2 uses
  %.0.lcssa = phi ptr [ %i.mp, %bb.bs ], [ %i.nd, %._crit_edge589.loopexit.unr-lcssa ], [ %i.nk, %.lr.ph588.epil.preheader ] ; 2 uses
  br i1 %i.mb, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %._crit_edge589
  %i.nl = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.nm = zext i8 %i.nl to i32
  %i.nn = xor i32 %i.nm, -1
  %i.no = and i32 %i.mk, %i.nn
  %i.np = add i32 %i.no, %.1.lcssa                ; 2 uses
  %i.nq = and i32 %i.np, %i.mk
  %i.nr = trunc nuw nsw i32 %i.nq to i8
  store i8 %i.nr, ptr %.0.lcssa, align 1, !tbaa !15
  %i.ns = ashr i32 %i.np, %i.mi
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge589
  %.2 = phi i32 [ %i.ns, %bb.bt ], [ %.1.lcssa, %._crit_edge589 ]
  %i.nt = icmp eq ptr %.0254, %i.mm
  %i.nu = getelementptr i8, ptr %.0254, i64 %.034.i394
  br i1 %i.nt, label %.thread494, label %bb.bs

.thread494:                                       ; preds = %bb.bu, %.thread670, %bb.w, %bb.x, %bb.s, %bb.q, %.thread530, %bytes_2comp.exit.thread, %.thread526, %bb.o, %bb.m, %bb.k, %bb.bq, %bary_swap.exit383, %bb.e
  %.4 = phi i32 [ %.4293, %bb.bq ], [ 0, %bb.e ], [ %i.ao, %bb.m ], [ %spec.select357, %bary_swap.exit383 ], [ %i.ed, %.thread526 ], [ %i.aw, %bb.o ], [ %i.bh, %bb.q ], [ %i.aa, %bb.k ], [ %spec.select, %.thread530 ], [ %i.ee, %bytes_2comp.exit.thread ], [ %i.co, %bb.x ], [ -1, %bb.w ], [ %i.bw, %bb.s ], [ 0, %.thread670 ], [ %.4293, %bb.bu ]
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
  br i1 %.not, label %bb.b, label %bb.ak

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
  %min.iters.check495 = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check495, label %.lr.ph26.i.preheader506, label %vector.ph496

vector.ph496:                                     ; preds = %.lr.ph26.i.preheader
  %n.vec497 = and i64 %i.aw, -8                   ; 3 uses
  %i.ax = add i64 %.124.i, %n.vec497
  %i.ay = getelementptr [4 x i8], ptr %0, i64 %.124.i
  br label %vector.body498

vector.body498:                                   ; preds = %vector.body498, %vector.ph496
  %index499 = phi i64 [ 0, %vector.ph496 ], [ %index.next502, %vector.body498 ] ; 2 uses
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %index499 ; 3 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16     ; 2 uses
  %wide.load500 = load <4 x i32>, ptr %i.az, align 4, !tbaa !7
  %wide.load501 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !7
  %i.bb = xor <4 x i32> %wide.load500, splat (i32 -1)
  %i.bc = xor <4 x i32> %wide.load501, splat (i32 -1)
  store <4 x i32> %i.bb, ptr %i.az, align 4, !tbaa !7
  store <4 x i32> %i.bc, ptr %i.ba, align 4, !tbaa !7
  %index.next502 = add nuw i64 %index499, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next502, %n.vec497
  br i1 %i.bd, label %middle.block503, label %vector.body498, !llvm.loop !194

middle.block503:                                  ; preds = %vector.body498
  %cmp.n504 = icmp eq i64 %i.aw, %n.vec497
  br i1 %cmp.n504, label %bary_2comp.exit, label %.lr.ph26.i.preheader506

.lr.ph26.i.preheader506:                          ; preds = %.lr.ph26.i.preheader, %middle.block503
  %.125.i.ph = phi i64 [ %.124.i, %.lr.ph26.i.preheader ], [ %i.ax, %middle.block503 ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader506, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader506 ] ; 2 uses
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
  br i1 %or.cond193, label %bb.y, label %bb.ak

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
  br i1 %cond194, label %bb.ac, label %9

.critedge:                                        ; preds = %ruby_nonempty_memcpy.exit213
  %cond195 = icmp eq i32 %i.bw, 0
  br i1 %cond195, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %.critedge, %bary_swap.exit
  %.not372 = icmp eq i64 %3, 0
  br i1 %.not372, label %._crit_edge363, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %bb.ac
  %xtraiter532 = and i64 %3, 1
  %i.cf = icmp eq i64 %3, 1
  br i1 %i.cf, label %.lr.ph362.epil.preheader, label %.lr.ph362.preheader.new

.lr.ph362.preheader.new:                          ; preds = %.lr.ph362.preheader
  %unroll_iter = and i64 %3, -2
  br label %.lr.ph362

.lr.ph362:                                        ; preds = %bary_swap.exit220.1, %.lr.ph362.preheader.new
  %.0143360 = phi ptr [ %0, %.lr.ph362.preheader.new ], [ %i.cm, %bary_swap.exit220.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph362.preheader.new ], [ %niter.next.1, %bary_swap.exit220.1 ]
  %i.cg = getelementptr i8, ptr %.0143360, i64 %4 ; 4 uses
  %.01112.i215 = getelementptr i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.ch = icmp ult ptr %.0143360, %.01112.i215
  br i1 %i.ch, label %.lr.ph.i216, label %bary_swap.exit220

.lr.ph.i216:                                      ; preds = %.lr.ph362, %.lr.ph.i216
  %.01114.i217 = phi ptr [ %.011.i219, %.lr.ph.i216 ], [ %.01112.i215, %.lr.ph362 ] ; 3 uses
  %.013.i218 = phi ptr [ %i.ck, %.lr.ph.i216 ], [ %.0143360, %.lr.ph362 ] ; 3 uses
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
  %lcmp.mod533.not = icmp eq i64 %xtraiter532, 0
  br i1 %lcmp.mod533.not, label %._crit_edge363, label %.lr.ph362.epil.preheader

.lr.ph362.epil.preheader:                         ; preds = %._crit_edge363.loopexit.unr-lcssa, %.lr.ph362.preheader
  %.0143360.epil.init = phi ptr [ %0, %.lr.ph362.preheader ], [ %i.cm, %._crit_edge363.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod534 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod534)
  %i.cs = getelementptr i8, ptr %.0143360.epil.init, i64 %4
  %.01112.i215.epil = getelementptr i8, ptr %i.cs, i64 -4 ; 2 uses
  %i.ct = icmp ult ptr %.0143360.epil.init, %.01112.i215.epil
  br i1 %i.ct, label %.lr.ph.i216.epil, label %._crit_edge363

.lr.ph.i216.epil:                                 ; preds = %.lr.ph362.epil.preheader, %.lr.ph.i216.epil
  %.01114.i217.epil = phi ptr [ %.011.i219.epil, %.lr.ph.i216.epil ], [ %.01112.i215.epil, %.lr.ph362.epil.preheader ] ; 3 uses
  %.013.i218.epil = phi ptr [ %i.cw, %.lr.ph.i216.epil ], [ %.0143360.epil.init, %.lr.ph362.epil.preheader ] ; 3 uses
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
  br i1 %or.cond370, label %.lr.ph366.preheader.a, label %.loopexit

9:                                                ; preds = %bary_swap.exit
  %.old369 = icmp ult ptr %0, %i.a
  br i1 %.old369, label %.lr.ph366.preheader.a, label %.loopexit

.lr.ph366.preheader.a:                            ; preds = %9, %._crit_edge363
  %10 = shl i64 %1, 2
  %11 = add i64 %10, %8
  %12 = add i64 %8, 4
  %13 = tail call i64 @llvm.umax.i64(i64 %11, i64 %12)
  %14 = xor i64 %8, -1
  %15 = add i64 %13, %14                          ; 2 uses
  %16 = lshr i64 %15, 2
  %17 = add nuw nsw i64 %16, 1                    ; 2 uses
  %min.iters.check471.a = icmp ult i64 %15, 28
  br i1 %min.iters.check471.a, label %.lr.ph366.preheader516, label %vector.ph472

vector.ph472:                                     ; preds = %.lr.ph366.preheader.a
  %n.vec473 = and i64 %17, 9223372036854775800    ; 3 uses
  %18 = shl i64 %n.vec473, 2
  %19 = getelementptr i8, ptr %0, i64 %18
  br label %vector.body474

vector.body474:                                   ; preds = %vector.body474, %vector.ph472
  %index475 = phi i64 [ 0, %vector.ph472 ], [ %index.next478, %vector.body474 ] ; 2 uses
  %20 = shl i64 %index475, 2
  %next.gep = getelementptr i8, ptr %0, i64 %20   ; 3 uses
  %21 = getelementptr i8, ptr %next.gep, i64 16   ; 2 uses
  %wide.load476 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load477 = load <4 x i32>, ptr %21, align 4, !tbaa !7
  %22 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load476)
  %23 = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load477)
  store <4 x i32> %22, ptr %next.gep, align 4, !tbaa !7
  store <4 x i32> %23, ptr %21, align 4, !tbaa !7
  %index.next478 = add nuw i64 %index475, 8       ; 2 uses
  %24 = icmp eq i64 %index.next478, %n.vec473
  br i1 %24, label %middle.block479, label %vector.body474, !llvm.loop !197

middle.block479:                                  ; preds = %vector.body474
  %cmp.n480 = icmp eq i64 %17, %n.vec473
  br i1 %cmp.n480, label %.loopexit, label %.lr.ph366.preheader516

.lr.ph366.preheader516:                           ; preds = %.lr.ph366.preheader.a, %middle.block479
  %.0142364.ph = phi ptr [ %0, %.lr.ph366.preheader.a ], [ %19, %middle.block479 ]
  br label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph366.preheader516, %.lr.ph366
  %.0142364 = phi ptr [ %i.db, %.lr.ph366 ], [ %.0142364.ph, %.lr.ph366.preheader516 ] ; 3 uses
  %i.cz = load i32, ptr %.0142364, align 4, !tbaa !7
  %i.da = tail call noundef i32 @llvm.bswap.i32(i32 %i.cz)
  store i32 %i.da, ptr %.0142364, align 4, !tbaa !7
  %i.db = getelementptr i8, ptr %.0142364, i64 4  ; 2 uses
  %i.dc = icmp ult ptr %i.db, %i.a
  br i1 %i.dc, label %.lr.ph366, label %.loopexit, !llvm.loop !198

.loopexit:                                        ; preds = %.lr.ph366, %middle.block479, %9, %.critedge, %._crit_edge363
  %i.dd = and i32 %6, 128
  %.not162 = icmp eq i32 %i.dd, 0
  %i.de = and i32 %6, 512
  %.not163 = icmp eq i32 %i.de, 0                 ; 2 uses
  br i1 %.not162, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  br i1 %.not163, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not27.i221 = icmp eq i64 %1, 0
  br i1 %.not27.i221, label %bary_2comp.exit, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.ae, %bb.af
  %.023.i223 = phi i64 [ %i.dh, %bb.af ], [ 0, %bb.ae ] ; 5 uses
  %i.df = getelementptr [4 x i8], ptr %0, i64 %.023.i223
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7  ; 2 uses
  %.not.i224 = icmp eq i32 %i.dg, 0
  br i1 %.not.i224, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i222
  %i.dh = add nuw i64 %.023.i223, 1               ; 2 uses
  %exitcond.not.i231 = icmp eq i64 %i.dh, %1
  br i1 %exitcond.not.i231, label %bary_2comp.exit, label %.lr.ph.i222, !llvm.loop !55

bb.ag:                                            ; preds = %.lr.ph.i222
  %i.di = getelementptr [4 x i8], ptr %0, i64 %.023.i223
  %i.dj = sub i32 0, %i.dg
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !7
  %.124.i225 = add i64 %.023.i223, 1              ; 4 uses
  %i.dk = icmp ult i64 %.124.i225, %1
  br i1 %i.dk, label %.lr.ph26.i227.preheader, label %bary_2comp.exit

.lr.ph26.i227.preheader:                          ; preds = %bb.ag
  %i.dl = xor i64 %.023.i223, -1
  %i.dm = add i64 %1, %i.dl                       ; 3 uses
  %min.iters.check483 = icmp ult i64 %i.dm, 8
  br i1 %min.iters.check483, label %.lr.ph26.i227.preheader510, label %vector.ph484

vector.ph484:                                     ; preds = %.lr.ph26.i227.preheader
  %n.vec485 = and i64 %i.dm, -8                   ; 3 uses
  %i.dn = add i64 %.124.i225, %n.vec485
  %i.do = getelementptr [4 x i8], ptr %0, i64 %.124.i225
  br label %vector.body486

vector.body486:                                   ; preds = %vector.body486, %vector.ph484
  %index487 = phi i64 [ 0, %vector.ph484 ], [ %index.next490, %vector.body486 ] ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.do, i64 %index487 ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 16     ; 2 uses
  %wide.load488 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !7
  %wide.load489 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !7
  %i.dr = xor <4 x i32> %wide.load488, splat (i32 -1)
  %i.ds = xor <4 x i32> %wide.load489, splat (i32 -1)
  store <4 x i32> %i.dr, ptr %i.dp, align 4, !tbaa !7
  store <4 x i32> %i.ds, ptr %i.dq, align 4, !tbaa !7
  %index.next490 = add nuw i64 %index487, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next490, %n.vec485
  br i1 %i.dt, label %middle.block491, label %vector.body486, !llvm.loop !199

middle.block491:                                  ; preds = %vector.body486
  %cmp.n492 = icmp eq i64 %i.dm, %n.vec485
  br i1 %cmp.n492, label %bary_2comp.exit, label %.lr.ph26.i227.preheader510

.lr.ph26.i227.preheader510:                       ; preds = %.lr.ph26.i227.preheader, %middle.block491
  %.125.i228.ph = phi i64 [ %.124.i225, %.lr.ph26.i227.preheader ], [ %i.dn, %middle.block491 ]
  br label %.lr.ph26.i227

.lr.ph26.i227:                                    ; preds = %.lr.ph26.i227.preheader510, %.lr.ph26.i227
  %.125.i228 = phi i64 [ %.1.i229, %.lr.ph26.i227 ], [ %.125.i228.ph, %.lr.ph26.i227.preheader510 ] ; 2 uses
  %i.du = getelementptr [4 x i8], ptr %0, i64 %.125.i228 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7
  %i.dw = xor i32 %i.dv, -1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !7
  %.1.i229 = add nuw i64 %.125.i228, 1            ; 2 uses
  %exitcond31.not.i230 = icmp eq i64 %.1.i229, %1
  br i1 %exitcond31.not.i230, label %bary_2comp.exit, label %.lr.ph26.i227, !llvm.loop !200

bb.ah:                                            ; preds = %bb.ad
  %i.dx = getelementptr i8, ptr %i.a, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !7
  %.not165 = icmp sgt i32 %i.dy, -1
  br i1 %.not165, label %bary_2comp.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @bary_2comp(ptr noundef nonnull %0, i64 noundef %1)
  br label %bary_2comp.exit

bb.aj:                                            ; preds = %.loopexit
  %i.dz = select i1 %.not163, i32 1, i32 -1
  br label %bary_2comp.exit

bb.ak:                                            ; preds = %bb.x, %bb.a
  %.not315 = icmp eq i64 %1, 0                    ; 4 uses
  br i1 %.not315, label %.loopexit326, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ea = and i32 %6, 3
  %i.eb = icmp eq i32 %i.ea, 1                    ; 3 uses
  %i.ec = add i64 %3, -1
  %i.ed = mul i64 %4, %i.ec                       ; 2 uses
  %i.ee = sub i64 0, %4
  %.035.i = select i1 %i.eb, i64 %i.ed, i64 0
  %.034.i = select i1 %i.eb, i64 %i.ee, i64 %4
  %.033.i = select i1 %i.eb, i64 0, i64 %i.ed
  %i.ef = trunc i64 %5 to i32
  %i.eg = and i32 %i.ef, 7                        ; 3 uses
  %i.eh = icmp ne i32 %i.eg, 0                    ; 3 uses
  %i.ei = lshr i64 %5, 3
  %i.ej = sub i64 %4, %i.ei
  %i.ek = sext i1 %i.eh to i64
  %spec.select.i = add i64 %i.ej, %i.ek           ; 2 uses
  %i.el = and i32 %6, 112
  %i.em = icmp eq i32 %i.el, 16                   ; 2 uses
  %i.en = add i64 %4, -1
  %.032.i = select i1 %i.em, i64 %i.en, i64 0
  %.0.i233 = select i1 %i.em, i64 -1, i64 1
  %i.eo = getelementptr i8, ptr %2, i64 %.035.i
  %i.ep = getelementptr i8, ptr %2, i64 %.033.i
  %.not371 = icmp eq i64 %spec.select.i, 0
  %i.eq = lshr i32 255, %i.eg
  %i.er = select i1 %i.eh, i32 %i.eq, i32 0
  %invariant.op = sub i32 8, %i.eg
  br label %bb.am

bb.am:                                            ; preds = %integer_unpack_push_bits.exit238, %bb.al
  %.0291 = phi ptr [ %0, %bb.al ], [ %.2293, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0286 = phi i64 [ 0, %bb.al ], [ %.2288, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0283 = phi i32 [ 0, %bb.al ], [ %.2285, %integer_unpack_push_bits.exit238 ] ; 2 uses
  %.0137 = phi ptr [ %i.eo, %bb.al ], [ %i.gr, %integer_unpack_push_bits.exit238 ] ; 3 uses
  %i.es = getelementptr i8, ptr %.0137, i64 %.032.i ; 2 uses
  br i1 %.not371, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.am, %integer_unpack_push_bits.exit
  %.0351 = phi ptr [ %i.fz, %integer_unpack_push_bits.exit ], [ %i.es, %bb.am ] ; 2 uses
  %.0136350 = phi i64 [ %i.ga, %integer_unpack_push_bits.exit ], [ 0, %bb.am ]
  %.1284349 = phi i32 [ %.4, %integer_unpack_push_bits.exit ], [ %.0283, %bb.am ] ; 3 uses
  %.1287348 = phi i64 [ %.3289, %integer_unpack_push_bits.exit ], [ %.0286, %bb.am ]
  %.1292347 = phi ptr [ %.5296, %integer_unpack_push_bits.exit ], [ %.0291, %bb.am ] ; 3 uses
  %i.et = load i8, ptr %.0351, align 1, !tbaa !15
  %i.eu = zext i8 %i.et to i64
  %i.ev = zext nneg i32 %.1284349 to i64
  %i.ew = shl i64 %i.eu, %i.ev
  %i.ex = or i64 %i.ew, %.1287348                 ; 3 uses
  %i.ey = add i32 %.1284349, 8                    ; 4 uses
  %i.ez = icmp sgt i32 %i.ey, 31
  br i1 %i.ez, label %.lr.ph.i234.preheader, label %integer_unpack_push_bits.exit

.lr.ph.i234.preheader:                            ; preds = %.lr.ph
  %i.fa = add nsw i32 %.1284349, -24              ; 2 uses
  %i.fb = lshr i32 %i.fa, 5
  %i.fc = add nuw nsw i32 %i.fb, 1
  %xtraiter = and i32 %i.fc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol

.lr.ph.i234.prol:                                 ; preds = %.lr.ph.i234.preheader, %.lr.ph.i234.prol
  %.3.prol = phi i32 [ %i.fi, %.lr.ph.i234.prol ], [ %i.ey, %.lr.ph.i234.preheader ]
  %i.fd = phi ptr [ %i.fg, %.lr.ph.i234.prol ], [ %.1292347, %.lr.ph.i234.preheader ] ; 2 uses
  %i.fe = phi i64 [ %i.fh, %.lr.ph.i234.prol ], [ %i.ex, %.lr.ph.i234.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i234.prol ], [ 0, %.lr.ph.i234.preheader ]
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = getelementptr i8, ptr %i.fd, i64 4      ; 3 uses
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !7
  %i.fh = lshr i64 %i.fe, 32                      ; 3 uses
  %i.fi = add nsw i32 %.3.prol, -32               ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i234.prol.loopexit, label %.lr.ph.i234.prol, !llvm.loop !201

.lr.ph.i234.prol.loopexit:                        ; preds = %.lr.ph.i234.prol, %.lr.ph.i234.preheader
  %.3.unr = phi i32 [ %i.ey, %.lr.ph.i234.preheader ], [ %i.fi, %.lr.ph.i234.prol ]
  %.unr = phi ptr [ %.1292347, %.lr.ph.i234.preheader ], [ %i.fg, %.lr.ph.i234.prol ]
  %.unr531 = phi i64 [ %i.ex, %.lr.ph.i234.preheader ], [ %i.fh, %.lr.ph.i234.prol ]
  %.lcssa526.unr = phi ptr [ poison, %.lr.ph.i234.preheader ], [ %i.fg, %.lr.ph.i234.prol ]
  %.lcssa525.unr = phi i64 [ poison, %.lr.ph.i234.preheader ], [ %i.fh, %.lr.ph.i234.prol ]
  %.lcssa524.unr = phi i32 [ poison, %.lr.ph.i234.preheader ], [ %i.fi, %.lr.ph.i234.prol ]
  %i.fj = icmp ult i32 %i.fa, 224
  br i1 %i.fj, label %integer_unpack_push_bits.exit, label %.lr.ph.i234

.lr.ph.i234:                                      ; preds = %.lr.ph.i234.prol.loopexit, %.lr.ph.i234
  %.3 = phi i32 [ %i.fx, %.lr.ph.i234 ], [ %.3.unr, %.lr.ph.i234.prol.loopexit ] ; 2 uses
  %i.fk = phi ptr [ %i.fw, %.lr.ph.i234 ], [ %.unr, %.lr.ph.i234.prol.loopexit ] ; 9 uses
  %i.fl = phi i64 [ 0, %.lr.ph.i234 ], [ %.unr531, %.lr.ph.i234.prol.loopexit ] ; 2 uses
  %i.fm = trunc i64 %i.fl to i32
  %i.fn = getelementptr i8, ptr %i.fk, i64 4
  store i32 %i.fm, ptr %i.fk, align 4, !tbaa !7
  %i.fo = lshr i64 %i.fl, 32
  %i.fp = trunc nuw i64 %i.fo to i32
  %i.fq = getelementptr i8, ptr %i.fk, i64 8
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !7
  %i.fr = getelementptr i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !7
  %i.fs = getelementptr i8, ptr %i.fk, i64 16
  store i32 0, ptr %i.fr, align 4, !tbaa !7
  %i.ft = getelementptr i8, ptr %i.fk, i64 20
  store i32 0, ptr %i.fs, align 4, !tbaa !7
  %i.fu = getelementptr i8, ptr %i.fk, i64 24
  store i32 0, ptr %i.ft, align 4, !tbaa !7
  %i.fv = getelementptr i8, ptr %i.fk, i64 28
  store i32 0, ptr %i.fu, align 4, !tbaa !7
  %i.fw = getelementptr i8, ptr %i.fk, i64 32     ; 2 uses
  store i32 0, ptr %i.fv, align 4, !tbaa !7
  %i.fx = add nsw i32 %.3, -256                   ; 2 uses
  %i.fy = icmp sgt i32 %.3, 287
  br i1 %i.fy, label %.lr.ph.i234, label %integer_unpack_push_bits.exit, !llvm.loop !202

integer_unpack_push_bits.exit:                    ; preds = %.lr.ph.i234.prol.loopexit, %.lr.ph.i234, %.lr.ph
  %.5296 = phi ptr [ %.1292347, %.lr.ph ], [ %.lcssa526.unr, %.lr.ph.i234.prol.loopexit ], [ %i.fw, %.lr.ph.i234 ] ; 2 uses
  %.3289 = phi i64 [ %i.ex, %.lr.ph ], [ %.lcssa525.unr, %.lr.ph.i234.prol.loopexit ], [ 0, %.lr.ph.i234 ] ; 2 uses
  %.4 = phi i32 [ %i.ey, %.lr.ph ], [ %.lcssa524.unr, %.lr.ph.i234.prol.loopexit ], [ %i.fx, %.lr.ph.i234 ] ; 2 uses
  %i.fz = getelementptr i8, ptr %.0351, i64 %.0.i233 ; 2 uses
  %i.ga = add nuw i64 %.0136350, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ga, %spec.select.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !203

._crit_edge:                                      ; preds = %integer_unpack_push_bits.exit, %bb.am
  %.1292.lcssa = phi ptr [ %.0291, %bb.am ], [ %.5296, %integer_unpack_push_bits.exit ] ; 3 uses
  %.1287.lcssa = phi i64 [ %.0286, %bb.am ], [ %.3289, %integer_unpack_push_bits.exit ] ; 2 uses
  %.1284.lcssa = phi i32 [ %.0283, %bb.am ], [ %.4, %integer_unpack_push_bits.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.es, %bb.am ], [ %i.fz, %integer_unpack_push_bits.exit ]
  br i1 %i.eh, label %bb.an, label %integer_unpack_push_bits.exit238

bb.an:                                            ; preds = %._crit_edge
  %i.gb = load i8, ptr %.0.lcssa, align 1, !tbaa !15
  %i.gc = zext i8 %i.gb to i32
  %i.gd = and i32 %i.er, %i.gc
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = zext nneg i32 %.1284.lcssa to i64
  %i.gg = shl i64 %i.ge, %i.gf
  %i.gh = or i64 %i.gg, %.1287.lcssa              ; 2 uses
  %.reass = add i32 %.1284.lcssa, %invariant.op   ; 3 uses
  %i.gi = icmp sgt i32 %.reass, 31
  br i1 %i.gi, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238

.lr.ph.i235:                                      ; preds = %bb.an, %.lr.ph.i235
  %.5 = phi i32 [ %i.go, %.lr.ph.i235 ], [ %.reass, %bb.an ] ; 2 uses
  %i.gj = phi ptr [ %i.gm, %.lr.ph.i235 ], [ %.1292.lcssa, %bb.an ] ; 2 uses
  %i.gk = phi i64 [ %i.gn, %.lr.ph.i235 ], [ %i.gh, %bb.an ] ; 2 uses
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = getelementptr i8, ptr %i.gj, i64 4      ; 2 uses
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !7
  %i.gn = lshr i64 %i.gk, 32                      ; 2 uses
  %i.go = add nsw i32 %.5, -32                    ; 2 uses
  %i.gp = icmp samesign ugt i32 %.5, 63
  br i1 %i.gp, label %.lr.ph.i235, label %integer_unpack_push_bits.exit238, !llvm.loop !202

integer_unpack_push_bits.exit238:                 ; preds = %.lr.ph.i235, %bb.an, %._crit_edge
  %.2293 = phi ptr [ %.1292.lcssa, %._crit_edge ], [ %.1292.lcssa, %bb.an ], [ %i.gm, %.lr.ph.i235 ] ; 4 uses
  %.2288 = phi i64 [ %.1287.lcssa, %._crit_edge ], [ %i.gh, %bb.an ], [ %i.gn, %.lr.ph.i235 ] ; 3 uses
  %.2285 = phi i32 [ %.1284.lcssa, %._crit_edge ], [ %.reass, %bb.an ], [ %i.go, %.lr.ph.i235 ]
  %i.gq = icmp eq ptr %.0137, %i.ep
  %i.gr = getelementptr i8, ptr %.0137, i64 %.034.i
  br i1 %i.gq, label %bb.ao, label %bb.am

bb.ao:                                            ; preds = %integer_unpack_push_bits.exit238
  %.not173 = icmp eq i64 %.2288, 0
  br i1 %.not173, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gs = trunc i64 %.2288 to i32
  %i.gt = getelementptr i8, ptr %.2293, i64 4
  store i32 %i.gs, ptr %.2293, align 4, !tbaa !7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.3294 = phi ptr [ %.2293, %bb.ao ], [ %i.gt, %bb.ap ] ; 3 uses
  %i.gu = icmp ult ptr %.3294, %i.a
  br i1 %i.gu, label %.lr.ph357.preheader, label %.loopexit326

.lr.ph357.preheader:                              ; preds = %bb.aq
  %.3294394 = ptrtoaddr ptr %.3294 to i64         ; 2 uses
  %25 = shl i64 %1, 2
  %26 = add i64 %25, %8
  %27 = add i64 %.3294394, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %26, i64 %27)
  %28 = xor i64 %.3294394, -1
  %29 = add i64 %umax, %28
  %30 = and i64 %29, -4
  %31 = add i64 %30, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %.3294, i8 0, i64 %31, i1 false), !tbaa !7
  br label %.loopexit326

.loopexit326:                                     ; preds = %.lr.ph357.preheader, %bb.aq, %bb.ak
  %i.gv = and i32 %6, 128
  %.not174 = icmp eq i32 %i.gv, 0
  br i1 %.not174, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.loopexit326
  %i.gw = and i32 %6, 512
  %.not175 = icmp eq i32 %i.gw, 0
  %i.gx = select i1 %.not175, i32 1, i32 -1
  br label %bary_2comp.exit

bb.as:                                            ; preds = %.loopexit326
  %.not176 = icmp eq i32 %7, 0
  %i.gy = and i32 %6, 512
  %.not177 = icmp eq i32 %i.gy, 0                 ; 2 uses
  br i1 %.not176, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gz = getelementptr i8, ptr %i.a, i64 -4
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !7  ; 2 uses
  br i1 %.not177, label %bb.au, label %._crit_edge396

bb.au:                                            ; preds = %bb.at
  %i.hb = sub i32 31, %7
  %i.hc = lshr i32 %i.ha, %i.hb
  %.not181 = icmp eq i32 %i.hc, 0
  br i1 %.not181, label %bary_2comp.exit, label %._crit_edge396

._crit_edge396:                                   ; preds = %bb.at, %bb.au
  %i.hd = sub i32 32, %7
  %i.he = shl nsw i32 -1, %i.hd
  %i.hf = getelementptr i8, ptr %i.a, i64 -4
  %i.hg = or i32 %i.ha, %i.he
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !7
  br label %bary_zero_p.exit

bb.av:                                            ; preds = %bb.as
  br i1 %.not177, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %.not315, label %bary_2comp.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aw, %bb.ax
  %.0.i239 = phi i64 [ %i.hh, %bb.ax ], [ %1, %bb.aw ]
  %i.hh = add i64 %.0.i239, -1                    ; 3 uses
  %i.hi = getelementptr [4 x i8], ptr %0, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !7
  %.not.i240 = icmp eq i32 %i.hj, 0
  br i1 %.not.i240, label %bb.ax, label %bary_zero_p.exit

bb.ax:                                            ; preds = %.preheader.i
  %.not7.i = icmp eq i64 %i.hh, 0
  br i1 %.not7.i, label %bary_2comp.exit, label %.preheader.i, !llvm.loop !158

bb.ay:                                            ; preds = %bb.av
  br i1 %.not315, label %bary_2comp.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hk = getelementptr i8, ptr %i.a, i64 -4
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !7
  %.not178 = icmp sgt i32 %i.hl, -1
  br i1 %.not178, label %bary_2comp.exit, label %.lr.ph.i242.preheader

bary_zero_p.exit:                                 ; preds = %.preheader.i, %._crit_edge396
  br i1 %.not315, label %bary_2comp.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %bary_zero_p.exit, %bb.az
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph.i242.preheader, %bb.ba
  %.023.i243 = phi i64 [ %i.ho, %bb.ba ], [ 0, %.lr.ph.i242.preheader ] ; 5 uses
  %i.hm = getelementptr [4 x i8], ptr %0, i64 %.023.i243
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !7  ; 2 uses
  %.not.i244 = icmp eq i32 %i.hn, 0
  br i1 %.not.i244, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph.i242
  %i.ho = add nuw i64 %.023.i243, 1               ; 2 uses
  %exitcond.not.i251 = icmp eq i64 %i.ho, %1
  br i1 %exitcond.not.i251, label %bary_2comp.exit, label %.lr.ph.i242, !llvm.loop !55

bb.bb:                                            ; preds = %.lr.ph.i242
  %i.hp = getelementptr [4 x i8], ptr %0, i64 %.023.i243
  %i.hq = sub i32 0, %i.hn
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !7
  %.124.i245 = add i64 %.023.i243, 1              ; 4 uses
  %i.hr = icmp ult i64 %.124.i245, %1
  br i1 %i.hr, label %.lr.ph26.i247.preheader, label %bary_2comp.exit

.lr.ph26.i247.preheader:                          ; preds = %bb.bb
  %i.hs = xor i64 %.023.i243, -1
  %i.ht = add i64 %1, %i.hs                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.ht, 8
  br i1 %min.iters.check, label %.lr.ph26.i247.preheader517, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i247.preheader
  %n.vec = and i64 %i.ht, -8                      ; 3 uses
  %i.hu = add i64 %.124.i245, %n.vec
  %i.hv = getelementptr [4 x i8], ptr %0, i64 %.124.i245
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hw = getelementptr [4 x i8], ptr %i.hv, i64 %index ; 3 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.hw, align 4, !tbaa !7
  %wide.load469 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !7
  %i.hy = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.hz = xor <4 x i32> %wide.load469, splat (i32 -1)
  store <4 x i32> %i.hy, ptr %i.hw, align 4, !tbaa !7
  store <4 x i32> %i.hz, ptr %i.hx, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ht, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit, label %.lr.ph26.i247.preheader517

.lr.ph26.i247.preheader517:                       ; preds = %.lr.ph26.i247.preheader, %middle.block
  %.125.i248.ph = phi i64 [ %.124.i245, %.lr.ph26.i247.preheader ], [ %i.hu, %middle.block ]
  br label %.lr.ph26.i247

.lr.ph26.i247:                                    ; preds = %.lr.ph26.i247.preheader517, %.lr.ph26.i247
  %.125.i248 = phi i64 [ %.1.i249, %.lr.ph26.i247 ], [ %.125.i248.ph, %.lr.ph26.i247.preheader517 ] ; 2 uses
  %i.ib = getelementptr [4 x i8], ptr %0, i64 %.125.i248 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !7
  %i.id = xor i32 %i.ic, -1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !7
  %.1.i249 = add nuw i64 %.125.i248, 1            ; 2 uses
  %exitcond31.not.i250 = icmp eq i64 %.1.i249, %1
  br i1 %exitcond31.not.i250, label %bary_2comp.exit, label %.lr.ph26.i247, !llvm.loop !205

bary_2comp.exit:                                  ; preds = %bb.ax, %bb.ba, %.lr.ph26.i247, %bb.af, %.lr.ph26.i227, %bb.r, %.lr.ph26.i, %middle.block, %middle.block491, %middle.block503, %bb.az, %bb.ay, %bb.aw, %bb.au, %bb.bb, %bb.ae, %bb.ag, %bb.q, %bb.s, %integer_unpack_single_bdigit.exit, %integer_unpack_single_bdigit.exit201, %integer_unpack_single_bdigit.exit207, %bb.ar, %bary_zero_p.exit, %bb.aj, %bb.ai, %bb.ah, %bb.w, %bb.u, %bb.v
  %.1139 = phi i32 [ 1, %bb.ah ], [ %i.gx, %bb.ar ], [ %i.bp, %bb.w ], [ %.0.i205, %integer_unpack_single_bdigit.exit207 ], [ -1, %bb.u ], [ 1, %bb.v ], [ 1, %bb.ay ], [ -1, %bb.ai ], [ %i.dz, %bb.aj ], [ -1, %middle.block491 ], [ -1, %bary_zero_p.exit ], [ %spec.select317, %integer_unpack_single_bdigit.exit ], [ %spec.select319, %integer_unpack_single_bdigit.exit201 ], [ -2, %bb.af ], [ -2, %bb.q ], [ -1, %bb.s ], [ -1, %bb.ba ], [ -2, %bb.ae ], [ -1, %bb.ag ], [ -1, %middle.block503 ], [ -2, %bb.r ], [ -1, %bb.bb ], [ -1, %middle.block ], [ 1, %bb.au ], [ -2, %bb.aw ], [ 1, %bb.az ], [ -1, %.lr.ph26.i247 ], [ -1, %.lr.ph26.i ], [ -1, %.lr.ph26.i227 ], [ -2, %bb.ax ]
  ret i32 %.1139
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
  br i1 %narrow.i.not311, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader289
  %i.j = getelementptr i8, ptr %0, i64 %1
  %scevgep = getelementptr i8, ptr %i.j, i64 -1   ; 2 uses
  %or.cond416 = icmp eq i64 %1, 1
  br i1 %or.cond416, label %str2big_scan_digits.exit.thread, label %.lr.ph419

.lr.ph:                                           ; preds = %.lr.ph419
  %or.cond = icmp eq i64 %i.l, 1
end_hunk_0
begin_hunk_1_@llvm.bswap.v4i32
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"RBasic", !12, i64 0, !12, i64 8}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 long", !22, i64 0}
!22 = !{!"any pointer", !9, i64 0}
!23 = !{i64 2155877144}
!24 = !{i64 2155877306}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS27rb_execution_context_struct", !22, i64 0}
!27 = !{i64 2155895221}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = !{i64 2155897301}
!31 = !{i64 2155897463}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{ptr @bary_mul_karatsuba_start, ptr @bary_mul_toom3_start}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{!42, !17, !38}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 int", !22, i64 0}
!45 = distinct !{null}
!46 = !{i64 2155899077}
!47 = !{i64 2155899239}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !41}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17, !38, !39}
!53 = distinct !{!53, !41}
!54 = distinct !{!54, !17, !38}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17, !38, !39}
!57 = distinct !{!57, !17, !39, !38}
!58 = !{ptr @bary_mul_karatsuba_start}
!59 = distinct !{!59, !17, !38, !39}
!60 = distinct !{!60, !17, !39, !38}
!61 = distinct !{!61, !17, !38, !39}
!62 = distinct !{!62, !17, !39, !38}
!63 = distinct !{!63, !17, !38, !39}
!64 = distinct !{!64, !41}
!65 = distinct !{!65, !17, !38}
!66 = distinct !{!66, !17, !38, !39}
!67 = distinct !{!67, !41}
!68 = distinct !{!68, !17, !38}
!69 = distinct !{!69, !17}
!70 = distinct !{!70, !17, !38, !39}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !17, !38}
!73 = !{i64 2155902127}
!74 = !{i64 2155902289}
!75 = distinct !{!75, !17, !38, !39}
!76 = distinct !{!76, !41}
!77 = distinct !{!77, !17, !38}
!78 = distinct !{!78, !17, !38, !39}
!79 = distinct !{!79, !17, !39, !38}
!80 = distinct !{!80, !17, !38, !39}
!81 = distinct !{!81, !41}
!82 = distinct !{!82, !17, !38}
!83 = distinct !{!83, !41}
!84 = distinct !{!84, !17, !38, !39}
!85 = distinct !{!85, !17, !38}
!86 = distinct !{!86, !17, !38, !39}
!87 = distinct !{!87, !17, !39, !38}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !41}
!90 = distinct !{!90, !41}
!91 = distinct !{!91, !17, !38, !39}
!92 = distinct !{!92, !17, !39, !38}
!93 = distinct !{!93, !17, !38, !39}
!94 = distinct !{!94, !41}
!95 = distinct !{!95, !17, !38}
!96 = distinct !{!96, !17, !38, !39}
!97 = distinct !{!97, !17, !39, !38}
!98 = distinct !{!98, !17, !38, !39}
!99 = distinct !{!99, !41}
!100 = distinct !{!100, !17, !38}
!101 = distinct !{!101, !41}
!102 = distinct !{!102, !17, !38, !39}
!103 = distinct !{!103, !41}
!104 = distinct !{!104, !17, !38}
!105 = distinct !{!105, !17, !38, !39}
!106 = distinct !{!106, !17, !39, !38}
!107 = distinct !{!107, !41}
!108 = distinct !{!108, !41}
!109 = distinct !{!109, !17, !38, !39}
!110 = distinct !{!110, !17, !39, !38}
!111 = distinct !{!111, !17, !38, !39}
!112 = distinct !{!112, !17, !39, !38}
!113 = distinct !{!113, !17}
!114 = distinct !{!114, !17, !38, !39}
!115 = distinct !{!115, !17, !39, !38}
!116 = distinct !{!116, !17, !38, !39}
!117 = distinct !{!117, !17, !39, !38}
!118 = distinct !{!118, !17, !38, !39}
!119 = distinct !{!119, !41}
!120 = distinct !{!120, !17, !38}
!121 = distinct !{!121, !17, !38, !39}
!122 = distinct !{!122, !17, !39, !38}
!123 = distinct !{!123, !17, !38, !39}
!124 = distinct !{!124, !17, !39, !38}
!125 = distinct !{!125, !17, !38, !39}
!126 = distinct !{!126, !17, !39, !38}
!127 = distinct !{!127, !17}
!128 = distinct !{!128, !17, !38, !39}
!129 = distinct !{!129, !17, !39, !38}
!130 = distinct !{!130, !17, !38, !39}
!131 = distinct !{!131, !17, !39, !38}
!132 = distinct !{!132, !17, !38, !39}
!133 = distinct !{!133, !17, !39, !38}
!134 = distinct !{!134, !17, !38, !39}
!135 = distinct !{!135, !17, !39, !38}
!136 = distinct !{!136, !17, !38, !39}
!137 = distinct !{!137, !41}
!138 = distinct !{!138, !17, !38}
!139 = distinct !{!139, !17, !38, !39}
!140 = distinct !{!140, !41}
!141 = distinct !{!141, !17, !38}
!142 = distinct !{!142, !41}
!143 = distinct !{!143, !17, !38, !39}
!144 = distinct !{!144, !41}
!145 = distinct !{!145, !17, !38}
!146 = distinct !{!146, !17}
!147 = !{!"branch_weights", !"expected", i32 2112872, i32 2145370776}
!148 = distinct !{!148, !17}
!149 = distinct !{!149, !17}
!150 = distinct !{!150, !17}
!151 = !{i64 2155917336}
!152 = !{i64 2155917498}
!153 = distinct !{!153, !41}
!154 = !{!"branch_weights", !"expected", i32 1430761, i32 2146052887}
!155 = distinct !{!155, !41}
!156 = distinct !{!156, !17, !38, !39}
!157 = distinct !{!157, !17, !38}
!158 = distinct !{!158, !17}
!159 = distinct !{!159, !17, !38, !39}
!160 = distinct !{!160, !17, !39, !38}
!161 = distinct !{!161, !17}
!162 = distinct !{!162, !17}
!163 = distinct !{!163, !41}
!164 = distinct !{!164, !41}
!165 = !{i64 2155952883}
!166 = distinct !{!166, !41}
!167 = distinct !{!167, !17}
!168 = !{!169, !171}
!169 = distinct !{!169, !170, !"memcpy.inline: argument 0"}
!170 = distinct !{!170, !"memcpy.inline"}
!171 = distinct !{!171, !170, !"memcpy.inline: argument 1"}
!172 = distinct !{!172, !17}
!173 = distinct !{!173, !17}
!174 = distinct !{!174, !17}
!175 = !{!176, !176, i64 0}
!176 = !{!"short", !9, i64 0}
!177 = distinct !{!177, !17}
!178 = distinct !{!178, !17, !38, !39}
!179 = !{!"branch_weights", i32 4, i32 28}
!180 = distinct !{!180, !17, !38, !39}
!181 = distinct !{!181, !17, !39, !38}
!182 = distinct !{!182, !17}
!183 = distinct !{!183, !17, !38, !39}
!184 = distinct !{!184, !17, !39, !38}
!185 = distinct !{!185, !17, !38, !39}
!186 = distinct !{!186, !17, !39, !38}
!187 = distinct !{!187, !17}
!188 = distinct !{!188, !17}
!189 = distinct !{!189, !17}
!190 = distinct !{!190, !41}
!191 = distinct !{!191, !17}
!192 = distinct !{!192, !17}
!193 = distinct !{!193, !17}
!194 = distinct !{!194, !17, !38, !39}
!195 = distinct !{!195, !17, !39, !38}
!196 = distinct !{!196, !17}
!197 = distinct !{!197, !17, !38, !39}
!198 = distinct !{!198, !17, !39, !38}
!199 = distinct !{!199, !17, !38, !39}
!200 = distinct !{!200, !17, !39, !38}
!201 = distinct !{!201, !41}
!202 = distinct !{!202, !17}
!203 = distinct !{!203, !17}
!204 = distinct !{!204, !17, !38, !39}
!205 = distinct !{!205, !17, !39, !38}
!206 = distinct !{!206, !17}
!207 = distinct !{!207, !17}
!208 = !{!209, !209, i64 0}
!209 = !{!"p1 omnipotent char", !22, i64 0}
!210 = distinct !{!210, !17}
!211 = distinct !{!211, !17}
!212 = distinct !{!212, !17}
!213 = distinct !{!213, !17}
!214 = distinct !{!214, !41}
!215 = distinct !{!215, !17}
!216 = distinct !{!216, !17}
!217 = !{ptr @power_cache_get_power}
!218 = distinct !{!218, !17}
!219 = distinct !{!219, !17, !38, !39}
!220 = distinct !{!220, !41}
!221 = distinct !{!221, !17, !38}
!222 = distinct !{!222, !17, !38, !39}
!223 = distinct !{!223, !41}
!224 = distinct !{!224, !17, !38}
!225 = distinct !{!225, !17}
!226 = distinct !{!226, !17}
!227 = distinct !{!227, !17}
!228 = !{!229, !12, i64 16}
!229 = !{!"RString", !14, i64 0, !12, i64 16, !9, i64 24}
!230 = !{i64 2155981507}
!231 = distinct !{!231, !41}
!232 = !{i64 2155981794}
!233 = distinct !{!233, !41}
!234 = !{i64 2155982081}
!235 = distinct !{!235, !41}
!236 = !{ptr @rb_usascii_str_new, ptr @rb_usascii_str_new_static}
!237 = distinct !{null}
!238 = distinct !{!238, !41}
!239 = distinct !{!239, !17}
!240 = distinct !{!240, !17}
!241 = distinct !{!241, !17}
!242 = !{!243, !8, i64 0}
!243 = !{!"big2str_struct", !8, i64 0, !8, i64 4, !244, i64 8, !8, i64 16, !12, i64 24, !209, i64 32}
!244 = !{!"long long", !9, i64 0}
!245 = !{!243, !8, i64 4}
!246 = !{!243, !244, i64 8}
!247 = !{!243, !12, i64 24}
!248 = !{!243, !209, i64 32}
!249 = distinct !{!249, !17}
!250 = distinct !{null, null}
!251 = !{i64 2156008283}
!252 = !{i64 2156008457}
!253 = distinct !{!253, !17}
!254 = distinct !{null, null}
!255 = distinct !{!255, !41}
!256 = distinct !{!256, !17}
!257 = distinct !{!257, !41}
!258 = distinct !{!258, !17}
!259 = distinct !{!259, !41}
!260 = distinct !{!260, !41}
!261 = distinct !{!261, !17}
!262 = distinct !{!262, !17}
!263 = distinct !{!263, !17}
!264 = distinct !{!264, !17}
!265 = !{!266, !267, i64 16}
!266 = !{!"RFloat", !14, i64 0, !267, i64 16}
!267 = !{!"double", !9, i64 0}
!268 = distinct !{!268, !41}
!269 = distinct !{!269, !17}
!270 = distinct !{!270, !17}
!271 = distinct !{!271, !17}
!272 = !{ptr @rb_integer_float_cmp}
!273 = distinct !{!273, !41}
!274 = !{ptr @rb_integer_float_eq}
!275 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!276 = distinct !{!276, !41}
!277 = distinct !{!277, !17, !38, !39}
!278 = distinct !{!278, !17, !39, !38}
!279 = distinct !{!279, !17, !38, !39}
!280 = distinct !{!280, !17, !39, !38}
!281 = distinct !{!281, !41}
!282 = distinct !{!282, !41}
!283 = distinct !{!283, !38, !39}
!284 = distinct !{!284, !17}
!285 = distinct !{!285, !38}
!286 = distinct !{!286, !17}
!287 = distinct !{!287, !17, !38, !39}
!288 = distinct !{!288, !17, !39, !38}
!289 = !{i64 2156050734}
!290 = distinct !{!290, !41}
!291 = distinct !{!291, !38, !39}
!292 = distinct !{!292, !17}
!293 = distinct !{!293, !38}
!294 = distinct !{!294, !17}
!295 = !{i64 2156064489}
!296 = distinct !{!296, !41}
!297 = distinct !{!297, !17, !38, !39}
!298 = distinct !{!298, !41}
!299 = distinct !{!299, !17, !38}
!300 = distinct !{!300, !41}
!301 = distinct !{!301, !41}
!302 = !{i64 2156066183}
!303 = !{i64 2156066345}
!304 = distinct !{!304, !41}
!305 = distinct !{!305, !41}
!306 = distinct !{!306, !17}
!307 = distinct !{!307, !41}
!308 = distinct !{!308, !17}
!309 = distinct !{!309, !17}
!310 = distinct !{!310, !17, !38, !39}
!311 = distinct !{!311, !17, !38}
!312 = distinct !{!312, !41}
!313 = distinct !{!313, !41}
!314 = distinct !{!314, !41}
!315 = distinct !{!315, !17}
!316 = distinct !{!316, !41}
!317 = !{i64 2156065765}
!318 = distinct !{!318, !17}
!319 = distinct !{!319, !17, !38, !39}
!320 = distinct !{!320, !41}
!321 = distinct !{!321, !17}
!322 = distinct !{!322, !17, !38, !39}
!323 = distinct !{!323, !17, !38}
!324 = distinct !{!324, !17, !39, !38}
!325 = distinct !{!325, !17, !38, !39}
!326 = distinct !{!326, !17, !39, !38}
!327 = !{i64 2156087252}
!328 = distinct !{!328, !41}
!329 = distinct !{!329, !17, !38, !39}
!330 = distinct !{!330, !41}
!331 = distinct !{!331, !17, !38, !39}
!332 = distinct !{!332, !41}
!333 = distinct !{!333, !17, !38}
!334 = distinct !{!334, !17, !38}
!335 = distinct !{!335, !17, !38, !39}
!336 = distinct !{!336, !17, !39, !38}
!337 = !{i64 2156087635}
!338 = !{i64 2156087797}
!339 = distinct !{!339, !41}
!340 = distinct !{!340, !17}
!341 = distinct !{!341, !17, !38, !39}
!342 = distinct !{!342, !17, !39, !38}
!343 = distinct !{!343, !17}
!344 = distinct !{!344, !17}
!345 = distinct !{!345, !17, !38, !39}
!346 = distinct !{!346, !41}
!347 = distinct !{!347, !17, !38}
!348 = distinct !{!348, !17, !38, !39}
!349 = distinct !{!349, !17, !39, !38}
!350 = !{i64 2156096949}
!351 = distinct !{!351, !41}
!352 = distinct !{!352, !17, !38, !39}
!353 = distinct !{!353, !41}
!354 = distinct !{!354, !17, !38, !39}
!355 = distinct !{!355, !41}
!356 = distinct !{!356, !17, !38}
!357 = distinct !{!357, !17, !38}
!358 = distinct !{!358, !17, !38, !39}
!359 = distinct !{!359, !17, !39, !38}
!360 = !{i64 2156097332}
!361 = !{i64 2156097494}
!362 = distinct !{!362, !41}
!363 = distinct !{!363, !41}
!364 = distinct !{!364, !41}
!365 = distinct !{!365, !17}
!366 = distinct !{!366, !17, !38, !39}
!367 = distinct !{!367, !41}
!368 = distinct !{!368, !17}
!369 = distinct !{!369, !17, !38, !39}
!370 = distinct !{!370, !17, !38}
!371 = distinct !{!371, !17, !39, !38}
!372 = distinct !{!372, !17, !38, !39}
!373 = distinct !{!373, !17, !39, !38}
!374 = !{i64 2156101133}
!375 = distinct !{!375, !41}
!376 = distinct !{!376, !17, !38, !39}
!377 = distinct !{!377, !41}
!378 = distinct !{!378, !17, !38, !39}
!379 = distinct !{!379, !41}
!380 = distinct !{!380, !17, !38}
!381 = distinct !{!381, !17, !38}
!382 = distinct !{!382, !17, !38, !39}
!383 = distinct !{!383, !17, !39, !38}
!384 = !{i64 2156101516}
!385 = !{i64 2156101678}
!386 = distinct !{!386, !41}
!387 = distinct !{!387, !41}
!388 = distinct !{!388, !41}
!389 = distinct !{!389, !41}
!390 = distinct !{!390, !17, !38, !39}
!391 = distinct !{!391, !17, !38}
!392 = distinct !{!392, !17, !38, !39}
!393 = distinct !{!393, !17, !39, !38}
!394 = !{i64 2155994311}
!395 = !{!396, !398}
!396 = distinct !{!396, !397, !"memcpy.inline: argument 0"}
!397 = distinct !{!397, !"memcpy.inline"}
!398 = distinct !{!398, !397, !"memcpy.inline: argument 1"}
!399 = distinct !{!399, !41}
!400 = distinct !{!400, !41}
!401 = distinct !{!401, !17}
end_hunk_1
