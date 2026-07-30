inline.NumInlined: 483
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8ultrahdr14getLuminanceFnE16uhdr_color_gamut:bb.a
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8ultrahdr14getLuminanceFnE16uhdr_color_gamut, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN8ultrahdr16getInverseOetfFnE19uhdr_color_transfer(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8ultrahdr16getInverseOetfFnE19uhdr_color_transfer, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN8ultrahdr9getOotfFnE19uhdr_color_transfer(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 4
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8ultrahdr9getOotfFnE19uhdr_color_transfer, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr { <2 x float>, float } @_ZN8ultrahdr12identityOotfENS_5ColorEPFfS0_E(<2 x float> %0, float %1, ptr noundef %2) #23 {
bb.a:
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %1, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN8ultrahdr10getPixelFnE12uhdr_img_fmt(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 13
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8ultrahdr10getPixelFnE12uhdr_img_fmt, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN8ultrahdr10putPixelFnE12uhdr_img_fmt(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %switch.tableidx = add i32 %0, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 10
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8ultrahdr10putPixelFnE12uhdr_img_fmt, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN8ultrahdr16getSamplePixelFnE12uhdr_img_fmt(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 13
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8ultrahdr16getSamplePixelFnE12uhdr_img_fmt, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN8ultrahdr16isPixelFormatRgbE12uhdr_img_fmt(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -3
  %spec.select = icmp ult i32 %i.a, 3
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 -1073741824, 0) i32 @_ZN8ultrahdr18colorToRgba1010102ENS_5ColorE(<2 x float> %0, float %1) local_unnamed_addr #5 {
bb.a:
  %.sroa.03.0.vec.extract = extractelement <2 x float> %0, i64 0
  %i.a = fmul contract float %.sroa.03.0.vec.extract, 1.023000e+03
  %i.b = fadd contract float %i.a, 5.000000e-01   ; 3 uses
  %i.c = fcmp contract olt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp contract ogt float %i.b, 1.023000e+03
  %i.e = select contract i1 %i.d, float 1.023000e+03, float %i.b
  %i.f = fptoui float %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]    ; 2 uses
  %.sroa.03.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.h = fmul contract float %.sroa.03.4.vec.extract, 1.023000e+03
  %i.i = fadd contract float %i.h, 5.000000e-01   ; 3 uses
  %i.j = fcmp contract olt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp contract ogt float %i.i, 1.023000e+03
  %i.l = select contract i1 %i.k, float 1.023000e+03, float %i.i
  %i.m = fptoui float %i.l to i32
  %i.n = shl i32 %i.m, 10
  %i.o = or i32 %i.g, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.p = phi i32 [ %i.o, %bb.d ], [ %i.g, %bb.c ] ; 2 uses
  %i.q = fmul contract float %1, 1.023000e+03
  %i.r = fadd contract float %i.q, 5.000000e-01   ; 3 uses
  %i.s = fcmp contract olt float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = fcmp contract ogt float %i.r, 1.023000e+03
  %i.u = select contract i1 %i.t, float 1.023000e+03, float %i.r
  %i.v = fptoui float %i.u to i32
  %i.w = shl i32 %i.v, 20
  %i.x = or i32 %i.p, %i.w
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ %i.x, %bb.f ], [ %i.p, %bb.e ]
  %i.z = or i32 %i.y, -1073741824
  ret i32 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 4323455642275676160, 4323737117252386816) i64 @_ZN8ultrahdr14colorToRgbaF16ENS_5ColorE(<2 x float> %0, float %1) local_unnamed_addr #5 {
bb.a:
  %bc = bitcast <2 x float> %0 to <2 x i32>       ; 2 uses
  %i.a = extractelement <2 x i32> %bc, i64 0
  %i.b = add i32 %i.a, 4096                       ; 3 uses
  %i.c = lshr i32 %i.b, 23                        ; 2 uses
  %i.d = and i32 %i.c, 255                        ; 4 uses
  %i.e = and i32 %i.b, 8388607                    ; 2 uses
  %i.f = lshr i32 %i.b, 16
  %i.g = and i32 %i.f, 32768
  %i.h = icmp samesign ugt i32 %i.d, 112
  %i.i = shl nuw nsw i32 %i.c, 10
  %i.j = and i32 %i.i, 31744
  %i.k = lshr i32 %i.e, 13
  %i.l = or disjoint i32 %i.j, %i.k
  %i.m = xor i32 %i.l, 16384
  %i.n = select i1 %i.h, i32 %i.m, i32 0
  %i.o = add nsw i32 %i.d, -102
  %i.p = icmp ult i32 %i.o, 11
  %i.q = add nuw nsw i32 %i.e, 8384512
  %i.r = sub nsw i32 125, %i.d
  %i.s = lshr i32 %i.q, %i.r
  %i.t = add nuw nsw i32 %i.s, 1
  %i.u = lshr i32 %i.t, 1
  %i.v = icmp samesign ugt i32 %i.d, 143
  %i.w = select i1 %i.v, i32 32767, i32 0
  %i.x = or disjoint i32 %i.w, %i.g
  %i.y = or i32 %i.x, %i.n
  %i.z = and i32 %i.u, 65535
  %.masked = select i1 %i.p, i32 %i.z, i32 0
  %i.aa = or i32 %i.y, %.masked
  %i.ab = zext nneg i32 %i.aa to i64
  %2 = extractelement <2 x i32> %bc, i64 1
  %3 = add i32 %2, 4096                           ; 3 uses
  %4 = lshr i32 %3, 23                            ; 2 uses
  %5 = and i32 %4, 255                            ; 4 uses
  %6 = and i32 %3, 8388607                        ; 2 uses
  %7 = lshr i32 %3, 16
  %8 = and i32 %7, 32768
  %9 = icmp samesign ugt i32 %5, 112
  %10 = shl nuw nsw i32 %4, 10
  %11 = and i32 %10, 31744
  %12 = lshr i32 %6, 13
  %13 = or disjoint i32 %11, %12
  %14 = xor i32 %13, 16384
  %15 = select i1 %9, i32 %14, i32 0
  %16 = add nsw i32 %5, -102
  %17 = icmp ult i32 %16, 11
  %18 = add nuw nsw i32 %6, 8384512
  %19 = sub nsw i32 125, %5
  %20 = lshr i32 %18, %19
  %21 = add nuw nsw i32 %20, 1
  %22 = lshr i32 %21, 1
  %23 = icmp samesign ugt i32 %5, 143
  %24 = select i1 %23, i32 32767, i32 0
  %25 = or disjoint i32 %24, %8
  %26 = or i32 %25, %15
  %27 = and i32 %22, 65535
  %.masked3 = select i1 %17, i32 %27, i32 0
  %28 = or i32 %26, %.masked3
  %29 = zext nneg i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 16
  %31 = add nuw nsw i64 %30, %i.ab
  %32 = bitcast float %1 to i32
  %33 = add i32 %32, 4096                         ; 3 uses
  %34 = lshr i32 %33, 23                          ; 2 uses
  %35 = and i32 %34, 255                          ; 4 uses
  %36 = and i32 %33, 8388607                      ; 2 uses
  %37 = lshr i32 %33, 16
  %38 = and i32 %37, 32768
  %39 = icmp samesign ugt i32 %35, 112
  %40 = shl nuw nsw i32 %34, 10
  %41 = and i32 %40, 31744
  %42 = lshr i32 %36, 13
  %43 = or disjoint i32 %41, %42
  %44 = xor i32 %43, 16384
  %45 = select i1 %39, i32 %44, i32 0
  %46 = add nsw i32 %35, -102
  %47 = icmp ult i32 %46, 11
  %48 = add nuw nsw i32 %36, 8384512
  %49 = sub nsw i32 125, %35
  %50 = lshr i32 %48, %49
  %51 = add nuw nsw i32 %50, 1
  %52 = lshr i32 %51, 1
  %53 = icmp samesign ugt i32 %35, 143
  %54 = select i1 %53, i32 32767, i32 0
  %55 = or disjoint i32 %54, %38
  %56 = or i32 %55, %45
  %57 = and i32 %52, 65535
  %.masked4 = select i1 %47, i32 %57, i32 0
  %58 = or i32 %56, %.masked4
  %59 = zext nneg i32 %58 to i64
  %60 = shl nuw nsw i64 %59, 32
  %i.ac = add nuw nsw i64 %31, %60
  %i.ad = add nuw nsw i64 %i.ac, 4323455642275676160
  ret i64 %i.ad
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr26convert_raw_input_to_ycbcrEP14uhdr_raw_imageb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %4 = alloca %struct.uhdr_error_info, align 4    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr null, ptr %3, align 8, !tbaa !48
  %i.a = load i32, ptr %1, align 8, !tbaa !51     ; 5 uses
  switch i32 %i.a, label %bb.d [
    i32 5, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !52   ; 2 uses
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !53
  br label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit441

switch.lookup:                                    ; preds = %bb.b
  %i.e = zext nneg i32 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8ultrahdr26convert_raw_input_to_ycbcrEP14uhdr_raw_imageb, i64 %i.e
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %switch.load, %switch.lookup ] ; 10 uses
  %i.f = icmp eq i32 %i.a, 5                      ; 2 uses
  %or.cond = and i1 %2, %i.f
  br i1 %or.cond, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.g = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38
          to label %.noexc unwind label %bb.g     ; 11 uses

.noexc:                                           ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !54, !noalias !55
  %i.m = load i32, ptr %i.j, align 8, !tbaa !58, !noalias !55
  %i.n = load i32, ptr %i.i, align 8, !tbaa !3, !noalias !55
  %i.o = load i32, ptr %i.h, align 4, !tbaa !3, !noalias !55
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i32 noundef 0, i32 noundef %i.l, i32 noundef %i.m, i32 noundef 1, i32 noundef %i.n, i32 noundef %i.o, i32 noundef 64)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit unwind label %bb.f, !noalias !55

bb.f:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 72) #39, !noalias !55
  br label %.body

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc
  store ptr %i.g, ptr %3, align 8, !tbaa !53
  %i.q = ptrtoint ptr %i.g to i64                 ; 2 uses
  %.phi.trans.insert747 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre748 = load ptr, ptr %.phi.trans.insert747, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert749 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre750 = load ptr, ptr %.phi.trans.insert749, align 8, !tbaa !17 ; 2 uses
  %.phi.trans.insert751 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.pre752 = load ptr, ptr %.phi.trans.insert751, align 8, !tbaa !17
  %.phi.trans.insert753 = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.pre754 = load i32, ptr %.phi.trans.insert753, align 4, !tbaa !41 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.not545 = icmp eq i32 %.pre754, 0
  br i1 %.not545, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !3
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.phi.trans.insert762 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.pre763 = load i32, ptr %.phi.trans.insert762, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge537
  %i.x = phi i32 [ %.pre763, %.preheader.lr.ph ], [ %i.ag, %._crit_edge537 ]
  %i.y = phi i32 [ %.pre754, %.preheader.lr.ph ], [ %i.ah, %._crit_edge537 ]
  %.0327538 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ai, %._crit_edge537 ] ; 5 uses
  %.not546 = icmp eq i32 %i.x, 0
  br i1 %.not546, label %._crit_edge537, label %.lr.ph536

