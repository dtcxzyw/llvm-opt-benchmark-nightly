Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/imagefilters?download=true
inline.NumInlined: 370
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z17imageAverageColorPKN5video6IImageE:bb.a
  %i.do = fcmp nsz ogt float %i.df, 3.130800e-03
  br i1 %i.do, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13
  %i.dp = tail call nsz float @llvm.pow.f32(float %i.df, float f0x3ED55555)
  %i.dq = tail call nnan nsz float @llvm.fmuladd.f32(float %i.dp, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15

bb.w:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13
  %i.dr = fmul nsz float %i.df, 1.292000e+01
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15

_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15: ; preds = %bb.w, %bb.v
  %.0.i4.i.i16 = phi nsz float [ %i.dq, %bb.v ], [ %i.dr, %bb.w ]
  %i.ds = insertelement <2 x float> poison, float %.0.i4.i.i16, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %.0.i.i.i12, i64 1
  %i.du = fmul nsz <2 x float> %i.dt, splat (float 2.550000e+02) ; 2 uses
  %i.dv = fmul nsz float %.0.i2.i.i14, 2.550000e+02 ; 2 uses
  %i.dw = fcmp nsz olt float %i.dv, 0.000000e+00
  %i.dx = select i1 %i.dw, float 0.000000e+00, float %i.dv ; 2 uses
  %i.dy = fcmp nsz olt float %i.dx, 2.550000e+02
  %i.dz = select i1 %i.dy, float %i.dx, float 2.550000e+02
  %i.ea = fadd nsz float %i.dz, 5.000000e-01
  %i.eb = fptosi float %i.ea to i32
  %i.ec = shl i32 %i.eb, 8
  %i.ed = and i32 %i.ec, 65280
  %i.ee = fcmp nsz olt <2 x float> %i.du, zeroinitializer
  %i.ef = select <2 x i1> %i.ee, <2 x float> zeroinitializer, <2 x float> %i.du ; 2 uses
  %i.eg = fcmp nsz olt <2 x float> %i.ef, splat (float 2.550000e+02)
  %i.eh = select <2 x i1> %i.eg, <2 x float> %i.ef, <2 x float> splat (float 2.550000e+02)
  %i.ei = fadd nsz <2 x float> %i.eh, splat (float 5.000000e-01)
  %i.ej = fptosi <2 x float> %i.ei to <2 x i32>   ; 2 uses
  %i.ek = extractelement <2 x i32> %i.ej, i64 1
  %i.el = shl i32 %i.ek, 16
  %.masked.i17 = or disjoint i32 %i.ed, %i.el
  %i.em = extractelement <2 x i32> %i.ej, i64 0
  %i.en = and i32 %i.em, 255
  %i.eo = or disjoint i32 %i.en, %.masked.i17
  %i.ep = or i32 %i.eo, -16777216
  br label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit

_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit: ; preds = %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15, %._crit_edge67.i, %bb.m, %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i, %._crit_edge71.i, %bb.b
  %.sroa.0.0 = phi i32 [ -16777216, %bb.b ], [ -16777216, %._crit_edge71.i ], [ %i.bx, %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i ], [ -16777216, %._crit_edge67.i ], [ %i.ep, %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i15 ], [ -16777216, %bb.m ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14imageScaleNNAAPN5video6IImageERKN4core4rectIiEES1_(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.video::SColor", align 4     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !23 ; 3 uses
  %i.c = extractelement <2 x i32> %i.b, i64 0
  %i.d = sitofp nsz i32 %i.c to float             ; 2 uses
  %i.e = extractelement <2 x i32> %i.b, i64 1
  %i.f = sitofp nsz i32 %i.e to float             ; 2 uses
  %i.g = load <2 x i32>, ptr %i.a, align 4, !tbaa !23 ; 3 uses
  %i.h = extractelement <2 x i32> %i.g, i64 1     ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge159.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !23
  %i.k = sub nsw <2 x i32> %i.j, %i.b
  %i.l = sitofp <2 x i32> %i.k to <2 x float>     ; 3 uses
  %i.m = extractelement <2 x i32> %i.g, i64 0     ; 2 uses
  %.not160 = icmp eq i32 %i.m, 0
  %i.n = uitofp <2 x i32> %i.g to <2 x float>     ; 3 uses
  %i.o = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.p = fadd nsz float %i.o, %i.d                ; 4 uses
  %i.q = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.r = fadd nsz float %i.q, %i.f                ; 4 uses
  %i.s = fdiv nsz <2 x float> %i.l, %i.n          ; 2 uses
  br i1 %.not160, label %._crit_edge159.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.t = extractelement <2 x float> %i.n, i64 1
  %i.u = extractelement <2 x float> %i.s, i64 1
  %i.v = extractelement <2 x float> %i.s, i64 0
  %i.w = extractelement <2 x float> %i.n, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.073158 = phi i32 [ %i.ct, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.x = uitofp nsz i32 %.073158 to float
  %i.y = fmul nnan nsz float %i.q, %i.x
  %i.z = fdiv nsz float %i.y, %i.t
  %i.aa = fadd nsz float %i.z, %i.f               ; 3 uses
  %i.ab = fcmp nsz olt float %i.aa, 0.000000e+00
  %i.ac = fcmp nsz ogt float %i.aa, %i.r
  %..i95 = select nsz i1 %i.ac, float %i.r, float %i.aa
  %.0.i96 = select nsz i1 %i.ab, float 0.000000e+00, float %..i95 ; 4 uses
  %i.ad = fadd nsz float %i.u, %.0.i96            ; 3 uses
  %i.ae = fcmp nsz olt float %i.ad, 0.000000e+00
  %i.af = fcmp nsz ogt float %i.ad, %i.r
  %..i98 = select nsz i1 %i.af, float %i.r, float %i.ad
  %.0.i99 = select nsz i1 %i.ae, float 0.000000e+00, float %..i98 ; 3 uses
  %i.ag = fcmp nsz ogt float %.0.i96, %.0.i99     ; 2 uses
  %.0126 = select nsz i1 %i.ag, float %.0.i99, float %.0.i96 ; 3 uses
  %.0125 = select nsz i1 %i.ag, float %.0.i96, float %.0.i99 ; 4 uses
  %i.ah = call nsz noundef float @llvm.floor.f32(float %.0126) ; 2 uses
  %i.ai = fcmp nsz olt float %i.ah, %.0125
  br label %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit

_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit:           ; preds = %.preheader, %._crit_edge147.thread
  %.072157 = phi i32 [ 0, %.preheader ], [ %i.cs, %._crit_edge147.thread ] ; 3 uses
  %i.aj = uitofp nsz i32 %.072157 to float
  %i.ak = fmul nnan nsz float %i.o, %i.aj
  %i.al = fdiv nsz float %i.ak, %i.w
  %i.am = fadd nsz float %i.al, %i.d              ; 3 uses
  %i.an = fcmp nsz olt float %i.am, 0.000000e+00
  %i.ao = fcmp nsz ogt float %i.am, %i.p
  %..i = select nsz i1 %i.ao, float %i.p, float %i.am
  %.0.i = select nsz i1 %i.an, float 0.000000e+00, float %..i ; 4 uses
  %i.ap = fadd nsz float %i.v, %.0.i              ; 3 uses
  %i.aq = fcmp nsz olt float %i.ap, 0.000000e+00
  %i.ar = fcmp nsz ogt float %i.ap, %i.p
  %..i92 = select nsz i1 %i.ar, float %i.p, float %i.ap
  %.0.i93 = select nsz i1 %i.aq, float 0.000000e+00, float %..i92 ; 3 uses
  %i.as = fcmp nsz ogt float %.0.i, %.0.i93       ; 2 uses
  %.0128 = select nsz i1 %i.as, float %.0.i93, float %.0.i ; 3 uses
  %.0127 = select nsz i1 %i.as, float %.0.i, float %.0.i93 ; 4 uses
  br i1 %i.ai, label %.lr.ph146, label %._crit_edge147.thread

.lr.ph146:                                        ; preds = %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit
  %i.at = call nsz noundef float @llvm.floor.f32(float %.0128) ; 2 uses
  %i.au = fcmp nsz olt float %i.at, %.0127
  br i1 %i.au, label %.lr.ph.us, label %._crit_edge147.thread

.lr.ph.us:                                        ; preds = %.lr.ph146, %._crit_edge.us
  %.085141.us = phi float [ %i.bt, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph146 ]
  %.087140.us = phi float [ %i.az, %._crit_edge.us ], [ %i.ah, %.lr.ph146 ] ; 5 uses
  %i.av = phi <4 x float> [ %i.cg, %._crit_edge.us ], [ zeroinitializer, %.lr.ph146 ]
  %i.aw = fcmp nsz ogt float %.0126, %.087140.us
  %i.ax = fsub nsz float %.087140.us, %.0126
  %i.ay = fadd nsz float %i.ax, 1.000000e+00
  %.074.us = select nsz i1 %i.aw, float %i.ay, float 1.000000e+00 ; 2 uses
  %i.az = fadd nsz float %.087140.us, 1.000000e+00 ; 3 uses
  %i.ba = fcmp nsz olt float %.0125, %i.az
  %i.bb = fsub nsz float %.0125, %.087140.us
  %i.bc = fadd nsz float %i.bb, -1.000000e+00
  %i.bd = fadd nsz float %i.bc, %.074.us
  %.1.us = select nsz i1 %i.ba, float %i.bd, float %.074.us
  %i.be = fptoui float %.087140.us to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %.0135.us = phi float [ %i.at, %.lr.ph.us ], [ %i.bj, %bb.b ] ; 5 uses
  %.186130.us = phi float [ %.085141.us, %.lr.ph.us ], [ %i.bt, %bb.b ]
  %i.bf = phi <4 x float> [ %i.av, %.lr.ph.us ], [ %i.cg, %bb.b ]
  %i.bg = fcmp nsz ogt float %.0128, %.0135.us
  %i.bh = fsub nsz float %.0135.us, %.0128
  %i.bi = fadd nsz float %i.bh, 1.000000e+00
  %.075.us = select nsz i1 %i.bg, float %i.bi, float 1.000000e+00 ; 2 uses
  %i.bj = fadd nsz float %.0135.us, 1.000000e+00  ; 3 uses
  %i.bk = fcmp nsz olt float %.0127, %i.bj
  %i.bl = fsub nsz float %.0127, %.0135.us
  %i.bm = fadd nsz float %i.bl, -1.000000e+00
  %i.bn = fadd nsz float %i.bm, %.075.us
  %.176.us = select nsz i1 %i.bk, float %i.bn, float %.075.us
  %i.bo = fmul nsz float %.1.us, %.176.us         ; 2 uses
  %i.bp = fptoui float %.0135.us to i32
  %i.bq = load ptr, ptr %0, align 8, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = fadd nsz float %.186130.us, %i.bo       ; 4 uses
  %i.bu = call i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %i.bp, i32 noundef %i.be) ; 5 uses
  store i32 %i.bu, ptr %3, align 4, !tbaa !23
  %i.bv = lshr i32 %i.bu, 24
  %i.bw = lshr i32 %i.bu, 16
  %i.bx = lshr i32 %i.bu, 8
  %i.by = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %i.bz = insertelement <4 x i32> %i.by, i32 %i.bw, i64 1
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bu, i64 2
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bv, i64 3
  %i.cc = and <4 x i32> %i.cb, <i32 255, i32 255, i32 255, i32 -1>
  %i.cd = uitofp <4 x i32> %i.cc to <4 x float>
  %i.ce = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cg = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.cd, <4 x float> %i.bf) ; 3 uses
  %i.ch = fcmp nsz olt float %i.bj, %.0127
  br i1 %i.ch, label %bb.b, label %._crit_edge.us, !llvm.loop !59

._crit_edge.us:                                   ; preds = %bb.b
  %i.ci = fcmp nsz olt float %i.az, %.0125
  br i1 %i.ci, label %.lr.ph.us, label %._crit_edge147, !llvm.loop !60

._crit_edge147:                                   ; preds = %._crit_edge.us
  %i.cj = fcmp nsz ogt float %i.bt, 0.000000e+00
  br i1 %i.cj, label %bb.c, label %._crit_edge147.thread

bb.c:                                             ; preds = %._crit_edge147
  %i.ck = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = fdiv nsz <4 x float> %i.cg, %i.cl
  %i.cn = fadd nsz <4 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = fptoui <4 x float> %i.cn to <4 x i32>
  %4 = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %5 = trunc <4 x i32> %4 to <4 x i8>
  %6 = bitcast <4 x i8> %5 to i32
  br label %._crit_edge147.thread

._crit_edge147.thread:                            ; preds = %.lr.ph146, %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit, %._crit_edge147, %bb.c
  %storemerge = phi i32 [ %6, %bb.c ], [ 0, %._crit_edge147 ], [ 0, %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit ], [ 0, %.lr.ph146 ]
  store i32 %storemerge, ptr %3, align 4, !tbaa !64
  %i.cp = load ptr, ptr %2, align 8, !tbaa !27
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  call void %i.cr(ptr noundef nonnull align 8 dereferenceable(41) %2, i32 noundef %.072157, i32 noundef %.073158, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext false)
  %i.cs = add nuw i32 %.072157, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit, !llvm.loop !61

._crit_edge:                                      ; preds = %._crit_edge147.thread
  %i.ct = add nuw i32 %.073158, 1                 ; 2 uses
  %exitcond166.not = icmp eq i32 %i.ct, %i.h
  br i1 %exitcond166.not, label %._crit_edge159.split, label %.preheader, !llvm.loop !62

._crit_edge159.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 10 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %.not65 = icmp ult i64 %i.g, %2
  br i1 %.not65, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %3, align 1, !tbaa !17      ; 3 uses
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 8 uses
  %i.k = icmp ugt i64 %i.j, %2
  br i1 %i.k, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = icmp sgt i64 %2, 1
  br i1 %i.o, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.m, i64 %2, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.m, align 1, !tbaa !17
  store i8 %i.q, ptr %i.d, align 1, !tbaa !17
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %2
  store ptr %i.s, ptr %i.c, align 8, !tbaa !21
  %i.t = sub i64 %i.n, %i.i                       ; 4 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.v = sub nsw i64 0, %i.t
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %1, i64 %i.t, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = icmp eq i64 %i.t, 1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds i8, ptr %i.d, i64 -1
  %i.z = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.z, ptr %i.y, align 1, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %2, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.l:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %2, %i.j
  br i1 %i.aa, label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = sub nuw i64 %2, %i.j                    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.d, i8 %i.h, i64 %i.ab, i1 false)
  br label %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit

_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ac, %bb.m ] ; 3 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !21
  %i.ad = icmp sgt i64 %i.j, 1
  br i1 %i.ad, label %bb.n, label %bb.o, !prof !25

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0.i.i.i.i.i, ptr align 1 %1, i64 %i.j, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPhmhhET_S1_T0_RKT1_RSaIT2_E.exit
  %i.ae = icmp eq i64 %i.j, 1
  br i1 %i.ae, label %bb.p, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.af = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.af, ptr %.0.i.i.i.i.i, align 1, !tbaa !17
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.j
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !21
  %.not.i.i.i70 = icmp eq ptr %i.d, %1
  br i1 %.not.i.i.i70, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %bb.q

