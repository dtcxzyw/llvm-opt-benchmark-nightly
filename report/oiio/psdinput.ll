inline.NumInlined: 4893
inline.NumDeleted: 1786
begin_hunk_0_@_ZN11OpenImageIO4v3_18PSDInput22load_global_additionalEv:bb.a
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 660
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.n
  %.01638 = phi i64 [ %i.j, %.lr.ph ], [ %.2, %bb.n ]
  %.03037 = phi i64 [ 0, %.lr.ph ], [ %.232, %bb.n ] ; 2 uses
  %i.m = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
  br i1 %i.m, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 1
  %i.o = icmp ne i32 %i.n, 1296646712
  %i.p = zext i1 %i.o to i32
  %.not21 = icmp eq i32 %i.p, 0
  br i1 %.not21, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.c, align 1
  %i.r = icmp ne i32 %i.q, 875971128
  %i.s = zext i1 %i.r to i32
  %.not23 = icmp eq i32 %i.s, 0
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.90)
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.t = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1)
  br i1 %i.t, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.u = load i16, ptr %i.l, align 4, !tbaa !192
  %i.v = icmp eq i16 %i.u, 2
  br i1 %i.v, label %bb.i, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.w = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput22is_additional_info_psbEPKc(ptr nonnull align 8 poison, ptr noundef nonnull %i.d)
  br i1 %i.w, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
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
  br i1 %i.au, label %bb.c, label %._crit_edge, !llvm.loop !215

._crit_edge:                                      ; preds = %bb.n, %bb.b
  %.018.lcssa = phi i1 [ true, %bb.b ], [ %.220.in.in, %bb.n ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !195
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
  %i.b = alloca i16, align 2                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !216
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !217
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
  %.promoted.i = load i16, ptr %i.a, align 2, !tbaa !26 ; 2 uses
  %i.l = call noundef i16 @llvm.bswap.i16(i16 %.promoted.i) ; 2 uses
  store i16 %i.l, ptr %i.b, align 2, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %or.cond = icmp ugt i16 %i.l, 1
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJtEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.94, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 662
  %i.o = load i16, ptr %i.n, align 2, !tbaa !218
  %i.p = zext i16 %i.o to i64
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.p)
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !219  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !219  ; 4 uses
  %.not65 = icmp eq ptr %i.q, %i.s
  br i1 %.not65, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.u = icmp eq i16 %.promoted.i, 256
  br i1 %i.u, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.v = load i32, ptr %i.c, align 4, !tbaa !216
  %i.w = load i32, ptr %i.t, align 8, !tbaa !220  ; 2 uses
  %i.x = mul i32 %i.w, %i.j
  %i.y = zext i32 %i.x to i64
  br label %.critedge.us

.critedge.us:                                     ; preds = %.critedge.us, %.lr.ph.split.us
  %.04967.us = phi i16 [ 0, %.lr.ph.split.us ], [ %i.ac, %.critedge.us ] ; 2 uses
  %.sroa.060.066.us = phi ptr [ %i.q, %.lr.ph.split.us ], [ %i.af, %.critedge.us ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 28
  store i32 %i.v, ptr %i.z, align 4, !tbaa !221
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 32
  store i32 %i.w, ptr %i.aa, align 8, !tbaa !232
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 24
  store i16 0, ptr %i.ab, align 8, !tbaa !233
  %i.ac = add i16 %.04967.us, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 4
  store i16 %.04967.us, ptr %i.ad, align 4, !tbaa !234
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 8
  store i64 %i.y, ptr %i.ae, align 8, !tbaa !235
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.060.066.us, i64 112 ; 2 uses
  %.not.us = icmp eq ptr %i.af, %i.s
  br i1 %.not.us, label %.critedge55, label %.critedge.us

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge
  %.04967 = phi i16 [ %i.al, %.critedge ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.060.066 = phi ptr [ %i.at, %.critedge ], [ %i.q, %.lr.ph ] ; 7 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !216
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 28
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !221
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !220 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 32
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !232
  %1 = load i16, ptr %i.b, align 2, !tbaa !26     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 24
  store i16 %1, ptr %i.ak, align 8, !tbaa !233
  %i.al = add i16 %.04967, 1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 4
  store i16 %.04967, ptr %i.am, align 4, !tbaa !234
  %i.an = mul i32 %i.ai, %i.j
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !235
  %i.aq = icmp eq i16 %1, 1
  br i1 %i.aq, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph.split
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 64
  %i.as = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput16read_rle_lengthsEjRSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(840) %0, i32 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ar)
  br i1 %i.as, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.e, %.lr.ph.split
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.060.066, i64 112 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.s
  br i1 %.not, label %.critedge55.loopexit, label %.lr.ph.split, !llvm.loop !236

.critedge55.loopexit:                             ; preds = %.critedge
  %.pre.a = load ptr, ptr %i.m, align 8, !tbaa !219
  %.pre86 = load ptr, ptr %i.r, align 8, !tbaa !219
  br label %.critedge55

.critedge55:                                      ; preds = %.critedge.us, %.critedge55.loopexit
  %i.au = phi ptr [ %.pre86, %.critedge55.loopexit ], [ %i.s, %.critedge.us ] ; 2 uses
  %i.av = phi ptr [ %.pre.a, %.critedge55.loopexit ], [ %i.q, %.critedge.us ] ; 2 uses
  %.not6374 = icmp eq ptr %i.av, %i.au
  br i1 %.not6374, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %.critedge55
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.ax = zext nneg i32 %i.j to i64               ; 4 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ay = shl nuw nsw <2 x i64> %broadcast.splat, splat (i64 1) ; 3 uses
  %i.az = mul nuw nsw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> %i.ay, %broadcast.splat
  %invariant.op113 = add <2 x i64> %i.ay, %i.ay
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph77, %bb.n
  %.05076 = phi i1 [ true, %.lr.ph77 ], [ %.151, %bb.n ] ; 2 uses
  %.sroa.056.075 = phi ptr [ %i.av, %.lr.ph77 ], [ %i.eo, %bb.n ] ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 88 ; 4 uses
  %i.bb = load i32, ptr %i.aw, align 8, !tbaa !220
  %i.bc = zext i32 %i.bb to i64                   ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 96 ; 4 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !237 ; 2 uses
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !114 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3                 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, %i.bc
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = sub nuw nsw i64 %i.bc, %i.bj
  call void @_ZNSt6vectorIlSaIlEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bl)
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.h:                                             ; preds = %bb.f
  %i.bm = icmp ugt i64 %i.bj, %i.bc
  br i1 %i.bm, label %bb.i, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  %.not.i.i = icmp eq ptr %i.be, %i.bn
  br i1 %.not.i.i, label %_ZNSt6vectorIlSaIlEE6resizeEm.exit, label %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.i
  store ptr %i.bn, ptr %i.bd, align 8, !tbaa !237
  br label %_ZNSt6vectorIlSaIlEE6resizeEm.exit