.lr.ph536:                                        ; preds = %.preheader
  %i.z = mul nuw i64 %.0327538, %i.u
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.pre748, i64 %i.z
  %i.ab = or disjoint i64 %.0327538, 1            ; 2 uses
  %i.ac = mul nuw i64 %i.ab, %i.u
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.pre748, i64 %i.ac
  %i.ae = lshr exact i64 %.0327538, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge537.loopexit:                          ; preds = %bb.x
  %.pre755 = load i32, ptr %i.r, align 4, !tbaa !41
  br label %._crit_edge537

._crit_edge537:                                   ; preds = %._crit_edge537.loopexit, %.preheader
  %i.ag = phi i32 [ 0, %.preheader ], [ %i.fd, %._crit_edge537.loopexit ]
  %i.ah = phi i32 [ %i.y, %.preheader ], [ %.pre755, %._crit_edge537.loopexit ] ; 2 uses
  %i.ai = add nuw nsw i64 %.0327538, 2            ; 2 uses
  %i.aj = zext i32 %i.ah to i64
  %i.ak = icmp samesign ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %.preheader, label %.loopexit, !llvm.loop !59

bb.h:                                             ; preds = %.lr.ph536, %bb.x
  %.0328535 = phi i64 [ 0, %.lr.ph536 ], [ %i.fc, %bb.x ] ; 6 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.0328535 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 3 uses
  %i.an = and i32 %i.am, 1023
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = lshr i32 %i.am, 10
  %i.aq = and i32 %i.ap, 1023
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = lshr i32 %i.am, 20
  %i.at = and i32 %i.as, 1023
  %i.au = uitofp nneg i32 %i.at to float
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3  ; 3 uses
  %i.ax = and i32 %i.aw, 1023
  %i.ay = uitofp nneg i32 %i.ax to float
  %i.az = lshr i32 %i.aw, 10
  %i.ba = and i32 %i.az, 1023
  %i.bb = uitofp nneg i32 %i.ba to float
  %i.bc = lshr i32 %i.aw, 20
  %i.bd = and i32 %i.bc, 1023
  %i.be = uitofp nneg i32 %i.bd to float
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.0328535 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !3  ; 3 uses
  %i.bh = and i32 %i.bg, 1023
  %i.bi = uitofp nneg i32 %i.bh to float
  %i.bj = lshr i32 %i.bg, 10
  %i.bk = and i32 %i.bj, 1023
  %i.bl = uitofp nneg i32 %i.bk to float
  %i.bm = lshr i32 %i.bg, 20
  %i.bn = and i32 %i.bm, 1023
  %i.bo = uitofp nneg i32 %i.bn to float
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3  ; 3 uses
  %i.br = and i32 %i.bq, 1023
  %i.bs = uitofp nneg i32 %i.br to float
  %i.bt = lshr i32 %i.bq, 10
  %i.bu = and i32 %i.bt, 1023
  %i.bv = uitofp nneg i32 %i.bu to float
  %i.bw = lshr i32 %i.bq, 20
  %i.bx = and i32 %i.bw, 1023
  %i.by = uitofp nneg i32 %i.bx to float
  %i.bz = fdiv contract float %i.ao, 1.023000e+03
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = fdiv contract float %i.ar, 1.023000e+03
  %.sroa.0630.4.vec.insert653 = insertelement <2 x float> %i.ca, float %i.cb, i64 1
  %i.cc = fdiv contract float %i.au, 1.023000e+03
  %i.cd = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.0630.4.vec.insert653, float %i.cc)
          to label %bb.i unwind label %bb.y, !callees !60 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.fca.0.extract175 = extractvalue { <2 x float>, float } %i.cd, 0 ; 2 uses
  %.fca.1.extract176 = extractvalue { <2 x float>, float } %i.cd, 1
  %.sroa.0630.0.vec.extract638 = extractelement <2 x float> %.fca.0.extract175, i64 0
  %i.ce = fmul contract float %.sroa.0630.0.vec.extract638, 1.023000e+03
  %i.cf = fadd contract float %i.ce, 5.000000e-01 ; 3 uses
  %i.cg = fcmp contract olt float %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = fcmp contract ogt float %i.cf, 1.023000e+03
  br i1 %i.ch, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = fptoui float %i.cf to i16
  %i.cj = shl i16 %i.ci, 6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ck = phi i16 [ 0, %bb.i ], [ %i.cj, %bb.k ], [ -64, %bb.j ]
  %i.cl = fdiv contract float %i.ay, 1.023000e+03
  %i.cm = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cn = fdiv contract float %i.bb, 1.023000e+03
  %.sroa.27656.16.vec.insert673 = insertelement <2 x float> %i.cm, float %i.cn, i64 1
  %i.co = fdiv contract float %i.be, 1.023000e+03
  %i.cp = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.27656.16.vec.insert673, float %i.co)
          to label %bb.m unwind label %bb.y, !callees !60 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.fca.0.extract175.1 = extractvalue { <2 x float>, float } %i.cp, 0 ; 2 uses
  %.fca.1.extract176.1 = extractvalue { <2 x float>, float } %i.cp, 1
  %.sroa.27656.12.vec.extract664 = extractelement <2 x float> %.fca.0.extract175.1, i64 0
  %i.cq = fmul contract float %.sroa.27656.12.vec.extract664, 1.023000e+03
  %i.cr = fadd contract float %i.cq, 5.000000e-01 ; 3 uses
  %i.cs = fcmp contract olt float %i.cr, 0.000000e+00
  br i1 %i.cs, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = fcmp contract ogt float %i.cr, 1.023000e+03
  br i1 %i.ct, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = fptoui float %i.cr to i16
  %i.cv = shl i16 %i.cu, 6
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.cw = phi i16 [ 0, %bb.m ], [ %i.cv, %bb.o ], [ -64, %bb.n ]
  %i.cx = fdiv contract float %i.bi, 1.023000e+03
  %i.cy = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.cz = fdiv contract float %i.bl, 1.023000e+03
  %.sroa.45676.28.vec.insert693 = insertelement <2 x float> %i.cy, float %i.cz, i64 1
  %i.da = fdiv contract float %i.bo, 1.023000e+03
  %i.db = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.45676.28.vec.insert693, float %i.da)
          to label %bb.q unwind label %bb.y, !callees !60 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %.fca.0.extract175.2 = extractvalue { <2 x float>, float } %i.db, 0 ; 2 uses
  %.fca.1.extract176.2 = extractvalue { <2 x float>, float } %i.db, 1
  %.sroa.45676.24.vec.extract684 = extractelement <2 x float> %.fca.0.extract175.2, i64 0
  %i.dc = fmul contract float %.sroa.45676.24.vec.extract684, 1.023000e+03
  %i.dd = fadd contract float %i.dc, 5.000000e-01 ; 3 uses
  %i.de = fcmp contract olt float %i.dd, 0.000000e+00
  br i1 %i.de, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = fcmp contract ogt float %i.dd, 1.023000e+03
  br i1 %i.df, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = fptoui float %i.dd to i16
  %i.dh = shl i16 %i.dg, 6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.di = phi i16 [ 0, %bb.q ], [ %i.dh, %bb.s ], [ -64, %bb.r ]
  %i.dj = fdiv contract float %i.bs, 1.023000e+03
  %i.dk = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dl = fdiv contract float %i.bv, 1.023000e+03
  %.sroa.63696.40.vec.insert713 = insertelement <2 x float> %i.dk, float %i.dl, i64 1
  %i.dm = fdiv contract float %i.by, 1.023000e+03
  %i.dn = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.63696.40.vec.insert713, float %i.dm)
          to label %bb.u unwind label %bb.y, !callees !60 ; 2 uses

