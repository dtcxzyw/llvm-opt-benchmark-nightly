Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tif_luv?download=true
inline.NumInlined: 35
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@L16toGry:bb.a
  %i.f = load i16, ptr %.0712, align 2, !tbaa !63 ; 2 uses
  %i.g = and i16 %i.f, 32767                      ; 2 uses
  %.not.i = icmp eq i16 %i.g, 0
  br i1 %.not.i, label %LogL16toY.exit.thread, label %LogL16toY.exit

LogL16toY.exit:                                   ; preds = %.lr.ph
  %i.h = uitofp nneg i16 %i.g to double
  %i.i = fadd double %i.h, 5.000000e-01
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double f0x3F662E42FEFA39EF, double f0xC0462E42FEFA39EF)
  %i.k = tail call double @exp(double noundef %i.j) #16, !tbaa !6 ; 2 uses
  %i.l = fneg double %i.k
  %.not7.i11 = icmp slt i16 %i.f, 0
  %i.m = select i1 %.not7.i11, double %i.l, double %i.k ; 3 uses
  %i.n = fcmp ugt double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.b, label %LogL16toY.exit.thread

bb.b:                                             ; preds = %LogL16toY.exit
  %i.o = fcmp ult double %i.m, 1.000000e+00
  br i1 %i.o, label %bb.c, label %LogL16toY.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = tail call double @sqrt(double noundef %i.m) #16, !tbaa !6
  %i.q = fmul double %i.p, 2.560000e+02
  %i.r = fptosi double %i.q to i32
  %i.s = trunc i32 %i.r to i8
  br label %LogL16toY.exit.thread

LogL16toY.exit.thread:                            ; preds = %.lr.ph, %bb.c, %bb.b, %LogL16toY.exit
  %i.t = phi i8 [ 0, %LogL16toY.exit ], [ %i.s, %bb.c ], [ -1, %bb.b ], [ 0, %.lr.ph ]
  %i.u = getelementptr inbounds nuw i8, ptr %.013, i64 1
  store i8 %i.t, ptr %.013, align 1, !tbaa !9
  %i.v = icmp samesign ugt i64 %.in, 1
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %LogL16toY.exit.thread, %bb.a
  ret void
}

