Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/psdinput?download=true
inline.NumInlined: 4893
inline.NumDeleted: 1786
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN11OpenImageIO4v3_18PSDInput22load_global_additionalEv:bb.a
  %i.x = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.b, i64 noundef 8, i64 noundef 1) ; 2 uses
  %.promoted.i = load i64, ptr %i.b, align 8
  %i.y = call i64 @llvm.bswap.i64(i64 %.promoted.i)
  %.3 = select i1 %i.x, i64 %i.y, i64 %.03037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  br label %bb.j

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.z = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1) ; 2 uses
  %.promoted.i28 = load i32, ptr %i.a, align 4
  %i.aa = call i32 @llvm.bswap.i32(i32 %.promoted.i28)
  %i.ab = zext i32 %i.aa to i64
  %.4 = select i1 %i.z, i64 %i.ab, i64 %.03037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %bb.j

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit
  %.sink = phi i64 [ -12, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit ], [ -16, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit ]
  %.131 = phi i64 [ %.4, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit ], [ %.3, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit ] ; 3 uses
  %.119.in = phi i1 [ %i.z, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit ], [ %i.x, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit ]
  %i.ac = add i64 %.01638, %.sink                 ; 2 uses
  %i.ad = load i32, ptr %i.d, align 1
  %i.ae = icmp ne i32 %i.ad, 909210188
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load i32, ptr %i.d, align 1
  %i.ai = icmp ne i32 %i.ah, 842232396
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.am = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput17load_layers_16_32Em(ptr noundef nonnull align 8 dereferenceable(840) %0, i64 noundef %.131)
  %i.an = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %.neg26 = add i64 %i.al, %i.ac
  %i.ao = sub i64 %.neg26, %i.an
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = add i64 %.131, 3
  %i.aq = and i64 %i.ap, -4                       ; 3 uses
  %i.ar = sub i64 %i.ac, %i.aq
  %i.as = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.aq, i32 noundef 1)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.232 = phi i64 [ %.131, %bb.l ], [ %i.aq, %bb.m ]
  %.pn = phi i1 [ %i.am, %bb.l ], [ %i.as, %bb.m ]
  %.2 = phi i64 [ %i.ao, %bb.l ], [ %i.ar, %bb.m ] ; 2 uses
  %.220.in.in = and i1 %.119.in, %.pn             ; 2 uses
  %i.at = icmp ugt i64 %.2, 11
  %i.au = select i1 %.220.in.in, i1 %i.at, i1 false
  br i1 %i.au, label %bb.c, label %._crit_edge, !llvm.loop !470

._crit_edge:                                      ; preds = %bb.n, %bb.b
  %.018.lcssa = phi i1 [ true, %bb.b ], [ %.220.in.in, %bb.n ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !223
  %i.ax = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.aw, i32 noundef 0)
  %i.ay = and i1 %.018.lcssa, %i.ax
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.c, %._crit_edge, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ %i.ay, %._crit_edge ], [ false, %bb.c ], [ false, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i1 [ %.0, %.loopexit ], [ true, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput15load_image_dataEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !237
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !238
  %i.g = zext i16 %i.f to i32
  %i.h = mul i32 %i.d, %i.g
  %i.i = add i32 %i.h, 7
  %i.j = lshr i32 %i.i, 3                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.k = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1)
  br i1 %i.k, label %bb.b, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %.promoted.i = load i16, ptr %i.a, align 2, !tbaa !76 ; 2 uses
  %i.l = call i16 @llvm.bswap.i16(i16 %.promoted.i) ; 3 uses
  store i16 %i.l, ptr %i.b, align 2, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %or.cond = icmp ugt i16 %i.l, 1
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJtEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.94, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 662
  %i.o = load i16, ptr %i.n, align 2, !tbaa !239
  %i.p = zext i16 %i.o to i64
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.p)
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !240  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !240  ; 4 uses
  %.not65 = icmp eq ptr %i.q, %i.s
  br i1 %.not65, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.u = icmp eq i16 %.promoted.i, 256
  br i1 %i.u, label %.lr.ph.split.preheader, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = load i32, ptr %i.c, align 4, !tbaa !237
  %i.w = load i32, ptr %i.t, align 8, !tbaa !241  ; 2 uses
  %i.x = mul i32 %i.w, %i.j
  %i.y = zext i32 %i.x to i64
  br label %.critedge.us