bb.u:                                             ; preds = %bb.t
  %.fca.0.extract175.3 = extractvalue { <2 x float>, float } %i.dn, 0 ; 2 uses
  %.fca.1.extract176.3 = extractvalue { <2 x float>, float } %i.dn, 1
  %.sroa.63696.36.vec.extract704 = extractelement <2 x float> %.fca.0.extract175.3, i64 0
  %i.do = fmul contract float %.sroa.63696.36.vec.extract704, 1.023000e+03
  %i.dp = fadd contract float %i.do, 5.000000e-01 ; 3 uses
  %i.dq = fcmp contract olt float %i.dp, 0.000000e+00
  br i1 %i.dq, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = fcmp contract ogt float %i.dp, 1.023000e+03
  br i1 %i.dr, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = fptoui float %i.dp to i16
  %i.dt = shl i16 %i.ds, 6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.du = phi i16 [ 0, %bb.u ], [ %i.dt, %bb.w ], [ -64, %bb.v ]
  %i.dv = load i32, ptr %i.v, align 8, !tbaa !3
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = mul nuw i64 %.0327538, %i.dw
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %.pre750, i64 %i.dx
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %.0328535 ; 2 uses
  store i16 %i.ck, ptr %i.dz, align 2, !tbaa !29
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  store i16 %i.cw, ptr %i.ea, align 2, !tbaa !29
  %i.eb = mul nuw i64 %i.ab, %i.dw
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %.pre750, i64 %i.eb
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.ec, i64 %.0328535 ; 2 uses
  store i16 %i.di, ptr %i.ed, align 2, !tbaa !29
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  store i16 %i.du, ptr %i.ee, align 2, !tbaa !29
  %i.ef = load i32, ptr %i.w, align 4, !tbaa !3
  %i.eg = zext i32 %i.ef to i64
  %i.eh = mul nuw nsw i64 %i.ae, %i.eg
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.pre752, i64 %i.eh
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.ei, i64 %.0328535
  %5 = shufflevector <2 x float> %.fca.0.extract175, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %6 = insertelement <2 x float> %5, float %.fca.1.extract176, i64 1
  %i.ek = shufflevector <2 x float> %.fca.0.extract175.1, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.el = insertelement <2 x float> %i.ek, float %.fca.1.extract176.1, i64 1
  %7 = fadd contract <2 x float> %6, %i.el
  %i.em = shufflevector <2 x float> %.fca.0.extract175.2, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.en = insertelement <2 x float> %i.em, float %.fca.1.extract176.2, i64 1
  %i.eo = fadd contract <2 x float> %7, %i.en
  %i.ep = shufflevector <2 x float> %.fca.0.extract175.3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eq = insertelement <2 x float> %i.ep, float %.fca.1.extract176.3, i64 1
  %i.er = fadd contract <2 x float> %i.eo, %i.eq
  %i.es = fmul contract <2 x float> %i.er, splat (float 2.500000e-01)
  %i.et = fmul contract <2 x float> %i.es, splat (float 1.023000e+03)
  %i.eu = fadd contract <2 x float> %i.et, splat (float 5.120000e+02)
  %i.ev = fadd contract <2 x float> %i.eu, splat (float 5.000000e-01) ; 3 uses
  %i.ew = fcmp contract olt <2 x float> %i.ev, zeroinitializer
  %i.ex = fcmp contract ogt <2 x float> %i.ev, splat (float 1.023000e+03)
  %i.ey = select <2 x i1> %i.ex, <2 x float> splat (float 1.023000e+03), <2 x float> %i.ev
  %i.ez = select <2 x i1> %i.ew, <2 x float> zeroinitializer, <2 x float> %i.ey
  %i.fa = fptoui <2 x float> %i.ez to <2 x i16>
  %i.fb = shl <2 x i16> %i.fa, splat (i16 6)
  store <2 x i16> %i.fb, ptr %i.ej, align 2, !tbaa !29
  %i.fc = add nuw nsw i64 %.0328535, 2            ; 2 uses
  %i.fd = load i32, ptr %.phi.trans.insert762, align 8, !tbaa !42 ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = icmp samesign ult i64 %i.fc, %i.fe
  br i1 %i.ff, label %bb.h, label %._crit_edge537.loopexit, !llvm.loop !61