_ZNSt6vectorIlSaIlEE6resizeEm.exit:               ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPllEvT_S1_RSaIT0_E.exit.i.i
  %i.bo = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0) ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 16
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !238
  %i.bq = load i32, ptr %i.c, align 4, !tbaa !216
  %i.br = load i16, ptr %i.e, align 8, !tbaa !217
  %i.bs = zext i16 %i.br to i32
  %i.bt = mul i32 %i.bq, %i.bs
  %i.bu = add i32 %i.bt, 7
  %i.bv = lshr i32 %i.bu, 3
  store i32 %i.bv, ptr %.sroa.056.075, align 8, !tbaa !239
  %2 = load i16, ptr %i.b, align 2, !tbaa !26
  switch i16 %2, label %bb.n [
    i16 0, label %bb.j
    i16 1, label %bb.k
  ]

bb.j:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %i.bw = load ptr, ptr %i.ba, align 8, !tbaa !114 ; 3 uses
  store i64 %i.bo, ptr %i.bw, align 8, !tbaa !25
  %i.bx = load i32, ptr %i.aw, align 8, !tbaa !220 ; 3 uses
  %i.by = icmp ugt i32 %i.bx, 1
  br i1 %i.by, label %.lr.ph72.preheader, label %._crit_edge73

.lr.ph72.preheader:                               ; preds = %bb.j
  %wide.trip.count84 = zext i32 %i.bx to i64      ; 2 uses
  %i.bz = add nsw i64 %wide.trip.count84, -1      ; 2 uses
  %min.iters.check = icmp ult i32 %i.bx, 5
  br i1 %min.iters.check, label %.lr.ph72.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph72.preheader
  %n.vec = and i64 %i.bz, -4                      ; 4 uses
  %i.ca = mul nsw i64 %n.vec, %i.ax
  %i.cb = add i64 %i.bo, %i.ca
  %i.cc = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert106 = insertelement <2 x i64> poison, i64 %i.bo, i64 0
  %broadcast.splat107 = shufflevector <2 x i64> %broadcast.splatinsert106, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nsw <2 x i64> %broadcast.splat107, %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %i.cd = add nsw <2 x i64> %vec.ind, %broadcast.splat
  %.reass = add <2 x i64> %vec.ind, %invariant.op
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  store <2 x i64> %i.cd, ptr %i.cf, align 8, !tbaa !25
  store <2 x i64> %.reass, ptr %i.cg, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next.reass = add <2 x i64> %vec.ind, %invariant.op113
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %._crit_edge73, label %.lr.ph72.preheader109

.lr.ph72.preheader109:                            ; preds = %.lr.ph72.preheader, %middle.block
  %.ph = phi i64 [ %i.bo, %.lr.ph72.preheader ], [ %i.cb, %middle.block ]
  %indvars.iv81.ph = phi i64 [ 1, %.lr.ph72.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph72

._crit_edge73:                                    ; preds = %.lr.ph72, %middle.block, %bb.j
  %i.ci = load ptr, ptr %i.bd, align 8, !tbaa !243
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !25
  %i.cl = add nsw i64 %i.ck, %i.ax
  br label %.sink.split

.lr.ph72:                                         ; preds = %.lr.ph72.preheader109, %.lr.ph72
  %i.cm = phi i64 [ %i.cn, %.lr.ph72 ], [ %.ph, %.lr.ph72.preheader109 ]
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %.lr.ph72 ], [ %indvars.iv81.ph, %.lr.ph72.preheader109 ] ; 2 uses
  %i.cn = add nsw i64 %i.cm, %i.ax                ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv81
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !25
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge73, label %.lr.ph72, !llvm.loop !244

