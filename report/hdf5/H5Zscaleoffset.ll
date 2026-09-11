Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Zscaleoffset?download=true
inline.NumInlined: 45
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 65
begin_hunk_0_@H5Z__scaleoffset_set_parms_fillval:bb.a
  %i.em = load i32, ptr @H5T_native_order_g, align 4, !tbaa !16
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %.preheader608, label %.loopexit610

.preheader608:                                    ; preds = %H5Z__scaleoffset_convert.exit565, %bb.ba
  %.0405 = phi i32 [ %i.er, %bb.ba ], [ 8, %H5Z__scaleoffset_convert.exit565 ] ; 2 uses
  %.0402 = phi ptr [ %i.es, %bb.ba ], [ %i.m, %H5Z__scaleoffset_convert.exit565 ] ; 2 uses
  %.0400 = phi i64 [ %.1401, %bb.ba ], [ 4, %H5Z__scaleoffset_convert.exit565 ]
  %.0398 = phi i64 [ %i.et, %bb.ba ], [ 8, %H5Z__scaleoffset_convert.exit565 ] ; 3 uses
  %i.eo = icmp ult i64 %.0398, 4
  br i1 %i.eo, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.preheader608
  store i32 0, ptr %i.n, align 4, !tbaa !16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.preheader608
  %.1401 = phi i64 [ %.0398, %bb.az ], [ %.0400, %.preheader608 ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr align 1 %.0402, i64 %.1401, i1 false)
  %.0..0..0.572 = load i32, ptr %i.n, align 4, !tbaa !16
  %i.ep = zext i32 %.0405 to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ep
  store i32 %.0..0..0.572, ptr %i.eq, align 4, !tbaa !16
  %i.er = add i32 %.0405, 1
  %i.es = getelementptr inbounds nuw i8, ptr %.0402, i64 %.1401
  %i.et = sub i64 %.0398, %.1401                  ; 2 uses
  %.not515 = icmp eq i64 %i.et, 0
  br i1 %.not515, label %.loopexit609, label %.preheader608, !llvm.loop !42

.loopexit610:                                     ; preds = %H5Z__scaleoffset_convert.exit565
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ev = load <2 x i32>, ptr %i.m, align 8
  %i.ew = shufflevector <2 x i32> %i.ev, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ew, ptr %i.eu, align 4, !tbaa !16
  br label %.loopexit609

.loopexit609:                                     ; preds = %bb.ba, %.loopexit610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit609, %bb.ax
  %.9482 = phi i32 [ -1, %bb.ax ], [ 0, %.loopexit609 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  br label %bb.bm

bb.bc:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #13
  %i.ex = call i32 @H5P_get_fill_value(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.o) #13
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ez = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !15
  %i.fa = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.fb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__scaleoffset_set_parms_fillval, i32 noundef 902, i64 noundef %i.ez, i64 noundef %i.fa, ptr noundef nonnull @.str.19) #13 ; 0 uses
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %.not510 = icmp eq i32 %4, 0
  br i1 %.not510, label %.preheader611, label %H5Z__scaleoffset_convert.exit568.loopexit

H5Z__scaleoffset_convert.exit568.loopexit:        ; preds = %bb.be
  %i.fc = load <4 x i8>, ptr %i.o, align 4, !tbaa !19
  %i.fd = shufflevector <4 x i8> %i.fc, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.fd, ptr %i.o, align 4, !tbaa !19
  br label %.preheader611

.preheader611:                                    ; preds = %bb.be, %H5Z__scaleoffset_convert.exit568.loopexit
  %.sink649 = load i32, ptr %i.o, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %.sink649, ptr %i.fe, align 4, !tbaa !16
  br label %bb.bf

bb.bf:                                            ; preds = %.preheader611, %bb.bd
  %.10483 = phi i32 [ -1, %bb.bd ], [ 0, %.preheader611 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #13
  br label %bb.bm

bb.bg:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #13
  %i.ff = call i32 @H5P_get_fill_value(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %i.p) #13
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fh = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !15
  %i.fi = load i64, ptr @H5E_CANTGET_g, align 8, !tbaa !15
  %i.fj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__scaleoffset_set_parms_fillval, i32 noundef 904, i64 noundef %i.fh, i64 noundef %i.fi, ptr noundef nonnull @.str.19) #13 ; 0 uses
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %H5Z__scaleoffset_convert.exit571, label %H5Z__scaleoffset_convert.exit571.loopexit

H5Z__scaleoffset_convert.exit571.loopexit:        ; preds = %bb.bi
  %i.fk = load <8 x i8>, ptr %i.p, align 8, !tbaa !19
  %i.fl = shufflevector <8 x i8> %i.fk, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.fl, ptr %i.p, align 8, !tbaa !19
  br label %H5Z__scaleoffset_convert.exit571

H5Z__scaleoffset_convert.exit571:                 ; preds = %H5Z__scaleoffset_convert.exit571.loopexit, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.fm = load i32, ptr @H5T_native_order_g, align 4, !tbaa !16
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %.preheader, label %.loopexit596

