Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/imagefilters?download=true
inline.NumInlined: 370
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z21imageCleanTransparentPN5video6IImageEj:bb.a
          cleanup
  br label %bb.cv

._crit_edge204.thread.i:                          ; preds = %bb.cr, %._crit_edge204.i, %bb.cm
  %i.ph = add nuw i32 %.074213.i, 1               ; 2 uses
  %exitcond227.not.i = icmp eq i32 %i.ph, %i.hu
  br i1 %exitcond227.not.i, label %._crit_edge214.i.split, label %bb.cm, !llvm.loop !50

_ZNK6Bitmap3allEv.exit114.i:                      ; preds = %bb.cl, %.lr.ph.i102.i, %.lr.ph27.i108.i, %bb.cc, %bb.ce, %bb.cg, %bb.ci, %bb.ck
  %i.pi = load i64, ptr %4, align 8
  store i64 %i.pi, ptr %3, align 8
  %i.pj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIhSaIhEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %i.ki)
          to label %_ZN6BitmapaSERKS_.exit.i24 unwind label %bb.ct ; 0 uses

_ZN6BitmapaSERKS_.exit.i24:                       ; preds = %_ZNK6Bitmap3allEv.exit114.i
  %i.pk = add nuw nsw i32 %.076217.i, 1           ; 2 uses
  %exitcond229.not.i = icmp eq i32 %i.pk, %.sroa.speculated.i21
  br i1 %exitcond229.not.i, label %_ZNK6Bitmap3allEv.exit114.thread.loopexit224.i, label %.preheader172.i, !llvm.loop !51

bb.ct:                                            ; preds = %_ZNK6Bitmap3allEv.exit114.i
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

_ZNK6Bitmap3allEv.exit114.thread.loopexit224.i:   ; preds = %_ZN6BitmapaSERKS_.exit.i24, %._crit_edge.i106.i, %bb.bz, %._crit_edge216.split.i
  %.pre231.i = load ptr, ptr %i.ki, align 8, !tbaa !18
  br label %_ZNK6Bitmap3allEv.exit114.thread.i

_ZNK6Bitmap3allEv.exit114.thread.i:               ; preds = %bb.cb, %bb.cd, %bb.cf, %bb.ch, %bb.cj, %bb.cl, %_ZNK6Bitmap3allEv.exit114.thread.loopexit224.i
  %i.pm = phi ptr [ %.pre231.i, %_ZNK6Bitmap3allEv.exit114.thread.loopexit224.i ], [ %i.lf, %bb.cl ], [ %i.lf, %bb.cj ], [ %i.lf, %bb.ch ], [ %i.lf, %bb.cf ], [ %i.lf, %bb.cd ], [ %i.lf, %bb.cb ] ; 3 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i.i.i25, label %_ZN6BitmapD2Ev.exit.i26, label %bb.cu

bb.cu:                                            ; preds = %_ZNK6Bitmap3allEv.exit114.thread.i
  %i.pn = load ptr, ptr %i.kq, align 8, !tbaa !20
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = ptrtoint ptr %i.pm to i64
  %i.pq = sub i64 %i.po, %i.pp
  call void @_ZdlPvm(ptr noundef nonnull %i.pm, i64 noundef %i.pq) #10
  br label %_ZN6BitmapD2Ev.exit.i26

_ZN6BitmapD2Ev.exit.i26:                          ; preds = %bb.cu, %_ZNK6Bitmap3allEv.exit114.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %_ZNK6Bitmap3allEv.exit.thread.i27

bb.cv:                                            ; preds = %bb.ct, %bb.cs, %.split.us.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.pl, %bb.ct ], [ %i.oa, %.split.us.i ], [ %i.pg, %bb.cs ] ; 2 uses
  %i.pr = load ptr, ptr %i.ki, align 8, !tbaa !18 ; 3 uses
  %.not.i.i.i.i122.i = icmp eq ptr %i.pr, null
  br i1 %.not.i.i.i.i122.i, label %_ZN6BitmapD2Ev.exit124.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ps = load ptr, ptr %i.kq, align 8, !tbaa !20
  %i.pt = ptrtoint ptr %i.ps to i64
  %i.pu = ptrtoint ptr %i.pr to i64
  %i.pv = sub i64 %i.pt, %i.pu
  call void @_ZdlPvm(ptr noundef nonnull %i.pr, i64 noundef %i.pv) #10
  br label %_ZN6BitmapD2Ev.exit124.i

