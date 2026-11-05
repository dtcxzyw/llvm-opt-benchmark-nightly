Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/hfs_core?download=true
inline.NumInlined: 879
inline.NumDeleted: 404
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN2cv3hfs7HfsCore13getSLICIdxCpuERKNS_3MatERi:bb.a
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.049.0, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !54
  store i32 %i.cs, ptr %i.co, align 4, !tbaa !54
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv69
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !54
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.049.0, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !54
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !54
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %indvars.iv69
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 12 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !54
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.049.0, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !54
  store i32 %i.de, ptr %i.da, align 4, !tbaa !54
  %indvars.iv.next70.3 = add nuw nsw i64 %indvars.iv69, 4 ; 2 uses
  %niter92.next.3 = add i64 %niter92, 4           ; 2 uses
  %niter92.ncmp.3 = icmp eq i64 %niter92.next.3, %unroll_iter91
  br i1 %niter92.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.p, !llvm.loop !145

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.dg, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !75
  store ptr %0, ptr %i.df, align 8, !tbaa !76
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 noundef 2, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not.i.i.i = icmp eq ptr %.sroa.049.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dh = ptrtoint ptr %.sroa.049.0 to i64
  %i.di = sub i64 %.sroa.13.0, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0, i64 noundef %i.di) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.r, %bb.s
  %i.dj = load ptr, ptr %5, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i42 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i42, label %_ZNSt6vectorIiSaIiEED2Ev.exit43, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !77
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dj to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.do) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit43

_ZNSt6vectorIiSaIiEED2Ev.exit43:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 448
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !80 ; 3 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i44, label %_ZNSt6vectorIN2cv3hfs4slic11cSpixelInfoESaIS3_EED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit43
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 464
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !81
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #22
  br label %_ZNSt6vectorIN2cv3hfs4slic11cSpixelInfoESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN2cv3hfs4slic11cSpixelInfoESaIS3_EED2Ev.exit.i: ; preds = %bb.u, %_ZNSt6vectorIiSaIiEED2Ev.exit43
  %i.dw = load ptr, ptr %i.g, align 8, !tbaa !71  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i1.i, label %_ZN2cv3hfs4slic5cSLICD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN2cv3hfs4slic11cSpixelInfoESaIS3_EED2Ev.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !77
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %i.dw to i64
  %i.eb = sub i64 %i.dz, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.eb) #22
  br label %_ZN2cv3hfs4slic5cSLICD2Ev.exit

_ZN2cv3hfs4slic5cSLICD2Ev.exit:                   ; preds = %_ZNSt6vectorIN2cv3hfs4slic11cSpixelInfoESaIS3_EED2Ev.exit.i, %bb.v
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.f) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(488) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.w:                                             ; preds = %._crit_edge
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.q
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn.pn = phi { ptr, i32 } [ %i.ed, %bb.x ], [ %i.ec, %bb.w ] ; 2 uses
  %.not.i.i.i45 = icmp eq ptr %.sroa.049.0, null
  br i1 %.not.i.i.i45, label %_ZNSt6vectorIiSaIiEED2Ev.exit46, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ee = ptrtoint ptr %.sroa.049.0 to i64
  %i.ef = sub i64 %.sroa.13.0, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.049.0, i64 noundef %i.ef) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit46

_ZNSt6vectorIiSaIiEED2Ev.exit46:                  ; preds = %bb.z, %bb.y, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.i ], [ %.pn.pn, %bb.y ], [ %.pn.pn, %bb.z ] ; 2 uses
  %i.eg = load ptr, ptr %5, align 8, !tbaa !71    ; 3 uses
  %.not.i.i.i47 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIiSaIiEED2Ev.exit48, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit46
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !77
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %i.eg to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %i.eg, i64 noundef %i.el) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit48

_ZNSt6vectorIiSaIiEED2Ev.exit48:                  ; preds = %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit46, %bb.h, %bb.g
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.aj, %bb.h ], [ %.pn.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit46 ], [ %.pn.pn.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN2cv3hfs4slic5cSLICD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN2cv3hfs4slic5cSLIC20generate_superpixelsENS_3MatEif(ptr dead_on_unwind writable sret(%"class.std::vector.12") align 8, ptr noundef nonnull align 8 dereferenceable(488), ptr noundef align 8, i32 noundef, float noundef) local_unnamed_addr #4

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #8

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #4

declare void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3hfs4slic5cSLICD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv3hfs4slic11cSpixelInfoESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZNSt6vectorIN2cv3hfs4slic11cSpixelInfoESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv3hfs4slic11cSpixelInfoESaIS3_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2cv3hfs4slic11cSpixelInfoESaIS3_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !77
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN2cv3hfs4slic11cSpixelInfoESaIS3_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.o) #21
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv3hfs7HfsCore15getColorFeatureERKNS_3VecIfLi3EEES5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::Vec.24") align 4 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(104) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !82, !noalias !148
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load float, ptr %i.c, align 4, !tbaa !82, !noalias !148
  %i.e = fsub float %i.b, %i.d                    ; 3 uses
  %i.f = load <2 x float>, ptr %2, align 4, !tbaa !82, !noalias !148
  %i.g = load <2 x float>, ptr %3, align 4, !tbaa !82, !noalias !148
  %i.h = fsub <2 x float> %i.f, %i.g              ; 3 uses
  %i.i = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.h)
  store <2 x float> %i.i, ptr %0, align 4, !tbaa !82
  %i.j = tail call noundef float @llvm.fabs.f32(float %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.j, ptr %i.k, align 4, !tbaa !82
  %4 = extractelement <2 x float> %i.h, i64 0     ; 2 uses
  %5 = tail call float @llvm.fmuladd.f32(float %4, float %4, float 0.000000e+00)
  %i.l = extractelement <2 x float> %i.h, i64 1   ; 2 uses
  %i.m = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %5)
  %i.n = tail call noundef float @llvm.fmuladd.f32(float %i.e, float %i.e, float %i.m)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %sqrt.i, ptr %i.o, align 4, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv3hfs7HfsCore18getAvgGradientBdryERKNS_3MatERKSt6vectorIS2_SaIS2_EEiRS2_RS7_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %7 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %i.a = alloca [4 x i16], align 2                ; 21 uses
  %i.b = alloca [13 x i32], align 16              ; 17 uses
  %i.c = alloca [13 x float], align 16            ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !64   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !67   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !85
  %i.j = load ptr, ptr %2, align 8, !tbaa !86
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %.fr267 = freeze i64 %i.m
  %i.n = sdiv i64 %.fr267, 208                    ; 8 uses
  %i.o = trunc i64 %i.n to i32
  %sext = shl i64 %i.n, 32
  %i.p = ashr exact i64 %sext, 32                 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !85   ; 3 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !86     ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 208                 ; 3 uses
  %i.x = icmp ugt i64 %i.p, %i.w
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = sub nuw nsw i64 %i.p, %i.w
  tail call void @_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.y)
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.z = icmp ult i64 %i.p, %i.w
  br i1 %i.z, label %bb.d, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw [208 x i8], ptr %i.s, i64 %i.p ; 3 uses
  %.not.i.i = icmp eq ptr %i.r, %i.aa
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %i.aa, %bb.d ] ; 2 uses
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ab, %i.r
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !85
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit:     ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ac = icmp sgt i32 %i.o, 0                    ; 3 uses
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  %wide.trip.count = and i64 %i.n, 2147483647
  br label %bb.bp