.critedge.us:                                     ; preds = %.critedge.us, %.lr.ph.split.us
  %.05167.us = phi i16 [ 0, %.lr.ph.split.us ], [ %i.ac, %.critedge.us ] ; 2 uses
  %.sroa.060.066.us = phi ptr [ %i.q, %.lr.ph.split.us ], [ %i.af, %.critedge.us ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 28
  store i32 %i.v, ptr %i.z, align 4, !tbaa !252
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 32
  store i32 %i.w, ptr %i.aa, align 8, !tbaa !253
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 24
  store i16 0, ptr %i.ab, align 8, !tbaa !254
  %i.ac = add i16 %.05167.us, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 4
  store i16 %.05167.us, ptr %i.ad, align 4, !tbaa !255
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 8
  store i64 %i.y, ptr %i.ae, align 8, !tbaa !256
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 112 ; 2 uses
  %.not.us = icmp eq ptr %i.af, %i.s
  br i1 %.not.us, label %.critedge55, label %.critedge.us

.lr.ph.split.preheader:                           ; preds = %.lr.ph, %.critedge
  %.05167 = phi i16 [ %i.ar, %.critedge ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.060.066 = phi ptr [ %i.as, %.critedge ], [ %i.q, %.lr.ph ] ; 7 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !237
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 28
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !252
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !241 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 32
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !253
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 24
  store i16 1, ptr %i.ak, align 8, !tbaa !254
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 4
  store i16 %.05167, ptr %i.al, align 4, !tbaa !255
  %i.am = mul i32 %i.ai, %i.j
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !256
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 64
  %i.aq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput16read_rle_lengthsEjRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ap)
  br i1 %i.aq, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %.lr.ph.split.preheader
  %i.ar = add i16 %.05167, 1
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 112 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.s
  br i1 %.not, label %.critedge55.loopexit, label %.lr.ph.split.preheader, !llvm.loop !471

.critedge55.loopexit:                             ; preds = %.critedge
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !240
  %.pre86 = load ptr, ptr %i.r, align 8, !tbaa !240
  br label %.critedge55

.critedge55:                                      ; preds = %.critedge.us, %.critedge55.loopexit
  %i.at = phi ptr [ %.pre86, %.critedge55.loopexit ], [ %i.s, %.critedge.us ] ; 2 uses
  %i.au = phi ptr [ %.pre, %.critedge55.loopexit ], [ %i.q, %.critedge.us ] ; 2 uses
  %.not6374 = icmp eq ptr %i.au, %i.at
  br i1 %.not6374, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %.critedge55
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.aw = zext nneg i32 %i.j to i64               ; 4 uses
  %trunc = trunc nuw i16 %i.l to i1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ax = shl nuw nsw <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %i.ay = mul nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add nsw <2 x i64> %i.ax, %broadcast.splat
  %invariant.op115 = add nsw <2 x i64> %i.ax, %i.ax
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph77, %bb.m
  %.04876 = phi i1 [ true, %.lr.ph77 ], [ %i.ej, %bb.m ]
  %.sroa.056.075 = phi ptr [ %i.au, %.lr.ph77 ], [ %i.ek, %bb.m ] ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 88 ; 3 uses
  %i.ba = load i32, ptr %i.av, align 8, !tbaa !241
  %i.bb = zext i32 %i.ba to i64                   ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 96 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !257 ; 2 uses
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !162 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3                 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %i.bb
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bk = sub nuw nsw i64 %i.bb, %i.bi
  call void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 noundef %i.bk)
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.g:                                             ; preds = %bb.e
  %i.bl = icmp ugt i64 %i.bi, %i.bb
  br i1 %i.bl, label %bb.h, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bb ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, %i.bm
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.h
  store ptr %i.bm, ptr %i.bc, align 8, !tbaa !257
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %bb.f, %bb.g, %bb.h, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  %i.bn = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0) ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 16
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !258
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !237
  %i.bq = load i16, ptr %i.e, align 8, !tbaa !238
  %i.br = zext i16 %i.bq to i32
  %i.bs = mul i32 %i.bp, %i.br
  %i.bt = add i32 %i.bs, 7
  %i.bu = lshr i32 %i.bt, 3
  store i32 %i.bu, ptr %.sroa.056.075, align 8, !tbaa !259
  %i.bv = load ptr, ptr %i.az, align 8, !tbaa !162 ; 8 uses
  store i64 %i.bn, ptr %i.bv, align 8, !tbaa !74
  %i.bw = load i32, ptr %i.av, align 8, !tbaa !241 ; 5 uses
  %i.bx = icmp ugt i32 %i.bw, 1                   ; 2 uses
  br i1 %trunc, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  br i1 %i.bx, label %.lr.ph72.preheader, label %._crit_edge73