.preheader:                                       ; preds = %H5Z__scaleoffset_convert.exit571, %bb.bk
  %.0387 = phi i32 [ %i.fr, %bb.bk ], [ 8, %H5Z__scaleoffset_convert.exit571 ] ; 2 uses
  %.0385 = phi ptr [ %i.fs, %bb.bk ], [ %i.p, %H5Z__scaleoffset_convert.exit571 ] ; 2 uses
  %.0383 = phi i64 [ %.1384, %bb.bk ], [ 4, %H5Z__scaleoffset_convert.exit571 ]
  %.0 = phi i64 [ %i.ft, %bb.bk ], [ 8, %H5Z__scaleoffset_convert.exit571 ] ; 3 uses
  %i.fo = icmp ult i64 %.0, 4
  br i1 %i.fo, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.preheader
  store i32 0, ptr %i.q, align 4, !tbaa !16
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.preheader
  %.1384 = phi i64 [ %.0, %bb.bj ], [ %.0383, %.preheader ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 1 %.0385, i64 %.1384, i1 false)
  %.0..0..0. = load i32, ptr %i.q, align 4, !tbaa !16
  %i.fp = zext i32 %.0387 to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.fp
  store i32 %.0..0..0., ptr %i.fq, align 4, !tbaa !16
  %i.fr = add i32 %.0387, 1
  %i.fs = getelementptr inbounds nuw i8, ptr %.0385, i64 %.1384
  %i.ft = sub i64 %.0, %.1384                     ; 2 uses
  %.not509 = icmp eq i64 %i.ft, 0
  br i1 %.not509, label %.loopexit, label %.preheader, !llvm.loop !43

.loopexit596:                                     ; preds = %H5Z__scaleoffset_convert.exit571
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.fv = load <2 x i32>, ptr %i.p, align 8
  %i.fw = shufflevector <2 x i32> %i.fv, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.fw, ptr %i.fu, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bk, %.loopexit596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit, %bb.bh
  %.11484 = phi i32 [ -1, %bb.bh ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #13
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %bb.f, %bb.l, %bb.p, %bb.v, %bb.ab, %bb.af, %bb.al, %bb.ap, %bb.av, %bb.bb, %bb.bf, %bb.bl
  %.12 = phi i32 [ 0, %bb.a ], [ %.0473, %bb.f ], [ %.6479, %bb.al ], [ %.1474, %bb.l ], [ %.11484, %bb.bl ], [ %.2475, %bb.p ], [ %.8481, %bb.av ], [ %.3476, %bb.v ], [ %.10483, %bb.bf ], [ %.4477, %bb.ab ], [ %.7480, %bb.ap ], [ %.5478, %bb.af ], [ %.9482, %bb.bb ]
  ret i32 %.12
}

