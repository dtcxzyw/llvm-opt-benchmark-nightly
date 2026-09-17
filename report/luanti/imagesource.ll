Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/imagesource?download=true
inline.NumInlined: 1740
inline.NumDeleted: 374
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_:bb.a
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !32
  %bcmp = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit:       ; preds = %bb.c, %bb.b, %bb.a
  %i.h = phi i1 [ false, %bb.a ], [ %i.g, %bb.c ], [ true, %bb.b ]
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL14apply_colorizePN5video6IImageEN4core8vector2dIjEES4_NS_6SColorEib(ptr noundef %0, i64 %1, i64 %2, i32 %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %"class.video::SColor", align 4     ; 2 uses
  %7 = alloca %"class.video::SColor", align 4     ; 10 uses
  %.sroa.048.0.extract.trunc = trunc i64 %1 to i32 ; 9 uses
  %.sroa.7.0.extract.shift = lshr i64 %1, 32
  %.sroa.7.0.extract.trunc = trunc nuw i64 %.sroa.7.0.extract.shift to i32 ; 9 uses
  %.sroa.043.0.extract.trunc = trunc i64 %2 to i32 ; 3 uses
  %.sroa.4.0.extract.shift = lshr i64 %2, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 3 uses
  store i32 %3, ptr %6, align 4
  %i.a = lshr i32 %3, 24                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i32 0, ptr %7, align 4, !tbaa !104
  %i.b = icmp eq i32 %4, -1                       ; 2 uses
  %i.c = icmp eq i32 %i.a, 255
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp eq i32 %4, 255
  %or.cond3 = or i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  br i1 %5, label %bb.c, label %.preheader70

.preheader70:                                     ; preds = %bb.b
  %i.e = add i32 %.sroa.4.0.extract.trunc, %.sroa.7.0.extract.trunc ; 2 uses
  %i.f = icmp ugt i32 %i.e, %.sroa.7.0.extract.trunc
  br i1 %i.f, label %.preheader69.lr.ph, label %.loopexit

.preheader69.lr.ph:                               ; preds = %.preheader70
  %i.g = add i32 %.sroa.043.0.extract.trunc, %.sroa.048.0.extract.trunc ; 2 uses
  %i.h = icmp ugt i32 %i.g, %.sroa.048.0.extract.trunc
  br i1 %i.h, label %.preheader69, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 %3, ptr %7, align 4, !tbaa !110
  %i.i = add i32 %.sroa.4.0.extract.trunc, %.sroa.7.0.extract.trunc ; 2 uses
  %i.j = icmp ugt i32 %i.i, %.sroa.7.0.extract.trunc
  br i1 %i.j, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.k = add i32 %.sroa.043.0.extract.trunc, %.sroa.048.0.extract.trunc ; 2 uses
  %i.l = icmp ugt i32 %i.k, %.sroa.048.0.extract.trunc
  br i1 %i.l, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge80
  %.081 = phi i32 [ %i.m, %._crit_edge80 ], [ %.sroa.7.0.extract.trunc, %.preheader.lr.ph ] ; 3 uses
  br label %bb.d

._crit_edge80:                                    ; preds = %bb.f
  %i.m = add nuw i32 %.081, 1                     ; 2 uses
  %exitcond88.not = icmp eq i32 %i.m, %i.i
  br i1 %exitcond88.not, label %.loopexit, label %.preheader, !llvm.loop !209

bb.d:                                             ; preds = %.preheader, %bb.f
  %.06379 = phi i32 [ %.sroa.048.0.extract.trunc, %.preheader ], [ %i.ab, %bb.f ] ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i32 %i.p(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.06379, i32 noundef %.081)
  %i.r = lshr i32 %i.q, 24                        ; 2 uses
  %.not67 = icmp eq i32 %i.r, 0
  br i1 %.not67, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = mul nuw nsw i32 %i.r, %i.a
  %i.t = udiv i32 %i.s, 255
  %i.u = shl nuw i32 %i.t, 24
  %i.v = load i32, ptr %7, align 4, !tbaa !104
  %i.w = and i32 %i.v, 16777215
  %i.x = or disjoint i32 %i.w, %i.u
  store i32 %i.x, ptr %7, align 4, !tbaa !104
  %i.y = load ptr, ptr %0, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.06379, i32 noundef %.081, ptr noundef nonnull align 4 dereferenceable(4) %7, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = add i32 %.06379, 1                      ; 2 uses
  %exitcond87.not = icmp eq i32 %i.ab, %i.k
  br i1 %exitcond87.not, label %._crit_edge80, label %bb.d, !llvm.loop !210

.preheader69:                                     ; preds = %.preheader69.lr.ph, %._crit_edge77
  %.06278 = phi i32 [ %i.ac, %._crit_edge77 ], [ %.sroa.7.0.extract.trunc, %.preheader69.lr.ph ] ; 3 uses
  br label %bb.g

._crit_edge77:                                    ; preds = %bb.i
  %i.ac = add nuw i32 %.06278, 1                  ; 2 uses
  %exitcond86.not = icmp eq i32 %i.ac, %i.e
  br i1 %exitcond86.not, label %.loopexit, label %.preheader69, !llvm.loop !211

bb.g:                                             ; preds = %.preheader69, %bb.i
  %.06176 = phi i32 [ %.sroa.048.0.extract.trunc, %.preheader69 ], [ %i.ak, %bb.i ] ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call i32 %i.af(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.06176, i32 noundef %.06278)
  %.not66 = icmp ult i32 %i.ag, 16777216
  br i1 %.not66, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %0, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.06176, i32 noundef %.06278, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ak = add i32 %.06176, 1                      ; 2 uses
  %exitcond85.not = icmp eq i32 %i.ak, %i.g
  br i1 %exitcond85.not, label %._crit_edge77, label %bb.g, !llvm.loop !212

bb.j:                                             ; preds = %bb.a
  %i.al = add i32 %.sroa.4.0.extract.trunc, %.sroa.7.0.extract.trunc ; 2 uses
  %i.am = icmp ugt i32 %i.al, %.sroa.7.0.extract.trunc
  br i1 %i.am, label %.preheader72.lr.ph, label %.loopexit

.preheader72.lr.ph:                               ; preds = %bb.j
  %i.an = uitofp nsz nneg i32 %i.a to float       ; 2 uses
  %i.ao = sitofp nsz i32 %4 to float
  %.in = select i1 %i.b, float %i.an, float %i.ao
  %i.ap = fdiv nsz float %.in, 2.550000e+02       ; 2 uses
  %i.aq = add i32 %.sroa.043.0.extract.trunc, %.sroa.048.0.extract.trunc ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, %.sroa.048.0.extract.trunc
  %i.as = fcmp nsz olt float %i.ap, 0.000000e+00
  %i.at = select i1 %i.as, float 0.000000e+00, float %i.ap ; 2 uses
  %i.au = fcmp nsz olt float %i.at, 1.000000e+00
  %i.av = select i1 %i.au, float %i.at, float 1.000000e+00 ; 2 uses
  %i.aw = fsub nsz float 1.000000e+00, %i.av
  br i1 %i.ar, label %.preheader72.preheader, label %.loopexit

.preheader72.preheader:                           ; preds = %.preheader72.lr.ph
  %i.ax = lshr i32 %3, 16
  %i.ay = lshr i32 %3, 8
  %i.az = and i32 %i.ay, 255
  %i.ba = and i32 %i.ax, 255
  %i.bb = uitofp nsz nneg i32 %i.az to float
  %i.bc = uitofp nsz nneg i32 %i.ba to float
  %i.bd = and i32 %3, 255
  %i.be = uitofp nsz nneg i32 %i.bd to float
  %i.bf = insertelement <4 x float> poison, float %i.av, i64 0
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.bb, i64 1
  %i.bj = insertelement <4 x float> poison, float %i.be, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.an, i64 3
  %i.bl = shufflevector <4 x float> %i.bi, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bm = fmul nnan nsz <4 x float> %i.bg, %i.bl
  %i.bn = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader72

.preheader72:                                     ; preds = %.preheader72.preheader, %._crit_edge
  %.06075 = phi i32 [ %i.bp, %._crit_edge ], [ %.sroa.7.0.extract.trunc, %.preheader72.preheader ] ; 3 uses
  br label %bb.k

._crit_edge:                                      ; preds = %bb.m
  %i.bp = add nuw i32 %.06075, 1                  ; 2 uses
  %exitcond84.not = icmp eq i32 %i.bp, %i.al
  br i1 %exitcond84.not, label %.loopexit, label %.preheader72, !llvm.loop !213

bb.k:                                             ; preds = %.preheader72, %bb.m
  %.05974 = phi i32 [ %.sroa.048.0.extract.trunc, %.preheader72 ], [ %i.ck, %bb.m ] ; 3 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.05974, i32 noundef %.06075) ; 5 uses
  store i32 %i.bt, ptr %7, align 4, !tbaa !110
  %i.bu = lshr i32 %i.bt, 24                      ; 2 uses
  %.not = icmp eq i32 %i.bu, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = lshr i32 %i.bt, 8
  %i.bw = lshr i32 %i.bt, 16
  %i.bx = insertelement <4 x i32> poison, i32 %i.bw, i64 0
  %i.by = insertelement <4 x i32> %i.bx, i32 %i.bv, i64 1
  %i.bz = insertelement <4 x i32> %i.by, i32 %i.bt, i64 2
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bu, i64 3
  %i.cb = and <4 x i32> %i.ca, <i32 255, i32 255, i32 255, i32 -1>
  %i.cc = uitofp <4 x i32> %i.cb to <4 x float>
  %i.cd = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cc, <4 x float> %i.bo, <4 x float> %i.bm)
  %i.ce = fadd nsz <4 x float> %i.cd, splat (float 5.000000e-01)
  %i.cf = call nsz <4 x float> @llvm.floor.v4f32(<4 x float> %i.ce)
  %i.cg = fptosi <4 x float> %i.cf to <4 x i32>
  %8 = shl <4 x i32> %i.cg, <i32 16, i32 8, i32 0, i32 24>
  %9 = and <4 x i32> %8, <i32 16711680, i32 65280, i32 255, i32 -1>
  %10 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %9)
  store i32 %10, ptr %7, align 4, !tbaa !110
  %i.ch = load ptr, ptr %0, align 8, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.05974, i32 noundef %.06075, ptr noundef nonnull align 4 dereferenceable(4) %7, i1 noundef zeroext false)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ck = add i32 %.05974, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ck, %i.aq
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !214

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge77, %._crit_edge80, %bb.j, %.preheader72.lr.ph, %.preheader70, %.preheader69.lr.ph, %bb.c, %.preheader.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