.lr.ph72.preheader:                               ; preds = %bb.i
  %wide.trip.count84 = zext i32 %i.bw to i64      ; 2 uses
  %i.by = add nsw i64 %wide.trip.count84, -1      ; 2 uses
  %min.iters.check = icmp ult i32 %i.bw, 5
  br i1 %min.iters.check, label %.lr.ph72.preheader110, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph72.preheader
  %n.vec = and i64 %i.by, -4                      ; 4 uses
  %i.bz = mul nsw i64 %n.vec, %i.aw
  %i.ca = add i64 %i.bn, %i.bz
  %i.cb = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert107 = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat108 = shufflevector <2 x i64> %broadcast.splatinsert107, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat108, %i.ay
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %i.cc = add nsw <2 x i64> %vec.ind, %broadcast.splat
  %.reass = add nsw <2 x i64> %vec.ind, %invariant.op
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store <2 x i64> %i.cc, ptr %i.ce, align 8, !tbaa !74
  store <2 x i64> %.reass, ptr %i.cf, align 8, !tbaa !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add nsw <2 x i64> %vec.ind, %invariant.op115
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !472

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge73, label %.lr.ph72.preheader110

.lr.ph72.preheader110:                            ; preds = %.lr.ph72.preheader, %middle.block
  %.ph = phi i64 [ %i.bn, %.lr.ph72.preheader ], [ %i.ca, %middle.block ]
  %indvars.iv81.ph = phi i64 [ 1, %.lr.ph72.preheader ], [ %i.cb, %middle.block ]
  br label %.lr.ph72

._crit_edge73:                                    ; preds = %.lr.ph72, %middle.block, %bb.i
  %i.ch = load ptr, ptr %i.bc, align 8, !tbaa !262
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -8
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !74
  %i.ck = add nsw i64 %i.cj, %i.aw
  br label %bb.m

.lr.ph72:                                         ; preds = %.lr.ph72.preheader110, %.lr.ph72
  %i.cl = phi i64 [ %i.cm, %.lr.ph72 ], [ %.ph, %.lr.ph72.preheader110 ]
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %.lr.ph72 ], [ %indvars.iv81.ph, %.lr.ph72.preheader110 ] ; 2 uses
  %i.cm = add nsw i64 %i.cl, %i.aw                ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv81
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !74
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge73, label %.lr.ph72, !llvm.loop !473

bb.j:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  br i1 %i.bx, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !166 ; 5 uses
  %wide.trip.count = zext i32 %i.bw to i64
  %i.cq = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.cq, 3                    ; 3 uses
  %i.cr = add i32 %i.bw, -2
  %i.cs = icmp ult i32 %i.cr, 3
  br i1 %i.cs, label %.epil.preheader, label %.lr.ph69.new

.lr.ph69.new:                                     ; preds = %.lr.ph69
  %unroll_iter = and i64 %i.cq, -4
  br label %bb.l

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph69
  %.epil.init = phi i64 [ %i.bn, %.lr.ph69 ], [ %i.eg, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph69 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod113 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod113)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %i.ct = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.cy, %bb.k ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.k ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.cu = getelementptr [4 x i8], ptr %i.cp, i64 %indvars.iv.epil
  %i.cv = getelementptr i8, ptr %i.cu, i64 -4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !55
  %i.cx = zext i32 %i.cw to i64
  %i.cy = add nsw i64 %i.ct, %i.cx                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.epil
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !74
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.k, !llvm.loop !474

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.k, %bb.j
  %i.da = load ptr, ptr %i.bc, align 8, !tbaa !262
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !74
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 72
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !264
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !55
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nsw i64 %i.dc, %i.dh
  br label %bb.m

