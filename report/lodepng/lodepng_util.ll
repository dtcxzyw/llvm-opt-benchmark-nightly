Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN7lodepng14getFilterTypesERSt6vectorIhSaIhEERKS2_:bb.a
_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i:  ; preds = %bb.t, %.lr.ph.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.cc, %i.bv
  br i1 %.not.i.i.i30, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.s
  %i.cd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.bt, %bb.s ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !45
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #29
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i32 %.024

bb.v:                                             ; preds = %bb.r, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.d, %bb.c ]
  call void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !42   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #29
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #29
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 256) i32 @_ZN7lodepng15getPaletteValueEPKhmi(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %bb.f

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %2, i1 true)
  switch i32 %i.c, label %bb.f [
    i32 3, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %.split
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20
  %i.f = zext i8 %i.e to i32
  br label %bb.f

bb.c:                                             ; preds = %.split
  %i.g = lshr i64 %1, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !20
  %i.j = zext i8 %i.i to i32
  %.tr16 = trunc i64 %1 to i32
  %i.k = shl i32 %.tr16, 2
  %i.l = and i32 %i.k, 4
  %i.m = lshr i32 %i.j, %i.l
  %i.n = and i32 %i.m, 15
  br label %bb.f

bb.d:                                             ; preds = %.split
  %i.o = lshr i64 %1, 2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20
  %i.r = zext i8 %i.q to i32
  %.tr = trunc i64 %1 to i32
  %i.s = shl i32 %.tr, 1
  %i.t = and i32 %i.s, 6
  %i.u = lshr i32 %i.r, %i.t
  %i.v = and i32 %i.u, 3
  br label %bb.f

bb.e:                                             ; preds = %.split
  %i.w = lshr i64 %1, 3
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %i.z = zext i8 %i.y to i32
  %i.aa = trunc i64 %1 to i32
  %i.ab = and i32 %i.aa, 7
  %i.ac = lshr i32 %i.z, %i.ab
  %i.ad = and i32 %i.ac, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.split, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.n, %bb.c ], [ %i.v, %bb.d ], [ %i.ad, %bb.e ], [ 0, %.split ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7lodepng22lodepng_icc_curve_initEPNS_15LodePNGICCCurveE(ptr nofree noundef writeonly captures(none) initializes((8, 24)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN7lodepng25lodepng_icc_curve_cleanupEPNS_15LodePNGICCCurveE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.b) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN7lodepng16lodepng_icc_initEPNS_10LodePNGICCE(ptr nofree noundef writeonly captures(none) initializes((136, 152), (192, 208), (248, 264)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @_ZN7lodepng19lodepng_icc_cleanupEPNS_10LodePNGICCE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.b) #28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.d) #28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.f) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7lodepng12convertToXYZEPfS0_PKhjjPK12LodePNGState(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.LodePNGColorMode, align 8   ; 4 uses
  %7 = alloca %"struct.lodepng::LodePNGICC", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 172
  %i.d = load i32, ptr %i.c, align 4, !tbaa !73
  %i.e = icmp ugt i32 %i.d, 8                     ; 5 uses
  %i.f = select i1 %i.e, i64 65536, i64 256       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.g = select i1 %i.e, i32 16, i32 8
  call void @_Z23lodepng_color_mode_make16LodePNGColorTypej(ptr dead_on_unwind nonnull writable sret(%struct.LodePNGColorMode) align 8 %6, i32 noundef 6, i32 noundef %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 248 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 460
  %i.l = load i32, ptr %i.k, align 4, !tbaa !74
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 472
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 480
  %i.p = load i32, ptr %i.o, align 8, !tbaa !76
  %i.q = zext i32 %i.p to i64
  %i.r = call fastcc noundef i32 @_ZN7lodepngL8parseICCEPNS_10LodePNGICCEPKhm(ptr noundef %7, ptr noundef %i.n, i64 noundef %i.q)
  %.not119 = icmp eq i32 %i.r, 0
  br i1 %.not119, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.s = load i32, ptr %7, align 8, !tbaa !77     ; 5 uses
  switch i32 %i.s, label %bb.e [
    i32 0, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 84
  %i.u = load i32, ptr %i.t, align 4, !tbaa !79
  %.not.i = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.w = load i32, ptr %i.v, align 4
  %.not6.i = icmp eq i32 %i.w, 0
  %or.cond143 = select i1 %.not.i, i1 true, i1 %.not6.i
  br i1 %or.cond143, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.old = getelementptr inbounds nuw i8, ptr %7, i64 68
  %.old142 = load i32, ptr %.old, align 4, !tbaa !80
  %.not6.i.old = icmp eq i32 %.old142, 0
  br i1 %.not6.i.old, label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 124
  %i.y = load i32, ptr %i.x, align 4, !tbaa !81
  %.not7.i = icmp ne i32 %i.y, 0
  %..i = zext i1 %.not7.i to i32
  br label %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit

_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %i.z = phi i32 [ undef, %bb.a ], [ %i.s, %bb.c ], [ %i.s, %bb.e ], [ %i.s, %bb.f ], [ 2, %bb.d ]
  %.0109 = phi i32 [ 0, %bb.a ], [ %i.s, %bb.c ], [ 0, %bb.e ], [ %..i, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %i.aa = zext i32 %3 to i64
  %i.ab = zext i32 %4 to i64
  %mul.i141 = mul nuw i64 %i.ab, %i.aa            ; 4 uses
  %i.ac = select i1 %i.e, i64 8, i64 4
  %mul.i129 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %mul.i141, i64 range(i64 0, 4294967296) %i.ac) ; 2 uses
  %mul.ov.i131 = extractvalue { i64, i1 } %mul.i129, 1
  br i1 %mul.ov.i131, label %bb.n, label %bb.g

bb.g:                                             ; preds = %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit
  %mul.val.i130 = extractvalue { i64, i1 } %mul.i129, 0
  %i.ad = call noalias noundef ptr @malloc(i64 noundef %mul.val.i130) #32 ; 8 uses
  %i.ae = call noundef i32 @_Z15lodepng_convertPhPKhPK16LodePNGColorModeS4_jj(ptr noundef %i.ad, ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %i.a, i32 noundef %3, i32 noundef %4) ; 2 uses
  %.not124 = icmp eq i32 %i.ae, 0
  br i1 %.not124, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.af = icmp ne i32 %.0109, 0
  %i.ag = icmp eq i32 %i.z, 2
  %or.cond = and i1 %i.af, %i.ag
  br i1 %or.cond, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ah = select i1 %i.e, i64 786432, i64 3072
  %i.ai = call noalias noundef ptr @malloc(i64 noundef %i.ah) #32 ; 4 uses
  %i.aj = add nsw i64 %i.f, -1
  %i.ak = uitofp nneg i64 %i.aj to float
  %i.al = fdiv float 1.000000e+00, %i.ak          ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 128
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.050.i = phi i64 [ 0, %bb.i ], [ %i.ar, %bb.j ] ; 3 uses
  %i.an = uitofp nneg i64 %.050.i to float
  %i.ao = fmul float %i.al, %i.an
  %i.ap = call fastcc noundef float @_ZN7lodepngL13iccForwardTRCEPKNS_15LodePNGICCCurveEf(ptr noundef readonly %i.am, float noundef %i.ao)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.050.i
  store float %i.ap, ptr %i.aq, align 4, !tbaa !82
  %i.ar = add nuw nsw i64 %.050.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ar, %i.f
  br i1 %exitcond.not.i, label %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit, label %bb.j, !llvm.loop !83

_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit: ; preds = %bb.j
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.f ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 184
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit
  %.050.i132 = phi i64 [ 0, %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit ], [ %i.ay, %bb.k ] ; 3 uses
  %i.au = uitofp nneg i64 %.050.i132 to float
  %i.av = fmul float %i.al, %i.au
  %i.aw = call fastcc noundef float @_ZN7lodepngL13iccForwardTRCEPKNS_15LodePNGICCCurveEf(ptr noundef readonly %i.at, float noundef %i.av)
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.050.i132
  store float %i.aw, ptr %i.ax, align 4, !tbaa !82
  %i.ay = add nuw nsw i64 %.050.i132, 1           ; 2 uses
  %exitcond.not.i133 = icmp eq i64 %i.ay, %i.f
  br i1 %exitcond.not.i133, label %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit134, label %bb.k, !llvm.loop !83

_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit134: ; preds = %bb.k
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 240
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit134
  %.050.i135 = phi i64 [ 0, %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit134 ], [ %i.bf, %bb.l ] ; 3 uses
  %i.bb = uitofp nneg i64 %.050.i135 to float
  %i.bc = fmul float %i.al, %i.bb
  %i.bd = call fastcc noundef float @_ZN7lodepngL13iccForwardTRCEPKNS_15LodePNGICCCurveEf(ptr noundef readonly %i.ba, float noundef %i.bc)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %.050.i135
  store float %i.bd, ptr %i.be, align 4, !tbaa !82
  %i.bf = add nuw nsw i64 %.050.i135, 1           ; 2 uses
  %exitcond.not.i136 = icmp eq i64 %i.bf, %i.f
  br i1 %exitcond.not.i136, label %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit137, label %bb.l, !llvm.loop !83

bb.m:                                             ; preds = %bb.h
  %i.bg = shl nuw nsw i64 %i.f, 2
  %i.bh = call noalias noundef ptr @malloc(i64 noundef %i.bg) #32 ; 4 uses
  call fastcc void @_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE(ptr noundef %i.bh, i64 noundef %i.f, i64 noundef 0, ptr noundef nonnull %i.b, i32 noundef %.0109, ptr noundef %7)
  br label %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit137

_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit137: ; preds = %bb.l, %bb.m
  %.0108 = phi ptr [ %i.bh, %bb.m ], [ %i.ai, %bb.l ] ; 3 uses
  %.0107 = phi ptr [ %i.bh, %bb.m ], [ %i.as, %bb.l ] ; 2 uses
  %.0 = phi ptr [ %i.bh, %bb.m ], [ %i.az, %bb.l ] ; 2 uses
  %.not151 = icmp eq i64 %mul.i141, 0             ; 2 uses
  br i1 %i.e, label %.preheader, label %.preheader145

.preheader145:                                    ; preds = %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit137
  br i1 %.not151, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %_ZN7lodepngL24convertToXYZ_gamma_tableEPfmmPK11LodePNGInfojPKNS_10LodePNGICCE.exit137
  br i1 %.not151, label %.loopexit, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader, %.lr.ph149
  %.0112148 = phi i64 [ %i.cy, %.lr.ph149 ], [ 0, %.preheader ] ; 3 uses
  %i.bi = shl i64 %.0112148, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.bi ; 8 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !20
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !20
  %i.bo = zext i8 %i.bn to i64
  %.idx125 = shl nuw nsw i64 %i.bl, 10
  %i.bp = getelementptr inbounds nuw i8, ptr %.0108, i64 %.idx125
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load float, ptr %i.bq, align 4, !tbaa !82
  %.idx144 = shl i64 %.0112148, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.idx144 ; 4 uses
  store float %i.br, ptr %i.bs, align 4, !tbaa !82
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !20
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !20
  %i.by = zext i8 %i.bx to i64
  %.idx126 = shl nuw nsw i64 %i.bv, 10
  %i.bz = getelementptr inbounds nuw i8, ptr %.0107, i64 %.idx126
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !82
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  store float %i.cb, ptr %i.cc, align 4, !tbaa !82
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !20
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 5
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !20
  %i.ci = zext i8 %i.ch to i64
  %.idx127 = shl nuw nsw i64 %i.cf, 10
  %i.cj = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx127
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !82
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %i.cl, ptr %i.cm, align 4, !tbaa !82
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !20
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bj, i64 7
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !20
  %i.ct = zext i8 %i.cs to i32
  %i.cu = or disjoint i32 %i.cq, %i.ct
  %i.cv = uitofp nneg i32 %i.cu to float
  %i.cw = fmul nnan float %i.cv, f0x37800080
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store float %i.cw, ptr %i.cx, align 4, !tbaa !82
  %i.cy = add nuw i64 %.0112148, 1                ; 2 uses
  %exitcond153.not = icmp eq i64 %i.cy, %mul.i141
  br i1 %exitcond153.not, label %.loopexit, label %.lr.ph149, !llvm.loop !84

.lr.ph:                                           ; preds = %.preheader145, %.lr.ph
  %.1113147 = phi i64 [ %i.ea, %.lr.ph ], [ 0, %.preheader145 ] ; 2 uses
  %i.cz = shl i64 %.1113147, 2                    ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !20
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0108, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !82
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cz
  store float %i.de, ptr %i.df, align 4, !tbaa !82
  %i.dg = or disjoint i64 %i.cz, 1                ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !20
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.0107, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !82
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dg
  store float %i.dl, ptr %i.dm, align 4, !tbaa !82
  %i.dn = or disjoint i64 %i.cz, 2                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !20
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !82
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dn
  store float %i.ds, ptr %i.dt, align 4, !tbaa !82
  %i.du = or disjoint i64 %i.cz, 3                ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !20
  %i.dx = uitofp i8 %i.dw to float
  %i.dy = fmul nnan float %i.dx, f0x3B808081
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.du
  store float %i.dy, ptr %i.dz, align 4, !tbaa !82
  %i.ea = add nuw i64 %.1113147, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %mul.i141
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !85

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph149, %.preheader145, %.preheader
  %i.eb = call fastcc noundef i32 @_ZN7lodepngL17convertToXYZ_chrmEPfjjPK11LodePNGInfojPKNS_10LodePNGICCES0_(ptr noundef %0, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.b, i32 noundef %.0109, ptr noundef %7, ptr noundef %1)
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.g, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit, %bb.b
  %.3 = phi i32 [ 1, %bb.b ], [ %i.eb, %.loopexit ], [ 92, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.ae, %bb.g ]
  %.0111 = phi ptr [ null, %bb.b ], [ %i.ad, %.loopexit ], [ null, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ %i.ad, %bb.g ]
  %.1 = phi ptr [ null, %bb.b ], [ %.0108, %.loopexit ], [ null, %_ZN7lodepngL11validateICCEPKNS_10LodePNGICCE.exit ], [ null, %bb.g ]
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !69
  call void @free(ptr noundef %i.ec) #28
  %i.ed = load ptr, ptr %i.i, align 8, !tbaa !69
  call void @free(ptr noundef %i.ed) #28
  %i.ee = load ptr, ptr %i.j, align 8, !tbaa !69
  call void @free(ptr noundef %i.ee) #28
  call void @free(ptr noundef %.0111) #28
  call void @free(ptr noundef %.1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret i32 %.3
}

declare void @_Z23lodepng_color_mode_make16LodePNGColorTypej(ptr dead_on_unwind writable sret(%struct.LodePNGColorMode) align 8, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
end_hunk_0