._crit_edge:                                      ; preds = %bb.bp, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  call void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %3, i32 noundef %3, i32 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.ad = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(32) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ae = add nsw i32 %i.e, -1
  %i.af = icmp sgt i32 %i.e, 2
  br i1 %i.af, label %.preheader194.lr.ph, label %.preheader189

.preheader194.lr.ph:                              ; preds = %._crit_edge
  %i.ag = add i32 %i.g, -1                        ; 2 uses
  %i.ah = icmp sgt i32 %i.g, 2
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 2 uses
  br i1 %i.ah, label %.preheader194.lr.ph.split, label %.preheader189

.preheader194.lr.ph.split:                        ; preds = %.preheader194.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !87
  %i.ap = icmp slt i32 %i.ao, 2                   ; 9 uses
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !65 ; 9 uses
  %wide.trip.count324 = zext nneg i32 %i.ae to i64 ; 2 uses
  br i1 %i.ac, label %.preheader194.us.preheader, label %.preheader194.preheader

.preheader194.preheader:                          ; preds = %.preheader194.lr.ph.split
  %.pre.pre = load i64, ptr %i.ai, align 8        ; 3 uses
  %wide.trip.count284 = zext i32 %i.ag to i64
  br label %.preheader194

.preheader194.us.preheader:                       ; preds = %.preheader194.lr.ph.split
  %wide.trip.count319 = zext i32 %i.ag to i64
  %wide.trip.count314 = and i64 %i.n, 2147483647
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %.preheader194.us

.preheader194.us:                                 ; preds = %.preheader194.us.preheader, %._crit_edge213.split.us.us
  %indvars.iv321 = phi i64 [ 1, %.preheader194.us.preheader ], [ %i.kw, %._crit_edge213.split.us.us ] ; 6 uses
  %i.bp = add nsw i64 %indvars.iv321, -1
  %i.bq = add nsw i64 %indvars.iv321, -1
  %i.br = add nuw nsw i64 %indvars.iv321, 1       ; 4 uses
  %i.bs = add nuw nsw i64 %indvars.iv321, 1       ; 3 uses
  %i.bt = trunc nuw nsw i64 %indvars.iv321 to i32
  br label %bb.e

bb.e:                                             ; preds = %..loopexit_crit_edge.us.us, %.preheader194.us
  %indvars.iv316 = phi i64 [ %indvars.iv.next317427440452, %..loopexit_crit_edge.us.us ], [ 1, %.preheader194.us ] ; 7 uses
  %i.bu = load i64, ptr %i.ai, align 8            ; 5 uses
  %i.bv = mul i64 %i.bu, %indvars.iv321
  %.sink.idx.i.us.us = select i1 %i.ap, i64 0, i64 %i.bv
  %.sink.i.us.us = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i.us.us ; 4 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.sink.i.us.us, i64 %indvars.iv316
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !89 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.by = shl i64 %indvars.iv316, 32
  %sext.i.us.us = add i64 %i.by, -4294967296
  %i.bz = ashr exact i64 %sext.i.us.us, 31
  %i.ca = getelementptr inbounds i8, ptr %.sink.i.us.us, i64 %i.bz
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !89 ; 3 uses
  %.not140.us.us = icmp eq i16 %i.cb, %i.bx
  br i1 %.not140.us.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.cc = mul i64 %i.bu, %i.bq
  %.sink.idx.i149.us.us.1 = select i1 %i.ap, i64 0, i64 %i.cc
  %.sink.i150.us.us.1 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i149.us.us.1
  %i.cd = shl nuw nsw i64 %indvars.iv316, 1       ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sink.i150.us.us.1, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !89 ; 2 uses
  %.not140.us.us.1 = icmp eq i16 %i.cf, %i.bx
  br i1 %.not140.us.us.1, label %.thread421, label %.critedge.1

.thread:                                          ; preds = %bb.e
  store i16 %i.cb, ptr %i.a, align 2, !tbaa !89
  %i.cg = mul i64 %i.bu, %i.bp
  %.sink.idx.i149.us.us.1414 = select i1 %i.ap, i64 0, i64 %i.cg
  %.sink.i150.us.us.1415 = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sink.idx.i149.us.us.1414
  %i.ch = shl nuw nsw i64 %indvars.iv316, 1       ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sink.i150.us.us.1415, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !89 ; 3 uses
  %.not140.us.us.1416 = icmp eq i16 %i.cj, %i.bx
  %.not412 = icmp eq i16 %i.cb, %i.cj
  %or.cond = or i1 %.not140.us.us.1416, %.not412
  br i1 %or.cond, label %bb.g, label %.critedge.1

.critedge.1:                                      ; preds = %.thread, %bb.f
  %.2130.us.us417420 = phi i16 [ 1, %.thread ], [ 0, %bb.f ] ; 2 uses
  %i.ck = phi i64 [ %i.ch, %.thread ], [ %i.cd, %bb.f ]
  %i.cl = phi i16 [ %i.cj, %.thread ], [ %i.cf, %bb.f ]
  %i.cm = add nuw nsw i16 %.2130.us.us417420, 1
  %i.cn = zext nneg i16 %.2130.us.us417420 to i64
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cn
  store i16 %i.cl, ptr %i.co, align 2, !tbaa !89
  br label %bb.g