bb.q:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit69
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %i.h, i64 %i.j, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 3 uses
  %i.ak = sub i64 %i.f, %i.aj                     ; 4 uses
  %i.al = sub i64 9223372036854775807, %i.ak
  %i.am = icmp ult i64 %i.al, %2
  br i1 %i.am, label %bb.s, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #11
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %2)
  %i.an = add i64 %.sroa.speculated.i, %i.ak      ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.ak
  %i.ap = tail call i64 @llvm.umin.i64(i64 %i.an, i64 9223372036854775807)
  %i.aq = select i1 %i.ao, i64 9223372036854775807, i64 %i.ap ; 3 uses
  %i.ar = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.as = sub i64 %i.ar, %i.aj                    ; 4 uses
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.au = phi ptr [ %i.at, %bb.t ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.as ; 2 uses
  %i.aw = load i8, ptr %3, align 1, !tbaa !17
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 %i.aw, i64 %2, i1 false)
  %i.ax = icmp sgt i64 %i.as, 1
  br i1 %i.ax, label %bb.v, label %bb.w, !prof !25

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.ai, i64 %i.as, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.u
  %i.ay = icmp eq i64 %i.as, 1
  br i1 %i.ay, label %bb.x, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.x:                                             ; preds = %bb.w
  %i.az = load i8, ptr %i.ai, align 1, !tbaa !17
  store i8 %i.az, ptr %i.au, align 1, !tbaa !17
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

