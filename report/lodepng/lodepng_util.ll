Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7lodepngL20convertFromXYZ_gammaEPfjjPK11LodePNGInfojPKNS_10LodePNGICCE:bb.a

bb.ao:                                            ; preds = %bb.am
  %i.ey = fmul nnan float %i.eu, 1.292000e+01
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.ez = phi float [ %i.ey, %bb.ao ], [ %i.ex, %bb.an ]
  store float %i.ez, ptr %i.et, align 4, !tbaa !82
  %i.fa = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !82 ; 3 uses
  %i.fc = fcmp olt float %i.fb, 3.130800e-03
  br i1 %i.fc, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fd = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %i.fb, float noundef f0x3ED55555)
  %i.fe = tail call float @llvm.fmuladd.f32(float %i.fd, float 1.055000e+00, float -5.500000e-02)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.ff = fmul nnan float %i.fb, 1.292000e+01
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.fg = phi float [ %i.ff, %bb.ar ], [ %i.fe, %bb.aq ]
  store float %i.fg, ptr %i.fa, align 4, !tbaa !82
  %i.fh = add nuw i64 %.24673, 1                  ; 2 uses
  %exitcond84.not = icmp eq i64 %i.fh, %mul.i60
  br i1 %exitcond84.not, label %.loopexit, label %.preheader, !llvm.loop !134