declare i32 @H5P_modify_filter(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5P_get_fill_value(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare ptr @H5MM_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5Z__scaleoffset_decompress(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i64 %4, i32 %5) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5Z_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.preheader61, label %.loopexit60, !prof !13

.preheader61:                                     ; preds = %bb.a
  %i.g = zext i32 %1 to i64                       ; 3 uses
  %i.h = and i64 %4, 4294967295                   ; 3 uses
  %i.i = mul nuw i64 %i.h, %i.g                   ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader61
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %0, i8 0, i64 %i.i, i1 false), !tbaa !19
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %.preheader61
  %.not77 = icmp eq i32 %1, 0
  br i1 %.not77, label %.loopexit60, label %.lr.ph68

.lr.ph68:                                         ; preds = %.preheader
  %.sroa.0.0.extract.trunc = trunc i64 %4 to i32  ; 3 uses
  %i.j = shl i32 %.sroa.0.0.extract.trunc, 3
  %.fr78 = freeze i32 %5
  %i.k = icmp eq i32 %.fr78, 0
  %.sroa.0.4.extract.shift = lshr i64 %4, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.l = sub i32 %i.j, %.sroa.0.4.extract.trunc   ; 3 uses
  %i.m = lshr i32 %i.l, 3                         ; 3 uses
  %i.n = and i32 %i.l, 7                          ; 2 uses
  %i.o = sub nuw nsw i32 8, %i.n                  ; 4 uses
  %i.p = xor i32 %i.m, -1
  %i.q = add i32 %i.p, %.sroa.0.0.extract.trunc
  %.fr = freeze i32 %i.q                          ; 3 uses
  br i1 %i.k, label %.lr.ph68.split.us, label %.lr.ph68.split

.lr.ph68.split.us:                                ; preds = %.lr.ph68
  %i.r = icmp sgt i32 %.fr, -1
  br i1 %i.r, label %.lr.ph68.split.us.split.us.preheader, label %.loopexit60

.lr.ph68.split.us.split.us.preheader:             ; preds = %.lr.ph68.split.us
  %i.s = zext nneg i32 %.fr to i64                ; 2 uses
  %i.t = lshr i32 255, %i.n
  %.not104 = icmp eq i32 %.fr, 0
  br label %.lr.ph68.split.us.split.us

.lr.ph68.split.us.split.us:                       ; preds = %.lr.ph68.split.us.split.us.preheader, %.loopexit.us.us
  %.167.us.us = phi i64 [ %i.bz, %.loopexit.us.us ], [ 0, %.lr.ph68.split.us.split.us.preheader ] ; 2 uses
  %.03266.us.us = phi i32 [ %.4.ph.us.us, %.loopexit.us.us ], [ 8, %.lr.ph68.split.us.split.us.preheader ] ; 5 uses
  %.03465.us.us = phi i64 [ %.438.ph.us.us, %.loopexit.us.us ], [ 0, %.lr.ph68.split.us.split.us.preheader ] ; 5 uses
  %i.u = load i8, ptr @H5Z_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.x = trunc nuw i8 %i.w to i1
  %i.y = xor i1 %i.x, true
  %i.z = select i1 %i.v, i1 true, i1 %i.y
  br i1 %i.z, label %bb.b, label %.loopexit.us.us, !prof !13

bb.b:                                             ; preds = %.lr.ph68.split.us.split.us
  %i.aa = mul nuw i64 %.167.us.us, %i.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa ; 2 uses
  %.not.i16.us.us.peel = icmp ult i64 %.03465.us.us, %3
  br i1 %.not.i16.us.us.peel, label %bb.c, label %.split.us

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 %.03465.us.us
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19
  %i.ae = icmp ugt i32 %.03266.us.us, %i.o
  %i.af = zext i8 %i.ad to i32                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.s ; 2 uses
  br i1 %i.ae, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = shl nsw i32 -1, %.03266.us.us
  %i.ai = xor i32 %i.ah, -1
  %i.aj = and i32 %i.af, %i.ai
  %i.ak = sub nuw nsw i32 %i.o, %.03266.us.us     ; 3 uses
  %i.al = shl nuw nsw i32 %i.aj, %i.ak            ; 2 uses
  %i.am = trunc i32 %i.al to i8
  store i8 %i.am, ptr %i.ag, align 1, !tbaa !19
  %i.an = add nuw i64 %.03465.us.us, 1            ; 3 uses
  %.not51.i18.us.us.peel = icmp ult i64 %i.an, %3
  br i1 %.not51.i18.us.us.peel, label %bb.e, label %.split.us

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nuw nsw i32 8, %i.ak                ; 2 uses
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = shl nsw i32 -1, %i.ak
  %i.au = xor i32 %i.at, -1
  %i.av = and i32 %i.as, %i.au
  %i.aw = or i32 %i.av, %i.al
  br label %.sink.split.a

bb.f:                                             ; preds = %bb.c
  %i.ax = sub nuw i32 %.03266.us.us, %i.o         ; 2 uses
  %i.ay = lshr i32 %i.af, %i.ax
  %i.az = and i32 %i.ay, %i.t
  br label %.sink.split.a

.sink.split.a:                                    ; preds = %bb.f, %bb.e
  %.sink110 = phi i32 [ %i.aw, %bb.e ], [ %i.az, %bb.f ]
  %.640.ph.us.us.peel.ph = phi i64 [ %i.an, %bb.e ], [ %.03465.us.us, %bb.f ] ; 2 uses
  %.6.ph.us.us.peel.ph = phi i32 [ %i.ar, %bb.e ], [ %i.ax, %bb.f ] ; 2 uses
  %i.ba = trunc i32 %.sink110 to i8
  store i8 %i.ba, ptr %i.ag, align 1, !tbaa !19
  br i1 %.not104, label %.loopexit.us.us, label %.lr.ph36.i.us.us

.lr.ph36.i.us.us:                                 ; preds = %.sink.split.a, %bb.l
  %indvars.iv86.in = phi i64 [ %indvars.iv86, %bb.l ], [ %i.s, %.sink.split.a ] ; 2 uses
  %.337.us.us = phi i64 [ %.640.ph.us.us, %bb.l ], [ %.640.ph.us.us.peel.ph, %.sink.split.a ] ; 5 uses
  %.3.us.us = phi i32 [ %.6.ph.us.us, %bb.l ], [ %.6.ph.us.us.peel.ph, %.sink.split.a ] ; 6 uses
  %indvars.iv86 = add nsw i64 %indvars.iv86.in, -1 ; 2 uses
  %i.bb = load i8, ptr @H5Z_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.bc = trunc nuw i8 %i.bb to i1
  %i.bd = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = xor i1 %i.be, true
  %i.bg = select i1 %i.bc, i1 true, i1 %i.bf
  br i1 %i.bg, label %bb.g, label %bb.l, !prof !13

bb.g:                                             ; preds = %.lr.ph36.i.us.us
  %.not.i16.us.us = icmp ult i64 %.337.us.us, %3
  br i1 %.not.i16.us.us, label %bb.h, label %.split.us

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 %.337.us.us
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19
  %i.bj = icmp ugt i32 %.3.us.us, 8
  %i.bk = zext i8 %i.bi to i32                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv86 ; 2 uses
  br i1 %i.bj, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = sub nuw nsw i32 8, %.3.us.us
  %i.bn = shl nuw nsw i32 %i.bk, %i.bm            ; 2 uses
  %i.bo = trunc i32 %i.bn to i8
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !19
  %i.bp = add nuw i64 %.337.us.us, 1              ; 3 uses
  %.not51.i18.us.us = icmp ult i64 %i.bp, %3
  br i1 %.not51.i18.us.us, label %bb.j, label %.split.us

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !19
  %i.bs = zext i8 %i.br to i32
  %i.bt = lshr i32 %i.bs, %.3.us.us
  %i.bu = or i32 %i.bt, %i.bn
  br label %.sink.split111

bb.k:                                             ; preds = %bb.h
  %i.bv = add i32 %.3.us.us, -8                   ; 2 uses
  %i.bw = lshr i32 %i.bk, %i.bv
  br label %.sink.split111

.sink.split111:                                   ; preds = %bb.j, %bb.k
  %.sink112 = phi i32 [ %i.bw, %bb.k ], [ %i.bu, %bb.j ]
  %.640.ph.us.us.ph = phi i64 [ %.337.us.us, %bb.k ], [ %i.bp, %bb.j ]
  %.6.ph.us.us.ph = phi i32 [ %i.bv, %bb.k ], [ %.3.us.us, %bb.j ]
  %i.bx = trunc i32 %.sink112 to i8
  store i8 %i.bx, ptr %i.bl, align 1, !tbaa !19
  br label %bb.l

bb.l:                                             ; preds = %.sink.split111, %.lr.ph36.i.us.us
  %.640.ph.us.us = phi i64 [ %.337.us.us, %.lr.ph36.i.us.us ], [ %.640.ph.us.us.ph, %.sink.split111 ] ; 2 uses
  %.6.ph.us.us = phi i32 [ %.3.us.us, %.lr.ph36.i.us.us ], [ %.6.ph.us.us.ph, %.sink.split111 ] ; 2 uses
  %i.by = icmp samesign ugt i64 %indvars.iv86.in, 1
  br i1 %i.by, label %.lr.ph36.i.us.us, label %.loopexit.us.us, !llvm.loop !44

.loopexit.us.us:                                  ; preds = %bb.l, %.sink.split.a, %.lr.ph68.split.us.split.us
  %.438.ph.us.us = phi i64 [ %.03465.us.us, %.lr.ph68.split.us.split.us ], [ %.640.ph.us.us.peel.ph, %.sink.split.a ], [ %.640.ph.us.us, %bb.l ]
  %.4.ph.us.us = phi i32 [ %.03266.us.us, %.lr.ph68.split.us.split.us ], [ %.6.ph.us.us.peel.ph, %.sink.split.a ], [ %.6.ph.us.us, %bb.l ]
  %i.bz = add nuw nsw i64 %.167.us.us, 1          ; 2 uses
  %exitcond92.not = icmp eq i64 %i.bz, %i.g
  br i1 %exitcond92.not, label %.loopexit60, label %.lr.ph68.split.us.split.us, !llvm.loop !45

.lr.ph68.split:                                   ; preds = %.lr.ph68
  %i.ca = add i32 %.sroa.0.0.extract.trunc, -1
  %.not33.i = icmp sgt i32 %i.m, %i.ca
  %.not33.i.fr = freeze i1 %.not33.i
  br i1 %.not33.i.fr, label %.loopexit60, label %.lr.ph68.split.split.preheader

.lr.ph68.split.split.preheader:                   ; preds = %.lr.ph68.split
  %i.cb = lshr i32 %i.l, 3                        ; 2 uses
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = and i64 %4, 4294967295                  ; 2 uses
  %i.ce = icmp eq i32 %i.cb, %i.m
  %.045.i.peel = select i1 %i.ce, i32 %i.o, i32 8 ; 4 uses
  %i.cf = shl nsw i32 -1, %.045.i.peel
  %i.cg = xor i32 %i.cf, -1
  %indvars.iv.next.peel = add nuw nsw i64 %i.cc, 1 ; 2 uses
  %exitcond.not.i.peel = icmp eq i64 %indvars.iv.next.peel, %i.cd
  br label %.lr.ph68.split.split

.lr.ph68.split.split:                             ; preds = %.lr.ph68.split.split.preheader, %.loopexit59
  %.167 = phi i64 [ %i.eu, %.loopexit59 ], [ 0, %.lr.ph68.split.split.preheader ] ; 2 uses
  %.03266 = phi i32 [ %.4.ph, %.loopexit59 ], [ 8, %.lr.ph68.split.split.preheader ] ; 5 uses
  %.03465 = phi i64 [ %.438.ph, %.loopexit59 ], [ 0, %.lr.ph68.split.split.preheader ] ; 5 uses
  %i.ch = load i8, ptr @H5Z_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = xor i1 %i.ck, true
  %i.cm = select i1 %i.ci, i1 true, i1 %i.cl
  br i1 %i.cm, label %bb.m, label %.loopexit59, !prof !13

bb.m:                                             ; preds = %.lr.ph68.split.split
  %i.cn = mul nuw i64 %.167, %i.h
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn ; 2 uses
  %.not.i.peel = icmp ult i64 %.03465, %3
  br i1 %.not.i.peel, label %bb.n, label %.split.us

bb.n:                                             ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %.03465
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !19
  %i.cr = icmp ugt i32 %.03266, %.045.i.peel
  %i.cs = zext i8 %i.cq to i32                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cc ; 2 uses
  br i1 %i.cr, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = shl nsw i32 -1, %.03266
  %i.cv = xor i32 %i.cu, -1
  %i.cw = and i32 %i.cs, %i.cv
  %i.cx = sub nuw nsw i32 %.045.i.peel, %.03266   ; 3 uses
  %i.cy = shl nuw nsw i32 %i.cw, %i.cx            ; 2 uses
  %i.cz = trunc i32 %i.cy to i8
  store i8 %i.cz, ptr %i.ct, align 1, !tbaa !19
  %i.da = add nuw i64 %.03465, 1                  ; 3 uses
  %.not51.i.peel = icmp ult i64 %i.da, %3
  br i1 %.not51.i.peel, label %bb.p, label %.split.us

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !19
  %i.dd = zext i8 %i.dc to i32
  %i.de = sub nuw nsw i32 8, %i.cx                ; 2 uses
  %i.df = lshr i32 %i.dd, %i.de
  %i.dg = shl nsw i32 -1, %i.cx
  %i.dh = xor i32 %i.dg, -1
  %i.di = and i32 %i.df, %i.dh
  %i.dj = or i32 %i.di, %i.cy
  br label %.sink.split113

bb.q:                                             ; preds = %bb.n
  %i.dk = sub nuw i32 %.03266, %.045.i.peel       ; 2 uses
  %i.dl = lshr i32 %i.cs, %i.dk
  %i.dm = and i32 %i.dl, %i.cg
  br label %.sink.split113

.sink.split113:                                   ; preds = %bb.q, %bb.p
  %.sink114 = phi i32 [ %i.dj, %bb.p ], [ %i.dm, %bb.q ]
  %.539.ph.peel.ph = phi i64 [ %i.da, %bb.p ], [ %.03465, %bb.q ] ; 2 uses
  %.5.ph.peel.ph = phi i32 [ %i.de, %bb.p ], [ %i.dk, %bb.q ] ; 2 uses
  %i.dn = trunc i32 %.sink114 to i8
  store i8 %i.dn, ptr %i.ct, align 1, !tbaa !19
  br i1 %exitcond.not.i.peel, label %.loopexit59, label %.lr.ph.i

.sink.split115:                                   ; preds = %bb.w, %bb.u
  %.sink116 = phi i32 [ %i.eb, %bb.u ], [ %i.ek, %bb.w ]
  %.539.ph.ph = phi i64 [ %.135, %bb.u ], [ %i.ef, %bb.w ]
  %.5.ph.ph = phi i32 [ %i.ea, %bb.u ], [ %.133, %bb.w ]
  %i.do = trunc i32 %.sink116 to i8
  store i8 %i.do, ptr %i.dz, align 1, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %.sink.split115, %.lr.ph.i
  %.539.ph = phi i64 [ %.135, %.lr.ph.i ], [ %.539.ph.ph, %.sink.split115 ] ; 2 uses
  %.5.ph = phi i32 [ %.133, %.lr.ph.i ], [ %.5.ph.ph, %.sink.split115 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.cd
  br i1 %exitcond.not.i, label %.loopexit59, label %.lr.ph.i, !llvm.loop !46

.lr.ph.i:                                         ; preds = %.sink.split113, %bb.r
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ %indvars.iv.next.peel, %.sink.split113 ] ; 2 uses
  %.135 = phi i64 [ %.539.ph, %bb.r ], [ %.539.ph.peel.ph, %.sink.split113 ] ; 5 uses
  %.133 = phi i32 [ %.5.ph, %bb.r ], [ %.5.ph.peel.ph, %.sink.split113 ] ; 6 uses
  %i.dp = load i8, ptr @H5Z_init_g, align 1, !tbaa !10, !range !11, !noundef !12
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = load i8, ptr @H5_libterm_g, align 1, !range !11
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = xor i1 %i.ds, true
  %i.du = select i1 %i.dq, i1 true, i1 %i.dt
  br i1 %i.du, label %bb.s, label %bb.r, !prof !13

bb.s:                                             ; preds = %.lr.ph.i
  %.not.i = icmp ult i64 %.135, %3
  br i1 %.not.i, label %bb.t, label %.split.us

bb.t:                                             ; preds = %bb.s
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %.135
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !19
  %i.dx = icmp ugt i32 %.133, 8
  %i.dy = zext i8 %i.dw to i32                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv ; 2 uses
  br i1 %i.dx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ea = add i32 %.133, -8                       ; 2 uses
  %i.eb = lshr i32 %i.dy, %i.ea
  br label %.sink.split115

bb.v:                                             ; preds = %bb.t
  %i.ec = sub nuw nsw i32 8, %.133
  %i.ed = shl nuw nsw i32 %i.dy, %i.ec            ; 2 uses
  %i.ee = trunc i32 %i.ed to i8
  store i8 %i.ee, ptr %i.dz, align 1, !tbaa !19
  %i.ef = add nuw i64 %.135, 1                    ; 3 uses
  %.not51.i = icmp ult i64 %i.ef, %3
  br i1 %.not51.i, label %bb.w, label %.split.us

bb.w:                                             ; preds = %bb.v
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !19
  %i.ei = zext i8 %i.eh to i32
  %i.ej = lshr i32 %i.ei, %.133
  %i.ek = or i32 %i.ej, %i.ed
  br label %.sink.split115

.split.us:                                        ; preds = %bb.o, %bb.m, %bb.v, %bb.s, %bb.d, %bb.b, %bb.i, %bb.g
  %.sink = phi i32 [ 1627, %bb.s ], [ 1649, %bb.i ], [ 1627, %bb.b ], [ 1627, %bb.g ], [ 1649, %bb.d ], [ 1649, %bb.v ], [ 1649, %bb.o ], [ 1627, %bb.m ]
  %.sink.i = phi i32 [ 1693, %bb.v ], [ 1683, %bb.i ], [ 1683, %bb.d ], [ 1683, %bb.g ], [ 1683, %bb.b ], [ 1693, %bb.s ], [ 1693, %bb.m ], [ 1693, %bb.o ]
  %i.el = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !15
  %i.em = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.en = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__scaleoffset_decompress_one_byte, i32 noundef %.sink, i64 noundef %i.el, i64 noundef %i.em, ptr noundef nonnull @.str.33) #13 ; 0 uses
  %i.eo = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !15
  %i.ep = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.eq = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__scaleoffset_decompress_one_atomic, i32 noundef %.sink.i, i64 noundef %i.eo, i64 noundef %i.ep, ptr noundef nonnull @.str.32) #13 ; 0 uses
  %i.er = load i64, ptr @H5E_PLINE_g, align 8, !tbaa !15
  %i.es = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !15
  %i.et = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5Z__scaleoffset_decompress, i32 noundef 1723, i64 noundef %i.er, i64 noundef %i.es, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %.loopexit60