bb.g:                                             ; preds = %.thread, %.critedge.1
  %i.cp = phi i64 [ %i.ch, %.thread ], [ %i.ck, %.critedge.1 ] ; 3 uses
  %.2130.us.us.1 = phi i16 [ 1, %.thread ], [ %i.cm, %.critedge.1 ] ; 6 uses
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 4 uses
  %i.cq = shl nuw nsw i64 %indvars.iv.next317, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %.sink.i.us.us, i64 %i.cq
end_hunk_0
begin_hunk_1_@_ZN2cv3hfs7HfsCore16getSegmentationIERKNS_3MatES4_S4_fiRS2_Ri:bb.a
  %i.lv = mul i64 %i.kf, %indvars.iv582
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.lv
  %i.lx = mul i64 %i.kj, %indvars.iv582
  %i.ly = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.lx
  br label %bb.ah

._crit_edge511:                                   ; preds = %bb.ah
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %wide.trip.count585
  br i1 %exitcond586.not, label %.preheader474, label %.lr.ph510, !llvm.loop !180

bb.ah:                                            ; preds = %.lr.ph510, %bb.ah
  %indvars.iv577 = phi i64 [ 0, %.lr.ph510 ], [ %indvars.iv.next578, %bb.ah ] ; 3 uses
  %i.lz = getelementptr inbounds nuw [3 x i8], ptr %i.ly, i64 %indvars.iv577 ; 3 uses
  %i.ma = getelementptr inbounds nuw [2 x i8], ptr %i.lw, i64 %indvars.iv577
  %i.mb = load i16, ptr %i.ma, align 2, !tbaa !89
  %i.mc = zext i16 %i.mb to i64                   ; 2 uses
  %i.md = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0403.0, i64 %i.mc ; 4 uses
  %i.me = load float, ptr %i.md, align 4, !tbaa !82
  %i.mf = load i8, ptr %i.lz, align 1, !tbaa !53
  %i.mg = uitofp i8 %i.mf to float
  %i.mh = fadd float %i.me, %i.mg
  store float %i.mh, ptr %i.md, align 4, !tbaa !82
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 4 ; 2 uses
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !82
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lz, i64 1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !53
  %i.mm = uitofp i8 %i.ml to float
  %i.mn = fadd float %i.mj, %i.mm
  store float %i.mn, ptr %i.mi, align 4, !tbaa !82
  %i.mo = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 2 uses
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !82
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lz, i64 2
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !53
  %i.ms = uitofp i8 %i.mr to float
  %i.mt = fadd float %i.mp, %i.ms
  store float %i.mt, ptr %i.mo, align 4, !tbaa !82
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0413.0756768, i64 %i.mc ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !54
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.mu, align 4, !tbaa !54
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 2 uses
  %exitcond581.not = icmp eq i64 %indvars.iv.next578, %wide.trip.count580
  br i1 %exitcond581.not, label %._crit_edge511, label %bb.ah, !llvm.loop !181

._crit_edge516:                                   ; preds = %.lr.ph515, %middle.block849, %.preheader474
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.mx = sext i32 %.0162.lcssa744746753769 to i64 ; 3 uses
  %i.my = icmp slt i32 %.0162.lcssa744746753769, 0
  br i1 %i.my, label %bb.ai, label %_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.ai:                                            ; preds = %._crit_edge516
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
          to label %.noexc277 unwind label %bb.al

.noexc277:                                        ; preds = %bb.ai
  unreachable

_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %._crit_edge516
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %.not.i.i.i.i273 = icmp eq i32 %.0162.lcssa744746753769, 0 ; 2 uses
  br i1 %.not.i.i.i.i273, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.mz = mul nuw nsw i64 %i.mx, 12
  %i.na = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mz) #23
          to label %.noexc278 unwind label %bb.al ; 7 uses

.noexc278:                                        ; preds = %bb.aj
  store ptr %i.na, ptr %8, align 8, !tbaa !98
  %i.nb = getelementptr inbounds nuw [12 x i8], ptr %i.na, i64 %i.mx
  %i.nc = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.nb, ptr %i.nc, align 8, !tbaa !99
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.na, i8 0, i64 12, i1 false)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.na, i64 12 ; 3 uses
  %i.ne = add nsw i64 %i.mx, -1                   ; 2 uses
  %i.nf = icmp eq i64 %i.ne, 0
  br i1 %i.nf, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %.noexc278
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.ne, 12
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i274

.lr.ph.i.i.i.i.i.i.i.i.i274:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i274, %bb.ak
  %.06.i.i.i.i.i.i.i.i.i275 = phi ptr [ %i.nh, %.lr.ph.i.i.i.i.i.i.i.i.i274 ], [ %i.nd, %bb.ak ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i275, ptr noundef nonnull align 4 dereferenceable(12) %i.na, i64 12, i1 false), !tbaa.struct !100
  %i.nh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i275, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i276 = icmp eq ptr %i.nh, %i.ng
  br i1 %.not.i.i.i.i.i.i.i.i.i276, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i274, !llvm.loop !3