bb.y:                                             ; preds = %bb.t, %bb.p, %bb.l, %bb.h
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.fh = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38
          to label %.noexc355 unwind label %bb.ac ; 13 uses

.noexc355:                                        ; preds = %bb.aa
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !54, !noalias !62
  %i.fn = load i32, ptr %i.fk, align 8, !tbaa !58, !noalias !62
  %i.fo = load i32, ptr %i.fj, align 8, !tbaa !3, !noalias !62
  %i.fp = load i32, ptr %i.fi, align 4, !tbaa !3, !noalias !62
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.fh, i32 noundef 12, i32 noundef %i.fm, i32 noundef %i.fn, i32 noundef 1, i32 noundef %i.fo, i32 noundef %i.fp, i32 noundef 64)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit372 unwind label %bb.ab, !noalias !62

bb.ab:                                            ; preds = %.noexc355
  %i.fq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef 72) #39, !noalias !62
  br label %.body

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit372: ; preds = %.noexc355
  store ptr %i.fh, ptr %3, align 8, !tbaa !53
  %i.fr = ptrtoint ptr %i.fh to i64               ; 2 uses
  %.phi.trans.insert736 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre737 = load ptr, ptr %.phi.trans.insert736, align 8, !tbaa !17
  %.phi.trans.insert738 = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %.pre739 = load ptr, ptr %.phi.trans.insert738, align 8, !tbaa !17
  %.phi.trans.insert740 = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %.pre741 = load ptr, ptr %.phi.trans.insert740, align 8, !tbaa !17
  %.phi.trans.insert742 = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %.pre743 = load ptr, ptr %.phi.trans.insert742, align 8, !tbaa !17
  %.phi.trans.insert744 = getelementptr inbounds nuw i8, ptr %i.fh, i64 20
  %.pre745 = load i32, ptr %.phi.trans.insert744, align 4, !tbaa !41 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fh, i64 20
  %.not543 = icmp eq i32 %.pre745, 0
  br i1 %.not543, label %.loopexit, label %.preheader517.lr.ph