bb.l:                                             ; preds = %bb.l, %.lr.ph69.new
  %i.dj = phi i64 [ %i.bn, %.lr.ph69.new ], [ %i.eg, %bb.l ]
  %indvars.iv = phi i64 [ 1, %.lr.ph69.new ], [ %indvars.iv.next.3, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph69.new ], [ %niter.next.3, %bb.l ]
  %i.dk = getelementptr [4 x i8], ptr %i.cp, i64 %indvars.iv
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !55
  %i.dn = zext i32 %i.dm to i64
  %i.do = add nsw i64 %i.dj, %i.dn                ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.cp, i64 %indvars.iv.next
  %i.dr = getelementptr i8, ptr %i.dq, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !55
  %i.dt = zext i32 %i.ds to i64
  %i.du = add nsw i64 %i.do, %i.dt                ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !74
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.dw = getelementptr [4 x i8], ptr %i.cp, i64 %indvars.iv.next.1
  %i.dx = getelementptr i8, ptr %i.dw, i64 -4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !55
  %i.dz = zext i32 %i.dy to i64
  %i.ea = add nsw i64 %i.du, %i.dz                ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next.1
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !74
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ec = getelementptr [4 x i8], ptr %i.cp, i64 %indvars.iv.next.2
  %i.ed = getelementptr i8, ptr %i.ec, i64 -4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !55
  %i.ef = zext i32 %i.ee to i64
  %i.eg = add nsw i64 %i.ea, %i.ef                ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next.2
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !74
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !475