.lr.ph515:                                        ; preds = %.lr.ph515.preheader854, %.lr.ph515
  %indvars.iv587 = phi i64 [ %indvars.iv.next588, %.lr.ph515 ], [ %indvars.iv587.ph, %.lr.ph515.preheader854 ] ; 3 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0413.0756768, i64 %indvars.iv587
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !54
  %i.nk = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0403.0, i64 %indvars.iv587 ; 3 uses
  %i.nl = sitofp i32 %i.nj to double
  %i.nm = fdiv nnan double 1.000000e+00, %i.nl    ; 2 uses
  %i.nn = load <2 x float>, ptr %i.nk, align 4, !tbaa !82
  %i.no = fpext <2 x float> %i.nn to <2 x double>
  %i.np = insertelement <2 x double> poison, double %i.nm, i64 0
  %i.nq = shufflevector <2 x double> %i.np, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nr = fmul <2 x double> %i.nq, %i.no
  %i.ns = fptrunc <2 x double> %i.nr to <2 x float>
  store <2 x float> %i.ns, ptr %i.nk, align 4, !tbaa !82
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nk, i64 8 ; 2 uses
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !82
  %i.nv = fpext float %i.nu to double
  %i.nw = fmul double %i.nm, %i.nv
  %i.nx = fptrunc double %i.nw to float
  store float %i.nx, ptr %i.nt, align 4, !tbaa !82
  %indvars.iv.next588 = add nuw nsw i64 %indvars.iv587, 1 ; 2 uses
  %exitcond591.not = icmp eq i64 %indvars.iv.next588, %wide.trip.count590
  br i1 %exitcond591.not, label %._crit_edge516, label %.lr.ph515, !llvm.loop !182

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i274, %_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc278
  %i.ny = phi ptr [ null, %_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.na, %.noexc278 ], [ %i.na, %.lr.ph.i.i.i.i.i.i.i.i.i274 ]
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.nd, %.noexc278 ], [ %i.ng, %.lr.ph.i.i.i.i.i.i.i.i.i274 ]
  %i.nz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.nz, align 8, !tbaa !101
  %i.oa = load i32, ptr %7, align 4, !tbaa !54    ; 3 uses
  %i.ob = icmp sgt i32 %i.oa, 0
  br i1 %i.ob, label %.lr.ph526, label %._crit_edge527

.lr.ph526:                                        ; preds = %.loopexit
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.od = zext nneg i32 %i.oa to i64
  br label %bb.am

._crit_edge527:                                   ; preds = %._crit_edge521, %.loopexit
  %.0156.lcssa = phi i32 [ 0, %.loopexit ], [ %.1157.lcssa, %._crit_edge521 ]
  %i.oe = icmp eq i32 %.0162.lcssa744746753769, %.0156.lcssa
  br i1 %i.oe, label %bb.at, label %bb.ao

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.of = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EED2Ev.exit346

bb.am:                                            ; preds = %.lr.ph526, %._crit_edge521
  %indvars.iv601 = phi i64 [ 0, %.lr.ph526 ], [ %indvars.iv.next602, %._crit_edge521 ] ; 5 uses
  %.0156523 = phi i32 [ 0, %.lr.ph526 ], [ %.1157.lcssa, %._crit_edge521 ] ; 2 uses
  %i.og = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0458.0692705714742, i64 %indvars.iv601 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !95
  %i.oj = load ptr, ptr %i.og, align 8, !tbaa !71 ; 2 uses
  %i.ok = ptrtoint ptr %i.oi to i64
  %i.ol = ptrtoint ptr %i.oj to i64
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = lshr exact i64 %i.om, 2                 ; 2 uses
  %i.oo = trunc i64 %i.on to i32
  %i.op = icmp sgt i32 %i.oo, 0
  br i1 %i.op, label %.lr.ph520, label %._crit_edge521

.lr.ph520:                                        ; preds = %bb.am
  %i.oq = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0403.0, i64 %indvars.iv601 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.os = load ptr, ptr %i.oc, align 8, !tbaa !42 ; 5 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 12
  %i.ow = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0440.0, i64 %indvars.iv601
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !42
  %i.oy = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %i.oz = sext i32 %.0156523 to i64
  %wide.trip.count599 = and i64 %i.on, 2147483647
  %.pre624 = load float, ptr %i.oq, align 4, !tbaa !82, !noalias !197
  %i.pa = load <2 x float>, ptr %i.or, align 4, !tbaa !82, !noalias !197
  %i.pb = trunc nuw nsw i64 %indvars.iv601 to i32
  br label %bb.an

._crit_edge521.loopexit:                          ; preds = %bb.an
  %i.pc = trunc nsw i64 %indvars.iv.next595 to i32
  br label %._crit_edge521

._crit_edge521:                                   ; preds = %._crit_edge521.loopexit, %bb.am
  %.1157.lcssa = phi i32 [ %.0156523, %bb.am ], [ %i.pc, %._crit_edge521.loopexit ] ; 2 uses
  %indvars.iv.next602 = add nuw nsw i64 %indvars.iv601, 1 ; 2 uses
  %i.pd = icmp samesign ult i64 %indvars.iv.next602, %i.od
  br i1 %i.pd, label %bb.am, label %._crit_edge527, !llvm.loop !187

bb.an:                                            ; preds = %.lr.ph520, %bb.an
  %indvars.iv594 = phi i64 [ %i.oz, %.lr.ph520 ], [ %indvars.iv.next595, %bb.an ] ; 2 uses
  %indvars.iv592 = phi i64 [ 0, %.lr.ph520 ], [ %indvars.iv.next593, %bb.an ] ; 3 uses
  %i.pe = getelementptr inbounds nuw [12 x i8], ptr %i.ny, i64 %indvars.iv594 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 4
  store i32 %i.pb, ptr %i.pf, align 4, !tbaa !103
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv592
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !54 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store i32 %i.ph, ptr %i.pi, align 4, !tbaa !104
  %i.pj = sext i32 %i.ph to i64
  %i.pk = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0403.0, i64 %i.pj ; 2 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !82, !noalias !197
  %i.pm = fsub float %.pre624, %i.pl              ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  %i.po = tail call noundef float @llvm.fabs.f32(float %i.pm)
  %i.pp = load <2 x float>, ptr %i.pn, align 4, !tbaa !82, !noalias !197
  %i.pq = fsub <2 x float> %i.pa, %i.pp           ; 3 uses
  %i.pr = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pq) ; 2 uses
  %15 = tail call float @llvm.fmuladd.f32(float %i.pm, float %i.pm, float 0.000000e+00)
  %i.ps = extractelement <2 x float> %i.pq, i64 0 ; 2 uses
  %i.pt = tail call float @llvm.fmuladd.f32(float %i.ps, float %i.ps, float %15)
  %i.pu = extractelement <2 x float> %i.pq, i64 1 ; 2 uses
  %i.pv = tail call noundef float @llvm.fmuladd.f32(float %i.pu, float %i.pu, float %i.pt)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.pv)
  %i.pw = load float, ptr %i.os, align 4, !tbaa !82
  %i.px = load float, ptr %i.ot, align 4, !tbaa !82
  %i.py = extractelement <2 x float> %i.pr, i64 0
  %i.pz = fmul float %i.py, %i.px
  %i.qa = tail call float @llvm.fmuladd.f32(float %i.po, float %i.pw, float %i.pz)
  %i.qb = load float, ptr %i.ou, align 4, !tbaa !82
  %i.qc = extractelement <2 x float> %i.pr, i64 1
  %i.qd = tail call float @llvm.fmuladd.f32(float %i.qc, float %i.qb, float %i.qa)
  %i.qe = load float, ptr %i.ov, align 4, !tbaa !82
  %i.qf = tail call float @llvm.fmuladd.f32(float %sqrt.i.i, float %i.qe, float %i.qd)
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv592
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !82
  %i.qi = load float, ptr %i.oy, align 4, !tbaa !82
  %i.qj = tail call float @llvm.fmuladd.f32(float %i.qh, float %i.qi, float %i.qf)
  %indvars.iv.next595 = add nsw i64 %indvars.iv594, 1 ; 2 uses
  store float %i.qj, ptr %i.pe, align 4, !tbaa !105
  %indvars.iv.next593 = add nuw nsw i64 %indvars.iv592, 1 ; 2 uses
  %exitcond600.not = icmp eq i64 %indvars.iv.next593, %wide.trip.count599
  br i1 %exitcond600.not, label %._crit_edge521.loopexit, label %bb.an, !llvm.loop !188