end_hunk_0
begin_hunk_1_@_ZSt17__throw_bad_allocv

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i64 %i.f, 0
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #11
  unreachable

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #12 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 1
  br i1 %i.p, label %bb.e, label %bb.f, !prof !25

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.q = load i8, ptr %i.c, align 1, !tbaa !17
  store i8 %i.q, ptr %i.o, align 1, !tbaa !17
  br label %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit

_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit: ; preds = %bb.e, %bb.f
  %i.r = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #10
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZNSt6vectorIhSaIhEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKhS1_EEEEPhmT_S9_.exit, %bb.g
  store ptr %i.o, ptr %0, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8, !tbaa !20
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.h:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp sgt i64 %i.f, 1
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !25

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %i.f, 1
  br i1 %i.ac, label %bb.l, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.k
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !17
  store i8 %i.ad, ptr %i.i, align 1, !tbaa !17
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.h
  %i.ae = icmp sgt i64 %i.aa, 1
  br i1 %i.ae, label %bb.n, label %bb.o, !prof !25

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.o:                                             ; preds = %bb.m
  %i.af = icmp eq i64 %i.aa, 1
  br i1 %i.af, label %bb.p, label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.o
  %i.ag = load i8, ptr %i.c, align 1, !tbaa !17
  store i8 %i.ag, ptr %i.i, align 1, !tbaa !17
  br label %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit

