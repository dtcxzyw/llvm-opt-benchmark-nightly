Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/gainmapmath?download=true
inline.NumInlined: 483
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8ultrahdr20getGamutConversionFnE16uhdr_color_gamutS0_:bb.a

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr { <2 x float>, float } @_ZN8ultrahdr18identityConversionENS_5ColorE(<2 x float> %0, float %1) #23 {
bb.a:
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %0, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %1, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN8ultrahdr13getYuvToRgbFnE16uhdr_color_gamut(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN8ultrahdr13getYuvToRgbFnE16uhdr_color_gamut, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN8ultrahdr14getLuminanceFnE16uhdr_color_gamut(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 3
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
  %bc = bitcast <2 x float> %0 to <2 x i32>
  %2 = add <2 x i32> %bc, splat (i32 4096)        ; 3 uses
  %3 = and <2 x i32> %2, splat (i32 8388607)      ; 2 uses
  %4 = lshr <2 x i32> %2, splat (i32 23)          ; 2 uses
  %5 = and <2 x i32> %4, splat (i32 255)          ; 4 uses
  %6 = lshr <2 x i32> %2, splat (i32 16)
  %7 = and <2 x i32> %6, splat (i32 32768)
  %8 = icmp samesign ugt <2 x i32> %5, splat (i32 112)
  %9 = shl nuw nsw <2 x i32> %4, splat (i32 10)
  %10 = and <2 x i32> %9, splat (i32 31744)
  %11 = lshr <2 x i32> %3, splat (i32 13)
  %12 = or disjoint <2 x i32> %10, %11
  %13 = xor <2 x i32> %12, splat (i32 16384)
  %14 = add nsw <2 x i32> %5, splat (i32 -102)
  %15 = icmp ult <2 x i32> %14, splat (i32 11)
  %16 = add nuw nsw <2 x i32> %3, splat (i32 8384512)
  %17 = sub nsw <2 x i32> splat (i32 125), %5
  %18 = lshr <2 x i32> %16, %17
  %19 = add nuw nsw <2 x i32> %18, splat (i32 1)
  %20 = lshr <2 x i32> %19, splat (i32 1)
  %21 = select <2 x i1> %15, <2 x i32> %20, <2 x i32> zeroinitializer
  %22 = icmp samesign ugt <2 x i32> %5, splat (i32 143)
  %23 = select <2 x i1> %22, <2 x i32> splat (i32 32767), <2 x i32> zeroinitializer
  %24 = or <2 x i32> %13, %23
  %25 = select <2 x i1> %8, <2 x i32> %24, <2 x i32> zeroinitializer
  %26 = or <2 x i32> %25, %7
  %27 = or <2 x i32> %26, %21                     ; 2 uses
  %i.a = extractelement <2 x i32> %27, i64 1
  %i.b = shl i32 %i.a, 16
  %28 = extractelement <2 x i32> %27, i64 0
  %i.c = and i32 %28, 65535
  %i.d = or disjoint i32 %i.b, %i.c
  %i.e = zext i32 %i.d to i64
  %i.f = bitcast float %1 to i32
  %i.g = add i32 %i.f, 4096                       ; 3 uses
  %i.h = lshr i32 %i.g, 23                        ; 2 uses
  %i.i = and i32 %i.h, 255                        ; 4 uses
  %i.j = and i32 %i.g, 8388607                    ; 2 uses
  %i.k = lshr i32 %i.g, 16
  %i.l = and i32 %i.k, 32768
  %i.m = icmp samesign ugt i32 %i.i, 112
  %i.n = shl nuw nsw i32 %i.h, 10
  %i.o = and i32 %i.n, 31744
  %i.p = lshr i32 %i.j, 13
  %i.q = or disjoint i32 %i.o, %i.p
  %i.r = xor i32 %i.q, 16384
  %i.s = add nsw i32 %i.i, -102
  %i.t = icmp ult i32 %i.s, 11
  %i.u = add nuw nsw i32 %i.j, 8384512
  %i.v = sub nsw i32 125, %i.i
  %i.w = lshr i32 %i.u, %i.v
  %i.x = add nuw nsw i32 %i.w, 1
  %i.y = lshr i32 %i.x, 1
  %29 = select i1 %i.t, i32 %i.y, i32 0
  %i.z = icmp samesign ugt i32 %i.i, 143
  %i.aa = select i1 %i.z, i32 32767, i32 0
  %i.ab = or i32 %i.r, %i.aa
  %30 = select i1 %i.m, i32 %i.ab, i32 0
  %31 = or i32 %30, %i.l
  %32 = or i32 %31, %29
  %33 = and i32 %32, 65535
  %i.ac = zext nneg i32 %33 to i64
  %i.ad = shl nuw nsw i64 %i.ac, 32
  %34 = or disjoint i64 %i.ad, %i.e
  %35 = or disjoint i64 %34, 4323455642275676160
  ret i64 %35
}

; Function Attrs: mustprogress uwtable
define void @_ZN8ultrahdr26convert_raw_input_to_ycbcrEP14uhdr_raw_imageb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2) local_unnamed_addr #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 9 uses
  %4 = alloca %struct.uhdr_error_info, align 4    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr null, ptr %3, align 8, !tbaa !40
  %i.a = load i32, ptr %1, align 8, !tbaa !41     ; 4 uses
  switch i32 %i.a, label %bb.d [
    i32 5, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !83   ; 2 uses
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8, !tbaa !42
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !43, !noalias !84
  %i.m = load i32, ptr %i.j, align 8, !tbaa !44, !noalias !84
  %i.n = load i32, ptr %i.i, align 8, !tbaa !9, !noalias !84
  %i.o = load i32, ptr %i.h, align 4, !tbaa !9, !noalias !84
  invoke void @_ZN8ultrahdr18uhdr_raw_image_extC1E12uhdr_img_fmt16uhdr_color_gamut19uhdr_color_transfer16uhdr_color_rangejjj(ptr noundef nonnull align 8 dereferenceable(72) %i.g, i32 noundef 0, i32 noundef %i.l, i32 noundef %i.m, i32 noundef 1, i32 noundef %i.n, i32 noundef %i.o, i32 noundef 64)
          to label %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit unwind label %bb.f, !noalias !84

bb.f:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 72) #39, !noalias !84
  br label %.body