bb.ao:                                            ; preds = %._crit_edge527
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3hfs7HfsCore16getSegmentationIERKNS_3MatES4_S4_fiRS2_Ri, ptr noundef nonnull @.str.2, i32 noundef 298) #24
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.as:                                            ; preds = %bb.ap
  %i.ql = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qm = load ptr, ptr %9, align 8, !tbaa !108   ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.qo = icmp eq ptr %i.qm, %i.qn
  br i1 %i.qo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.as
  %i.qp = load i64, ptr %i.qn, align 8, !tbaa !53
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qm, i64 noundef %i.qq) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ar
  %.pn196 = phi { ptr, i32 } [ %i.qk, %bb.ar ], [ %i.ql, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ql, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.cz

bb.at:                                            ; preds = %._crit_edge527
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.qr = ptrtoint ptr %.0.i.i.i.i.i.i.i760766 to i64
  %i.qs = ptrtoint ptr %.sroa.0413.0756768 to i64 ; 2 uses
  %i.qt = sub i64 %i.qr, %i.qs                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i279 = icmp eq ptr %.0.i.i.i.i.i.i.i760766, %.sroa.0413.0756768
  br i1 %.not.i.i.i.i279, label %.thread, label %bb.au

.thread:                                          ; preds = %bb.at
  %i.qu = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.qv = getelementptr inbounds i8, ptr null, i64 %i.qt ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store ptr %i.qv, ptr %i.qw, align 8, !tbaa !77
  br label %bb.ay

bb.au:                                            ; preds = %bb.at
  %i.qx = icmp ugt i64 %i.qt, 9223372036854775804
  br i1 %i.qx, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !55

.noexc.i.i:                                       ; preds = %bb.au
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc280 unwind label %bb.bd

.noexc280:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.au
  %i.qy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qt) #23
          to label %.noexc281 unwind label %bb.bd ; 5 uses

.noexc281:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.qy, ptr %12, align 8, !tbaa !71
  %i.qz = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store ptr %i.qy, ptr %i.qz, align 8, !tbaa !95
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 %i.qt ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.ra, ptr %i.rb, align 8, !tbaa !77
  %i.rc = icmp samesign ugt i64 %i.qt, 4
  br i1 %i.rc, label %bb.av, label %bb.aw, !prof !109

bb.av:                                            ; preds = %.noexc281
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.qy, ptr align 4 %.sroa.0413.0756768, i64 %i.qt, i1 false)
  br label %bb.ay

bb.aw:                                            ; preds = %.noexc281
  %i.rd = icmp eq i64 %i.qt, 4
  br i1 %i.rd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.re = load i32, ptr %.sroa.0413.0756768, align 4, !tbaa !54
  store i32 %i.re, ptr %i.qy, align 4, !tbaa !54
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %.thread
  %i.rf = phi ptr [ %i.rb, %bb.av ], [ %i.rb, %bb.aw ], [ %i.rb, %bb.ax ], [ %i.qw, %.thread ] ; 2 uses
  %i.rg = phi ptr [ %i.ra, %bb.av ], [ %i.ra, %bb.aw ], [ %i.ra, %bb.ax ], [ %i.qv, %.thread ]
  %i.rh = phi ptr [ %i.qz, %bb.av ], [ %i.qz, %bb.aw ], [ %i.qz, %bb.ax ], [ %i.qu, %.thread ]
  store ptr %i.rg, ptr %i.rh, align 8, !tbaa !95
  invoke void @_ZN2cv3hfs9egb_mergeEiiRSt6vectorINS0_4EdgeESaIS2_EEfS1_IiSaIiEE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.58") align 8 %11, i32 noundef %i.oa, i32 noundef %.0162.lcssa744746753769, ptr noundef nonnull align 8 dereferenceable(24) %8, float noundef %4, ptr noundef nonnull align 8 %12)
          to label %bb.az unwind label %bb.be

bb.az:                                            ; preds = %bb.ay
  %i.ri = load ptr, ptr %12, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i282 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i.i282, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.rj = load ptr, ptr %i.rf, align 8, !tbaa !77
  %i.rk = ptrtoint ptr %i.rj to i64
  %i.rl = ptrtoint ptr %i.ri to i64
  %i.rm = sub i64 %i.rk, %i.rl
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef %i.rm) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.az, %bb.ba
  br i1 %.not.i.i.i.i273, label %._crit_edge534, label %.lr.ph533

.lr.ph533:                                        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.rn = load ptr, ptr %11, align 8, !tbaa !112  ; 2 uses
  %i.ro = load ptr, ptr %8, align 8, !tbaa !98
  %i.rp = load ptr, ptr %i.rn, align 8, !tbaa !115 ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 24 ; 2 uses
  %wide.trip.count607 = zext nneg i32 %.0162.lcssa744746753769 to i64
  br label %bb.bg