_ZSt4copyIPhS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.n, %bb.o, %bb.p
  %i.ah = load ptr, ptr %1, align 8, !tbaa !19
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !21  ; 3 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !19
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 3 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 1
  br i1 %i.as, label %bb.q, label %bb.r, !prof !25

bb.q:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.an, i64 %i.ar, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.r:                                             ; preds = %_ZSt4copyIPhS0_ET0_T_S2_S1_.exit
  %i.at = icmp eq i64 %i.ar, 1
  br i1 %i.at, label %bb.s, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %bb.r
  %i.au = load i8, ptr %i.an, align 1, !tbaa !17
  store i8 %i.au, ptr %i.ai, align 1, !tbaa !17
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit: ; preds = %bb.s, %bb.r, %bb.q, %bb.l, %bb.k, %bb.j, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit
  %i.av = load ptr, ptr %0, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !21
  br label %bb.t

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEENS1_IPhS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #3

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_GLOBAL__sub_I_imagefilters.cpp() #8 section ".text.startup" {
vector.ph:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.a = uitofp nneg <4 x i64> %vec.ind to <4 x float>
  %i.b = fdiv nsz <4 x float> %i.a, splat (float 2.550000e+02) ; 3 uses
  %i.c = fcmp nsz ogt <4 x float> %i.b, splat (float 4.045000e-02)
  %i.d = fdiv nsz <4 x float> %i.b, splat (float 1.292000e+01)
  %i.e = fadd nsz <4 x float> %i.b, splat (float 5.500000e-02)
  %i.f = fdiv nsz <4 x float> %i.e, splat (float 1.055000e+00)
  %i.g = tail call nsz <4 x float> @llvm.pow.v4f32(<4 x float> %i.f, <4 x float> splat (float 2.400000e+00))
  %predphi = select nsz <4 x i1> %i.c, <4 x float> %i.g, <4 x float> %i.d
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %index
  store <4 x float> %predphi, ptr %i.h, align 4, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.i = icmp eq i64 %index.next, 256
  br i1 %i.i, label %__cxx_global_var_init.exit, label %vector.body, !llvm.loop !65