.preheader517.lr.ph:                              ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit372
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !3
  %i.fv = zext i32 %i.fu to i64
  %.phi.trans.insert760 = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %.pre761 = load i32, ptr %.phi.trans.insert760, align 8, !tbaa !42
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 52
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  br label %.preheader517

.preheader517:                                    ; preds = %.preheader517.lr.ph, %._crit_edge532
  %i.fz = phi i32 [ %.pre761, %.preheader517.lr.ph ], [ %i.ge, %._crit_edge532 ]
  %i.ga = phi i32 [ %.pre745, %.preheader517.lr.ph ], [ %i.gf, %._crit_edge532 ]
  %.0330533 = phi i64 [ 0, %.preheader517.lr.ph ], [ %i.gg, %._crit_edge532 ] ; 5 uses
  %.not544 = icmp eq i32 %i.fz, 0
  br i1 %.not544, label %._crit_edge532, label %.lr.ph531

.lr.ph531:                                        ; preds = %.preheader517
  %i.gb = mul nuw i64 %.0330533, %i.fv
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.pre737, i64 %i.gb
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge532.loopexit:                          ; preds = %bb.ae
  %.pre746 = load i32, ptr %i.fs, align 4, !tbaa !41
  br label %._crit_edge532

._crit_edge532:                                   ; preds = %._crit_edge532.loopexit, %.preheader517
  %i.ge = phi i32 [ %i.ih, %._crit_edge532.loopexit ], [ 0, %.preheader517 ]
  %i.gf = phi i32 [ %.pre746, %._crit_edge532.loopexit ], [ %i.ga, %.preheader517 ] ; 2 uses
  %i.gg = add nuw nsw i64 %.0330533, 1            ; 2 uses
  %i.gh = zext i32 %i.gf to i64
  %i.gi = icmp samesign ult i64 %i.gg, %i.gh
  br i1 %i.gi, label %.preheader517, label %.loopexit, !llvm.loop !65