declare i64 @_TIFFMultiplySSize(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #10

declare i64 @TIFFScanlineSize(ptr noundef) local_unnamed_addr #10

declare i64 @TIFFTileRowSize(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LogLuvEncode24(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = sdiv i64 %2, %i.e                        ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvEncode24.module, ptr noundef nonnull @.str.9) #16
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  tail call void %i.p(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %i.f) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !65   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59
  %i.w = sub nsw i64 %i.t, %i.v                   ; 2 uses
  %.not50 = icmp eq i64 %i.f, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.h
  %.in = phi i64 [ %i.x, %bb.h ], [ %i.f, %bb.e ]
  %.153 = phi ptr [ %i.ao, %bb.h ], [ %.0, %bb.e ] ; 4 uses
  %.04052 = phi ptr [ %i.ar, %bb.h ], [ %i.r, %bb.e ] ; 2 uses
  %.04251 = phi i64 [ %i.as, %bb.h ], [ %i.w, %bb.e ] ; 3 uses
  %i.x = add nsw i64 %.in, -1                     ; 2 uses
  %i.y = icmp slt i64 %.04251, 3
  br i1 %i.y, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  store ptr %.04052, ptr %i.q, align 8, !tbaa !58
  %i.z = load i64, ptr %i.s, align 8, !tbaa !65
  %i.aa = sub nsw i64 %i.z, %.04251
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !59
  %i.ab = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not47 = icmp eq i32 %i.ab, 0
  br i1 %.not47, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !65
  %i.ae = load i64, ptr %i.u, align 8, !tbaa !59
  %i.af = sub nsw i64 %i.ad, %i.ae
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.143 = phi i64 [ %i.af, %bb.g ], [ %.04251, %.lr.ph ]
  %.141 = phi ptr [ %i.ac, %bb.g ], [ %.04052, %.lr.ph ] ; 4 uses
  %i.ag = load i32, ptr %.153, align 4, !tbaa !6
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %.141, i64 1
  store i8 %i.ai, ptr %.141, align 1, !tbaa !9
  %i.ak = load i32, ptr %.153, align 4, !tbaa !6
  %i.al = lshr i32 %i.ak, 8
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.141, i64 2
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %.153, i64 4
  %i.ap = load i32, ptr %.153, align 4, !tbaa !6
  %i.aq = trunc i32 %i.ap to i8
  %i.ar = getelementptr inbounds nuw i8, ptr %.141, i64 3 ; 2 uses
  store i8 %i.aq, ptr %i.an, align 1, !tbaa !9
  %i.as = add nsw i64 %.143, -3                   ; 2 uses
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.h
  %.pre = load i64, ptr %i.s, align 8, !tbaa !65
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %i.at = phi i64 [ %i.t, %bb.e ], [ %.pre, %._crit_edge.loopexit ]
  %.042.lcssa = phi i64 [ %i.w, %bb.e ], [ %i.as, %._crit_edge.loopexit ]
  %.040.lcssa = phi ptr [ %i.r, %bb.e ], [ %i.ar, %._crit_edge.loopexit ]
  store ptr %.040.lcssa, ptr %i.q, align 8, !tbaa !58
  %i.au = sub nsw i64 %i.at, %.042.lcssa
  store i64 %i.au, ptr %i.u, align 8, !tbaa !59
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %._crit_edge, %bb.c
  %.045 = phi i32 [ 0, %bb.c ], [ 1, %._crit_edge ], [ 0, %bb.f ]
  ret i32 %.045
}

; Function Attrs: nounwind uwtable
define internal void @Luv24fromXYZ(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.010 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %.069 = phi ptr [ %i.c, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %.078 = phi i64 [ %2, %.lr.ph ], [ %i.e, %bb.b ] ; 2 uses
  %i.e = add nsw i64 %.078, -1
  %i.f = load i32, ptr %i.d, align 8, !tbaa !37
  %i.g = tail call i32 @LogLuv24fromXYZ(ptr noundef %.010, i32 noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %.069, i64 4
  store i32 %i.g, ptr %.069, align 4, !tbaa !6
  %i.i = getelementptr inbounds nuw i8, ptr %.010, i64 12
  %i.j = icmp samesign ugt i64 %.078, 1
  br i1 %i.j, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Luv24fromLuv48(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.e, %bb.h ] ; 2 uses
  %.01725 = phi ptr [ %1, %.lr.ph ], [ %i.aj, %bb.h ] ; 3 uses
  %.01824 = phi ptr [ %i.c, %.lr.ph ], [ %i.ai, %bb.h ] ; 2 uses
  %i.e = add nsw i64 %.in, -1
  %i.f = load i16, ptr %.01725, align 2, !tbaa !63 ; 3 uses
  %3 = sext i16 %i.f to i32                       ; 2 uses
  %i.g = icmp slt i16 %i.f, 1
  br i1 %i.g, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i16 %i.f, 7409
  br i1 %i.h, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.d, align 8, !tbaa !37
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %4 = add nsw i32 %3, -3314
  %5 = ashr i32 %4, 2
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %6 = uitofp nneg i32 %3 to double
  %7 = fadd nnan double %6, -3.314000e+03
  %i.k = fmul nnan double %7, 2.500000e-01
  %i.l = load i32, ptr @_TIFFRand.nCounter, align 4, !tbaa !6 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.g, label %tiff_itrunc.exit

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i64 @time(ptr noundef null) #16
  %i.n = trunc i64 %i.m to i32
  br label %tiff_itrunc.exit

tiff_itrunc.exit:                                 ; preds = %bb.f, %bb.g
  %i.o = phi i32 [ %i.n, %bb.g ], [ %i.l, %bb.f ]
  %i.p = mul i32 %i.o, 1103515245
  %i.q = add i32 %i.p, 1103527590                 ; 2 uses
  store i32 %i.q, ptr @_TIFFRand.nCounter, align 4, !tbaa !6
  %i.r = lshr i32 %i.q, 16
  %i.s = and i32 %i.r, 32767
  %i.t = uitofp nneg i32 %i.s to double
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double f0x3F00002000400080, double %i.k)
  %i.v = fadd double %i.u, -5.000000e-01
  %.0.i = fptosi double %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %tiff_itrunc.exit, %bb.e
  %.016 = phi i32 [ %.0.i, %tiff_itrunc.exit ], [ 0, %bb.b ], [ %5, %bb.e ], [ 1023, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %.01725, i64 2
  %i.x = load <2 x i16>, ptr %i.w, align 2, !tbaa !63
  %i.y = sitofp <2 x i16> %i.x to <2 x double>
  %i.z = fadd nnan <2 x double> %i.y, splat (double 5.000000e-01)
  %i.aa = fmul nnan <2 x double> %i.z, splat (double f0x3F00000000000000) ; 2 uses
  %i.ab = load i32, ptr %i.d, align 8, !tbaa !37
  %i.ac = extractelement <2 x double> %i.aa, i64 0
  %i.ad = extractelement <2 x double> %i.aa, i64 1
  %i.ae = tail call i32 @uv_encode(double noundef %i.ac, double noundef %i.ad, i32 noundef %i.ab) ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  %spec.select = select i1 %i.af, i32 12266, i32 %i.ae
  %i.ag = shl i32 %.016, 14
  %i.ah = or i32 %spec.select, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.01824, i64 4
  store i32 %i.ah, ptr %.01824, align 4, !tbaa !6
  %i.aj = getelementptr inbounds nuw i8, ptr %.01725, i64 6
  %i.ak = icmp samesign ugt i64 %.in, 1
  br i1 %i.ak, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @LogLuvEncode32(ptr noundef %0, ptr noundef %1, i64 noundef %2, i16 zeroext %3) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !51
  %i.e = sext i32 %i.d to i64
  %i.f = sdiv i64 %2, %i.e                        ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  %i.i = icmp eq i32 %i.h, 2
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = icmp slt i64 %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @LogLuvEncode32.module, ptr noundef nonnull @.str.9) #16
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  tail call void %i.p(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %i.f) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0121 = phi ptr [ %i.n, %bb.d ], [ %1, %bb.a ] ; 14 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 6 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !65   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 6 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !59
  %i.w = sub nsw i64 %i.t, %i.v                   ; 2 uses
  %.not149204 = icmp sgt i64 %i.f, 0
  br i1 %.not149204, label %.lr.ph211.us, label %.split220.us

.lr.ph211.us:                                     ; preds = %bb.e, %..thread154_crit_edge.us
  %.0113218.us = phi i32 [ %.5.us, %..thread154_crit_edge.us ], [ 0, %bb.e ]
  %.0114217.us = phi i64 [ %.7.us, %..thread154_crit_edge.us ], [ %i.w, %bb.e ]
  %.0122216.us = phi ptr [ %.7129.us, %..thread154_crit_edge.us ], [ %i.r, %bb.e ]
  %.0137215.us = phi i32 [ %i.en, %..thread154_crit_edge.us ], [ 24, %bb.e ] ; 11 uses
  %i.x = shl i32 255, %.0137215.us                ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0137215.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph211.us, %bb.v
  %.1209.us = phi i32 [ %.0113218.us, %.lr.ph211.us ], [ %.5.us, %bb.v ]
  %.1115208.us = phi i64 [ %.0114217.us, %.lr.ph211.us ], [ %.7.us, %bb.v ] ; 3 uses
  %.1123207.us = phi ptr [ %.0122216.us, %.lr.ph211.us ], [ %.7129.us, %bb.v ] ; 2 uses
  %.0133205.us = phi i64 [ 0, %.lr.ph211.us ], [ %i.ek, %bb.v ] ; 10 uses
  %i.y = icmp slt i64 %.1115208.us, 4
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  store ptr %.1123207.us, ptr %i.q, align 8, !tbaa !58
  %i.z = load i64, ptr %i.s, align 8, !tbaa !65
  %i.aa = sub nsw i64 %i.z, %.1115208.us
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !59
  %i.ab = tail call i32 @TIFFFlushData1(ptr noundef %0) #16
  %.not.us = icmp eq i32 %i.ab, 0
  br i1 %.not.us, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !58
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !65
  %i.ae = load i64, ptr %i.u, align 8, !tbaa !59
  %i.af = sub nsw i64 %i.ad, %i.ae
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.2124.us = phi ptr [ %i.ac, %bb.h ], [ %.1123207.us, %bb.f ] ; 5 uses
  %.2116.us = phi i64 [ %i.af, %bb.h ], [ %.1115208.us, %bb.f ] ; 3 uses
  %i.ag = icmp slt i64 %.0133205.us, %i.f
  br i1 %i.ag, label %.lr.ph.us, label %.critedge.thread.us

.lr.ph.us:                                        ; preds = %bb.i, %.critedge.us
  %.0112182.us = phi i64 [ %.lcssa272, %.critedge.us ], [ %.0133205.us, %bb.i ] ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %.0121, i64 %.0112182.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !6  ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.us
  %indvars.iv = phi i64 [ 1, %.lr.ph.us ], [ %indvars.iv.next.1, %bb.n ] ; 5 uses
  %i.aj = add nsw i64 %.0112182.us, %indvars.iv   ; 4 uses
  %i.ak = icmp slt i64 %i.aj, %i.f
  br i1 %i.ak, label %bb.k, label %.critedge.us.thread

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds [4 x i8], ptr %.0121, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !6
  %i.an = xor i32 %i.am, %i.ai
  %i.ao = and i32 %i.an, %i.x
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.l, label %.critedge.us

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aq = add nsw i64 %.0112182.us, %indvars.iv.next ; 4 uses
  %i.ar = icmp slt i64 %i.aq, %i.f
  br i1 %i.ar, label %bb.m, label %.critedge.us.thread

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds [4 x i8], ptr %.0121, i64 %i.aq
  %i.at = load i32, ptr %i.as, align 4, !tbaa !6
  %i.au = xor i32 %i.at, %i.ai
  %i.av = and i32 %i.au, %i.x
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.n, label %.critedge.us

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 129
  br i1 %exitcond.not.1, label %.critedge.thread.us, label %bb.j

.critedge.us:                                     ; preds = %bb.m, %bb.k
  %indvars.iv.lcssa274 = phi i64 [ %indvars.iv, %bb.k ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.lcssa272 = phi i64 [ %i.aj, %bb.k ], [ %i.aq, %bb.m ]
  %i.ax = icmp samesign ugt i64 %indvars.iv.lcssa274, 3
  br i1 %i.ax, label %.critedge.thread.us.loopexit242, label %.lr.ph.us

.critedge.us.thread:                              ; preds = %bb.l, %bb.j
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.j ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %.lcssa = phi i64 [ %i.aj, %bb.j ], [ %i.aq, %bb.l ]
  %i.ay = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %i.az = icmp samesign ugt i64 %indvars.iv.lcssa, 3
  %spec.select = select i1 %i.az, i64 %.0112182.us, i64 %.lcssa
  br label %.critedge.thread.us

.critedge.thread.us.loopexit242:                  ; preds = %.critedge.us
  %i.ba = trunc nuw nsw i64 %indvars.iv.lcssa274 to i32
  br label %.critedge.thread.us

.critedge.thread.us:                              ; preds = %bb.n, %.critedge.us.thread, %.critedge.thread.us.loopexit242, %bb.i
  %.0112166.us = phi i64 [ %spec.select, %.critedge.us.thread ], [ %.0133205.us, %bb.i ], [ %.0112182.us, %.critedge.thread.us.loopexit242 ], [ %.0112182.us, %bb.n ] ; 10 uses
  %.4.us = phi i32 [ %i.ay, %.critedge.us.thread ], [ %.1209.us, %bb.i ], [ %i.ba, %.critedge.thread.us.loopexit242 ], [ 129, %bb.n ] ; 3 uses
  %i.bb = sub nsw i64 %.0112166.us, %.0133205.us
  %i.bc = and i64 %i.bb, -2
  %or.cond.us = icmp eq i64 %i.bc, 2
  br i1 %or.cond.us, label %bb.o, label %.loopexit161.us

bb.o:                                             ; preds = %.critedge.thread.us
  %i.bd = getelementptr inbounds [4 x i8], ptr %.0121, i64 %.0133205.us
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !6
  %i.bf = and i32 %i.be, %i.x                     ; 2 uses
  %i.bg = add nsw i64 %.0133205.us, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.0131.us = phi i64 [ %i.bg, %bb.o ], [ %i.bl, %bb.q ] ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %.0121, i64 %.0131.us
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !6
  %i.bj = and i32 %i.bi, %i.x
  %i.bk = icmp eq i32 %i.bj, %i.bf
  br i1 %i.bk, label %bb.q, label %.loopexit161.us

bb.q:                                             ; preds = %bb.p
  %i.bl = add nsw i64 %.0131.us, 1                ; 2 uses
  %i.bm = icmp eq i64 %i.bl, %.0112166.us
  br i1 %i.bm, label %.loopexit161.us.thread, label %bb.p

.loopexit161.us.thread:                           ; preds = %bb.q
  %i.bn = xor i64 %.0133205.us, -1
  %reass.sub = add i64 %.0112166.us, %i.bn
  %i.bo = trunc i64 %reass.sub to i8
  %i.bp = add i8 %i.bo, 127
  %i.bq = getelementptr inbounds nuw i8, ptr %.2124.us, i64 1
  store i8 %i.bp, ptr %.2124.us, align 1, !tbaa !9
  %i.br = lshr i32 %i.bf, %.0137215.us
end_hunk_0