._crit_edge534:                                   ; preds = %bb.bp, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.rr = load i32, ptr %7, align 4, !tbaa !54    ; 3 uses
  %i.rs = sext i32 %i.rr to i64                   ; 3 uses
  %i.rt = icmp slt i32 %i.rr, 0
  br i1 %i.rt, label %bb.bb, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i283

bb.bb:                                            ; preds = %._crit_edge534
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
          to label %.noexc288 unwind label %bb.bs

.noexc288:                                        ; preds = %bb.bb
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i283: ; preds = %._crit_edge534
  %.not.i.i.i.i284 = icmp eq i32 %i.rr, 0
  br i1 %.not.i.i.i.i284, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit304.thread, label %bb.bc

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit304.thread:     ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i283
  %.pre627802 = load ptr, ptr %11, align 8, !tbaa !112
  br label %._crit_edge538

bb.bc:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i283
  %i.ru = shl nuw nsw i64 %i.rs, 2
  %i.rv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ru) #23
          to label %.noexc289 unwind label %bb.bs ; 7 uses

.noexc289:                                        ; preds = %bb.bc
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %i.rs ; 3 uses
  store i32 0, ptr %i.rv, align 4, !tbaa !54
  %i.rx = add nsw i64 %i.rs, -1                   ; 2 uses
  %i.ry = icmp eq i64 %i.rx, 0
  br i1 %i.ry, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc289
  %i.rz = getelementptr i8, ptr %i.rv, i64 4
  %.idx.i.i.i.i.i.i.i285 = shl nuw nsw i64 %i.rx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.rz, i8 0, i64 %.idx.i.i.i.i.i.i.i285, i1 false), !tbaa !54
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

bb.bd:                                            ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit291

bb.be:                                            ; preds = %bb.ay
  %i.sb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sc = load ptr, ptr %12, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i290 = icmp eq ptr %i.sc, null
  br i1 %.not.i.i.i290, label %_ZNSt6vectorIiSaIiEED2Ev.exit291, label %bb.bf
end_hunk_1
begin_hunk_2_@_ZN2cv3hfs7HfsCore17getSegmentationIIERKNS_3MatES4_S4_fiRS2_Ri:bb.a
  br label %bb.m

._crit_edge:                                      ; preds = %bb.m
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count324
  br i1 %exitcond325.not, label %.preheader276, label %.lr.ph, !llvm.loop !201

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !89
  %i.cj = zext i16 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0407414, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !54
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !54
  %i.cn = getelementptr inbounds nuw [3 x i8], ptr %i.cg, i64 %indvars.iv ; 3 uses
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0256.0, i64 %i.cj ; 4 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !82
  %i.cq = load i8, ptr %i.cn, align 1, !tbaa !53
  %i.cr = uitofp i8 %i.cq to float
  %i.cs = fadd float %i.cp, %i.cr
  store float %i.cs, ptr %i.co, align 4, !tbaa !82
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !82
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !53
  %i.cx = uitofp i8 %i.cw to float
  %i.cy = fadd float %i.cu, %i.cx
  store float %i.cy, ptr %i.ct, align 4, !tbaa !82
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !82
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !53
  %i.dd = uitofp i8 %i.dc to float
  %i.de = fadd float %i.da, %i.dd
  store float %i.de, ptr %i.cz, align 4, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !202

._crit_edge288:                                   ; preds = %.lr.ph287, %middle.block, %.preheader276
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.df = sext i32 %i.q to i64                    ; 3 uses
  %i.dg = icmp slt i32 %i.q, 0
  br i1 %i.dg, label %bb.n, label %_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.n:                                             ; preds = %._crit_edge288
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
          to label %.noexc169 unwind label %bb.q

.noexc169:                                        ; preds = %bb.n
  unreachable

_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %._crit_edge288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %.not.i.i.i.i165 = icmp eq i32 %i.g, 0          ; 2 uses
  br i1 %.not.i.i.i.i165, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.dh = mul nuw nsw i64 %i.df, 12
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #23
          to label %.noexc170 unwind label %bb.q  ; 5 uses

.noexc170:                                        ; preds = %bb.o
  store ptr %i.di, ptr %14, align 8, !tbaa !98
  %i.dj = getelementptr inbounds nuw [12 x i8], ptr %i.di, i64 %i.df
  %i.dk = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.di, i8 0, i64 12, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 12 ; 3 uses
  %i.dm = add nsw i64 %i.df, -1                   ; 2 uses
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.noexc170
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.dm, 12
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i166

.lr.ph.i.i.i.i.i.i.i.i.i166:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i166, %bb.p
  %.06.i.i.i.i.i.i.i.i.i167 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i166 ], [ %i.dl, %bb.p ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i167, ptr noundef nonnull align 4 dereferenceable(12) %i.di, i64 12, i1 false), !tbaa.struct !100
  %i.dp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i167, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i168 = icmp eq ptr %i.dp, %i.do
  br i1 %.not.i.i.i.i.i.i.i.i.i168, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i166, !llvm.loop !3