.loopexit:                                        ; preds = %bb.y, %bb.ai, %bb.as, %.preheader64, %bb.ac, %bb.aj, %bb.ab
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define noundef range(i32 0, 93) i32 @_ZN7lodepng19convertFromXYZFloatEPfPKfjjPK12LodePNGStateS2_j(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #11 {
bb.a:
  %7 = alloca %"struct.lodepng::LodePNGICC", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 460
  %i.f = load i32, ptr %i.e, align 4, !tbaa !74
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 472
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 480
  %i.j = load i32, ptr %i.i, align 8, !tbaa !76
  %i.k = zext i32 %i.j to i64
  %i.l = call fastcc noundef i32 @_ZN7lodepngL8parseICCEPNS_10LodePNGICCEPKhm(ptr noundef %7, ptr noundef %i.h, i64 noundef %i.k)
  %.not22 = icmp eq i32 %i.l, 0
  br i1 %.not22, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %7, align 8, !tbaa !77     ; 2 uses
  switch i32 %i.m, label %bb.e [
    i32 0, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.o = load i32, ptr %i.n, align 4, !tbaa !79
  %.not.i = icmp eq i32 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.q = load i32, ptr %i.p, align 4
  %.not6.i = icmp eq i32 %i.q, 0
  %or.cond = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %or.cond, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.old = getelementptr inbounds nuw i8, ptr %7, i64 68
  %.old24 = load i32, ptr %.old, align 4, !tbaa !80
  %.not6.i.old = icmp eq i32 %.old24, 0
  br i1 %.not6.i.old, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 124
  %i.s = load i32, ptr %i.r, align 4, !tbaa !81
  %.not7.i = icmp ne i32 %i.s, 0
  %..i = zext i1 %.not7.i to i32
  br label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit

_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.m, %bb.c ], [ 0, %bb.e ], [ %..i, %bb.f ], [ 0, %bb.d ] ; 2 uses
  %i.t = call fastcc noundef i32 @_ZN7lodepngL19convertFromXYZ_chrmEPfPKfjjPK11LodePNGInfojPKNS_10LodePNGICCES2_j(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.0, ptr noundef %7, ptr noundef %5, i32 noundef %6)
  %.not23 = icmp eq i32 %i.t, 0
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit
  %i.u = call fastcc noundef i32 @_ZN7lodepngL20convertFromXYZ_gammaEPfjjPK11LodePNGInfojPKNS_10LodePNGICCE(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.a, i32 noundef %.0, ptr noundef %7)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, %bb.b
  %.019 = phi i32 [ 1, %bb.b ], [ 1, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.u, %bb.g ]
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.v) #28
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.w) #28
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.x) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret i32 %.019
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7lodepng15convertRGBModelEPhPKhjjPK12LodePNGStateS5_j(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 4 uses
  %.not.i = icmp eq ptr %5, null
  %.not57.i = icmp eq ptr %4, null
  br i1 %.not.i, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 460
  %i.c = load i32, ptr %i.b, align 4, !tbaa !74
  %.not14.i.i = icmp eq i32 %i.c, 0
  br i1 %.not14.i.i, label %bb.c, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 452
  %i.e = load i32, ptr %i.d, align 4, !tbaa !102
  %.not15.i.i = icmp eq i32 %i.e, 0
  br i1 %.not15.i.i, label %bb.d, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 408
  %i.g = load i32, ptr %i.f, align 8, !tbaa !101
  %.not16.i.i = icmp eq i32 %i.g, 0
  br i1 %.not16.i.i, label %bb.e, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 416
  %i.i = load i32, ptr %i.h, align 8, !tbaa !135
  %.not17.i.i = icmp eq i32 %i.i, 0
  br i1 %.not17.i.i, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 420
  %i.k = load i32, ptr %i.j, align 4, !tbaa !136
  %.not18.i.i = icmp eq i32 %i.k, 31270
  br i1 %.not18.i.i, label %bb.g, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 424
  %i.m = load i32, ptr %i.l, align 8, !tbaa !137
  %.not19.i.i = icmp eq i32 %i.m, 32900
  br i1 %.not19.i.i, label %bb.h, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 428
  %i.o = load i32, ptr %i.n, align 4, !tbaa !138
  %.not20.i.i = icmp eq i32 %i.o, 64000
  br i1 %.not20.i.i, label %bb.i, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 432
  %i.q = load i32, ptr %i.p, align 8, !tbaa !139
  %.not21.i.i = icmp eq i32 %i.q, 33000
  br i1 %.not21.i.i, label %bb.j, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 436
  %i.s = load i32, ptr %i.r, align 4, !tbaa !140
  %.not22.i.i = icmp eq i32 %i.s, 30000
  br i1 %.not22.i.i, label %bb.k, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 440
  %i.u = load i32, ptr %i.t, align 8, !tbaa !141
  %.not23.i.i = icmp eq i32 %i.u, 60000
  br i1 %.not23.i.i, label %bb.l, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 444
  %i.w = load i32, ptr %i.v, align 4, !tbaa !142
  %.not24.i.i = icmp eq i32 %i.w, 15000
  br i1 %.not24.i.i, label %bb.m, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 448
  %i.y = load i32, ptr %i.x, align 8, !tbaa !143
  %.not25.i.i = icmp eq i32 %i.y, 6000
  br i1 %.not25.i.i, label %bb.n, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i

bb.n:                                             ; preds = %bb.m, %bb.e
  br label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i

_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i:       ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %i.z = phi i1 [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.j ], [ true, %bb.n ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.m ], [ false, %bb.l ] ; 3 uses
  %.0.i.i = phi i32 [ 1, %bb.a ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ 0, %bb.j ], [ 1, %bb.n ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.l ] ; 2 uses
  br i1 %.not57.i, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i, label %bb.o

bb.o:                                             ; preds = %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 460
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !74
  %.not14.i78.i = icmp eq i32 %i.ab, 0
  br i1 %.not14.i78.i, label %bb.p, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i

bb.p:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 452
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !102
  %.not15.i80.i = icmp eq i32 %i.ad, 0
  br i1 %.not15.i80.i, label %bb.q, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 408
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !101
  %.not16.i81.i = icmp eq i32 %i.af, 0
  br i1 %.not16.i81.i, label %bb.r, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 416
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !135
  %.not17.i82.i = icmp eq i32 %i.ah, 0
  br i1 %.not17.i82.i, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 420
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !136
  %.not18.i83.i = icmp eq i32 %i.aj, 31270
  br i1 %.not18.i83.i, label %bb.t, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i

bb.t:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 424
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !137
  %.not19.i84.i = icmp eq i32 %i.al, 32900
  br i1 %.not19.i84.i, label %bb.u, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i

bb.u:                                             ; preds = %bb.t
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 428
  %i.an = load i32, ptr %i.am, align 4, !tbaa !138
  %.not20.i85.i = icmp eq i32 %i.an, 64000
  br i1 %.not20.i85.i, label %bb.v, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i

bb.v:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !139
  %.not21.i86.i = icmp eq i32 %i.ap, 33000
  br i1 %.not21.i86.i, label %bb.w, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i

bb.w:                                             ; preds = %bb.v
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 436
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !140
  %.not22.i87.i = icmp eq i32 %i.ar, 30000
  br i1 %.not22.i87.i, label %bb.x, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i

bb.x:                                             ; preds = %bb.w
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.at = load i32, ptr %i.as, align 8, !tbaa !141
  %.not23.i88.i = icmp eq i32 %i.at, 60000
  br i1 %.not23.i88.i, label %bb.y, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i

bb.y:                                             ; preds = %bb.x
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 444
  %i.av = load i32, ptr %i.au, align 4, !tbaa !142
  %.not24.i89.i = icmp eq i32 %i.av, 15000
  br i1 %.not24.i89.i, label %bb.z, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i

bb.z:                                             ; preds = %bb.y
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 448
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !143
  %.not25.i90.i = icmp eq i32 %i.ax, 6000
  br i1 %.not25.i90.i, label %bb.aa, label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i

bb.aa:                                            ; preds = %bb.z, %bb.r
  br label %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i

_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i:     ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.p, %bb.o, %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i
  %or.cond.i = phi i1 [ %i.z, %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i ], [ false, %bb.o ], [ %i.z, %bb.p ], [ false, %bb.q ], [ false, %bb.s ], [ false, %bb.u ], [ false, %bb.w ], [ %i.z, %bb.aa ], [ false, %bb.t ], [ false, %bb.v ], [ false, %bb.x ], [ false, %bb.z ], [ false, %bb.y ]
  %.0.i79.i = phi i32 [ 1, %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit.i ], [ 0, %bb.o ], [ 1, %bb.p ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %bb.w ], [ 1, %bb.aa ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %bb.z ], [ 0, %bb.y ] ; 2 uses
  %.not58.i = icmp ne i32 %.0.i.i, %.0.i79.i
  %brmerge.i = or i1 %or.cond.i, %.not58.i
  br i1 %brmerge.i, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 460
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !74 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 460
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !74
  %.not59.i = icmp eq i32 %i.az, %i.bb
  br i1 %.not59.i, label %bb.ac, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %.not60.i = icmp eq i32 %i.az, 0
  br i1 %.not60.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 480
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !76 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 480
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !76
  %.not76.i = icmp eq i32 %i.bd, %i.bf
  br i1 %.not76.i, label %.preheader.i, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

.preheader.i:                                     ; preds = %bb.ad
  %i.bg = zext i32 %i.bd to i64
  %.not95.i = icmp eq i32 %i.bd, 0
  br i1 %.not95.i, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread36, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 472
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !75
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 472
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !75
  br label %bb.af

bb.ae:                                            ; preds = %bb.af
  %i.bl = add nuw nsw i64 %.092.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bl, %i.bg
  br i1 %exitcond.not.i, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread36, label %bb.af, !llvm.loop !144

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i
  %.092.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bl, %bb.ae ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.092.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.092.i
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !20
  %.not77.i = icmp eq i8 %i.bn, %i.bp
  br i1 %.not77.i, label %bb.ae, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.ag:                                            ; preds = %bb.ac
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 452
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !102 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 452
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !102
  %.not61.i = icmp eq i32 %i.br, %i.bt
  br i1 %.not61.i, label %bb.ah, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %.not62.i = icmp eq i32 %i.br, 0
  br i1 %.not62.i, label %bb.ai, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread36

bb.ai:                                            ; preds = %bb.ah
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 408
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !101 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 408
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !101
  %.not63.i = icmp eq i32 %i.bv, %i.bx
  br i1 %.not63.i, label %bb.aj, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.aj:                                            ; preds = %bb.ai
  %.not64.i = icmp eq i32 %i.bv, 0
  br i1 %.not64.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 412
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !103
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 412
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !103
  %.not65.i = icmp eq i32 %i.bz, %i.cb
  br i1 %.not65.i, label %bb.al, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 416
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !135 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 416
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !135
  %.not66.i = icmp eq i32 %i.cd, %i.cf
  br i1 %.not66.i, label %bb.am, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.am:                                            ; preds = %bb.al
  %.not67.i = icmp eq i32 %i.cd, 0
  br i1 %.not67.i, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread36, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 420
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !136
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 420
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !136
  %.not68.i = icmp eq i32 %i.ch, %i.cj
  br i1 %.not68.i, label %bb.ao, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.ao:                                            ; preds = %bb.an
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 424
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !137
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 424
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !137
  %.not69.i = icmp eq i32 %i.cl, %i.cn
  br i1 %.not69.i, label %bb.ap, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 428
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !138
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 428
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !138
  %.not70.i = icmp eq i32 %i.cp, %i.cr
  br i1 %.not70.i, label %bb.aq, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 432
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !139
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !139
  %.not71.i = icmp eq i32 %i.ct, %i.cv
  br i1 %.not71.i, label %bb.ar, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.ar:                                            ; preds = %bb.aq
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 436
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !140
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 436
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !140
  %.not72.i = icmp eq i32 %i.cx, %i.cz
  br i1 %.not72.i, label %bb.as, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.as:                                            ; preds = %bb.ar
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 440
  %i.db = load i32, ptr %i.da, align 8, !tbaa !141
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 440
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !141
  %.not73.i = icmp eq i32 %i.db, %i.dd
  br i1 %.not73.i, label %bb.at, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.at:                                            ; preds = %bb.as
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 444
  %i.df = load i32, ptr %i.de, align 4, !tbaa !142
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 444
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !142
  %.not74.i = icmp eq i32 %i.df, %i.dh
  br i1 %.not74.i, label %bb.au, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

bb.au:                                            ; preds = %bb.at
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 448
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !143
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 448
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !143
  %.not75.i = icmp eq i32 %i.dj, %i.dl
  br i1 %.not75.i, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread36, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit: ; preds = %_ZN7lodepngL6isSRGBEPK11LodePNGInfo.exit91.i
  %not..not58.i.not = icmp eq i32 %.0.i.i, %.0.i79.i
  br i1 %not..not58.i.not, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread36, label %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread

_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread36: ; preds = %bb.ae, %bb.am, %bb.au, %.preheader.i, %bb.ah, %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.do = tail call noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dn, i32 noundef %2, i32 noundef %3)
  br label %bb.ay