.loopexit59:                                      ; preds = %bb.r, %.sink.split113, %.lr.ph68.split.split
  %.438.ph = phi i64 [ %.03465, %.lr.ph68.split.split ], [ %.539.ph.peel.ph, %.sink.split113 ], [ %.539.ph, %bb.r ]
  %.4.ph = phi i32 [ %.03266, %.lr.ph68.split.split ], [ %.5.ph.peel.ph, %.sink.split113 ], [ %.5.ph, %bb.r ]
  %i.eu = add nuw nsw i64 %.167, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.eu, %i.g
  br i1 %exitcond.not, label %.loopexit60, label %.lr.ph68.split.split, !llvm.loop !45

.loopexit60:                                      ; preds = %.loopexit59, %.loopexit.us.us, %.lr.ph68.split, %.lr.ph68.split.us, %.preheader, %.split.us, %bb.a
  %.0 = phi i32 [ -1, %.split.us ], [ 0, %bb.a ], [ 0, %.lr.ph68.split ], [ 0, %.lr.ph68.split.us ], [ 0, %.preheader ], [ 0, %.loopexit.us.us ], [ 0, %.loopexit59 ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @H5Z__scaleoffset_postdecompress_i(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef range(i32 1, 13) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i64 noundef %6) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  switch i32 %2, label %.loopexit [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.i
    i32 6, label %bb.k
    i32 7, label %bb.m
    i32 8, label %bb.o
    i32 9, label %bb.p
    i32 10, label %bb.r
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %3, 1
  br i1 %i.i, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not847 = icmp eq i32 %1, 0
  br i1 %.not847, label %.loopexit, label %iter.check1403

iter.check1403:                                   ; preds = %.preheader
  %i.j = trunc i64 %6 to i8                       ; 3 uses
  %wide.trip.count966 = zext i32 %1 to i64        ; 6 uses
  %min.iters.check1388 = icmp ult i32 %1, 4
  br i1 %min.iters.check1388, label %vec.epilog.scalar.ph1404.preheader, label %vector.main.loop.iter.check1389

vector.main.loop.iter.check1389:                  ; preds = %iter.check1403
  %min.iters.check1390 = icmp ult i32 %1, 32
  br i1 %min.iters.check1390, label %vec.epilog.ph1407, label %vector.ph1391

vector.ph1391:                                    ; preds = %vector.main.loop.iter.check1389
  %i.k = and i64 %wide.trip.count966, 28
  %n.vec1392 = and i64 %wide.trip.count966, 4294967264 ; 4 uses
  %broadcast.splatinsert1393 = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %broadcast.splat1394 = shufflevector <16 x i8> %broadcast.splatinsert1393, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body1395

vector.body1395:                                  ; preds = %vector.body1395, %vector.ph1391
  %index1396 = phi i64 [ 0, %vector.ph1391 ], [ %index.next1399, %vector.body1395 ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %index1396 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %wide.load1397 = load <16 x i8>, ptr %i.l, align 1, !tbaa !19
  %wide.load1398 = load <16 x i8>, ptr %i.m, align 1, !tbaa !19
  %i.n = add <16 x i8> %wide.load1397, %broadcast.splat1394
  %i.o = add <16 x i8> %wide.load1398, %broadcast.splat1394
  store <16 x i8> %i.n, ptr %i.l, align 1, !tbaa !19
  store <16 x i8> %i.o, ptr %i.m, align 1, !tbaa !19
  %index.next1399 = add nuw i64 %index1396, 32    ; 2 uses
  %i.p = icmp eq i64 %index.next1399, %n.vec1392
  br i1 %i.p, label %middle.block1400, label %vector.body1395, !llvm.loop !47

middle.block1400:                                 ; preds = %vector.body1395
  %cmp.n1401 = icmp eq i64 %n.vec1392, %wide.trip.count966
  br i1 %cmp.n1401, label %.loopexit, label %vec.epilog.iter.check1405

vec.epilog.iter.check1405:                        ; preds = %middle.block1400
  %min.epilog.iters.check1406 = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check1406, label %vec.epilog.scalar.ph1404.preheader, label %vec.epilog.ph1407, !prof !23

vec.epilog.ph1407:                                ; preds = %vector.main.loop.iter.check1389, %vec.epilog.iter.check1405
  %vec.epilog.resume.val1402 = phi i64 [ %n.vec1392, %vec.epilog.iter.check1405 ], [ 0, %vector.main.loop.iter.check1389 ]
  %n.vec1408 = and i64 %wide.trip.count966, 4294967292 ; 3 uses
  %broadcast.splatinsert1409 = insertelement <4 x i8> poison, i8 %i.j, i64 0
  %broadcast.splat1410 = shufflevector <4 x i8> %broadcast.splatinsert1409, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1411

vec.epilog.vector.body1411:                       ; preds = %vec.epilog.vector.body1411, %vec.epilog.ph1407
  %index1412 = phi i64 [ %vec.epilog.resume.val1402, %vec.epilog.ph1407 ], [ %index.next1414, %vec.epilog.vector.body1411 ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index1412 ; 2 uses
  %wide.load1413 = load <4 x i8>, ptr %i.q, align 1, !tbaa !19
  %i.r = add <4 x i8> %wide.load1413, %broadcast.splat1410
  store <4 x i8> %i.r, ptr %i.q, align 1, !tbaa !19
  %index.next1414 = add nuw i64 %index1412, 4     ; 2 uses
  %i.s = icmp eq i64 %index.next1414, %n.vec1408
  br i1 %i.s, label %vec.epilog.middle.block1415, label %vec.epilog.vector.body1411, !llvm.loop !48

vec.epilog.middle.block1415:                      ; preds = %vec.epilog.vector.body1411
  %cmp.n1416 = icmp eq i64 %n.vec1408, %wide.trip.count966
  br i1 %cmp.n1416, label %.loopexit, label %vec.epilog.scalar.ph1404.preheader

vec.epilog.scalar.ph1404.preheader:               ; preds = %iter.check1403, %vec.epilog.iter.check1405, %vec.epilog.middle.block1415
  %indvars.iv963.ph = phi i64 [ 0, %iter.check1403 ], [ %n.vec1392, %vec.epilog.iter.check1405 ], [ %n.vec1408, %vec.epilog.middle.block1415 ]
  br label %vec.epilog.scalar.ph1404

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr @H5T_native_order_g, align 4, !tbaa !16
  %i.u = icmp eq i32 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16   ; 2 uses
  %.sroa.5716.0.extract.shift717 = lshr i32 %i.w, 24
  %storemerge687.in = select i1 %i.u, i32 %i.w, i32 %.sroa.5716.0.extract.shift717
  %storemerge687 = trunc i32 %storemerge687.in to i8 ; 3 uses
  %.not848 = icmp eq i32 %1, 0
  br i1 %.not848, label %.loopexit, label %iter.check1437

iter.check1437:                                   ; preds = %bb.c
  %notmask688 = shl nsw i32 -1, %5                ; 3 uses
  %i.x = trunc i64 %6 to i8                       ; 3 uses
  %wide.trip.count971 = zext i32 %1 to i64        ; 6 uses
  %min.iters.check1419 = icmp ult i32 %1, 4
  br i1 %min.iters.check1419, label %vec.epilog.scalar.ph1438.preheader, label %vector.main.loop.iter.check1420

vector.main.loop.iter.check1420:                  ; preds = %iter.check1437
  %min.iters.check1421 = icmp ult i32 %1, 16
  br i1 %min.iters.check1421, label %vec.epilog.ph1441, label %vector.ph1422

vector.ph1422:                                    ; preds = %vector.main.loop.iter.check1420
  %i.y = and i64 %wide.trip.count971, 12
  %n.vec1423 = and i64 %wide.trip.count971, 4294967280 ; 4 uses
  %broadcast.splatinsert1424 = insertelement <16 x i32> poison, i32 %notmask688, i64 0
  %broadcast.splat1425 = shufflevector <16 x i32> %broadcast.splatinsert1424, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1426 = insertelement <16 x i8> poison, i8 %i.x, i64 0
  %broadcast.splat1427 = shufflevector <16 x i8> %broadcast.splatinsert1426, <16 x i8> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1428 = insertelement <16 x i8> poison, i8 %storemerge687, i64 0
  %broadcast.splat1429 = shufflevector <16 x i8> %broadcast.splatinsert1428, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body1430

vector.body1430:                                  ; preds = %vector.body1430, %vector.ph1422
  %index1431 = phi i64 [ 0, %vector.ph1422 ], [ %index.next1433, %vector.body1430 ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %index1431 ; 2 uses
  %wide.load1432 = load <16 x i8>, ptr %i.z, align 1, !tbaa !19 ; 2 uses
  %i.aa = zext <16 x i8> %wide.load1432 to <16 x i32>
  %i.ab = xor <16 x i32> %broadcast.splat1425, %i.aa
  %i.ac = icmp eq <16 x i32> %i.ab, splat (i32 -1)
  %i.ad = add <16 x i8> %wide.load1432, %broadcast.splat1427
  %i.ae = select <16 x i1> %i.ac, <16 x i8> %broadcast.splat1429, <16 x i8> %i.ad
  store <16 x i8> %i.ae, ptr %i.z, align 1, !tbaa !19
  %index.next1433 = add nuw i64 %index1431, 16    ; 2 uses
  %i.af = icmp eq i64 %index.next1433, %n.vec1423
  br i1 %i.af, label %middle.block1434, label %vector.body1430, !llvm.loop !49

middle.block1434:                                 ; preds = %vector.body1430
  %cmp.n1435 = icmp eq i64 %n.vec1423, %wide.trip.count971
  br i1 %cmp.n1435, label %.loopexit, label %vec.epilog.iter.check1439

vec.epilog.iter.check1439:                        ; preds = %middle.block1434
  %min.epilog.iters.check1440 = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check1440, label %vec.epilog.scalar.ph1438.preheader, label %vec.epilog.ph1441, !prof !25

vec.epilog.ph1441:                                ; preds = %vector.main.loop.iter.check1420, %vec.epilog.iter.check1439
  %vec.epilog.resume.val1436 = phi i64 [ %n.vec1423, %vec.epilog.iter.check1439 ], [ 0, %vector.main.loop.iter.check1420 ]
  %n.vec1442 = and i64 %wide.trip.count971, 4294967292 ; 3 uses
  %broadcast.splatinsert1443 = insertelement <4 x i32> poison, i32 %notmask688, i64 0
  %broadcast.splat1444 = shufflevector <4 x i32> %broadcast.splatinsert1443, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1445 = insertelement <4 x i8> poison, i8 %i.x, i64 0
  %broadcast.splat1446 = shufflevector <4 x i8> %broadcast.splatinsert1445, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1447 = insertelement <4 x i8> poison, i8 %storemerge687, i64 0
  %broadcast.splat1448 = shufflevector <4 x i8> %broadcast.splatinsert1447, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body1449

vec.epilog.vector.body1449:                       ; preds = %vec.epilog.vector.body1449, %vec.epilog.ph1441
  %index1450 = phi i64 [ %vec.epilog.resume.val1436, %vec.epilog.ph1441 ], [ %index.next1452, %vec.epilog.vector.body1449 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %index1450 ; 2 uses
  %wide.load1451 = load <4 x i8>, ptr %i.ag, align 1, !tbaa !19 ; 2 uses
  %i.ah = zext <4 x i8> %wide.load1451 to <4 x i32>
  %i.ai = xor <4 x i32> %broadcast.splat1444, %i.ah
  %i.aj = icmp eq <4 x i32> %i.ai, splat (i32 -1)
  %i.ak = add <4 x i8> %wide.load1451, %broadcast.splat1446
  %i.al = select <4 x i1> %i.aj, <4 x i8> %broadcast.splat1448, <4 x i8> %i.ak
  store <4 x i8> %i.al, ptr %i.ag, align 1, !tbaa !19
  %index.next1452 = add nuw i64 %index1450, 4     ; 2 uses
  %i.am = icmp eq i64 %index.next1452, %n.vec1442
  br i1 %i.am, label %vec.epilog.middle.block1453, label %vec.epilog.vector.body1449, !llvm.loop !50

vec.epilog.middle.block1453:                      ; preds = %vec.epilog.vector.body1449
  %cmp.n1454 = icmp eq i64 %n.vec1442, %wide.trip.count971
  br i1 %cmp.n1454, label %.loopexit, label %vec.epilog.scalar.ph1438.preheader

vec.epilog.scalar.ph1438.preheader:               ; preds = %iter.check1437, %vec.epilog.iter.check1439, %vec.epilog.middle.block1453
  %indvars.iv968.ph = phi i64 [ 0, %iter.check1437 ], [ %n.vec1423, %vec.epilog.iter.check1439 ], [ %n.vec1442, %vec.epilog.middle.block1453 ]
  br label %vec.epilog.scalar.ph1438

vec.epilog.scalar.ph1438:                         ; preds = %vec.epilog.scalar.ph1438.preheader, %vec.epilog.scalar.ph1438
  %indvars.iv968 = phi i64 [ %indvars.iv.next969, %vec.epilog.scalar.ph1438 ], [ %indvars.iv968.ph, %vec.epilog.scalar.ph1438.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv968 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !19  ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  %i.aq = xor i32 %notmask688, %i.ap
  %i.ar = icmp eq i32 %i.aq, -1
end_hunk_0