declare void @_Z21imageCleanTransparentPN5video6IImageEj(ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #10

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #11

declare noundef zeroext i1 @_Z15base64_is_validSt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #5

declare void @_Z13base64_decodeB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN15RenderingEngine14get_raw_deviceEv() local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !47 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %.not2 = icmp eq ptr %i.c, null
  br i1 %.not2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine14get_raw_deviceEv) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL20apply_hue_saturationPN5video6IImageEN4core8vector2dIjEES4_iiib(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #4 {
bb.a:
  %7 = alloca %"class.video::SColor", align 4     ; 4 uses
  %.sroa.027.0.extract.trunc = trunc i64 %1 to i32 ; 3 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 3 uses
  %.sroa.026.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.2.0.extract.shift = lshr i64 %2, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %5, i64 1
  %i.c = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.b, <2 x i32> splat (i32 -100))
  %i.d = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.c, <2 x i32> <i32 1000, i32 100>)
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = fdiv nsz <2 x float> %i.e, splat (float 1.000000e+02) ; 2 uses
  br i1 %6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %i.h = uitofp nneg i32 %i.g to float            ; 2 uses
  %i.i = fcmp nsz olt float %i.h, 1.000000e+02
  %i.j = select i1 %i.i, float %i.h, float 1.000000e+02
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.9.0 = phi nsz float [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.k = add i32 %.sroa.2.0.extract.trunc, %.sroa.3.0.extract.trunc ; 2 uses
  %i.l = icmp ugt i32 %i.k, %.sroa.3.0.extract.trunc
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge63.split

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.m = add i32 %.sroa.026.0.extract.trunc, %.sroa.027.0.extract.trunc ; 2 uses
  %i.n = icmp ugt i32 %i.m, %.sroa.027.0.extract.trunc
  %i.o = extractelement <2 x float> %i.f, i64 1   ; 5 uses
  %i.p = fcmp nsz olt float %i.o, 0.000000e+00    ; 2 uses
  %i.q = fadd nnan nsz float %i.o, 1.000000e+00   ; 2 uses
  %i.r = extractelement <2 x float> %i.f, i64 0
  %i.s = fadd nnan nsz float %i.r, 1.000000e+00
  %i.t = fsub nsz float 1.000000e+00, %i.o
  %i.u = sitofp nsz i32 %3 to float               ; 2 uses
  br i1 %i.n, label %.preheader, label %._crit_edge63.split

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.03162 = phi i32 [ %i.v, %._crit_edge ], [ %.sroa.3.0.extract.trunc, %.preheader.lr.ph ] ; 3 uses
  %.sroa.17.061 = phi float [ %.sroa.17.2, %._crit_edge ], [ 1.000000e+00, %.preheader.lr.ph ]
  %.sroa.9.160 = phi float [ %.sroa.9.3, %._crit_edge ], [ %.sroa.9.0, %.preheader.lr.ph ]
  br label %bb.d

._crit_edge63.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.c
  ret void

._crit_edge:                                      ; preds = %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit
  %i.v = add nuw i32 %.03162, 1                   ; 2 uses
  %exitcond64.not = icmp eq i32 %i.v, %i.k
  br i1 %exitcond64.not, label %._crit_edge63.split, label %.preheader, !llvm.loop !215

bb.d:                                             ; preds = %.preheader, %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit
  %.03058 = phi i32 [ %.sroa.027.0.extract.trunc, %.preheader ], [ %i.ff, %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit ] ; 3 uses
  %.sroa.17.157 = phi float [ %.sroa.17.061, %.preheader ], [ %.sroa.17.2, %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit ]
  %.sroa.9.256 = phi float [ %.sroa.9.160, %.preheader ], [ %.sroa.9.3, %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call i32 %i.y(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.03058, i32 noundef %.03162) ; 5 uses
  %i.aa = lshr i32 %i.z, 16
  %i.ab = and i32 %i.aa, 255
  %i.ac = uitofp nsz nneg i32 %i.ab to float      ; 2 uses
  %i.ad = and i32 %i.z, 255
  %i.ae = uitofp nsz nneg i32 %i.ad to float      ; 2 uses
  br i1 %6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = lshr i32 %i.z, 8
  %i.ag = and i32 %i.af, 255
  %i.ah = uitofp nsz nneg i32 %i.ag to float
  %i.ai = fmul nnan nsz float %i.ah, 5.900000e-01
  %i.aj = call nsz float @llvm.fmuladd.f32(float %i.ac, float 3.000000e-01, float %i.ai)
  %i.ak = call nsz noundef float @llvm.fmuladd.f32(float %i.ae, float 1.100000e-01, float %i.aj)
  %i.al = fdiv nsz float %i.ak, 2.550000e+02      ; 2 uses
  %i.am = fmul nsz float %i.q, %i.al
  %i.an = call nsz float @llvm.fmuladd.f32(float %i.al, float %i.t, float %i.o)
  %.0 = select nsz i1 %i.p, float %i.am, float %i.an
  %i.ao = fmul nsz float %.0, 1.000000e+02
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.ap = fmul nnan nsz float %i.ac, f0x3B808081  ; 6 uses
  %i.aq = lshr i32 %i.z, 8
  %i.ar = and i32 %i.aq, 255
  %i.as = uitofp nsz nneg i32 %i.ar to float
  %i.at = fmul nnan nsz float %i.as, f0x3B808081  ; 6 uses
  %i.au = fmul nnan nsz float %i.ae, f0x3B808081  ; 6 uses
  %i.av = lshr i32 %i.z, 24
  %i.aw = uitofp nsz nneg i32 %i.av to float
  %i.ax = fmul nnan nsz float %i.aw, f0x3B808081
  %i.ay = fcmp nsz olt float %i.ap, %i.at         ; 2 uses
  %..i.i = select i1 %i.ay, float %i.at, float %i.ap ; 2 uses
  %i.az = fcmp nsz olt float %..i.i, %i.au
  %.sroa.speculated36.i = select i1 %i.az, float %i.au, float %..i.i ; 5 uses
  %..i32.i = select i1 %i.ay, float %i.ap, float %i.at ; 2 uses
  %i.ba = fcmp nsz olt float %..i32.i, %i.au
  %.sroa.speculated.i = select i1 %i.ba, float %..i32.i, float %i.au ; 3 uses
  %i.bb = fadd nsz float %.sroa.speculated36.i, %.sroa.speculated.i ; 2 uses
  %i.bc = fmul nsz float %i.bb, 5.000000e+01      ; 4 uses
  %i.bd = fsub nsz float %.sroa.speculated36.i, %.sroa.speculated.i ; 5 uses
  %i.be = call nsz noundef float @llvm.fabs.f32(float %i.bd)
  %i.bf = fcmp nsz ugt float %i.be, f0x358637BD
  br i1 %i.bf, label %bb.g, label %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit

bb.g:                                             ; preds = %bb.f
  %i.bg = fcmp nsz ugt float %i.bc, 5.000000e+01
  %i.bh = fsub nsz float 2.000000e+00, %.sroa.speculated36.i
  %i.bi = fsub nsz float %i.bh, %.sroa.speculated.i
  %.pn.i = select i1 %i.bg, float %i.bi, float %i.bb
  %.sink.i = fdiv nsz float %i.bd, %.pn.i
  %i.bj = fmul nsz float %.sink.i, 1.000000e+02   ; 2 uses
  %i.bk = fsub nsz float %.sroa.speculated36.i, %i.ap
  %i.bl = call nsz noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = fcmp nsz ugt float %i.bl, f0x358637BD
  br i1 %i.bm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = fsub nsz float %i.at, %i.au
  %i.bo = fdiv nsz float %i.bn, %i.bd
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bp = fsub nsz float %.sroa.speculated36.i, %i.at
  %i.bq = call nsz noundef float @llvm.fabs.f32(float %i.bp)
  %i.br = fcmp nsz ugt float %i.bq, f0x358637BD
  br i1 %i.br, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = fsub nsz float %i.au, %i.ap
  %i.bt = fdiv nsz float %i.bs, %i.bd
  %i.bu = fadd nsz float %i.bt, 2.000000e+00
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bv = fsub nsz float %i.ap, %i.at
  %i.bw = fdiv nsz float %i.bv, %i.bd
  %i.bx = fadd nsz float %i.bw, 4.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.by = phi float [ %i.bu, %bb.j ], [ %i.bx, %bb.k ], [ %i.bo, %bb.h ]
  %i.bz = fmul nsz float %i.by, 6.000000e+01      ; 3 uses
  %i.ca = fcmp nsz olt float %i.bz, 0.000000e+00
  br i1 %i.ca, label %.lr.ph.i, label %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %storemerge39.i = phi float [ %i.cb, %.lr.ph.i ], [ %i.bz, %bb.l ]
  %i.cb = fadd nsz float %storemerge39.i, 3.600000e+02 ; 3 uses
  %i.cc = fcmp nsz olt float %i.cb, 0.000000e+00
  br i1 %i.cc, label %.lr.ph.i, label %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit, !llvm.loop !216

_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit:  ; preds = %.lr.ph.i, %bb.l, %bb.f
  %.sroa.043.1 = phi nsz float [ 0.000000e+00, %bb.f ], [ %i.bz, %bb.l ], [ %i.cb, %.lr.ph.i ]
  %.sroa.9.4 = phi nsz float [ 0.000000e+00, %bb.f ], [ %i.bj, %bb.l ], [ %i.bj, %.lr.ph.i ]
  %i.cd = fmul nsz float %i.q, %i.bc
  %i.ce = fsub nsz float 1.000000e+02, %i.bc
  %i.cf = call nsz float @llvm.fmuladd.f32(float %i.o, float %i.ce, float %i.bc)
  %.sroa.18.0 = select nsz i1 %i.p, float %i.cd, float %i.cf
  %i.cg = fmul nsz float %i.s, %.sroa.9.4         ; 2 uses
  %i.ch = fcmp nsz olt float %i.cg, 0.000000e+00
  %i.ci = select i1 %i.ch, float 0.000000e+00, float %i.cg ; 2 uses
  %i.cj = fcmp nsz olt float %i.ci, 1.000000e+02
  %i.ck = select i1 %i.cj, float %i.ci, float 1.000000e+02
  %i.cl = fadd nsz float %.sroa.043.1, %i.u
  br label %bb.m

bb.m:                                             ; preds = %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit, %bb.e
  %.sroa.043.0 = phi float [ %i.u, %bb.e ], [ %i.cl, %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit ]
  %.sroa.9.3 = phi nsz float [ %.sroa.9.256, %bb.e ], [ %i.ck, %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit ] ; 4 uses
  %.sroa.18.1 = phi nsz float [ %i.ao, %bb.e ], [ %.sroa.18.0, %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit ] ; 2 uses
  %.sroa.17.2 = phi nsz float [ %.sroa.17.157, %bb.e ], [ %i.ax, %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit ] ; 3 uses
  %i.cm = fdiv nsz float %.sroa.18.1, 1.000000e+02 ; 7 uses
  %i.cn = call nsz float @llvm.fabs.f32(float %.sroa.9.3)
  %i.co = fcmp nsz ugt float %i.cn, f0x358637BD
  br i1 %i.co, label %bb.n, label %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit

bb.n:                                             ; preds = %bb.m
  %i.cp = frem nsz float %.sroa.043.0, 3.600000e+02 ; 3 uses
  %i.cq = fcmp nsz olt float %i.cp, 0.000000e+00
  %i.cr = fadd nsz float %i.cp, 3.600000e+02
  %storemerge = select i1 %i.cq, float %i.cr, float %i.cp
  %i.cs = fcmp nsz ugt float %.sroa.18.1, 5.000000e+01
  %i.ct = fsub nsz float 1.000000e+00, %i.cm
  %.sink.i34 = select i1 %i.cs, float %i.ct, float %i.cm
  %i.cu = insertelement <2 x float> poison, float %.sroa.9.3, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %storemerge, i64 1
  %i.cw = fdiv nsz <2 x float> %i.cv, <float 1.000000e+02, float 3.600000e+02> ; 2 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 1 ; 5 uses
  %i.cy = extractelement <2 x float> %i.cw, i64 0
  %i.cz = call nsz float @llvm.fmuladd.f32(float %.sink.i34, float %i.cy, float %i.cm) ; 10 uses
  %i.da = fneg nsz float %i.cz
  %i.db = call nsz float @llvm.fmuladd.f32(float %i.cm, float 2.000000e+00, float %i.da) ; 15 uses
  %i.dc = fadd nsz float %i.cx, f0x3EAAAAAB       ; 3 uses
  %i.dd = fcmp nsz olt float %i.dc, 0.000000e+00
  %i.de = fadd nsz float %i.dc, 1.000000e+00
  %.0.i.i = select nsz i1 %i.dd, float %i.de, float %i.dc ; 3 uses
  %i.df = fcmp nsz ogt float %.0.i.i, 1.000000e+00
  %i.dg = fadd nsz float %.0.i.i, -1.000000e+00
  %.1.i.i = select nsz i1 %i.df, float %i.dg, float %.0.i.i ; 5 uses
  %i.dh = fcmp nsz olt float %.1.i.i, f0x3E2AAAAB
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.di = fsub nsz float %i.cz, %i.db
  %i.dj = fmul nsz float %i.di, %.1.i.i
  %i.dk = call nsz float @llvm.fmuladd.f32(float %i.dj, float 6.000000e+00, float %i.db)
  br label %_ZNK5video9SColorHSL6toRGB1Efff.exit.i

bb.p:                                             ; preds = %bb.n
  %i.dl = fcmp nsz olt float %.1.i.i, 5.000000e-01
  br i1 %i.dl, label %_ZNK5video9SColorHSL6toRGB1Efff.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = fcmp nsz olt float %.1.i.i, f0x3F2AAAAB
  br i1 %i.dm, label %bb.r, label %_ZNK5video9SColorHSL6toRGB1Efff.exit.i

bb.r:                                             ; preds = %bb.q
  %i.dn = fsub nsz float %i.cz, %i.db
  %i.do = fsub nnan nsz float f0x3F2AAAAB, %.1.i.i
  %i.dp = fmul nsz float %i.dn, %i.do
  %i.dq = call nsz float @llvm.fmuladd.f32(float %i.dp, float 6.000000e+00, float %i.db)
  br label %_ZNK5video9SColorHSL6toRGB1Efff.exit.i

_ZNK5video9SColorHSL6toRGB1Efff.exit.i:           ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.017.i.i = phi nsz float [ %i.dk, %bb.o ], [ %i.db, %bb.q ], [ %i.dq, %bb.r ], [ %i.cz, %bb.p ] ; 4 uses
  %i.dr = fcmp nsz olt float %i.cx, 0.000000e+00
  %i.ds = fadd nsz float %i.cx, 1.000000e+00
  %.0.i21.i = select nsz i1 %i.dr, float %i.ds, float %i.cx ; 3 uses
  %i.dt = fcmp nsz ogt float %.0.i21.i, 1.000000e+00
  %i.du = fadd nsz float %.0.i21.i, -1.000000e+00
  %.1.i22.i = select nsz i1 %i.dt, float %i.du, float %.0.i21.i ; 5 uses
  %i.dv = fcmp nsz olt float %.1.i22.i, f0x3E2AAAAB
  br i1 %i.dv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK5video9SColorHSL6toRGB1Efff.exit.i
  %i.dw = fsub nsz float %i.cz, %i.db
  %i.dx = fmul nsz float %i.dw, %.1.i22.i
  %i.dy = call nsz float @llvm.fmuladd.f32(float %i.dx, float 6.000000e+00, float %i.db)
  br label %_ZNK5video9SColorHSL6toRGB1Efff.exit24.i

bb.t:                                             ; preds = %_ZNK5video9SColorHSL6toRGB1Efff.exit.i
  %i.dz = fcmp nsz olt float %.1.i22.i, 5.000000e-01
  br i1 %i.dz, label %_ZNK5video9SColorHSL6toRGB1Efff.exit24.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ea = fcmp nsz olt float %.1.i22.i, f0x3F2AAAAB
  br i1 %i.ea, label %bb.v, label %_ZNK5video9SColorHSL6toRGB1Efff.exit24.i

bb.v:                                             ; preds = %bb.u
  %i.eb = fsub nsz float %i.cz, %i.db
  %i.ec = fsub nnan nsz float f0x3F2AAAAB, %.1.i22.i
  %i.ed = fmul nsz float %i.eb, %i.ec
  %i.ee = call nsz float @llvm.fmuladd.f32(float %i.ed, float 6.000000e+00, float %i.db)
  br label %_ZNK5video9SColorHSL6toRGB1Efff.exit24.i

_ZNK5video9SColorHSL6toRGB1Efff.exit24.i:         ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.017.i23.i = phi nsz float [ %i.dy, %bb.s ], [ %i.db, %bb.u ], [ %i.ee, %bb.v ], [ %i.cz, %bb.t ] ; 4 uses
  %i.ef = fadd nsz float %i.cx, f0xBEAAAAAB       ; 3 uses
  %i.eg = fcmp nsz olt float %i.ef, 0.000000e+00
  %i.eh = fadd nsz float %i.ef, 1.000000e+00
  %.0.i25.i = select nsz i1 %i.eg, float %i.eh, float %i.ef ; 3 uses
  %i.ei = fcmp nsz ogt float %.0.i25.i, 1.000000e+00
  %i.ej = fadd nsz float %.0.i25.i, -1.000000e+00
  %.1.i26.i = select nsz i1 %i.ei, float %i.ej, float %.0.i25.i ; 5 uses
  %i.ek = fcmp nsz olt float %.1.i26.i, f0x3E2AAAAB
  br i1 %i.ek, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK5video9SColorHSL6toRGB1Efff.exit24.i
  %i.el = fsub nsz float %i.cz, %i.db
  %i.em = fmul nsz float %i.el, %.1.i26.i
  %i.en = call nsz float @llvm.fmuladd.f32(float %i.em, float 6.000000e+00, float %i.db)
  br label %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit

bb.x:                                             ; preds = %_ZNK5video9SColorHSL6toRGB1Efff.exit24.i
  %i.eo = fcmp nsz olt float %.1.i26.i, 5.000000e-01
  br i1 %i.eo, label %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ep = fcmp nsz olt float %.1.i26.i, f0x3F2AAAAB
  br i1 %i.ep, label %bb.z, label %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit

bb.z:                                             ; preds = %bb.y
  %i.eq = fsub nsz float %i.cz, %i.db
  %i.er = fsub nnan nsz float f0x3F2AAAAB, %.1.i26.i
  %i.es = fmul nsz float %i.eq, %i.er
  %i.et = call nsz float @llvm.fmuladd.f32(float %i.es, float 6.000000e+00, float %i.db)
  br label %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit

_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit:    ; preds = %bb.m, %bb.w, %bb.x, %bb.y, %bb.z
  %.017.i.sink.i = phi float [ %i.cm, %bb.m ], [ %.017.i.i, %bb.w ], [ %.017.i.i, %bb.x ], [ %.017.i.i, %bb.y ], [ %.017.i.i, %bb.z ]
  %.017.i23.sink.i = phi float [ %i.cm, %bb.m ], [ %.017.i23.i, %bb.w ], [ %.017.i23.i, %bb.x ], [ %.017.i23.i, %bb.y ], [ %.017.i23.i, %bb.z ]
  %.017.i27.sink.i = phi float [ %i.cm, %bb.m ], [ %i.en, %bb.w ], [ %i.cz, %bb.x ], [ %i.db, %bb.y ], [ %i.et, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.eu = insertelement <4 x float> poison, float %.017.i.sink.i, i64 0
  %i.ev = insertelement <4 x float> %i.eu, float %.017.i23.sink.i, i64 1
  %i.ew = insertelement <4 x float> %i.ev, float %.017.i27.sink.i, i64 2
  %i.ex = insertelement <4 x float> %i.ew, float %.sroa.17.2, i64 3
  %i.ey = fmul nsz <4 x float> %i.ex, splat (float 2.550000e+02)
  %i.ez = fadd nsz <4 x float> %i.ey, splat (float 5.000000e-01)
  %i.fa = call nsz <4 x float> @llvm.floor.v4f32(<4 x float> %i.ez)
  %i.fb = fptosi <4 x float> %i.fa to <4 x i32>
  %8 = shl <4 x i32> %i.fb, <i32 16, i32 8, i32 0, i32 24>
  %9 = and <4 x i32> %8, <i32 16711680, i32 65280, i32 255, i32 -1>
  %10 = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %9)
  store i32 %10, ptr %7, align 4
  %i.fc = load ptr, ptr %0, align 8, !tbaa !41
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.03058, i32 noundef %.03162, ptr noundef nonnull align 4 dereferenceable(4) %7, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ff = add i32 %.03058, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.ff, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !217
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL13apply_overlayPN5video6IImageES1_N4core8vector2dIiEES4_NS3_IjEEb(ptr noundef %0, ptr noundef %1, i64 %2, i64 %3, i64 %4, i1 noundef zeroext %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %"class.video::SColor", align 4     ; 4 uses
  %.sroa.047.0.extract.trunc = trunc i64 %2 to i32 ; 2 uses
  %.sroa.348.0.extract.shift = lshr i64 %2, 32
  %.sroa.348.0.extract.trunc = trunc nuw i64 %.sroa.348.0.extract.shift to i32 ; 2 uses
  %.sroa.044.0.extract.trunc = trunc i64 %3 to i32 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %3, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 2 uses
  %.sroa.039.0.extract.trunc = trunc i64 %4 to i32 ; 2 uses
  %.sroa.2.0.extract.shift = lshr i64 %4, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = select i1 %5, ptr %1, ptr %0             ; 2 uses
  %i.b = select i1 %5, ptr %0, ptr %1             ; 2 uses
  %.sroa.026.0.copyload.sroa.speculated = select i1 %5, i32 %.sroa.044.0.extract.trunc, i32 %.sroa.047.0.extract.trunc
  %.sroa.427.0.copyload.sroa.speculated = select i1 %5, i32 %.sroa.3.0.extract.trunc, i32 %.sroa.348.0.extract.trunc
  %.sroa.0.0.copyload.sroa.speculated = select i1 %5, i32 %.sroa.047.0.extract.trunc, i32 %.sroa.044.0.extract.trunc
  %.sroa.4.0.copyload.sroa.speculated = select i1 %5, i32 %.sroa.348.0.extract.trunc, i32 %.sroa.3.0.extract.trunc
  %i.c = icmp ne i64 %.sroa.2.0.extract.shift, 0
  %i.d = icmp ne i32 %.sroa.039.0.extract.trunc, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.preheader, label %._crit_edge59.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.04958 = phi i32 [ %i.g, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.e = add i32 %.04958, %.sroa.4.0.copyload.sroa.speculated ; 2 uses
  %i.f = add i32 %.04958, %.sroa.427.0.copyload.sroa.speculated
  br label %bb.b

._crit_edge59.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.k
  %i.g = add nuw i32 %.04958, 1                   ; 2 uses
  %exitcond60.not = icmp eq i32 %i.g, %.sroa.2.0.extract.trunc
  br i1 %exitcond60.not, label %._crit_edge59.split, label %.preheader, !llvm.loop !218

bb.b:                                             ; preds = %.preheader, %bb.k
  %.057 = phi i32 [ 0, %.preheader ], [ %i.cl, %bb.k ] ; 3 uses
  %i.h = add i32 %.057, %.sroa.0.0.copyload.sroa.speculated ; 2 uses
  %i.i = add i32 %.057, %.sroa.026.0.copyload.sroa.speculated
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call i32 %i.l(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i32 noundef %i.i, i32 noundef %i.f) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i32 %i.p(ptr noundef nonnull align 8 dereferenceable(41) %i.b, i32 noundef %i.h, i32 noundef %i.e) ; 4 uses
  %i.r = lshr i32 %i.q, 16
  %i.s = lshr i32 %i.m, 8
  %i.t = lshr i32 %i.m, 16
  %i.u = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %i.v = insertelement <4 x i32> %i.u, i32 %i.s, i64 1
  %i.w = insertelement <4 x i32> %i.v, i32 %i.m, i64 2
  %i.x = insertelement <4 x i32> %i.w, i32 %i.r, i64 3
  %i.y = and <4 x i32> %i.x, splat (i32 255)
  %i.z = uitofp nneg <4 x i32> %i.y to <4 x float>
  %i.aa = fdiv nsz <4 x float> %i.z, splat (float 2.550000e+02) ; 7 uses
  %i.ab = lshr i32 %i.q, 8
  %i.ac = and i32 %i.q, 255
  %i.ad = and i32 %i.ab, 255
  %i.ae = uitofp nsz nneg i32 %i.ac to float
  %i.af = uitofp nsz nneg i32 %i.ad to float
  %i.ag = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.ae, i64 1
  %i.ai = fdiv nsz <2 x float> %i.ah, splat (float 2.550000e+02) ; 3 uses
  %i.aj = and i32 %i.q, -16777216
  %i.ak = extractelement <4 x float> %i.aa, i64 3 ; 2 uses
  %i.al = fcmp nsz olt float %i.ak, 5.000000e-01
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = fmul nnan nsz float %i.ak, 2.000000e+00
  %i.an = extractelement <4 x float> %i.aa, i64 0
  %i.ao = fmul nsz float %i.an, %i.am
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aq = fsub nsz <2 x float> splat (float 1.000000e+00), %i.ap ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = fmul nnan nsz float %i.ar, -2.000000e+00
  %i.at = extractelement <2 x float> %i.aq, i64 1
  %i.au = call nsz float @llvm.fmuladd.f32(float %i.as, float %i.at, float 1.000000e+00)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.av = phi nsz float [ %i.ao, %bb.c ], [ %i.au, %bb.d ]
  %i.aw = fmul nsz float %i.av, 2.550000e+02
  %i.ax = fptoui float %i.aw to i32
  %i.ay = extractelement <2 x float> %i.ai, i64 0 ; 3 uses
  %i.az = fcmp nsz olt float %i.ay, 5.000000e-01
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = fmul nnan nsz float %i.ay, 2.000000e+00
  %i.bb = extractelement <4 x float> %i.aa, i64 1
  %i.bc = fmul nsz float %i.bb, %i.ba
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bd = fsub nnan nsz float 1.000000e+00, %i.ay
  %i.be = extractelement <4 x float> %i.aa, i64 1
  %i.bf = fsub nsz float 1.000000e+00, %i.be
  %i.bg = fmul nnan nsz float %i.bd, -2.000000e+00
  %i.bh = call nsz float @llvm.fmuladd.f32(float %i.bg, float %i.bf, float 1.000000e+00)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bi = phi nsz float [ %i.bc, %bb.f ], [ %i.bh, %bb.g ]
  %i.bj = fmul nsz float %i.bi, 2.550000e+02
  %i.bk = fptoui float %i.bj to i32
  %i.bl = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.bm = fcmp nsz olt float %i.bl, 5.000000e-01
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = fmul nnan nsz float %i.bl, 2.000000e+00
  %i.bo = extractelement <4 x float> %i.aa, i64 2
  %i.bp = fmul nsz float %i.bo, %i.bn
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bq = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.aa, <2 x i32> <i32 1, i32 6>
  %i.bs = fsub nsz <2 x float> splat (float 1.000000e+00), %i.br ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = fmul nnan nsz float %i.bt, -2.000000e+00
  %i.bv = extractelement <2 x float> %i.bs, i64 1
  %i.bw = call nsz float @llvm.fmuladd.f32(float %i.bu, float %i.bv, float 1.000000e+00)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bx = phi nsz float [ %i.bp, %bb.i ], [ %i.bw, %bb.j ]
  %i.by = fmul nsz float %i.bx, 2.550000e+02
  %i.bz = fptoui float %i.by to i32
  %i.ca = shl i32 %i.ax, 16
  %i.cb = and i32 %i.ca, 16711680
  %i.cc = or disjoint i32 %i.cb, %i.aj
  %i.cd = shl i32 %i.bk, 8
  %i.ce = and i32 %i.cd, 65280
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = and i32 %i.bz, 255
  %i.ch = or disjoint i32 %i.cf, %i.cg
  store i32 %i.ch, ptr %6, align 4, !tbaa !104
  %i.ci = load ptr, ptr %1, align 8, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(41) %1, i32 noundef %i.h, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.cl = add nuw i32 %.057, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %.sroa.039.0.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !219
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL25apply_brightness_contrastPN5video6IImageEN4core8vector2dIjEES4_ii(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %"class.video::SColor", align 4     ; 5 uses
  %.sroa.031.0.extract.trunc = trunc i64 %1 to i32 ; 3 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 3 uses
  %.sroa.030.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.2.0.extract.shift = lshr i64 %2, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = tail call i32 @llvm.smax.i32(i32 %4, i32 -127)
  %i.b = tail call noundef i32 @llvm.smin.i32(i32 %i.a, i32 127)
  %i.c = sitofp nsz i32 %i.b to float
  %i.d = fmul nnan nsz float %i.c, 7.812500e-03   ; 3 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %3, i32 -127)
  %i.f = tail call noundef i32 @llvm.smin.i32(i32 %i.e, i32 127)
  %i.g = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.h = insertelement <2 x i32> %i.g, i32 %3, i64 1
  %i.i = sitofp <2 x i32> %i.h to <2 x float>
  %i.j = fmul nnan nsz <2 x float> %i.i, <float 1.000000e+00, float 1.275000e+02>
  %i.k = fdiv nsz <2 x float> %i.j, splat (float 1.270000e+02) ; 3 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = tail call nsz noundef float @llvm.fabs.f32(float %i.l)
  %i.n = fsub nsz float 1.000000e+00, %i.m
  %i.o = tail call nsz noundef float @llvm.atan.f32(float %i.n) ; 3 uses
  %i.p = fcmp nsz ugt float %i.d, 0.000000e+00
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = fmul nsz float %i.d, %i.o
  %i.r = fpext nsz float %i.q to double
  %.pre = fpext nsz float %i.o to double
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !253
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !44   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !32
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #23 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE17_M_construct_nodeIJRKS5_EEEvPSt13_Rb_tree_nodeIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !61
  %i.d = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !103
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %i.b, align 8, !tbaa !32
  %i.i = load i64, ptr %i.a, align 8, !tbaa !103
  store i64 %i.i, ptr %i.c, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !33
  store i8 %i.k, ptr %i.j, align 1, !tbaa !33
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = call ptr @__cxa_begin_catch(ptr %i.m) #23 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 64) #22
  invoke void @__cxa_rethrow() #25
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.p, ptr %i.q, align 8, !tbaa !44
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  call void @__clang_call_terminate(ptr %i.u) #24
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare extern_weak void @_ZTH10infostream() #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

declare extern_weak void @_ZTH11errorstream() #5

declare extern_weak void @_ZTH13warningstream() #5

declare extern_weak void @_ZTH11tracestream() #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { builtin allocsize(0) }

!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}
!llvm.errno.tbaa = !{!17}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!3 = distinct !{null}
!4 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null, null}
!5 = distinct !{null, null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{!8, !34}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !18, i64 0}
!20 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"any p2 pointer", !18, i64 0}
!23 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !22, i64 0}
!24 = !{!"long", !14, i64 0}
!25 = !{!"float", !14, i64 0}
!26 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !25, i64 0, !24, i64 8}
!27 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !23, i64 0, !24, i64 8, !20, i64 16, !24, i64 24, !26, i64 32, !19, i64 48}
!28 = !{!27, !19, i64 16}
!29 = !{!"p1 omnipotent char", !18, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !29, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !24, i64 8, !14, i64 16}
!32 = !{!31, !29, i64 0}
!33 = !{!14, !14, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!27, !23, i64 0}
!36 = !{!27, !24, i64 8}
!37 = !{!"p1 _ZTSN5video6IImageE", !18, i64 0}
!38 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5video6IImageEE", !31, i64 0, !37, i64 32}
!39 = !{!38, !37, i64 32}
!40 = !{!"vtable pointer", !13, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"_ZTS17IReferenceCounted", !15, i64 8}
!43 = !{!42, !15, i64 8}
!44 = !{!31, !24, i64 8}
!45 = !{i8 0, i8 2}
!46 = !{!"p1 _ZTS15RenderingEngine", !18, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"_ZTSN5video6SColorE", !15, i64 0}
!49 = !{!"p1 _ZTS13RenderingCore", !18, i64 0}
!50 = !{!"_ZTSSt10_Head_baseILm0EP13RenderingCoreLb0EE", !49, i64 0}
!51 = !{!"_ZTSSt11_Tuple_implILm0EJP13RenderingCoreSt14default_deleteIS0_EEE", !50, i64 0}
!52 = !{!"_ZTSSt5tupleIJP13RenderingCoreSt14default_deleteIS0_EEE", !51, i64 0}
!53 = !{!"_ZTSSt15__uniq_ptr_implI13RenderingCoreSt14default_deleteIS0_EE", !52, i64 0}
!54 = !{!"_ZTSSt15__uniq_ptr_dataI13RenderingCoreSt14default_deleteIS0_ELb1ELb1EE", !53, i64 0}
!55 = !{!"_ZTSSt10unique_ptrI13RenderingCoreSt14default_deleteIS0_EE", !54, i64 0}
!56 = !{!"p1 _ZTS14IrrlichtDevice", !18, i64 0}
!57 = !{!"p1 _ZTSN5video12IVideoDriverE", !18, i64 0}
!58 = !{!"p1 _ZTS15MyEventReceiver", !18, i64 0}
!59 = !{!"_ZTS15RenderingEngine", !48, i64 0, !48, i64 4, !55, i64 8, !56, i64 16, !57, i64 24, !58, i64 32}
!60 = !{!59, !56, i64 16}
!61 = !{!30, !29, i64 0}
!62 = !{!37, !37, i64 0}
!63 = !{!"p1 _ZTS9LogTarget", !18, i64 0}
!64 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
!65 = !{!"_ZTSSt6locale", !64, i64 0}
!66 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !65, i64 56}
!67 = !{!"_ZTSSt14_Function_base", !14, i64 0, !18, i64 16}
!68 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !67, i64 0, !18, i64 24}
!69 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !66, i64 0, !68, i64 64, !15, i64 96, !14, i64 100}
!70 = !{!"_ZTS17DummyStreamBuffer", !66, i64 0}
!71 = !{!"_ZTSSo"}
!72 = !{!"p1 _ZTSSo", !18, i64 0}
!73 = !{!"_ZTS11StreamProxy", !72, i64 0}
!74 = !{!"_ZTS9LogStream", !63, i64 0, !69, i64 8, !70, i64 368, !71, i64 432, !71, i64 704, !73, i64 976, !73, i64 984}
!75 = !{!74, !63, i64 0}
!76 = !{}
!77 = !{i64 8}
!78 = !{!29, !29, i64 0}
!79 = !{!73, !72, i64 0}
!80 = !{!"_ZTSSt13_Ios_Fmtflags", !14, i64 0}
!81 = !{!"_ZTSSt12_Ios_Iostate", !14, i64 0}
!82 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!83 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !24, i64 8}
!84 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!85 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !80, i64 24, !81, i64 28, !81, i64 32, !82, i64 40, !83, i64 48, !14, i64 64, !15, i64 192, !84, i64 200, !65, i64 208}
!86 = !{!85, !81, i64 32}
!87 = !{!"bool", !14, i64 0}
!88 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !18, i64 0}
!89 = !{!"p1 _ZTSSt5ctypeIcE", !18, i64 0}
!90 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!91 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !18, i64 0}
!92 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !85, i64 0, !72, i64 216, !14, i64 224, !87, i64 225, !88, i64 232, !89, i64 240, !90, i64 248, !91, i64 256}
!93 = !{!92, !89, i64 240}
!94 = !{!"_ZTSNSt6locale5facetE", !15, i64 8}
!95 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!96 = !{!"p1 int", !18, i64 0}
!97 = !{!"p1 short", !18, i64 0}
!98 = !{!"_ZTSSt5ctypeIcE", !94, i64 0, !95, i64 16, !87, i64 24, !96, i64 32, !96, i64 40, !97, i64 48, !14, i64 56, !14, i64 57, !14, i64 313, !14, i64 569}
!99 = !{!98, !14, i64 56}
!100 = !{!"_ZTSN4core11dimension2dIjEE", !15, i64 0, !15, i64 4}
!101 = !{!100, !15, i64 0}
!102 = !{!100, !15, i64 4}
!103 = !{!24, !24, i64 0}
!104 = !{!48, !15, i64 0}
!105 = !{!"_ZTSN4core8vector2dIiEE", !15, i64 0, !15, i64 4}
!106 = !{!105, !15, i64 0}
!107 = !{!105, !15, i64 4}
!108 = !{!"_ZTS11BasicStrfndIcE", !31, i64 0, !24, i64 32}
!109 = !{!108, !24, i64 32}
!110 = !{!15, !15, i64 0}
!111 = !{!"_ZTSN5video13ECOLOR_FORMATE", !14, i64 0}
!112 = !{!"_ZTSN5video6IImageE", !111, i64 8, !100, i64 12, !29, i64 24, !15, i64 32, !15, i64 36, !87, i64 40}
!113 = !{!112, !111, i64 8}
!114 = !{!"_ZTSSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5video6IImageESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S8_EEE", !27, i64 0}
!115 = !{!"_ZTS16SourceImageCache", !114, i64 0}
!116 = !{!"_ZTS11ImageSource", !87, i64 0, !87, i64 1, !87, i64 2, !87, i64 3, !115, i64 8}
!117 = !{!116, !87, i64 0}
!118 = !{!116, !87, i64 2}
!119 = !{!116, !87, i64 1}
!120 = !{!116, !87, i64 3}
!121 = !{!"p1 _ZTS8Settings", !18, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{!112, !15, i64 36}
!124 = !{!112, !29, i64 24}
!125 = !{!"_ZTSZL24createInventoryCubeImagePN5video6IImageES1_S1_E3$_0", !15, i64 0, !57, i64 8}
!126 = !{!"_ZTSZL24createInventoryCubeImagePN5video6IImageES1_S1_E3$_1"}
!127 = !{!"_ZTSZL24createInventoryCubeImagePN5video6IImageES1_S1_E3$_2", !125, i64 0, !15, i64 16, !96, i64 24, !15, i64 32, !15, i64 36, !126, i64 40}
!128 = !{!127, !15, i64 16}
!129 = !{!127, !96, i64 24}
!130 = !{!127, !15, i64 32}
!131 = !{!127, !15, i64 36}
!132 = !{!27, !24, i64 24}
!133 = !{!19, !19, i64 0}
!134 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !24, i64 0}
!135 = !{!134, !24, i64 0}
!136 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!137 = !{!136, !136, i64 0}
!138 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5video6IImageEELb1EEEEEE", !18, i64 0}
!139 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5video6IImageEELb1EEE", !18, i64 0}
!140 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN5video6IImageEESaISB_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !138, i64 0, !139, i64 8}
!141 = !{!140, !139, i64 8}
!142 = !{!"_ZTSSt14_Rb_tree_color", !14, i64 0}
!143 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!144 = !{!"_ZTSSt18_Rb_tree_node_base", !142, i64 0, !143, i64 8, !143, i64 16, !143, i64 24}
!145 = !{!"_ZTSSt15_Rb_tree_header", !144, i64 0, !24, i64 32}
!146 = distinct !{!146, !34}
!147 = distinct !{null}
!148 = distinct !{null}
!149 = distinct !{null}
!150 = distinct !{null}
!151 = distinct !{null}
!152 = distinct !{null}
!153 = distinct !{null, null, null}
!154 = distinct !{!154, !34}
!155 = distinct !{!155, !34}
!156 = distinct !{null, null}
!157 = distinct !{!157, !34}
!158 = distinct !{null}
!159 = distinct !{null}
!160 = distinct !{null}
!161 = distinct !{null}
end_hunk_1