_ZNK6Bitmap3allEv.exit.thread.i27:                ; preds = %bb.be, %bb.bg, %bb.bi, %bb.bk, %bb.bm, %bb.bo, %_ZN6BitmapD2Ev.exit.i26, %._crit_edge.i.i38, %bb.bc, %._crit_edge186.split.i
  %i.pw = load ptr, ptr %i.hw, align 8, !tbaa !18 ; 3 uses
  %.not.i.i.i.i125.i = icmp eq ptr %i.pw, null
  br i1 %.not.i.i.i.i125.i, label %_ZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEj.exit, label %bb.cx

bb.cx:                                            ; preds = %_ZNK6Bitmap3allEv.exit.thread.i27
  %i.px = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !20
  %i.pz = ptrtoint ptr %i.py to i64
  %i.qa = ptrtoint ptr %i.pw to i64
  %i.qb = sub i64 %i.pz, %i.qa
  call void @_ZdlPvm(ptr noundef nonnull %i.pw, i64 noundef %i.qb) #10
  br label %_ZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEj.exit

_ZN6BitmapD2Ev.exit124.i:                         ; preds = %bb.cw, %bb.cv, %bb.by
  %.pn.pn.pn.i16 = phi { ptr, i32 } [ %i.kz, %bb.by ], [ %.pn.pn.i, %bb.cv ], [ %.pn.pn.i, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.cy

bb.cy:                                            ; preds = %_ZN6BitmapD2Ev.exit124.i, %bb.br
  %.pn90.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i16, %_ZN6BitmapD2Ev.exit124.i ], [ %i.kf, %bb.br ]
  %i.qc = load ptr, ptr %i.hw, align 8, !tbaa !18 ; 3 uses
  %.not.i.i.i.i128.i = icmp eq ptr %i.qc, null
  br i1 %.not.i.i.i.i128.i, label %_ZN6BitmapD2Ev.exit130.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !20
  %i.qf = ptrtoint ptr %i.qe to i64
  %i.qg = ptrtoint ptr %i.qc to i64
  %i.qh = sub i64 %i.qf, %i.qg
  call void @_ZdlPvm(ptr noundef nonnull %i.qc, i64 noundef %i.qh) #10
  br label %_ZN6BitmapD2Ev.exit130.i

_ZN6BitmapD2Ev.exit130.i:                         ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %common.resume

_ZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEj.exit: ; preds = %_ZNK6Bitmap3allEv.exit.thread.i27, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %bb.da