_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc
  store ptr %i.g, ptr %3, align 8, !tbaa !42
  %i.q = ptrtoint ptr %i.g to i64                 ; 2 uses
  %.phi.trans.insert747 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre748 = load ptr, ptr %.phi.trans.insert747, align 8, !tbaa !16 ; 2 uses
  %.phi.trans.insert749 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre750 = load ptr, ptr %.phi.trans.insert749, align 8, !tbaa !16 ; 2 uses
  %.phi.trans.insert751 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.pre752 = load ptr, ptr %.phi.trans.insert751, align 8, !tbaa !16
  %.phi.trans.insert753 = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.pre754 = load i32, ptr %.phi.trans.insert753, align 4, !tbaa !35 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.not545 = icmp eq i32 %.pre754, 0
  br i1 %.not545, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt10unique_ptrIN8ultrahdr18uhdr_raw_image_extESt14default_deleteIS1_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !9
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.phi.trans.insert762 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.pre763 = load i32, ptr %.phi.trans.insert762, align 8, !tbaa !36
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
  %.pre755 = load i32, ptr %i.r, align 4, !tbaa !35
  br label %._crit_edge537

._crit_edge537:                                   ; preds = %._crit_edge537.loopexit, %.preheader
  %i.ag = phi i32 [ %i.fh, %._crit_edge537.loopexit ], [ 0, %.preheader ]
  %i.ah = phi i32 [ %.pre755, %._crit_edge537.loopexit ], [ %i.y, %.preheader ] ; 2 uses
  %i.ai = add nuw nsw i64 %.0327538, 2            ; 2 uses
  %i.aj = zext i32 %i.ah to i64
  %i.ak = icmp samesign ult i64 %i.ai, %i.aj
  br i1 %i.ak, label %.preheader, label %.loopexit, !llvm.loop !67