.lr.ph287:                                        ; preds = %.lr.ph287.preheader466, %.lr.ph287
  %indvars.iv326 = phi i64 [ %indvars.iv.next327, %.lr.ph287 ], [ %indvars.iv326.ph, %.lr.ph287.preheader466 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0266.0407414, i64 %indvars.iv326
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !54
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0256.0, i64 %indvars.iv326 ; 3 uses
  %i.dt = sitofp i32 %i.dr to double
  %i.du = fdiv nnan double 1.000000e+00, %i.dt    ; 2 uses
  %i.dv = load <2 x float>, ptr %i.ds, align 4, !tbaa !82
  %i.dw = fpext <2 x float> %i.dv to <2 x double>
  %i.dx = insertelement <2 x double> poison, double %i.du, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x double> %i.dy, %i.dw
  %i.ea = fptrunc <2 x double> %i.dz to <2 x float>
  store <2 x float> %i.ea, ptr %i.ds, align 4, !tbaa !82
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !82
  %i.ed = fpext float %i.ec to double
  %i.ee = fmul double %i.du, %i.ed
  %i.ef = fptrunc double %i.ee to float
  store float %i.ef, ptr %i.eb, align 4, !tbaa !82
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %._crit_edge288, label %.lr.ph287, !llvm.loop !203

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i166, %_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i, %.noexc170
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.dl, %.noexc170 ], [ %i.do, %.lr.ph.i.i.i.i.i.i.i.i.i166 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.eg, align 8, !tbaa !101
  %i.eh = load i32, ptr %7, align 4, !tbaa !54    ; 3 uses
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.preheader275.lr.ph, label %._crit_edge295

.preheader275.lr.ph:                              ; preds = %.loopexit
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = icmp slt i32 %i.ek, 2
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %.preheader275

.preheader275:                                    ; preds = %.preheader275.lr.ph, %._crit_edge292
  %i.eq = phi i32 [ %i.eh, %.preheader275.lr.ph ], [ %i.fb, %._crit_edge292 ]
  %indvars.iv336 = phi i64 [ 0, %.preheader275.lr.ph ], [ %indvars.iv.next337, %._crit_edge292 ] ; 7 uses
  %.0107293 = phi i32 [ 0, %.preheader275.lr.ph ], [ %.1108.lcssa, %._crit_edge292 ] ; 2 uses
  %.not315 = icmp eq i64 %indvars.iv336, 0
  br i1 %.not315, label %._crit_edge292, label %.lr.ph291

.lr.ph291:                                        ; preds = %.preheader275
  %i.er = load ptr, ptr %14, align 8
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0256.0, i64 %indvars.iv336 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  %i.eu = load ptr, ptr %9, align 8               ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 128
  %i.ey = trunc nuw nsw i64 %indvars.iv336 to i32
  br label %bb.r

._crit_edge295:                                   ; preds = %._crit_edge292, %.loopexit
  %.0107.lcssa = phi i32 [ 0, %.loopexit ], [ %.1108.lcssa, %._crit_edge292 ]
  %.lcssa282 = phi i32 [ %i.eh, %.loopexit ], [ %i.fb, %._crit_edge292 ]
  %i.ez = icmp eq i32 %i.q, %.0107.lcssa
  br i1 %i.ez, label %bb.z, label %bb.u

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv3hfs4EdgeESaIS2_EED2Ev.exit232

._crit_edge292.loopexit:                          ; preds = %bb.t
  %.pre358 = load i32, ptr %7, align 4, !tbaa !54
  br label %._crit_edge292

._crit_edge292:                                   ; preds = %._crit_edge292.loopexit, %.preheader275
  %i.fb = phi i32 [ %i.eq, %.preheader275 ], [ %.pre358, %._crit_edge292.loopexit ] ; 3 uses
  %.1108.lcssa = phi i32 [ %.0107293, %.preheader275 ], [ %.2, %._crit_edge292.loopexit ] ; 2 uses
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next337, %i.fc
  br i1 %i.fd, label %.preheader275, label %._crit_edge295, !llvm.loop !204

bb.r:                                             ; preds = %.lr.ph291, %bb.t
  %indvars.iv331 = phi i64 [ 0, %.lr.ph291 ], [ %indvars.iv.next332, %bb.t ] ; 5 uses
  %.1108289 = phi i32 [ %.0107293, %.lr.ph291 ], [ %.2, %bb.t ] ; 3 uses
  %i.fe = load i64, ptr %i.eo, align 8
  %i.ff = mul i64 %i.fe, %indvars.iv336
  %.sink.idx.i = select i1 %i.el, i64 0, i64 %i.ff
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.en, i64 %.sink.idx.i
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv331
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !54
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fj = sext i32 %.1108289 to i64
  %i.fk = getelementptr inbounds nuw [12 x i8], ptr %i.er, i64 %i.fj ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i32 %i.ey, ptr %i.fl, align 4, !tbaa !103
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fn = trunc nuw nsw i64 %indvars.iv331 to i32
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !104
  %i.fo = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0256.0, i64 %indvars.iv331 ; 2 uses
  %i.fp = load float, ptr %i.es, align 4, !tbaa !82, !noalias !215
  %i.fq = load float, ptr %i.fo, align 4, !tbaa !82, !noalias !215
  %i.fr = fsub float %i.fp, %i.fq                 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.ft = call noundef float @llvm.fabs.f32(float %i.fr)
  %i.fu = load <2 x float>, ptr %i.et, align 4, !tbaa !82, !noalias !215
  %i.fv = load <2 x float>, ptr %i.fs, align 4, !tbaa !82, !noalias !215
  %i.fw = fsub <2 x float> %i.fu, %i.fv           ; 3 uses
  %i.fx = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fw) ; 2 uses
  %21 = call float @llvm.fmuladd.f32(float %i.fr, float %i.fr, float 0.000000e+00)
  %i.fy = extractelement <2 x float> %i.fw, i64 0 ; 2 uses
  %i.fz = call float @llvm.fmuladd.f32(float %i.fy, float %i.fy, float %21)
  %i.ga = extractelement <2 x float> %i.fw, i64 1 ; 2 uses
  %i.gb = call noundef float @llvm.fmuladd.f32(float %i.ga, float %i.ga, float %i.fz)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.gb)
  %i.gc = load ptr, ptr %i.ep, align 8, !tbaa !42 ; 5 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !82
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !82
  %i.gg = extractelement <2 x float> %i.fx, i64 0
  %i.gh = fmul float %i.gg, %i.gf
  %i.gi = call float @llvm.fmuladd.f32(float %i.ft, float %i.gd, float %i.gh)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !82
  %i.gl = extractelement <2 x float> %i.fx, i64 1
  %i.gm = call float @llvm.fmuladd.f32(float %i.gl, float %i.gk, float %i.gi)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 12
  %i.go = load float, ptr %i.gn, align 4, !tbaa !82
  %i.gp = call float @llvm.fmuladd.f32(float %sqrt.i.i, float %i.go, float %i.gm) ; 2 uses
  store float %i.gp, ptr %i.fk, align 4, !tbaa !105
  %i.gq = load i32, ptr %i.ev, align 4, !tbaa !87
  %i.gr = icmp slt i32 %i.gq, 2
  %i.gs = load ptr, ptr %i.ew, align 8, !tbaa !65
  %i.gt = load i64, ptr %i.ex, align 8
  %i.gu = mul i64 %i.gt, %indvars.iv336
  %.sink.idx.i171 = select i1 %i.gr, i64 0, i64 %i.gu
  %.sink.i172 = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sink.idx.i171
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.sink.i172, i64 %indvars.iv331
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !82
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !82
  %i.gz = call float @llvm.fmuladd.f32(float %i.gw, float %i.gy, float %i.gp)
  store float %i.gz, ptr %i.fk, align 4, !tbaa !105
  %i.ha = add nsw i32 %.1108289, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.2 = phi i32 [ %.1108289, %bb.r ], [ %i.ha, %bb.s ] ; 2 uses
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %exitcond335.not = icmp eq i64 %indvars.iv.next332, %indvars.iv336
  br i1 %exitcond335.not, label %._crit_edge292.loopexit, label %bb.r, !llvm.loop !209