bb.m:                                             ; preds = %._crit_edge, %._crit_edge73
  %.sink104 = phi i64 [ %i.di, %._crit_edge ], [ %i.ck, %._crit_edge73 ]
  %i.ei = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %.sink104, i32 noundef 0)
  %i.ej = select i1 %i.ei, i1 %.04876, i1 false   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 112 ; 2 uses
  %.not63 = icmp eq ptr %i.ek, %i.at
  br i1 %.not63, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %.lr.ph.split.preheader, %bb.m, %bb.d, %.critedge55, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit, %bb.c
  %.3 = phi i1 [ false, %bb.c ], [ %i.ej, %bb.m ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit ], [ true, %.critedge55 ], [ true, %bb.d ], [ false, %.lr.ph.split.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11OpenImageIO4v3_18PSDInput13set_type_descEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(840) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load i16, ptr %i.a, align 8, !tbaa !238
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.c)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.f = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.c, i1 true) ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 6
  %switch.maskindex = trunc nuw nsw i32 %i.f to i8
  %switch.shifted = lshr i8 57, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.g, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %.split
  %i.h = zext nneg i32 %i.f to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN11OpenImageIO4v3_18PSDInput13set_type_descEv, i64 %i.h
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 572
  store i64 %switch.ext, ptr %i.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %.split, %switch.lookup, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN11OpenImageIO4v3_18PSDInput5setupEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 674 ; 4 uses
  %i.f = load i16, ptr %i.e, align 2, !tbaa !205  ; 4 uses
  %i.g = icmp eq i16 %i.f, 7
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 662
  %i.i = load i16, ptr %i.h, align 2, !tbaa !239
  %i.j = zext i16 %i.i to i32                     ; 3 uses
  store i32 %i.j, ptr %i.c, align 4, !tbaa !55
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = zext i16 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_18PSDInput18mode_channel_countE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !55   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 568
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18PSDInput22is_additional_info_psbEPKc:bb.a
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 80), align 16, !tbaa !84
  %i.bj = load i32, ptr %i.bi, align 1
  %i.bk = load i32, ptr %1, align 1
  %i.bl = icmp ne i32 %i.bj, %i.bk
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 88), align 8, !tbaa !84
  %i.bp = load i32, ptr %i.bo, align 1
  %i.bq = load i32, ptr %1, align 1
  %i.br = icmp ne i32 %i.bp, %i.bq
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 96), align 16, !tbaa !84
  %i.bv = load i32, ptr %i.bu, align 1
  %i.bw = load i32, ptr %1, align 1
  %i.bx = icmp ne i32 %i.bv, %i.bw
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 104), align 8, !tbaa !84
  %i.cb = load i32, ptr %i.ca, align 1
  %i.cc = load i32, ptr %1, align 1
  %i.cd = icmp ne i32 %i.cb, %i.cc
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 112), align 16, !tbaa !84
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = load i32, ptr %1, align 1
  %i.cj = icmp ne i32 %i.ch, %i.ci
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_18PSDInput19additional_info_psbE, i64 120), align 8, !tbaa !84
  %i.cn = load i32, ptr %i.cm, align 1
  %i.co = load i32, ptr %1, align 1
  %i.cp = icmp ne i32 %i.cn, %i.co
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ true, %bb.i ], [ true, %bb.a ], [ true, %bb.b ], [ %i.cr, %bb.p ], [ true, %bb.c ], [ true, %bb.k ], [ true, %bb.d ], [ true, %bb.o ], [ true, %bb.e ], [ true, %bb.j ], [ true, %bb.f ], [ true, %bb.n ], [ true, %bb.g ], [ true, %bb.l ], [ true, %bb.h ], [ true, %bb.m ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput18load_layer_channelERNS1_5LayerERNS1_11ChannelInfoE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = tail call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !256
  %i.e = icmp ugt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZNSt6vectorIcSaIcEED2Ev.exit137

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.f = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1)
  br i1 %i.f, label %bb.c, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit137

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %.promoted.i = load i16, ptr %i.a, align 2, !tbaa !76
  %i.h = call i16 @llvm.bswap.i16(i16 %.promoted.i)
  store i16 %i.h, ptr %i.g, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.pr = load i64, ptr %i.c, align 8, !tbaa !256
  %i.i = icmp ult i64 %.pr, 3
  br i1 %i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit137, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i16, ptr %i.j, align 4, !tbaa !255
  %i.l = icmp eq i16 %i.k, -2
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.o = load i32, ptr %i.n, align 8, !tbaa !616
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.q = load i32, ptr %i.p, align 8, !tbaa !617
  %i.r = sub nsw i32 %i.o, %i.q
  %i.s = call i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.u = load i32, ptr %i.t, align 4, !tbaa !618
  %i.v = load i32, ptr %i.m, align 4, !tbaa !619
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = call i32 @llvm.abs.i32(i32 %i.w, i1 true)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !620
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !621
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.088 = phi i32 [ %i.s, %bb.e ], [ %i.z, %bb.f ] ; 5 uses
  %.087 = phi i32 [ %i.x, %bb.e ], [ %i.ab, %bb.f ] ; 13 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.088, ptr %i.ac, align 4, !tbaa !252
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %.087, ptr %i.ad, align 8, !tbaa !253
  %i.ae = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !258
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  %i.ah = zext i32 %.087 to i64                   ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !257 ; 2 uses
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !162 ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 3                 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.ah
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = sub nuw nsw i64 %i.ah, %i.ao
  call void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 noundef %i.aq)
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = icmp ugt i64 %i.ao, %i.ah
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ah ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.as
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.j
  store ptr %i.as, ptr %i.ai, align 8, !tbaa !257
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.au = load i16, ptr %i.at, align 8, !tbaa !238
  %i.av = zext i16 %i.au to i32
  %i.aw = mul i32 %.088, %i.av
  %i.ax = add i32 %i.aw, 7
  %i.ay = lshr i32 %i.ax, 3                       ; 3 uses
  store i32 %i.ay, ptr %2, align 8, !tbaa !259
  %i.az = load i16, ptr %i.g, align 8, !tbaa !254
  switch i16 %i.az, label %bb.ar [
    i16 0, label %bb.k
    i16 1, label %bb.m
    i16 2, label %bb.r
    i16 3, label %bb.ae
  ]

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %.not101 = icmp eq i32 %.087, 0
  br i1 %.not101, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = load i64, ptr %i.af, align 8, !tbaa !258 ; 4 uses
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !162 ; 3 uses
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !74
  %.not180 = icmp eq i32 %.087, 1
  br i1 %.not180, label %.loopexit, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.l
  %i.bc = zext nneg i32 %i.ay to i64              ; 3 uses
  %i.bd = add nsw i64 %i.ah, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %.087, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph178
  %n.vec = and i64 %i.bd, -4                      ; 4 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bc, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.be = mul nsw i64 %n.vec, %i.bc
  %i.bf = add i64 %i.ba, %i.be
  %i.bg = or disjoint i64 %n.vec, 1
  %i.bh = shl nuw nsw <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %broadcast.splatinsert205 = insertelement <2 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat206 = shufflevector <2 x i64> %broadcast.splatinsert205, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bi = mul nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %induction = add nsw <2 x i64> %broadcast.splat206, %i.bi
  %invariant.op = add nsw <2 x i64> %i.bh, %broadcast.splat
  %invariant.op209 = add nsw <2 x i64> %i.bh, %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %i.bj = add nsw <2 x i64> %vec.ind, %broadcast.splat
  %.reass = add nsw <2 x i64> %vec.ind, %invariant.op
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store <2 x i64> %i.bj, ptr %i.bl, align 8, !tbaa !74
  store <2 x i64> %.reass, ptr %i.bm, align 8, !tbaa !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add nsw <2 x i64> %vec.ind, %invariant.op209
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !612

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph178, %middle.block
  %.ph = phi i64 [ %i.ba, %.lr.ph178 ], [ %i.bf, %middle.block ]
  %indvars.iv182.ph = phi i64 [ 1, %.lr.ph178 ], [ %i.bg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bo = phi i64 [ %i.bp, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %scalar.ph ], [ %indvars.iv182.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bp = add nsw i64 %i.bo, %i.bc                ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv182
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !74
  %indvars.iv.next183 = add nuw nsw i64 %indvars.iv182, 1 ; 2 uses
  %exitcond186.not = icmp eq i64 %indvars.iv.next183, %i.ah
  br i1 %exitcond186.not, label %.loopexit, label %scalar.ph, !llvm.loop !613

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.l, %bb.k
  %i.br = mul i32 %i.ay, %.087
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  store i64 %i.bs, ptr %i.c, align 8, !tbaa !256
  %i.bt = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.bs, i32 noundef 1)
  br i1 %i.bt, label %_ZNSt6vectorIcSaIcEED2Ev.exit112, label %_ZNSt6vectorIcSaIcEED2Ev.exit137

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput16read_rle_lengthsEjRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %.087, ptr noundef nonnull align 8 dereferenceable(24) %i.bu)
  br i1 %i.bv, label %bb.n, label %_ZNSt6vectorIcSaIcEED2Ev.exit137