__cxx_global_var_init.exit:                       ; preds = %vector.body
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.pow.v4f32(<4 x float>, <4 x float>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTSN5video13ECOLOR_FORMATE", !5, i64 0}
!10 = !{!"_ZTSN4core11dimension2dIjEE", !6, i64 0, !6, i64 4}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"bool", !5, i64 0}
!14 = !{!"_ZTSN5video6IImageE", !9, i64 8, !10, i64 12, !12, i64 24, !6, i64 32, !6, i64 36, !13, i64 40}
!15 = !{!14, !9, i64 8}
!16 = !{!14, !12, i64 24}
!17 = !{!5, !5, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!19 = !{!18, !12, i64 0}
!20 = !{!18, !12, i64 16}
!21 = !{!18, !12, i64 8}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!6, !6, i64 0}
!24 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!"vtable pointer", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"float", !5, i64 0}
!29 = !{!28, !28, i64 0}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = distinct !{null}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22}
!44 = distinct !{null}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !18, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIhSaIhEE", !48, i64 0}
!50 = !{!"_ZTS6Bitmap", !6, i64 0, !6, i64 4, !49, i64 8}
!51 = !{!50, !6, i64 0}
!52 = !{!50, !6, i64 4}
!53 = !{!12, !12, i64 0}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{null, null}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !22}
!63 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!64 = !{!63, !6, i64 0}
!65 = distinct !{!65, !22, !66, !67}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_1