bb.h:                                             ; preds = %.lr.ph536, %bb.x
  %.0330535 = phi i64 [ 0, %.lr.ph536 ], [ %i.fg, %bb.x ] ; 6 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.0330535 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.0330535 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.ap = load <2 x i32>, ptr %i.al, align 4, !tbaa !9
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !9  ; 2 uses
  %i.ar = load i32, ptr %i.al, align 4, !tbaa !9  ; 2 uses
  %i.as = lshr i32 %i.ar, 10
  %i.at = and i32 %i.as, 1023
  %i.au = uitofp nneg i32 %i.at to float
  %i.av = lshr i32 %i.ar, 20
  %i.aw = and i32 %i.av, 1023
  %i.ax = uitofp nneg i32 %i.aw to float
  %i.ay = lshr i32 %i.aq, 10
  %i.az = and i32 %i.ay, 1023
  %i.ba = uitofp nneg i32 %i.az to float
  %i.bb = lshr i32 %i.aq, 20
  %i.bc = and i32 %i.bb, 1023
  %i.bd = uitofp nneg i32 %i.bc to float
  %i.be = load <2 x i32>, ptr %i.an, align 4, !tbaa !9
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !9  ; 2 uses
  %i.bg = load i32, ptr %i.an, align 4, !tbaa !9  ; 2 uses
  %i.bh = lshr i32 %i.bg, 10
  %i.bi = and i32 %i.bh, 1023
  %i.bj = uitofp nneg i32 %i.bi to float
  %i.bk = lshr i32 %i.bg, 20
  %i.bl = and i32 %i.bk, 1023
  %i.bm = uitofp nneg i32 %i.bl to float
  %i.bn = shufflevector <2 x i32> %i.ap, <2 x i32> %i.be, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bo = and <4 x i32> %i.bn, splat (i32 1023)
  %i.bp = uitofp nneg <4 x i32> %i.bo to <4 x float> ; 4 uses
  %i.bq = lshr i32 %i.bf, 10
  %i.br = and i32 %i.bq, 1023
  %i.bs = uitofp nneg i32 %i.br to float
  %i.bt = lshr i32 %i.bf, 20
  %i.bu = and i32 %i.bt, 1023
  %i.bv = uitofp nneg i32 %i.bu to float
  %i.bw = extractelement <4 x float> %i.bp, i64 0
  %i.bx = fdiv contract float %i.bw, 1.023000e+03
  %i.by = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.bz = fdiv contract float %i.au, 1.023000e+03
  %.sroa.0630.4.vec.insert653 = insertelement <2 x float> %i.by, float %i.bz, i64 1
  %i.ca = fdiv contract float %i.ax, 1.023000e+03
  %i.cb = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.0630.4.vec.insert653, float %i.ca)
          to label %bb.i unwind label %bb.y, !callees !85 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.fca.0.extract175 = extractvalue { <2 x float>, float } %i.cb, 0 ; 2 uses
  %.fca.1.extract176 = extractvalue { <2 x float>, float } %i.cb, 1
  %.sroa.0630.0.vec.extract638 = extractelement <2 x float> %.fca.0.extract175, i64 0
  %i.cc = fmul contract float %.sroa.0630.0.vec.extract638, 1.023000e+03
  %i.cd = fadd contract float %i.cc, 5.000000e-01 ; 3 uses
  %i.ce = fcmp contract olt float %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = fcmp contract ogt float %i.cd, 1.023000e+03
  br i1 %i.cf, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = fptoui float %i.cd to i16
  %i.ch = shl i16 %i.cg, 6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ci = phi i16 [ 0, %bb.i ], [ %i.ch, %bb.k ], [ -64, %bb.j ]
  %i.cj = extractelement <4 x float> %i.bp, i64 1
  %i.ck = fdiv contract float %i.cj, 1.023000e+03
  %i.cl = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cm = fdiv contract float %i.ba, 1.023000e+03
  %.sroa.27656.16.vec.insert673 = insertelement <2 x float> %i.cl, float %i.cm, i64 1
  %i.cn = fdiv contract float %i.bd, 1.023000e+03
  %i.co = invoke { <2 x float>, float } %.0(<2 x float> %.sroa.27656.16.vec.insert673, float %i.cn)
          to label %bb.m unwind label %bb.y, !callees !85 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.fca.0.extract175.1 = extractvalue { <2 x float>, float } %i.co, 0 ; 2 uses
  %.fca.1.extract176.1 = extractvalue { <2 x float>, float } %i.co, 1
  %.sroa.27656.12.vec.extract664 = extractelement <2 x float> %.fca.0.extract175.1, i64 0
  %i.cp = fmul contract float %.sroa.27656.12.vec.extract664, 1.023000e+03
  %i.cq = fadd contract float %i.cp, 5.000000e-01 ; 3 uses
end_hunk_0