bb.k:                                             ; preds = %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %i.cp = load ptr, ptr %i.ba, align 8, !tbaa !114 ; 6 uses
  store i64 %i.bo, ptr %i.cp, align 8, !tbaa !25
  %i.cq = load i32, ptr %i.aw, align 8, !tbaa !220 ; 3 uses
  %i.cr = icmp ugt i32 %i.cq, 1
  br i1 %i.cr, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !118 ; 5 uses
  %wide.trip.count = zext i32 %i.cq to i64
  %i.cu = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %xtraiter = and i64 %i.cu, 3                    ; 3 uses
  %i.cv = add i32 %i.cq, -2
  %i.cw = icmp ult i32 %i.cv, 3
  br i1 %i.cw, label %.epil.preheader, label %.lr.ph69.new

.lr.ph69.new:                                     ; preds = %.lr.ph69
  %unroll_iter = and i64 %i.cu, -4
  br label %bb.m

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph69
  %.epil.init = phi i64 [ %i.bo, %.lr.ph69 ], [ %i.ek, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph69 ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod112 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod112)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %i.cx = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.dc, %bb.l ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.l ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.cy = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv.epil
  %i.cz = getelementptr i8, ptr %i.cy, i64 -4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = zext i32 %i.da to i64
  %i.dc = add nsw i64 %i.cx, %i.db                ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.epil
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !25
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.l, !llvm.loop !245

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.l, %bb.k
  %i.de = load ptr, ptr %i.bd, align 8, !tbaa !243
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !25
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 72
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !247
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = zext i32 %i.dk to i64
  %i.dm = add nsw i64 %i.dg, %i.dl
  br label %.sink.split

bb.m:                                             ; preds = %bb.m, %.lr.ph69.new
  %i.dn = phi i64 [ %i.bo, %.lr.ph69.new ], [ %i.ek, %bb.m ]
  %indvars.iv = phi i64 [ 1, %.lr.ph69.new ], [ %indvars.iv.next.3, %bb.m ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph69.new ], [ %niter.next.3, %bb.m ]
  %i.do = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv
  %i.dp = getelementptr i8, ptr %i.do, i64 -4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64
  %i.ds = add nsw i64 %i.dn, %i.dr                ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.du = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv.next
  %i.dv = getelementptr i8, ptr %i.du, i64 -4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = zext i32 %i.dw to i64
  %i.dy = add nsw i64 %i.ds, %i.dx                ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next
  store i64 %i.dy, ptr %i.dz, align 8, !tbaa !25
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ea = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv.next.1
  %i.eb = getelementptr i8, ptr %i.ea, i64 -4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ed = zext i32 %i.ec to i64
  %i.ee = add nsw i64 %i.dy, %i.ed                ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next.1
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !25
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.eg = getelementptr [4 x i8], ptr %i.ct, i64 %indvars.iv.next.2
  %i.eh = getelementptr i8, ptr %i.eg, i64 -4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !3
  %i.ej = zext i32 %i.ei to i64
  %i.ek = add nsw i64 %i.ee, %i.ej                ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv.next.2
  store i64 %i.ek, ptr %i.el, align 8, !tbaa !25
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.m, !llvm.loop !248

.sink.split:                                      ; preds = %._crit_edge73, %._crit_edge
  %.sink103 = phi i64 [ %i.dm, %._crit_edge ], [ %i.cl, %._crit_edge73 ]
  %i.em = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %.sink103, i32 noundef 0)
  %i.en = select i1 %i.em, i1 %.05076, i1 false
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %_ZNSt6vectorIlSaIlEE6resizeEm.exit
  %.151 = phi i1 [ %.05076, %_ZNSt6vectorIlSaIlEE6resizeEm.exit ], [ %i.en, %.sink.split ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.056.075, i64 112 ; 2 uses
  %.not63 = icmp eq ptr %i.eo, %i.au
  br i1 %.not63, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.e, %bb.n, %bb.d, %.critedge55, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit, %bb.c
  %.3 = phi i1 [ false, %bb.c ], [ %.151, %bb.n ], [ false, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit ], [ true, %.critedge55 ], [ true, %bb.d ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  ret i1 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN11OpenImageIO4v3_18PSDInput13set_type_descEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(840) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load i16, ptr %i.a, align 8, !tbaa !217
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.c)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.split, label %bb.b

.split:                                           ; preds = %bb.a
  %i.f = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.c, i1 true) ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 6
  %switch.maskindex = trunc nuw nsw i32 %i.f to i8
end_hunk_0