bb.n:                                             ; preds = %bb.m
  %i.bw = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0) ; 5 uses
  store i64 %i.bw, ptr %i.af, align 8, !tbaa !258
  %i.bx = load i64, ptr %i.c, align 8, !tbaa !256
  %.neg = sub i64 %i.b, %i.bw
  %i.by = add i64 %.neg, %i.bx
  store i64 %i.by, ptr %i.c, align 8, !tbaa !256
  %.not = icmp eq i32 %.087, 0
  br i1 %.not, label %.loopexit175, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = load ptr, ptr %i.ag, align 8, !tbaa !162 ; 6 uses
  store i64 %i.bw, ptr %i.bz, align 8, !tbaa !74
  %.not179 = icmp eq i32 %.087, 1
  br i1 %.not179, label %.loopexit175, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !166 ; 5 uses
  %i.cb = add nsw i64 %i.ah, -1                   ; 2 uses
  %xtraiter = and i64 %i.cb, 3                    ; 3 uses
  %i.cc = add i32 %.087, -2
  %i.cd = icmp ult i32 %i.cc, 3
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cb, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.new
  %i.ce = phi i64 [ %i.bw, %.lr.ph.new ], [ %i.db, %bb.p ]
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.p ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.p ]
  %i.cf = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !55
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nsw i64 %i.ce, %i.ci                ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cl = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv.next
  %i.cm = getelementptr i8, ptr %i.cl, i64 -4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !55
  %i.co = zext i32 %i.cn to i64
  %i.cp = add nsw i64 %i.cj, %i.co                ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !74
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv.next.1
  %i.cs = getelementptr i8, ptr %i.cr, i64 -4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !55
  %i.cu = zext i32 %i.ct to i64
  %i.cv = add nsw i64 %i.cp, %i.cu                ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.1
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !74
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv.next.2
  %i.cy = getelementptr i8, ptr %i.cx, i64 -4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !55
  %i.da = zext i32 %i.cz to i64
  %i.db = add nsw i64 %i.cv, %i.da                ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next.2
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !74
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit175.loopexit.unr-lcssa, label %bb.p, !llvm.loop !614