_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread: ; preds = %bb.af, %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit, %bb.au, %bb.ab, %bb.ad, %bb.as, %bb.at, %bb.ag, %bb.ai, %bb.ak, %bb.al, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %i.dp = zext i32 %2 to i64
  %i.dq = zext i32 %3 to i64
  %mul.i39 = mul nuw i64 %i.dq, %i.dp             ; 2 uses
  %mul.ov.i31 = icmp ult i64 %mul.i39, 1152921504606846976
  br i1 %mul.ov.i31, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread
  %mul.val.i30 = shl nuw i64 %mul.i39, 4
  %i.dr = tail call noalias noundef ptr @malloc(i64 noundef %mul.val.i30) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ds = call noundef i32 @_ZN7lodepng12convertToXYZEPfS0_PKhjjPK12LodePNGState(ptr noundef %i.dr, ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5) ; 2 uses
  %.not28 = icmp eq i32 %i.ds, 0
  br i1 %.not28, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.dt = call noundef i32 @_ZN7lodepng14convertFromXYZEPhPKfjjPK12LodePNGStateS2_j(ptr noundef %0, ptr noundef %i.dr, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %i.a, i32 noundef %6)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0 = phi i32 [ %i.ds, %bb.av ], [ %i.dt, %bb.aw ]
  tail call void @free(ptr noundef %i.dr) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread, %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread36
  %.1 = phi i32 [ %i.do, %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread36 ], [ %.0, %bb.ax ], [ 92, %_ZN7lodepngL11modelsEqualEPK12LodePNGStateS2_.exit.thread ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7lodepng13convertToSrgbEPhPKhjjPK12LodePNGState(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.LodePNGState, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_Z18lodepng_state_initP12LodePNGState(ptr noundef nonnull %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.c = call noundef i32 @_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.d = call noundef i32 @_ZN7lodepng15convertRGBModelEPhPKhjjPK12LodePNGStateS5_j(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %5, ptr noundef %4, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i32 %i.d
}

declare void @_Z18lodepng_state_initP12LodePNGState(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7lodepng15convertFromSrgbEPhPKhjjPK12LodePNGState(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.LodePNGState, align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_Z18lodepng_state_initP12LodePNGState(ptr noundef nonnull %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.c = call noundef i32 @_Z23lodepng_color_mode_copyP16LodePNGColorModePKS_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 0 uses
  %i.d = call noundef i32 @_ZN7lodepng15convertRGBModelEPhPKhjjPK12LodePNGStateS5_j(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %5, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL9isICCwordEPKhmmPKc(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 132, 4294967296) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = add i64 %2, 4
  %i.b = icmp ugt i64 %i.a, %1
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !20
  %i.e = load i8, ptr %3, align 1, !tbaa !20
  %i.f = icmp eq i8 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.c, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !20
  %i.k = icmp eq i8 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.c, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !20
  %i.p = icmp eq i8 %i.m, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.c, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.t = load i8, ptr %i.s, align 1, !tbaa !20
  %i.u = icmp eq i8 %i.r, %i.t
  %i.v = zext i1 %i.u to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.v, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef float @_ZN7lodepngL13iccForwardTRCEPKNS_15LodePNGICCCurveEf(ptr nofree noundef nonnull readonly captures(none) %0, float noundef %1) unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !87
  switch i32 %i.a, label %bb.w [
    i32 0, label %bb.x
    i32 1, label %bb.b
    i32 2, label %bb.h
    i32 3, label %bb.j
    i32 4, label %bb.m
    i32 5, label %bb.q
    i32 6, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fcmp olt float %1, 0.000000e+00
  br i1 %i.d, label %bb.x, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !93   ; 3 uses
  %i.g = add i64 %i.f, -1
  %i.h = uitofp i64 %i.g to float                 ; 2 uses
  %i.i = fmul float %1, %i.h
  %i.j = fptoui float %i.i to i64                 ; 4 uses
  %.not79 = icmp ugt i64 %i.f, %i.j
  br i1 %.not79, label %bb.e, label %bb.x

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j
  %i.l = load float, ptr %i.k, align 4, !tbaa !82
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.f
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.m
  %i.p = load float, ptr %i.o, align 4, !tbaa !82
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.q = phi float [ %i.p, %bb.f ], [ 1.000000e+00, %bb.e ]
  %i.r = uitofp i64 %i.j to float
  %i.s = fneg float %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %1, float %i.h, float %i.s) ; 2 uses
  %i.u = fsub float 1.000000e+00, %i.t
  %i.v = fmul float %i.t, %i.q
  %i.w = tail call float @llvm.fmuladd.f32(float %i.l, float %i.u, float %i.v)
  br label %bb.x

bb.h:                                             ; preds = %bb.a
  %i.x = fcmp ogt float %1, 0.000000e+00
  br i1 %i.x, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load float, ptr %i.y, align 8, !tbaa !92
  %i.aa = tail call fastcc noundef float @_ZN7lodepngL12lodepng_powfEff(float noundef %1, float noundef %i.z)
  br label %bb.x

bb.j:                                             ; preds = %bb.a
  %i.ab = fcmp olt float %1, 0.000000e+00
  br i1 %i.ab, label %bb.x, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.ae = fneg float %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load float, ptr %i.af, align 4, !tbaa !95 ; 2 uses
  %i.ah = fdiv float %i.ae, %i.ag
  %i.ai = fcmp ult float %1, %i.ah
  br i1 %i.ai, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_0