bb.u:                                             ; preds = %._crit_edge295
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv3hfs7HfsCore17getSegmentationIIERKNS_3MatES4_S4_fiRS2_Ri, ptr noundef nonnull @.str.2, i32 noundef 373) #24
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %bb.u
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

bb.y:                                             ; preds = %bb.v
  %i.hc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hd = load ptr, ptr %15, align 8, !tbaa !108  ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.hf = icmp eq ptr %i.hd, %i.he
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173: ; preds = %bb.y
  %i.hg = load i64, ptr %i.he, align 8, !tbaa !53
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173, %bb.x
  %.pn139 = phi { ptr, i32 } [ %i.hb, %bb.x ], [ %i.hc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173 ], [ %i.hc, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.cb

bb.z:                                             ; preds = %._crit_edge295
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  %i.hi = ptrtoint ptr %.0.i.i.i.i.i.i.i408413 to i64
  %i.hj = ptrtoint ptr %.sroa.0266.0407414 to i64 ; 2 uses
  %i.hk = sub i64 %i.hi, %i.hj                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %.not.i.i.i.i176 = icmp eq ptr %.0.i.i.i.i.i.i.i408413, %.sroa.0266.0407414
  br i1 %.not.i.i.i.i176, label %.thread, label %bb.aa

.thread:                                          ; preds = %bb.z
  %i.hl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.hm = getelementptr inbounds i8, ptr null, i64 %i.hk ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !77
  br label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.ho = icmp ugt i64 %i.hk, 9223372036854775804
  br i1 %i.ho, label %.noexc.i.i, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i, !prof !55

.noexc.i.i:                                       ; preds = %bb.aa
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc177 unwind label %bb.aj

.noexc177:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.aa
  %i.hp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hk) #23
          to label %.noexc178 unwind label %bb.aj ; 5 uses

.noexc178:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.hp, ptr %18, align 8, !tbaa !71
  %i.hq = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !95
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hk ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !77
  %i.ht = icmp samesign ugt i64 %i.hk, 4
  br i1 %i.ht, label %bb.ab, label %bb.ac, !prof !109

bb.ab:                                            ; preds = %.noexc178
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hp, ptr align 4 %.sroa.0266.0407414, i64 %i.hk, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc178
  %i.hu = icmp eq i64 %i.hk, 4
  br i1 %i.hu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hv = load i32, ptr %.sroa.0266.0407414, align 4, !tbaa !54
  store i32 %i.hv, ptr %i.hp, align 4, !tbaa !54
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %.thread
  %i.hw = phi ptr [ %i.hs, %bb.ab ], [ %i.hs, %bb.ac ], [ %i.hs, %bb.ad ], [ %i.hn, %.thread ] ; 2 uses
  %i.hx = phi ptr [ %i.hr, %bb.ab ], [ %i.hr, %bb.ac ], [ %i.hr, %bb.ad ], [ %i.hm, %.thread ]
  %i.hy = phi ptr [ %i.hq, %bb.ab ], [ %i.hq, %bb.ac ], [ %i.hq, %bb.ad ], [ %i.hl, %.thread ]
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !95
  invoke void @_ZN2cv3hfs9egb_mergeEiiRSt6vectorINS0_4EdgeESaIS2_EEfS1_IiSaIiEE(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.58") align 8 %17, i32 noundef %.lcssa282, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(24) %14, float noundef %4, ptr noundef nonnull align 8 %18)
          to label %bb.af unwind label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.hz = load ptr, ptr %18, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ia = load ptr, ptr %i.hw, align 8, !tbaa !77
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hz to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef %i.id) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.af, %bb.ag
  br i1 %.not.i.i.i.i165, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ie = load ptr, ptr %17, align 8, !tbaa !112  ; 2 uses
  %i.if = load ptr, ptr %14, align 8, !tbaa !98
  %i.ig = load ptr, ptr %i.ie, align 8, !tbaa !115 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 24 ; 2 uses
  %wide.trip.count342 = zext nneg i32 %i.q to i64
  br label %bb.am

._crit_edge302:                                   ; preds = %bb.av, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ii = load i32, ptr %7, align 4, !tbaa !54    ; 3 uses
  %i.ij = sext i32 %i.ii to i64                   ; 3 uses
  %i.ik = icmp slt i32 %i.ii, 0
  br i1 %i.ik, label %bb.ah, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179

bb.ah:                                            ; preds = %._crit_edge302
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #24
          to label %.noexc184 unwind label %bb.ay

.noexc184:                                        ; preds = %bb.ah
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179: ; preds = %._crit_edge302
  %.not.i.i.i.i180 = icmp eq i32 %i.ii, 0
  br i1 %.not.i.i.i.i180, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit201.thread, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i179
  %i.il = shl nuw nsw i64 %i.ij, 2
  %i.im = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.il) #23
          to label %.noexc185 unwind label %bb.ay ; 8 uses

.noexc185:                                        ; preds = %bb.ai
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.ij ; 4 uses
  store i32 0, ptr %i.im, align 4, !tbaa !54
  %i.io = add nsw i64 %i.ij, -1                   ; 2 uses
  %i.ip = icmp eq i64 %i.io, 0
  br i1 %i.ip, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc185
  %i.iq = getelementptr i8, ptr %i.im, i64 4
  %.idx.i.i.i.i.i.i.i181 = shl nuw nsw i64 %i.io, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.iq, i8 0, i64 %.idx.i.i.i.i.i.i.i181, i1 false), !tbaa !54
end_hunk_2