bb.da:                                            ; preds = %_ZL33imageCleanTransparentWithInliningILb0EEvPN5video6IImageEj.exit, %_ZL33imageCleanTransparentWithInliningILb1EEvPN5video6IImageEj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local range(i32 -16777216, 0) i32 @_Z17imageAverageColorPKN5video6IImageE(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp eq i32 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.017.0.copyload.i = load i32, ptr %i.f, align 4, !tbaa !31 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !31 ; 3 uses
  %i.g = lshr i32 %.sroa.017.0.copyload.i, 4
  %.sroa.speculated35.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 1)
  %i.h = lshr i32 %.sroa.6.0.copyload.i, 4
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1)
  %.not77.i = icmp eq i32 %.sroa.6.0.copyload.i, 0
  %.not78.i = icmp eq i32 %.sroa.017.0.copyload.i, 0
  %or.cond.i = select i1 %.not77.i, i1 true, i1 %.not78.i
  br i1 %or.cond.i, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %bb.b, %._crit_edge.us.i
  %.070.us.i = phi i32 [ %.2.us.i, %._crit_edge.us.i ], [ 0, %bb.b ]
  %.02569.us.i = phi i32 [ %i.ai, %._crit_edge.us.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.13.068.us.i = phi float [ %.sroa.13.2.us.i, %._crit_edge.us.i ], [ 0.000000e+00, %bb.b ]
  %.sroa.040.067.us.i = phi <2 x float> [ %.sroa.040.2.us.i, %._crit_edge.us.i ], [ zeroinitializer, %bb.b ]
  %i.i = mul i32 %.02569.us.i, %.sroa.017.0.copyload.i
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.preheader.us.i
  %.164.us.i = phi i32 [ %.070.us.i, %.preheader.us.i ], [ %.2.us.i, %bb.e ] ; 2 uses
  %.02663.us.i = phi i32 [ 0, %.preheader.us.i ], [ %i.ag, %bb.e ] ; 2 uses
  %.sroa.13.162.us.i = phi float [ %.sroa.13.068.us.i, %.preheader.us.i ], [ %.sroa.13.2.us.i, %bb.e ] ; 2 uses
  %.sroa.040.161.us.i = phi <2 x float> [ %.sroa.040.067.us.i, %.preheader.us.i ], [ %.sroa.040.2.us.i, %bb.e ] ; 2 uses
  %i.j = add i32 %.02663.us.i, %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !31   ; 4 uses
  %.not27.us.i = icmp ult i32 %i.m, 16777216
  br i1 %.not27.us.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %.164.us.i, 1
  %i.o = lshr i32 %i.m, 16
  %i.p = and i32 %i.o, 255
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !52
  %i.t = lshr i32 %i.m, 8
  %i.u = and i32 %i.t, 255
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.v
  %i.x = load float, ptr %i.w, align 4, !tbaa !52
  %i.y = and i32 %i.m, 255
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !52
  %i.ac = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.x, i64 1
  %i.ae = fadd nsz <2 x float> %.sroa.040.161.us.i, %i.ad
  %i.af = fadd nsz float %.sroa.13.162.us.i, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.040.2.us.i = phi nsz <2 x float> [ %.sroa.040.161.us.i, %bb.c ], [ %i.ae, %bb.d ] ; 4 uses
  %.sroa.13.2.us.i = phi nsz float [ %.sroa.13.162.us.i, %bb.c ], [ %i.af, %bb.d ] ; 3 uses
  %.2.us.i = phi i32 [ %.164.us.i, %bb.c ], [ %i.n, %bb.d ] ; 4 uses
  %i.ag = add i32 %.02663.us.i, %.sroa.speculated35.i ; 2 uses
  %i.ah = icmp ult i32 %i.ag, %.sroa.017.0.copyload.i
  br i1 %i.ah, label %bb.c, label %._crit_edge.us.i, !llvm.loop !54

._crit_edge.us.i:                                 ; preds = %bb.e
  %i.ai = add i32 %.02569.us.i, %.sroa.speculated.i ; 2 uses
  %i.aj = icmp ult i32 %i.ai, %.sroa.6.0.copyload.i
  br i1 %i.aj, label %.preheader.us.i, label %._crit_edge71.i, !llvm.loop !55

._crit_edge71.i:                                  ; preds = %._crit_edge.us.i
  %.not.i = icmp eq i32 %.2.us.i, 0
  br i1 %.not.i, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge71.i
  %i.ak = uitofp nsz i32 %.2.us.i to float        ; 3 uses
  %.sroa.040.0.vec.extract46.i = extractelement <2 x float> %.sroa.040.2.us.i, i64 0
  %i.al = fdiv nsz float %.sroa.040.0.vec.extract46.i, %i.ak ; 3 uses
  %.sroa.040.4.vec.extract53.i = extractelement <2 x float> %.sroa.040.2.us.i, i64 1
  %i.am = fdiv nsz float %.sroa.040.4.vec.extract53.i, %i.ak ; 3 uses
  %i.an = fdiv nsz float %.sroa.13.2.us.i, %i.ak  ; 3 uses
  %i.ao = fcmp nsz ogt float %i.al, 3.130800e-03
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = tail call nsz float @llvm.pow.f32(float %i.al, float f0x3ED55555)
  %i.aq = tail call nnan nsz float @llvm.fmuladd.f32(float %i.ap, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ar = fmul nsz float %i.al, 1.292000e+01
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi nsz float [ %i.aq, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = fcmp nsz ogt float %i.am, 3.130800e-03
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i
  %i.at = tail call nsz float @llvm.pow.f32(float %i.am, float f0x3ED55555)
  %i.au = tail call nnan nsz float @llvm.fmuladd.f32(float %i.at, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i
  %i.av = fmul nsz float %i.am, 1.292000e+01
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i: ; preds = %bb.j, %bb.i
  %.0.i2.i.i = phi nsz float [ %i.au, %bb.i ], [ %i.av, %bb.j ]
  %i.aw = fcmp nsz ogt float %i.an, 3.130800e-03
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i
  %i.ax = tail call nsz float @llvm.pow.f32(float %i.an, float f0x3ED55555)
  %i.ay = tail call nnan nsz float @llvm.fmuladd.f32(float %i.ax, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i
  %i.az = fmul nsz float %i.an, 1.292000e+01
  br label %_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i

_ZN12_GLOBAL__N_114linear_to_srgbEN4core8vector3dIfEE.exit.i: ; preds = %bb.l, %bb.k
  %.0.i4.i.i = phi nsz float [ %i.ay, %bb.k ], [ %i.az, %bb.l ]
  %i.ba = insertelement <2 x float> poison, float %.0.i4.i.i, i64 0
  %i.bb = insertelement <2 x float> %i.ba, float %.0.i.i.i, i64 1
  %i.bc = fmul nsz <2 x float> %i.bb, splat (float 2.550000e+02) ; 2 uses
  %i.bd = fmul nsz float %.0.i2.i.i, 2.550000e+02 ; 2 uses
  %i.be = fcmp nsz olt float %i.bd, 0.000000e+00
  %i.bf = select i1 %i.be, float 0.000000e+00, float %i.bd ; 2 uses
  %i.bg = fcmp nsz olt float %i.bf, 2.550000e+02
  %i.bh = select i1 %i.bg, float %i.bf, float 2.550000e+02
  %i.bi = fadd nsz float %i.bh, 5.000000e-01
  %i.bj = fptosi float %i.bi to i32
  %i.bk = shl i32 %i.bj, 8
  %i.bl = and i32 %i.bk, 65280
  %i.bm = fcmp nsz olt <2 x float> %i.bc, zeroinitializer
  %i.bn = select <2 x i1> %i.bm, <2 x float> zeroinitializer, <2 x float> %i.bc ; 2 uses
  %i.bo = fcmp nsz olt <2 x float> %i.bn, splat (float 2.550000e+02)
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.bn, <2 x float> splat (float 2.550000e+02)
  %i.bq = fadd nsz <2 x float> %i.bp, splat (float 5.000000e-01)
  %i.br = fptosi <2 x float> %i.bq to <2 x i32>   ; 2 uses
  %i.bs = extractelement <2 x i32> %i.br, i64 1
  %i.bt = shl i32 %i.bs, 16
  %.masked.i = or disjoint i32 %i.bl, %i.bt
  %i.bu = extractelement <2 x i32> %i.br, i64 0
  %i.bv = and i32 %i.bu, 255
  %i.bw = or disjoint i32 %i.bv, %.masked.i
  %i.bx = or i32 %i.bw, -16777216
  br label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit

bb.m:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.017.0.copyload.i3 = load i32, ptr %i.by, align 4, !tbaa !31 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !31 ; 3 uses
  %i.bz = lshr i32 %.sroa.017.0.copyload.i3, 4
  %.sroa.speculated31.i = tail call i32 @llvm.umax.i32(i32 %i.bz, i32 1)
  %i.ca = lshr i32 %.sroa.5.0.copyload.i, 4
  %.sroa.speculated.i4 = tail call i32 @llvm.umax.i32(i32 %i.ca, i32 1)
  %.not73.i = icmp eq i32 %.sroa.5.0.copyload.i, 0
  %.not74.i = icmp eq i32 %.sroa.017.0.copyload.i3, 0
  %or.cond.i5 = select i1 %.not73.i, i1 true, i1 %.not74.i
  br i1 %or.cond.i5, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %.preheader.us.i6

.preheader.us.i6:                                 ; preds = %bb.m, %._crit_edge.us.i9
  %.066.us.i = phi i32 [ %.2.us.i8, %._crit_edge.us.i9 ], [ 0, %bb.m ]
  %.02265.us.i = phi i32 [ %i.da, %._crit_edge.us.i9 ], [ 0, %bb.m ] ; 2 uses
  %.sroa.13.064.us.i = phi float [ %.sroa.13.2.us.i7, %._crit_edge.us.i9 ], [ 0.000000e+00, %bb.m ]
  %.sroa.036.063.us.i = phi <2 x float> [ %.sroa.036.2.us.i, %._crit_edge.us.i9 ], [ zeroinitializer, %bb.m ]
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.preheader.us.i6
  %.160.us.i = phi i32 [ %.066.us.i, %.preheader.us.i6 ], [ %.2.us.i8, %bb.p ] ; 2 uses
  %.02359.us.i = phi i32 [ 0, %.preheader.us.i6 ], [ %i.cy, %bb.p ] ; 2 uses
  %.sroa.13.158.us.i = phi float [ %.sroa.13.064.us.i, %.preheader.us.i6 ], [ %.sroa.13.2.us.i7, %bb.p ] ; 2 uses
  %.sroa.036.157.us.i = phi <2 x float> [ %.sroa.036.063.us.i, %.preheader.us.i6 ], [ %.sroa.036.2.us.i, %bb.p ] ; 2 uses
  %i.cb = load ptr, ptr %0, align 8, !tbaa !42
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call i32 %i.cd(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.02359.us.i, i32 noundef %.02265.us.i), !inline_history !56 ; 4 uses
  %.not24.us.i = icmp ult i32 %i.ce, 16777216
  br i1 %.not24.us.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = add i32 %.160.us.i, 1
  %i.cg = lshr i32 %i.ce, 16
  %i.ch = and i32 %i.cg, 255
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !52
  %i.cl = lshr i32 %i.ce, 8
  %i.cm = and i32 %i.cl, 255
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.cn
  %i.cp = load float, ptr %i.co, align 4, !tbaa !52
  %i.cq = and i32 %i.ce, 255
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr @_ZN12_GLOBAL__N_118srgb_to_linear_lutE, i64 %i.cr
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !52
  %i.cu = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.cp, i64 1
  %i.cw = fadd nsz <2 x float> %.sroa.036.157.us.i, %i.cv
  %i.cx = fadd nsz float %.sroa.13.158.us.i, %i.ct
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.036.2.us.i = phi nsz <2 x float> [ %.sroa.036.157.us.i, %bb.n ], [ %i.cw, %bb.o ] ; 4 uses
  %.sroa.13.2.us.i7 = phi nsz float [ %.sroa.13.158.us.i, %bb.n ], [ %i.cx, %bb.o ] ; 3 uses
  %.2.us.i8 = phi i32 [ %.160.us.i, %bb.n ], [ %i.cf, %bb.o ] ; 4 uses
  %i.cy = add i32 %.02359.us.i, %.sroa.speculated31.i ; 2 uses
  %i.cz = icmp ult i32 %i.cy, %.sroa.017.0.copyload.i3
  br i1 %i.cz, label %bb.n, label %._crit_edge.us.i9, !llvm.loop !57

._crit_edge.us.i9:                                ; preds = %bb.p
  %i.da = add i32 %.02265.us.i, %.sroa.speculated.i4 ; 2 uses
  %i.db = icmp ult i32 %i.da, %.sroa.5.0.copyload.i
  br i1 %i.db, label %.preheader.us.i6, label %._crit_edge67.i, !llvm.loop !58

._crit_edge67.i:                                  ; preds = %._crit_edge.us.i9
  %.not.i10 = icmp eq i32 %.2.us.i8, 0
  br i1 %.not.i10, label %_ZL23imageAverageColorInlineILb1EEN5video6SColorEPKNS0_6IImageE.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge67.i
  %i.dc = uitofp nsz i32 %.2.us.i8 to float       ; 3 uses
  %.sroa.036.0.vec.extract42.i = extractelement <2 x float> %.sroa.036.2.us.i, i64 0
  %i.dd = fdiv nsz float %.sroa.036.0.vec.extract42.i, %i.dc ; 3 uses
  %.sroa.036.4.vec.extract49.i = extractelement <2 x float> %.sroa.036.2.us.i, i64 1
  %i.de = fdiv nsz float %.sroa.036.4.vec.extract49.i, %i.dc ; 3 uses
  %i.df = fdiv nsz float %.sroa.13.2.us.i7, %i.dc ; 3 uses
  %i.dg = fcmp nsz ogt float %i.dd, 3.130800e-03
  br i1 %i.dg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dh = tail call nsz float @llvm.pow.f32(float %i.dd, float f0x3ED55555)
  %i.di = tail call nnan nsz float @llvm.fmuladd.f32(float %i.dh, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11

bb.s:                                             ; preds = %bb.q
  %i.dj = fmul nsz float %i.dd, 1.292000e+01
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11: ; preds = %bb.s, %bb.r
  %.0.i.i.i12 = phi nsz float [ %i.di, %bb.r ], [ %i.dj, %bb.s ]
  %i.dk = fcmp nsz ogt float %i.de, 3.130800e-03
  br i1 %i.dk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11
  %i.dl = tail call nsz float @llvm.pow.f32(float %i.de, float f0x3ED55555)
  %i.dm = tail call nnan nsz float @llvm.fmuladd.f32(float %i.dl, float 1.055000e+00, float -5.500000e-02)
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit.i.i11
  %i.dn = fmul nsz float %i.de, 1.292000e+01
  br label %_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13

_ZN12_GLOBAL__N_124linear_to_srgb_componentEf.exit3.i.i13: ; preds = %bb.u, %bb.t
  %.0.i2.i.i14 = phi nsz float [ %i.dm, %bb.t ], [ %i.dn, %bb.u ]
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
  store i32 0, ptr %3, align 4, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !31 ; 3 uses
  %i.c = extractelement <2 x i32> %i.b, i64 0
  %i.d = sitofp nsz i32 %i.c to float             ; 2 uses
  %i.e = extractelement <2 x i32> %i.b, i64 1
  %i.f = sitofp nsz i32 %i.e to float             ; 2 uses
  %i.g = load <2 x i32>, ptr %i.a, align 4, !tbaa !31 ; 3 uses
  %i.h = extractelement <2 x i32> %i.g, i64 1     ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge159.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load <2 x i32>, ptr %i.i, align 4, !tbaa !31
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
  %.083158 = phi i32 [ %i.cw, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.x = uitofp nsz i32 %.083158 to float
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
  %.0128 = select nsz i1 %i.ag, float %.0.i96, float %.0.i99 ; 4 uses
  %.0127 = select nsz i1 %i.ag, float %.0.i99, float %.0.i96 ; 3 uses
  %i.ah = call nsz noundef float @llvm.floor.f32(float %.0127) ; 2 uses
  %i.ai = fcmp nsz olt float %i.ah, %.0128
  br label %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit

_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit:           ; preds = %.preheader, %._crit_edge147.thread
  %.082157 = phi i32 [ 0, %.preheader ], [ %i.cv, %._crit_edge147.thread ] ; 3 uses
  %i.aj = uitofp nsz i32 %.082157 to float
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
  %.0126 = select nsz i1 %i.as, float %.0.i, float %.0.i93 ; 4 uses
  %.0125 = select nsz i1 %i.as, float %.0.i93, float %.0.i ; 3 uses
  br i1 %i.ai, label %.lr.ph146, label %._crit_edge147.thread

.lr.ph146:                                        ; preds = %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit
  %i.at = call nsz noundef float @llvm.floor.f32(float %.0125) ; 2 uses
  %i.au = fcmp nsz olt float %i.at, %.0126
  br i1 %i.au, label %.lr.ph.us, label %._crit_edge147.thread

.lr.ph.us:                                        ; preds = %.lr.ph146, %._crit_edge.us
  %.072145.us = phi float [ %i.az, %._crit_edge.us ], [ %i.ah, %.lr.ph146 ] ; 5 uses
  %.073144.us = phi float [ %i.bt, %._crit_edge.us ], [ 0.000000e+00, %.lr.ph146 ]
  %i.av = phi <4 x float> [ %i.cg, %._crit_edge.us ], [ zeroinitializer, %.lr.ph146 ]
  %i.aw = fcmp nsz ogt float %.0127, %.072145.us
  %i.ax = fsub nsz float %.072145.us, %.0127
  %i.ay = fadd nsz float %i.ax, 1.000000e+00
  %.086.us = select nsz i1 %i.aw, float %i.ay, float 1.000000e+00 ; 2 uses
  %i.az = fadd nsz float %.072145.us, 1.000000e+00 ; 3 uses
  %i.ba = fcmp nsz olt float %.0128, %i.az
  %i.bb = fsub nsz float %.0128, %.072145.us
  %i.bc = fadd nsz float %i.bb, -1.000000e+00
  %i.bd = fadd nsz float %i.bc, %.086.us
  %.187.us = select nsz i1 %i.ba, float %i.bd, float %.086.us
  %i.be = fptoui float %.072145.us to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %.0135.us = phi float [ %i.at, %.lr.ph.us ], [ %i.bj, %bb.b ] ; 5 uses
  %.1134.us = phi float [ %.073144.us, %.lr.ph.us ], [ %i.bt, %bb.b ]
  %i.bf = phi <4 x float> [ %i.av, %.lr.ph.us ], [ %i.cg, %bb.b ]
  %i.bg = fcmp nsz ogt float %.0125, %.0135.us
  %i.bh = fsub nsz float %.0135.us, %.0125
  %i.bi = fadd nsz float %i.bh, 1.000000e+00
  %.084.us = select nsz i1 %i.bg, float %i.bi, float 1.000000e+00 ; 2 uses
  %i.bj = fadd nsz float %.0135.us, 1.000000e+00  ; 3 uses
  %i.bk = fcmp nsz olt float %.0126, %i.bj
  %i.bl = fsub nsz float %.0126, %.0135.us
  %i.bm = fadd nsz float %i.bl, -1.000000e+00
  %i.bn = fadd nsz float %i.bm, %.084.us
  %.185.us = select nsz i1 %i.bk, float %i.bn, float %.084.us
  %i.bo = fmul nsz float %.187.us, %.185.us       ; 2 uses
  %i.bp = fptoui float %.0135.us to i32
  %i.bq = load ptr, ptr %0, align 8, !tbaa !42
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = fadd nsz float %.1134.us, %i.bo         ; 4 uses
  %i.bu = call i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %i.bp, i32 noundef %i.be) ; 5 uses
  store i32 %i.bu, ptr %3, align 4, !tbaa !31
  %i.bv = lshr i32 %i.bu, 24
  %i.bw = lshr i32 %i.bu, 16
  %i.bx = lshr i32 %i.bu, 8
  %i.by = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %i.bz = insertelement <4 x i32> %i.by, i32 %i.bx, i64 1
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bw, i64 2
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bv, i64 3
  %i.cc = and <4 x i32> %i.cb, <i32 255, i32 255, i32 255, i32 -1>
  %i.cd = uitofp <4 x i32> %i.cc to <4 x float>
  %i.ce = insertelement <4 x float> poison, float %i.bo, i64 0
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cg = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.cd, <4 x float> %i.bf) ; 3 uses
  %i.ch = fcmp nsz olt float %i.bj, %.0126
  br i1 %i.ch, label %bb.b, label %._crit_edge.us, !llvm.loop !61

._crit_edge.us:                                   ; preds = %bb.b
  %i.ci = fcmp nsz olt float %i.az, %.0128
  br i1 %i.ci, label %.lr.ph.us, label %._crit_edge147, !llvm.loop !62

._crit_edge147:                                   ; preds = %._crit_edge.us
  %i.cj = fcmp nsz ogt float %i.bt, 0.000000e+00
  br i1 %i.cj, label %bb.c, label %._crit_edge147.thread

bb.c:                                             ; preds = %._crit_edge147
  %i.ck = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = fdiv nsz <4 x float> %i.cg, %i.cl
  %i.cn = fadd nsz <4 x float> %i.cm, splat (float 5.000000e-01)
  %i.co = fptoui <4 x float> %i.cn to <4 x i32>
  %i.cp = shl <4 x i32> %i.co, <i32 0, i32 8, i32 16, i32 24>
  %i.cq = and <4 x i32> %i.cp, <i32 255, i32 65280, i32 16711680, i32 -1>
  %i.cr = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cq)
  br label %._crit_edge147.thread

._crit_edge147.thread:                            ; preds = %.lr.ph146, %_Z8rangelimIfifET_RKS0_RKT0_RKT1_.exit, %._crit_edge147, %bb.c
end_hunk_0