.loopexit175.loopexit.unr-lcssa:                  ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit175, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit175.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %i.bw, %.lr.ph ], [ %i.db, %.loopexit175.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit175.loopexit.unr-lcssa ]
  %lcmp.mod208 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod208)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader
  %i.dd = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.di, %bb.q ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.q ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.q ]
  %i.de = getelementptr [4 x i8], ptr %i.ca, i64 %indvars.iv.epil
  %i.df = getelementptr i8, ptr %i.de, i64 -4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !55
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nsw i64 %i.dd, %i.dh                ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.epil
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !74
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit175, label %bb.q, !llvm.loop !615

.loopexit175:                                     ; preds = %.loopexit175.loopexit.unr-lcssa, %bb.q, %bb.o, %bb.n
  %i.dk = load i64, ptr %i.c, align 8, !tbaa !256
  %i.dl = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.dk, i32 noundef 1)
  br i1 %i.dl, label %_ZNSt6vectorIcSaIcEED2Ev.exit112, label %_ZNSt6vectorIcSaIcEED2Ev.exit137

bb.r:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %i.dm = load i64, ptr %i.c, align 8, !tbaa !256 ; 2 uses
  %i.dn = add i64 %i.dm, -2                       ; 5 uses
  store i64 %i.dn, ptr %i.c, align 8, !tbaa !256
  %i.do = icmp slt i64 %i.dn, 0
  br i1 %i.do, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.157) #41
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.r
  %.not.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %.noexc104

.noexc104:                                        ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.dp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #39 ; 5 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.dn  ; 3 uses
  store i8 0, ptr %i.dp, align 1, !tbaa !63
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 1 ; 2 uses
  %i.ds = add i64 %i.dm, -3                       ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %bb.s

bb.s:                                             ; preds = %.noexc104
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dr, i8 0, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %bb.s, %.noexc104, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.14171.0 = phi ptr [ %i.dq, %bb.s ], [ %i.dq, %.noexc104 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.sroa.0165.0 = phi ptr [ %i.dp, %bb.s ], [ %i.dp, %.noexc104 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 10 uses
  %.0.i.i.i.i.i = phi ptr [ %i.dq, %bb.s ], [ %i.dr, %.noexc104 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.du = mul i32 %.087, %.088
  %i.dv = load i16, ptr %i.at, align 8, !tbaa !238
  %i.dw = lshr i16 %i.dv, 3
  %i.dx = zext nneg i16 %i.dw to i32
  %i.dy = mul i32 %i.du, %i.dx                    ; 2 uses
  %i.dz = zext i32 %i.dy to i64                   ; 3 uses
  %.not.i.i.i.i106 = icmp eq i32 %i.dy, 0
  br i1 %.not.i.i.i.i106, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit110, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #39
          to label %.noexc109 unwind label %bb.x  ; 5 uses

.noexc109:                                        ; preds = %bb.t
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dz  ; 3 uses
  store i8 0, ptr %i.ea, align 1, !tbaa !63
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 1 ; 2 uses
  %i.ed = add nsw i64 %i.dz, -1                   ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit110, label %bb.u

bb.u:                                             ; preds = %.noexc109
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ec, i8 0, i64 %i.ed, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit110

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit110:            ; preds = %bb.u, %.noexc109, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit
  %.sroa.11162.0 = phi ptr [ %i.eb, %bb.u ], [ %i.eb, %.noexc109 ], [ null, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit ]
  %.sroa.0159.0 = phi ptr [ %i.ea, %bb.u ], [ %i.ea, %.noexc109 ], [ null, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit ]
  %.0.i.i.i.i.i107 = phi ptr [ %i.eb, %bb.u ], [ %i.ec, %.noexc109 ], [ null, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit ]
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !169 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !170
end_hunk_1