bb.ad:                                            ; preds = %.lr.ph531, %bb.ae
  %.0331530 = phi i64 [ 0, %.lr.ph531 ], [ %i.ig, %bb.ae ] ; 5 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %.0331530
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3  ; 3 uses
  %i.gl = and i32 %i.gk, 1023
  %i.gm = uitofp nneg i32 %i.gl to float
  %i.gn = lshr i32 %i.gk, 10
  %i.go = and i32 %i.gn, 1023
  %i.gp = uitofp nneg i32 %i.go to float
  %i.gq = lshr i32 %i.gk, 20
  %i.gr = and i32 %i.gq, 1023
  %i.gs = uitofp nneg i32 %i.gr to float
  %i.gt = fdiv contract float %i.gm, 1.023000e+03
  %i.gu = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.gv = fdiv contract float %i.gp, 1.023000e+03
  %.sroa.0479.4.vec.insert501 = insertelement <2 x float> %i.gu, float %i.gv, i64 1
  %i.gw = fdiv contract float %i.gs, 1.023000e+03
  %i.gx = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.0479.4.vec.insert501, float %i.gw)
          to label %bb.ae unwind label %bb.af, !callees !60 ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %.fca.0.extract134 = extractvalue { <2 x float>, float } %i.gx, 0 ; 2 uses
  %.fca.1.extract135 = extractvalue { <2 x float>, float } %i.gx, 1
  %.sroa.0479.0.vec.extract = extractelement <2 x float> %.fca.0.extract134, i64 0
  %i.gy = fmul contract float %.sroa.0479.0.vec.extract, 1.023000e+03
  %i.gz = fadd contract float %i.gy, 5.000000e-01 ; 3 uses
  %i.ha = fcmp contract olt float %i.gz, 0.000000e+00
  %i.hb = fcmp contract ogt float %i.gz, 1.023000e+03
  %i.hc = select contract i1 %i.hb, float 1.023000e+03, float %i.gz
  %i.hd = select contract i1 %i.ha, float 0.000000e+00, float %i.hc
  %i.he = fptoui float %i.hd to i16
  %i.hf = load i32, ptr %i.fw, align 8, !tbaa !3
  %i.hg = zext i32 %i.hf to i64
  %i.hh = mul nuw i64 %.0330533, %i.hg
  %i.hi = getelementptr inbounds nuw [2 x i8], ptr %.pre739, i64 %i.hh
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.hi, i64 %.0331530
  store i16 %i.he, ptr %i.hj, align 2, !tbaa !29
  %i.hk = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.hl = zext i32 %i.hk to i64
  %i.hm = mul nuw i64 %.0330533, %i.hl
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %.pre741, i64 %i.hm
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.hn, i64 %.0331530
  %i.hp = shufflevector <2 x float> %.fca.0.extract134, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hq = insertelement <2 x float> %i.hp, float %.fca.1.extract135, i64 1
  %i.hr = fmul contract <2 x float> %i.hq, splat (float 1.023000e+03)
  %i.hs = fadd contract <2 x float> %i.hr, splat (float 5.120000e+02)
  %i.ht = fadd contract <2 x float> %i.hs, splat (float 5.000000e-01) ; 3 uses
  %i.hu = fcmp contract olt <2 x float> %i.ht, zeroinitializer
  %i.hv = fcmp contract ogt <2 x float> %i.ht, splat (float 1.023000e+03)
  %i.hw = select <2 x i1> %i.hv, <2 x float> splat (float 1.023000e+03), <2 x float> %i.ht
  %i.hx = select <2 x i1> %i.hu, <2 x float> zeroinitializer, <2 x float> %i.hw
  %i.hy = fptoui <2 x float> %i.hx to <2 x i16>   ; 2 uses
  %i.hz = extractelement <2 x i16> %i.hy, i64 0
  store i16 %i.hz, ptr %i.ho, align 2, !tbaa !29
  %i.ia = load i32, ptr %i.fy, align 8, !tbaa !3
  %i.ib = zext i32 %i.ia to i64
  %i.ic = mul nuw i64 %.0330533, %i.ib
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %.pre743, i64 %i.ic
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.id, i64 %.0331530
  %i.if = extractelement <2 x i16> %i.hy, i64 1
  store i16 %i.if, ptr %i.ie, align 2, !tbaa !29
  %i.ig = add nuw nsw i64 %.0331530, 1            ; 2 uses
  %i.ih = load i32, ptr %.phi.trans.insert760, align 8, !tbaa !42 ; 2 uses
  %i.ii = zext i32 %i.ih to i64
  %i.ij = icmp samesign ult i64 %i.ig, %i.ii
  br i1 %i.ij, label %bb.ad, label %._crit_edge532.loopexit, !llvm.loop !66

bb.af:                                            ; preds = %bb.ad
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %bb.z
  %i.il = icmp eq i32 %i.a, 3                     ; 2 uses
  %or.cond3 = and i1 %2, %i.il
  br i1 %or.cond3, label %bb.ah, label %bb.bc

bb.ah:                                            ; preds = %bb.ag
  %i.im = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #38
          to label %.noexc376 unwind label %bb.aj ; 13 uses

.noexc376:                                        ; preds = %bb.ah
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !54, !noalias !67
  %i.is = load i32, ptr %i.ip, align 8, !tbaa !58, !noalias !67
  %i.it = load i32, ptr %i.io, align 8, !tbaa !3, !noalias !67
  %i.iu = load i32, ptr %i.in, align 4, !tbaa !3, !noalias !67
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.im, i32 noundef 1, i32 noundef %i.ir, i32 noundef %i.is, i32 noundef 1, i32 noundef %i.it, i32 noundef %i.iu, i32 noundef 64)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit393 unwind label %bb.ai, !noalias !67

end_hunk_0
